import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A020301: Strong pseudoprimes to base 75.

The programs for A020301, there is no canonical definition to state claims against.
-/

/-! ## A020301.P3198870338902373635

`filter[A020203(n+1), A321081(#)]`
-/

namespace A020301.P3198870338902373635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321081 (f1 j).toNat = 1) n)

end

end A020301.P3198870338902373635

/-!
# A020305: Strong pseudoprimes to base 79.

The programs for A020305, there is no canonical definition to state claims against.
-/

/-! ## A020305.P5743123591478390851

`A338911(A131899(n+2)+A006003(n))`
-/

namespace A020305.P5743123591478390851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338911 (A131899 (n + 2) + A006003 n).toNat

end

end A020305.P5743123591478390851

/-!
# A020306: Strong pseudoprimes to base 80.

The programs for A020306, there is no canonical definition to state claims against.
-/

/-! ## A020306.P12441779117275752936

`A020208(eq[A131410(n+1), A167439(n)])`
-/

namespace A020306.P12441779117275752936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020306.P12441779117275752936

/-! ## A020306.P6584872107760940731

`A020208(eq[A167439(n), A194920(n+1)])`
-/

namespace A020306.P6584872107760940731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020306.P6584872107760940731

/-! ## A020306.P10466251013599417441

`A020208(lt[A107855(n+2), A014682(n)])`
-/

namespace A020306.P10466251013599417441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020208 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020306.P10466251013599417441

/-!
# A020307: Strong pseudoprimes to base 81.

The programs for A020307, there is no canonical definition to state claims against.
-/

/-! ## A020307.P7915783562631736547

`or(A001318(A255868(n)), A005935(n+1))`
-/

namespace A020307.P7915783562631736547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001318 (A255868 n).toNat) (A005935 (n + 1))

end

end A020307.P7915783562631736547

/-!
# A020308: Strong pseudoprimes to base 82.

The programs for A020308, there is no canonical definition to state claims against.
-/

/-! ## A020308.P8521129552132170217

`∩[A020210(n+1), A042952(n)]`
-/

namespace A020308.P8521129552132170217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020308.P8521129552132170217

/-!
# A020313: Strong pseudoprimes to base 87.

The programs for A020313, there is no canonical definition to state claims against.
-/

/-! ## A020313.P13636014844815314322

`∑{d}[A162142(n+1), A000026(#)]`
-/

namespace A020313.P13636014844815314322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000026 d

end

end A020313.P13636014844815314322

/-!
# A020315: Strong pseudoprimes to base 89.

The programs for A020315, there is no canonical definition to state claims against.
-/

/-! ## A020315.P11077142962612592007

`A111774(A187848(n)+A145642(n+1))`
-/

namespace A020315.P11077142962612592007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (A187848 n + A145642 (n + 1)).toNat

end

end A020315.P11077142962612592007

/-!
# A020316: Strong pseudoprimes to base 90.

The programs for A020316, there is no canonical definition to state claims against.
-/

/-! ## A020316.P6771355450628572809

`filter[A020218(2*n+1), A284674(#)]`
-/

namespace A020316.P6771355450628572809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020218 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284674 (f1 j).toNat = 1) n)

end

end A020316.P6771355450628572809

/-!
# A020325: Strong pseudoprimes to base 99.

The programs for A020325, there is no canonical definition to state claims against.
-/

/-! ## A020325.P5788874220351939918

`A174027(A001857(n+1)*A309058(n))`
-/

namespace A020325.P5788874220351939918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174027 (A001857 (n + 1) * A309058 n).toNat

end

end A020325.P5788874220351939918

/-!
# A020326: Strong pseudoprimes to base 100.

The programs for A020326, there is no canonical definition to state claims against.
-/

/-! ## A020326.P8324889378627468747

`A005939(lt[A068971(n+1), A117532(3*n+2)])`
-/

namespace A020326.P8324889378627468747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117532 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020326.P8324889378627468747

/-! ## A020326.P4485160513418953615

`A020228(record[∏{e}[A176342(n+1), #+1]])`
-/

namespace A020326.P4485160513418953615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176342 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A020326.P4485160513418953615

/-! ## A020326.P8056403224829421151

`A005939(lt[(n-1-∑{p}[n, #])², n]^A242784(3*n+1))`
-/

namespace A020326.P8056403224829421151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℚ) ^ (A242784 (3 * n + 1) : ℤ))).toNat

end

end A020326.P8056403224829421151

/-! ## A020326.P4817103975705936203

`or(A005939(n+1), A185238(A001405(n)))`
-/

namespace A020326.P4817103975705936203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005939 (n + 1)) (A185238 (A001405 n).toNat)

end

end A020326.P4817103975705936203

/-!
# A020330: Numbers whose base-2 representation is the juxtaposition of two identical strings.

The programs for A020330, the canonical program `A020330.P7025260452739219137` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020330 has offset 1).

The definition of A020330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020330.P7025260452739219137

