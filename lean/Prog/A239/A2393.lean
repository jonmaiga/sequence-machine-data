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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A239302: Triangular array: T(n,k) = number of partitions x(1) > x(2) > ... > x(k) of n+2 such that x(1) = x(2) + k, for n >= 1.

The programs for A239302, there is no canonical definition to state claims against.
-/

/-! ## A239302.P8441536352985040034

`A087897(A025581(n)+3)`
-/

namespace A239302.P8441536352985040034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A025581 n + 3).toNat

end

end A239302.P8441536352985040034

/-! ## A239302.P6146629195906203378

`A087897(log2(A130321(n))+3)`
-/

namespace A239302.P6146629195906203378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 3)).toNat

end

end A239302.P6146629195906203378

/-! ## A239302.P12244615219784204214

`A087897(A004736(n+1)+2)`
-/

namespace A239302.P12244615219784204214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A004736 (n + 1) + 2).toNat

end

end A239302.P12244615219784204214

/-! ## A239302.P12620440093064003398

`A087897(sqrt(A055461(n+1))+2)`
-/

namespace A239302.P12620440093064003398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) + 2)).toNat

end

end A239302.P12620440093064003398

/-! ## A239302.P2355139399468524044

`A087897(val(A190620(n+1)+1, 2)+2)`
-/

namespace A239302.P2355139399468524044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.valuation (A190620 (n + 1) + 1).toNat 2 + 2)

end

end A239302.P2355139399468524044

/-! ## A239302.P4502219322178208859

`A087897(A052938(A099375(n)))`
-/

namespace A239302.P4502219322178208859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A052938 (A099375 n).toNat).toNat

end

end A239302.P4502219322178208859

/-! ## A239302.P12438780456549081514

`A087897(xor(A002262(n), A003987(n))+3)`
-/

namespace A239302.P12438780456549081514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (Int.xor (A002262 n) (A003987 n) + 3).toNat

end

end A239302.P12438780456549081514

/-! ## A239302.P6320627253675946088

`A115604(A000124(A025581(n)))`
-/

namespace A239302.P6320627253675946088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115604 (A000124 (A025581 n).toNat).toNat

end

end A239302.P6320627253675946088

/-! ## A239302.P17348210390108809808

`A033183(A000523(A130321(n))²)`
-/

namespace A239302.P17348210390108809808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A000523 (A130321 n).toNat ^ 2).toNat

end

end A239302.P17348210390108809808

/-! ## A239302.P2102776607412430518

`A033183(A023416(A130321(n))²)`
-/

namespace A239302.P2102776607412430518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A023416 (A130321 n).toNat ^ 2).toNat

end

end A239302.P2102776607412430518

/-!
# A239304: Triangle of permutations corresponding to the compressed square roots of Gray code * bit-reversal permutation (A239303).

The programs for A239304, the canonical program `A239304.P17607192891470452994` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239304 has offset 1).

The definition of A239304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239304.P17607192891470452994

`A209278(A057028(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A239304

/-- `A209278(A057028(n+1))` -/
def P17607192891470452994.Spec : Prop :=
  ∀ n, P17607192891470452994.a n = A239304 (n + 1)

theorem P17607192891470452994.correct : P17607192891470452994.Spec := by
  intro n
  simp only [A239304, Nat.add_sub_cancel]

end A239304

/-! ## A239304.P9275132222874830151

`A057058(A209293(n+1))`
-/

namespace A239304.P9275132222874830151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A209293 (n + 1)).toNat

end

end A239304.P9275132222874830151

namespace A239304

/-- `A057058(A209293(n+1))` -/
def P9275132222874830151.Spec : Prop :=
  ∀ n, P9275132222874830151.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P1527340575576983778

`A209278(A209278(n+1)+A057944(n))`
-/

namespace A239304.P1527340575576983778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A209278 (n + 1) + A057944 n).toNat

end

end A239304.P1527340575576983778

namespace A239304

/-- `A209278(A209278(n+1)+A057944(n))` -/
def P1527340575576983778.Spec : Prop :=
  ∀ n, P1527340575576983778.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P12261780301635856340

`A057028(A057028(n+1))-A057944(n)`
-/

namespace A239304.P12261780301635856340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A057028 (n + 1)).toNat - A057944 n

end

end A239304.P12261780301635856340

namespace A239304

/-- `A057028(A057028(n+1))-A057944(n)` -/
def P12261780301635856340.Spec : Prop :=
  ∀ n, P12261780301635856340.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P7113179634487220544

`A002260(n+1)+A057028(A057028(n+1))-(n+1)`
-/

namespace A239304.P7113179634487220544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A057028 (A057028 (n + 1)).toNat - (n + 1 : ℤ))

end

end A239304.P7113179634487220544

namespace A239304

/-- `A002260(n+1)+A057028(A057028(n+1))-(n+1)` -/
def P7113179634487220544.Spec : Prop :=
  ∀ n, P7113179634487220544.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P11420651591353887518

`A209278(A209278(n+1)+n-A002260(n+1)+1)`
-/

namespace A239304.P11420651591353887518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A209278 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A239304.P11420651591353887518

namespace A239304

/-- `A209278(A209278(n+1)+n-A002260(n+1)+1)` -/
def P11420651591353887518.Spec : Prop :=
  ∀ n, P11420651591353887518.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P11192887659201181254

`A209278(A057027(A064789(A057027(n+1))))`
-/

namespace A239304.P11192887659201181254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A057027 (A064789 (A057027 (n + 1)).toNat).toNat).toNat

end

end A239304.P11192887659201181254

namespace A239304

/-- `A209278(A057027(A064789(A057027(n+1))))` -/
def P11192887659201181254.Spec : Prop :=
  ∀ n, P11192887659201181254.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P14408757960822902162

`A057028(A057028(n+1))+A057058(n+1)-A057027(n+1)`
-/

namespace A239304.P14408757960822902162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A057028 (n + 1)).toNat + (A057058 (n + 1) - A057027 (n + 1))

end

end A239304.P14408757960822902162

namespace A239304

/-- `A057028(A057028(n+1))+A057058(n+1)-A057027(n+1)` -/
def P14408757960822902162.Spec : Prop :=
  ∀ n, P14408757960822902162.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P14186697809375698998

`A057028(A057028(n+1))+A220073(n+1)-A185180(n+1)`
-/

namespace A239304.P14186697809375698998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A057028 (n + 1)).toNat + (A220073 (n + 1) - A185180 (n + 1))

end

end A239304.P14186697809375698998

namespace A239304

/-- `A057028(A057028(n+1))+A220073(n+1)-A185180(n+1)` -/
def P14186697809375698998.Spec : Prop :=
  ∀ n, P14186697809375698998.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P15430120077340294894

`A209278(A056011(n+1)+A209278(n+1)-A092543(n+1))`
-/

namespace A239304.P15430120077340294894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A056011 (n + 1) + (A209278 (n + 1) - A092543 (n + 1))).toNat

end

end A239304.P15430120077340294894

namespace A239304

/-- `A209278(A056011(n+1)+A209278(n+1)-A092543(n+1))` -/
def P15430120077340294894.Spec : Prop :=
  ∀ n, P15430120077340294894.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P18405245885966862882

`A209278(A209278(n+1)+A209293(n+1)-A209279(n+1))`
-/

namespace A239304.P18405245885966862882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A209278 (n + 1) + (A209293 (n + 1) - A209279 (n + 1))).toNat

end

end A239304.P18405245885966862882

namespace A239304

/-- `A209278(A209278(n+1)+A209293(n+1)-A209279(n+1))` -/
def P18405245885966862882.Spec : Prop :=
  ∀ n, P18405245885966862882.a n = A239304 (n + 1)

end A239304

/-! ## A239304.P14747347006112585103

`A209278(A056023(n+1)+A209278(n+1)-A092542(n+1))`
-/

namespace A239304.P14747347006112585103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A056023 (n + 1) + (A209278 (n + 1) - A092542 (n + 1))).toNat

end

end A239304.P14747347006112585103

namespace A239304

/-- `A209278(A056023(n+1)+A209278(n+1)-A092542(n+1))` -/
def P14747347006112585103.Spec : Prop :=
  ∀ n, P14747347006112585103.a n = A239304 (n + 1)

end A239304

/-!
# A239305: Expansion of (4*x^4-5*x^3-x^2+3*x-1) / (2*x^5+3*x^4-4*x^3-3*x^2+4*x-1).

The programs for A239305, the canonical program `A239305.P1574009698639339678` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239305 has offset 0).

The definition of A239305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239305.P1574009698639339678

`∑[A099036(n)]-A094588(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239305

/-- `∑[A099036(n)]-A094588(n)` -/
def P1574009698639339678.Spec : Prop :=
  ∀ n, P1574009698639339678.a n = A239305 n

theorem P1574009698639339678.correct : P1574009698639339678.Spec := by
  intro n
  simp only [A239305]

end A239305

/-! ## A239305.P919611692441444407

`A027934(n+1)-A094588(n)`
-/

namespace A239305.P919611692441444407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) - A094588 n

end

end A239305.P919611692441444407

namespace A239305

/-- `A027934(n+1)-A094588(n)` -/
def P919611692441444407.Spec : Prop :=
  ∀ n, P919611692441444407.a n = A239305 n

end A239305

/-! ## A239305.P12138859204464301505

`A099036(n)+A235996(n)-A240847(n)`
-/

namespace A239305.P12138859204464301505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + (A235996 n - A240847 n)

end

end A239305.P12138859204464301505

namespace A239305

/-- `A099036(n)+A235996(n)-A240847(n)` -/
def P12138859204464301505.Spec : Prop :=
  ∀ n, P12138859204464301505.a n = A239305 n

end A239305

/-! ## A239305.P10214271267348188771

`A335714(n+1)-(A240847(n)+A001629(n))`
-/

namespace A239305.P10214271267348188771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335714 (n + 1) - (A240847 n + A001629 n)

end

end A239305.P10214271267348188771

namespace A239305

/-- `A335714(n+1)-(A240847(n)+A001629(n))` -/
def P10214271267348188771.Spec : Prop :=
  ∀ n, P10214271267348188771.a n = A239305 n

end A239305

/-!
# A239306: Triangle read by rows: T(n,k) = least number m > 0 such that m^m contains exactly k distinct digits in base n, 1 <= k <= n, or 0 if no such m exists.

The programs for A239306, there is no canonical definition to state claims against.
-/

/-! ## A239306.P13654552028282205657

`A000120(A211849(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A239306.P13654552028282205657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A211849 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A239306.P13654552028282205657

/-! ## A239306.P5204846888126924750

`A000120(A211849(n+1)^∑{e}[∏{p}[n+1, #], #])`
-/

namespace A239306.P5204846888126924750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A211849 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A239306.P5204846888126924750

/-! ## A239306.P3610880990907391909

`A000120(A211849(n+1)^∑{e}[n+1, ceil(1/#)])`
-/

namespace A239306.P3610880990907391909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A211849 (n + 1) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ))).toNat

end

end A239306.P3610880990907391909

/-! ## A239306.P9034157182193421458

`A000120(A211849(n+1)^A001221(n+1))`
-/

namespace A239306.P9034157182193421458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A211849 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A239306.P9034157182193421458

/-! ## A239306.P8605504339337094474

`A000120(A211849(n+1)^A305150(n+1))`
-/

namespace A239306.P8605504339337094474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A211849 (n + 1) : ℚ) ^ (A305150 (n + 1) : ℤ))).toNat

end

end A239306.P8605504339337094474

/-!
# A239307: Semiprimes n = p*q such that reverse(n)=reverse(p)*reverse(q) where reverse(n) is also semiprime.

The programs for A239307, there is no canonical definition to state claims against.
-/

/-! ## A239307.P13127832571052614477

`∩[A161600(n+1), A264815(n+1)]`
-/

namespace A239307.P13127832571052614477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P13127832571052614477

/-! ## A239307.P15227671499489671072

`∩[A257842(n+1), A264815(n+1)]`
-/

namespace A239307.P15227671499489671072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P15227671499489671072

/-! ## A239307.P6041218590856654198

`∩[A085751(n+1), A161600(n+1)]`
-/

namespace A239307.P6041218590856654198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P6041218590856654198

/-! ## A239307.P12036157366128493036

`∩[A085751(n+1), A257842(n+1)]`
-/

namespace A239307.P12036157366128493036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P12036157366128493036

/-! ## A239307.P5998223303832639104

`∩[A072227(n+1), A085751(n+1)]`
-/

namespace A239307.P5998223303832639104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P5998223303832639104

/-! ## A239307.P7330721588102017553

`∩[A085751(n+1), A161597(n+1)]`
-/

namespace A239307.P7330721588102017553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P7330721588102017553

/-! ## A239307.P4072172912642689179

`∩[A072227(n+1), A264815(n+1)]`
-/

namespace A239307.P4072172912642689179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P4072172912642689179

/-! ## A239307.P3729800286797436115

`∩[A161597(n+1), A264815(n+1)]`
-/

namespace A239307.P3729800286797436115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P3729800286797436115

/-! ## A239307.P2138617406593366863

`∩[A062895(n+1), A257842(n+1)]`
-/

namespace A239307.P2138617406593366863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P2138617406593366863

/-! ## A239307.P12599797476418529179

`∩[A085869(n+1), A257842(n+1)]`
-/

namespace A239307.P12599797476418529179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239307.P12599797476418529179

/-!
# A239308: Size of smallest set S of integers such that {0,1,2,...,n} is a subset of S-S, where S-S={abs(i-j) | i,j in S}.

The programs for A239308, there is no canonical definition to state claims against.
-/

/-! ## A239308.P17784709227956563089

`round(sqrt(∑[val(n+2, 2)+2]-1))`
-/

namespace A239308.P17784709227956563089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℝ))

end

end A239308.P17784709227956563089

/-! ## A239308.P1736665287197518068

`ceil(sqrt(∑[∑{e}[n+1, #]%4+1]))`
-/

namespace A239308.P1736665287197518068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A239308.P1736665287197518068

/-! ## A239308.P1330696789343660932

`round(log(round(3^sqrt(sqrt(2*n+1))))²)`
-/

namespace A239308.P1330696789343660932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (SequenceMachineLib.roundAway ((3 : ℝ) ^ (Real.sqrt (Real.sqrt (2 * n + 1 : ℝ)))) : ℝ) ^ 2)

end

end A239308.P1330696789343660932

