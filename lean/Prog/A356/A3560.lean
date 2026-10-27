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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
# A356000: Expansion of e.g.f. -LambertW((1 - exp(2*x))/2).

The programs for A356000, there is no canonical definition to state claims against.
-/

/-! ## A356000.P2450761453326134850

`A167865(C(2^n+3, n))`
-/

namespace A356000.P2450761453326134850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (Nat.choose (2 ^ n + 3) n)

end

end A356000.P2450761453326134850

/-!
# A356001: Expansion of e.g.f. -LambertW((1 - exp(3*x))/3).

The programs for A356001, there is no canonical definition to state claims against.
-/

/-! ## A356001.P12472584069982903385

`A132270(∑[(n+3)^n+2])`
-/

namespace A356001.P12472584069982903385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356001.P12472584069982903385

/-!
# A356003: Primes p such that p = 3*a + 1 with p + a*a*(a+1) prime or p = 3*a + 2 with p + a*(a+1)*(a+1) prime.

The programs for A356003, there is no canonical definition to state claims against.
-/

/-! ## A356003.P11806338353112413528

`A045319(lt[A055977(n+1), A248024(n+1)])`
-/

namespace A356003.P11806338353112413528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356003.P11806338353112413528

/-!
# A356004: a(n) = n! * Sum_{k=1..n} Sum_{d|k} 1/(d! * (k/d)!).

The programs for A356004, there is no canonical definition to state claims against.
-/

/-! ## A356004.P3223986135026707787

`A121860(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A356004.P3223986135026707787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121860 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A356004.P3223986135026707787

/-! ## A356004.P2819083012916287230

`A005185(A057005(n+2)-A351724(n))`
-/

namespace A356004.P2819083012916287230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A057005 (n + 2) - A351724 n).toNat

end

end A356004.P2819083012916287230

/-!
# A356005: Number of integers k such that k*tau(k) <= n.

The programs for A356005, there is no canonical definition to state claims against.
-/

/-! ## A356005.P2917888948399543258

`∑[A327166(n+1)]`
-/

namespace A356005.P2917888948399543258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356005.P2917888948399543258

/-! ## A356005.P10879976969636913057

`∑[A000038(A000290(n))^A073068(n+1)]`
-/

namespace A356005.P10879976969636913057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A000290 n).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356005.P10879976969636913057

/-! ## A356005.P8426646738315748677

`∑[A000038(A025487(n+1))^A073068(n+1)]`
-/

namespace A356005.P8426646738315748677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A025487 (n + 1)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356005.P8426646738315748677

/-! ## A356005.P12237492621762504000

`∑[A000038(A347648(n))^A073068(n+1)]`
-/

namespace A356005.P12237492621762504000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A347648 n).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356005.P12237492621762504000

/-! ## A356005.P4096266489695917798

`∑[A000038(A075170(n))^A073068(n+1)]`
-/

namespace A356005.P4096266489695917798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A075170 n).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356005.P4096266489695917798

/-!
# A356006: The number of prime divisors of n that are not greater than 5, counted with multiplicity.

The programs for A356006, the canonical program `A356006.P9495163879456603929` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356006 has offset 1).

The definition of A356006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356006.P1969324150574239074

`val(n+1, 2)+val(n+1, 3)+val(n+1, 5)`
-/

namespace A356006.P1969324150574239074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + SequenceMachineLib.valuation (n + 1) 3 + SequenceMachineLib.valuation (n + 1) 5

end

end A356006.P1969324150574239074

namespace A356006

/-- `val(n+1, 2)+val(n+1, 3)+val(n+1, 5)` -/
def P1969324150574239074.Spec : Prop :=
  ∀ n, (P1969324150574239074.a n : ℤ) = A356006 (n + 1)

end A356006

/-! ## A356006.P3252024183783779543

`A001222(A355582(n+1))`
-/

namespace A356006.P3252024183783779543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A355582 (n + 1)).toNat

end

end A356006.P3252024183783779543

namespace A356006

/-- `A001222(A355582(n+1))` -/
def P3252024183783779543.Spec : Prop :=
  ∀ n, P3252024183783779543.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P9495163879456603929

`A007814(n+1)+A007949(n+1)+A112765(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A356006

/-- `A007814(n+1)+A007949(n+1)+A112765(n+1)` -/
def P9495163879456603929.Spec : Prop :=
  ∀ n, P9495163879456603929.a n = A356006 (n + 1)

theorem P9495163879456603929.correct : P9495163879456603929.Spec := by
  intro n
  simp only [A356006, Nat.add_sub_cancel]

end A356006

/-! ## A356006.P16370029165752908950

`A169611(A079707(n+1))`
-/

namespace A356006.P16370029165752908950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A079707 (n + 1)).toNat

end

end A356006.P16370029165752908950

namespace A356006

/-- `A169611(A079707(n+1))` -/
def P16370029165752908950.Spec : Prop :=
  ∀ n, P16370029165752908950.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P15470280471928596348

`A112759(A379005(n+1))`
-/

namespace A356006.P15470280471928596348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (A379005 (n + 1)).toNat

end

end A356006.P15470280471928596348

namespace A356006

/-- `A112759(A379005(n+1))` -/
def P15470280471928596348.Spec : Prop :=
  ∀ n, P15470280471928596348.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P4761783003659860679

`A258120(A392597(n+1))`
-/

namespace A356006.P4761783003659860679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258120 (A392597 (n + 1)).toNat

end

end A356006.P4761783003659860679

namespace A356006

/-- `A258120(A392597(n+1))` -/
def P4761783003659860679.Spec : Prop :=
  ∀ n, P4761783003659860679.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P3916430271343974689

`A169611(n+1)+A112765(n+1)`
-/

namespace A356006.P3916430271343974689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + A112765 (n + 1)

end

end A356006.P3916430271343974689

namespace A356006

/-- `A169611(n+1)+A112765(n+1)` -/
def P3916430271343974689.Spec : Prop :=
  ∀ n, P3916430271343974689.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P12184601659541970945

`A001222(5^val(n+1, 5)*A065331(n+1))`
-/

namespace A356006.P12184601659541970945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℤ) * A065331 (n + 1)).toNat

end

end A356006.P12184601659541970945

namespace A356006

/-- `A001222(5^val(n+1, 5)*A065331(n+1))` -/
def P12184601659541970945.Spec : Prop :=
  ∀ n, P12184601659541970945.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P2383272880606805438

`A001222(n+1)-A001222(A165725(n+1))`
-/

namespace A356006.P2383272880606805438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A165725 (n + 1)).toNat

end

end A356006.P2383272880606805438

namespace A356006

/-- `A001222(n+1)-A001222(A165725(n+1))` -/
def P2383272880606805438.Spec : Prop :=
  ∀ n, P2383272880606805438.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P262557745433032133

`A112765(n+1)+A244417(n+1)+A122841(n+1)`
-/

namespace A356006.P262557745433032133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1) + (A244417 (n + 1) + A122841 (n + 1))

end

end A356006.P262557745433032133

namespace A356006

/-- `A112765(n+1)+A244417(n+1)+A122841(n+1)` -/
def P262557745433032133.Spec : Prop :=
  ∀ n, P262557745433032133.a n = A356006 (n + 1)

end A356006

/-! ## A356006.P6872971479817566756

`∑{p}[(A008574(n)+19)*A062383(2*n), val(n+1, #)]`
-/

namespace A356006.P6872971479817566756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n + 19) * A062383 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p

end

end A356006.P6872971479817566756

namespace A356006

/-- `∑{p}[(A008574(n)+19)*A062383(2*n), val(n+1, #)]` -/
def P6872971479817566756.Spec : Prop :=
  ∀ n, (P6872971479817566756.a n : ℤ) = A356006 (n + 1)

end A356006

/-! ## A356006.P4646243725244126058

`A007949(A265398(A003961(n+1)))`
-/

namespace A356006.P4646243725244126058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A265398 (A003961 (n + 1)).toNat).toNat

end

end A356006.P4646243725244126058

namespace A356006

/-- `A007949(A265398(A003961(n+1)))` -/
def P4646243725244126058.Spec : Prop :=
  ∀ n, P4646243725244126058.a n = A356006 (n + 1)

end A356006

/-!
# A356009: a(n) = n! * Sum_{k=1..n} Sum_{d|k} 1/(d * (k/d)!).

The programs for A356009, there is no canonical definition to state claims against.
-/

/-! ## A356009.P10559619425408814331

`A084510(7^n)`
-/

namespace A356009.P10559619425408814331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 (7 ^ n)

end

end A356009.P10559619425408814331

/-!
# A356010: a(n) = n! * Sum_{k=1..n} floor(n/k)/k.

The programs for A356010, there is no canonical definition to state claims against.
-/

/-! ## A356010.P4129038550560691352

`A038048(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A356010.P4129038550560691352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038048 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A356010.P4129038550560691352

/-! ## A356010.P241552465059717654

`(n+1)!*∑[A000203(n+1)/(n+1)]`
-/

namespace A356010.P241552465059717654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356010.P241552465059717654

/-! ## A356010.P11970558516173225155

`∑[A000203(n+1)/(n+1)]*A000142(n+1)`
-/

namespace A356010.P11970558516173225155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000142 (n + 1) : ℚ)

end

end A356010.P11970558516173225155

/-!
# A356011: a(n) = n! * Sum_{k=1..n} 1/(k! * floor(n/k)).

The programs for A356011, there is no canonical definition to state claims against.
-/

/-! ## A356011.P452711475472846596

`A347380(A161967(n))+A000522(n)`
-/

namespace A356011.P452711475472846596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A161967 n).toNat + A000522 n

end

end A356011.P452711475472846596

/-! ## A356011.P14510503914823515799

`A054706(A018026(n)*A049774(n))`
-/

namespace A356011.P14510503914823515799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A018026 n * A049774 n).toNat

end

end A356011.P14510503914823515799

/-!
# A356012: a(n) = n! / (6 * floor(n/3)).

The programs for A356012, the canonical program `A356012.P15264921267965854585` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356012 has offset 3).

The definition of A356012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356012.P15264921267965854585

`(n+3)!/(6*floor((n+3)/3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356012

/-- `(n+3)!/(6*floor((n+3)/3))` -/
def P15264921267965854585.Spec : Prop :=
  ∀ n, P15264921267965854585.a n = (A356012 (n + 3) : ℚ)

end A356012

/-! ## A356012.P7468636300597955897

`∏[a(n-3)+3]` with `a(0)=1, a(1)=4, a(2)=5, a(3)=3`
-/

namespace A356012.P7468636300597955897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5, 3] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356012.P7468636300597955897

namespace A356012

/-- `∏[a(n-3)+3]` -/
def P7468636300597955897.Spec : Prop :=
  ∀ n, (P7468636300597955897.a n : ℤ) = A356012 (n + 3)

end A356012

/-! ## A356012.P1948150592097838629

`(3*(n²%3)^n+n)*a(n-1)` with `a(0)=1`
-/

namespace A356012.P1948150592097838629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (n ^ 2 % 3) ^ n + n) * a (n - 1)

end

end A356012.P1948150592097838629

namespace A356012

/-- `(3*(n²%3)^n+n)*a(n-1)` -/
def P1948150592097838629.Spec : Prop :=
  ∀ n, (P1948150592097838629.a n : ℤ) = A356012 (n + 3)

end A356012

/-! ## A356012.P13427038411139856996

`∏[2-A099837(n)+n]`
-/

namespace A356012.P13427038411139856996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099837 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356012.P13427038411139856996

namespace A356012

/-- `∏[2-A099837(n)+n]` -/
def P13427038411139856996.Spec : Prop :=
  ∀ n, P13427038411139856996.a n = A356012 (n + 3)

end A356012

/-! ## A356012.P16010614191157089901

`(A130508(n)+2)*a(n-1)` with `a(0)=1`
-/

namespace A356012.P16010614191157089901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A130508 n + 2) * a (n - 1)

end

end A356012.P16010614191157089901

namespace A356012

/-- `(A130508(n)+2)*a(n-1)` -/
def P16010614191157089901.Spec : Prop :=
  ∀ n, P16010614191157089901.a n = A356012 (n + 3)

end A356012

/-! ## A356012.P3852005988389007597

`A355990(n+3)/A355988(n)*A000142(n)`
-/

namespace A356012.P3852005988389007597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355990 (n + 3) : ℚ) / (A355988 n : ℚ) * (A000142 n : ℚ)

end

end A356012.P3852005988389007597

namespace A356012

/-- `A355990(n+3)/A355988(n)*A000142(n)` -/
def P3852005988389007597.Spec : Prop :=
  ∀ n, P3852005988389007597.a n = (A356012 (n + 3) : ℚ)

end A356012

/-! ## A356012.P13210835009567021154

`∏[n--3%comp[∑[n]]]/A008620(n)`
-/

namespace A356012.P13210835009567021154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008620 n : ℚ)

end

end A356012.P13210835009567021154

namespace A356012

/-- `∏[n--3%comp[∑[n]]]/A008620(n)` -/
def P13210835009567021154.Spec : Prop :=
  ∀ n, P13210835009567021154.a n = (A356012 (n + 3) : ℚ)

end A356012

/-! ## A356012.P5849393099353102192

`A356013(A167614(n+1))`
-/

namespace A356012.P5849393099353102192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356013 (A167614 (n + 1)).toNat

end

end A356012.P5849393099353102192

namespace A356012

/-- `A356013(A167614(n+1))` -/
def P5849393099353102192.Spec : Prop :=
  ∀ n, P5849393099353102192.a n = A356012 (n + 3)

end A356012

/-!
# A356013: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) = n!/(k! * floor(n/k)).

The programs for A356013, the canonical program `A356013.P6642385329933546937` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356013 has offset 1).

The definition of A356013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356013.P6642385329933546937