`n+1+2*(n+1)*2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020330

/-- `n+1+2*(n+1)*2^floor(log2(n+1))` -/
def P7025260452739219137.Spec : Prop :=
  ∀ n, (P7025260452739219137.a n : ℤ) = A020330 (n + 1)

theorem P7025260452739219137.correct : P7025260452739219137.Spec := by
  intro n
  simp only [A020330, Nat.add_sub_cancel]

end A020330

/-! ## A020330.P9443652278916124994

`(n+1)*(2^A070939(n+1)+1)`
-/

namespace A020330.P9443652278916124994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((2 : ℚ) ^ (A070939 (n + 1) : ℤ) + 1)

end

end A020330.P9443652278916124994

namespace A020330

/-- `(n+1)*(2^A070939(n+1)+1)` -/
def P9443652278916124994.Spec : Prop :=
  ∀ n, P9443652278916124994.a n = (A020330 (n + 1) : ℚ)

end A020330

/-! ## A020330.P2495405182080151973

`(n+1)*(lt[xor(n, floor(n/2)), n]-n)`
-/

namespace A020330.P2495405182080151973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ))

end

end A020330.P2495405182080151973

namespace A020330

/-- `(n+1)*(lt[xor(n, floor(n/2)), n]-n)` -/
def P2495405182080151973.Spec : Prop :=
  ∀ n, P2495405182080151973.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P18261420213202892962

`(n+1)*A076877(n+1)`
-/

namespace A020330.P18261420213202892962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076877 (n + 1)

end

end A020330.P18261420213202892962

namespace A020330

/-- `(n+1)*A076877(n+1)` -/
def P18261420213202892962.Spec : Prop :=
  ∀ n, P18261420213202892962.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P8246255695810145114

`(∑[A099894(n)]+2)*(n+1)`
-/

namespace A020330.P8246255695810145114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * (n + 1 : ℤ)

end

end A020330.P8246255695810145114

namespace A020330

/-- `(∑[A099894(n)]+2)*(n+1)` -/
def P8246255695810145114.Spec : Prop :=
  ∀ n, P8246255695810145114.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P3374486107445439730

`(n+1)*(A003817(n+1)+2)`
-/

namespace A020330.P3374486107445439730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A003817 (n + 1) + 2)

end

end A020330.P3374486107445439730

namespace A020330

/-- `(n+1)*(A003817(n+1)+2)` -/
def P3374486107445439730.Spec : Prop :=
  ∀ n, P3374486107445439730.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P11282829334626511007

`(n+1)*(A004755(n+1)-n)`
-/

namespace A020330.P11282829334626511007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004755 (n + 1) - (n : ℤ))

end

end A020330.P11282829334626511007

namespace A020330

/-- `(n+1)*(A004755(n+1)-n)` -/
def P11282829334626511007.Spec : Prop :=
  ∀ n, P11282829334626511007.a n = A020330 (n + 1)

theorem P11282829334626511007.correct : P11282829334626511007.Spec := by
  intro n
  simp only [A020330, Nat.add_sub_cancel, A020330.P11282829334626511007.a, A020330.P7025260452739219137.a, A004755, A004755.P18071614157387427853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020330

/-! ## A020330.P463511255966584761

`(n+1)*(A080079(n+1)+n+2)`
-/

namespace A020330.P463511255966584761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A080079 (n + 1) + (n + 2 : ℤ))

end

end A020330.P463511255966584761

namespace A020330

/-- `(n+1)*(A080079(n+1)+n+2)` -/
def P463511255966584761.Spec : Prop :=
  ∀ n, P463511255966584761.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P14089488565100557506

`(n+1)*(A035327(n+1)+n+3)`
-/

namespace A020330.P14089488565100557506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035327 (n + 1) + (n + 3 : ℤ))

end

end A020330.P14089488565100557506

namespace A020330

/-- `(n+1)*(A035327(n+1)+n+3)` -/
def P14089488565100557506.Spec : Prop :=
  ∀ n, P14089488565100557506.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P4858305465504189139

`(n+1)*(A206332(n+1)-(n-1))`
-/

namespace A020330.P4858305465504189139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A206332 (n + 1) - ((n : ℤ) - 1))

end

end A020330.P4858305465504189139

namespace A020330

/-- `(n+1)*(A206332(n+1)-(n-1))` -/
def P4858305465504189139.Spec : Prop :=
  ∀ n, P4858305465504189139.a n = A020330 (n + 1)

theorem P4858305465504189139.correct : P4858305465504189139.Spec := by
  intro n
  simp only [A020330, Nat.add_sub_cancel, A020330.P4858305465504189139.a, A020330.P7025260452739219137.a, A206332, A206332.P9847070516523007032.a, A004755, A004755.P18071614157387427853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020330

/-! ## A020330.P12621244577918014877

`(A000079(ceil(log2(n+2)))+1)*(n+1)`
-/

namespace A020330.P12621244577918014877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat + 1) * (n + 1 : ℤ)

end

end A020330.P12621244577918014877

namespace A020330

/-- `(A000079(ceil(log2(n+2)))+1)*(n+1)` -/
def P12621244577918014877.Spec : Prop :=
  ∀ n, P12621244577918014877.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P3761453244532730159

`(n+1)*(A000225(ceil(log2(n+2)))+2)`
-/

namespace A020330.P3761453244532730159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000225 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat + 2)

end

end A020330.P3761453244532730159

namespace A020330

/-- `(n+1)*(A000225(ceil(log2(n+2)))+2)` -/
def P3761453244532730159.Spec : Prop :=
  ∀ n, P3761453244532730159.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P9144843657461971403

`(n+4-A006257(n+1)+n)*(n+1)`
-/

namespace A020330.P9144843657461971403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℤ) - A006257 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)

end

end A020330.P9144843657461971403

namespace A020330

/-- `(n+4-A006257(n+1)+n)*(n+1)` -/
def P9144843657461971403.Spec : Prop :=
  ∀ n, P9144843657461971403.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P12340408204025537328

`(n+1)*A048578(A000523(n+1))`
-/

namespace A020330.P12340408204025537328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048578 (A000523 (n + 1)).toNat

end

end A020330.P12340408204025537328

namespace A020330

/-- `(n+1)*A048578(A000523(n+1))` -/
def P12340408204025537328.Spec : Prop :=
  ∀ n, P12340408204025537328.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P470519406093020814

`(n+1)*A086341(A129972(n+1))`
-/

namespace A020330.P470519406093020814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086341 (A129972 (n + 1)).toNat

end

end A020330.P470519406093020814

namespace A020330

/-- `(n+1)*A086341(A129972(n+1))` -/
def P470519406093020814.Spec : Prop :=
  ∀ n, P470519406093020814.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P10069441127733772333

`(n+1)*(A062383(n+1)+1)`
-/

namespace A020330.P10069441127733772333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062383 (n + 1) + 1)

end

end A020330.P10069441127733772333

namespace A020330

/-- `(n+1)*(A062383(n+1)+1)` -/
def P10069441127733772333.Spec : Prop :=
  ∀ n, P10069441127733772333.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P9305547390887199029

`(n+1)*A000051(A070939(n+1))`
-/

namespace A020330.P9305547390887199029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000051 (A070939 (n + 1)).toNat

end

end A020330.P9305547390887199029

namespace A020330

/-- `(n+1)*A000051(A070939(n+1))` -/
def P9305547390887199029.Spec : Prop :=
  ∀ n, P9305547390887199029.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P14455255719666828388

`(n+1)*A000051(A029837(n+2))`
-/

namespace A020330.P14455255719666828388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000051 (A029837 (n + 2)).toNat

end

end A020330.P14455255719666828388

namespace A020330

/-- `(n+1)*A000051(A029837(n+2))` -/
def P14455255719666828388.Spec : Prop :=
  ∀ n, P14455255719666828388.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P4345823352599483286

`(n+1)*A048724(A003817(n+1))`
-/

namespace A020330.P4345823352599483286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048724 (A003817 (n + 1)).toNat

end

end A020330.P4345823352599483286

namespace A020330

/-- `(n+1)*A048724(A003817(n+1))` -/
def P4345823352599483286.Spec : Prop :=
  ∀ n, P4345823352599483286.a n = A020330 (n + 1)

end A020330

/-! ## A020330.P18154187999472762752

`(n+1)*A065283(A062383(n+1))`
-/

namespace A020330.P18154187999472762752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065283 (A062383 (n + 1)).toNat

end

end A020330.P18154187999472762752

namespace A020330

/-- `(n+1)*A065283(A062383(n+1))` -/
def P18154187999472762752.Spec : Prop :=
  ∀ n, P18154187999472762752.a n = A020330 (n + 1)

end A020330

/-!
# A020331: Numbers whose base-3 representation is the juxtaposition of two identical strings.

The programs for A020331, the canonical program `A020331.P13767564437493327510` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020331 has offset 1).

The definition of A020331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020331.P13767564437493327510

`(n+1)*(A171960(n+1)+3+n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020331

/-- `(n+1)*(A171960(n+1)+3+n)` -/
def P13767564437493327510.Spec : Prop :=
  ∀ n, P13767564437493327510.a n = A020331 (n + 1)

theorem P13767564437493327510.correct : P13767564437493327510.Spec := by
  intro n
  simp only [A020331, Nat.add_sub_cancel]

end A020331

/-! ## A020331.P14855217176759848389

`(n+1)*(A064235(n+2)+1)`
-/

namespace A020331.P14855217176759848389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A064235 (n + 2) + 1)

end

end A020331.P14855217176759848389

namespace A020331

/-- `(n+1)*(A064235(n+2)+1)` -/
def P14855217176759848389.Spec : Prop :=
  ∀ n, P14855217176759848389.a n = A020331 (n + 1)

end A020331

/-! ## A020331.P2401524018231158984

`(n+1)*(A365458(3*n+4)+1)`
-/

namespace A020331.P2401524018231158984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A365458 (3 * n + 4) + 1)

end

end A020331.P2401524018231158984

namespace A020331

/-- `(n+1)*(A365458(3*n+4)+1)` -/
def P2401524018231158984.Spec : Prop :=
  ∀ n, P2401524018231158984.a n = A020331 (n + 1)

end A020331

/-! ## A020331.P6701048110679291112

`(n+1)*(A167878(A167878(n+1))+2)`
-/