/-! ## A239308.P6546443423543839560

`∑[char[∑[A367588(n)]]]`
-/

namespace A239308.P6546443423543839560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239308.P6546443423543839560

/-! ## A239308.P16822138185864765870

`∑[char[∑[A304183(n+1)]]]`
-/

namespace A239308.P16822138185864765870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239308.P16822138185864765870

/-!
# A239310: Numbers of the form A001700(n)*k, n>=1, k>=2.

The programs for A239310, there is no canonical definition to state claims against.
-/

/-! ## A239310.P7396999801147469410

`∪[3*(n+2), 10*(n+2)]`
-/

namespace A239310.P7396999801147469410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A239310.P7396999801147469410

/-! ## A239310.P14451175131077404778

`lt[A052905(n), A049988(n)²]`
-/

namespace A239310.P14451175131077404778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P14451175131077404778

/-! ## A239310.P6595590092175024336

`lt[A000217(n+3), A049988(n)²]`
-/

namespace A239310.P6595590092175024336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P6595590092175024336

/-! ## A239310.P18318595841976773722

`lt[sqrt(A135405(n+2)), A049988(n)]`
-/

namespace A239310.P18318595841976773722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135405 (n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A239310.P18318595841976773722

/-! ## A239310.P4736873809939430161

`lt[A261878(n+4), A049988(n)²]`
-/

namespace A239310.P4736873809939430161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261878 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P4736873809939430161

/-! ## A239310.P2309283053782528836

`lt[A000005(2*(n+3)+1), A294334(n)]`
-/

namespace A239310.P2309283053782528836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 3) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P2309283053782528836

/-! ## A239310.P3770230338320644676

`lt[A054110(n), A029778(A294334(n))]`
-/

namespace A239310.P3770230338320644676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A294334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P3770230338320644676

/-! ## A239310.P11398362749160624158

`lt[A094441(n), A029778(A294334(n))]`
-/

namespace A239310.P11398362749160624158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029778 (A294334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P11398362749160624158

/-! ## A239310.P15724100586893822468

`lt[A001222(A294294(n+5)), A294334(n)]`
-/

namespace A239310.P15724100586893822468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A294294 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P15724100586893822468

/-! ## A239310.P12345281116239497442

`lt[A052938(2*(n+1)), A184117(A049988(n))]`
-/

namespace A239310.P12345281116239497442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (A049988 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239310.P12345281116239497442

/-!
# A239311: a(n) = floor(((1+sqrt(n))/2)^n).

The programs for A239311, the canonical program `A239311.P2445835496130847582` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239311 has offset 0).

The definition of A239311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((1+sqrt(n))/2)^n)` (program `A239311.P2445835496130847582`, by `A239311.P2445835496130847582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239311.P2445835496130847582

`floor(((1+sqrt(n))/2)^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239311

/-- `floor(((1+sqrt(n))/2)^n)` -/
def P2445835496130847582.Spec : Prop :=
  ∀ n, P2445835496130847582.a n = A239311 n

theorem P2445835496130847582.correct : P2445835496130847582.Spec := by
  intro n
  simp only [A239311]

end A239311

/-! ## A239311.P14279942957035167687

`ceil((A086645(n)+round((sqrt(n)+1)^n))/2^n)-1`
-/

namespace A239311.P14279942957035167687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086645 n + SequenceMachineLib.roundAway ((Real.sqrt (n : ℝ) + 1) ^ n) : ℚ) / (2 ^ n : ℚ)⌉ - 1

end

end A239311.P14279942957035167687

namespace A239311

/-- `ceil((A086645(n)+round((sqrt(n)+1)^n))/2^n)-1` -/
def P14279942957035167687.Spec : Prop :=
  ∀ n, P14279942957035167687.a n = A239311 n

end A239311

/-! ## A239311.P4531801794878617914

`round(sqrt(A318892(n!)))`
-/

namespace A239311.P4531801794878617914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A318892 (Nat.factorial n) : ℝ))

end

end A239311.P4531801794878617914

namespace A239311

/-- `round(sqrt(A318892(n!)))` -/
def P4531801794878617914.Spec : Prop :=
  ∀ n, P4531801794878617914.a n = A239311 n

end A239311

/-! ## A239311.P13519989146713902846

`∏{e}[2^n, A321994(#)]+Δ[A052325(n+1)]`
-/

namespace A239311.P13519989146713902846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A321994 (Nat.factorization (f1 n) p) + (f2 (n + 1) - f2 n)

end

end A239311.P13519989146713902846

namespace A239311

/-- `∏{e}[2^n, A321994(#)]+Δ[A052325(n+1)]` -/
def P13519989146713902846.Spec : Prop :=
  ∀ n, P13519989146713902846.a n = A239311 n

end A239311

/-! ## A239311.P13049492356198554467

`A321994(C(n, n²)+n)+Δ[A052325(n+1)]`
-/

namespace A239311.P13049492356198554467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (Nat.choose n (n ^ 2) + n) + (f1 (n + 1) - f1 n)

end

end A239311.P13049492356198554467

namespace A239311

/-- `A321994(C(n, n²)+n)+Δ[A052325(n+1)]` -/
def P13049492356198554467.Spec : Prop :=
  ∀ n, P13049492356198554467.a n = A239311 n

end A239311

/-!
# A239312: Number of condensed integer partitions of n.

The programs for A239312, there is no canonical definition to state claims against.
-/

/-! ## A239312.P12822687489413110725

`A370806(n)+A000009(n)`
-/

namespace A239312.P12822687489413110725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370806 n + A000009 n

end

end A239312.P12822687489413110725

/-! ## A239312.P3044519708844790740

`A370803(n)+A370595(n)`
-/

namespace A239312.P3044519708844790740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370803 n + A370595 n

end

end A239312.P3044519708844790740

/-! ## A239312.P11951921516504055448

`A000041(n)-A370320(n)`
-/

namespace A239312.P11951921516504055448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A370320 n

end

end A239312.P11951921516504055448

/-! ## A239312.P5322345741576721743

`A213598(n)-A370320(n)`
-/

namespace A239312.P5322345741576721743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A370320 n

end

end A239312.P5322345741576721743

/-! ## A239312.P13078843961807332876

`∑[A002865(n)]-A370320(n)`
-/

namespace A239312.P13078843961807332876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A370320 n

end

end A239312.P13078843961807332876

/-!
# A239313: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the odd numbers interleaved with k-1 zeros, except the first column which lists 0 together with the nonnegative integers, and the first element of column k is in row k*(k+1)/2.

The programs for A239313, there is no canonical definition to state claims against.
-/

/-! ## A239313.P9440498054328288257

`A196020(n+1)%A065475(A262535(n+1))`
-/

namespace A239313.P9440498054328288257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) (A065475 (A262535 (n + 1)).toNat)

end

end A239313.P9440498054328288257

/-! ## A239313.P16636386916931139429

`A029923(n)%A000120(A003479(n))`
-/

namespace A239313.P16636386916931139429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029923 n) (A000120 (A003479 n).toNat)

end

end A239313.P16636386916931139429

/-!
# A239314: Maximum of the partition function on the set of all partitions of n minus the number of partitions of n.

The programs for A239314, there is no canonical definition to state claims against.
-/

/-! ## A239314.P4488639744294899069

`A239054(n+1)-A000041(n+1)`
-/

namespace A239314.P4488639744294899069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239054 (n + 1) - A000041 (n + 1)

end

end A239314.P4488639744294899069

/-! ## A239314.P8005000010631178036

`A239054(n+1)-∑[A187219(n+1)]`
-/

namespace A239314.P8005000010631178036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239054 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239314.P8005000010631178036

/-! ## A239314.P17894114549312979978

`A239054(n+1)-record[A195825(n)]`
-/

namespace A239314.P17894114549312979978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239054 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239314.P17894114549312979978

/-!
# A239315: Array read by antidiagonals: denominators of the core of the classical Bernoulli numbers.

The programs for A239315, there is no canonical definition to state claims against.
-/

/-! ## A239315.P9480133809068347381

`A085738(lt[A108917(n), A154983(n)])`
-/

namespace A239315.P9480133809068347381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239315.P9480133809068347381

/-! ## A239315.P15663582196127490819

`A085738(lt[A323275(2*n+5), A208510(n+1)])`
-/

namespace A239315.P15663582196127490819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323275 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239315.P15663582196127490819

/-! ## A239315.P10743563900207186292

`A168426(eq[0, A103451(n)])`
-/

namespace A239315.P10743563900207186292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239315.P10743563900207186292

/-! ## A239315.P11785842818186265177

`A168426(eq[0, A103452(n)])`
-/

namespace A239315.P11785842818186265177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239315.P11785842818186265177

/-! ## A239315.P6263593326242563045

`A168426(eq[0, A145677(n)])`
-/

namespace A239315.P6263593326242563045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239315.P6263593326242563045

/-!
# A239316: Index of the first occurrence of a string of exactly n consecutive odd digits in the decimal expansion of Pi.

The programs for A239316, there is no canonical definition to state claims against.
-/

/-! ## A239316.P2495200021898590981

`A284829(a(n-1)+1)` with `a(0)=18, a(1)=1, a(2)=4`
-/

namespace A239316.P2495200021898590981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 1, 4] fun n a =>
  A284829 (a (n - 1) + 1).toNat

end

end A239316.P2495200021898590981

/-!
# A239319: Irregular triangular array: t(n,k) = number of times that the k-th condensed partition (in Mathematica order) of n occurs in the list of all the condensed partitions of n.

The programs for A239319, there is no canonical definition to state claims against.
-/

/-! ## A239319.P4102414603060054571

`A193330(A323237(n+1)+A000537(n))`
-/

namespace A239319.P4102414603060054571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A323237 (n + 1) + A000537 n).toNat

end

end A239319.P4102414603060054571

/-! ## A239319.P17267057093255848163

`A138060(A321710(n+1))`
-/

namespace A239319.P17267057093255848163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138060 (A321710 (n + 1)).toNat

end

end A239319.P17267057093255848163

/-! ## A239319.P12666021956716576697

`A001222(A276838(n)+A001462(3*n+1))`
-/

namespace A239319.P12666021956716576697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276838 n + A001462 (3 * n + 1)).toNat

end

end A239319.P12666021956716576697

/-!
# A239320: Ternary happy numbers.

The programs for A239320, the canonical program `A239320.P15770930766220237267` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239320 has offset 1).

The definition of A239320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239320.P15770930766220237267