`(row(n)+1)!/((col(n)+1)!*floor((row(n)+1)/(col(n)+1)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356013

/-- `(row(n)+1)!/((col(n)+1)!*floor((row(n)+1)/(col(n)+1)))` -/
def P6642385329933546937.Spec : Prop :=
  ∀ n, P6642385329933546937.a n = (A356013 (n + 1) : ℚ)

end A356013

/-! ## A356013.P16236274806747850591

`A173333(n+1)/A010766(n+1)`
-/

namespace A356013.P16236274806747850591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173333 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A356013.P16236274806747850591

namespace A356013

/-- `A173333(n+1)/A010766(n+1)` -/
def P16236274806747850591.Spec : Prop :=
  ∀ n, P16236274806747850591.a n = (A356013 (n + 1) : ℚ)

end A356013

/-! ## A356013.P14756885504162424978

`A070939(A299471(n+1))*A216919(n+1)`
-/

namespace A356013.P14756885504162424978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A299471 (n + 1)).toNat * A216919 (n + 1)

end

end A356013.P14756885504162424978

namespace A356013

/-- `A070939(A299471(n+1))*A216919(n+1)` -/
def P14756885504162424978.Spec : Prop :=
  ∀ n, P14756885504162424978.a n = A356013 (n + 1)

end A356013

/-!
# A356015: a(n) = n! * Sum_{k=1..n} 1/(k * floor(n/k)!).

The programs for A356015, there is no canonical definition to state claims against.
-/

/-! ## A356015.P3218327454004190697

`A268725(n+1)+∑[A268689(n+2)]`
-/

namespace A356015.P3218327454004190697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268689 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268725 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356015.P3218327454004190697

/-! ## A356015.P9353621594653166379

`ceil(A104062(n+1)/A061909(2*n+3))`
-/

namespace A356015.P9353621594653166379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104062 (n + 1) : ℚ) / (A061909 (2 * n + 3) : ℚ)⌉

end

end A356015.P9353621594653166379

/-!
# A356016: Consider the exponents in the prime factorization of n, and replace each run of k consecutive e's by a unique k; the resulting list corresponds to the exponents in the prime factorization of a(n).

The programs for A356016, there is no canonical definition to state claims against.
-/

/-! ## A356016.P12554954577669316459

`A319522(A356008(n+1))`
-/

namespace A356016.P12554954577669316459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A356008 (n + 1)).toNat

end

end A356016.P12554954577669316459

/-!
# A356018: a(n) is the number of evil divisors (A001969) of n.

The programs for A356018, the canonical program `A356018.P4624671268453047338` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356018 has offset 1).

The definition of A356018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356018.P4624671268453047338

`A000005(n+1)-A227872(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356018

/-- `A000005(n+1)-A227872(n+1)` -/
def P4624671268453047338.Spec : Prop :=
  ∀ n, P4624671268453047338.a n = A356018 (n + 1)

theorem P4624671268453047338.correct : P4624671268453047338.Spec := by
  intro n
  simp only [A356018, Nat.add_sub_cancel]

end A356018

/-! ## A356018.P15384519091279694404

`∑{d}[n+1, A010059(#)]`
-/

namespace A356018.P15384519091279694404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010059 d

end

end A356018.P15384519091279694404

namespace A356018

/-- `∑{d}[n+1, A010059(#)]` -/
def P15384519091279694404.Spec : Prop :=
  ∀ n, P15384519091279694404.a n = A356018 (n + 1)

end A356018

/-! ## A356018.P12963987379045847051

`∑{d}[n+1, A092436(#)]`
-/

namespace A356018.P12963987379045847051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092436 d

end

end A356018.P12963987379045847051

namespace A356018

/-- `∑{d}[n+1, A092436(#)]` -/
def P12963987379045847051.Spec : Prop :=
  ∀ n, P12963987379045847051.a n = A356018 (n + 1)

end A356018

/-! ## A356018.P2991438644788267258

`A227872(n+1)-A357761(n+1)`
-/

namespace A356018.P2991438644788267258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A357761 (n + 1)

end

end A356018.P2991438644788267258

namespace A356018

/-- `A227872(n+1)-A357761(n+1)` -/
def P2991438644788267258.Spec : Prop :=
  ∀ n, P2991438644788267258.a n = A356018 (n + 1)

theorem P2991438644788267258.correct : P2991438644788267258.Spec := by
  intro n
  simp only [A356018, Nat.add_sub_cancel, A356018.P2991438644788267258.a, A356018.P4624671268453047338.a, A000005, A000005.P16091521709108585461.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, A357761, A357761.P12264452491752923310.a, A010060, A010060.P3080921269106500717.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356018

/-! ## A356018.P3701470944931467724

`∑{d}[n+1, A010060(A016825(#))]`
-/

namespace A356018.P3701470944931467724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 (A016825 d).toNat

end

end A356018.P3701470944931467724

namespace A356018

/-- `∑{d}[n+1, A010060(A016825(#))]` -/
def P3701470944931467724.Spec : Prop :=
  ∀ n, P3701470944931467724.a n = A356018 (n + 1)

end A356018

/-!
# A356020: Positions of records in A356018, i.e., integers whose number of evil divisors sets a new record.

The programs for A356020, there is no canonical definition to state claims against.
-/

/-! ## A356020.P10589628238304146682

`A356019(record[A356018(n+1)])`
-/

namespace A356020.P10589628238304146682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A356020.P10589628238304146682

/-! ## A356020.P4181756176664599890

`A356019(lt[A356019(n), A029003(2*(n+2))])`
-/

namespace A356020.P4181756176664599890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029003 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356019 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356020.P4181756176664599890

/-! ## A356020.P10322072413855133752

`∩[A093687(n+1), A014419(n)]`
-/

namespace A356020.P10322072413855133752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356020.P10322072413855133752

/-! ## A356020.P6512193794419621079

`∩[A093687(n+1), A088082(n)]`
-/

namespace A356020.P6512193794419621079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088082 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356020.P6512193794419621079

/-! ## A356020.P10251932212942358770

`∩[A061904(n+1), A093687(n+1)]`
-/

namespace A356020.P10251932212942358770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356020.P10251932212942358770

/-!
# A356021: Positive numbers k such that, for any consecutive prime numbers p, q <= A006530(n), the p-adic and q-adic valuations of n are different.

The programs for A356021, there is no canonical definition to state claims against.
-/

/-! ## A356021.P16888281834263213640

`record[A356014(n+1)]`
-/

namespace A356021.P16888281834263213640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356021.P16888281834263213640

/-! ## A356021.P13304077715007253480

`eq[n, A356014(A028310(n))]`
-/

namespace A356021.P13304077715007253480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356021.P13304077715007253480

/-! ## A356021.P2229195480744082965

`eq[n, A356014(A065033(2*n))]`
-/

namespace A356021.P2229195480744082965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356021.P2229195480744082965

/-! ## A356021.P14918091197360975945

`lt[A025466(n), char[A356014(n+1)]]`
-/

namespace A356021.P14918091197360975945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356021.P14918091197360975945

/-! ## A356021.P1698283417031691851

`lt[A107846(n), char[A356014(n+1)]]`
-/

namespace A356021.P1698283417031691851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356014 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356021.P1698283417031691851

/-!
# A356025: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k)^(1/k!) )^(1/(1-x)).

The programs for A356025, there is no canonical definition to state claims against.
-/

/-! ## A356025.P2484701863128960352

`A348615(n)+A001951(A007788(n))`
-/

namespace A356025.P2484701863128960352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348615 n + A001951 (A007788 n).toNat

end

end A356025.P2484701863128960352

/-!
# A356028: Irregular triangle {A(n, k)} read by rows, giving in row n the numbers 1, 2, ..., 2^n - 1 ordered according to increasing binary weights, and for like weights decreasing.

The programs for A356028, there is no canonical definition to state claims against.
-/

/-! ## A356028.P3937930550988816733

`A359336(comp[and(n+1, -(n+3))])`
-/

namespace A356028.P3937930550988816733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 3 : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356028.P3937930550988816733

/-! ## A356028.P9093213039066633119

`A359336(A062289(n+1))`
-/

namespace A356028.P9093213039066633119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359336 (A062289 (n + 1)).toNat

end

end A356028.P9093213039066633119

/-! ## A356028.P6490243419972616026

`A359336(lt[0, A359336(n)])`
-/

namespace A356028.P6490243419972616026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A356028.P6490243419972616026

/-! ## A356028.P12784763052877317099

`A057512(A306805(n+1)%A214792(3*(n+1)))`
-/

namespace A356028.P12784763052877317099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 (Int.tmod (A306805 (n + 1)) (A214792 (3 * (n + 1)))).toNat

end

end A356028.P12784763052877317099

/-!
# A356029: a(n) = n! * Sum_{k=0..floor(n/2)} (n - 2*k)^k/(2^k * (n - 2*k)!).

The programs for A356029, there is no canonical definition to state claims against.
-/

/-! ## A356029.P15061000323944936364

`A065033(A001221(n+1)*A330044(n))`
-/

namespace A356029.P15061000323944936364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001221 (n + 1) * A330044 n).toNat

end

end A356029.P15061000323944936364

/-! ## A356029.P944125886720720599

`A096125(A077565(n+3)*A330044(n))`
-/

namespace A356029.P944125886720720599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096125 (A077565 (n + 3) * A330044 n).toNat

end

end A356029.P944125886720720599

/-! ## A356029.P3777346007787607406

`A096125(lcm(A077565(n+3), A330044(n)))`
-/

namespace A356029.P3777346007787607406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096125 (Int.lcm (A077565 (n + 3)) (A330044 n))

end

end A356029.P3777346007787607406

/-! ## A356029.P3144683366928979667

`A026741(A330044(n)+A047999(2*(n+1)))`
-/

namespace A356029.P3144683366928979667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A330044 n + A047999 (2 * (n + 1))).toNat

end

end A356029.P3144683366928979667

/-!
# A356033: Decimal expansion of (-1 + sqrt(13))/6 = A223139/3.

The programs for A356033, there is no canonical definition to state claims against.
-/

/-! ## A356033.P12589636191982726468

`9-A188942(n)`
-/

namespace A356033.P12589636191982726468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A188942 n

end

end A356033.P12589636191982726468

/-!
# A356035: Decimal expansion of the real root of x^3 - 2*x^2 - 1.

The programs for A356035, there is no canonical definition to state claims against.
-/

/-! ## A356035.P2436040442767072244

`A246773(floor(acot(n)+n))`
-/

namespace A356035.P2436040442767072244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1)

end

end A356035.P2436040442767072244

/-! ## A356035.P6183000194620965058

`A246773(n)-floor(acot(n))`
-/

namespace A356035.P6183000194620965058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A356035.P6183000194620965058

/-! ## A356035.P13935635448273979315

`A246773(A000038(n)/2+n)`
-/

namespace A356035.P13935635448273979315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 ((SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2 + (n : ℚ))).toNat + 1)

end

end A356035.P13935635448273979315

/-! ## A356035.P17779137633211003414

`A246773(A008486(n)-2*n)`
-/

namespace A356035.P17779137633211003414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 ((A008486 n - (2 * n : ℤ)).toNat + 1)

end

end A356035.P17779137633211003414

/-! ## A356035.P9965265666834798993

`A246773(n)-A000038(n)/2`
-/

namespace A356035.P9965265666834798993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246773 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A356035.P9965265666834798993

/-! ## A356035.P10361582980434225265

`A246773(A008486(n)-n-n)`
-/

namespace A356035.P10361582980434225265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 ((A008486 n - (n : ℤ) - (n : ℤ)).toNat + 1)

end

end A356035.P10361582980434225265

/-! ## A356035.P6887635377394859157

`A246773(A000038(n)+n)+A000038(n)`
-/

namespace A356035.P6887635377394859157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 ((A000038 n + (n : ℤ)).toNat + 1) + A000038 n

end

end A356035.P6887635377394859157

/-! ## A356035.P7478212774312079159

`A246773(n)-C(A246773(n), A061579(n)²)`
-/

namespace A356035.P7478212774312079159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 (n + 1) - (Nat.choose (A246773 (n + 1)).toNat (A061579 n ^ 2).toNat : ℤ)

end

end A356035.P7478212774312079159

/-! ## A356035.P10616908837885933309

`A097805(A000124(n))+A246773(n)-1`
-/

namespace A356035.P10616908837885933309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A000124 n).toNat + (A246773 (n + 1) - 1)

end

end A356035.P10616908837885933309

/-! ## A356035.P15009004686259855340

`A246773(A008486(n²)/A008486(n))`
-/

namespace A356035.P15009004686259855340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246773 ((SequenceMachineLib.roundAway ((A008486 (n ^ 2) : ℚ) / (A008486 n : ℚ))).toNat + 1)

end

end A356035.P15009004686259855340

/-!
# A356036: Triangle read by rows, giving in the first column the powers of 3 (A000244) and in the next columns 4/3 times the previous row entry.

The programs for A356036, the canonical program `A356036.P17600379593643079055` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356036 has offset 0).

The definition of A356036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356036.P17600379593643079055