namespace A020331.P6701048110679291112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A167878 (A167878 (n + 1)).toNat + 2)

end

end A020331.P6701048110679291112

namespace A020331

/-- `(n+1)*(A167878(A167878(n+1))+2)` -/
def P6701048110679291112.Spec : Prop :=
  ∀ n, P6701048110679291112.a n = A020331 (n + 1)

end A020331

/-! ## A020331.P17628934218268378178

`(∏[A014963(3*(n+1))]+1)*(n+1)`
-/

namespace A020331.P17628934218268378178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A020331.P17628934218268378178

namespace A020331

/-- `(∏[A014963(3*(n+1))]+1)*(n+1)` -/
def P17628934218268378178.Spec : Prop :=
  ∀ n, P17628934218268378178.a n = A020331 (n + 1)

end A020331

/-! ## A020331.P9718594228168995017

`(n+1)*(∏[A014963(A008585(n+1))]+1)`
-/

namespace A020331.P9718594228168995017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A020331.P9718594228168995017

namespace A020331

/-- `(n+1)*(∏[A014963(A008585(n+1))]+1)` -/
def P9718594228168995017.Spec : Prop :=
  ∀ n, P9718594228168995017.a n = A020331 (n + 1)

end A020331

/-! ## A020331.P12519490077702213647

`(n+1)*A030118(∏[A014963(3*(n+1))])`
-/

namespace A020331.P12519490077702213647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A030118 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020331.P12519490077702213647

namespace A020331

/-- `(n+1)*A030118(∏[A014963(3*(n+1))])` -/
def P12519490077702213647.Spec : Prop :=
  ∀ n, P12519490077702213647.a n = A020331 (n + 1)

end A020331

/-!
# A020332: Numbers whose base-4 representation is the juxtaposition of two identical strings.

The programs for A020332, the canonical program `A020332.P16132858014043730416` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020332 has offset 1).

The definition of A020332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020332.P12357179292445331051

`A055949(n+1)+A048703(n+1)`
-/

namespace A020332.P12357179292445331051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (n + 1) + A048703 (n + 1)

end

end A020332.P12357179292445331051

namespace A020332

/-- `A055949(n+1)+A048703(n+1)` -/
def P12357179292445331051.Spec : Prop :=
  ∀ n, P12357179292445331051.a n = A020332 (n + 1)

end A020332

/-! ## A020332.P16132858014043730416

`(n+1)*(A053644(A000267(n+1))²+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020332

/-- `(n+1)*(A053644(A000267(n+1))²+1)` -/
def P16132858014043730416.Spec : Prop :=
  ∀ n, P16132858014043730416.a n = A020332 (n + 1)

theorem P16132858014043730416.correct : P16132858014043730416.Spec := by
  intro n
  simp only [A020332, Nat.add_sub_cancel]

end A020332

/-! ## A020332.P2856039001929166666

`A048703(n+1)+n+1-A030103(n+1)`
-/

namespace A020332.P2856039001929166666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048703 (n + 1) + ((n + 1 : ℤ) - A030103 (n + 1))

end

end A020332.P2856039001929166666

namespace A020332

/-- `A048703(n+1)+n+1-A030103(n+1)` -/
def P2856039001929166666.Spec : Prop :=
  ∀ n, P2856039001929166666.a n = A020332 (n + 1)

end A020332

/-! ## A020332.P4110599974908909129

`A284800(n+1)+n+1-A284799(n+1)`
-/

namespace A020332.P4110599974908909129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284800 (n + 1) + ((n + 1 : ℤ) - A284799 (n + 1))

end

end A020332.P4110599974908909129

namespace A020332

/-- `A284800(n+1)+n+1-A284799(n+1)` -/
def P4110599974908909129.Spec : Prop :=
  ∀ n, P4110599974908909129.a n = A020332 (n + 1)

end A020332

/-! ## A020332.P16517601861361753983

`(n+1)*(A053644(A301682(A053644(n+1)))+1)`
-/

namespace A020332.P16517601861361753983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053644 (A301682 (A053644 (n + 1)).toNat).toNat + 1)

end

end A020332.P16517601861361753983

namespace A020332

/-- `(n+1)*(A053644(A301682(A053644(n+1)))+1)` -/
def P16517601861361753983.Spec : Prop :=
  ∀ n, P16517601861361753983.a n = A020332 (n + 1)

end A020332

/-! ## A020332.P10086042627921217405

`(n+1)*(A280512(n+2)+n+2)`
-/

namespace A020332.P10086042627921217405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A280512 (n + 2) + (n + 2 : ℤ))

end

end A020332.P10086042627921217405

namespace A020332

/-- `(n+1)*(A280512(n+2)+n+2)` -/
def P10086042627921217405.Spec : Prop :=
  ∀ n, P10086042627921217405.a n = A020332 (n + 1)

end A020332

/-!
# A020333: Numbers whose base-5 representation is the juxtaposition of two identical strings.

The programs for A020333, the canonical program `A020333.P8708679268539003984` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020333 has offset 1).

The definition of A020333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020333.P8708679268539003984

`(∑[A092509(5*(n+1))]+1)*(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020333

/-- `(∑[A092509(5*(n+1))]+1)*(n+1)` -/
def P8708679268539003984.Spec : Prop :=
  ∀ n, P8708679268539003984.a n = A020333 (n + 1)

theorem P8708679268539003984.correct : P8708679268539003984.Spec := by
  intro n
  simp only [A020333, Nat.add_sub_cancel]

end A020333

/-! ## A020333.P14719135446269672405

`(∏[A014963(5*(n+1))]+1)*(n+1)`
-/

namespace A020333.P14719135446269672405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A020333.P14719135446269672405

namespace A020333

/-- `(∏[A014963(5*(n+1))]+1)*(n+1)` -/
def P14719135446269672405.Spec : Prop :=
  ∀ n, P14719135446269672405.a n = A020333 (n + 1)

end A020333

/-! ## A020333.P11297918395474393243

`(n+1)*(A385552(n+1)+1)`
-/

namespace A020333.P11297918395474393243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A385552 (n + 1) + 1)

end

end A020333.P11297918395474393243

namespace A020333

/-- `(n+1)*(A385552(n+1)+1)` -/
def P11297918395474393243.Spec : Prop :=
  ∀ n, P11297918395474393243.a n = A020333 (n + 1)

end A020333

/-! ## A020333.P1063995438130210772

`(A062367(A200772(n+1))+1)*(n+1)`
-/

namespace A020333.P1063995438130210772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062367 (A200772 (n + 1)).toNat + 1) * (n + 1 : ℤ)

end

end A020333.P1063995438130210772

namespace A020333

/-- `(A062367(A200772(n+1))+1)*(n+1)` -/
def P1063995438130210772.Spec : Prop :=
  ∀ n, P1063995438130210772.a n = A020333 (n + 1)

end A020333

/-! ## A020333.P8454715782440439346

`(n+1)*A276625(A179388(floor(sqrt(n))!))`
-/

namespace A020333.P8454715782440439346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A276625 (A179388 (Nat.factorial (Nat.sqrt n))).toNat

end

end A020333.P8454715782440439346

namespace A020333

/-- `(n+1)*A276625(A179388(floor(sqrt(n))!))` -/
def P8454715782440439346.Spec : Prop :=
  ∀ n, P8454715782440439346.a n = A020333 (n + 1)

end A020333

/-!
# A020334: Numbers whose base-6 representation is the juxtaposition of two identical strings.

The programs for A020334, there is no canonical definition to state claims against.
-/

/-! ## A020334.P10747388087790664841

`A284804(n+1)+n+1-A284803(n+1)`
-/

namespace A020334.P10747388087790664841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284804 (n + 1) + ((n + 1 : ℤ) - A284803 (n + 1))