`eq[1, A006287(A006287(A006287(n)))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A239320

/-- `eq[1, A006287(A006287(A006287(n)))]` -/
def P15770930766220237267.Spec : Prop :=
  ∀ n, (P15770930766220237267.a n : ℤ) = A239320 (n + 1)

theorem P15770930766220237267.correct : P15770930766220237267.Spec := by
  intro n
  simp only [A239320, Nat.add_sub_cancel]

end A239320

/-! ## A239320.P4189027158770908373

`lt[A059841(n), A189718(A006287(n))]`
-/

namespace A239320.P4189027158770908373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (A006287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239320.P4189027158770908373

namespace A239320

/-- `lt[A059841(n), A189718(A006287(n))]` -/
def P4189027158770908373.Spec : Prop :=
  ∀ n, (P4189027158770908373.a n : ℤ) = A239320 (n + 1)

end A239320

/-! ## A239320.P13948938791890952156

`eq[n%2, A292436(A206424(n))]`
-/

namespace A239320.P13948938791890952156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292436 (A206424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239320.P13948938791890952156

namespace A239320

/-- `eq[n%2, A292436(A206424(n))]` -/
def P13948938791890952156.Spec : Prop :=
  ∀ n, (P13948938791890952156.a n : ℤ) = A239320 (n + 1)

end A239320

/-! ## A239320.P14076165550965470453

`eq[A000035(n), A292436(A206424(n))]`
-/

namespace A239320.P14076165550965470453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292436 (A206424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239320.P14076165550965470453

namespace A239320

/-- `eq[A000035(n), A292436(A206424(n))]` -/
def P14076165550965470453.Spec : Prop :=
  ∀ n, (P14076165550965470453.a n : ℤ) = A239320 (n + 1)

end A239320

/-! ## A239320.P14106383229201112055

`lt[A292436(A206424(n))+A033999(n), 1]`
-/

namespace A239320.P14106383229201112055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292436 (A206424 n).toNat + A033999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239320.P14106383229201112055

namespace A239320

/-- `lt[A292436(A206424(n))+A033999(n), 1]` -/
def P14106383229201112055.Spec : Prop :=
  ∀ n, (P14106383229201112055.a n : ℤ) = A239320 (n + 1)

end A239320

/-! ## A239320.P1180432617519648223

`eq[A292436(A206424(n))+1, A020639(n+1)]`
-/

namespace A239320.P1180432617519648223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292436 (A206424 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239320.P1180432617519648223

namespace A239320

/-- `eq[A292436(A206424(n))+1, A020639(n+1)]` -/
def P1180432617519648223.Spec : Prop :=
  ∀ n, (P1180432617519648223.a n : ℤ) = A239320 (n + 1)

end A239320

/-!
# A239321: Numbers n such that n - k! is never prime; or A175940(n) = 0.

The programs for A239321, there is no canonical definition to state claims against.
-/

/-! ## A239321.P14209146005754971900

`eq[0, A241424(n+1)]+1`
-/

namespace A239321.P14209146005754971900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239321.P14209146005754971900

/-! ## A239321.P891314108138333098

`eq[1, a(A245715(n))-1]` with `a(0)=2`
-/

namespace A239321.P891314108138333098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A245715 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239321.P891314108138333098

/-! ## A239321.P13763719831741140843

`eq[1, A175940(n+1)+1]+1`
-/

namespace A239321.P13763719831741140843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175940 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239321.P13763719831741140843

/-! ## A239321.P7954321757118646137

`eq[1, A245715(n+1)+1]+1`
-/

namespace A239321.P7954321757118646137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239321.P7954321757118646137

/-! ## A239321.P1289406606686627379

`record[n+1-A018252(n+1)*A245715(n+1)]`
-/

namespace A239321.P1289406606686627379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A018252 (n + 1) * A245715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239321.P1289406606686627379

/-! ## A239321.P7562834281058813505

`eq[A000007(n), A175940(A000007(n)+n)]`
-/

namespace A239321.P7562834281058813505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175940 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239321.P7562834281058813505

/-!
# A239322: Interleave (-1)^n*(A000182(n+1) - A000364(n)), -A028296(n+1).

The programs for A239322, there is no canonical definition to state claims against.
-/

/-! ## A239322.P3552729557792801179

`Δ[A163982(n)]-A155585(n)`
-/

namespace A239322.P3552729557792801179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155585 n

end

end A239322.P3552729557792801179

/-! ## A239322.P5366372484199011767

`Δ[A342161(n)]-A155585(n)`
-/

namespace A239322.P5366372484199011767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155585 n

end

end A239322.P5366372484199011767

/-! ## A239322.P3158894679175232826

`A163982(n+1)+A122045(n)`
-/

namespace A239322.P3158894679175232826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163982 (n + 1) + A122045 n

end

end A239322.P3158894679175232826

/-! ## A239322.P3695811741972927117

`A240560(n)-A122045(n+1)`
-/

namespace A239322.P3695811741972927117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240560 n - A122045 (n + 1)

end

end A239322.P3695811741972927117

/-! ## A239322.P3907296183128274764

`A241209(n)-A155585(n+1)`
-/

namespace A239322.P3907296183128274764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241209 n - A155585 (n + 1)

end

end A239322.P3907296183128274764

/-!
# A239323: Semiprimes of the form (2^n + 1)*(2^n - n + 1).

The programs for A239323, there is no canonical definition to state claims against.
-/

/-! ## A239323.P2376757638827602032

`(A038081(n)+1)*A004249(n)`
-/

namespace A239323.P2376757638827602032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038081 n + 1) * A004249 n

end

end A239323.P2376757638827602032

/-!
# A239324: Partial sums of A090431.

The programs for A239324, the canonical program `A239324.P18438988059213314958` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239324 has offset 0).

The definition of A239324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239324.P18438988059213314958

`A090431(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239324

/-- `A090431(n)+a(n-1)` -/
def P18438988059213314958.Spec : Prop :=
  ∀ n, P18438988059213314958.a n = A239324 n

theorem P18438988059213314958.correct : P18438988059213314958.Spec := by
  intro n
  simp only [A239324]

end A239324

/-! ## A239324.P887968187536963398

`A037123(n)-A051351(n)`
-/

namespace A239324.P887968187536963398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A051351 n

end

end A239324.P887968187536963398

namespace A239324

/-- `A037123(n)-A051351(n)` -/
def P887968187536963398.Spec : Prop :=
  ∀ n, P887968187536963398.a n = A239324 n

end A239324

/-! ## A239324.P14641537756068245618

`∑[A090431(A028310(n))]+1`
-/

namespace A239324.P14641537756068245618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A239324.P14641537756068245618

namespace A239324

/-- `∑[A090431(A028310(n))]+1` -/
def P14641537756068245618.Spec : Prop :=
  ∀ n, P14641537756068245618.a n = A239324 n

end A239324

/-! ## A239324.P7463675712155724218

`∑[A007953(n)]-A051351(n)`
-/

namespace A239324.P7463675712155724218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051351 n

end

end A239324.P7463675712155724218

namespace A239324

/-- `∑[A007953(n)]-A051351(n)` -/
def P7463675712155724218.Spec : Prop :=
  ∀ n, P7463675712155724218.a n = A239324 n

end A239324

/-! ## A239324.P11265672351824826394

`∑[A062028(n)-n]-A051351(n)`
-/

namespace A239324.P11265672351824826394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051351 n

end

end A239324.P11265672351824826394

namespace A239324

/-- `∑[A062028(n)-n]-A051351(n)` -/
def P11265672351824826394.Spec : Prop :=
  ∀ n, P11265672351824826394.a n = A239324 n

end A239324

/-! ## A239324.P8310500522510131347

`∑[A090431(n+1)]-A090431(n+1)`
-/

namespace A239324.P8310500522510131347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090431 (n + 1)

end

end A239324.P8310500522510131347

namespace A239324

/-- `∑[A090431(n+1)]-A090431(n+1)` -/
def P8310500522510131347.Spec : Prop :=
  ∀ n, P8310500522510131347.a n = A239324 n

end A239324

/-! ## A239324.P13993411989739027192

`A007605(n+1)+∑[A007953(n)-A007605(n+1)]`
-/

namespace A239324.P13993411989739027192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239324.P13993411989739027192

namespace A239324

/-- `A007605(n+1)+∑[A007953(n)-A007605(n+1)]` -/
def P13993411989739027192.Spec : Prop :=
  ∀ n, P13993411989739027192.a n = A239324 n

end A239324

/-! ## A239324.P9169027616137863292

`A037123(n)-A067112(A068670(n))`
-/

namespace A239324.P9169027616137863292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A067112 (A068670 n).toNat

end

end A239324.P9169027616137863292

namespace A239324

/-- `A037123(n)-A067112(A068670(n))` -/
def P9169027616137863292.Spec : Prop :=
  ∀ n, P9169027616137863292.a n = A239324 n

end A239324

/-! ## A239324.P13592603429466028971

`∑[A007953(n)-A118503(A008578(n+1))]`
-/

namespace A239324.P13592603429466028971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A118503 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239324.P13592603429466028971

namespace A239324

/-- `∑[A007953(n)-A118503(A008578(n+1))]` -/
def P13592603429466028971.Spec : Prop :=
  ∀ n, P13592603429466028971.a n = A239324 n

end A239324

/-! ## A239324.P10950752385003004084

`∑[A007953(n)-A007953(A182986(n+1))]`
-/

namespace A239324.P10950752385003004084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A007953 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239324.P10950752385003004084

namespace A239324

/-- `∑[A007953(n)-A007953(A182986(n+1))]` -/
def P10950752385003004084.Spec : Prop :=
  ∀ n, P10950752385003004084.a n = A239324 n

end A239324

/-!
# A239325: a(n) = 6*n^2 + 8*n + 1.

The programs for A239325, the canonical program `A239325.P6773887657320007265` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239325 has offset 0).

The definition of A239325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+8*n+1` (program `A239325.P6773887657320007265`, by `A239325.P6773887657320007265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239325.P6773887657320007265

`6*n²+8*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239325

/-- `6*n²+8*n+1` -/
def P6773887657320007265.Spec : Prop :=
  ∀ n, (P6773887657320007265.a n : ℤ) = A239325 n

theorem P6773887657320007265.correct : P6773887657320007265.Spec := by
  intro n
  simp only [A239325]

end A239325

/-! ## A239325.P5914073584159815717

`(A069133(n+1)+A100536(n+1)-A000290(n))/2`
-/

namespace A239325.P5914073584159815717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069133 (n + 1) + A100536 (n + 1) - A000290 n : ℚ) / 2

end

end A239325.P5914073584159815717

namespace A239325

/-- `(A069133(n+1)+A100536(n+1)-A000290(n))/2` -/
def P5914073584159815717.Spec : Prop :=
  ∀ n, P5914073584159815717.a n = (A239325 n : ℚ)

end A239325

/-! ## A239325.P8424083847627164855

`∑[a(n-1)+12]` with `a(0)=1, a(1)=14`
-/

namespace A239325.P8424083847627164855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239325.P8424083847627164855

namespace A239325

/-- `∑[a(n-1)+12]` -/
def P8424083847627164855.Spec : Prop :=
  ∀ n, (P8424083847627164855.a n : ℤ) = A239325 n

end A239325

/-! ## A239325.P17267060806305025827

`abs(1-∑[or(2, 12*n)])`
-/

namespace A239325.P17267060806305025827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A239325.P17267060806305025827

namespace A239325

/-- `abs(1-∑[or(2, 12*n)])` -/
def P17267060806305025827.Spec : Prop :=
  ∀ n, P17267060806305025827.a n = A239325 n

end A239325

/-! ## A239325.P56132833911971842

`(2*(a(n-1)+12*n)+4)/2` with `a(0)=1`
-/

namespace A239325.P56132833911971842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (a (n - 1) + (12 * n : ℚ)) + 4) / 2

end

end A239325.P56132833911971842

namespace A239325

/-- `(2*(a(n-1)+12*n)+4)/2` -/
def P56132833911971842.Spec : Prop :=
  ∀ n, P56132833911971842.a n = (A239325 n : ℚ)

theorem P56132833911971842.correct : P56132833911971842.Spec := by
  intro n
  induction n with
  | zero => simp [A239325, A239325.P56132833911971842.a, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A239325, Nat.add_sub_cancel, A239325.P56132833911971842.a, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A239325

/-! ## A239325.P6092277365535568579

`abs(3*lcm(2*n+1, n+1)-(n+2))`
-/

namespace A239325.P6092277365535568579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * Nat.lcm (2 * n + 1) (n + 1) : ℤ) - (n + 2 : ℤ)|

end

end A239325.P6092277365535568579

namespace A239325

/-- `abs(3*lcm(2*n+1, n+1)-(n+2))` -/
def P6092277365535568579.Spec : Prop :=
  ∀ n, P6092277365535568579.a n = A239325 n

end A239325

/-! ## A239325.P12705739854889841528

`(3*sinh(log(2*n+1))+1)*(2*n+1)`
-/

namespace A239325.P12705739854889841528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * Real.sinh (Real.log (2 * n + 1 : ℝ)) + 1) * (2 * n + 1 : ℝ)

end

end A239325.P12705739854889841528

namespace A239325

/-- `(3*sinh(log(2*n+1))+1)*(2*n+1)` -/
def P12705739854889841528.Spec : Prop :=
  ∀ n, P12705739854889841528.a n = (A239325 n : ℝ)

end A239325

/-! ## A239325.P10510381468911971119

`Δ[n*(A014105(n)-2)]`
-/

namespace A239325.P10510381468911971119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014105 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239325.P10510381468911971119

namespace A239325

/-- `Δ[n*(A014105(n)-2)]` -/
def P10510381468911971119.Spec : Prop :=
  ∀ n, P10510381468911971119.a n = A239325 n

end A239325

/-! ## A239325.P13283709931354520720

`(A016921(n)+n/(n+1))*(n+1)`
-/

namespace A239325.P13283709931354520720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016921 n : ℚ) + (n : ℚ) / (n + 1 : ℚ)) * (n + 1 : ℚ)

end

end A239325.P13283709931354520720

namespace A239325

/-- `(A016921(n)+n/(n+1))*(n+1)` -/
def P13283709931354520720.Spec : Prop :=
  ∀ n, P13283709931354520720.a n = (A239325 n : ℚ)

end A239325

/-! ## A239325.P10873510384365049229

`A016958(n)%A126587(n+1)`
-/

namespace A239325.P10873510384365049229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016958 n) (A126587 (n + 1))

end

end A239325.P10873510384365049229

namespace A239325

/-- `A016958(n)%A126587(n+1)` -/
def P10873510384365049229.Spec : Prop :=
  ∀ n, P10873510384365049229.a n = A239325 n

end A239325

/-! ## A239325.P6477632850980715286

`A158634(n+1)%A055437(n+1)`
-/

namespace A239325.P6477632850980715286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158634 (n + 1)) (A055437 (n + 1))

end

end A239325.P6477632850980715286

namespace A239325

/-- `A158634(n+1)%A055437(n+1)` -/
def P6477632850980715286.Spec : Prop :=
  ∀ n, P6477632850980715286.a n = A239325 n

end A239325

/-! ## A239325.P16930227585857956096

`A158658(n+1)%A154377(n+1)`
-/

namespace A239325.P16930227585857956096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158658 (n + 1)) (A154377 (n + 1))

end

end A239325.P16930227585857956096

namespace A239325

/-- `A158658(n+1)%A154377(n+1)` -/
def P16930227585857956096.Spec : Prop :=
  ∀ n, P16930227585857956096.a n = A239325 n

end A239325

/-! ## A239325.P11479996695203644893

`A158626(n+1)%A154517(n+1)`
-/

namespace A239325.P11479996695203644893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158626 (n + 1)) (A154517 (n + 1))

end

end A239325.P11479996695203644893

namespace A239325

/-- `A158626(n+1)%A154517(n+1)` -/
def P11479996695203644893.Spec : Prop :=
  ∀ n, P11479996695203644893.a n = A239325 n

end A239325

/-! ## A239325.P9357081021384758687

`A158736(n+1)%A157474(n+1)`
-/

namespace A239325.P9357081021384758687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158736 (n + 1)) (A157474 (n + 1))

end

end A239325.P9357081021384758687

namespace A239325

/-- `A158736(n+1)%A157474(n+1)` -/
def P9357081021384758687.Spec : Prop :=
  ∀ n, P9357081021384758687.a n = A239325 n

end A239325

/-! ## A239325.P14069406583251667315

`A158596(n+1)%A158056(n+1)`
-/

namespace A239325.P14069406583251667315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158596 (n + 1)) (A158056 (n + 1))

end

end A239325.P14069406583251667315

namespace A239325

/-- `A158596(n+1)%A158056(n+1)` -/
def P14069406583251667315.Spec : Prop :=
  ∀ n, P14069406583251667315.a n = A239325 n

end A239325

/-! ## A239325.P1741918458716620808

`A158771(n+1)%A158064(n+1)`
-/

namespace A239325.P1741918458716620808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158771 (n + 1)) (A158064 (n + 1))

end

end A239325.P1741918458716620808

namespace A239325

/-- `A158771(n+1)%A158064(n+1)` -/
def P1741918458716620808.Spec : Prop :=
  ∀ n, P1741918458716620808.a n = A239325 n

end A239325

/-! ## A239325.P18337522857773177046

`Δ[A099721(n)-Δ[n²]]`
-/

namespace A239325.P18337522857773177046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239325.P18337522857773177046

namespace A239325

/-- `Δ[A099721(n)-Δ[n²]]` -/
def P18337522857773177046.Spec : Prop :=
  ∀ n, P18337522857773177046.a n = A239325 n

end A239325

/-!
# A239326: Numbers k such that k^2 +/ - (k-1) and (k-1)*k^2 +/ - 1 are all primes.

The programs for A239326, there is no canonical definition to state claims against.
-/

/-! ## A239326.P12659328976972408288

`∩[A111503(n+1), A137446(n+1)]`
-/

namespace A239326.P12659328976972408288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239326.P12659328976972408288

/-! ## A239326.P11832728117447585755

`∩[A239115(n+1), A239135(n+1)]`
-/

namespace A239326.P11832728117447585755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239326.P11832728117447585755

/-! ## A239326.P11087401445316088443

`A276555(∑[2^A259630(n+1)])+A001523(n+1)`
-/

namespace A239326.P11087401445316088443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A259630 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276555 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A001523 (n + 1)

end

end A239326.P11087401445316088443

/-!
# A239328: Number of primes p < n with pi(p*n) - pi((p-1)n) prime, where pi(x) denotes the number of primes not exceeding x.

The programs for A239328, there is no canonical definition to state claims against.
-/

/-! ## A239328.P8285088279615425899

`A280522(lcm(A068912(n), A274391(n)))`
-/

namespace A239328.P8285088279615425899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280522 (Int.lcm (A068912 n) (A274391 n))

end

end A239328.P8285088279615425899

/-!
# A239329: The number of NE partitions of n (see Comments).

The programs for A239329, there is no canonical definition to state claims against.
-/

/-! ## A239329.P1694693247690506790

`A238495(n+1)+A055641(A003945(n))`
-/

namespace A239329.P1694693247690506790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238495 (n + 1) + A055641 (A003945 n).toNat

end

end A239329.P1694693247690506790

/-! ## A239329.P16110753808725496610

`or(A151755(A000096(n)), A238495(n+1))`
-/

namespace A239329.P16110753808725496610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151755 (A000096 n).toNat) (A238495 (n + 1))

end

end A239329.P16110753808725496610

/-! ## A239329.P3003782568129242424

`or(A005171(A190360(n)), A238495(n+1))`
-/

namespace A239329.P3003782568129242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005171 (A190360 n).toNat) (A238495 (n + 1))

end

end A239329.P3003782568129242424

/-! ## A239329.P4023293702370114798

`or(A238469(A282106(n)), A238495(n+1))`
-/

namespace A239329.P4023293702370114798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238469 (A282106 n).toNat) (A238495 (n + 1))

end

end A239329.P4023293702370114798

/-! ## A239329.P9343402060835081985

`or(A178798(A341914(n)), A238495(n+1))`
-/

namespace A239329.P9343402060835081985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178798 (A341914 (n + 55)).toNat) (A238495 (n + 1))

end

end A239329.P9343402060835081985

/-!
# A239331: Square array, read by antidiagonals: column k has g.f. (1+(k-1)*x)^2/(1-x)^3.

The programs for A239331, there is no canonical definition to state claims against.
-/

/-! ## A239331.P12431609199375420678

`A080853(n)+A004247(n)`
-/

namespace A239331.P12431609199375420678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080853 n + A004247 n

end

end A239331.P12431609199375420678

/-! ## A239331.P9914721618407750713

`A080853(n)+log2(A117401(n))`
-/

namespace A239331.P9914721618407750713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080853 n : ℝ) + Real.logb 2 (A117401 n : ℝ)

end

end A239331.P9914721618407750713

/-! ## A239331.P12141631664626357174

`A077028(n)+A080853(n)-1`
-/

namespace A239331.P12141631664626357174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A080853 n - 1)

end

end A239331.P12141631664626357174

/-! ## A239331.P4535836446727077920

`A080853(n)+1-A176270(n)`
-/

namespace A239331.P4535836446727077920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080853 n + (1 - A176270 n)

end

end A239331.P4535836446727077920

/-! ## A239331.P563867002149146092

`A004247(n)+(C(comp[C(n, 2)]-n, 2)-(n+1))*A139600(n)+1`
-/

namespace A239331.P563867002149146092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A139600 n + 1)

end

end A239331.P563867002149146092

/-! ## A239331.P2116014531811542587

`A080853(n)+A002837(A077028(n))`
-/

namespace A239331.P2116014531811542587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080853 n + A002837 (A077028 n).toNat

end

end A239331.P2116014531811542587

/-! ## A239331.P11207964723504184232

`A139600(A285192(n))+A080853(n)`
-/

namespace A239331.P11207964723504184232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A285192 n).toNat + A080853 n

end

end A239331.P11207964723504184232

/-! ## A239331.P577468776239825014

`A000463(A082110(n))-A062707(n)`
-/

namespace A239331.P577468776239825014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A082110 n).toNat - A062707 n

end

end A239331.P577468776239825014

/-! ## A239331.P9309829942423635042

`A034856(A077028(n))-A062707(n)`
-/

namespace A239331.P9309829942423635042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A077028 n).toNat - A062707 n

end

end A239331.P9309829942423635042

/-! ## A239331.P15738332225315986590

`A000096(A077028(n))-A101321(n)`
-/

namespace A239331.P15738332225315986590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A077028 n).toNat - A101321 n

end

end A239331.P15738332225315986590

/-!
# A239332: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it, modulo 4.

The programs for A239332, there is no canonical definition to state claims against.
-/

/-! ## A239332.P4717704175583570693

`A239340((n+1)²+n²)`
-/

namespace A239332.P4717704175583570693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 ((n + 1) ^ 2 + n ^ 2)

end

end A239332.P4717704175583570693

/-! ## A239332.P12109682123988039367

`record[gcd(A114327(n), A239340(n+1))]`
-/

namespace A239332.P12109682123988039367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A239340 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239332.P12109682123988039367

/-!
# A239333: Number of n X 1 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239333, the canonical program `A239333.P7440387068817124374` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239333 has offset 0).

The definition of A239333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239333.P7440387068817124374

`2*a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239333