`3^(row(n)-col(n))*4^col(n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356036

/-- `3^(row(n)-col(n))*4^col(n)` -/
def P17600379593643079055.Spec : Prop :=
  ∀ n, P17600379593643079055.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P10771686029466015128

`A059268(n)²*3^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A356036.P10771686029466015128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n ^ 2 : ℚ) * (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A356036.P10771686029466015128

namespace A356036

/-- `A059268(n)²*3^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P10771686029466015128.Spec : Prop :=
  ∀ n, P10771686029466015128.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P8316648870364745266

`3^(C(comp[∑[n]]-n, 2)-(n+1))*4^A002262(n)`
-/

namespace A356036.P8316648870364745266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (4 : ℚ) ^ (A002262 n : ℤ)

end

end A356036.P8316648870364745266

namespace A356036

/-- `3^(C(comp[∑[n]]-n, 2)-(n+1))*4^A002262(n)` -/
def P8316648870364745266.Spec : Prop :=
  ∀ n, P8316648870364745266.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P16657453686198969897

`A059268(n)*A175840(n)`
-/

namespace A356036.P16657453686198969897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A175840 n

end

end A356036.P16657453686198969897

namespace A356036

/-- `A059268(n)*A175840(n)` -/
def P16657453686198969897.Spec : Prop :=
  ∀ n, P16657453686198969897.a n = A356036 n

end A356036

/-! ## A356036.P15280746744662788105

`A059268(n)²*A140303(n)`
-/

namespace A356036.P15280746744662788105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A140303 n

end

end A356036.P15280746744662788105

namespace A356036

/-- `A059268(n)²*A140303(n)` -/
def P15280746744662788105.Spec : Prop :=
  ∀ n, P15280746744662788105.a n = A356036 n

end A356036

/-! ## A356036.P2399821228702509359

`A130459(n+1)*A247936(n)`
-/

namespace A356036.P2399821228702509359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130459 (n + 1) * A247936 n

end

end A356036.P2399821228702509359

namespace A356036

/-- `A130459(n+1)*A247936(n)` -/
def P2399821228702509359.Spec : Prop :=
  ∀ n, P2399821228702509359.a n = A356036 n

end A356036

/-! ## A356036.P1305994622191949059

`A059268(n)²*A000244(A025581(n))`
-/

namespace A356036.P1305994622191949059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A000244 (A025581 n).toNat

end

end A356036.P1305994622191949059

namespace A356036

/-- `A059268(n)²*A000244(A025581(n))` -/
def P1305994622191949059.Spec : Prop :=
  ∀ n, P1305994622191949059.a n = A356036 n

end A356036

/-! ## A356036.P1283937314341704612

`A000079(A002262(n))²*A140303(n)`
-/

namespace A356036.P1283937314341704612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A140303 n

end

end A356036.P1283937314341704612

namespace A356036

/-- `A000079(A002262(n))²*A140303(n)` -/
def P1283937314341704612.Spec : Prop :=
  ∀ n, P1283937314341704612.a n = A356036 n

end A356036

/-! ## A356036.P9408928279461205166

`A059268(n)²*A108411(A099375(n))`
-/

namespace A356036.P9408928279461205166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A108411 (A099375 n).toNat

end

end A356036.P9408928279461205166

namespace A356036

/-- `A059268(n)²*A108411(A099375(n))` -/
def P9408928279461205166.Spec : Prop :=
  ∀ n, P9408928279461205166.a n = A356036 n

end A356036

/-! ## A356036.P6806466455301900069

`A175840(n)/A140303(n)*A175840(n)`
-/

namespace A356036.P6806466455301900069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175840 n : ℚ) / (A140303 n : ℚ) * (A175840 n : ℚ)

end

end A356036.P6806466455301900069

namespace A356036

/-- `A175840(n)/A140303(n)*A175840(n)` -/
def P6806466455301900069.Spec : Prop :=
  ∀ n, P6806466455301900069.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P54005823689522290

`A038222(n)/A007318(n)`
-/

namespace A356036.P54005823689522290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A007318 n : ℚ)

end

end A356036.P54005823689522290

namespace A356036

/-- `A038222(n)/A007318(n)` -/
def P54005823689522290.Spec : Prop :=
  ∀ n, P54005823689522290.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P7399410533697871672

`A175840(n)²/A140303(n)`
-/

namespace A356036.P7399410533697871672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175840 n ^ 2 : ℚ) / (A140303 n : ℚ)

end

end A356036.P7399410533697871672

namespace A356036

/-- `A175840(n)²/A140303(n)` -/
def P7399410533697871672.Spec : Prop :=
  ∀ n, P7399410533697871672.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P8663406232850340874

`A038258(n)/A038207(n)`
-/

namespace A356036.P8663406232850340874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A038207 n : ℚ)

end

end A356036.P8663406232850340874

namespace A356036

/-- `A038258(n)/A038207(n)` -/
def P8663406232850340874.Spec : Prop :=
  ∀ n, P8663406232850340874.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P2888835080133349819

`A038226(n)/A013609(n)`
-/

namespace A356036.P2888835080133349819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038226 n : ℚ) / (A013609 n : ℚ)

end

end A356036.P2888835080133349819

namespace A356036

/-- `A038226(n)/A013609(n)` -/
def P2888835080133349819.Spec : Prop :=
  ∀ n, P2888835080133349819.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P11494090612461234758

`A038294(n)/A027465(n)`
-/

namespace A356036.P11494090612461234758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A027465 n : ℚ)

end

end A356036.P11494090612461234758

namespace A356036

/-- `A038294(n)/A027465(n)` -/
def P11494090612461234758.Spec : Prop :=
  ∀ n, P11494090612461234758.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P3784972931697032355

`A038262(n)/A038208(n)`
-/

namespace A356036.P3784972931697032355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A038208 n : ℚ)

end

end A356036.P3784972931697032355

namespace A356036

/-- `A038262(n)/A038208(n)` -/
def P3784972931697032355.Spec : Prop :=
  ∀ n, P3784972931697032355.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P17665490262692674158

`A038230(n)/A013610(n)`
-/

namespace A356036.P17665490262692674158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A013610 n : ℚ)

end

end A356036.P17665490262692674158

namespace A356036

/-- `A038230(n)/A013610(n)` -/
def P17665490262692674158.Spec : Prop :=
  ∀ n, P17665490262692674158.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P17955486943829942775

`A038330(n)/A038231(n)`
-/

namespace A356036.P17955486943829942775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A038231 n : ℚ)

end

end A356036.P17955486943829942775

namespace A356036

/-- `A038330(n)/A038231(n)` -/
def P17955486943829942775.Spec : Prop :=
  ∀ n, P17955486943829942775.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P17604918462567256105

`A038298(n)/A038220(n)`
-/

namespace A356036.P17604918462567256105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038298 n : ℚ) / (A038220 n : ℚ)

end

end A356036.P17604918462567256105

namespace A356036

/-- `A038298(n)/A038220(n)` -/
def P17604918462567256105.Spec : Prop :=
  ∀ n, P17604918462567256105.a n = (A356036 n : ℚ)

end A356036

/-! ## A356036.P4305368147476124380

`A038266(n)/A013620(n)`
-/

namespace A356036.P4305368147476124380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A013620 n : ℚ)

end

end A356036.P4305368147476124380

namespace A356036

/-- `A038266(n)/A013620(n)` -/
def P4305368147476124380.Spec : Prop :=
  ∀ n, P4305368147476124380.a n = (A356036 n : ℚ)

end A356036

/-!
# A356038: a(n) = Sum_{k=1..n} binomial(n,k) * sigma_2(k).

The programs for A356038, there is no canonical definition to state claims against.
-/

/-! ## A356038.P230200432444590730

`A308754(A067434(A227902(A056040(2*n+1))))`
-/

namespace A356038.P230200432444590730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A067434 (A227902 (A056040 (2 * n + 1)).toNat).toNat).toNat

end

end A356038.P230200432444590730

/-!
# A356040: a(n) is the smallest integer that has exactly n odious divisors (A227872) and n evil divisors (A356018).

The programs for A356040, there is no canonical definition to state claims against.
-/

/-! ## A356040.P15206483109934096780

`record[lcm(3, A278222(A189917(n+1)))]`
-/

namespace A356040.P15206483109934096780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A278222 (A189917 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356040.P15206483109934096780

/-! ## A356040.P16076595595927000796

`lt[A000010(A163511(n)), A364255(n)]`
-/

namespace A356040.P16076595595927000796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A163511 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356040.P16076595595927000796

/-! ## A356040.P10672248049031465121

`A088564(∪[A002276(2*(n+2)), A027676(n+1)])`
-/

namespace A356040.P10672248049031465121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027676 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088564 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A356040.P10672248049031465121

/-!
# A356042: a(n) = Sum_{k=1..n} sigma_2(k) * floor(n/k).

The programs for A356042, the canonical program `A356042.P5029701025651037143` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356042 has offset 1).

The definition of A356042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356042.P5029701025651037143

`∑[A007433(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356042

/-- `∑[A007433(n+1)]` -/
def P5029701025651037143.Spec : Prop :=
  ∀ n, P5029701025651037143.a n = A356042 (n + 1)

theorem P5029701025651037143.correct : P5029701025651037143.Spec := by
  intro n
  simp only [A356042, Nat.add_sub_cancel]

end A356042

/-! ## A356042.P14791424555353524789

`∑[∑{d}[n+1, A001157(#)]]`
-/

namespace A356042.P14791424555353524789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001157 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P14791424555353524789

namespace A356042

/-- `∑[∑{d}[n+1, A001157(#)]]` -/
def P14791424555353524789.Spec : Prop :=
  ∀ n, P14791424555353524789.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P13733922920741646053

`∑[2*A326826(n+1)-A007429(n+1)]`
-/

namespace A356042.P13733922920741646053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326826 (n + 1) - A007429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P13733922920741646053

namespace A356042

/-- `∑[2*A326826(n+1)-A007429(n+1)]` -/
def P13733922920741646053.Spec : Prop :=
  ∀ n, P13733922920741646053.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P11757568140609272920

`∑[∑{d}[n+1, A000005(#)*A000290((n+1)/#)]]`
-/

namespace A356042.P11757568140609272920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P11757568140609272920

namespace A356042

/-- `∑[∑{d}[n+1, A000005(#)*A000290((n+1)/#)]]` -/
def P11757568140609272920.Spec : Prop :=
  ∀ n, P11757568140609272920.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P9151532176534300687

`∑[∑{d}[n+1, A000203(#)*A057660((n+1)/#)]]`
-/

namespace A356042.P9151532176534300687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000203 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P9151532176534300687

namespace A356042

/-- `∑[∑{d}[n+1, A000203(#)*A057660((n+1)/#)]]` -/
def P9151532176534300687.Spec : Prop :=
  ∀ n, P9151532176534300687.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P6013514331508484575

`∑[∑{d}[n+1, A076752(#²)]]`
-/

namespace A356042.P6013514331508484575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A076752 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356042.P6013514331508484575

namespace A356042

/-- `∑[∑{d}[n+1, A076752(#²)]]` -/
def P6013514331508484575.Spec : Prop :=
  ∀ n, P6013514331508484575.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P12667935223331583539

`A356045(A034856(n+2))`
-/

namespace A356042.P12667935223331583539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (A034856 (n + 2)).toNat

end

end A356042.P12667935223331583539

namespace A356042

/-- `A356045(A034856(n+2))` -/
def P12667935223331583539.Spec : Prop :=
  ∀ n, P12667935223331583539.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P11045138643580321881

`A356045(eq[2, A193592(n)])`
-/

namespace A356042.P11045138643580321881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356042.P11045138643580321881

namespace A356042

/-- `A356045(eq[2, A193592(n)])` -/
def P11045138643580321881.Spec : Prop :=
  ∀ n, P11045138643580321881.a n = A356042 (n + 1)

end A356042

/-! ## A356042.P16465549168075804679

`A356045(A027379(n+1)+1)`
-/

namespace A356042.P16465549168075804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (A027379 (n + 1) + 1).toNat

end

end A356042.P16465549168075804679

namespace A356042

/-- `A356045(A027379(n+1)+1)` -/
def P16465549168075804679.Spec : Prop :=
  ∀ n, P16465549168075804679.a n = A356042 (n + 1)

end A356042

/-!
# A356043: a(n) = Sum_{k=1..n} sigma_3(k) * floor(n/k).

The programs for A356043, the canonical program `A356043.P17373567186682368949` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356043 has offset 1).

The definition of A356043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356043.P17373567186682368949

`∑[A321140(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356043

/-- `∑[A321140(n+1)]` -/
def P17373567186682368949.Spec : Prop :=
  ∀ n, P17373567186682368949.a n = A356043 (n + 1)

theorem P17373567186682368949.correct : P17373567186682368949.Spec := by
  intro n
  simp only [A356043, Nat.add_sub_cancel]

end A356043

/-! ## A356043.P14162579139281455932

`∑[∑{d}[n+1, A001158(#)]]`
-/

namespace A356043.P14162579139281455932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001158 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P14162579139281455932

namespace A356043

/-- `∑[∑{d}[n+1, A001158(#)]]` -/
def P14162579139281455932.Spec : Prop :=
  ∀ n, P14162579139281455932.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P11970018783371390057

`∑[∑{d}[n+1, A007433(#)*A053191((n+1)/#)]]`
-/

namespace A356043.P11970018783371390057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007433 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P11970018783371390057

namespace A356043

/-- `∑[∑{d}[n+1, A007433(#)*A053191((n+1)/#)]]` -/
def P11970018783371390057.Spec : Prop :=
  ∀ n, P11970018783371390057.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P577250957831557833

`∑[∑{d}[n+1, A046951(#)*A065959((n+1)/#)]]`
-/

namespace A356043.P577250957831557833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A046951 d * A065959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P577250957831557833

namespace A356043

/-- `∑[∑{d}[n+1, A046951(#)*A065959((n+1)/#)]]` -/
def P577250957831557833.Spec : Prop :=
  ∀ n, P577250957831557833.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P10372739768912713371

`∑[∑{d}[n+1, A208895(#)*A288417((n+1)/#)]]`
-/

namespace A356043.P10372739768912713371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A208895 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P10372739768912713371

namespace A356043

/-- `∑[∑{d}[n+1, A208895(#)*A288417((n+1)/#)]]` -/
def P10372739768912713371.Spec : Prop :=
  ∀ n, P10372739768912713371.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P16662310202006183795

`∑[∑{d}[n+1, A351266(#)*A351308((n+1)/#)]]`
-/

namespace A356043.P16662310202006183795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A351266 d * A351308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356043.P16662310202006183795

namespace A356043

/-- `∑[∑{d}[n+1, A351266(#)*A351308((n+1)/#)]]` -/
def P16662310202006183795.Spec : Prop :=
  ∀ n, P16662310202006183795.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P17612055586906926123

`A356045(A027379(n+2))`
-/

namespace A356043.P17612055586906926123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (A027379 (n + 2)).toNat

end

end A356043.P17612055586906926123

namespace A356043

/-- `A356045(A027379(n+2))` -/
def P17612055586906926123.Spec : Prop :=
  ∀ n, P17612055586906926123.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P2284718023046536540

`A356045(eq[3, A193592(n)])`
-/

namespace A356043.P2284718023046536540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356043.P2284718023046536540

namespace A356043

/-- `A356045(eq[3, A193592(n)])` -/
def P2284718023046536540.Spec : Prop :=
  ∀ n, P2284718023046536540.a n = A356043 (n + 1)

end A356043

/-! ## A356043.P14552125303409370955

`A356045(A034856(n+3)-1)`
-/

namespace A356043.P14552125303409370955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (A034856 (n + 3) - 1).toNat

end

end A356043.P14552125303409370955

namespace A356043

/-- `A356045(A034856(n+3)-1)` -/
def P14552125303409370955.Spec : Prop :=
  ∀ n, P14552125303409370955.a n = A356043 (n + 1)

end A356043

/-!
# A356046: a(n) = Sum_{k=1..n} sigma_n(k) * floor(n/k).

The programs for A356046, there is no canonical definition to state claims against.
-/

/-! ## A356046.P682092961567334860

`A356045(2*(n+1)²)`
-/

namespace A356046.P682092961567334860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (2 * (n + 1) ^ 2)

end

end A356046.P682092961567334860

/-! ## A356046.P85550511036245509

`A356045(A093353(2*n+1))%A058479(n+3)`
-/

namespace A356046.P85550511036245509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356045 (A093353 (2 * n + 1)).toNat) (A058479 (n + 3))

end

end A356046.P85550511036245509

/-!
# A356047: The number of links of a qualifying "snake" polyline that connects the midpoints of opposite sides of the n-th regular integer hexagon that allows such a construction.

The programs for A356047, the canonical program `A356047.P6390513323014318693` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356047 has offset 1).

The definition of A356047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356047.P6390513323014318693

`15*a(n-2)-15*a(n-4)+a(n-6)` with `a(0)=2, a(1)=3, a(2)=44, a(3)=45, a(4)=626, a(5)=627`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356047

/-- `15*a(n-2)-15*a(n-4)+a(n-6)` -/
def P6390513323014318693.Spec : Prop :=
  ∀ n, P6390513323014318693.a n = A356047 (n + 1)

theorem P6390513323014318693.correct : P6390513323014318693.Spec := by
  intro n
  simp only [A356047, Nat.add_sub_cancel]

end A356047

/-! ## A356047.P8446057150771384340

`and(15*n, a(n-1))!` with `a(0)=2, a(1)=3, a(2)=44, a(3)=45, a(4)=626, a(5)=627`
-/

namespace A356047.P8446057150771384340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 44, 45, 626, 627] fun n a =>
  Nat.factorial (Nat.land (15 * n) (a (n - 1)))

end

end A356047.P8446057150771384340

namespace A356047

/-- `and(15*n, a(n-1))!` -/
def P8446057150771384340.Spec : Prop :=
  ∀ n, (P8446057150771384340.a n : ℤ) = A356047 (n + 1)

end A356047

/-!
# A356048: a(n) is the least prime p such that p^2 - 2*prime(n)^2 is prime.

The programs for A356048, there is no canonical definition to state claims against.
-/

/-! ## A356048.P11236502186333513957

`A161830(n+2)+A000122(A000244(n))`
-/

namespace A356048.P11236502186333513957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161830 (n + 2) + A000122 (A000244 n).toNat

end

end A356048.P11236502186333513957

/-! ## A356048.P8773403446100598119

`A137847(A319837(2*n+5)-A137855(n+1))`
-/

namespace A356048.P8773403446100598119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A319837 (2 * n + 5) - A137855 (n + 1)).toNat

end

end A356048.P8773403446100598119

/-! ## A356048.P2681770125744026835

`A137847(A319837(2*n+5)-A137866(n+1))`
-/

namespace A356048.P2681770125744026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A319837 (2 * n + 5) - A137866 (n + 1)).toNat

end

end A356048.P2681770125744026835

/-!
# A356050: a(n) = 2*A135318(n+1) - A135318(n).

The programs for A356050, the canonical program `A356050.P14022949044699761598` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356050 has offset 0).

The definition of A356050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A135318(n+1)-A135318(n)` (program `A356050.P14022949044699761598`, by `A356050.P14022949044699761598.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356050.P12367714247647245541

`a(n-8)+5*A094958(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=11, a(7)=14`
-/

namespace A356050.P12367714247647245541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 5, 6, 11, 14] fun n a =>
  a (n - 8) + 5 * A094958 (n - 5)

end

end A356050.P12367714247647245541

namespace A356050

/-- `a(n-8)+5*A094958(n-5)` -/
def P12367714247647245541.Spec : Prop :=
  ∀ n, P12367714247647245541.a n = A356050 n

end A356050

/-! ## A356050.P7938210286046816011

`A135318(n)+A230096(n+1)`
-/

namespace A356050.P7938210286046816011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n + A230096 (n + 1)

end

end A356050.P7938210286046816011

namespace A356050

/-- `A135318(n)+A230096(n+1)` -/
def P7938210286046816011.Spec : Prop :=
  ∀ n, P7938210286046816011.a n = A356050 n

end A356050

/-! ## A356050.P14022949044699761598

`2*A135318(n+1)-A135318(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356050

/-- `2*A135318(n+1)-A135318(n)` -/
def P14022949044699761598.Spec : Prop :=
  ∀ n, P14022949044699761598.a n = A356050 n

theorem P14022949044699761598.correct : P14022949044699761598.Spec := by
  intro n
  simp only [A356050]

end A356050

/-! ## A356050.P9346813543642277677

`ogf((1+x+2x^2+3x^3)/(1-x^2-2x^4))`
-/

namespace A356050.P9346813543642277677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3] [1, 0, -1, 0, -2] n

end

end A356050.P9346813543642277677

namespace A356050

/-- `ogf((1+x+2x^2+3x^3)/(1-x^2-2x^4))` -/
def P9346813543642277677.Spec : Prop :=
  ∀ n, P9346813543642277677.a n = A356050 n

end A356050

/-! ## A356050.P9384208083449541425

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A356050.P9384208083449541425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 2) + 2 * a (n - 4)

end

end A356050.P9384208083449541425

namespace A356050

/-- `a(n-2)+2*a(n-4)` -/
def P9384208083449541425.Spec : Prop :=
  ∀ n, (P9384208083449541425.a n : ℤ) = A356050 n

end A356050

/-! ## A356050.P16842019318010078993

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A356050.P16842019318010078993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A356050.P16842019318010078993

namespace A356050

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P16842019318010078993.Spec : Prop :=
  ∀ n, (P16842019318010078993.a n : ℤ) = A356050 n

end A356050

/-! ## A356050.P8574251344998831345

`A375476(A007494(n+1)+1)`
-/

namespace A356050.P8574251344998831345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A007494 (n + 1) + 1).toNat

end

end A356050.P8574251344998831345

namespace A356050

/-- `A375476(A007494(n+1)+1)` -/
def P8574251344998831345.Spec : Prop :=
  ∀ n, P8574251344998831345.a n = A356050 n

end A356050

/-! ## A356050.P17016271933198987298

`A375476(A294732(n+3)+1)`
-/

namespace A356050.P17016271933198987298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A294732 (n + 3) + 1).toNat

end

end A356050.P17016271933198987298

namespace A356050

/-- `A375476(A294732(n+3)+1)` -/
def P17016271933198987298.Spec : Prop :=
  ∀ n, P17016271933198987298.a n = A356050 n

end A356050

/-! ## A356050.P2628235180137773253

`A135318(n+1)+Δ[A135318(n)]`
-/

namespace A356050.P2628235180137773253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) + (f1 (n + 1) - f1 n)

end

end A356050.P2628235180137773253

namespace A356050

/-- `A135318(n+1)+Δ[A135318(n)]` -/
def P2628235180137773253.Spec : Prop :=
  ∀ n, P2628235180137773253.a n = A356050 n

theorem P2628235180137773253.correct : P2628235180137773253.Spec := by
  intro n
  simp only [A356050, Nat.add_sub_cancel, A356050.P2628235180137773253.f1, A356050.P2628235180137773253.a, A356050.P14022949044699761598.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A356050

/-! ## A356050.P10152488873370506807

`A016116(n+1)+A033999(n)*A133684(n)`
-/

namespace A356050.P10152488873370506807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A033999 n * A133684 n

end

end A356050.P10152488873370506807

namespace A356050

/-- `A016116(n+1)+A033999(n)*A133684(n)` -/
def P10152488873370506807.Spec : Prop :=
  ∀ n, P10152488873370506807.a n = A356050 n

end A356050

/-! ## A356050.P5428487721401576608

`A056594(n+1)+A135318(n+1)+A133684(n)`
-/

namespace A356050.P5428487721401576608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + (A135318 (n + 1) + A133684 n)

end

end A356050.P5428487721401576608

namespace A356050

/-- `A056594(n+1)+A135318(n+1)+A133684(n)` -/
def P5428487721401576608.Spec : Prop :=
  ∀ n, P5428487721401576608.a n = A356050 n

end A356050

/-! ## A356050.P9219818989829633878

`A135318(n+1)+A135318(n)-A133684(n+1)`
-/

namespace A356050.P9219818989829633878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) + (A135318 n - A133684 (n + 1))

end

end A356050.P9219818989829633878

namespace A356050

/-- `A135318(n+1)+A135318(n)-A133684(n+1)` -/
def P9219818989829633878.Spec : Prop :=
  ∀ n, P9219818989829633878.a n = A356050 n

end A356050

/-! ## A356050.P18188238948937365204

`A016116(n+1)-A133684(n)/A033999(n+1)`
-/

namespace A356050.P18188238948937365204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) - (A133684 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A356050.P18188238948937365204

namespace A356050

/-- `A016116(n+1)-A133684(n)/A033999(n+1)` -/
def P18188238948937365204.Spec : Prop :=
  ∀ n, P18188238948937365204.a n = (A356050 n : ℚ)

end A356050

/-! ## A356050.P17450150244913168460

`A094958(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A356050.P17450150244913168460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A094958 (n + 1) - a (n - 2)

end

end A356050.P17450150244913168460

namespace A356050

/-- `A094958(n+1)-a(n-2)` -/
def P17450150244913168460.Spec : Prop :=
  ∀ n, P17450150244913168460.a n = A356050 n

end A356050

/-!
# A356052: Intersection of A001951 and A137803.

The programs for A356052, the canonical program `A356052.P15498316879302581903` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356052 has offset 1).

The definition of A356052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356052.P1767591111065379057

`∩[A137803(n+1), A001951(n)]`
-/

namespace A356052.P1767591111065379057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P1767591111065379057

namespace A356052