end

end A020334.P10747388087790664841

/-! ## A020334.P15489188358386912402

`(A040311(A151210(n))+1)*(n+1)`
-/

namespace A020334.P15489188358386912402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040311 (A151210 n).toNat + 1) * (n + 1 : ℤ)

end

end A020334.P15489188358386912402

/-! ## A020334.P3422605262019116784

`(n+1)*A197297(A401051(A034386(n)))`
-/

namespace A020334.P3422605262019116784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A197297 (A401051 (A034386 n).toNat).toNat

end

end A020334.P3422605262019116784

/-!
# A020335: Numbers whose base-7 representation is the juxtaposition of two identical strings.

The programs for A020335, there is no canonical definition to state claims against.
-/

/-! ## A020335.P5214287037451574373

`A001222(A002023(n))*A247969(n+1)`
-/

namespace A020335.P5214287037451574373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002023 n).toNat * A247969 (n + 1)

end

end A020335.P5214287037451574373

/-! ## A020335.P8935054927994592411

`(A303759(A000312(n))+7)*(n+1)`
-/

namespace A020335.P8935054927994592411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A303759 (A000312 n).toNat + 7) * (n + 1 : ℤ)

end

end A020335.P8935054927994592411

/-! ## A020335.P2595489070381370492

`2*(n+1)*(A002024(A165878(3*n+2)+1)+1)²`
-/

namespace A020335.P2595489070381370492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (A002024 (A165878 (3 * n + 2) + 1).toNat + 1) ^ 2

end

end A020335.P2595489070381370492

/-!
# A020336: Numbers whose base-8 representation is the juxtaposition of two identical strings.

The programs for A020336, there is no canonical definition to state claims against.
-/

/-! ## A020336.P3382093515707404491

`(n+1)*A178334(A052383(A134941(n+3)))`
-/

namespace A020336.P3382093515707404491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178334 (A052383 (A134941 (n + 3)).toNat).toNat

end

end A020336.P3382093515707404491

/-! ## A020336.P11139114069844178696

`(n+1)*A178334(A111496(n+1))`
-/

namespace A020336.P11139114069844178696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178334 (A111496 (n + 1)).toNat

end

end A020336.P11139114069844178696

/-! ## A020336.P2311607863968971781

`(n+1)*A178334(A233883(n+4))`
-/

namespace A020336.P2311607863968971781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178334 (A233883 (n + 4)).toNat

end

end A020336.P2311607863968971781

/-! ## A020336.P15571440242735217729

`(n+1)*A178334(A138482(n+3))`
-/

namespace A020336.P15571440242735217729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178334 (A138482 (n + 3)).toNat

end

end A020336.P15571440242735217729

/-! ## A020336.P11640969896803691896

`(n+1)*A268212(A000051(A001584(n+1)))`
-/

namespace A020336.P11640969896803691896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A268212 (A000051 (A001584 (n + 1)).toNat).toNat

end

end A020336.P11640969896803691896

/-!
# A020337: Numbers whose base-9 representation is the juxtaposition of two identical strings.

The programs for A020337, there is no canonical definition to state claims against.
-/

/-! ## A020337.P10348239434098497592

`A114367(A146865(n+1))*A317108(n+1)`
-/

namespace A020337.P10348239434098497592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114367 (A146865 (n + 1)).toNat * A317108 (n + 1)

end

end A020337.P10348239434098497592

/-! ## A020337.P8669503892811832591

`(n+1)*A059919(A068045(n+3))`
-/

namespace A020337.P8669503892811832591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059919 (A068045 (n + 3)).toNat

end

end A020337.P8669503892811832591

/-! ## A020337.P9676799495924433341

`9^val(n+1, 9)*A265556(A087141(2*n+1))`
-/

namespace A020337.P9676799495924433341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ SequenceMachineLib.valuation (n + 1) 9 : ℤ) * A265556 (A087141 (2 * n + 1)).toNat

end

end A020337.P9676799495924433341

/-!
# A020338: Doublets: base-10 representation is the juxtaposition of two identical strings.

The programs for A020338, the canonical program `A020338.P4106658568687796505` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020338 has offset 1).

The definition of A020338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020338.P4106658568687796505