/-- `2*a(n-1)+2*a(n-3)` -/
def P7440387068817124374.Spec : Prop :=
  ∀ n, (P7440387068817124374.a n : ℤ) = A239333 n

theorem P7440387068817124374.correct : P7440387068817124374.Spec := by
  intro n
  simp only [A239333]

end A239333

/-! ## A239333.P7160372446750456243

`2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A239333.P7160372446750456243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + a (n - 3))

end

end A239333.P7160372446750456243

namespace A239333

/-- `2*(a(n-1)+a(n-3))` -/
def P7160372446750456243.Spec : Prop :=
  ∀ n, (P7160372446750456243.a n : ℤ) = A239333 n

theorem P7160372446750456243.correct : P7160372446750456243.Spec := by
  intro n
  simp only [A239333, Nat.add_sub_cancel, A239333.P7160372446750456243.a, A239333.P7440387068817124374.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239333

/-! ## A239333.P6841784484524305721

`a(n-1)+a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A239333.P6841784484524305721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 1) + a (n - 3)))

end

end A239333.P6841784484524305721

namespace A239333

/-- `a(n-1)+a(n-3)+a(n-1)+a(n-3)` -/
def P6841784484524305721.Spec : Prop :=
  ∀ n, (P6841784484524305721.a n : ℤ) = A239333 n

theorem P6841784484524305721.correct : P6841784484524305721.Spec := by
  intro n
  simp only [A239333, Nat.add_sub_cancel, A239333.P6841784484524305721.a, A239333.P7440387068817124374.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239333

/-! ## A239333.P9152465695834205854

`A239040(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A239333.P9152465695834205854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A239040 (n - 1) + a (n - 1)

end

end A239333.P9152465695834205854

namespace A239333

/-- `A239040(n-1)+a(n-1)` -/
def P9152465695834205854.Spec : Prop :=
  ∀ n, P9152465695834205854.a n = A239333 n

end A239333

/-! ## A239333.P14041079879594890230

`A052912(n+1)/2`
-/

namespace A239333.P14041079879594890230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052912 (n + 1) : ℚ) / 2

end

end A239333.P14041079879594890230

namespace A239333

/-- `A052912(n+1)/2` -/
def P14041079879594890230.Spec : Prop :=
  ∀ n, P14041079879594890230.a n = (A239333 n : ℚ)

end A239333

/-! ## A239333.P12657333057809900418

`(∑[A077999(n+1)]+1)/2`
-/

namespace A239333.P12657333057809900418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A239333.P12657333057809900418

namespace A239333

/-- `(∑[A077999(n+1)]+1)/2` -/
def P12657333057809900418.Spec : Prop :=
  ∀ n, P12657333057809900418.a n = (A239333 n : ℚ)

end A239333

/-! ## A239333.P4791984550177332711

`Δ[A077851(n)/2]`
-/

namespace A239333.P4791984550177332711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077851 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239333.P4791984550177332711

namespace A239333

/-- `Δ[A077851(n)/2]` -/
def P4791984550177332711.Spec : Prop :=
  ∀ n, P4791984550177332711.a n = (A239333 n : ℚ)

end A239333

/-! ## A239333.P13510842134867867932

`Δ[∑[A052912(n)]/2]`
-/

namespace A239333.P13510842134867867932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052912 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239333.P13510842134867867932

namespace A239333

/-- `Δ[∑[A052912(n)]/2]` -/
def P13510842134867867932.Spec : Prop :=
  ∀ n, P13510842134867867932.a n = (A239333 n : ℚ)

end A239333

/-!
# A239334: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239334, there is no canonical definition to state claims against.
-/

/-! ## A239334.P8952794762097183956

`A239340(∑[n+1]+2)`
-/

namespace A239334.P8952794762097183956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239334.P8952794762097183956

/-! ## A239334.P12837813820783047068

`record[gcd(A002262(n), A239340(n+2))]`
-/

namespace A239334.P12837813820783047068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A239340 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239334.P12837813820783047068

/-! ## A239334.P4624965037821834610

`or(A000007(n), A239340(A000096(n)+3))`
-/

namespace A239334.P4624965037821834610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239340 (A000096 n + 3).toNat)

end

end A239334.P4624965037821834610

/-! ## A239334.P7477353379998513249

`or(A239340(A000096(n)+3), A293162(n))`
-/

namespace A239334.P7477353379998513249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239340 (A000096 n + 3).toNat) (A293162 n)

end

end A239334.P7477353379998513249

/-! ## A239334.P5613898770319672313

`record[A239340(A101881(n)+1)]`
-/

namespace A239334.P5613898770319672313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239334.P5613898770319672313

/-!
# A239335: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239335, there is no canonical definition to state claims against.
-/

/-! ## A239335.P16802888295362197036

`A239340(∑[n+2]+4)`
-/

namespace A239335.P16802888295362197036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239335.P16802888295362197036

/-! ## A239335.P18283972515103713735

`A239340(A167614(n+1))+A185284(n)`
-/

namespace A239335.P18283972515103713735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A167614 (n + 1)).toNat + A185284 n

end

end A239335.P18283972515103713735

/-! ## A239335.P10503658946033087911

`lcm(A020985(n), A239340(A167614(n+1)))`
-/

namespace A239335.P10503658946033087911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A239340 (A167614 (n + 1)).toNat)

end

end A239335.P10503658946033087911

/-! ## A239335.P4289056890259485052

`A239340(A167614(n+1))+A070205(n+1)`
-/

namespace A239335.P4289056890259485052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A167614 (n + 1)).toNat + A070205 (n + 1)

end

end A239335.P4289056890259485052

/-! ## A239335.P12945635904672959174

`A239340(A167614(n+1))%A189069(n+1)`
-/

namespace A239335.P12945635904672959174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239340 (A167614 (n + 1)).toNat) (A189069 (n + 1))

end

end A239335.P12945635904672959174

/-!
# A239336: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239336, there is no canonical definition to state claims against.
-/

/-! ## A239336.P8092676972439739110

`A239340(A374004(n+1))`
-/

namespace A239336.P8092676972439739110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A374004 (n + 1)).toNat

end

end A239336.P8092676972439739110

/-! ## A239336.P7021964191346645639

`A239340(A141214(n)+7)`
-/

namespace A239336.P7021964191346645639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A141214 n + 7).toNat

end

end A239336.P7021964191346645639

/-! ## A239336.P12713045435891763302

`A239340(A052905(n)+9)`
-/

namespace A239336.P12713045435891763302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A052905 n + 9).toNat

end

end A239336.P12713045435891763302

/-! ## A239336.P18015587719620159952

`A239340(A055999(n)+10)`
-/

namespace A239336.P18015587719620159952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A055999 n + 10).toNat

end

end A239336.P18015587719620159952

/-! ## A239336.P5736062274808898449

`A239340(A167614(n+2)+1)`
-/

namespace A239336.P5736062274808898449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A167614 (n + 2) + 1).toNat

end

end A239336.P5736062274808898449

/-!
# A239337: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239337, there is no canonical definition to state claims against.
-/

/-! ## A239337.P13726118966282260324

`A239340(A374005(n+1))`
-/

namespace A239337.P13726118966282260324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A374005 (n + 1)).toNat

end

end A239337.P13726118966282260324

/-! ## A239337.P2809905983285979552

`A239340(A155212(n)+13)`
-/

namespace A239337.P2809905983285979552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A155212 n + 13).toNat

end

end A239337.P2809905983285979552

/-! ## A239337.P685755749418967598

`A239340(eq[7, A066657(n)])`
-/

namespace A239337.P685755749418967598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239337.P685755749418967598

/-! ## A239337.P3469538053009908891

`A239340(eq[3, A152157(n)])`
-/

namespace A239337.P3469538053009908891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239337.P3469538053009908891

/-! ## A239337.P7620830745773824637

`A239340(eq[4, A193592(n)])`
-/

namespace A239337.P7620830745773824637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239337.P7620830745773824637

/-!
# A239338: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239338, there is no canonical definition to state claims against.
-/

/-! ## A239338.P32902669771611066

`A239340(A374007(n+1))`
-/

namespace A239338.P32902669771611066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A374007 (n + 1)).toNat

end

end A239338.P32902669771611066

/-! ## A239338.P13730204115568839473

`A239340(A052905(n+3))`
-/

namespace A239338.P13730204115568839473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A052905 (n + 3)).toNat

end

end A239338.P13730204115568839473

/-! ## A239338.P5566152864024640679

`A239340(eq[5, A193592(n)])`
-/

namespace A239338.P5566152864024640679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239338.P5566152864024640679

/-! ## A239338.P16510365689781093050

`A239340(eq[16, A057728(n+1)])`
-/

namespace A239338.P16510365689781093050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239338.P16510365689781093050

/-! ## A239338.P17980324463639543890

`A239340(Δ[Δ[A006504(n+1)]])`
-/

namespace A239338.P17980324463639543890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (f1 (n + 1) - f1 n).toNat

end

end A239338.P17980324463639543890

/-!
# A239339: Number of nX7 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it, modulo 4.

The programs for A239339, there is no canonical definition to state claims against.
-/

/-! ## A239339.P2728838352377696843

`A239340(A374008(n+1))`
-/

namespace A239339.P2728838352377696843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A374008 (n + 1)).toNat

end

end A239339.P2728838352377696843

/-! ## A239339.P15757242169299129234

`A239340(A055999(n+4))`
-/

namespace A239339.P15757242169299129234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239340 (A055999 (n + 4)).toNat

end

end A239339.P15757242169299129234

/-!
# A239341: Decimal expansion of 7 + 2021/3003.

The programs for A239341, the canonical program `A239341.P3933526387513793533` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239341 has offset 1).

The definition of A239341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239341.P3933526387513793533

`a(n-6)` with `a(0)=7, a(1)=6, a(2)=7, a(3)=2, a(4)=9, a(5)=9, a(6)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239341

/-- `a(n-6)` -/
def P3933526387513793533.Spec : Prop :=
  ∀ n, (P3933526387513793533.a n : ℤ) = A239341 (n + 1)

theorem P3933526387513793533.correct : P3933526387513793533.Spec := by
  intro n
  simp only [A239341, Nat.add_sub_cancel]

end A239341

/-!
# A239342: Number of 1's in all compositions of n into odd parts.

The programs for A239342, the canonical program `A239342.P4179228539437932597` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239342 has offset 0).