/-- `∩[A137803(n+1), A001951(n)]` -/
def P1767591111065379057.Spec : Prop :=
  ∀ n, (P1767591111065379057.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P15498316879302581903

`∩[A001951(n+1), comp[A137804(n+1)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356052

/-- `∩[A001951(n+1), comp[A137804(n+1)]]` -/
def P15498316879302581903.Spec : Prop :=
  ∀ n, (P15498316879302581903.a n : ℤ) = A356052 (n + 1)

theorem P15498316879302581903.correct : P15498316879302581903.Spec := by
  intro n
  simp only [A356052, Nat.add_sub_cancel]

end A356052

/-! ## A356052.P14151978326104049050

`∩[3*n-A195176(n), A137803(n+1)]`
-/

namespace A356052.P14151978326104049050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P14151978326104049050

namespace A356052

/-- `∩[3*n-A195176(n), A137803(n+1)]` -/
def P14151978326104049050.Spec : Prop :=
  ∀ n, (P14151978326104049050.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P9879541443861967868

`∩[A137803(n+1), A097508(n)+n]`
-/

namespace A356052.P9879541443861967868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P9879541443861967868

namespace A356052

/-- `∩[A137803(n+1), A097508(n)+n]` -/
def P9879541443861967868.Spec : Prop :=
  ∀ n, (P9879541443861967868.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P1020893788277841771

`∩[comp[A001952(n+1)], A137803(n+1)]`
-/

namespace A356052.P1020893788277841771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356052.P1020893788277841771

namespace A356052

/-- `∩[comp[A001952(n+1)], A137803(n+1)]` -/
def P1020893788277841771.Spec : Prop :=
  ∀ n, (P1020893788277841771.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P7509379759726129770

`∩[A137803(n+1), comp[A356054(n+1)]]`
-/

namespace A356052.P7509379759726129770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356054 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356052.P7509379759726129770

namespace A356052

/-- `∩[A137803(n+1), comp[A356054(n+1)]]` -/
def P7509379759726129770.Spec : Prop :=
  ∀ n, (P7509379759726129770.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P4433256795438931208

`∩[floor((A001951(2*(n+1))+1+n)/2), A097508(n)+n]`
-/

namespace A356052.P4433256795438931208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001951 (2 * (n + 1)) + 1 + (n : ℤ) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P4433256795438931208

namespace A356052

/-- `∩[floor((A001951(2*(n+1))+1+n)/2), A097508(n)+n]` -/
def P4433256795438931208.Spec : Prop :=
  ∀ n, (P4433256795438931208.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P7413722513689177630

`∩[floor((A001951(2*(n+1))+1+n)/2), 3*n-A195176(n)]`
-/

namespace A356052.P7413722513689177630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001951 (2 * (n + 1)) + 1 + (n : ℤ) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P7413722513689177630

namespace A356052

/-- `∩[floor((A001951(2*(n+1))+1+n)/2), 3*n-A195176(n)]` -/
def P7413722513689177630.Spec : Prop :=
  ∀ n, (P7413722513689177630.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P18053921466310434355

`∩[A137805(A137804(n+1)), A001951(n)]`
-/

namespace A356052.P18053921466310434355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P18053921466310434355

namespace A356052

/-- `∩[A137805(A137804(n+1)), A001951(n)]` -/
def P18053921466310434355.Spec : Prop :=
  ∀ n, (P18053921466310434355.a n : ℤ) = A356052 (n + 1)

end A356052

/-! ## A356052.P8345508665902424194

`∩[3*n-A195176(n), A137805(A137804(n+1))]`
-/

namespace A356052.P8345508665902424194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137804 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356052.P8345508665902424194

namespace A356052

/-- `∩[3*n-A195176(n), A137805(A137804(n+1))]` -/
def P8345508665902424194.Spec : Prop :=
  ∀ n, (P8345508665902424194.a n : ℤ) = A356052 (n + 1)

end A356052

/-!
# A356053: Intersection of A001951 and A137804.

The programs for A356053, the canonical program `A356053.P9081293707320961175` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356053 has offset 1).

The definition of A356053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356053.P9081293707320961175

`∩[A137804(n+1), A001951(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356053

/-- `∩[A137804(n+1), A001951(n)]` -/
def P9081293707320961175.Spec : Prop :=
  ∀ n, (P9081293707320961175.a n : ℤ) = A356053 (n + 1)

theorem P9081293707320961175.correct : P9081293707320961175.Spec := by
  intro n
  simp only [A356053, Nat.add_sub_cancel]

end A356053

/-! ## A356053.P2913568948198038969

`∩[A001951(n+1), comp[A137803(n+1)]]`
-/

namespace A356053.P2913568948198038969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356053.P2913568948198038969

namespace A356053

/-- `∩[A001951(n+1), comp[A137803(n+1)]]` -/
def P2913568948198038969.Spec : Prop :=
  ∀ n, (P2913568948198038969.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P8398694143979950210

`∩[comp[A001952(n+1)], A137804(n+1)]`
-/

namespace A356053.P8398694143979950210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356053.P8398694143979950210

namespace A356053

/-- `∩[comp[A001952(n+1)], A137804(n+1)]` -/
def P8398694143979950210.Spec : Prop :=
  ∀ n, (P8398694143979950210.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P9764442036730882722

`∩[3*n-A195176(n), A137804(n+1)]`
-/

namespace A356053.P9764442036730882722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P9764442036730882722

namespace A356053

/-- `∩[3*n-A195176(n), A137804(n+1)]` -/
def P9764442036730882722.Spec : Prop :=
  ∀ n, (P9764442036730882722.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P16539366745554612275

`∩[A292641(n+1)-(n+1), A097508(n)+n]`
-/

namespace A356053.P16539366745554612275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P16539366745554612275

namespace A356053

/-- `∩[A292641(n+1)-(n+1), A097508(n)+n]` -/
def P16539366745554612275.Spec : Prop :=
  ∀ n, (P16539366745554612275.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P4824734413303412897

`∩[3*n-A195176(n), A292641(n+1)-(n+1)]`
-/

namespace A356053.P4824734413303412897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P4824734413303412897

namespace A356053

/-- `∩[3*n-A195176(n), A292641(n+1)-(n+1)]` -/
def P4824734413303412897.Spec : Prop :=
  ∀ n, (P4824734413303412897.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P15317612031207424484

`∩[record[A137805(n+1)], A001951(n)]`
-/

namespace A356053.P15317612031207424484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356053.P15317612031207424484

namespace A356053

/-- `∩[record[A137805(n+1)], A001951(n)]` -/
def P15317612031207424484.Spec : Prop :=
  ∀ n, (P15317612031207424484.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P682125214872302660

`∩[A137805(A137803(n+1)), A001951(n)]`
-/

namespace A356053.P682125214872302660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (A137803 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P682125214872302660

namespace A356053

/-- `∩[A137805(A137803(n+1)), A001951(n)]` -/
def P682125214872302660.Spec : Prop :=
  ∀ n, (P682125214872302660.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P5911726015160283862

`∩[A286323(2*(n+1))-(n+1), A097508(n)+n]`
-/

namespace A356053.P5911726015160283862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (2 * (n + 1)) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P5911726015160283862

namespace A356053

/-- `∩[A286323(2*(n+1))-(n+1), A097508(n)+n]` -/
def P5911726015160283862.Spec : Prop :=
  ∀ n, (P5911726015160283862.a n : ℤ) = A356053 (n + 1)

end A356053

/-! ## A356053.P18208555562136633112

`∩[A286323(2*(n+1))-(n+1), 3*n-A195176(n)]`
-/

namespace A356053.P18208555562136633112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (2 * (n + 1)) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356053.P18208555562136633112

namespace A356053

/-- `∩[A286323(2*(n+1))-(n+1), 3*n-A195176(n)]` -/
def P18208555562136633112.Spec : Prop :=
  ∀ n, (P18208555562136633112.a n : ℤ) = A356053 (n + 1)

end A356053

/-!
# A356054: Intersection of A001952 and A137803.

The programs for A356054, the canonical program `A356054.P4602359117676996858` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356054 has offset 1).

The definition of A356054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356054.P4602359117676996858

`∩[A001952(n+1), A137803(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356054

/-- `∩[A001952(n+1), A137803(n+1)]` -/
def P4602359117676996858.Spec : Prop :=
  ∀ n, (P4602359117676996858.a n : ℤ) = A356054 (n + 1)

theorem P4602359117676996858.correct : P4602359117676996858.Spec := by
  intro n
  simp only [A356054, Nat.add_sub_cancel]

end A356054

/-! ## A356054.P17963358373913677241

`∩[A001952(n+1), comp[A137804(n+1)]]`
-/

namespace A356054.P17963358373913677241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356054.P17963358373913677241

namespace A356054

/-- `∩[A001952(n+1), comp[A137804(n+1)]]` -/
def P17963358373913677241.Spec : Prop :=
  ∀ n, (P17963358373913677241.a n : ℤ) = A356054 (n + 1)

end A356054

/-! ## A356054.P1360161663393053569

`∩[A137803(n+1), A184922(n+1)+1]`
-/

namespace A356054.P1360161663393053569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356054.P1360161663393053569

namespace A356054

/-- `∩[A137803(n+1), A184922(n+1)+1]` -/
def P1360161663393053569.Spec : Prop :=
  ∀ n, (P1360161663393053569.a n : ℤ) = A356054 (n + 1)

end A356054

/-! ## A356054.P3652862359904317270

`∩[A080754(n+1)+n, A137803(n+1)]`
-/

namespace A356054.P3652862359904317270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356054.P3652862359904317270

namespace A356054

/-- `∩[A080754(n+1)+n, A137803(n+1)]` -/
def P3652862359904317270.Spec : Prop :=
  ∀ n, (P3652862359904317270.a n : ℤ) = A356054 (n + 1)

end A356054

/-! ## A356054.P838090050229712765

`∩[A137803(n+1), A286923(n+1)-n]`
-/

namespace A356054.P838090050229712765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356054.P838090050229712765

namespace A356054

/-- `∩[A137803(n+1), A286923(n+1)-n]` -/
def P838090050229712765.Spec : Prop :=
  ∀ n, (P838090050229712765.a n : ℤ) = A356054 (n + 1)

end A356054

/-! ## A356054.P15680129650134532793

`filter[A137803(n+1), A171588(#)]`
-/

namespace A356054.P15680129650134532793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A356054.P15680129650134532793

namespace A356054

/-- `filter[A137803(n+1), A171588(#)]` -/
def P15680129650134532793.Spec : Prop :=
  ∀ n, P15680129650134532793.a n = A356054 (n + 1)

end A356054

/-!
# A356055: Intersection of A001952 and A137804.

The programs for A356055, the canonical program `A356055.P14237862659545009933` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356055 has offset 1).

The definition of A356055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356055.P14237862659545009933

`∩[A001952(n+1), A137804(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356055

/-- `∩[A001952(n+1), A137804(n+1)]` -/
def P14237862659545009933.Spec : Prop :=
  ∀ n, (P14237862659545009933.a n : ℤ) = A356055 (n + 1)

theorem P14237862659545009933.correct : P14237862659545009933.Spec := by
  intro n
  simp only [A356055, Nat.add_sub_cancel]

end A356055

/-! ## A356055.P8887149734661861974

`∩[A080754(n+1)+n, A137804(n+1)]`
-/

namespace A356055.P8887149734661861974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P8887149734661861974

namespace A356055

/-- `∩[A080754(n+1)+n, A137804(n+1)]` -/
def P8887149734661861974.Spec : Prop :=
  ∀ n, (P8887149734661861974.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P3018406814875638229

`∩[A184922(n+1)+1, A292641(n+1)-(n+1)]`
-/

namespace A356055.P3018406814875638229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P3018406814875638229

namespace A356055

/-- `∩[A184922(n+1)+1, A292641(n+1)-(n+1)]` -/
def P3018406814875638229.Spec : Prop :=
  ∀ n, (P3018406814875638229.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P16280928196823879459

`∩[A080754(n+1)+n, A292641(n+1)-(n+1)]`
-/

namespace A356055.P16280928196823879459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P16280928196823879459

namespace A356055

/-- `∩[A080754(n+1)+n, A292641(n+1)-(n+1)]` -/
def P16280928196823879459.Spec : Prop :=
  ∀ n, (P16280928196823879459.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P18190964003536373707

`∩[A286923(n+1)-n, A292641(n+1)-(n+1)]`
-/

namespace A356055.P18190964003536373707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P18190964003536373707

namespace A356055

/-- `∩[A286923(n+1)-n, A292641(n+1)-(n+1)]` -/
def P18190964003536373707.Spec : Prop :=
  ∀ n, (P18190964003536373707.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P11657438012594407857

`∩[ceil(A286690(n+1)/2), A292641(n+1)-(n+1)]`
-/

namespace A356055.P11657438012594407857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286690 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292641 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P11657438012594407857

namespace A356055

/-- `∩[ceil(A286690(n+1)/2), A292641(n+1)-(n+1)]` -/
def P11657438012594407857.Spec : Prop :=
  ∀ n, (P11657438012594407857.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P2731482373153738374

`∩[A001952(n+1), record[A137805(n+1)]]`
-/

namespace A356055.P2731482373153738374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356055.P2731482373153738374

namespace A356055

/-- `∩[A001952(n+1), record[A137805(n+1)]]` -/
def P2731482373153738374.Spec : Prop :=
  ∀ n, (P2731482373153738374.a n : ℤ) = A356055 (n + 1)

end A356055

/-! ## A356055.P1164242438968088014

`filter[A137804(n+1), A171588(#)]`
-/

namespace A356055.P1164242438968088014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A356055.P1164242438968088014

namespace A356055

/-- `filter[A137804(n+1), A171588(#)]` -/
def P1164242438968088014.Spec : Prop :=
  ∀ n, P1164242438968088014.a n = A356055 (n + 1)

end A356055

/-!
# A356056: a(n) = A001951(A137803(n)).

The programs for A356056, the canonical program `A356056.P16192935099357345067` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356056 has offset 1).

The definition of A356056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137803(n+1))` (program `A356056.P16192935099357345067`, by `A356056.P16192935099357345067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356056.P16192935099357345067

`A001951(A137803(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356056

/-- `A001951(A137803(n+1))` -/
def P16192935099357345067.Spec : Prop :=
  ∀ n, P16192935099357345067.a n = A356056 (n + 1)

theorem P16192935099357345067.correct : P16192935099357345067.Spec := by
  intro n
  simp only [A356056, Nat.add_sub_cancel]

end A356056

/-! ## A356056.P12009664838630542325

`A356058(n+1)-2*A137803(n+1)`
-/

namespace A356056.P12009664838630542325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356058 (n + 1) - 2 * A137803 (n + 1)

end

end A356056.P12009664838630542325

namespace A356056

/-- `A356058(n+1)-2*A137803(n+1)` -/
def P12009664838630542325.Spec : Prop :=
  ∀ n, P12009664838630542325.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P2695822975330319371

`A001951(ceil((floor(2*(n+1)*sqrt(2))+n)/2))`
-/

namespace A356056.P2695822975330319371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉.toNat

end

end A356056.P2695822975330319371

namespace A356056

/-- `A001951(ceil((floor(2*(n+1)*sqrt(2))+n)/2))` -/
def P2695822975330319371.Spec : Prop :=
  ∀ n, P2695822975330319371.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P15843941161158943754

`A087057(ceil((floor(2*(n+1)*sqrt(2))+n)/2))-1`
-/

namespace A356056.P15843941161158943754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉.toNat - 1

end

end A356056.P15843941161158943754

namespace A356056

/-- `A087057(ceil((floor(2*(n+1)*sqrt(2))+n)/2))-1` -/
def P15843941161158943754.Spec : Prop :=
  ∀ n, P15843941161158943754.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P15163099816462608309

`∩[A001951(n+1), comp[A356057(n+1)]]`
-/

namespace A356056.P15163099816462608309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356057 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A356056.P15163099816462608309

namespace A356056

/-- `∩[A001951(n+1), comp[A356057(n+1)]]` -/
def P15163099816462608309.Spec : Prop :=
  ∀ n, (P15163099816462608309.a n : ℤ) = A356056 (n + 1)

end A356056

/-! ## A356056.P16322575958539188871

`floor(A022842(comp[A137804(n+1)-1]+1)/2)`
-/

namespace A356056.P16322575958539188871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022842 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 2⌋

end

end A356056.P16322575958539188871

namespace A356056

/-- `floor(A022842(comp[A137804(n+1)-1]+1)/2)` -/
def P16322575958539188871.Spec : Prop :=
  ∀ n, P16322575958539188871.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P9530030497308238347

`A049472(2*A137803(n+1))`
-/

namespace A356056.P9530030497308238347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A137803 (n + 1)).toNat

end

end A356056.P9530030497308238347

namespace A356056

/-- `A049472(2*A137803(n+1))` -/
def P9530030497308238347.Spec : Prop :=
  ∀ n, P9530030497308238347.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P2790904023172624090

`A026250(A356058(n+1))`
-/

namespace A356056.P2790904023172624090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356058 (n + 1)).toNat

end

end A356056.P2790904023172624090

namespace A356056

/-- `A026250(A356058(n+1))` -/
def P2790904023172624090.Spec : Prop :=
  ∀ n, P2790904023172624090.a n = A356056 (n + 1)

end A356056

/-! ## A356056.P4061896578611403411

`A172474(4*ceil((floor(2*(n+1)*sqrt(2))+n)/2))`
-/

namespace A356056.P4061896578611403411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (4 * ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉).toNat

end

end A356056.P4061896578611403411

namespace A356056

/-- `A172474(4*ceil((floor(2*(n+1)*sqrt(2))+n)/2))` -/
def P4061896578611403411.Spec : Prop :=
  ∀ n, P4061896578611403411.a n = A356056 (n + 1)

end A356056

/-!
# A356057: a(n) = A001951(A137804(n)).

The programs for A356057, the canonical program `A356057.P8518808555773698646` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356057 has offset 1).

The definition of A356057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A137804(n+1))` (program `A356057.P8518808555773698646`, by `A356057.P8518808555773698646.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356057.P8518808555773698646

`A001951(A137804(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356057

/-- `A001951(A137804(n+1))` -/
def P8518808555773698646.Spec : Prop :=
  ∀ n, P8518808555773698646.a n = A356057 (n + 1)

theorem P8518808555773698646.correct : P8518808555773698646.Spec := by
  intro n
  simp only [A356057, Nat.add_sub_cancel]

end A356057

/-! ## A356057.P16856368599409965849

`A356059(n+1)-2*A137804(n+1)`
-/

namespace A356057.P16856368599409965849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356059 (n + 1) - 2 * A137804 (n + 1)

end

end A356057.P16856368599409965849

namespace A356057

/-- `A356059(n+1)-2*A137804(n+1)` -/
def P16856368599409965849.Spec : Prop :=
  ∀ n, P16856368599409965849.a n = A356057 (n + 1)

end A356057

/-! ## A356057.P710585983660860055

`A001951(floor(8*(n+1)/(4-sqrt(2)))-(n+1))`
-/

namespace A356057.P710585983660860055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (⌊8 * ((n + 1 : ℝ) / (4 - Real.sqrt (2 : ℝ)))⌋ - (n + 1 : ℤ)).toNat

end

end A356057.P710585983660860055

namespace A356057

/-- `A001951(floor(8*(n+1)/(4-sqrt(2)))-(n+1))` -/
def P710585983660860055.Spec : Prop :=
  ∀ n, P710585983660860055.a n = A356057 (n + 1)

end A356057

/-! ## A356057.P9953363621012815151

`record[A001951(A137805(n+1))]`
-/

namespace A356057.P9953363621012815151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A137805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356057.P9953363621012815151

namespace A356057

/-- `record[A001951(A137805(n+1))]` -/
def P9953363621012815151.Spec : Prop :=
  ∀ n, P9953363621012815151.a n = A356057 (n + 1)

end A356057

/-! ## A356057.P18442269569519721303

`A097508(A292641(n+1)-(n+1))+A292641(n+1)-(n+1)`
-/

namespace A356057.P18442269569519721303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A292641 (n + 1) - (n + 1 : ℤ)).toNat + (A292641 (n + 1) - (n + 1 : ℤ))

end

end A356057.P18442269569519721303

namespace A356057

/-- `A097508(A292641(n+1)-(n+1))+A292641(n+1)-(n+1)` -/
def P18442269569519721303.Spec : Prop :=
  ∀ n, P18442269569519721303.a n = A356057 (n + 1)

end A356057

/-! ## A356057.P6136453041871296966

`A049472(2*A137804(n+1))`
-/

namespace A356057.P6136453041871296966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A137804 (n + 1)).toNat

end

end A356057.P6136453041871296966

namespace A356057

/-- `A049472(2*A137804(n+1))` -/
def P6136453041871296966.Spec : Prop :=
  ∀ n, P6136453041871296966.a n = A356057 (n + 1)

end A356057

/-! ## A356057.P8823341598044271226

`A026250(A356059(n+1))`
-/

namespace A356057.P8823341598044271226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356059 (n + 1)).toNat

end

end A356057.P8823341598044271226

namespace A356057

/-- `A026250(A356059(n+1))` -/
def P8823341598044271226.Spec : Prop :=
  ∀ n, P8823341598044271226.a n = A356057 (n + 1)

end A356057

/-!
# A356058: a(n) = A001952(A137803(n)).

The programs for A356058, the canonical program `A356058.P2542190791566602028` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356058 has offset 1).

The definition of A356058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(A137803(n+1))` (program `A356058.P2542190791566602028`, by `A356058.P2542190791566602028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356058.P2542190791566602028

`A001952(A137803(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356058

/-- `A001952(A137803(n+1))` -/
def P2542190791566602028.Spec : Prop :=
  ∀ n, P2542190791566602028.a n = A356058 (n + 1)

theorem P2542190791566602028.correct : P2542190791566602028.Spec := by
  intro n
  simp only [A356058, Nat.add_sub_cancel]

end A356058

/-! ## A356058.P16865421204104617380

`A356056(n+1)+2*A137803(n+1)`
-/

namespace A356058.P16865421204104617380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356056 (n + 1) + 2 * A137803 (n + 1)

end

end A356058.P16865421204104617380

namespace A356058

/-- `A356056(n+1)+2*A137803(n+1)` -/
def P16865421204104617380.Spec : Prop :=
  ∀ n, P16865421204104617380.a n = A356058 (n + 1)

end A356058

/-! ## A356058.P9110587708795712429

`A001952(ceil((floor(2*(n+1)*sqrt(2))+n)/2))`
-/

namespace A356058.P9110587708795712429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉.toNat

end

end A356058.P9110587708795712429

namespace A356058

/-- `A001952(ceil((floor(2*(n+1)*sqrt(2))+n)/2))` -/
def P9110587708795712429.Spec : Prop :=
  ∀ n, P9110587708795712429.a n = A356058 (n + 1)

end A356058

/-! ## A356058.P14768911226588267423

`A184922(ceil((floor(2*(n+1)*sqrt(2))+n)/2))+1`
-/

namespace A356058.P14768911226588267423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉.toNat + 1

end

end A356058.P14768911226588267423

namespace A356058

/-- `A184922(ceil((floor(2*(n+1)*sqrt(2))+n)/2))+1` -/
def P14768911226588267423.Spec : Prop :=
  ∀ n, P14768911226588267423.a n = A356058 (n + 1)

end A356058

/-! ## A356058.P17107211670984571467

`A286927(ceil((floor(2*(n+1)*sqrt(2))+n)/2))/2`
-/

namespace A356058.P17107211670984571467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2

end

end A356058.P17107211670984571467

namespace A356058

/-- `A286927(ceil((floor(2*(n+1)*sqrt(2))+n)/2))/2` -/
def P17107211670984571467.Spec : Prop :=
  ∀ n, P17107211670984571467.a n = (A356058 (n + 1) : ℚ)

end A356058

/-! ## A356058.P1366504766467179025

`A026250(A356056(n+1))`
-/

namespace A356058.P1366504766467179025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356056 (n + 1)).toNat

end

end A356058.P1366504766467179025

namespace A356058

/-- `A026250(A356056(n+1))` -/
def P1366504766467179025.Spec : Prop :=
  ∀ n, P1366504766467179025.a n = A356058 (n + 1)

end A356058

/-! ## A356058.P12761766185125851064

`A188375(2*ceil((floor(2*(n+1)*sqrt(2))+n)/2))`
-/

namespace A356058.P12761766185125851064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * ⌈(⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) : ℚ) / 2⌉).toNat

end

end A356058.P12761766185125851064

namespace A356058

/-- `A188375(2*ceil((floor(2*(n+1)*sqrt(2))+n)/2))` -/
def P12761766185125851064.Spec : Prop :=
  ∀ n, P12761766185125851064.a n = A356058 (n + 1)

end A356058

/-! ## A356058.P10645769568037812968

`A003152(2*A137803(n+1))`
-/

namespace A356058.P10645769568037812968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * A137803 (n + 1)).toNat

end

end A356058.P10645769568037812968

namespace A356058

/-- `A003152(2*A137803(n+1))` -/
def P10645769568037812968.Spec : Prop :=
  ∀ n, P10645769568037812968.a n = A356058 (n + 1)

end A356058

/-!
# A356059: a(n) = A001952(A137804(n)).

The programs for A356059, the canonical program `A356059.P12543719464786187527` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356059 has offset 1).

The definition of A356059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(A137804(n+1))` (program `A356059.P12543719464786187527`, by `A356059.P12543719464786187527.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356059.P12543719464786187527

`A001952(A137804(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356059

/-- `A001952(A137804(n+1))` -/
def P12543719464786187527.Spec : Prop :=
  ∀ n, P12543719464786187527.a n = A356059 (n + 1)

theorem P12543719464786187527.correct : P12543719464786187527.Spec := by
  intro n
  simp only [A356059, Nat.add_sub_cancel]

end A356059

/-! ## A356059.P13119210401044396042

`A356057(n+1)+2*A137804(n+1)`
-/

namespace A356059.P13119210401044396042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356057 (n + 1) + 2 * A137804 (n + 1)

end

end A356059.P13119210401044396042

namespace A356059

/-- `A356057(n+1)+2*A137804(n+1)` -/
def P13119210401044396042.Spec : Prop :=
  ∀ n, P13119210401044396042.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P2398286733172012552

`A001952(floor(8*(n+1)/(4-sqrt(2)))-(n+1))`
-/

namespace A356059.P2398286733172012552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (⌊8 * ((n + 1 : ℝ) / (4 - Real.sqrt (2 : ℝ)))⌋ - (n + 1 : ℤ)).toNat

end

end A356059.P2398286733172012552

namespace A356059

/-- `A001952(floor(8*(n+1)/(4-sqrt(2)))-(n+1))` -/
def P2398286733172012552.Spec : Prop :=
  ∀ n, P2398286733172012552.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P18242190991973732284

`record[A001952(A137805(n+1))]`
-/

namespace A356059.P18242190991973732284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A137805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356059.P18242190991973732284

namespace A356059

/-- `record[A001952(A137805(n+1))]` -/
def P18242190991973732284.Spec : Prop :=
  ∀ n, P18242190991973732284.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P2613512251755932961

`A286927(record[A137805(n+1)])/2`
-/

namespace A356059.P2613512251755932961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137805 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A356059.P2613512251755932961

namespace A356059

/-- `A286927(record[A137805(n+1)])/2` -/
def P2613512251755932961.Spec : Prop :=
  ∀ n, P2613512251755932961.a n = (A356059 (n + 1) : ℚ)

end A356059

/-! ## A356059.P2232501207413726055

`A184922(A292641(n+1)-(n+1))+1`
-/

namespace A356059.P2232501207413726055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (A292641 (n + 1) - (n + 1 : ℤ)).toNat + 1

end

end A356059.P2232501207413726055

namespace A356059

/-- `A184922(A292641(n+1)-(n+1))+1` -/
def P2232501207413726055.Spec : Prop :=
  ∀ n, P2232501207413726055.a n = A356059 (n + 1)

theorem P2232501207413726055.correct : P2232501207413726055.Spec := by
  intro n
  simp only [A356059, Nat.add_sub_cancel, A356059.P2232501207413726055.a, A356059.P12543719464786187527.a, A001952, A001952.P10508951561380553.a, A137804, A137804.P4899214672758810.a, A184922, A184922.P3022455773076834712.a, A292641, A292641.P3636368433729091843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A356059

/-! ## A356059.P601976944847786121

`A286927(A292641(n+1)-(n+1))/2`
-/

namespace A356059.P601976944847786121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (A292641 (n + 1) - (n + 1 : ℤ)).toNat : ℚ) / 2

end

end A356059.P601976944847786121

namespace A356059

/-- `A286927(A292641(n+1)-(n+1))/2` -/
def P601976944847786121.Spec : Prop :=
  ∀ n, P601976944847786121.a n = (A356059 (n + 1) : ℚ)

theorem P601976944847786121.correct : P601976944847786121.Spec := by
  intro n
  simp only [A356059, Nat.add_sub_cancel, A356059.P601976944847786121.a, A356059.P12543719464786187527.a, A001952, A001952.P10508951561380553.a, A137804, A137804.P4899214672758810.a, A286927, A286927.P17246180618763280689.a, A292641, A292641.P3636368433729091843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A356059

/-! ## A356059.P12057066218379666931

`A026250(A356057(n+1))`
-/

namespace A356059.P12057066218379666931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356057 (n + 1)).toNat

end

end A356059.P12057066218379666931

namespace A356059

/-- `A026250(A356057(n+1))` -/
def P12057066218379666931.Spec : Prop :=
  ∀ n, P12057066218379666931.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P10086859172886932163

`A026250(floor(sqrt(2)*A137804(n+1)))`
-/

namespace A356059.P10086859172886932163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 ⌊Real.sqrt (2 : ℝ) * (A137804 (n + 1) : ℝ)⌋.toNat

end

end A356059.P10086859172886932163

namespace A356059

/-- `A026250(floor(sqrt(2)*A137804(n+1)))` -/
def P10086859172886932163.Spec : Prop :=
  ∀ n, P10086859172886932163.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P10227375860433654485

`A003152(2*A137804(n+1))`
-/

namespace A356059.P10227375860433654485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * A137804 (n + 1)).toNat

end

end A356059.P10227375860433654485

namespace A356059

/-- `A003152(2*A137804(n+1))` -/
def P10227375860433654485.Spec : Prop :=
  ∀ n, P10227375860433654485.a n = A356059 (n + 1)

end A356059

/-! ## A356059.P9315189552819969781

`A188375(2*A137804(n+1))`
-/

namespace A356059.P9315189552819969781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * A137804 (n + 1)).toNat

end

end A356059.P9315189552819969781

namespace A356059

/-- `A188375(2*A137804(n+1))` -/
def P9315189552819969781.Spec : Prop :=
  ∀ n, P9315189552819969781.a n = A356059 (n + 1)

end A356059

/-!
# A356060: a(n) is the least prime p such that 2*prime(n)^2 + p is the square of a prime.

The programs for A356060, there is no canonical definition to state claims against.
-/

/-! ## A356060.P9939572624376510553

`A109619(p?[round(8*n/7)]²)`
-/

namespace A356060.P9939572624376510553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A356060.P9939572624376510553

/-! ## A356060.P1940418998939708133

`A109619(A001248(n+1))`
-/

namespace A356060.P1940418998939708133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (A001248 (n + 1)).toNat

end

end A356060.P1940418998939708133

/-! ## A356060.P17467733120420891744

`A109619(A359757(n+1))`
-/

namespace A356060.P17467733120420891744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (A359757 (n + 1)).toNat

end

end A356060.P17467733120420891744

/-! ## A356060.P2386079216932191871

`A109619(A280076(n+2))`
-/

namespace A356060.P2386079216932191871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (A280076 (n + 2)).toNat

end

end A356060.P2386079216932191871

/-! ## A356060.P5420701301426198606

`A109619(Δ[A007504(n)]²)`
-/

namespace A356060.P5420701301426198606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A356060.P5420701301426198606

/-!
# A356062: a(n) is the smallest integer that has exactly n Lucas divisors (A000032).

The programs for A356062, there is no canonical definition to state claims against.
-/

/-! ## A356062.P869724611036867488

`∏[A233765(A001045(n))+1]`
-/

namespace A356062.P869724611036867488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233765 (A001045 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356062.P869724611036867488

/-! ## A356062.P10002186918171760756

`∏[A014499(A001685(n))]`
-/

namespace A356062.P10002186918171760756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A001685 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356062.P10002186918171760756

/-! ## A356062.P10181706869283759094

`∏[A326031(A182857(n))]`
-/

namespace A356062.P10181706869283759094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (A182857 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356062.P10181706869283759094

/-!
# A356064: Numbers with a prime index other than 1 that is not a prime-power. Complement of A302492.

The programs for A356064, there is no canonical definition to state claims against.
-/

/-! ## A356064.P1265749253457403978

`comp[A302492(n+1)-1]+1`
-/

namespace A356064.P1265749253457403978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356064.P1265749253457403978

/-! ## A356064.P12185858171111691819

`comp[A001057(A302492(n+1)-1)]`
-/

namespace A356064.P12185858171111691819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A302492 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356064.P12185858171111691819

/-! ## A356064.P10703368459030097115

`comp[∪[A302492(n+1), A000538(n)]]`
-/

namespace A356064.P10703368459030097115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356064.P10703368459030097115

/-! ## A356064.P3943936994380828768

`comp[∪[A302492(n+1), A000578(n)]]`
-/

namespace A356064.P3943936994380828768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356064.P3943936994380828768

/-! ## A356064.P3683202512258093347

`comp[∪[A302492(n+1), A001014(n)]]`
-/

namespace A356064.P3683202512258093347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356064.P3683202512258093347

/-! ## A356064.P3525461707948900683

`comp[∪[A302492(n+1), A067725(n)]]`
-/

namespace A356064.P3525461707948900683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356064.P3525461707948900683

/-! ## A356064.P12965256427037970289

`lt[1, A001221(A061395(n+2))]+2`
-/

namespace A356064.P12965256427037970289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061395 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A356064.P12965256427037970289

/-! ## A356064.P2952541836623354932

`lt[1, A120454(A252735(n+1)+1)]+1`
-/

namespace A356064.P2952541836623354932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A252735 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356064.P2952541836623354932

/-!
# A356065: Squarefree numbers whose prime indices are all prime-powers.

The programs for A356065, there is no canonical definition to state claims against.
-/

/-! ## A356065.P3329657635995450830

`record[A007913(A355743(n+1))]`
-/

namespace A356065.P3329657635995450830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A355743 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356065.P3329657635995450830

/-! ## A356065.P11113351921812123075

`filter[A355743(n+1), A008966(#)]`
-/

namespace A356065.P11113351921812123075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A356065.P11113351921812123075

/-! ## A356065.P13571775149488920323

`filter[A302492(n+1), A323239(#)]`
-/

namespace A356065.P13571775149488920323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A356065.P13571775149488920323

/-! ## A356065.P7312322007731638313

`filter[A355743(n+1), A323154(#)]`
-/

namespace A356065.P7312322007731638313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A356065.P7312322007731638313

/-! ## A356065.P4941841298390538689

`filter[A355743(n+1), A323239(#)]`
-/

namespace A356065.P4941841298390538689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A356065.P4941841298390538689

/-! ## A356065.P9804602046182850900

`filter[A355743(n+1), A353559(#)]`
-/

namespace A356065.P9804602046182850900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A356065.P9804602046182850900

/-! ## A356065.P7919278266670307866

`filter[A355743(n+1), A353627(#)]`
-/

namespace A356065.P7919278266670307866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A356065.P7919278266670307866

/-! ## A356065.P6786071806946882968

`filter[A355743(n+1), A359590(#)]`
-/

namespace A356065.P6786071806946882968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A356065.P6786071806946882968

/-! ## A356065.P17337738724302158028

`filter[A355743(n+1), A359592(#)]`
-/

namespace A356065.P17337738724302158028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A356065.P17337738724302158028

/-! ## A356065.P14999063572888468808

`filter[A355743(n+1), A359834(#)]`
-/

namespace A356065.P14999063572888468808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A356065.P14999063572888468808

/-!
# A356066: Numbers with a prime index that is not a prime-power. Complement of A355743.

The programs for A356066, there is no canonical definition to state claims against.
-/

/-! ## A356066.P3072800544050780186

`comp[A355743(n+1)-1]+1`
-/

namespace A356066.P3072800544050780186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356066.P3072800544050780186

/-! ## A356066.P15276035562313835869

`comp[eq[1, A355741(n+1)]]+1`
-/

namespace A356066.P15276035562313835869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A356066.P15276035562313835869

/-! ## A356066.P14813430496618151612

`∪[2*(n+1), A322388(n+1)]`
-/

namespace A356066.P14813430496618151612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356066.P14813430496618151612

/-! ## A356066.P4791985655729687093

`∪[A356064(n+1), a(n-1)+2]` with `a(0)=2`
-/

namespace A356066.P4791985655729687093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A356066.P4791985655729687093

/-! ## A356066.P14511198046094646871

`comp[A023443(A355743(n+1))]+1`
-/

namespace A356066.P14511198046094646871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A355743 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356066.P14511198046094646871

/-! ## A356066.P2361849691411034788

`∪[A356064(n+1), Δ[A002378(n)]]`
-/

namespace A356066.P2361849691411034788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356066.P2361849691411034788

/-! ## A356066.P16233334488178773263

`∪[A356064(n+1), A005408(n)+1]`
-/

namespace A356066.P16233334488178773263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356066.P16233334488178773263

/-! ## A356066.P14351719499045764868

`∪[A119432(n+1), A356064(n+1)]`
-/

namespace A356066.P14351719499045764868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356066.P14351719499045764868

/-! ## A356066.P17608526422181929369

`∪[A122080(n+1), A356064(n+1)]`
-/

namespace A356066.P17608526422181929369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356066.P17608526422181929369

/-!
# A356068: Number of integers ranging from 1 to n that are not prime-powers (1 is not a prime-power).

The programs for A356068, the canonical program `A356068.P11051328716831346612` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356068 has offset 1).

The definition of A356068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085970, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356068.P11051328716831346612

`A085970(n+1)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356068

/-- `A085970(n+1)+1` -/
def P11051328716831346612.Spec : Prop :=
  ∀ n, P11051328716831346612.a n = A356068 (n + 1)

theorem P11051328716831346612.correct : P11051328716831346612.Spec := by
  intro n
  simp only [A356068, Nat.add_sub_cancel]

end A356068

/-! ## A356068.P6542263377982345992

`∑[A143731(n+1)]+1`
-/

namespace A356068.P6542263377982345992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P6542263377982345992

namespace A356068

/-- `∑[A143731(n+1)]+1` -/
def P6542263377982345992.Spec : Prop :=
  ∀ n, P6542263377982345992.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P5373801051689110034

`∑[1-A069513(n+1)]`
-/

namespace A356068.P5373801051689110034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P5373801051689110034

namespace A356068

/-- `∑[1-A069513(n+1)]` -/
def P5373801051689110034.Spec : Prop :=
  ∀ n, P5373801051689110034.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P2611729175307794144

`1-A025528(n+1)+n`
-/

namespace A356068.P2611729175307794144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A025528 (n + 1) + (n : ℤ)

end

end A356068.P2611729175307794144

namespace A356068

/-- `1-A025528(n+1)+n` -/
def P2611729175307794144.Spec : Prop :=
  ∀ n, P2611729175307794144.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P8077441813599295813

`2-A065515(n+1)+n`
-/

namespace A356068.P8077441813599295813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A065515 (n + 1) + (n : ℤ)

end

end A356068.P8077441813599295813

namespace A356068

/-- `2-A065515(n+1)+n` -/
def P8077441813599295813.Spec : Prop :=
  ∀ n, P8077441813599295813.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P12467868716565248147

`∑[A079872(n+1)²]+1`
-/

namespace A356068.P12467868716565248147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079872 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P12467868716565248147

namespace A356068

/-- `∑[A079872(n+1)²]+1` -/
def P12467868716565248147.Spec : Prop :=
  ∀ n, P12467868716565248147.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P6046214962271402680

`∑[(2-A287841(n+1))²]`
-/

namespace A356068.P6046214962271402680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A287841 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P6046214962271402680

namespace A356068

/-- `∑[(2-A287841(n+1))²]` -/
def P6046214962271402680.Spec : Prop :=
  ∀ n, P6046214962271402680.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P10471484031353456666

`∑[floor(1/A014963(n+1))]`
-/

namespace A356068.P10471484031353456666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A014963 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P10471484031353456666

namespace A356068

/-- `∑[floor(1/A014963(n+1))]` -/
def P10471484031353456666.Spec : Prop :=
  ∀ n, P10471484031353456666.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P11614859298914077884

`∑[char[A080765(n+1)]]+1`
-/

namespace A356068.P11614859298914077884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P11614859298914077884

namespace A356068

/-- `∑[char[A080765(n+1)]]+1` -/
def P11614859298914077884.Spec : Prop :=
  ∀ n, (P11614859298914077884.a n : ℤ) = A356068 (n + 1)

end A356068

/-! ## A356068.P9918979095769843578

`∑[A010057(A014963(n+1))]`
-/

namespace A356068.P9918979095769843578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P9918979095769843578

namespace A356068

/-- `∑[A010057(A014963(n+1))]` -/
def P9918979095769843578.Spec : Prop :=
  ∀ n, P9918979095769843578.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P7627161821058769848

`n-A023444(A065515(n+1))`
-/

namespace A356068.P7627161821058769848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A065515 (n + 1)).toNat

end

end A356068.P7627161821058769848

namespace A356068

/-- `n-A023444(A065515(n+1))` -/
def P7627161821058769848.Spec : Prop :=
  ∀ n, P7627161821058769848.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P13379764679702322445

`A069345(n+1)-A025532(n)`
-/

namespace A356068.P13379764679702322445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - A025532 n

end

end A356068.P13379764679702322445

namespace A356068

/-- `A069345(n+1)-A025532(n)` -/
def P13379764679702322445.Spec : Prop :=
  ∀ n, P13379764679702322445.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P8720132606023694102

`∑[A001221(A007875(n+1))]+1`
-/

namespace A356068.P8720132606023694102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P8720132606023694102

namespace A356068

/-- `∑[A001221(A007875(n+1))]+1` -/
def P8720132606023694102.Spec : Prop :=
  ∀ n, P8720132606023694102.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P16903056505338669054

`∑[A001222(A076820(n+1))]+1`
-/

namespace A356068.P16903056505338669054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P16903056505338669054

namespace A356068

/-- `∑[A001222(A076820(n+1))]+1` -/
def P16903056505338669054.Spec : Prop :=
  ∀ n, P16903056505338669054.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P3393551381869735665

`∑[A001222(A119288(n+1))]+1`
-/

namespace A356068.P3393551381869735665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P3393551381869735665

namespace A356068

/-- `∑[A001222(A119288(n+1))]+1` -/
def P3393551381869735665.Spec : Prop :=
  ∀ n, P3393551381869735665.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P16716532825073940063

`∑[A225541(A328830(n+1))]+1`
-/

namespace A356068.P16716532825073940063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A328830 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356068.P16716532825073940063

namespace A356068

/-- `∑[A225541(A328830(n+1))]+1` -/
def P16716532825073940063.Spec : Prop :=
  ∀ n, P16716532825073940063.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P17252321833525747052

`∑[1-A001221(A100994(n+1))]`
-/

namespace A356068.P17252321833525747052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 (A100994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P17252321833525747052

namespace A356068

/-- `∑[1-A001221(A100994(n+1))]` -/
def P17252321833525747052.Spec : Prop :=
  ∀ n, P17252321833525747052.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P10195646238291999801

`∑[1-A010051(A181819(n+1))]`
-/

namespace A356068.P10195646238291999801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P10195646238291999801

namespace A356068

/-- `∑[1-A010051(A181819(n+1))]` -/
def P10195646238291999801.Spec : Prop :=
  ∀ n, P10195646238291999801.a n = A356068 (n + 1)

end A356068

/-! ## A356068.P5466331855909571390

`∑[A063725(C(2, A014963(n+1)))]`
-/

namespace A356068.P5466331855909571390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (Nat.choose 2 (A014963 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356068.P5466331855909571390

namespace A356068

/-- `∑[A063725(C(2, A014963(n+1)))]` -/
def P5466331855909571390.Spec : Prop :=
  ∀ n, P5466331855909571390.a n = A356068 (n + 1)

end A356068

/-!
# A356069: Number of divisors of n whose prime indices cover an interval of positive integers (A073491).

The programs for A356069, there is no canonical definition to state claims against.
-/

/-! ## A356069.P10983087996639117939

`∑{d}[n+1, A137794(#)]`
-/

namespace A356069.P10983087996639117939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137794 d

end

end A356069.P10983087996639117939

/-! ## A356069.P702499314657652392

`A356227(n+1)+A085152(A179926(n+1))`
-/

namespace A356069.P702499314657652392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356227 (n + 1) + A085152 (A179926 (n + 1)).toNat

end

end A356069.P702499314657652392

/-! ## A356069.P5317064947231537595

`A000005(n+1)-A160383(A291716(n+1))`
-/

namespace A356069.P5317064947231537595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A160383 (A291716 (n + 1)).toNat

end

end A356069.P5317064947231537595

/-! ## A356069.P5963610204431731255

`∏{e}[n+1, #+1]-A079998(A060455(n))`
-/

namespace A356069.P5963610204431731255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A079998 (A060455 n).toNat

end

end A356069.P5963610204431731255

/-! ## A356069.P731123898614233280

`∏{e}[n+1, #+1]-A055641(A002572(n+1))`
-/

namespace A356069.P731123898614233280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A055641 (A002572 (n + 1)).toNat

end

end A356069.P731123898614233280

/-!
# A356073: Number of labeled trees on [n] having a centroid.

The programs for A356073, there is no canonical definition to state claims against.
-/

/-! ## A356073.P1705521475920609914

`n^a(n-2)^(a(n-1)-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A356073.P1705521475920609914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (n : ℝ) ^ (a (n - 2) ^ (a (n - 1) - 3))

end

end A356073.P1705521475920609914

/-! ## A356073.P13677161632474652519

`(n^3)%∏{e}[∏[∑[xor(n, 2*n)]+1], #+1]`
-/

namespace A356073.P13677161632474652519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A356073.P13677161632474652519

/-!
# A356075: a(n) = floor(m), where li(m) = n and li is the logarithmic integral. We consider only real and positive m.

The programs for A356075, there is no canonical definition to state claims against.
-/

/-! ## A356075.P4391355733313408525

`round(log2(A101901(n+1)+n))`
-/

namespace A356075.P4391355733313408525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A101901 (n + 1) + (n : ℤ) : ℝ))

end

end A356075.P4391355733313408525

/-! ## A356075.P5786683279511771527

`A046155(∑[A340745(a(n-1)+1)])` with `a(0)=2`
-/

namespace A356075.P5786683279511771527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A340745 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356075.P5786683279511771527

/-! ## A356075.P17132756800936012731

`A241907(n)+A010051(A051000(2*n+5))`
-/

namespace A356075.P17132756800936012731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241907 n + A010051 (A051000 (2 * n + 5)).toNat

end

end A356075.P17132756800936012731

/-! ## A356075.P14270871506734544600

`A241907(n)+A010051(A011782(n))`
-/

namespace A356075.P14270871506734544600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241907 n + A010051 (A011782 n).toNat

end

end A356075.P14270871506734544600

/-!
# A356076: a(n) = Sum_{k=1..n} sigma_k(k) * floor(n/k).

The programs for A356076, there is no canonical definition to state claims against.
-/

/-! ## A356076.P15631637153594668313

`∑[A344434(n+1)]`
-/

namespace A356076.P15631637153594668313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356076.P15631637153594668313

/-! ## A356076.P17699556504722127356

`∑[∑{d}[n+1, A023887(#)]]`
-/

namespace A356076.P17699556504722127356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A023887 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356076.P17699556504722127356

/-! ## A356076.P9553512919261974043

`∑[record[A344434(A193592(n))]]`
-/

namespace A356076.P9553512919261974043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344434 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356076.P9553512919261974043

/-! ## A356076.P14339612622144385929

`∑[record[A344434(A324344(n))]]`
-/

namespace A356076.P14339612622144385929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344434 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356076.P14339612622144385929

/-! ## A356076.P17769819853529773371

`∑{d}[A008619(2*n), A023887(#)]+a(n-1)` with `a(0)=1`
-/

namespace A356076.P17769819853529773371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A023887 d + a (n - 1)

end

end A356076.P17769819853529773371

/-!
# A356078: Highly composite numbers that are multiples of their number of divisors.

The programs for A356078, there is no canonical definition to state claims against.
-/

/-! ## A356078.P10441430937560100937

`∩[A002182(n+1), A110821(n+1)]`
-/

namespace A356078.P10441430937560100937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356078.P10441430937560100937

/-! ## A356078.P2721850569547495177

`∩[A097212(n+1), A110821(n+1)]`
-/

namespace A356078.P2721850569547495177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356078.P2721850569547495177

/-! ## A356078.P6243866094892697814

`∩[A110821(n+1), A140999(n+1)]`
-/

namespace A356078.P6243866094892697814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356078.P6243866094892697814

/-! ## A356078.P4826689104910716862

`∩[A110821(n+1), A179971(n+1)]`
-/

namespace A356078.P4826689104910716862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356078.P4826689104910716862

/-!
# A356079: Primes p such that p+6, p-6, 2*p+3 and 2*p-3 are prime.

The programs for A356079, there is no canonical definition to state claims against.
-/

/-! ## A356079.P8859850635943100549

`∩[A006489(n+1), A092110(n+1)]`
-/

namespace A356079.P8859850635943100549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356079.P8859850635943100549

/-! ## A356079.P4827987447874441658

`∩[A087681(n+1), A092110(n+1)]`
-/

namespace A356079.P4827987447874441658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356079.P4827987447874441658

/-! ## A356079.P17574346787222148742

`∩[A006489(n+1), A088763(n+1)]`
-/

namespace A356079.P17574346787222148742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356079.P17574346787222148742

/-! ## A356079.P11309404631807852721

`p?[∩[A087681(n+1), A088763(n+1)]]`
-/

namespace A356079.P11309404631807852721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A356079.P11309404631807852721

/-! ## A356079.P16065271858460429265

`∩[A006489(n+1), A387935(n+1)]`
-/

namespace A356079.P16065271858460429265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356079.P16065271858460429265

/-!
# A356080: Variation on Recamán's sequence (A005132) that is intended to be a permutation of the nonnegative integers, essentially as envisaged by the original comments in A078943. See comments below for details.

The programs for A356080, there is no canonical definition to state claims against.
-/

/-! ## A356080.P3367297785799517339

`∑[n*A374385(n²)]`
-/

namespace A356080.P3367297785799517339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A374385 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356080.P3367297785799517339

/-! ## A356080.P10903534088226689616

`(a(n-1)+n)%A183421(3*(n+1))` with `a(0)=0`
-/

namespace A356080.P10903534088226689616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A183421 (3 * (n + 1)))

end

end A356080.P10903534088226689616

/-! ## A356080.P7660777176765033809

`∑[n*A011586(A007837(n))]`
-/

namespace A356080.P7660777176765033809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011586 (A007837 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356080.P7660777176765033809

/-! ## A356080.P12008414101366572561

`∑[n*A057077(A077843(n))]`
-/

namespace A356080.P12008414101366572561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057077 (A077843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356080.P12008414101366572561

/-!
# A356082: Matula-Goebel number of the complete binary tree of n levels.

The programs for A356082, there is no canonical definition to state claims against.
-/

/-! ## A356082.P6372776151662502951

`A011757(sqrt(a(n-1)))²` with `a(0)=1`
-/

namespace A356082.P6372776151662502951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011757 (SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) : ℝ))).toNat ^ 2

end

end A356082.P6372776151662502951

/-!
# A356085: Intersection of A001951 and A054406.

The programs for A356085, the canonical program `A356085.P6656696348996247790` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356085 has offset 1).

The definition of A356085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356085.P6656696348996247790

`∩[A054406(n+1), floor(n*sqrt(2))]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356085

/-- `∩[A054406(n+1), floor(n*sqrt(2))]` -/
def P6656696348996247790.Spec : Prop :=
  ∀ n, (P6656696348996247790.a n : ℤ) = A356085 (n + 1)

theorem P6656696348996247790.correct : P6656696348996247790.Spec := by
  intro n
  simp only [A356085, Nat.add_sub_cancel]

end A356085

/-! ## A356085.P1108305397431965414

`∩[A188070(n+1)+n, floor(n*sqrt(2))]`
-/

namespace A356085.P1108305397431965414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356085.P1108305397431965414

namespace A356085

/-- `∩[A188070(n+1)+n, floor(n*sqrt(2))]` -/
def P1108305397431965414.Spec : Prop :=
  ∀ n, (P1108305397431965414.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P15415649160418158362

`∩[A001951(n), A054406(n+1)]`
-/

namespace A356085.P15415649160418158362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356085.P15415649160418158362

namespace A356085

/-- `∩[A001951(n), A054406(n+1)]` -/
def P15415649160418158362.Spec : Prop :=
  ∀ n, (P15415649160418158362.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P9622848479468396250

`∩[A001951(n), A188070(n+1)+n]`
-/

namespace A356085.P9622848479468396250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356085.P9622848479468396250

namespace A356085

/-- `∩[A001951(n), A188070(n+1)+n]` -/
def P9622848479468396250.Spec : Prop :=
  ∀ n, (P9622848479468396250.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P15867697662411110408

`∩[floor(A182778(n+1)/2), A001951(n)]`
-/

namespace A356085.P15867697662411110408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356085.P15867697662411110408

namespace A356085

/-- `∩[floor(A182778(n+1)/2), A001951(n)]` -/
def P15867697662411110408.Spec : Prop :=
  ∀ n, (P15867697662411110408.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P8148724152562438349

`∩[comp[A001952(n+1)], A054406(n+1)]`
-/

namespace A356085.P8148724152562438349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356085.P8148724152562438349

namespace A356085

/-- `∩[comp[A001952(n+1)], A054406(n+1)]` -/
def P8148724152562438349.Spec : Prop :=
  ∀ n, (P8148724152562438349.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P7497862182133979622

`∩[comp[A022838(n+1)], A001951(n+2)]`
-/

namespace A356085.P7497862182133979622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356085.P7497862182133979622

namespace A356085

/-- `∩[comp[A022838(n+1)], A001951(n+2)]` -/
def P7497862182133979622.Spec : Prop :=
  ∀ n, (P7497862182133979622.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P6172613370926718164

`∩[comp[A346308(n+1)], A001951(n+2)]`
-/

namespace A356085.P6172613370926718164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346308 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356085.P6172613370926718164

namespace A356085

/-- `∩[comp[A346308(n+1)], A001951(n+2)]` -/
def P6172613370926718164.Spec : Prop :=
  ∀ n, (P6172613370926718164.a n : ℤ) = A356085 (n + 1)

end A356085

/-! ## A356085.P8359425819845036577

`filter[A001951(n+1), A285684(#)]`
-/

namespace A356085.P8359425819845036577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285684 (f1 j).toNat = 1) n)

end

end A356085.P8359425819845036577

namespace A356085

/-- `filter[A001951(n+1), A285684(#)]` -/
def P8359425819845036577.Spec : Prop :=
  ∀ n, P8359425819845036577.a n = A356085 (n + 1)

end A356085

/-!
# A356086: Intersection of A001952 and A022838.

The programs for A356086, the canonical program `A356086.P6900622435396786446` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356086 has offset 1).

The definition of A356086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356086.P6900622435396786446

`∩[A001952(n+1), A022838(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356086

/-- `∩[A001952(n+1), A022838(n+1)]` -/
def P6900622435396786446.Spec : Prop :=
  ∀ n, (P6900622435396786446.a n : ℤ) = A356086 (n + 1)

theorem P6900622435396786446.correct : P6900622435396786446.Spec := by
  intro n
  simp only [A356086, Nat.add_sub_cancel]

end A356086

/-! ## A356086.P5746927024942398333

`filter[A022838(n+1), A171588(#)]`
-/

namespace A356086.P5746927024942398333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A356086.P5746927024942398333

namespace A356086

/-- `filter[A022838(n+1), A171588(#)]` -/
def P5746927024942398333.Spec : Prop :=
  ∀ n, P5746927024942398333.a n = A356086 (n + 1)

end A356086

/-! ## A356086.P8359681991232617049

`filter[A171970(2*(n+1)), A171588(#)]`
-/

namespace A356086.P8359681991232617049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A356086.P8359681991232617049

namespace A356086

/-- `filter[A171970(2*(n+1)), A171588(#)]` -/
def P8359681991232617049.Spec : Prop :=
  ∀ n, P8359681991232617049.a n = A356086 (n + 1)

end A356086

/-! ## A356086.P9927337287754861426

`filter[A094077(2*(n+1)), A286748(#)]`
-/

namespace A356086.P9927337287754861426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094077 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286748 (f1 j).toNat = 1) n)

end

end A356086.P9927337287754861426

namespace A356086

/-- `filter[A094077(2*(n+1)), A286748(#)]` -/
def P9927337287754861426.Spec : Prop :=
  ∀ n, P9927337287754861426.a n = A356086 (n + 1)

end A356086

/-!
# A356087: Intersection of A001952 and A054406.

The programs for A356087, the canonical program `A356087.P14576151142047705197` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356087 has offset 1).

The definition of A356087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356087.P14576151142047705197

`∩[A001952(n+1), A054406(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356087

/-- `∩[A001952(n+1), A054406(n+1)]` -/
def P14576151142047705197.Spec : Prop :=
  ∀ n, (P14576151142047705197.a n : ℤ) = A356087 (n + 1)

theorem P14576151142047705197.correct : P14576151142047705197.Spec := by
  intro n
  simp only [A356087, Nat.add_sub_cancel]

end A356087

/-! ## A356087.P6018116262134384203

`filter[A054406(n+1), A171588(#)]`
-/

namespace A356087.P6018116262134384203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A356087.P6018116262134384203

namespace A356087

/-- `filter[A054406(n+1), A171588(#)]` -/
def P6018116262134384203.Spec : Prop :=
  ∀ n, P6018116262134384203.a n = A356087 (n + 1)

end A356087

/-! ## A356087.P11313923347399514883

`filter[A001952(n+1), A285684(#)]`
-/

namespace A356087.P11313923347399514883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285684 (f1 j).toNat = 1) n)

end

end A356087.P11313923347399514883

namespace A356087

/-- `filter[A001952(n+1), A285684(#)]` -/
def P11313923347399514883.Spec : Prop :=
  ∀ n, P11313923347399514883.a n = A356087 (n + 1)

end A356087

/-! ## A356087.P17817619717885714765

`filter[A003152(2*(n+1)), A285684(#)]`
-/

namespace A356087.P17817619717885714765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285684 (f1 j).toNat = 1) n)

end

end A356087.P17817619717885714765

namespace A356087

/-- `filter[A003152(2*(n+1)), A285684(#)]` -/
def P17817619717885714765.Spec : Prop :=
  ∀ n, P17817619717885714765.a n = A356087 (n + 1)

end A356087

/-! ## A356087.P5321920405685235266

`filter[A188375(2*(n+1)), A285684(#)]`
-/

namespace A356087.P5321920405685235266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285684 (f1 j).toNat = 1) n)

end

end A356087.P5321920405685235266

namespace A356087

/-- `filter[A188375(2*(n+1)), A285684(#)]` -/
def P5321920405685235266.Spec : Prop :=
  ∀ n, P5321920405685235266.a n = A356087 (n + 1)

end A356087

/-!
# A356088: a(n) = A001951(A022838(n)).

The programs for A356088, the canonical program `A356088.P18437978252580480837` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356088 has offset 1).

The definition of A356088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A022838(n+1))` (program `A356088.P18437978252580480837`, by `A356088.P18437978252580480837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356088.P18437978252580480837

`A001951(A022838(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356088

/-- `A001951(A022838(n+1))` -/
def P18437978252580480837.Spec : Prop :=
  ∀ n, P18437978252580480837.a n = A356088 (n + 1)

theorem P18437978252580480837.correct : P18437978252580480837.Spec := by
  intro n
  simp only [A356088, Nat.add_sub_cancel]

end A356088

/-! ## A356088.P2962978323000441499

`floor(sqrt(2)*floor((n+1)*sqrt(3)))`
-/

namespace A356088.P2962978323000441499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ : ℝ)⌋

end

end A356088.P2962978323000441499

namespace A356088

/-- `floor(sqrt(2)*floor((n+1)*sqrt(3)))` -/
def P2962978323000441499.Spec : Prop :=
  ∀ n, P2962978323000441499.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P14172129116705161176

`A356090(n+1)-2*A022838(n+1)`
-/

namespace A356088.P14172129116705161176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356090 (n + 1) - 2 * A022838 (n + 1)

end

end A356088.P14172129116705161176

namespace A356088

/-- `A356090(n+1)-2*A022838(n+1)` -/
def P14172129116705161176.Spec : Prop :=
  ∀ n, P14172129116705161176.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P13160448536357998057

`A001951(floor((n+1)*sqrt(3)))`
-/

namespace A356088.P13160448536357998057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A356088.P13160448536357998057

namespace A356088

/-- `A001951(floor((n+1)*sqrt(3)))` -/
def P13160448536357998057.Spec : Prop :=
  ∀ n, P13160448536357998057.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P16113398217273342138

`A087057(floor((n+1)*sqrt(3)))-1`
-/

namespace A356088.P16113398217273342138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat - 1

end

end A356088.P16113398217273342138

namespace A356088

/-- `A087057(floor((n+1)*sqrt(3)))-1` -/
def P16113398217273342138.Spec : Prop :=
  ∀ n, P16113398217273342138.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P11091690757576888149

`A049472(2*floor((n+1)*sqrt(3)))`
-/

namespace A356088.P11091690757576888149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A356088.P11091690757576888149

namespace A356088

/-- `A049472(2*floor((n+1)*sqrt(3)))` -/
def P11091690757576888149.Spec : Prop :=
  ∀ n, P11091690757576888149.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P6900100078879328383

`A026250(A356090(n+1))`
-/

namespace A356088.P6900100078879328383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356090 (n + 1)).toNat

end

end A356088.P6900100078879328383

namespace A356088

/-- `A026250(A356090(n+1))` -/
def P6900100078879328383.Spec : Prop :=
  ∀ n, P6900100078879328383.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P6932575561480251899

`A097508(A001952(floor((n+1)*sqrt(3))))`
-/

namespace A356088.P6932575561480251899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A001952 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat).toNat

end

end A356088.P6932575561480251899

namespace A356088

/-- `A097508(A001952(floor((n+1)*sqrt(3))))` -/
def P6932575561480251899.Spec : Prop :=
  ∀ n, P6932575561480251899.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P2792387682789074777

`A172471(floor((n+1)*sqrt(3))²)`
-/

namespace A356088.P2792387682789074777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ ^ 2).toNat

end

end A356088.P2792387682789074777

namespace A356088

/-- `A172471(floor((n+1)*sqrt(3))²)` -/
def P2792387682789074777.Spec : Prop :=
  ∀ n, P2792387682789074777.a n = A356088 (n + 1)

end A356088

/-! ## A356088.P13414972341791788555

`A103128(A202304((n+1)²)²)`
-/

namespace A356088.P13414972341791788555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A202304 ((n + 1) ^ 2) ^ 2).toNat

end

end A356088.P13414972341791788555

namespace A356088

/-- `A103128(A202304((n+1)²)²)` -/
def P13414972341791788555.Spec : Prop :=
  ∀ n, P13414972341791788555.a n = A356088 (n + 1)

end A356088

/-!
# A356089: a(n) = A001951(A054406(n)).

The programs for A356089, the canonical program `A356089.P15539664326383864454` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356089 has offset 1).

The definition of A356089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(A054406(n+1))` (program `A356089.P15539664326383864454`, by `A356089.P15539664326383864454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356089.P15539664326383864454

`A001951(A054406(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356089

/-- `A001951(A054406(n+1))` -/
def P15539664326383864454.Spec : Prop :=
  ∀ n, P15539664326383864454.a n = A356089 (n + 1)

theorem P15539664326383864454.correct : P15539664326383864454.Spec := by
  intro n
  simp only [A356089, Nat.add_sub_cancel]

end A356089

/-! ## A356089.P302566875952989907

`A356091(n+1)-A054406(n+1)-A054406(n+1)`
-/

namespace A356089.P302566875952989907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356091 (n + 1) - A054406 (n + 1) - A054406 (n + 1)

end

end A356089.P302566875952989907

namespace A356089

/-- `A356091(n+1)-A054406(n+1)-A054406(n+1)` -/
def P302566875952989907.Spec : Prop :=
  ∀ n, P302566875952989907.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P13411540591669061570

`A001951(comp[floor(n*sqrt(3))])`
-/

namespace A356089.P13411540591669061570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356089.P13411540591669061570

namespace A356089

/-- `A001951(comp[floor(n*sqrt(3))])` -/
def P13411540591669061570.Spec : Prop :=
  ∀ n, P13411540591669061570.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P13854718041035546245

`A087057(comp[floor(n*sqrt(3))])-1`
-/

namespace A356089.P13854718041035546245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A356089.P13854718041035546245

namespace A356089

/-- `A087057(comp[floor(n*sqrt(3))])-1` -/
def P13854718041035546245.Spec : Prop :=
  ∀ n, P13854718041035546245.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P12006240387831686354

`record[A001951(A026255(n+1))]`
-/

namespace A356089.P12006240387831686354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A026255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356089.P12006240387831686354

namespace A356089

/-- `record[A001951(A026255(n+1))]` -/
def P12006240387831686354.Spec : Prop :=
  ∀ n, P12006240387831686354.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P1550691671776954340

`A049472(2*comp[floor(n*sqrt(3))])`
-/

namespace A356089.P1550691671776954340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356089.P1550691671776954340

namespace A356089

/-- `A049472(2*comp[floor(n*sqrt(3))])` -/
def P1550691671776954340.Spec : Prop :=
  ∀ n, P1550691671776954340.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P2954380866991573523

`A026250(A356091(n+1))`
-/

namespace A356089.P2954380866991573523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356091 (n + 1)).toNat

end

end A356089.P2954380866991573523

namespace A356089

/-- `A026250(A356091(n+1))` -/
def P2954380866991573523.Spec : Prop :=
  ∀ n, P2954380866991573523.a n = A356089 (n + 1)

end A356089

/-! ## A356089.P6596911590828555654

`A172471(comp[floor(n*sqrt(3))]²)`
-/

namespace A356089.P6596911590828555654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A356089.P6596911590828555654

namespace A356089

/-- `A172471(comp[floor(n*sqrt(3))]²)` -/
def P6596911590828555654.Spec : Prop :=
  ∀ n, P6596911590828555654.a n = A356089 (n + 1)

end A356089

/-!
# A356090: a(n) = A001952(A022838(n)).

The programs for A356090, the canonical program `A356090.P6936883162046464147` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356090 has offset 1).

The definition of A356090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(A022838(n+1))` (program `A356090.P6936883162046464147`, by `A356090.P6936883162046464147.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356090.P6936883162046464147

`A001952(A022838(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356090

/-- `A001952(A022838(n+1))` -/
def P6936883162046464147.Spec : Prop :=
  ∀ n, P6936883162046464147.a n = A356090 (n + 1)

theorem P6936883162046464147.correct : P6936883162046464147.Spec := by
  intro n
  simp only [A356090, Nat.add_sub_cancel]

end A356090

/-! ## A356090.P8845591119723714573

`A356088(n+1)+2*A022838(n+1)`
-/

namespace A356090.P8845591119723714573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356088 (n + 1) + 2 * A022838 (n + 1)

end

end A356090.P8845591119723714573

namespace A356090

/-- `A356088(n+1)+2*A022838(n+1)` -/
def P8845591119723714573.Spec : Prop :=
  ∀ n, P8845591119723714573.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P5691722734337701405

`A001952(floor((n+1)*sqrt(3)))`
-/

namespace A356090.P5691722734337701405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A356090.P5691722734337701405

namespace A356090

/-- `A001952(floor((n+1)*sqrt(3)))` -/
def P5691722734337701405.Spec : Prop :=
  ∀ n, P5691722734337701405.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P1105990454484893178

`A184922(floor((n+1)*sqrt(3)))+1`
-/

namespace A356090.P1105990454484893178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat + 1

end

end A356090.P1105990454484893178

namespace A356090

/-- `A184922(floor((n+1)*sqrt(3)))+1` -/
def P1105990454484893178.Spec : Prop :=
  ∀ n, P1105990454484893178.a n = A356090 (n + 1)

theorem P1105990454484893178.correct : P1105990454484893178.Spec := by
  intro n
  simp only [A356090, Nat.add_sub_cancel, A356090.P1105990454484893178.a, A356090.P6936883162046464147.a, A001952, A001952.P10508951561380553.a, A022838, A022838.P2955185450675945792.a, A184922, A184922.P3022455773076834712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A356090

/-! ## A356090.P1201221099241924006

`round(A286690(floor((n+1)*sqrt(3)))/2)`
-/

namespace A356090.P1201221099241924006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286690 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat : ℚ) / 2)

end

end A356090.P1201221099241924006

namespace A356090

/-- `round(A286690(floor((n+1)*sqrt(3)))/2)` -/
def P1201221099241924006.Spec : Prop :=
  ∀ n, P1201221099241924006.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P13088083574710127185

`A286927(∑[A080757(n)])/2`
-/

namespace A356090.P13088083574710127185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A356090.P13088083574710127185

namespace A356090

/-- `A286927(∑[A080757(n)])/2` -/
def P13088083574710127185.Spec : Prop :=
  ∀ n, P13088083574710127185.a n = (A356090 (n + 1) : ℚ)

end A356090

/-! ## A356090.P7744401757314239574

`A289037(A198081(n+1))-3`
-/

namespace A356090.P7744401757314239574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (A198081 (n + 1)).toNat - 3

end

end A356090.P7744401757314239574

namespace A356090

/-- `A289037(A198081(n+1))-3` -/
def P7744401757314239574.Spec : Prop :=
  ∀ n, P7744401757314239574.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P4981467517724810892

`A026250(A356088(n+1))`
-/

namespace A356090.P4981467517724810892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356088 (n + 1)).toNat

end

end A356090.P4981467517724810892

namespace A356090

/-- `A026250(A356088(n+1))` -/
def P4981467517724810892.Spec : Prop :=
  ∀ n, P4981467517724810892.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P884015570711979283

`A003152(2*floor((n+1)*sqrt(3)))`
-/

namespace A356090.P884015570711979283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A356090.P884015570711979283

namespace A356090

/-- `A003152(2*floor((n+1)*sqrt(3)))` -/
def P884015570711979283.Spec : Prop :=
  ∀ n, P884015570711979283.a n = A356090 (n + 1)

end A356090

/-! ## A356090.P3173859019061481091

`A188375(2*floor((n+1)*sqrt(3)))`
-/

namespace A356090.P3173859019061481091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋).toNat

end

end A356090.P3173859019061481091

namespace A356090

/-- `A188375(2*floor((n+1)*sqrt(3)))` -/
def P3173859019061481091.Spec : Prop :=
  ∀ n, P3173859019061481091.a n = A356090 (n + 1)

end A356090

/-!
# A356091: a(n) = A001952(A054406(n)).

The programs for A356091, the canonical program `A356091.P16868145821401886220` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356091 has offset 1).

The definition of A356091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(A054406(n+1))` (program `A356091.P16868145821401886220`, by `A356091.P16868145821401886220.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356091.P16868145821401886220

`A001952(A054406(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356091

/-- `A001952(A054406(n+1))` -/
def P16868145821401886220.Spec : Prop :=
  ∀ n, P16868145821401886220.a n = A356091 (n + 1)

theorem P16868145821401886220.correct : P16868145821401886220.Spec := by
  intro n
  simp only [A356091, Nat.add_sub_cancel]

end A356091

/-! ## A356091.P12079172387230656621

`A356089(n+1)+2*A054406(n+1)`
-/

namespace A356091.P12079172387230656621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356089 (n + 1) + 2 * A054406 (n + 1)

end

end A356091.P12079172387230656621

namespace A356091

/-- `A356089(n+1)+2*A054406(n+1)` -/
def P12079172387230656621.Spec : Prop :=
  ∀ n, P12079172387230656621.a n = A356091 (n + 1)

end A356091

/-! ## A356091.P7789392766102164358

`A001952(comp[floor(n*sqrt(3))])`
-/

namespace A356091.P7789392766102164358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356091.P7789392766102164358

namespace A356091

/-- `A001952(comp[floor(n*sqrt(3))])` -/
def P7789392766102164358.Spec : Prop :=
  ∀ n, P7789392766102164358.a n = A356091 (n + 1)

end A356091

/-! ## A356091.P9016469772472914144

`A286927(comp[floor(n*sqrt(3))])/2`
-/

namespace A356091.P9016469772472914144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A356091.P9016469772472914144

namespace A356091

/-- `A286927(comp[floor(n*sqrt(3))])/2` -/
def P9016469772472914144.Spec : Prop :=
  ∀ n, P9016469772472914144.a n = (A356091 (n + 1) : ℚ)

end A356091

/-! ## A356091.P8483780941273235562

`record[A001952(A026255(n+1))]`
-/

namespace A356091.P8483780941273235562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A026255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356091.P8483780941273235562

namespace A356091

/-- `record[A001952(A026255(n+1))]` -/
def P8483780941273235562.Spec : Prop :=
  ∀ n, P8483780941273235562.a n = A356091 (n + 1)

end A356091

/-! ## A356091.P18101363751437532304

`A026250(A356089(n+1))`
-/

namespace A356091.P18101363751437532304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (A356089 (n + 1)).toNat

end

end A356091.P18101363751437532304

namespace A356091

/-- `A026250(A356089(n+1))` -/
def P18101363751437532304.Spec : Prop :=
  ∀ n, P18101363751437532304.a n = A356091 (n + 1)

end A356091

/-! ## A356091.P8453608419803207002

`A003152(2*comp[floor(n*sqrt(3))])`
-/

namespace A356091.P8453608419803207002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356091.P8453608419803207002

namespace A356091

/-- `A003152(2*comp[floor(n*sqrt(3))])` -/
def P8453608419803207002.Spec : Prop :=
  ∀ n, P8453608419803207002.a n = A356091 (n + 1)

end A356091

/-! ## A356091.P13490044502759627371

`A188375(2*comp[floor(n*sqrt(3))])`
-/

namespace A356091.P13490044502759627371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356091.P13490044502759627371

namespace A356091

/-- `A188375(2*comp[floor(n*sqrt(3))])` -/
def P13490044502759627371.Spec : Prop :=
  ∀ n, P13490044502759627371.a n = A356091 (n + 1)

end A356091

/-!
# A356093: a(n) = numerator((prime(n)-1)/prime(n)#), where prime(n)# = A002110(n) is the n-th primorial.

The programs for A356093, the canonical program `A356093.P9988673686569387336` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356093 has offset 1).

The definition of A356093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356093.P9988673686569387336

`A006093(n+1)/A077063(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A356093

/-- `A006093(n+1)/A077063(n+1)` -/
def P9988673686569387336.Spec : Prop :=
  ∀ n, P9988673686569387336.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P14860940165398225885

`A008330(n+1)/A356474(n+1)`
-/

namespace A356093.P14860940165398225885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 1) : ℚ) / (A356474 (n + 1) : ℚ)

end

end A356093.P14860940165398225885

namespace A356093

/-- `A008330(n+1)/A356474(n+1)` -/
def P14860940165398225885.Spec : Prop :=
  ∀ n, P14860940165398225885.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P5414867099487036543

`A130290(n+1)/A356489(n+1)`
-/

namespace A356093.P5414867099487036543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130290 (n + 1) : ℚ) / (A356489 (n + 1) : ℚ)

end

end A356093.P5414867099487036543

namespace A356093

/-- `A130290(n+1)/A356489(n+1)` -/
def P5414867099487036543.Spec : Prop :=
  ∀ n, P5414867099487036543.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P8189141765827807204

`ceil(A112925(n+1)/A077063(n+1))`
-/

namespace A356093.P8189141765827807204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112925 (n + 1) : ℚ) / (A077063 (n + 1) : ℚ)⌉

end

end A356093.P8189141765827807204

namespace A356093

/-- `ceil(A112925(n+1)/A077063(n+1))` -/
def P8189141765827807204.Spec : Prop :=
  ∀ n, P8189141765827807204.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P8012503339501109496

`(A000040(n+1)-1)/A077063(n+1)`
-/

namespace A356093.P8012503339501109496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P8012503339501109496

namespace A356093

/-- `(A000040(n+1)-1)/A077063(n+1)` -/
def P8012503339501109496.Spec : Prop :=
  ∀ n, P8012503339501109496.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P1325173332026451549

`(A008864(n+1)-2)/A077063(n+1)`
-/

namespace A356093.P1325173332026451549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 2 : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P1325173332026451549

namespace A356093

/-- `(A008864(n+1)-2)/A077063(n+1)` -/
def P1325173332026451549.Spec : Prop :=
  ∀ n, P1325173332026451549.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P16411640742442645549

`A000010(A000040(n+1))/A077063(n+1)`
-/

namespace A356093.P16411640742442645549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000040 (n + 1)).toNat : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P16411640742442645549

namespace A356093

/-- `A000010(A000040(n+1))/A077063(n+1)` -/
def P16411640742442645549.Spec : Prop :=
  ∀ n, P16411640742442645549.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P16574164483435710789

`A039915(n+1)/A007947(A039915(n+1))`
-/

namespace A356093.P16574164483435710789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039915 (n + 1) : ℚ) / (A007947 (A039915 (n + 1)).toNat : ℚ)

end

end A356093.P16574164483435710789

namespace A356093

/-- `A039915(n+1)/A007947(A039915(n+1))` -/
def P16574164483435710789.Spec : Prop :=
  ∀ n, P16574164483435710789.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P12743015849301484930

`A336551(A000040(n+1)-1)+1`
-/

namespace A356093.P12743015849301484930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000040 (n + 1) - 1).toNat + 1

end

end A356093.P12743015849301484930

namespace A356093

/-- `A336551(A000040(n+1)-1)+1` -/
def P12743015849301484930.Spec : Prop :=
  ∀ n, P12743015849301484930.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P11999519434821730896

`record[A173557(n+1)]/A077063(n+1)`
-/

namespace A356093.P11999519434821730896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A077063 (n + 1) : ℚ)

end

end A356093.P11999519434821730896

namespace A356093

/-- `record[A173557(n+1)]/A077063(n+1)` -/
def P11999519434821730896.Spec : Prop :=
  ∀ n, P11999519434821730896.a n = (A356093 (n + 1) : ℚ)

end A356093

/-! ## A356093.P3679987042752174030

`A336551(eq[1, A001222(n+1)])+1`
-/

namespace A356093.P3679987042752174030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A356093.P3679987042752174030

namespace A356093

/-- `A336551(eq[1, A001222(n+1)])+1` -/
def P3679987042752174030.Spec : Prop :=
  ∀ n, P3679987042752174030.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P13888920091261003704

`A336551(eq[n, A000010(n+1)])+1`
-/

namespace A356093.P13888920091261003704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A356093.P13888920091261003704

namespace A356093

/-- `A336551(eq[n, A000010(n+1)])+1` -/
def P13888920091261003704.Spec : Prop :=
  ∀ n, P13888920091261003704.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P6148754076818089860

`A357689(A130290(n+1))`
-/

namespace A356093.P6148754076818089860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357689 (A130290 (n + 1)).toNat

end

end A356093.P6148754076818089860

namespace A356093

/-- `A357689(A130290(n+1))` -/
def P6148754076818089860.Spec : Prop :=
  ∀ n, P6148754076818089860.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P17106454731693630791

`A003557(A006093(n+1))`
-/

namespace A356093.P17106454731693630791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A006093 (n + 1)).toNat

end

end A356093.P17106454731693630791

namespace A356093

/-- `A003557(A006093(n+1))` -/
def P17106454731693630791.Spec : Prop :=
  ∀ n, P17106454731693630791.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P17981395995041553203

`A003557(A039915(n+1))`
-/

namespace A356093.P17981395995041553203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A039915 (n + 1)).toNat

end

end A356093.P17981395995041553203

namespace A356093

/-- `A003557(A039915(n+1))` -/
def P17981395995041553203.Spec : Prop :=
  ∀ n, P17981395995041553203.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P8660603041863420744

`A003557(A156037(n+1))`
-/

namespace A356093.P8660603041863420744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A156037 (n + 1)).toNat

end

end A356093.P8660603041863420744

namespace A356093

/-- `A003557(A156037(n+1))` -/
def P8660603041863420744.Spec : Prop :=
  ∀ n, P8660603041863420744.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P9099549138968718326

`A003557(A068499(n+2))`
-/

namespace A356093.P9099549138968718326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A068499 (n + 2)).toNat

end

end A356093.P9099549138968718326

namespace A356093

/-- `A003557(A068499(n+2))` -/
def P9099549138968718326.Spec : Prop :=
  ∀ n, P9099549138968718326.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P7498674810558296149

`A003557(record[A000010(n+1)])`
-/

namespace A356093.P7498674810558296149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A356093.P7498674810558296149

namespace A356093

/-- `A003557(record[A000010(n+1)])` -/
def P7498674810558296149.Spec : Prop :=
  ∀ n, P7498674810558296149.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P6505288512177152697

`A003557(A000040(n+1)-1)`
-/

namespace A356093.P6505288512177152697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000040 (n + 1) - 1).toNat

end

end A356093.P6505288512177152697

namespace A356093

/-- `A003557(A000040(n+1)-1)` -/
def P6505288512177152697.Spec : Prop :=
  ∀ n, P6505288512177152697.a n = A356093 (n + 1)

end A356093

/-! ## A356093.P7737056675327345742

`A003557(A008578(n+2)-1)`
-/

namespace A356093.P7737056675327345742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A008578 (n + 2) - 1).toNat

end

end A356093.P7737056675327345742

namespace A356093

/-- `A003557(A008578(n+2)-1)` -/
def P7737056675327345742.Spec : Prop :=
  ∀ n, P7737056675327345742.a n = A356093 (n + 1)

end A356093

/-!
# A356094: a(n) = denominator((prime(n)-1)/prime(n)#), where prime(n)# = A002110(n) is the n-th primorial.

The programs for A356094, there is no canonical definition to state claims against.
-/

/-! ## A356094.P7242274190706285451

`Δ[A007504(n)]*A066838(A006093(n+1))`
-/

namespace A356094.P7242274190706285451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P7242274190706285451

/-! ## A356094.P1288040970321759111

`A000040(n+1)*A066838(A006093(n+1))`
-/

namespace A356094.P1288040970321759111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P1288040970321759111

/-! ## A356094.P9457761595916167464

`sqrt(A001248(n+1))*A066838(A006093(n+1))`
-/

namespace A356094.P9457761595916167464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A066838 (A006093 (n + 1)).toNat : ℝ)

end

end A356094.P9457761595916167464

/-! ## A356094.P17968946857102328316

`A000040(n+1)*A066838(A000040(n+1)-1)`
-/

namespace A356094.P17968946857102328316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A066838 (A000040 (n + 1) - 1).toNat

end

end A356094.P17968946857102328316

/-! ## A356094.P8840003750686225732

`(A040976(n+1)+2)*A066838(A006093(n+1))`
-/

namespace A356094.P8840003750686225732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P8840003750686225732

/-! ## A356094.P14220091173613842996

`(A014692(n+1)+n)*A066838(A006093(n+1))`
-/

namespace A356094.P14220091173613842996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P14220091173613842996

/-! ## A356094.P5693776382116456590

`p?[A018252(n+1)-7]*A066838(A006093(n+1))`
-/

namespace A356094.P5693776382116456590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P5693776382116456590

/-! ## A356094.P11194580117005045688

`(A014688(n+1)-(n+1))*A066838(A006093(n+1))`
-/

namespace A356094.P11194580117005045688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) - (n + 1 : ℤ)) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P11194580117005045688

/-! ## A356094.P14862369367368670550

`(A022797(n+1)-A018252(n+1))*A066838(A006093(n+1))`
-/

namespace A356094.P14862369367368670550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022797 (n + 1) - A018252 (n + 1)) * A066838 (A006093 (n + 1)).toNat

end

end A356094.P14862369367368670550

/-! ## A356094.P13311323121752720872

`A002110(n+1)/A007947(A006093(n+1))`
-/

namespace A356094.P13311323121752720872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A007947 (A006093 (n + 1)).toNat : ℚ)

end

end A356094.P13311323121752720872

/-!
# A356095: Tetrahedral numbers which are products of three distinct primes.

The programs for A356095, there is no canonical definition to state claims against.
-/

/-! ## A356095.P2134953369395209592

`∩[A381736(n+1), A000292(n)]`
-/

namespace A356095.P2134953369395209592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356095.P2134953369395209592

/-! ## A356095.P15457141234963926575

`filter[A156126(n), A099104(#)]`
-/

namespace A356095.P15457141234963926575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A356095.P15457141234963926575

/-! ## A356095.P2891601679979370241

`filter[A156126(n), A354926(#)]`
-/

namespace A356095.P2891601679979370241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A356095.P2891601679979370241

/-! ## A356095.P18133567110950728984

`filter[A156126(n), A358753(#)]`
-/

namespace A356095.P18133567110950728984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A356095.P18133567110950728984

/-! ## A356095.P2743860692344815777

`filter[A000447(n+1), A099104(#)]`
-/

namespace A356095.P2743860692344815777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A356095.P2743860692344815777

/-!
# A356097: A family of triangles T(m), m >= 0, read by triangles and then by rows; triangle T(0) is [1; 1, 1]; for m >= 0, triangle T(m+1) is obtained by replacing each subtriangle [t; u, v] in T(m) by [t; t, t; u, t+u+v, v; u, u, v, v].

The programs for A356097, there is no canonical definition to state claims against.
-/

/-! ## A356097.P2875601547580775400

`A356096(n)^A027642(n)`
-/

namespace A356097.P2875601547580775400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356096 n : ℚ) ^ (A027642 n : ℤ)

end

end A356097.P2875601547580775400

/-! ## A356097.P1576266170155616569

`A356096(n)^(A027641(n)+1)`
-/

namespace A356097.P1576266170155616569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356096 n : ℚ) ^ (A027641 n + 1 : ℤ)

end

end A356097.P1576266170155616569

/-! ## A356097.P6090600206807177076

`A356096(n)^(A035363(n)+1)`
-/

namespace A356097.P6090600206807177076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356096 n : ℚ) ^ (A035363 n + 1 : ℤ)

end

end A356097.P6090600206807177076

/-! ## A356097.P6327462141786650314

`A356096(n)^A277799(n+1)`
-/

namespace A356097.P6327462141786650314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356096 n : ℚ) ^ (A277799 (n + 1) : ℤ)

end

end A356097.P6327462141786650314

/-! ## A356097.P18438592169759265035

`gcd(A356096(n), A356132(n+2))`
-/

namespace A356097.P18438592169759265035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A356096 n) (A356132 (n + 2))

end

end A356097.P18438592169759265035