`(n+1)*10^(A004216(n+1)+1)+n+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020338

/-- `(n+1)*10^(A004216(n+1)+1)+n+1` -/
def P4106658568687796505.Spec : Prop :=
  ∀ n, P4106658568687796505.a n = (A020338 (n + 1) : ℚ)

end A020338

/-! ## A020338.P7178279925463378048

`(n+1)*(1+10^(1+floor(log(n+1)/log(10))))`
-/

namespace A020338.P7178279925463378048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 + (10 : ℚ) ^ (1 + ⌊Real.log (n + 1 : ℝ) / Real.log (10 : ℝ)⌋ : ℤ))

end

end A020338.P7178279925463378048

namespace A020338

/-- `(n+1)*(1+10^(1+floor(log(n+1)/log(10))))` -/
def P7178279925463378048.Spec : Prop :=
  ∀ n, P7178279925463378048.a n = (A020338 (n + 1) : ℚ)

end A020338

/-! ## A020338.P728517784125407380

`A105814(n+1)-(n+1)²`
-/

namespace A020338.P728517784125407380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105814 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A020338.P728517784125407380

namespace A020338

/-- `A105814(n+1)-(n+1)²` -/
def P728517784125407380.Spec : Prop :=
  ∀ n, P728517784125407380.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P13241006122149021871

`(A235497(n+1)+n+1)/2`
-/

namespace A020338.P13241006122149021871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235497 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A020338.P13241006122149021871

namespace A020338

/-- `(A235497(n+1)+n+1)/2` -/
def P13241006122149021871.Spec : Prop :=
  ∀ n, P13241006122149021871.a n = (A020338 (n + 1) : ℚ)

end A020338

/-! ## A020338.P8443847559779059986

`A055436(n+1)/(n+1)+n`
-/

namespace A020338.P8443847559779059986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055436 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A020338.P8443847559779059986

namespace A020338

/-- `A055436(n+1)/(n+1)+n` -/
def P8443847559779059986.Spec : Prop :=
  ∀ n, P8443847559779059986.a n = (A020338 (n + 1) : ℚ)

end A020338

/-! ## A020338.P962766509083921547

`A068824(n+1)+∑[2*(n+1)]`
-/

namespace A020338.P962766509083921547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068824 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A020338.P962766509083921547

namespace A020338

/-- `A068824(n+1)+∑[2*(n+1)]` -/
def P962766509083921547.Spec : Prop :=
  ∀ n, P962766509083921547.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P16440877552206737099

`n+1+10^(1+A004216(n+1))*(n+1)`
-/

namespace A020338.P16440877552206737099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (10 : ℚ) ^ (1 + A004216 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A020338.P16440877552206737099

namespace A020338

/-- `n+1+10^(1+A004216(n+1))*(n+1)` -/
def P16440877552206737099.Spec : Prop :=
  ∀ n, P16440877552206737099.a n = (A020338 (n + 1) : ℚ)

end A020338

/-! ## A020338.P9181596089027191634

`A056965(n+1)+A056524(n+1)`
-/

namespace A020338.P9181596089027191634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (n + 1) + A056524 (n + 1)

end

end A020338.P9181596089027191634

namespace A020338

/-- `A056965(n+1)+A056524(n+1)` -/
def P9181596089027191634.Spec : Prop :=
  ∀ n, P9181596089027191634.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P13900032565724835678

`xor(1, A275238(n+1))`
-/

namespace A020338.P13900032565724835678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A275238 (n + 1))

end

end A020338.P13900032565724835678

namespace A020338

/-- `xor(1, A275238(n+1))` -/
def P13900032565724835678.Spec : Prop :=
  ∀ n, P13900032565724835678.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P18157559164571838843

`A084854(∑[n+1])`
-/

namespace A020338.P18157559164571838843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020338.P18157559164571838843

namespace A020338

/-- `A084854(∑[n+1])` -/
def P18157559164571838843.Spec : Prop :=
  ∀ n, P18157559164571838843.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P16766391477897763639

`A084855(∑[n+1])`
-/

namespace A020338.P16766391477897763639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020338.P16766391477897763639

namespace A020338

/-- `A084855(∑[n+1])` -/
def P16766391477897763639.Spec : Prop :=
  ∀ n, P16766391477897763639.a n = A020338 (n + 1)

end A020338

/-! ## A020338.P12971552847699479183

`∩[A001637(n+1), A239019(n+1)]`
-/

namespace A020338.P12971552847699479183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020338.P12971552847699479183

namespace A020338

/-- `∩[A001637(n+1), A239019(n+1)]` -/
def P12971552847699479183.Spec : Prop :=
  ∀ n, (P12971552847699479183.a n : ℤ) = A020338 (n + 1)

end A020338

/-!
# A020339: a(n)^2 is the least square base-n doublet (base-n representation is the concatenation of 2 identical strings).

The programs for A020339, there is no canonical definition to state claims against.
-/

/-! ## A020339.P6071528376749408234

`sqrt(A020340(n+2))`
-/

namespace A020339.P6071528376749408234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020340 (n + 2) : ℝ)

end

end A020339.P6071528376749408234

/-! ## A020339.P11633908052738567566

`root(A020340(n+2), p?[A060953(n+1)])`
-/

namespace A020339.P11633908052738567566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020340 (n + 2) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A020339.P11633908052738567566

/-! ## A020339.P634368333196247844

`root(A020340(n+2), A001316(A001316(n)))`
-/

namespace A020339.P634368333196247844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020340 (n + 2) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A020339.P634368333196247844

/-! ## A020339.P1887175586078493854

`root(A020340(n+2), A141256(A141256(n)))`
-/

namespace A020339.P1887175586078493854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020340 (n + 2) : ℝ) ^ (1 / (A141256 (A141256 n).toNat : ℝ))

end

end A020339.P1887175586078493854

/-!
# A020340: Least square base n doublet (written in base 10).

The programs for A020340, there is no canonical definition to state claims against.
-/

/-! ## A020340.P1898678321164831322

`A020339(n+2)²`
-/

namespace A020340.P1898678321164831322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020339 (n + 2) ^ 2

end

end A020340.P1898678321164831322

/-! ## A020340.P8365643160432773773

`A020339(n+2)^(A280865(n)+1)`
-/

namespace A020340.P8365643160432773773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020339 (n + 2) : ℚ) ^ (A280865 n + 1 : ℤ)

end

end A020340.P8365643160432773773

/-! ## A020340.P4700210854848668725

`A020339(n+2)^A020639(A064466(n))`
-/

namespace A020340.P4700210854848668725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020339 (n + 2) : ℚ) ^ (A020639 (A064466 n).toNat : ℤ)

end

end A020340.P4700210854848668725

/-! ## A020340.P6199802960232305820

`A020339(n+2)^A000005(A039949(n+1))`
-/

namespace A020340.P6199802960232305820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020339 (n + 2) : ℚ) ^ (A000005 (A039949 (n + 1)).toNat : ℤ)

end

end A020340.P6199802960232305820

/-! ## A020340.P12363518936153318711

`A020339(n+2)^A031298(A031301(n+1))`
-/

namespace A020340.P12363518936153318711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020339 (n + 2) : ℚ) ^ (A031298 (A031301 (n + 1)).toNat : ℤ)

end

end A020340.P12363518936153318711

/-!
# A020341: Expansion of 1/((1-5x)(1-7x)(1-12x)).

The programs for A020341, the canonical program `A020341.P15744807086686120631` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020341 has offset 0).

The definition of A020341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020341.P15744807086686120631

`19*a(n-1)-84*a(n-2)+5^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020341

/-- `19*a(n-1)-84*a(n-2)+5^n` -/
def P15744807086686120631.Spec : Prop :=
  ∀ n, P15744807086686120631.a n = A020341 n

theorem P15744807086686120631.correct : P15744807086686120631.Spec := by
  intro n
  simp only [A020341]

end A020341

/-! ## A020341.P13939376493125162882

`5^(n+2)/14-7^(n+2)/10+12^(n+2)/35`
-/

namespace A020341.P13939376493125162882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 2) : ℚ) / 14 - (7 ^ (n + 2) : ℚ) / 10 + (12 ^ (n + 2) : ℚ) / 35

end

end A020341.P13939376493125162882

namespace A020341

/-- `5^(n+2)/14-7^(n+2)/10+12^(n+2)/35` -/
def P13939376493125162882.Spec : Prop :=
  ∀ n, P13939376493125162882.a n = (A020341 n : ℚ)

theorem P13939376493125162882.correct : P13939376493125162882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020341, Nat.add_sub_cancel, A020341.P13939376493125162882.a, A020341.P15744807086686120631.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020341, Nat.add_sub_cancel, A020341.P13939376493125162882.a, A020341.P15744807086686120631.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020341

/-! ## A020341.P15506034741167391073

`(A016184(n+1)-A016166(n+1))/2`
-/

namespace A020341.P15506034741167391073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016184 (n + 1) - A016166 (n + 1) : ℚ) / 2

end

end A020341.P15506034741167391073

namespace A020341

/-- `(A016184(n+1)-A016166(n+1))/2` -/
def P15506034741167391073.Spec : Prop :=
  ∀ n, P15506034741167391073.a n = (A020341 n : ℚ)

end A020341

/-!
# A020343: Expansion of 1/((1-5x)(1-8x)(1-9x)).

The programs for A020343, the canonical program `A020343.P17103005101680755248` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020343 has offset 0).

The definition of A020343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020343.P17103005101680755248

`17*a(n-1)-72*a(n-2)+5^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020343

/-- `17*a(n-1)-72*a(n-2)+5^n` -/
def P17103005101680755248.Spec : Prop :=
  ∀ n, P17103005101680755248.a n = A020343 n

theorem P17103005101680755248.correct : P17103005101680755248.Spec := by
  intro n
  simp only [A020343]

end A020343

/-! ## A020343.P9183989456631715128

`25*5^n/12-64*8^n/3+81*9^n/4`
-/

namespace A020343.P9183989456631715128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 12 - (64 * 8 ^ n : ℚ) / 3 + (81 * 9 ^ n : ℚ) / 4

end

end A020343.P9183989456631715128

namespace A020343

/-- `25*5^n/12-64*8^n/3+81*9^n/4` -/
def P9183989456631715128.Spec : Prop :=
  ∀ n, P9183989456631715128.a n = (A020343 n : ℚ)

theorem P9183989456631715128.correct : P9183989456631715128.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020343, Nat.add_sub_cancel, A020343.P9183989456631715128.a, A020343.P17103005101680755248.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020343, Nat.add_sub_cancel, A020343.P9183989456631715128.a, A020343.P17103005101680755248.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020343

/-! ## A020343.P2158927588881674964

`Δ[A016234(n)-A016233(n)]`
-/

namespace A020343.P2158927588881674964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016234 n - A016233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020343.P2158927588881674964

namespace A020343

/-- `Δ[A016234(n)-A016233(n)]` -/
def P2158927588881674964.Spec : Prop :=
  ∀ n, P2158927588881674964.a n = A020343 n

end A020343

/-!
# A020345: Smallest Fibonacci number beginning with n.

The programs for A020345, there is no canonical definition to state claims against.
-/

/-! ## A020345.P390561172324619217

`A000045(A020344(n))`
-/

namespace A020345.P390561172324619217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020344 n).toNat

end

end A020345.P390561172324619217

/-! ## A020345.P17807786157556056403

`A212804(A020344(n)+1)`
-/

namespace A020345.P17807786157556056403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A020344 n + 1).toNat

end

end A020345.P17807786157556056403

/-! ## A020345.P4133597522903964400

`A103609(2*A020344(n))`
-/

namespace A020345.P4133597522903964400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A020344 n).toNat

end

end A020345.P4133597522903964400

/-! ## A020345.P15159034216995285424

`A198834(A020344(n)+2)/2`
-/

namespace A020345.P15159034216995285424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198834 (A020344 n + 2).toNat : ℚ) / 2

end

end A020345.P15159034216995285424

/-! ## A020345.P5385433734623857922

`A103609(A020344(n)+A020344(n)+1)`
-/

namespace A020345.P5385433734623857922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A020344 n + (A020344 n + 1)).toNat

end

end A020345.P5385433734623857922

/-!
# A020346: Expansion of 1/((1-5x)(1-8x)(1-10x)).

The programs for A020346, the canonical program `A020346.P12811642035565518265` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020346 has offset 0).

The definition of A020346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020346.P12811642035565518265

`5^(n+1)/3-32*8^n/3+10^(n+1)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020346