The definition of A239342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239342.P4179228539437932597

`a(n-1)+a(n-2)+A000045(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239342

/-- `a(n-1)+a(n-2)+A000045(n-2)` -/
def P4179228539437932597.Spec : Prop :=
  ∀ n, P4179228539437932597.a n = A239342 n

theorem P4179228539437932597.correct : P4179228539437932597.Spec := by
  intro n
  simp only [A239342]

end A239342

/-! ## A239342.P12137032190675732138

`A029907(n)-A029907(A289207(n))`
-/

namespace A239342.P12137032190675732138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A029907 (A289207 n).toNat

end

end A239342.P12137032190675732138

namespace A239342

/-- `A029907(n)-A029907(A289207(n))` -/
def P12137032190675732138.Spec : Prop :=
  ∀ n, P12137032190675732138.a n = A239342 n

end A239342

/-! ## A239342.P11604247735626913080

`A029907(n)-A029907(A233583(n+1)-2)`
-/

namespace A239342.P11604247735626913080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A029907 (A233583 (n + 1) - 2).toNat

end

end A239342.P11604247735626913080

namespace A239342

/-- `A029907(n)-A029907(A233583(n+1)-2)` -/
def P11604247735626913080.Spec : Prop :=
  ∀ n, P11604247735626913080.a n = A239342 n

end A239342

/-! ## A239342.P804275808275265217

`Δ[A010049(n+1)-A163733(n+1)]`
-/

namespace A239342.P804275808275265217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A163733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239342.P804275808275265217

namespace A239342

/-- `Δ[A010049(n+1)-A163733(n+1)]` -/
def P804275808275265217.Spec : Prop :=
  ∀ n, P804275808275265217.a n = A239342 n

end A239342

/-! ## A239342.P11998700711913049688

`A029907(n)-A271785(n)%A208354(n)`
-/

namespace A239342.P11998700711913049688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - Int.tmod (A271785 n) (A208354 n)

end

end A239342.P11998700711913049688

namespace A239342

/-- `A029907(n)-A271785(n)%A208354(n)` -/
def P11998700711913049688.Spec : Prop :=
  ∀ n, P11998700711913049688.a n = A239342 n

end A239342

/-! ## A239342.P13175772092561133136

`Δ[A023610(n)%A055244(n)]`
-/

namespace A239342.P13175772092561133136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023610 n) (A055244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239342.P13175772092561133136

namespace A239342

/-- `Δ[A023610(n)%A055244(n)]` -/
def P13175772092561133136.Spec : Prop :=
  ∀ n, P13175772092561133136.a n = A239342 n

end A239342

/-! ## A239342.P17737354349007425545

`Δ[Δ[A140998(∑[n]+2)]]`
-/

namespace A239342.P17737354349007425545
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140998 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239342.P17737354349007425545

namespace A239342

/-- `Δ[Δ[A140998(∑[n]+2)]]` -/
def P17737354349007425545.Spec : Prop :=
  ∀ n, P17737354349007425545.a n = A239342 n

end A239342

/-!
# A239345: Numbers n such that n^8+8 is prime.

The programs for A239345, there is no canonical definition to state claims against.
-/

/-! ## A239345.P14197864312241026016

`∩[A275913(n+1), A182632(n)]`
-/

namespace A239345.P14197864312241026016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239345.P14197864312241026016

/-!
# A239350: Superprimorials squared.

The programs for A239350, there is no canonical definition to state claims against.
-/

/-! ## A239350.P14801120927550147601

`∏[∏[eq[n, ∏{d}[n, #]]]²]`
-/

namespace A239350.P14801120927550147601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239350.P14801120927550147601

/-! ## A239350.P13536207219420044829

`A006939(n)²`
-/

namespace A239350.P13536207219420044829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 n ^ 2

end

end A239350.P13536207219420044829

/-! ## A239350.P17470782016970981373

`A332644(∑[n])²`
-/

namespace A239350.P17470782016970981373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332644 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A239350.P17470782016970981373

/-! ## A239350.P2855981418184809569

`∏[∏[A008578(n+1)²]]`
-/

namespace A239350.P2855981418184809569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239350.P2855981418184809569

/-! ## A239350.P8582461905741987942

`∏[∏[record[A006530(n+1)²]]]`
-/

namespace A239350.P8582461905741987942
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239350.P8582461905741987942

/-!
# A239352: van Heijst's upper bound on the number of squares inscribed by a real algebraic curve in R^2 of degree n, if the number is finite.

The programs for A239352, the canonical program `A239352.P8820931106045748250` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239352 has offset 0).

The definition of A239352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239352.P8820931106045748250

`(n^4-5*n²+4*n)/4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239352

/-- `(n^4-5*n²+4*n)/4` -/
def P8820931106045748250.Spec : Prop :=
  ∀ n, P8820931106045748250.a n = (A239352 n : ℚ)

end A239352

/-! ## A239352.P92364851365545457

`(∑[n]-2)*C(n, 2)`
-/

namespace A239352.P92364851365545457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * (Nat.choose n 2 : ℤ)

end

end A239352.P92364851365545457

namespace A239352

/-- `(∑[n]-2)*C(n, 2)` -/
def P92364851365545457.Spec : Prop :=
  ∀ n, P92364851365545457.a n = A239352 n

end A239352

/-! ## A239352.P1063325788325996902

`∑[n]²-A256857(n)`
-/

namespace A239352.P1063325788325996902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A256857 n

end

end A239352.P1063325788325996902

namespace A239352

/-- `∑[n]²-A256857(n)` -/
def P1063325788325996902.Spec : Prop :=
  ∀ n, P1063325788325996902.a n = A239352 n

end A239352

/-! ## A239352.P13054188229455219033

`A006011(n)+n-n²`
-/

namespace A239352.P13054188229455219033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A239352.P13054188229455219033

namespace A239352

/-- `A006011(n)+n-n²` -/
def P13054188229455219033.Spec : Prop :=
  ∀ n, P13054188229455219033.a n = A239352 n

end A239352

/-! ## A239352.P7775793402469576241

`A352405(n+1)-2*n²`
-/

namespace A239352.P7775793402469576241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) - (2 * n ^ 2 : ℤ)

end

end A239352.P7775793402469576241

namespace A239352

/-- `A352405(n+1)-2*n²` -/
def P7775793402469576241.Spec : Prop :=
  ∀ n, P7775793402469576241.a n = A239352 n

end A239352

/-! ## A239352.P1548820287087659959

`∑[n]²-A002411(n)-(n²-n)`
-/

namespace A239352.P1548820287087659959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A002411 n - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A239352.P1548820287087659959

namespace A239352

/-- `∑[n]²-A002411(n)-(n²-n)` -/
def P1548820287087659959.Spec : Prop :=
  ∀ n, P1548820287087659959.a n = A239352 n

end A239352

/-! ## A239352.P12777543864896792151

`A326278(n)+A117662(n)`
-/

namespace A239352.P12777543864896792151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 n + A117662 n

end

end A239352.P12777543864896792151

namespace A239352

/-- `A326278(n)+A117662(n)` -/
def P12777543864896792151.Spec : Prop :=
  ∀ n, P12777543864896792151.a n = A239352 n

end A239352

/-! ## A239352.P5544317191970526502

`A006528(n)-A000326(n)`
-/

namespace A239352.P5544317191970526502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A000326 n

end

end A239352.P5544317191970526502

namespace A239352

/-- `A006528(n)-A000326(n)` -/
def P5544317191970526502.Spec : Prop :=
  ∀ n, P5544317191970526502.a n = A239352 n

end A239352

/-! ## A239352.P15511905099887713800

`A066375(n+1)-A056107(n)`
-/

namespace A239352.P15511905099887713800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1) - A056107 n

end

end A239352.P15511905099887713800

namespace A239352

/-- `A066375(n+1)-A056107(n)` -/
def P15511905099887713800.Spec : Prop :=
  ∀ n, P15511905099887713800.a n = A239352 n

end A239352

/-! ## A239352.P165251806917688118

`A002415(n)+2*A117662(n)`
-/

namespace A239352.P165251806917688118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + 2 * A117662 n

end

end A239352.P165251806917688118

namespace A239352

/-- `A002415(n)+2*A117662(n)` -/
def P165251806917688118.Spec : Prop :=
  ∀ n, P165251806917688118.a n = A239352 n

end A239352

/-! ## A239352.P11828035707561089546

`2*A326278(n)-A002415(n)`
-/

namespace A239352.P11828035707561089546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326278 n - A002415 n

end

end A239352.P11828035707561089546

namespace A239352

/-- `2*A326278(n)-A002415(n)` -/
def P11828035707561089546.Spec : Prop :=
  ∀ n, P11828035707561089546.a n = A239352 n

end A239352

/-! ## A239352.P10241540638929075524

`A006011(n)+n-A000290(n)`
-/

namespace A239352.P10241540638929075524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + (n : ℤ) - A000290 n

end

end A239352.P10241540638929075524

namespace A239352

/-- `A006011(n)+n-A000290(n)` -/
def P10241540638929075524.Spec : Prop :=
  ∀ n, P10241540638929075524.a n = A239352 n

end A239352

/-! ## A239352.P13660145116989857040

`A112742(n)+n-A006008(n)`
-/

namespace A239352.P13660145116989857040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + ((n : ℤ) - A006008 n)

end

end A239352.P13660145116989857040

namespace A239352

/-- `A112742(n)+n-A006008(n)` -/
def P13660145116989857040.Spec : Prop :=
  ∀ n, P13660145116989857040.a n = A239352 n

end A239352

/-! ## A239352.P1398874238293267965

`A161680(n)²+A007531(n)/2`
-/

namespace A239352.P1398874238293267965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 n ^ 2 : ℚ) + (A007531 n : ℚ) / 2

end

end A239352.P1398874238293267965

namespace A239352

/-- `A161680(n)²+A007531(n)/2` -/
def P1398874238293267965.Spec : Prop :=
  ∀ n, P1398874238293267965.a n = (A239352 n : ℚ)

end A239352

/-! ## A239352.P14722019760165119140

`A060354(n)+A161680(n)²-n`
-/

namespace A239352.P14722019760165119140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + (A161680 n ^ 2 - (n : ℤ))

end

end A239352.P14722019760165119140

namespace A239352

/-- `A060354(n)+A161680(n)²-n` -/
def P14722019760165119140.Spec : Prop :=
  ∀ n, P14722019760165119140.a n = A239352 n

end A239352

/-! ## A239352.P17939229070524821175

`A117662(n)+A257055(n)-n²`
-/

namespace A239352.P17939229070524821175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + (A257055 n - (n ^ 2 : ℤ))

end

end A239352.P17939229070524821175

namespace A239352

/-- `A117662(n)+A257055(n)-n²` -/
def P17939229070524821175.Spec : Prop :=
  ∀ n, P17939229070524821175.a n = A239352 n

end A239352

/-! ## A239352.P7004637042846040074

`n-A168077(n)*A229526(n+1)`
-/

namespace A239352.P7004637042846040074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168077 n * A229526 (n + 1)

end

end A239352.P7004637042846040074

namespace A239352

/-- `n-A168077(n)*A229526(n+1)` -/
def P7004637042846040074.Spec : Prop :=
  ∀ n, P7004637042846040074.a n = A239352 n

end A239352

/-! ## A239352.P12933126764966479558

`A000217(n)+A006011(n)-A000326(n)`
-/

namespace A239352.P12933126764966479558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A006011 n - A000326 n)

end

end A239352.P12933126764966479558

namespace A239352

/-- `A000217(n)+A006011(n)-A000326(n)` -/
def P12933126764966479558.Spec : Prop :=
  ∀ n, P12933126764966479558.a n = A239352 n

end A239352

/-! ## A239352.P484075260060253808

`A050534(n+1)+A050534(n+1)-A212343(n+2)`
-/

namespace A239352.P484075260060253808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + (A050534 (n + 1) - A212343 (n + 2))

end

end A239352.P484075260060253808

namespace A239352

/-- `A050534(n+1)+A050534(n+1)-A212343(n+2)` -/
def P484075260060253808.Spec : Prop :=
  ∀ n, P484075260060253808.a n = A239352 n

end A239352

/-! ## A239352.P9457372517541119858

`A055998(n)+A000217(n)*A167544(n+5)`
-/

namespace A239352.P9457372517541119858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A000217 n * A167544 (n + 5)

end

end A239352.P9457372517541119858

namespace A239352

/-- `A055998(n)+A000217(n)*A167544(n+5)` -/
def P9457372517541119858.Spec : Prop :=
  ∀ n, P9457372517541119858.a n = A239352 n

end A239352

/-!
# A239353: Number of unit hypercubes, aligned with a four-dimensional Cartesian mesh, completely within the first 2^4-ant of a hypersphere centered at the origin, ordered by increasing radius.

The programs for A239353, there is no canonical definition to state claims against.
-/

/-! ## A239353.P11884524884224952228

`∑[A063730(A000414(n+1))]`
-/

namespace A239353.P11884524884224952228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (A000414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P11884524884224952228

/-! ## A239353.P9134382830087670240

`∑[A063730(lt[0, A025428(n)])]`
-/

namespace A239353.P9134382830087670240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P9134382830087670240

/-! ## A239353.P16527176452482262810

`∑[A063730(lt[0, A037216(n)])]`
-/

namespace A239353.P16527176452482262810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P16527176452482262810

/-! ## A239353.P15705706307657498694

`∑[A063730(lt[0, A063730(n)])]`
-/

namespace A239353.P15705706307657498694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P15705706307657498694

/-! ## A239353.P5631141254217562493

`∑[A063730(comp[A000534(n+1)])]`
-/

namespace A239353.P5631141254217562493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000534 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P5631141254217562493

/-! ## A239353.P16643959981655370434

`record[A000007(n)+∑[A063730(n)]]`
-/

namespace A239353.P16643959981655370434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239353.P16643959981655370434

/-! ## A239353.P1050617226269250719

`∑[A063730(comp[n*(1-A063730(n))])]`
-/

namespace A239353.P1050617226269250719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A063730 n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239353.P1050617226269250719

/-!
# A239354: Decimal expansion of 3/4 - log(2).

The programs for A239354, there is no canonical definition to state claims against.
-/

/-! ## A239354.P3388505244658832208

`A244009(A028310(n))+A020761(A007599(n))`
-/

namespace A239354.P3388505244658832208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244009 (A028310 n).toNat + A020761 (A007599 n).toNat

end

end A239354.P3388505244658832208

/-! ## A239354.P15925336703162988328

`A244009(A028310(n))+A020761(A028242(n))`
-/

namespace A239354.P15925336703162988328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244009 (A028310 n).toNat + A020761 (A028242 n).toNat

end

end A239354.P15925336703162988328

/-! ## A239354.P5634174120195373249

`A244009(A028310(n))+A020761(A057979(n))`
-/

namespace A239354.P5634174120195373249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244009 (A028310 n).toNat + A020761 (A057979 n).toNat

end

end A239354.P5634174120195373249

/-! ## A239354.P7075296259194484308

`A244009(A028310(n))+A020761(A103221(n))`
-/

namespace A239354.P7075296259194484308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244009 (A028310 n).toNat + A020761 (A103221 n).toNat

end

end A239354.P7075296259194484308

/-! ## A239354.P1269329470080195679

`A244009(A028310(n))+A020761(A106249(n))`
-/

namespace A239354.P1269329470080195679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244009 (A028310 n).toNat + A020761 (A106249 n).toNat

end

end A239354.P1269329470080195679

/-!
# A239357: Number of n X n 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A239357, there is no canonical definition to state claims against.
-/

/-! ## A239357.P9178762874767197938

`A239361(∑[4*n]+1)`
-/

namespace A239357.P9178762874767197938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239357.P9178762874767197938

/-! ## A239357.P2510355506914686865

`record[A239361(A330613(n+1))]`
-/

namespace A239357.P2510355506914686865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239357.P2510355506914686865

/-! ## A239357.P1349197020978782838

`A239361(A001844(n))+char[19]`
-/

namespace A239357.P1349197020978782838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239357.P1349197020978782838

/-! ## A239357.P6649275914442595056

`A119335(n)*A239361(A001844(n))`
-/

namespace A239357.P6649275914442595056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A239361 (A001844 n).toNat

end

end A239357.P6649275914442595056

/-! ## A239357.P4504338154612468797

`lcm(A033999(n), A239361(A001844(n)))`
-/

namespace A239357.P4504338154612468797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A239361 (A001844 n).toNat)

end

end A239357.P4504338154612468797

/-!
# A239358: Number of n X 5 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A239358, there is no canonical definition to state claims against.
-/

/-! ## A239358.P2712611397984177662

`A239361(∑[n+4]+11)`
-/

namespace A239358.P2712611397984177662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A239358.P2712611397984177662

/-! ## A239358.P16070827720641051181

`A239361(A167499(n+3))%A096702(n+1)`
-/

namespace A239358.P16070827720641051181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239361 (A167499 (n + 3)).toNat) (A096702 (n + 1))

end

end A239358.P16070827720641051181

/-!
# A239359: Number of n X 6 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A239359, there is no canonical definition to state claims against.
-/

/-! ## A239359.P13542614946106686557

`A239361(A166136(n+4))`
-/

namespace A239359.P13542614946106686557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A166136 (n + 4)).toNat

end

end A239359.P13542614946106686557

/-! ## A239359.P8556314976995893903

`A239361(A000124(n+5)+5)`
-/

namespace A239359.P8556314976995893903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A000124 (n + 5) + 5).toNat

end

end A239359.P8556314976995893903

/-! ## A239359.P12001508164437658714

`A239361(A000096(n+4)+7)`
-/

namespace A239359.P12001508164437658714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A000096 (n + 4) + 7).toNat

end

end A239359.P12001508164437658714

/-! ## A239359.P9919268407917282531

`A239361(A000217(n+5)+6)`
-/

namespace A239359.P9919268407917282531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A000217 (n + 5) + 6).toNat

end

end A239359.P9919268407917282531

/-! ## A239359.P4039516505128368388

`A239361(A055998(n+3)+9)`
-/

namespace A239359.P4039516505128368388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A055998 (n + 3) + 9).toNat

end

end A239359.P4039516505128368388

/-!
# A239360: Number of nX7 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A239360, there is no canonical definition to state claims against.
-/

/-! ## A239360.P15571851768175342958

`A239361(A056119(n)+28)`
-/

namespace A239360.P15571851768175342958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A056119 n + 28).toNat

end

end A239360.P15571851768175342958

/-! ## A239360.P10238597769967415184

`A239361(eq[11, A066657(n)])`
-/

namespace A239360.P10238597769967415184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239360.P10238597769967415184

/-! ## A239360.P14925401668832356619

`A239361(A166136(n+5)+1)`
-/

namespace A239360.P14925401668832356619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A166136 (n + 5) + 1).toNat

end

end A239360.P14925401668832356619

/-! ## A239360.P14405209576543146469

`A239361(A167614(n+5)+4)`
-/

namespace A239360.P14405209576543146469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A167614 (n + 5) + 4).toNat

end

end A239360.P14405209576543146469

/-! ## A239360.P11777428016110170036

`A239361(A000124(n+6)+6)`
-/

namespace A239360.P11777428016110170036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239361 (A000124 (n + 6) + 6).toNat

end

end A239360.P11777428016110170036

/-!
# A239361: T(n,k)=Number of nXk 0..2 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 3.

The programs for A239361, there is no canonical definition to state claims against.
-/

/-! ## A239361.P5908170552242495912

`A331852(A131063(n))+A131923(n)`
-/

namespace A239361.P5908170552242495912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A131063 n).toNat + A131923 n

end

end A239361.P5908170552242495912

/-! ## A239361.P8039909427844668644

`A029837(A189111(n+1))+A028262(n)`
-/

namespace A239361.P8039909427844668644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A189111 (n + 1)).toNat + A028262 n

end

end A239361.P8039909427844668644

/-! ## A239361.P14379176117901212006

`A029837(A283415(n+1))+A028262(n)`
-/

namespace A239361.P14379176117901212006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A283415 (n + 1)).toNat + A028262 n

end

end A239361.P14379176117901212006

/-! ## A239361.P9091635569983628024

`A070939(A300804(n+1))+A013580(n)`
-/

namespace A239361.P9091635569983628024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A300804 (n + 1)).toNat + A013580 n

end

end A239361.P9091635569983628024

/-! ## A239361.P17855247755653536998

`A070939(A287274(n+1))+A028262(n)`
-/

namespace A239361.P17855247755653536998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A287274 (n + 1)).toNat + A028262 n

end

end A239361.P17855247755653536998

/-!
# A239363: Numbers k such that phi(k+1) - phi(k) = k/2.

The programs for A239363, there is no canonical definition to state claims against.
-/

/-! ## A239363.P6914350527562567138

`1+eq[A008619(n), A057000(n+1)]`
-/

namespace A239363.P6914350527562567138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239363.P6914350527562567138

/-! ## A239363.P5675226665210390071

`eq[A026741(n+1), A057000(n+1)]+1`
-/

namespace A239363.P5675226665210390071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239363.P5675226665210390071

/-! ## A239363.P7475651551828358750

`eq[A057000(n+1), A300293(n+2)]+1`
-/

namespace A239363.P7475651551828358750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239363.P7475651551828358750

/-!
# A239364: Numbers n such that (n^2-4)/10 is a square.

The programs for A239364, there is no canonical definition to state claims against.
-/

/-! ## A239364.P11317400194388891782

`record[38*a(n-1)-a(n-2)]` with `a(0)=38, a(1)=2`
-/

namespace A239364.P11317400194388891782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [38, 2] fun n f1 =>
  38 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239364.P11317400194388891782

/-! ## A239364.P8899434905810109703

`Δ[A097314(n)]`
-/

namespace A239364.P8899434905810109703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239364.P8899434905810109703

/-! ## A239364.P1653385995944032070

`2*A078986(n+1)`
-/

namespace A239364.P1653385995944032070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078986 (n + 1)

end

end A239364.P1653385995944032070

/-! ## A239364.P17563565704410637807

`A085447(2*(n+1))`
-/

namespace A239364.P17563565704410637807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085447 (2 * (n + 1))

end

end A239364.P17563565704410637807

/-! ## A239364.P13201625920026128646

`2*A041160(Δ[n²])`
-/

namespace A239364.P13201625920026128646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239364.P13201625920026128646

/-! ## A239364.P4725486075124062104

`Δ[A173127(n+1)/3]`
-/

namespace A239364.P4725486075124062104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173127 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239364.P4725486075124062104

/-! ## A239364.P11616094600913913011

`2*A041066(2*n+1)`
-/

namespace A239364.P11616094600913913011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041066 (2 * n + 1)

end

end A239364.P11616094600913913011

/-! ## A239364.P17210963112287658111

`2*A041682(2*n+1)`
-/

namespace A239364.P17210963112287658111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041682 (2 * n + 1)

end

end A239364.P17210963112287658111

/-! ## A239364.P6006372753614543253

`record[gcd(val(n+1, 2), A085447(n+2))]`
-/

namespace A239364.P6006372753614543253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A085447 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239364.P6006372753614543253

/-! ## A239364.P3954399824880255481

`A031149(A017017(n+1))`
-/

namespace A239364.P3954399824880255481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A017017 (n + 1)).toNat

end

end A239364.P3954399824880255481

/-!
# A239365: Numbers n such that 10*n^2+4 is a square.

The programs for A239365, the canonical program `A239365.P7193436938262846981` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239365 has offset 1).

The definition of A239365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239365.P7193436938262846981

`38*a(n-1)-a(n-2)` with `a(0)=12, a(1)=456`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239365

/-- `38*a(n-1)-a(n-2)` -/
def P7193436938262846981.Spec : Prop :=
  ∀ n, P7193436938262846981.a n = A239365 (n + 1)

theorem P7193436938262846981.correct : P7193436938262846981.Spec := by
  intro n
  simp only [A239365, Nat.add_sub_cancel]

end A239365

/-! ## A239365.P9168548049177154880

`12*A078987(n)`
-/

namespace A239365.P9168548049177154880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A078987 n

end

end A239365.P9168548049177154880

namespace A239365

/-- `12*A078987(n)` -/
def P9168548049177154880.Spec : Prop :=
  ∀ n, P9168548049177154880.a n = A239365 (n + 1)

end A239365

/-! ## A239365.P17794272094609263743

`Δ[A097315(n)/3]`
-/

namespace A239365.P17794272094609263743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097315 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239365.P17794272094609263743

namespace A239365

/-- `Δ[A097315(n)/3]` -/
def P17794272094609263743.Spec : Prop :=
  ∀ n, P17794272094609263743.a n = (A239365 (n + 1) : ℚ)

end A239365

/-! ## A239365.P1522116707596596484

`A078469(2*(n+1))`
-/

namespace A239365.P1522116707596596484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078469 (2 * (n + 1))

end

end A239365.P1522116707596596484

namespace A239365

/-- `A078469(2*(n+1))` -/
def P1522116707596596484.Spec : Prop :=
  ∀ n, P1522116707596596484.a n = A239365 (n + 1)

end A239365

/-! ## A239365.P10997283940068760304

`2*A084070(n+1)`
-/

namespace A239365.P10997283940068760304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084070 (n + 1)

end

end A239365.P10997283940068760304

namespace A239365

/-- `2*A084070(n+1)` -/
def P10997283940068760304.Spec : Prop :=
  ∀ n, P10997283940068760304.a n = A239365 (n + 1)

end A239365

/-! ## A239365.P12969476477555678845

`4*A041067(Δ[n²])`
-/

namespace A239365.P12969476477555678845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A041067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239365.P12969476477555678845

namespace A239365

/-- `4*A041067(Δ[n²])` -/
def P12969476477555678845.Spec : Prop :=
  ∀ n, P12969476477555678845.a n = A239365 (n + 1)

end A239365

/-! ## A239365.P1336529964096097858

`Δ[A041067(2*n)/3]`
-/

namespace A239365.P1336529964096097858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041067 (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239365.P1336529964096097858

namespace A239365

/-- `Δ[A041067(2*n)/3]` -/
def P1336529964096097858.Spec : Prop :=
  ∀ n, P1336529964096097858.a n = (A239365 (n + 1) : ℚ)

end A239365

/-! ## A239365.P15496571083174814782

`2*A005668(2*(n+1))`
-/

namespace A239365.P15496571083174814782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005668 (2 * (n + 1))

end

end A239365.P15496571083174814782

namespace A239365

/-- `2*A005668(2*(n+1))` -/
def P15496571083174814782.Spec : Prop :=
  ∀ n, P15496571083174814782.a n = A239365 (n + 1)

end A239365

/-! ## A239365.P15509158499746917339

`6*A041161(2*n+1)`
-/

namespace A239365.P15509158499746917339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A041161 (2 * n + 1)

end

end A239365.P15509158499746917339

namespace A239365

/-- `6*A041161(2*n+1)` -/
def P15509158499746917339.Spec : Prop :=
  ∀ n, P15509158499746917339.a n = A239365 (n + 1)

end A239365

/-!
# A239366: Triangular array read by rows: T(n,k) is the number of palindromic compositions of n having exactly k 1's, n>=0, 0<=k<=n.

The programs for A239366, there is no canonical definition to state claims against.
-/

/-! ## A239366.P3983922887553477246

`A000120(A001350(A109077(n)))`
-/

namespace A239366.P3983922887553477246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001350 (A109077 n).toNat).toNat

end

end A239366.P3983922887553477246

/-! ## A239366.P16940650604979507686

`A001221(A328835(A109077(n))!)`
-/

namespace A239366.P16940650604979507686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A328835 (A109077 n).toNat).toNat)

end

end A239366.P16940650604979507686

/-! ## A239366.P1139263865886626213

`∑{e}[A328835(A109077(n))!, A002654(#)]`
-/

namespace A239366.P1139263865886626213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328835 (A109077 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A002654 (Nat.factorization (f1 n) p)

end

end A239366.P1139263865886626213

/-! ## A239366.P13295670229917509155

`∑{e}[A328835(A109077(n))!, A188211(#)]`
-/

namespace A239366.P13295670229917509155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328835 (A109077 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A188211 (Nat.factorization (f1 n) p)

end

end A239366.P13295670229917509155

/-! ## A239366.P18291457908693765154

`A112470(A145878(n))%4`
-/

namespace A239366.P18291457908693765154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112470 (A145878 n).toNat) 4

end

end A239366.P18291457908693765154

/-!
# A239367: The bisection of A238315 that remains constant with changes in the offset of the exponent of the second term.

The programs for A239367, the canonical program `A239367.P2814063726413799169` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239367 has offset 1).

The definition of A239367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239367.P2814063726413799169

`∑[∑[4*(a(n-1)-2)]]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A239367

/-- `∑[∑[4*(a(n-1)-2)]]` -/
def P2814063726413799169.Spec : Prop :=
  ∀ n, P2814063726413799169.a n = A239367 (n + 1)

theorem P2814063726413799169.correct : P2814063726413799169.Spec := by
  intro n
  simp only [A239367, Nat.add_sub_cancel]

end A239367

/-! ## A239367.P8036652829247527895

`6*a(n-1)-8*a(n-2)-2*a(n-3)+9*a(n-4)-4*a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=29, a(4)=69`
-/

namespace A239367.P8036652829247527895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 13, 29, 69] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) - 2 * a (n - 3) + 9 * a (n - 4) - 4 * a (n - 5)

end

end A239367.P8036652829247527895

namespace A239367

/-- `6*a(n-1)-8*a(n-2)-2*a(n-3)+9*a(n-4)-4*a(n-5)` -/
def P8036652829247527895.Spec : Prop :=
  ∀ n, P8036652829247527895.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P2828741748016872427

`abs(A232603(comp[2*n]))`
-/

namespace A239367.P2828741748016872427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A239367.P2828741748016872427

namespace A239367

/-- `abs(A232603(comp[2*n]))` -/
def P2828741748016872427.Spec : Prop :=
  ∀ n, P2828741748016872427.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P10783547566652532417

`∑[A323397(n)+1+n]`
-/

namespace A239367.P10783547566652532417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323397 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239367.P10783547566652532417

namespace A239367

/-- `∑[A323397(n)+1+n]` -/
def P10783547566652532417.Spec : Prop :=
  ∀ n, P10783547566652532417.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P13535618607958499875

`∑[∑[A023105(comp[2*(n+1)])]+n]`
-/

namespace A239367.P13535618607958499875
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239367.P13535618607958499875

namespace A239367

/-- `∑[∑[A023105(comp[2*(n+1)])]+n]` -/
def P13535618607958499875.Spec : Prop :=
  ∀ n, P13535618607958499875.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P8662535684729290476

`A212978(n)+A178875(n)`
-/

namespace A239367.P8662535684729290476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n + A178875 n

end

end A239367.P8662535684729290476

namespace A239367

/-- `A212978(n)+A178875(n)` -/
def P8662535684729290476.Spec : Prop :=
  ∀ n, P8662535684729290476.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P8529984397875671748

`A082384(2*n)`
-/

namespace A239367.P8529984397875671748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082384 (2 * n)

end

end A239367.P8529984397875671748

namespace A239367

/-- `A082384(2*n)` -/
def P8529984397875671748.Spec : Prop :=
  ∀ n, P8529984397875671748.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P16616117947313636280

`A238315(Δ[n²])`
-/

namespace A239367.P16616117947313636280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238315 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239367.P16616117947313636280

namespace A239367

/-- `A238315(Δ[n²])` -/
def P16616117947313636280.Spec : Prop :=
  ∀ n, P16616117947313636280.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P15149523235923553004

`or(1, A238315(2*n+1))`
-/

namespace A239367.P15149523235923553004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238315 (2 * n + 1))

end

end A239367.P15149523235923553004

namespace A239367

/-- `or(1, A238315(2*n+1))` -/
def P15149523235923553004.Spec : Prop :=
  ∀ n, P15149523235923553004.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P2142280905701883935

`A001511(2*n+1)*A238315(2*n+1)`
-/

namespace A239367.P2142280905701883935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A238315 (2 * n + 1)

end

end A239367.P2142280905701883935

namespace A239367

/-- `A001511(2*n+1)*A238315(2*n+1)` -/
def P2142280905701883935.Spec : Prop :=
  ∀ n, P2142280905701883935.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P8181147467856403327

`A191329(2*n+1)*A238315(2*n+1)`
-/

namespace A239367.P8181147467856403327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * n + 1) * A238315 (2 * n + 1)

end

end A239367.P8181147467856403327

namespace A239367

/-- `A191329(2*n+1)*A238315(2*n+1)` -/
def P8181147467856403327.Spec : Prop :=
  ∀ n, P8181147467856403327.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P6142221171517965944

`A238315(2*n+1)+C(2, A238315(n+2))`
-/

namespace A239367.P6142221171517965944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238315 (2 * n + 1) + (Nat.choose 2 (A238315 (n + 2)).toNat : ℤ)

end

end A239367.P6142221171517965944

namespace A239367

/-- `A238315(2*n+1)+C(2, A238315(n+2))` -/
def P6142221171517965944.Spec : Prop :=
  ∀ n, P6142221171517965944.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P10998366304969749232

`A232603(2*n+1)-2*A232603(2*n+1)`
-/

namespace A239367.P10998366304969749232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232603 (2 * n + 1) - 2 * A232603 (2 * n + 1)

end

end A239367.P10998366304969749232

namespace A239367

/-- `A232603(2*n+1)-2*A232603(2*n+1)` -/
def P10998366304969749232.Spec : Prop :=
  ∀ n, P10998366304969749232.a n = A239367 (n + 1)

end A239367

/-! ## A239367.P14948947037264147802

`1/27*(4^(n+1)+(6*n)²+60*n+23)`
-/

namespace A239367.P14948947037264147802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 27 * (4 ^ (n + 1) + (6 * n) ^ 2 + 60 * n + 23 : ℚ)

end

end A239367.P14948947037264147802

namespace A239367

/-- `1/27*(4^(n+1)+(6*n)²+60*n+23)` -/
def P14948947037264147802.Spec : Prop :=
  ∀ n, P14948947037264147802.a n = (A239367 (n + 1) : ℚ)

end A239367

/-!
# A239368: Number of words of length n over the alphabet {0,...,n-1} that avoid the pattern 1111.

The programs for A239368, there is no canonical definition to state claims against.
-/

/-! ## A239368.P15753390848995873208

`A306800(A052905(n+1)+1)`
-/

namespace A239368.P15753390848995873208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A052905 (n + 1) + 1).toNat

end

end A239368.P15753390848995873208

/-! ## A239368.P6172992748563826424

`A306800(A055999(n+1)+2)`
-/

namespace A239368.P6172992748563826424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A055999 (n + 1) + 2).toNat

end

end A239368.P6172992748563826424

/-! ## A239368.P17455523027681906018

`A306800(A000217(n+4)-4)`
-/

namespace A239368.P17455523027681906018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (A000217 (n + 4) - 4).toNat

end

end A239368.P17455523027681906018

/-! ## A239368.P12052234381040624877

`A306800(eq[4, A004736(n+1)])`
-/

namespace A239368.P12052234381040624877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239368.P12052234381040624877

/-! ## A239368.P17626874651232361112

`A306800(Δ[A006416(n+2)]-1)`
-/

namespace A239368.P17626874651232361112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (f1 (n + 1) - f1 n - 1).toNat

end

end A239368.P17626874651232361112

/-! ## A239368.P2658103859311715514

`A306800(eq[9, A306807(2*n+5)])`
-/

namespace A239368.P2658103859311715514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306807 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239368.P2658103859311715514

/-!
# A239369: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1112.

The programs for A239369, there is no canonical definition to state claims against.
-/

/-! ## A239369.P16344839641790518495

`A004526(A212559(n)+A000312(n))`
-/

namespace A239369.P16344839641790518495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A212559 n + A000312 n).toNat

end

end A239369.P16344839641790518495

/-! ## A239369.P586973557689786254

`A160357(n)+A023443(A239371(n))`
-/

namespace A239369.P586973557689786254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n + A023443 (A239371 n).toNat

end

end A239369.P586973557689786254

/-!
# A239370: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1122.

The programs for A239370, there is no canonical definition to state claims against.
-/

/-! ## A239370.P5666123094092535598

`A239372(comp[lcm(6, n)+n-1])`
-/

namespace A239370.P5666123094092535598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239372 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A239370.P5666123094092535598

/-! ## A239370.P9755411193633235312

`A210436(3*n*a(n-1))-(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A239370.P9755411193633235312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210436 (3 * ((n : ℤ) * a (n - 1))).toNat - ((n : ℤ) - 1)

end

end A239370.P9755411193633235312

/-!
# A239371: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1123.

The programs for A239371, there is no canonical definition to state claims against.
-/

/-! ## A239371.P16803597180087259873

`or(A230254(A159609(n)), A239373(n))`
-/

namespace A239371.P16803597180087259873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230254 (A159609 n).toNat) (A239373 n)

end

end A239371.P16803597180087259873

/-! ## A239371.P5834044656441258607

`or(A230254(A159609(n)), A239376(n))`
-/

namespace A239371.P5834044656441258607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230254 (A159609 n).toNat) (A239376 n)

end

end A239371.P5834044656441258607

/-! ## A239371.P10070932614209362554

`or(A199588(A006784(n+1)), A239373(n))`
-/

namespace A239371.P10070932614209362554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A199588 (A006784 (n + 1)).toNat) (A239373 n)

end

end A239371.P10070932614209362554

/-!
# A239373: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1213.

The programs for A239373, there is no canonical definition to state claims against.
-/

/-! ## A239373.P4983881708792483865

`A239376(n)+A193928(A199523(n+1))`
-/

namespace A239373.P4983881708792483865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239376 n + A193928 (A199523 (n + 1)).toNat

end

end A239373.P4983881708792483865

/-! ## A239373.P2065386296635168520

`A239376(C(n, ∏{e}[n+1, #]))`
-/

namespace A239373.P2065386296635168520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239376 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A239373.P2065386296635168520

/-! ## A239373.P2768866953824743300

`A239376(C(n, ceil(xor(n, n+1)/4)))`
-/

namespace A239373.P2768866953824743300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239376 (Nat.choose n ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat)

end

end A239373.P2768866953824743300

/-!
# A239374: Smallest product of consecutive distinct prime factors of t = prime(n)^2 - 1 in ascending order that provides more than 1/3 factored parts for Brillhart-Lehmer-Selfridge primality test for prime(n).

The programs for A239374, there is no canonical definition to state claims against.
-/

/-! ## A239374.P9811980315197436552

`lcm(A000005(A305835(n+1)), A004218(n+4))`
-/

namespace A239374.P9811980315197436552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A305835 (n + 1)).toNat) (A004218 (n + 4))

end

end A239374.P9811980315197436552

/-! ## A239374.P17342933294121331632

`gcd(6, A000118(A379354(2*n+1)))`
-/

namespace A239374.P17342933294121331632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000118 (A379354 (2 * n + 1)).toNat)

end

end A239374.P17342933294121331632

/-! ## A239374.P8805196037943732502

`A085447(C(A373952(n), 96))`
-/

namespace A239374.P8805196037943732502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085447 (Nat.choose (A373952 n).toNat 96)

end

end A239374.P8805196037943732502

/-! ## A239374.P3324929072623692693

`dr(or(11, A115572(n+2)))`
-/

namespace A239374.P3324929072623692693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 11 (A115572 (n + 2)))

end

end A239374.P3324929072623692693

/-! ## A239374.P17434066615059506280

`A216953(A276502(n+4)+floor(1/(n+1)))`
-/

namespace A239374.P17434066615059506280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216953 (A276502 (n + 4) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A239374.P17434066615059506280

/-! ## A239374.P16061665299213226375

`(C(A187228(n+1), A024619(n+1))+2)!`
-/

namespace A239374.P16061665299213226375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose (A187228 (n + 1)).toNat (A024619 (n + 1)).toNat + 2)

end

end A239374.P16061665299213226375

/-! ## A239374.P15331513644594011696

`A002432(C(A127034(n+1), A024619(n+2)))`
-/

namespace A239374.P15331513644594011696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002432 (Nat.choose (A127034 (n + 1)).toNat (A024619 (n + 2)).toNat)