/-- `5^(n+1)/3-32*8^n/3+10^(n+1)` -/
def P12811642035565518265.Spec : Prop :=
  ∀ n, P12811642035565518265.a n = (A020346 n : ℚ)

end A020346

/-! ## A020346.P10575468075132360387

`18*a(n-1)-80*a(n-2)+5^n` with `a(0)=1, a(1)=23`
-/

namespace A020346.P10575468075132360387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (5 ^ n : ℤ)

end

end A020346.P10575468075132360387

namespace A020346

/-- `18*a(n-1)-80*a(n-2)+5^n` -/
def P10575468075132360387.Spec : Prop :=
  ∀ n, P10575468075132360387.a n = A020346 n

end A020346

/-!
# A020347: Numbers k such that the continued fraction for sqrt(k) has period 6.

The programs for A020347, there is no canonical definition to state claims against.
-/

/-! ## A020347.P2368804746579767823

`eq[6, A003285(n+1)]+1`
-/

namespace A020347.P2368804746579767823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020347.P2368804746579767823

/-! ## A020347.P16369180742755802315

`eq[6, A003285(A028310(n))]`
-/

namespace A020347.P16369180742755802315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020347.P16369180742755802315

/-! ## A020347.P10752002366421519178

`A011760(eq[6, A003285(n+1)])`
-/

namespace A020347.P10752002366421519178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020347.P10752002366421519178

/-! ## A020347.P17557558467432935101

`A020725(eq[6, A003285(n+1)])`
-/

namespace A020347.P17557558467432935101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020347.P17557558467432935101

/-! ## A020347.P7988386431640762730

`A065475(eq[6, A003285(n+1)])`
-/

namespace A020347.P7988386431640762730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020347.P7988386431640762730

/-! ## A020347.P158459271533108053

`A153152(eq[6, A003285(n+1)])`
-/

namespace A020347.P158459271533108053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020347.P158459271533108053

/-! ## A020347.P5979284847285313817

`eq[6, A003285(A065033(2*n))]`
-/

namespace A020347.P5979284847285313817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020347.P5979284847285313817

/-! ## A020347.P15063985872718183964

`eq[6, A003285(A123108(2*n))]`
-/

namespace A020347.P15063985872718183964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020347.P15063985872718183964

/-! ## A020347.P2091333462746495223

`eq[6, A003285(A233583(n+1))]`
-/

namespace A020347.P2091333462746495223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020347.P2091333462746495223

/-!
# A020348: Numbers k such that the continued fraction for sqrt(k) has period 8.

The programs for A020348, there is no canonical definition to state claims against.
-/

/-! ## A020348.P2180579068970021573

`eq[8, A003285(n+1)]+1`
-/

namespace A020348.P2180579068970021573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020348.P2180579068970021573

/-! ## A020348.P8444246872625393239

`eq[9, A067280(n+1)]+1`
-/

namespace A020348.P8444246872625393239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020348.P8444246872625393239

/-! ## A020348.P17375185050521095038

`eq[8, A003285(A028310(n))]`
-/

namespace A020348.P17375185050521095038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020348.P17375185050521095038

/-! ## A020348.P16556562171820249855

`A011760(eq[8, A003285(n+1)])`
-/

namespace A020348.P16556562171820249855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020348.P16556562171820249855

/-! ## A020348.P11133843786038211853

`A020725(eq[8, A003285(n+1)])`
-/

namespace A020348.P11133843786038211853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020348.P11133843786038211853

/-! ## A020348.P18314061005145288815

`A065475(eq[8, A003285(n+1)])`
-/

namespace A020348.P18314061005145288815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020348.P18314061005145288815

/-! ## A020348.P7565059825781585025

`A153152(eq[8, A003285(n+1)])`
-/

namespace A020348.P7565059825781585025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020348.P7565059825781585025

/-! ## A020348.P16838307791694476181

`eq[8, A003285(A138153(n+1))]`
-/

namespace A020348.P16838307791694476181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020348.P16838307791694476181

/-! ## A020348.P5073402820212433028

`eq[8, A003285(A060000(n+1))]`
-/

namespace A020348.P5073402820212433028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020348.P5073402820212433028

/-! ## A020348.P6247620666071689585

`eq[8, A003285(A233583(n+1))]`
-/

namespace A020348.P6247620666071689585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020348.P6247620666071689585

/-!
# A020349: Numbers k such that the continued fraction for sqrt(k) has period 10.

The programs for A020349, there is no canonical definition to state claims against.
-/

/-! ## A020349.P3980096555604759324

`eq[10, A003285(n+1)]+1`
-/

namespace A020349.P3980096555604759324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020349.P3980096555604759324

/-! ## A020349.P16141607763527613004

`eq[10, A003285(A028310(n))]`
-/

namespace A020349.P16141607763527613004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020349.P16141607763527613004

/-! ## A020349.P6461072553624154381

`A011760(eq[10, A003285(n+1)])`
-/

namespace A020349.P6461072553624154381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020349.P6461072553624154381

/-! ## A020349.P10355217735498547804

`A020725(eq[10, A003285(n+1)])`
-/

namespace A020349.P10355217735498547804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020349.P10355217735498547804

/-! ## A020349.P9029717395104628765

`A065475(eq[10, A003285(n+1)])`
-/

namespace A020349.P9029717395104628765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020349.P9029717395104628765

/-! ## A020349.P6138524850664799617

`A153152(eq[10, A003285(n+1)])`
-/

namespace A020349.P6138524850664799617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020349.P6138524850664799617

/-! ## A020349.P4799462726297467551

`eq[10, A003285(A138153(n+1))]`
-/

namespace A020349.P4799462726297467551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020349.P4799462726297467551

/-! ## A020349.P14112276206394070073

`eq[10, A003285(A065033(2*n))]`
-/

namespace A020349.P14112276206394070073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020349.P14112276206394070073

/-! ## A020349.P16106898287473951201

`eq[10, A003285(A233583(n+1))]`
-/

namespace A020349.P16106898287473951201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020349.P16106898287473951201

/-!
# A020350: Numbers k such that the continued fraction for sqrt(k) has period 11.

The programs for A020350, there is no canonical definition to state claims against.
-/

/-! ## A020350.P4456977493162085236

`eq[11, A003285(A028310(n))]`
-/

namespace A020350.P4456977493162085236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020350.P4456977493162085236

/-! ## A020350.P11759038716319944822

`A011760(eq[11, A003285(n+1)])`
-/

namespace A020350.P11759038716319944822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020350.P11759038716319944822

/-! ## A020350.P17771971841809379434

`A020725(eq[11, A003285(n+1)])`
-/

namespace A020350.P17771971841809379434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020350.P17771971841809379434

/-! ## A020350.P12071675372641090569

`A065475(eq[11, A003285(n+1)])`
-/

namespace A020350.P12071675372641090569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020350.P12071675372641090569

/-! ## A020350.P12814730673412078956

`eq[11, A003285(A060000(n+1))]`
-/

namespace A020350.P12814730673412078956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020350.P12814730673412078956

/-!
# A020351: Numbers k such that the continued fraction for sqrt(k) has period 12.

The programs for A020351, there is no canonical definition to state claims against.
-/

/-! ## A020351.P9004211512636544158

`eq[12, A003285(n+1)]+1`
-/

namespace A020351.P9004211512636544158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020351.P9004211512636544158

/-! ## A020351.P9511925323454285359

`eq[12, A097853(n+1)]+1`
-/

namespace A020351.P9511925323454285359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020351.P9511925323454285359

/-! ## A020351.P2789328486189987419

`eq[12, A003285(A028310(n))]`
-/

namespace A020351.P2789328486189987419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020351.P2789328486189987419

/-! ## A020351.P9983688382262205854

`A020725(eq[12, A003285(n+1)])`
-/

namespace A020351.P9983688382262205854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020351.P9983688382262205854

/-! ## A020351.P10842903002305092665

`A065475(eq[12, A003285(n+1)])`
-/

namespace A020351.P10842903002305092665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020351.P10842903002305092665

/-! ## A020351.P7082993174696467469

`A020725(eq[12, A097853(n+1)])`
-/

namespace A020351.P7082993174696467469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020351.P7082993174696467469

/-! ## A020351.P17584731858761332186

`A020725(eq[13, A067280(n+1)])`
-/

namespace A020351.P17584731858761332186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020351.P17584731858761332186

/-!
# A020352: Numbers k such that the continued fraction for sqrt(k) has period 13.

The programs for A020352, there is no canonical definition to state claims against.
-/

/-! ## A020352.P4699314213104829747

`eq[13, A003285(A028310(n))]`
-/

namespace A020352.P4699314213104829747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020352.P4699314213104829747

/-! ## A020352.P7752887158854805000

`A011760(eq[13, A003285(n+1)])`
-/

namespace A020352.P7752887158854805000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020352.P7752887158854805000

/-! ## A020352.P13893142938262889961

`A020725(eq[13, A003285(n+1)])`
-/

namespace A020352.P13893142938262889961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020352.P13893142938262889961

/-! ## A020352.P1783577051414285221

`A065475(eq[13, A003285(n+1)])`
-/

namespace A020352.P1783577051414285221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020352.P1783577051414285221

/-! ## A020352.P2750617961560109126

`A153152(eq[13, A003285(n+1)])`
-/

namespace A020352.P2750617961560109126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020352.P2750617961560109126

/-!
# A020353: Numbers k such that the continued fraction for sqrt(k) has period 14.

The programs for A020353, there is no canonical definition to state claims against.
-/

/-! ## A020353.P1219117088923974629

`eq[14, A003285(A028310(n))]`
-/

namespace A020353.P1219117088923974629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020353.P1219117088923974629

/-! ## A020353.P11486902973668980658

`A011760(eq[14, A003285(n+1)])`
-/

namespace A020353.P11486902973668980658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020353.P11486902973668980658

/-! ## A020353.P7105869144147477635

`A020725(eq[14, A003285(n+1)])`
-/

namespace A020353.P7105869144147477635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020353.P7105869144147477635

/-! ## A020353.P14428201758419706464

`A065475(eq[14, A003285(n+1)])`
-/

namespace A020353.P14428201758419706464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020353.P14428201758419706464

/-! ## A020353.P2867140780986557776

`A153152(eq[14, A003285(n+1)])`
-/

namespace A020353.P2867140780986557776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020353.P2867140780986557776

/-! ## A020353.P5949520349643172544

`A020725(eq[15, A067280(n+1)])`
-/

namespace A020353.P5949520349643172544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020353.P5949520349643172544

/-!
# A020354: Numbers k such that the continued fraction for sqrt(k) has period 15.

The programs for A020354, there is no canonical definition to state claims against.
-/

/-! ## A020354.P2174317047332826957

`eq[15, A003285(A028310(n))]`
-/

namespace A020354.P2174317047332826957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020354.P2174317047332826957

/-! ## A020354.P13101337422486954586

`A004482(eq[15, A003285(n+1)])`
-/

namespace A020354.P13101337422486954586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020354.P13101337422486954586

/-! ## A020354.P16102507213364948141

`A020725(eq[15, A003285(n+1)])`
-/

namespace A020354.P16102507213364948141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020354.P16102507213364948141

/-! ## A020354.P16875564191482975939

`A065475(eq[15, A003285(n+1)])`
-/

namespace A020354.P16875564191482975939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020354.P16875564191482975939

/-! ## A020354.P5434772262461630845

`eq[15, A003285(A066182(n+1))]`
-/

namespace A020354.P5434772262461630845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020354.P5434772262461630845

/-!
# A020355: Numbers k such that the continued fraction for sqrt(k) has period 16.

The programs for A020355, there is no canonical definition to state claims against.
-/

/-! ## A020355.P12947766776202398435

`eq[16, A003285(n+1)]+1`
-/

namespace A020355.P12947766776202398435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020355.P12947766776202398435

/-! ## A020355.P2113261416951141616

`eq[16, A097853(n+1)]+1`
-/

namespace A020355.P2113261416951141616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020355.P2113261416951141616

/-! ## A020355.P7739307279419081319

`eq[16, A003285(A028310(n))]`
-/

namespace A020355.P7739307279419081319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020355.P7739307279419081319

/-! ## A020355.P6065662961879060004

`A020725(eq[16, A003285(n+1)])`
-/

namespace A020355.P6065662961879060004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020355.P6065662961879060004

/-! ## A020355.P6609707528145998094

`A020725(eq[16, A097853(n+1)])`
-/

namespace A020355.P6609707528145998094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020355.P6609707528145998094

/-!
# A020356: Numbers k such that the continued fraction for sqrt(k) has period 17.

The programs for A020356, there is no canonical definition to state claims against.
-/

/-! ## A020356.P2374939382534687996

`eq[17, A003285(A028310(n))]`
-/

namespace A020356.P2374939382534687996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020356.P2374939382534687996

/-! ## A020356.P1029228872005593519

`A020725(eq[17, A003285(n+1)])`
-/

namespace A020356.P1029228872005593519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020356.P1029228872005593519

/-! ## A020356.P11205537565507014329

`A326178(eq[17, A003285(n+1)])`
-/

namespace A020356.P11205537565507014329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020356.P11205537565507014329

/-!
# A020357: Numbers k such that the continued fraction for sqrt(k) has period 18.

The programs for A020357, there is no canonical definition to state claims against.
-/

/-! ## A020357.P14714121850375104622

`eq[18, A003285(A028310(n))]`
-/

namespace A020357.P14714121850375104622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020357.P14714121850375104622

/-! ## A020357.P12490169443136017259

`A020725(eq[18, A003285(n+1)])`
-/

namespace A020357.P12490169443136017259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020357.P12490169443136017259