end

end A239374.P15331513644594011696

/-! ## A239374.P14618623086503770637

`A288863(ceil(A316648(2*(n+2))/A034050(n+5)))`
-/

namespace A239374.P14618623086503770637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288863 ⌈(A316648 (2 * (n + 2)) : ℚ) / (A034050 (n + 5) : ℚ)⌉.toNat

end

end A239374.P14618623086503770637

/-! ## A239374.P8157237634336603978

`A366263(ceil(A316648(2*(n+2))/A034050(n+5)))`
-/

namespace A239374.P8157237634336603978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 ⌈(A316648 (2 * (n + 2)) : ℚ) / (A034050 (n + 5) : ℚ)⌉.toNat

end

end A239374.P8157237634336603978

/-!
# A239376: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1223.

The programs for A239376, there is no canonical definition to state claims against.
-/

/-! ## A239376.P4965631715421676724

`A239373(n)-A193928(A199523(n+1))`
-/

namespace A239376.P4965631715421676724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239373 n - A193928 (A199523 (n + 1)).toNat

end

end A239376.P4965631715421676724

/-!
# A239377: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1231.

The programs for A239377, there is no canonical definition to state claims against.
-/

/-! ## A239377.P8568498336659536753

`A007531(A098929(n+1))+A000027(A239376(n))`
-/

namespace A239377.P8568498336659536753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A098929 (n + 1)).toNat + A000027 (A239376 n).toNat

end

end A239377.P8568498336659536753

/-! ## A239377.P7801255900104363869