/-!
# A020358: Numbers k such that the continued fraction for sqrt(k) has period 19.

The programs for A020358, there is no canonical definition to state claims against.
-/

/-! ## A020358.P10049503088191550103

`eq[19, A003285(A028310(n))]`
-/

namespace A020358.P10049503088191550103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020358.P10049503088191550103

/-! ## A020358.P11704858631225090727

`A020725(eq[19, A003285(n+1)])`
-/

namespace A020358.P11704858631225090727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020358.P11704858631225090727

/-! ## A020358.P9995649307454046146

`eq[19, A003285(A233583(n+1))]`
-/

namespace A020358.P9995649307454046146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020358.P9995649307454046146

/-!
# A020359: Numbers k such that the continued fraction for sqrt(k) has period 20.

The programs for A020359, there is no canonical definition to state claims against.
-/

/-! ## A020359.P12972506296034340579

`eq[20, A003285(A028310(n))]`
-/

namespace A020359.P12972506296034340579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020359.P12972506296034340579

/-! ## A020359.P10858193399547116322

`A020725(eq[20, A003285(n+1)])`
-/

namespace A020359.P10858193399547116322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020359.P10858193399547116322

/-! ## A020359.P14718753706307866574

`A114637(eq[20, A003285(n+1)])`
-/

namespace A020359.P14718753706307866574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020359.P14718753706307866574

/-! ## A020359.P18155367809633903997

`A020725(eq[20, A097853(n+1)])`
-/

namespace A020359.P18155367809633903997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020359.P18155367809633903997

/-!
# A020360: Numbers k such that the continued fraction for sqrt(k) has period 21.

The programs for A020360, there is no canonical definition to state claims against.
-/

/-! ## A020360.P346178485024297263

`eq[21, A003285(A028310(n))]`
-/

namespace A020360.P346178485024297263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020360.P346178485024297263

/-! ## A020360.P9435768794286686202

`A004482(eq[21, A003285(n+1)])`
-/

namespace A020360.P9435768794286686202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020360.P9435768794286686202

/-! ## A020360.P11488862206418255332

`A098180(eq[21, A003285(n+1)])`
-/

namespace A020360.P11488862206418255332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020360.P11488862206418255332

/-! ## A020360.P7850933102378487325

`A153152(eq[21, A003285(n+1)])`
-/

namespace A020360.P7850933102378487325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020360.P7850933102378487325

/-! ## A020360.P13735960126576603686

`eq[21, A097853(A233583(n+1))]`
-/

namespace A020360.P13735960126576603686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020360.P13735960126576603686

/-!
# A020361: Numbers k such that the continued fraction for sqrt(k) has period 22.

The programs for A020361, there is no canonical definition to state claims against.
-/

/-! ## A020361.P8996599223970259773

`eq[22, A003285(A028310(n))]`
-/

namespace A020361.P8996599223970259773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020361.P8996599223970259773

/-! ## A020361.P4296129477872060550

`eq[22, A003285(A233583(n+1))]`
-/

namespace A020361.P4296129477872060550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020361.P4296129477872060550

/-!
# A020363: Numbers k such that the continued fraction for sqrt(k) has period 24.

The programs for A020363, there is no canonical definition to state claims against.
-/

/-! ## A020363.P9799915524307542138

`eq[24, A003285(A028310(n))]`
-/

namespace A020363.P9799915524307542138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020363.P9799915524307542138

/-! ## A020363.P12621339749143202795

`A011760(eq[24, A003285(n+1)])`
-/

namespace A020363.P12621339749143202795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020363.P12621339749143202795

/-!
# A020364: Numbers k such that the continued fraction for sqrt(k) has period 25.

The programs for A020364, there is no canonical definition to state claims against.
-/

/-! ## A020364.P2861454544711890488

`eq[25, A003285(A028310(n))]`
-/

namespace A020364.P2861454544711890488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020364.P2861454544711890488

/-! ## A020364.P6399269590561397431

`A114637(eq[25, A003285(n+1)])`
-/

namespace A020364.P6399269590561397431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020364.P6399269590561397431

/-!
# A020365: Numbers k such that the continued fraction for sqrt(k) has period 26.

The programs for A020365, there is no canonical definition to state claims against.
-/

/-! ## A020365.P7191632354717467160

`eq[26, A003285(A028310(n))]`
-/

namespace A020365.P7191632354717467160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020365.P7191632354717467160

/-! ## A020365.P2548487213164123313

`eq[27, A067280(A233583(n+1))]`
-/

namespace A020365.P2548487213164123313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020365.P2548487213164123313

/-!
# A020367: Numbers k such that the continued fraction for sqrt(k) has period 28.

The programs for A020367, there is no canonical definition to state claims against.
-/

/-! ## A020367.P8292414462822313825

`eq[28, A003285(A028310(n))]`
-/

namespace A020367.P8292414462822313825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020367.P8292414462822313825

/-! ## A020367.P7332548465490176263

`A153152(eq[28, A003285(n+1)])`
-/

namespace A020367.P7332548465490176263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020367.P7332548465490176263

/-! ## A020367.P15746884114318347124

`eq[28, A003285(A233583(n+1))]`
-/

namespace A020367.P15746884114318347124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020367.P15746884114318347124

/-!
# A020369: Numbers k such that the continued fraction for sqrt(k) has period 30.

The programs for A020369, there is no canonical definition to state claims against.
-/

/-! ## A020369.P15108113888210863067

`eq[30, A003285(A028310(n))]`
-/

namespace A020369.P15108113888210863067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020369.P15108113888210863067

/-! ## A020369.P4351971463095674012

`A011760(eq[30, A003285(n+1)])`
-/

namespace A020369.P4351971463095674012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020369.P4351971463095674012

/-! ## A020369.P17747022289158333980

`A065475(eq[30, A003285(n+1)])`
-/

namespace A020369.P17747022289158333980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020369.P17747022289158333980

/-! ## A020369.P16258181380782797090

`A153152(eq[30, A003285(n+1)])`
-/

namespace A020369.P16258181380782797090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020369.P16258181380782797090

/-!
# A020371: Numbers k such that the continued fraction for sqrt(k) has period 32.

The programs for A020371, there is no canonical definition to state claims against.
-/

/-! ## A020371.P2481538301370318372

`eq[32, A003285(A028310(n))]`
-/

namespace A020371.P2481538301370318372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020371.P2481538301370318372

/-!
# A020375: Numbers k such that the continued fraction for sqrt(k) has period 36.

The programs for A020375, there is no canonical definition to state claims against.
-/

/-! ## A020375.P15736521108511217861

`eq[36, A003285(A028310(n))]`
-/

namespace A020375.P15736521108511217861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020375.P15736521108511217861

/-!
# A020377: Numbers k such that the continued fraction for sqrt(k) has period 38.

The programs for A020377, there is no canonical definition to state claims against.
-/

/-! ## A020377.P3587456344631502063

`A114637(eq[38, A003285(n+1)])`
-/

namespace A020377.P3587456344631502063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020377.P3587456344631502063

/-!
# A020379: Numbers k such that the continued fraction for sqrt(k) has period 40.

The programs for A020379, there is no canonical definition to state claims against.
-/

/-! ## A020379.P3155301389692864541

`A020725(eq[40, A003285(n+1)])`
-/

namespace A020379.P3155301389692864541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020379.P3155301389692864541

/-!
# A020387: Numbers k such that the continued fraction for sqrt(k) has period 48.

The programs for A020387, there is no canonical definition to state claims against.
-/

/-! ## A020387.P14735921612191772220

`eq[48, A003285(A028310(n))]`
-/

namespace A020387.P14735921612191772220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020387.P14735921612191772220