`A007531(A319522(n+1))+A000027(A239376(n))`
-/

namespace A239377.P7801255900104363869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A319522 (n + 1)).toNat + A000027 (A239376 n).toNat

end

end A239377.P7801255900104363869

/-!
# A239379: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 1423.

The programs for A239379, there is no canonical definition to state claims against.
-/

/-! ## A239379.P1141487828886923751

`xor(A055955(n)², A239298(n))`
-/

namespace A239379.P1141487828886923751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055955 n ^ 2) (A239298 n)

end

end A239379.P1141487828886923751

/-! ## A239379.P240965336993605448

`A239298(n)-A000217(A308953(n))`
-/

namespace A239379.P240965336993605448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239298 n - A000217 (A308953 n).toNat

end

end A239379.P240965336993605448

/-! ## A239379.P13380648920134518101

`xor(A116084(A124781(n)), A239298(n))`
-/

namespace A239379.P13380648920134518101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116084 (A124781 n).toNat) (A239298 n)

end

end A239379.P13380648920134518101

/-!
# A239380: Words of length n over the alphabet {0,...,n-1} that avoid the pattern 2413.

The programs for A239380, there is no canonical definition to state claims against.
-/

/-! ## A239380.P18180224304522008016

`A239298(n)-A185036(A038503(n))`
-/

namespace A239380.P18180224304522008016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239298 n - A185036 (A038503 n).toNat

end

end A239380.P18180224304522008016

/-! ## A239380.P17120310551084817555

`A239298(n)-A353504(A320529(n+1))`
-/

namespace A239380.P17120310551084817555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239298 n - A353504 (A320529 (n + 1)).toNat

end

end A239380.P17120310551084817555

/-!
# A239381: a(0) = 3, the least length of a Primitive Pythagorean Triangle (PPT). a(n) is the least hypotenuse of a PPT which has a(n-1) as one of its legs.

The programs for A239381, there is no canonical definition to state claims against.
-/

/-! ## A239381.P8123968823904153189

`sqrt(∑[A307077(n+1)²])`
-/

namespace A239381.P8123968823904153189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307077 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A239381.P8123968823904153189

/-!
# A239389: The record values of d for the n in A239388.

The programs for A239389, there is no canonical definition to state claims against.
-/

/-! ## A239389.P1582018929202106794

`record[A069003(n+1)]`
-/

namespace A239389.P1582018929202106794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239389.P1582018929202106794

/-! ## A239389.P1346554899431163141

`A069003(A239388(n+1))`
-/

namespace A239389.P1346554899431163141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A239388 (n + 1)).toNat

end

end A239389.P1346554899431163141

/-! ## A239389.P18019244216133346135

`record[A069003(A028310(n))%A051698(n)]`
-/

namespace A239389.P18019244216133346135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069003 (A028310 n).toNat) (A051698 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239389.P18019244216133346135

/-! ## A239389.P17042130940547229858

`A133388(record[A068486(n+1)-A005563(n)])`
-/

namespace A239389.P17042130940547229858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (n + 1) - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239389.P17042130940547229858

/-! ## A239389.P15524255159912937815

`A000196(record[A068486(n+1)-A005563(n)])`
-/

namespace A239389.P15524255159912937815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068486 (n + 1) - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239389.P15524255159912937815

/-!
# A239391: The record values of d for the n in A239390.

The programs for A239391, there is no canonical definition to state claims against.
-/

/-! ## A239391.P4577798816356017026

`record[A069002(n+2)]`
-/

namespace A239391.P4577798816356017026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239391.P4577798816356017026

/-! ## A239391.P17378168351751028989

`A069002(A239390(n+1))`
-/

namespace A239391.P17378168351751028989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069002 (A239390 (n + 1)).toNat

end

end A239391.P17378168351751028989

/-! ## A239391.P13569160178343590523

`∑[A005361(A275401(n+1)²)]`
-/

namespace A239391.P13569160178343590523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A275401 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239391.P13569160178343590523

/-! ## A239391.P11762676010339683382

`∑[A286324(A275504(n+1)²)]`
-/

namespace A239391.P11762676010339683382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A275504 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239391.P11762676010339683382

/-! ## A239391.P5537199414560217370

`record[A006530(∑[A063059(3*n+4)])]`
-/

namespace A239391.P5537199414560217370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239391.P5537199414560217370

/-!
# A239392: Numbers n that have record value of prime p such that p + 2n is another prime.

The programs for A239392, there is no canonical definition to state claims against.
-/

/-! ## A239392.P15014932026342513089

`A370998(A371069(n+1))`
-/

namespace A239392.P15014932026342513089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370998 (A371069 (n + 1)).toNat

end

end A239392.P15014932026342513089

/-! ## A239392.P12515699135318803826

`record[A370998(A007947(n+1))]`
-/

namespace A239392.P12515699135318803826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370998 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239392.P12515699135318803826

/-! ## A239392.P11725647894325924783

`record[A370998(A106612(n+1))]`
-/

namespace A239392.P11725647894325924783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370998 (A106612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239392.P11725647894325924783

/-! ## A239392.P17352981013620213230

`record[A370998(A351030(n+1))]`
-/

namespace A239392.P17352981013620213230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370998 (A351030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239392.P17352981013620213230

/-! ## A239392.P16375082159032630090

`record[A370998(A351033(n+1))]`
-/

namespace A239392.P16375082159032630090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370998 (A351033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239392.P16375082159032630090

/-!
# A239393: Nonnegative prime Lipschitz quaternions shown as 4-vectors sorted by norm and then (1,i,j,k) components.

The programs for A239393, there is no canonical definition to state claims against.
-/

/-! ## A239393.P9745684288095752672

`A043545(A079735(n)*A239395(n+1))`
-/

namespace A239393.P9745684288095752672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A079735 n * A239395 (n + 1)).toNat

end

end A239393.P9745684288095752672

/-! ## A239393.P2252712780691383083

`A043545(lcm(A124575(n), A239395(n+1)))`
-/

namespace A239393.P2252712780691383083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (Int.lcm (A124575 n) (A239395 (n + 1)))

end

end A239393.P2252712780691383083

/-! ## A239393.P4477951868529362814

`A043545(A124575(n)*A239395(n+1))`
-/

namespace A239393.P4477951868529362814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A124575 n * A239395 (n + 1)).toNat

end

end A239393.P4477951868529362814

/-! ## A239393.P5064371499701083029

`A205574(C(A322393(3*n+2), A239395(n+1)))`
-/

namespace A239393.P5064371499701083029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (Nat.choose (A322393 (3 * n + 2)).toNat (A239395 (n + 1)).toNat)

end

end A239393.P5064371499701083029

/-! ## A239393.P9920815080428592557

`A322369(C(A322393(3*n+2), A239395(n+1)))`
-/

namespace A239393.P9920815080428592557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322369 (Nat.choose (A322393 (3 * n + 2)).toNat (A239395 (n + 1)).toNat)

end

end A239393.P9920815080428592557

/-!
# A239394: Number of prime nonnegative Lipschitz quaternions having norm prime(n).

The programs for A239394, there is no canonical definition to state claims against.
-/

/-! ## A239394.P14416853482271829265

`A014110(p?[comp[n²]])`
-/

namespace A239394.P14416853482271829265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239394.P14416853482271829265

/-! ## A239394.P2270260137474162362

`A014110(Δ[A007504(n)])`
-/

namespace A239394.P2270260137474162362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (f1 (n + 1) - f1 n).toNat

end

end A239394.P2270260137474162362

/-! ## A239394.P5385367472053409354

`A014110(record[A162753(n)])`
-/

namespace A239394.P5385367472053409354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239394.P5385367472053409354

/-! ## A239394.P8901541920665514991

`A014110(A000040(n+1))`
-/

namespace A239394.P8901541920665514991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A000040 (n + 1)).toNat

end

end A239394.P8901541920665514991

/-! ## A239394.P1167794109321985172

`A014110(A216883(n+1))`
-/

namespace A239394.P1167794109321985172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A216883 (n + 1)).toNat

end

end A239394.P1167794109321985172

/-! ## A239394.P5598564656346955045

`A014110(A216884(n+1))`
-/

namespace A239394.P5598564656346955045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A216884 (n + 1)).toNat

end

end A239394.P5598564656346955045

/-! ## A239394.P17543017577580453740

`A014110(A216885(n+1))`
-/

namespace A239394.P17543017577580453740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A216885 (n + 1)).toNat

end

end A239394.P17543017577580453740

/-! ## A239394.P3817138499544277654

`A014110(A385492(n+1))`
-/

namespace A239394.P3817138499544277654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A385492 (n + 1)).toNat

end

end A239394.P3817138499544277654

/-! ## A239394.P2344667983506222820

`A014110(A008578(n+2))`
-/

namespace A239394.P2344667983506222820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A008578 (n + 2)).toNat

end

end A239394.P2344667983506222820

/-!
# A239395: Twice prime nonnegative Hurwitz quaternions shown as 4-vectors sorted by norm and then (1,i,j,k) components.

The programs for A239395, there is no canonical definition to state claims against.
-/

/-! ## A239395.P507450055720605977

`2*A011681(A340765(n+1))`
-/

namespace A239395.P507450055720605977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011681 (A340765 (n + 1)).toNat

end

end A239395.P507450055720605977

/-! ## A239395.P4688908528200482870

`2*A117872(A343158(2*(n+1)))`
-/

namespace A239395.P4688908528200482870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117872 (A343158 (2 * (n + 1))).toNat

end

end A239395.P4688908528200482870

/-! ## A239395.P8672731320977875395

`A109043(A239393(n+1)^A075951(n))`
-/

namespace A239395.P8672731320977875395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (SequenceMachineLib.roundAway ((A239393 (n + 1) : ℚ) ^ (A075951 n : ℤ))).toNat

end

end A239395.P8672731320977875395

/-!
# A239396: Number of prime nonnegative Hurwitz quaternions having norm prime(n).

The programs for A239396, there is no canonical definition to state claims against.
-/

/-! ## A239396.P2733866283427234568

`A014110(A001749(n+1))`
-/

namespace A239396.P2733866283427234568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A001749 (n + 1)).toNat

end

end A239396.P2733866283427234568

/-! ## A239396.P10706750373982422852

`A014110(record[4*A162753(n)])`
-/

namespace A239396.P10706750373982422852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239396.P10706750373982422852

/-! ## A239396.P10928098290902548294

`A014110(2*A100484(n+1))`
-/

namespace A239396.P10928098290902548294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (2 * A100484 (n + 1)).toNat

end

end A239396.P10928098290902548294

/-! ## A239396.P13660687760312333408

`A014110(4*A000040(n+1))`
-/

namespace A239396.P13660687760312333408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * A000040 (n + 1)).toNat

end

end A239396.P13660687760312333408

/-! ## A239396.P13989186760513718291

`A014110(4*A008578(n+2))`
-/

namespace A239396.P13989186760513718291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * A008578 (n + 2)).toNat

end

end A239396.P13989186760513718291

/-! ## A239396.P8515526799452019723

`A014110(4*eq[1, A003415(n)])`
-/

namespace A239396.P8515526799452019723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239396.P8515526799452019723

/-! ## A239396.P13762410671296389752

`A014110(4*record[A006530(n+2)])`
-/

namespace A239396.P13762410671296389752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239396.P13762410671296389752

/-! ## A239396.P12781201679434858729

`A014110(4*record[A014963(n+2)])`
-/

namespace A239396.P12781201679434858729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239396.P12781201679434858729

/-! ## A239396.P5335218018556831347

`A014110(4*record[A020639(n+2)])`
-/

namespace A239396.P5335218018556831347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239396.P5335218018556831347

/-! ## A239396.P11408365678969121733

`A014110(4*∏{d}[A000040(2*n-(n-1)), #])`
-/

namespace A239396.P11408365678969121733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (4 * (∏ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A239396.P11408365678969121733

/-!
# A239397: Prime Gaussian integers x + y*i sorted by norm and increasing y, with x and y nonnegative.

The programs for A239397, there is no canonical definition to state claims against.
-/

/-! ## A239397.P18289029194872686561

`A277327(n)+A063050(A034801(n))`
-/

namespace A239397.P18289029194872686561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 n + A063050 (A034801 n).toNat

end

end A239397.P18289029194872686561

/-! ## A239397.P4941968947914143449

`A277328(n)+A063050(A034801(n))`
-/

namespace A239397.P4941968947914143449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277328 n + A063050 (A034801 n).toNat

end

end A239397.P4941968947914143449

/-! ## A239397.P672210892377006741

`A284948(A056449(n))+A277327(n)`
-/

namespace A239397.P672210892377006741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (A056449 n).toNat + A277327 n

end

end A239397.P672210892377006741

/-! ## A239397.P17477246994427266586

`A284948(A056449(n))+A277328(n)`
-/

namespace A239397.P17477246994427266586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (A056449 n).toNat + A277328 n

end

end A239397.P17477246994427266586

/-! ## A239397.P2477114129635822063

`A277327(n)+A088911(A230739(n+1))`
-/

namespace A239397.P2477114129635822063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 n + A088911 (A230739 (n + 1)).toNat

end

end A239397.P2477114129635822063

/-!
# A239398: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239398, there is no canonical definition to state claims against.
-/

/-! ## A239398.P6538855851150901516

`A239405((n+1)²+n²)`
-/

namespace A239398.P6538855851150901516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 ((n + 1) ^ 2 + n ^ 2)

end

end A239398.P6538855851150901516

/-!
# A239399: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239399, there is no canonical definition to state claims against.
-/

/-! ## A239399.P3044435682880265685

`A239405(∑[n+2])`
-/

namespace A239399.P3044435682880265685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239399.P3044435682880265685

/-! ## A239399.P17424187330655163130

`record[A239405(A000096(A257213(n)))]`
-/

namespace A239399.P17424187330655163130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000096 (A257213 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239399.P17424187330655163130

/-! ## A239399.P5306719338778358607

`record[A239405(A000096(A324347(n)))]`
-/

namespace A239399.P5306719338778358607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239399.P5306719338778358607

/-! ## A239399.P3724240597127631070

`record[A239405(A000096(A328399(n)))]`
-/

namespace A239399.P3724240597127631070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239399.P3724240597127631070

/-! ## A239399.P9283635392595616084

`record[A239405(A000096(A344180(n)))]`
-/

namespace A239399.P9283635392595616084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239405 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239399.P9283635392595616084

