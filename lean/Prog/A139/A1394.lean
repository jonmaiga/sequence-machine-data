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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A139400: Number of spanning trees in the graph P_6 x P_n.

The programs for A139400, the canonical program `A139400.P14784510160108739967` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139400 has offset 1).

The definition of A139400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139400.P14784510160108739967

`A001906(n+1)*A001353(n+1)*A004254(n+1)*A161498(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139400

/-- `A001906(n+1)*A001353(n+1)*A004254(n+1)*A161498(n+1)` -/
def P14784510160108739967.Spec : Prop :=
  ∀ n, P14784510160108739967.a n = A139400 (n + 1)

theorem P14784510160108739967.correct : P14784510160108739967.Spec := by
  intro n
  simp only [A139400, Nat.add_sub_cancel]

end A139400

/-! ## A139400.P17235585434194631263

`A210724(Δ[n²])`
-/

namespace A139400.P17235585434194631263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139400.P17235585434194631263

namespace A139400

/-- `A210724(Δ[n²])` -/
def P17235585434194631263.Spec : Prop :=
  ∀ n, P17235585434194631263.a n = A139400 (n + 1)

end A139400

/-! ## A139400.P8943464868582717843

`record[A210724(A026741(n))]`
-/

namespace A139400.P8943464868582717843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210724 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139400.P8943464868582717843

namespace A139400

/-- `record[A210724(A026741(n))]` -/
def P8943464868582717843.Spec : Prop :=
  ∀ n, P8943464868582717843.a n = A139400 (n + 1)

end A139400

/-! ## A139400.P1341765792928254249

`A116469(A374007(n+1))`
-/

namespace A139400.P1341765792928254249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (A374007 (n + 1)).toNat

end

end A139400.P1341765792928254249

namespace A139400

/-- `A116469(A374007(n+1))` -/
def P1341765792928254249.Spec : Prop :=
  ∀ n, P1341765792928254249.a n = A139400 (n + 1)

end A139400

/-!
# A139401: If n is a square, a(n) is 0. Otherwise, a(n) is the smallest number k such that n is not a quadratic residue modulo k.

The programs for A139401, there is no canonical definition to state claims against.
-/

/-! ## A139401.P4708936603766323299

`dr(7*A200514(4*n+3))`
-/

namespace A139401.P4708936603766323299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (7 * A200514 (4 * n + 3))

end

end A139401.P4708936603766323299

/-! ## A139401.P10650230084260979905

`A130722(lcm(4, A200514(4*n+3)))`
-/

namespace A139401.P10650230084260979905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (Int.lcm 4 (A200514 (4 * n + 3)))

end

end A139401.P10650230084260979905

/-! ## A139401.P241158844340316626

`A026741(A026741(A200514(4*n+3)))`
-/

namespace A139401.P241158844340316626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A200514 (4 * n + 3)).toNat).toNat

end

end A139401.P241158844340316626

/-!
# A139402: Prime numbers k such that 8*k+1 and 8*k+3 are also primes.

The programs for A139402, the canonical program `A139402.P1211866769529008911` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139402 has offset 1).

The definition of A139402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139402.P5154429898519278867

`p?[A125822(n+1)]`
-/

namespace A139402.P5154429898519278867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139402.P5154429898519278867

namespace A139402

/-- `p?[A125822(n+1)]` -/
def P5154429898519278867.Spec : Prop :=
  ∀ n, P5154429898519278867.a n = A139402 (n + 1)

end A139402

/-! ## A139402.P15677252908843676725

`p?[3*A139534(n+1)+2]`
-/

namespace A139402.P15677252908843676725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139534 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139402.P15677252908843676725

namespace A139402

/-- `p?[3*A139534(n+1)+2]` -/
def P15677252908843676725.Spec : Prop :=
  ∀ n, P15677252908843676725.a n = A139402 (n + 1)

end A139402

/-! ## A139402.P3127831507254349935

`∩[A023228(n+1), A125822(n+1)]`
-/

namespace A139402.P3127831507254349935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P3127831507254349935

namespace A139402

/-- `∩[A023228(n+1), A125822(n+1)]` -/
def P3127831507254349935.Spec : Prop :=
  ∀ n, (P3127831507254349935.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P1211866769529008911

`∩[A023228(n+1), A023229(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139402

/-- `∩[A023228(n+1), A023229(n+1)]` -/
def P1211866769529008911.Spec : Prop :=
  ∀ n, (P1211866769529008911.a n : ℤ) = A139402 (n + 1)

theorem P1211866769529008911.correct : P1211866769529008911.Spec := by
  intro n
  simp only [A139402, Nat.add_sub_cancel]

end A139402

/-! ## A139402.P7031995461000332081

`∩[A023229(n+1), A125822(n+1)]`
-/

namespace A139402.P7031995461000332081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P7031995461000332081

namespace A139402

/-- `∩[A023229(n+1), A125822(n+1)]` -/
def P7031995461000332081.Spec : Prop :=
  ∀ n, (P7031995461000332081.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P5653317663250180211

`∩[A125822(n+1), A228424(n+1)]`
-/

namespace A139402.P5653317663250180211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P5653317663250180211

namespace A139402

/-- `∩[A125822(n+1), A228424(n+1)]` -/
def P5653317663250180211.Spec : Prop :=
  ∀ n, (P5653317663250180211.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P4874857080345743407

`∩[A003627(n+1), A125822(n+1)]`
-/

namespace A139402.P4874857080345743407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P4874857080345743407

namespace A139402

/-- `∩[A003627(n+1), A125822(n+1)]` -/
def P4874857080345743407.Spec : Prop :=
  ∀ n, (P4874857080345743407.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P4989499137817628276

`∩[A045309(n+1), A125822(n+1)]`
-/

namespace A139402.P4989499137817628276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P4989499137817628276

namespace A139402

/-- `∩[A045309(n+1), A125822(n+1)]` -/
def P4989499137817628276.Spec : Prop :=
  ∀ n, (P4989499137817628276.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P14711092403820980126

`∩[A045349(n+1), A125822(n+1)]`
-/

namespace A139402.P14711092403820980126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P14711092403820980126

namespace A139402

/-- `∩[A045349(n+1), A125822(n+1)]` -/
def P14711092403820980126.Spec : Prop :=
  ∀ n, (P14711092403820980126.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P1289561902579587845

`∩[A049596(n+1), A125822(n+1)]`
-/

namespace A139402.P1289561902579587845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P1289561902579587845

namespace A139402

/-- `∩[A049596(n+1), A125822(n+1)]` -/
def P1289561902579587845.Spec : Prop :=
  ∀ n, (P1289561902579587845.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P14646354434540321841

`∩[A040028(n+1), A125822(n+1)]`
-/

namespace A139402.P14646354434540321841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P14646354434540321841

namespace A139402

/-- `∩[A040028(n+1), A125822(n+1)]` -/
def P14646354434540321841.Spec : Prop :=
  ∀ n, (P14646354434540321841.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P6357947165814536538

`∩[A040036(n+1), A125822(n+1)]`
-/

namespace A139402.P6357947165814536538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P6357947165814536538

namespace A139402

/-- `∩[A040036(n+1), A125822(n+1)]` -/
def P6357947165814536538.Spec : Prop :=
  ∀ n, (P6357947165814536538.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P3264800243626777702

`∩[A040044(n+1), A125822(n+1)]`
-/

namespace A139402.P3264800243626777702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P3264800243626777702

namespace A139402

/-- `∩[A040044(n+1), A125822(n+1)]` -/
def P3264800243626777702.Spec : Prop :=
  ∀ n, (P3264800243626777702.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P3106358878553706500

`∩[A040046(n+1), A125822(n+1)]`
-/

namespace A139402.P3106358878553706500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P3106358878553706500

namespace A139402

/-- `∩[A040046(n+1), A125822(n+1)]` -/
def P3106358878553706500.Spec : Prop :=
  ∀ n, (P3106358878553706500.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P8524849245997868819

`∩[A040049(n+1), A125822(n+1)]`
-/

namespace A139402.P8524849245997868819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P8524849245997868819

namespace A139402

/-- `∩[A040049(n+1), A125822(n+1)]` -/
def P8524849245997868819.Spec : Prop :=
  ∀ n, (P8524849245997868819.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P18033802073048936952

`∩[A040054(n+1), A125822(n+1)]`
-/

namespace A139402.P18033802073048936952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P18033802073048936952

namespace A139402

/-- `∩[A040054(n+1), A125822(n+1)]` -/
def P18033802073048936952.Spec : Prop :=
  ∀ n, (P18033802073048936952.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P18101326143261530226

`∩[A040060(n+1), A125822(n+1)]`
-/

namespace A139402.P18101326143261530226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P18101326143261530226

namespace A139402

/-- `∩[A040060(n+1), A125822(n+1)]` -/
def P18101326143261530226.Spec : Prop :=
  ∀ n, (P18101326143261530226.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P2523562304689758259

`∩[A040062(n+1), A125822(n+1)]`
-/

namespace A139402.P2523562304689758259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P2523562304689758259

namespace A139402

/-- `∩[A040062(n+1), A125822(n+1)]` -/
def P2523562304689758259.Spec : Prop :=
  ∀ n, (P2523562304689758259.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P5885190282571728247

`∩[A040065(n+1), A125822(n+1)]`
-/

namespace A139402.P5885190282571728247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P5885190282571728247

namespace A139402

/-- `∩[A040065(n+1), A125822(n+1)]` -/
def P5885190282571728247.Spec : Prop :=
  ∀ n, (P5885190282571728247.a n : ℤ) = A139402 (n + 1)

end A139402

/-! ## A139402.P8523487190829734091

`∩[A040078(n+1), A125822(n+1)]`
-/

namespace A139402.P8523487190829734091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P8523487190829734091

namespace A139402

/-- `∩[A040078(n+1), A125822(n+1)]` -/
def P8523487190829734091.Spec : Prop :=
  ∀ n, (P8523487190829734091.a n : ℤ) = A139402 (n + 1)

end A139402

/-!
# A139403: Prime numbers k such that 8*k+3 and 8*k+5 are also primes.

The programs for A139403, the canonical program `A139403.P6848797502717185903` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139403 has offset 1).

The definition of A139403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139403.P6848797502717185903

`p?[A124192(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139403

/-- `p?[A124192(n+1)]` -/
def P6848797502717185903.Spec : Prop :=
  ∀ n, P6848797502717185903.a n = A139403 (n + 1)

theorem P6848797502717185903.correct : P6848797502717185903.Spec := by
  intro n
  simp only [A139403, Nat.add_sub_cancel]

end A139403

/-! ## A139403.P4186687923299122517

`∩[A023230(n+1), A124192(n+1)]`
-/

namespace A139403.P4186687923299122517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P4186687923299122517

namespace A139403

/-- `∩[A023230(n+1), A124192(n+1)]` -/
def P4186687923299122517.Spec : Prop :=
  ∀ n, (P4186687923299122517.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P4556566022873299982

`∩[A023229(n+1), A023230(n+1)]`
-/

namespace A139403.P4556566022873299982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P4556566022873299982

namespace A139403

/-- `∩[A023229(n+1), A023230(n+1)]` -/
def P4556566022873299982.Spec : Prop :=
  ∀ n, (P4556566022873299982.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P15558992300878553372

`∩[A023229(n+1), A124192(n+1)]`
-/

namespace A139403.P15558992300878553372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P15558992300878553372

namespace A139403

/-- `∩[A023229(n+1), A124192(n+1)]` -/
def P15558992300878553372.Spec : Prop :=
  ∀ n, (P15558992300878553372.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P3228338648317041532

`p?[floor(A045753(n+1)/2)]`
-/

namespace A139403.P3228338648317041532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045753 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139403.P3228338648317041532

namespace A139403

/-- `p?[floor(A045753(n+1)/2)]` -/
def P3228338648317041532.Spec : Prop :=
  ∀ n, P3228338648317041532.a n = A139403 (n + 1)

end A139403

/-! ## A139403.P3959042121081265905

`p?[floor(A241557(n+1)/4)]`
-/

namespace A139403.P3959042121081265905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241557 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139403.P3959042121081265905

namespace A139403

/-- `p?[floor(A241557(n+1)/4)]` -/
def P3959042121081265905.Spec : Prop :=
  ∀ n, P3959042121081265905.a n = A139403 (n + 1)

end A139403

/-! ## A139403.P15124628243672455931

`p?[floor(A071699(n+1)/8)]`
-/

namespace A139403.P15124628243672455931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071699 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139403.P15124628243672455931

namespace A139403

/-- `p?[floor(A071699(n+1)/8)]` -/
def P15124628243672455931.Spec : Prop :=
  ∀ n, P15124628243672455931.a n = A139403 (n + 1)

end A139403

/-! ## A139403.P12063824681254201732

`∩[A002476(n+1), A124192(n+1)]`
-/

namespace A139403.P12063824681254201732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P12063824681254201732

namespace A139403

/-- `∩[A002476(n+1), A124192(n+1)]` -/
def P12063824681254201732.Spec : Prop :=
  ∀ n, (P12063824681254201732.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P14734496799538959601

`∩[A007645(n+1), A124192(n+1)]`
-/

namespace A139403.P14734496799538959601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P14734496799538959601

namespace A139403

/-- `∩[A007645(n+1), A124192(n+1)]` -/
def P14734496799538959601.Spec : Prop :=
  ∀ n, (P14734496799538959601.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P1592185083928223835

`∩[A045331(n+1), A124192(n+1)]`
-/

namespace A139403.P1592185083928223835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P1592185083928223835

namespace A139403

/-- `∩[A045331(n+1), A124192(n+1)]` -/
def P1592185083928223835.Spec : Prop :=
  ∀ n, (P1592185083928223835.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P12710404407491926745

`∩[A045375(n+1), A124192(n+1)]`
-/

namespace A139403.P12710404407491926745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P12710404407491926745

namespace A139403

/-- `∩[A045375(n+1), A124192(n+1)]` -/
def P12710404407491926745.Spec : Prop :=
  ∀ n, (P12710404407491926745.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P4748222797781224919

`∩[A055664(n+1), A124192(n+1)]`
-/

namespace A139403.P4748222797781224919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P4748222797781224919

namespace A139403

/-- `∩[A055664(n+1), A124192(n+1)]` -/
def P4748222797781224919.Spec : Prop :=
  ∀ n, (P4748222797781224919.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P9040083332313106902

`∩[A124192(n+1), A279815(n+1)]`
-/

namespace A139403.P9040083332313106902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P9040083332313106902

namespace A139403

/-- `∩[A124192(n+1), A279815(n+1)]` -/
def P9040083332313106902.Spec : Prop :=
  ∀ n, (P9040083332313106902.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P7021429542161884119

`∩[A045398(n+1), A124192(n+1)]`
-/

namespace A139403.P7021429542161884119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P7021429542161884119

namespace A139403

/-- `∩[A045398(n+1), A124192(n+1)]` -/
def P7021429542161884119.Spec : Prop :=
  ∀ n, (P7021429542161884119.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P7049286707699732661

`∩[A040116(n+1), A124192(n+1)]`
-/

namespace A139403.P7049286707699732661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P7049286707699732661

namespace A139403

/-- `∩[A040116(n+1), A124192(n+1)]` -/
def P7049286707699732661.Spec : Prop :=
  ∀ n, (P7049286707699732661.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P1588960715528958879

`∩[A124192(n+1), A325143(n+1)]`
-/

namespace A139403.P1588960715528958879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P1588960715528958879

namespace A139403

/-- `∩[A124192(n+1), A325143(n+1)]` -/
def P1588960715528958879.Spec : Prop :=
  ∀ n, (P1588960715528958879.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P8456389490550103849

`∩[A042986(n+1), A124192(n+1)]`
-/

namespace A139403.P8456389490550103849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P8456389490550103849

namespace A139403

/-- `∩[A042986(n+1), A124192(n+1)]` -/
def P8456389490550103849.Spec : Prop :=
  ∀ n, (P8456389490550103849.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P13579850944148259215

`∩[A045321(n+1), A124192(n+1)]`
-/

namespace A139403.P13579850944148259215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P13579850944148259215

namespace A139403

/-- `∩[A045321(n+1), A124192(n+1)]` -/
def P13579850944148259215.Spec : Prop :=
  ∀ n, (P13579850944148259215.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P12709635186766866325

`∩[A124192(n+1), A154679(n+1)]`
-/

namespace A139403.P12709635186766866325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P12709635186766866325

namespace A139403

/-- `∩[A124192(n+1), A154679(n+1)]` -/
def P12709635186766866325.Spec : Prop :=
  ∀ n, (P12709635186766866325.a n : ℤ) = A139403 (n + 1)

end A139403

/-! ## A139403.P11986471399413149548

`∩[A124192(n+1), A042990(n)]`
-/

namespace A139403.P11986471399413149548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139403.P11986471399413149548

namespace A139403

/-- `∩[A124192(n+1), A042990(n)]` -/
def P11986471399413149548.Spec : Prop :=
  ∀ n, (P11986471399413149548.a n : ℤ) = A139403 (n + 1)

end A139403

/-!
# A139404: Numbers k such that 24*k + 5 and 24*k + 7 are twin primes.

The programs for A139404, the canonical program `A139404.P3972116341465074720` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139404 has offset 1).

The definition of A139404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139404.P3972116341465074720

`floor(A205172(n+1)/24)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A139404

/-- `floor(A205172(n+1)/24)` -/
def P3972116341465074720.Spec : Prop :=
  ∀ n, P3972116341465074720.a n = A139404 (n + 1)

theorem P3972116341465074720.correct : P3972116341465074720.Spec := by
  intro n
  simp only [A139404, Nat.add_sub_cancel]

end A139404

/-! ## A139404.P14821936753231368400

`round(A205172(n+1)/12)/A020639(A008458(n))`
-/

namespace A139404.P14821936753231368400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A139404.P14821936753231368400

namespace A139404

/-- `round(A205172(n+1)/12)/A020639(A008458(n))` -/
def P14821936753231368400.Spec : Prop :=
  ∀ n, P14821936753231368400.a n = (A139404 (n + 1) : ℚ)

end A139404

/-! ## A139404.P1340871339748368528

`round(A205172(n+1)/12)/A020639(A133265(n))`
-/

namespace A139404.P1340871339748368528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12) : ℚ) / (A020639 (A133265 n).toNat : ℚ)

end

end A139404.P1340871339748368528

namespace A139404

/-- `round(A205172(n+1)/12)/A020639(A133265(n))` -/
def P1340871339748368528.Spec : Prop :=
  ∀ n, P1340871339748368528.a n = (A139404 (n + 1) : ℚ)

end A139404

/-! ## A139404.P14256571706008709214

`∩[A139483(n+1), A139527(n+1)]`
-/

namespace A139404.P14256571706008709214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139404.P14256571706008709214

namespace A139404

/-- `∩[A139483(n+1), A139527(n+1)]` -/
def P14256571706008709214.Spec : Prop :=
  ∀ n, (P14256571706008709214.a n : ℤ) = A139404 (n + 1)

end A139404

/-! ## A139404.P16699234674284176961

`round(A205172(n+1)/12)/A001221(A077068(n+2))`
-/

namespace A139404.P16699234674284176961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12) : ℚ) / (A001221 (A077068 (n + 2)).toNat : ℚ)

end

end A139404.P16699234674284176961

namespace A139404

/-- `round(A205172(n+1)/12)/A001221(A077068(n+2))` -/
def P16699234674284176961.Spec : Prop :=
  ∀ n, P16699234674284176961.a n = (A139404 (n + 1) : ℚ)

end A139404

/-! ## A139404.P17565406556943018702

`round(A205172(n+1)/12)/A000005(A006562(n+1))`
-/

namespace A139404.P17565406556943018702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12) : ℚ) / (A000005 (A006562 (n + 1)).toNat : ℚ)

end

end A139404.P17565406556943018702

namespace A139404

/-- `round(A205172(n+1)/12)/A000005(A006562(n+1))` -/
def P17565406556943018702.Spec : Prop :=
  ∀ n, P17565406556943018702.a n = (A139404 (n + 1) : ℚ)

end A139404

/-! ## A139404.P14892932470839322483

`A004525(round(A205172(n+1)/12))`
-/

namespace A139404.P14892932470839322483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12)).toNat

end

end A139404.P14892932470839322483

namespace A139404

/-- `A004525(round(A205172(n+1)/12))` -/
def P14892932470839322483.Spec : Prop :=
  ∀ n, P14892932470839322483.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P2376463535595278483

`A025480(round(A205172(n+1)/12))`
-/

namespace A139404.P2376463535595278483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12)).toNat

end

end A139404.P2376463535595278483

namespace A139404

/-- `A025480(round(A205172(n+1)/12))` -/
def P2376463535595278483.Spec : Prop :=
  ∀ n, P2376463535595278483.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P7922264898402346259

`A078898(round(A205172(n+1)/12))`
-/

namespace A139404.P7922264898402346259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A205172 (n + 1) : ℚ) / 12)).toNat

end

end A139404.P7922264898402346259

namespace A139404

/-- `A078898(round(A205172(n+1)/12))` -/
def P7922264898402346259.Spec : Prop :=
  ∀ n, P7922264898402346259.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P6367277686476170850

`eq[2, A166597(A017581(2*n))]`
-/

namespace A139404.P6367277686476170850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A017581 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139404.P6367277686476170850

namespace A139404

/-- `eq[2, A166597(A017581(2*n))]` -/
def P6367277686476170850.Spec : Prop :=
  ∀ n, (P6367277686476170850.a n : ℤ) = A139404 (n + 1)

end A139404

/-! ## A139404.P12401831944159797753

`eq[1, A182481(4*n+1)]`
-/

namespace A139404.P12401831944159797753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139404.P12401831944159797753

namespace A139404

/-- `eq[1, A182481(4*n+1)]` -/
def P12401831944159797753.Spec : Prop :=
  ∀ n, (P12401831944159797753.a n : ℤ) = A139404 (n + 1)

end A139404

/-! ## A139404.P13941356895149466290

`eq[2, A145193(4*n+1)]`
-/

namespace A139404.P13941356895149466290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139404.P13941356895149466290

namespace A139404

/-- `eq[2, A145193(4*n+1)]` -/
def P13941356895149466290.Spec : Prop :=
  ∀ n, (P13941356895149466290.a n : ℤ) = A139404 (n + 1)

end A139404

/-! ## A139404.P11363273459504175490

`record[A025480(A000265(A002822(n+1)))]`
-/

namespace A139404.P11363273459504175490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000265 (A002822 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139404.P11363273459504175490

namespace A139404

/-- `record[A025480(A000265(A002822(n+1)))]` -/
def P11363273459504175490.Spec : Prop :=
  ∀ n, P11363273459504175490.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P7598548253809092496

`record[A025480(A004525(A153196(n+1)))]`
-/

namespace A139404.P7598548253809092496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004525 (A153196 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139404.P7598548253809092496

namespace A139404

/-- `record[A025480(A004525(A153196(n+1)))]` -/
def P7598548253809092496.Spec : Prop :=
  ∀ n, P7598548253809092496.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P15943535719809259350

`record[A025480(A000265(A167379(n+1)))]`
-/

namespace A139404.P15943535719809259350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000265 (A167379 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139404.P15943535719809259350

namespace A139404

/-- `record[A025480(A000265(A167379(n+1)))]` -/
def P15943535719809259350.Spec : Prop :=
  ∀ n, P15943535719809259350.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P127944005550968107

`record[A025480(A093411(A014574(n+1)))]`
-/

namespace A139404.P127944005550968107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A093411 (A014574 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139404.P127944005550968107

namespace A139404

/-- `record[A025480(A093411(A014574(n+1)))]` -/
def P127944005550968107.Spec : Prop :=
  ∀ n, P127944005550968107.a n = A139404 (n + 1)

end A139404

/-! ## A139404.P17930901808862629856

`A002264(record[A003602(A123986(n+1))])`
-/

namespace A139404.P17930901808862629856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A123986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139404.P17930901808862629856

namespace A139404

/-- `A002264(record[A003602(A123986(n+1))])` -/
def P17930901808862629856.Spec : Prop :=
  ∀ n, P17930901808862629856.a n = A139404 (n + 1)

end A139404

/-!
# A139405: Numbers k such that 8*k+1 and 8*k+7 are primes.

The programs for A139405, the canonical program `A139405.P15348069204411684963` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139405 has offset 1).

The definition of A139405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139405.P16859829099706062238

`floor(p?[A186304(n+1)-4]/8)`
-/

namespace A139405.P16859829099706062238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A139405.P16859829099706062238

namespace A139405

/-- `floor(p?[A186304(n+1)-4]/8)` -/
def P16859829099706062238.Spec : Prop :=
  ∀ n, P16859829099706062238.a n = A139405 (n + 1)

end A139405

/-! ## A139405.P13363110716796969719

`floor(p?[A007522(n+2)-6]/8)`
-/

namespace A139405.P13363110716796969719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A139405.P13363110716796969719

namespace A139405

/-- `floor(p?[A007522(n+2)-6]/8)` -/
def P13363110716796969719.Spec : Prop :=
  ∀ n, P13363110716796969719.a n = A139405 (n + 1)

end A139405

/-! ## A139405.P2695932996408467766

`round(p?[A007522(n+1)-6]/8)`
-/

namespace A139405.P2695932996408467766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8)

end

end A139405.P2695932996408467766

namespace A139405

/-- `round(p?[A007522(n+1)-6]/8)` -/
def P2695932996408467766.Spec : Prop :=
  ∀ n, P2695932996408467766.a n = A139405 (n + 1)

end A139405

/-! ## A139405.P15348069204411684963

`floor(p?[xor(6, A045382(n+1))]/8)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139405

/-- `floor(p?[xor(6, A045382(n+1))]/8)` -/
def P15348069204411684963.Spec : Prop :=
  ∀ n, P15348069204411684963.a n = A139405 (n + 1)

theorem P15348069204411684963.correct : P15348069204411684963.Spec := by
  intro n
  simp only [A139405, Nat.add_sub_cancel]

end A139405

/-! ## A139405.P16816017911396631443

`∩[A005123(n+1), A139487(n+1)]`
-/

namespace A139405.P16816017911396631443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139405.P16816017911396631443

namespace A139405

/-- `∩[A005123(n+1), A139487(n+1)]` -/
def P16816017911396631443.Spec : Prop :=
  ∀ n, (P16816017911396631443.a n : ℤ) = A139405 (n + 1)

end A139405

/-! ## A139405.P8011629852661331282

`round(p?[A186304(A028310(n))-4]/8)`
-/

namespace A139405.P8011629852661331282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (A028310 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8)

end

end A139405.P8011629852661331282

namespace A139405

/-- `round(p?[A186304(A028310(n))-4]/8)` -/
def P8011629852661331282.Spec : Prop :=
  ∀ n, P8011629852661331282.a n = A139405 (n + 1)

end A139405

/-! ## A139405.P3601216153296604979

`∩[A005122(n+1)-1, A005123(n+1)]`
-/

namespace A139405.P3601216153296604979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139405.P3601216153296604979

namespace A139405

/-- `∩[A005122(n+1)-1, A005123(n+1)]` -/
def P3601216153296604979.Spec : Prop :=
  ∀ n, (P3601216153296604979.a n : ℤ) = A139405 (n + 1)

end A139405

/-! ## A139405.P17425627610151050603

`eq[3, A264526(4*n+2)]`
-/

namespace A139405.P17425627610151050603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264526 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139405.P17425627610151050603

namespace A139405

/-- `eq[3, A264526(4*n+2)]` -/
def P17425627610151050603.Spec : Prop :=
  ∀ n, (P17425627610151050603.a n : ℤ) = A139405 (n + 1)

end A139405

/-! ## A139405.P3569131421360631011

`eq[A198020(4*n+3), A198020(4*n)]`
-/

namespace A139405.P3569131421360631011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139405.P3569131421360631011

namespace A139405

/-- `eq[A198020(4*n+3), A198020(4*n)]` -/
def P3569131421360631011.Spec : Prop :=
  ∀ n, (P3569131421360631011.a n : ℤ) = A139405 (n + 1)

end A139405

/-!
# A139406: Numbers k such that 8*k+1 and 8*k+5 are primes.

The programs for A139406, the canonical program `A139406.P4242831370835616806` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139406 has offset 1).

The definition of A139406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139406.P4242831370835616806

`∩[A005123(n+1), A105133(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139406

/-- `∩[A005123(n+1), A105133(n+1)]` -/
def P4242831370835616806.Spec : Prop :=
  ∀ n, (P4242831370835616806.a n : ℤ) = A139406 (n + 1)

theorem P4242831370835616806.correct : P4242831370835616806.Spec := by
  intro n
  simp only [A139406, Nat.add_sub_cancel]

end A139406

/-! ## A139406.P2298843448283852319

`record[A260739(A254010(n+3))]`
-/

namespace A139406.P2298843448283852319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A254010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139406.P2298843448283852319

namespace A139406

/-- `record[A260739(A254010(n+3))]` -/
def P2298843448283852319.Spec : Prop :=
  ∀ n, P2298843448283852319.a n = A139406 (n + 1)

end A139406

/-! ## A139406.P7839819995648017933

`eq[A116982(2*n+1), A175833(n)]`
-/

namespace A139406.P7839819995648017933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139406.P7839819995648017933

namespace A139406

/-- `eq[A116982(2*n+1), A175833(n)]` -/
def P7839819995648017933.Spec : Prop :=
  ∀ n, (P7839819995648017933.a n : ℤ) = A139406 (n + 1)

end A139406

/-! ## A139406.P6845647329362739168

`eq[A116982(2*n+1), A173259(2*n+1)]`
-/

namespace A139406.P6845647329362739168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139406.P6845647329362739168

namespace A139406

/-- `eq[A116982(2*n+1), A173259(2*n+1)]` -/
def P6845647329362739168.Spec : Prop :=
  ∀ n, (P6845647329362739168.a n : ℤ) = A139406 (n + 1)

end A139406

/-! ## A139406.P1413999631672615957

`eq[4, A096501(A004770(n+1))]`
-/

namespace A139406.P1413999631672615957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A004770 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139406.P1413999631672615957

namespace A139406

/-- `eq[4, A096501(A004770(n+1))]` -/
def P1413999631672615957.Spec : Prop :=
  ∀ n, (P1413999631672615957.a n : ℤ) = A139406 (n + 1)

end A139406

/-! ## A139406.P9183168664910092692

`A008486(eq[4, A240697(A017569(n))])`
-/

namespace A139406.P9183168664910092692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (A017569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139406.P9183168664910092692

namespace A139406

/-- `A008486(eq[4, A240697(A017569(n))])` -/
def P9183168664910092692.Spec : Prop :=
  ∀ n, P9183168664910092692.a n = A139406 (n + 1)

end A139406

/-! ## A139406.P1298739381609310152

`eq[4, A336853(A017077(n))]`
-/

namespace A139406.P1298739381609310152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139406.P1298739381609310152

namespace A139406

/-- `eq[4, A336853(A017077(n))]` -/
def P1298739381609310152.Spec : Prop :=
  ∀ n, (P1298739381609310152.a n : ℤ) = A139406 (n + 1)

end A139406

/-!
# A139407: Numbers k such that 8*k+3 and 8*k+7 are primes.

The programs for A139407, the canonical program `A139407.P14555283574554252430` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139407 has offset 1).

The definition of A139407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139407.P14555283574554252430

`∩[A005124(n+1), A139487(n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139407

/-- `∩[A005124(n+1), A139487(n+2)]` -/
def P14555283574554252430.Spec : Prop :=
  ∀ n, (P14555283574554252430.a n : ℤ) = A139407 (n + 1)

theorem P14555283574554252430.correct : P14555283574554252430.Spec := by
  intro n
  simp only [A139407, Nat.add_sub_cancel]

end A139407

/-! ## A139407.P8299565052086749030

`eq[A116982(2*n+1), A175833(n+1)]`
-/

namespace A139407.P8299565052086749030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P8299565052086749030

namespace A139407

/-- `eq[A116982(2*n+1), A175833(n+1)]` -/
def P8299565052086749030.Spec : Prop :=
  ∀ n, (P8299565052086749030.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P17019303630574333595

`eq[A116982(2*n+1), A173259(n+2)]`
-/

namespace A139407.P17019303630574333595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P17019303630574333595

namespace A139407

/-- `eq[A116982(2*n+1), A173259(n+2)]` -/
def P17019303630574333595.Spec : Prop :=
  ∀ n, (P17019303630574333595.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P8053018873180528187

`eq[A005408(A214834(2*(n+1))), A214834(2*(n+2))]`
-/

namespace A139407.P8053018873180528187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A214834 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P8053018873180528187

namespace A139407

/-- `eq[A005408(A214834(2*(n+1))), A214834(2*(n+2))]` -/
def P8053018873180528187.Spec : Prop :=
  ∀ n, (P8053018873180528187.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P2239896182150953064

`eq[A245203(2*n+1)+A245203(2*n), A000007(n)]`
-/

namespace A139407.P2239896182150953064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n + 1) + A245203 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P2239896182150953064

namespace A139407

/-- `eq[A245203(2*n+1)+A245203(2*n), A000007(n)]` -/
def P2239896182150953064.Spec : Prop :=
  ∀ n, (P2239896182150953064.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P12375885599618456724

`eq[A245203(2*n+1)+A245203(2*n), A000038(n)]`
-/

namespace A139407.P12375885599618456724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n + 1) + A245203 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P12375885599618456724

namespace A139407

/-- `eq[A245203(2*n+1)+A245203(2*n), A000038(n)]` -/
def P12375885599618456724.Spec : Prop :=
  ∀ n, (P12375885599618456724.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P15496413044712943747

`eq[2, A046067(2*n+1)+A046067(2*(n+1))]`
-/

namespace A139407.P15496413044712943747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (2 * n + 1) + A046067 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139407.P15496413044712943747

namespace A139407

/-- `eq[2, A046067(2*n+1)+A046067(2*(n+1))]` -/
def P15496413044712943747.Spec : Prop :=
  ∀ n, (P15496413044712943747.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P13008057241159682720

`eq[A000124(A255274(4*n+3)), A255274(4*n+2)]`
-/

namespace A139407.P13008057241159682720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A255274 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139407.P13008057241159682720

namespace A139407

/-- `eq[A000124(A255274(4*n+3)), A255274(4*n+2)]` -/
def P13008057241159682720.Spec : Prop :=
  ∀ n, (P13008057241159682720.a n : ℤ) = A139407 (n + 1)

end A139407

/-! ## A139407.P12712432991907707145

`eq[4, A346239(A017101(n))]`
-/

namespace A139407.P12712432991907707145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346239 (A017101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139407.P12712432991907707145

namespace A139407

/-- `eq[4, A346239(A017101(n))]` -/
def P12712432991907707145.Spec : Prop :=
  ∀ n, (P12712432991907707145.a n : ℤ) = A139407 (n + 1)

end A139407

/-!
# A139413: Triangle read by rows: row n gives the numbers A010888(n*k) for k = 1..n.

The programs for A139413, the canonical program `A139413.P8227947109060917718` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139413 has offset 1).

The definition of A139413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139413.P11487080185676405154

`dr(A075362(n+1))`
-/

namespace A139413.P11487080185676405154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A075362 (n + 1))

end

end A139413.P11487080185676405154

namespace A139413

/-- `dr(A075362(n+1))` -/
def P11487080185676405154.Spec : Prop :=
  ∀ n, (P11487080185676405154.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P8956992299755635494

`dr(A110749(n+1))`
-/

namespace A139413.P8956992299755635494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A110749 (n + 1))

end

end A139413.P8956992299755635494

namespace A139413

/-- `dr(A110749(n+1))` -/
def P8956992299755635494.Spec : Prop :=
  ∀ n, (P8956992299755635494.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P17166315374598142895

`dr(A223544(n+1)+1)`
-/

namespace A139413.P17166315374598142895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A223544 (n + 1) + 1)

end

end A139413.P17166315374598142895

namespace A139413

/-- `dr(A223544(n+1)+1)` -/
def P17166315374598142895.Spec : Prop :=
  ∀ n, (P17166315374598142895.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P8227947109060917718

`dr(∑[A010054(n)]*A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139413

/-- `dr(∑[A010054(n)]*A002260(n+1))` -/
def P8227947109060917718.Spec : Prop :=
  ∀ n, (P8227947109060917718.a n : ℤ) = A139413 (n + 1)

theorem P8227947109060917718.correct : P8227947109060917718.Spec := by
  intro n
  simp only [A139413, Nat.add_sub_cancel]

end A139413

/-! ## A139413.P10622861669188709816

`dr(A002024(n+1)*A002260(n+1))`
-/

namespace A139413.P10622861669188709816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002024 (n + 1) * A002260 (n + 1))

end

end A139413.P10622861669188709816

namespace A139413

/-- `dr(A002024(n+1)*A002260(n+1))` -/
def P10622861669188709816.Spec : Prop :=
  ∀ n, (P10622861669188709816.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P6969034939113866990

`dr((A003056(n)+1)*A002260(n+1))`
-/

namespace A139413.P6969034939113866990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A003056 n + 1) * A002260 (n + 1))

end

end A139413.P6969034939113866990

namespace A139413

/-- `dr((A003056(n)+1)*A002260(n+1))` -/
def P6969034939113866990.Spec : Prop :=
  ∀ n, (P6969034939113866990.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P16713495329653398648

`dr(A189151(n+1)-A001283(n+2))`
-/

namespace A139413.P16713495329653398648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A189151 (n + 1) - A001283 (n + 2))

end

end A139413.P16713495329653398648

namespace A139413

/-- `dr(A189151(n+1)-A001283(n+2))` -/
def P16713495329653398648.Spec : Prop :=
  ∀ n, (P16713495329653398648.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P2659539259403934746

`dr((1-A003057(n+2))*A002260(n+1))`
-/

namespace A139413.P2659539259403934746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((1 - A003057 (n + 2)) * A002260 (n + 1))

end

end A139413.P2659539259403934746

namespace A139413

/-- `dr((1-A003057(n+2))*A002260(n+1))` -/
def P2659539259403934746.Spec : Prop :=
  ∀ n, (P2659539259403934746.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P7089201753090461748

`dr((A025581(n)+A002260(n+1))*A002260(n+1))`
-/

namespace A139413.P7089201753090461748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A025581 n + A002260 (n + 1)) * A002260 (n + 1))

end

end A139413.P7089201753090461748

namespace A139413

/-- `dr((A025581(n)+A002260(n+1))*A002260(n+1))` -/
def P7089201753090461748.Spec : Prop :=
  ∀ n, (P7089201753090461748.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P4535612052657386202

`dr(A279417(n+1)+A279416(n+1))`
-/

namespace A139413.P4535612052657386202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A279417 (n + 1) + A279416 (n + 1))

end

end A139413.P4535612052657386202

namespace A139413

/-- `dr(A279417(n+1)+A279416(n+1))` -/
def P4535612052657386202.Spec : Prop :=
  ∀ n, (P4535612052657386202.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P5464503433666640362

`A177274(A223544(n+1))`
-/

namespace A139413.P5464503433666640362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 (A223544 (n + 1)).toNat

end

end A139413.P5464503433666640362

namespace A139413

/-- `A177274(A223544(n+1))` -/
def P5464503433666640362.Spec : Prop :=
  ∀ n, P5464503433666640362.a n = A139413 (n + 1)

end A139413

/-! ## A139413.P1603262696939224744

`dr(A000194(Δ[n²])*A002260(n+1))`
-/

namespace A139413.P1603262696939224744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A002260 (n + 1))

end

end A139413.P1603262696939224744

namespace A139413

/-- `dr(A000194(Δ[n²])*A002260(n+1))` -/
def P1603262696939224744.Spec : Prop :=
  ∀ n, (P1603262696939224744.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P16290031930618313240

`dr(A279409(A185870(n+1)))`
-/

namespace A139413.P16290031930618313240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A279409 (A185870 (n + 1)).toNat)

end

end A139413.P16290031930618313240

namespace A139413

/-- `dr(A279409(A185870(n+1)))` -/
def P16290031930618313240.Spec : Prop :=
  ∀ n, (P16290031930618313240.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P7311513600987308210

`dr(A279409(A185871(n+1)))`
-/

namespace A139413.P7311513600987308210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A279409 (A185871 (n + 1)).toNat)

end

end A139413.P7311513600987308210

namespace A139413

/-- `dr(A279409(A185871(n+1)))` -/
def P7311513600987308210.Spec : Prop :=
  ∀ n, (P7311513600987308210.a n : ℤ) = A139413 (n + 1)

end A139413

/-! ## A139413.P12680496225491508985

`dr(A003963(A087112(n+1)))`
-/

namespace A139413.P12680496225491508985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003963 (A087112 (n + 1)).toNat)

end

end A139413.P12680496225491508985

namespace A139413

/-- `dr(A003963(A087112(n+1)))` -/
def P12680496225491508985.Spec : Prop :=
  ∀ n, (P12680496225491508985.a n : ℤ) = A139413 (n + 1)

end A139413

/-!
# A139414: a(x) = if one of {4x^2 - 146x + 1373, 4x^2 - 144x + 1459, 4x^2 - 142x + 1301, 4x^2 - 140x + 1877} is prime, then pick that prime in sequence.

The programs for A139414, there is no canonical definition to state claims against.
-/

/-! ## A139414.P7299108240290112106

`filter[A155925(n), A014578(#)]`
-/

namespace A139414.P7299108240290112106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A139414.P7299108240290112106

/-! ## A139414.P239522529082760012

`filter[A155925(n), A011558(#)]`
-/

namespace A139414.P239522529082760012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A139414.P239522529082760012

/-! ## A139414.P13110863154928890963

`filter[A155925(n), A014306(#)]`
-/

namespace A139414.P13110863154928890963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A139414.P13110863154928890963

/-! ## A139414.P14882516103479102942

`A064446(A155925(n))`
-/

namespace A139414.P14882516103479102942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (A155925 n).toNat

end

end A139414.P14882516103479102942

/-! ## A139414.P822757440146475679

`filter[A155925(n), A000035(#)]`
-/

namespace A139414.P822757440146475679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A139414.P822757440146475679

/-! ## A139414.P17962382905363866266

`filter[A155925(n), A010055(#)]`
-/

namespace A139414.P17962382905363866266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A139414.P17962382905363866266

/-! ## A139414.P12736706732866463469

`filter[A155925(n), A011655(#)]`
-/

namespace A139414.P12736706732866463469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A139414.P12736706732866463469

/-! ## A139414.P6511277158382906947

`filter[A155925(n), A023532(#)]`
-/

namespace A139414.P6511277158382906947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A139414.P6511277158382906947

/-! ## A139414.P7382784796803037453

`filter[A155925(n), A043545(#)]`
-/

namespace A139414.P7382784796803037453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A139414.P7382784796803037453

/-! ## A139414.P4079807465445384778

`filter[A155925(n), A080339(#)]`
-/

namespace A139414.P4079807465445384778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A139414.P4079807465445384778

/-!
# A139415: Number of preferential arrangements (or hierarchical orderings) on the disconnected graphs on n unlabeled nodes.

The programs for A139415, there is no canonical definition to state claims against.
-/

/-! ## A139415.P13899221004568075118

`A000719(n)*A011782(n)`
-/

namespace A139415.P13899221004568075118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n * A011782 n

end

end A139415.P13899221004568075118

/-! ## A139415.P14107926647810839591

`A000079(n)/2*A000719(n)`
-/

namespace A139415.P14107926647810839591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A000719 n : ℚ)

end

end A139415.P14107926647810839591

/-! ## A139415.P13183409301064141094

`2^A023443(n)*A000719(n)`
-/

namespace A139415.P13183409301064141094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023443 n : ℤ) * (A000719 n : ℚ)

end

end A139415.P13183409301064141094

/-! ## A139415.P8992035761880768795

`A000719(n)*A130321(A000124(n))`
-/

namespace A139415.P8992035761880768795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n * A130321 (A000124 n).toNat

end

end A139415.P8992035761880768795

/-! ## A139415.P9909319811817069168

`A000719(n)*A126064(A212342(n))`
-/

namespace A139415.P9909319811817069168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n * A126064 (A212342 n).toNat

end

end A139415.P9909319811817069168

/-!
# A139416: a(n) is the smallest positive integer k such that d(k) = d(k+2*n) = 2*n, where d(m) (A000005) is the number of positive divisors of m, or 0 if no such k exists.

The programs for A139416, there is no canonical definition to state claims against.
-/

/-! ## A139416.P6422805774463089740

`A282231(A324741(n)^A004525(n))`
-/

namespace A139416.P6422805774463089740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282231 (SequenceMachineLib.roundAway ((A324741 n : ℚ) ^ (A004525 n : ℤ))).toNat

end

end A139416.P6422805774463089740

/-!
# A139417: Sum of digits of the square of the sum of the preceding numbers.

The programs for A139417, there is no canonical definition to state claims against.
-/

/-! ## A139417.P7075525675733815909

`∑{digits}[A033298(A028310(n))², #]`
-/

namespace A139417.P7075525675733815909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139417.P7075525675733815909

/-! ## A139417.P874459373980750293

`A000007(n)+Δ[A033298(A028310(n))]`
-/

namespace A139417.P874459373980750293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A139417.P874459373980750293

/-! ## A139417.P13391404037787483340

`A033298(n+1)+A000007(n)-A033298(A028310(n))`
-/

namespace A139417.P13391404037787483340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (n + 1) + (A000007 n - A033298 (A028310 n).toNat)

end

end A139417.P13391404037787483340

/-! ## A139417.P12926456991273478421

`A033298(n+1)+A033298(A028310(n))*A057428(n)`
-/

namespace A139417.P12926456991273478421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (n + 1) + A033298 (A028310 n).toNat * A057428 n

end

end A139417.P12926456991273478421

/-! ## A139417.P11353985641227159347

`A033298(n+1)*A054977(n)-A033298(A028310(n))`
-/

namespace A139417.P11353985641227159347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (n + 1) * A054977 n - A033298 (A028310 n).toNat

end

end A139417.P11353985641227159347

/-! ## A139417.P13763295389510125782

`A033298(n+1)-A033298(A028310(n))*A057427(n)`
-/

namespace A139417.P13763295389510125782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (n + 1) - A033298 (A028310 n).toNat * A057427 n

end

end A139417.P13763295389510125782

/-! ## A139417.P13811675770308786629

`Δ[A057427(n)+A033298(A028310(n))]`
-/

namespace A139417.P13811675770308786629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A033298 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139417.P13811675770308786629

/-! ## A139417.P8825332103592871165

`Δ[A033298(A028310(n))-A054977(n)]`
-/

namespace A139417.P8825332103592871165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139417.P8825332103592871165

/-! ## A139417.P3968765968165875070

`Δ[A033298(A028310(n))-A057428(n)]`
-/

namespace A139417.P3968765968165875070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139417.P3968765968165875070

/-! ## A139417.P2024695293068507874

`Δ[A033298(A028310(n))-A000007(2*n)]`
-/

namespace A139417.P2024695293068507874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat - A000007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139417.P2024695293068507874

/-! ## A139417.P1018063614325171387

`Δ[A033298(A028310(n))%A000079(n)]`
-/

namespace A139417.P1018063614325171387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033298 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139417.P1018063614325171387

/-! ## A139417.P975438939566053593

`Δ[A033298(A028310(n))]+A000005(n²+1)%2`
-/

namespace A139417.P975438939566053593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033298 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A139417.P975438939566053593

/-!
# A139418: Complement of A136120.

The programs for A139418, there is no canonical definition to state claims against.
-/

/-! ## A139418.P5490942750614181608

`comp[A139420(n+1)-2]`
-/

namespace A139418.P5490942750614181608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139420 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139418.P5490942750614181608

/-! ## A139418.P10396653428449178388

`comp[A136120(n+1)-1]+1`
-/

namespace A139418.P10396653428449178388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139418.P10396653428449178388

/-! ## A139418.P17696768074240933844

`eq[char[A136120(n+1)], A000007(n)]`
-/

namespace A139418.P17696768074240933844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139418.P17696768074240933844

/-! ## A139418.P12790382186714078207

`eq[char[A136120(n+1)], A000038(n)]`
-/

namespace A139418.P12790382186714078207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139418.P12790382186714078207

/-! ## A139418.P15744550591047972558

`comp[A136120(A004736(n+1))%(n+1)]`
-/

namespace A139418.P15744550591047972558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136120 (A004736 (n + 1)).toNat) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139418.P15744550591047972558

/-! ## A139418.P5801146605161594392

`eq[char[A136120(n+1)], A154955(n+1)]`
-/

namespace A139418.P5801146605161594392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139418.P5801146605161594392

/-! ## A139418.P3510972286198531095

`eq[char[A136120(n+1)], A036987(2*n)]`
-/

namespace A139418.P3510972286198531095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139418.P3510972286198531095

/-! ## A139418.P9931545994023634739

`eq[2-A000122(n²), char[A136120(n+1)]]`
-/

namespace A139418.P9931545994023634739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A139418.P9931545994023634739

/-! ## A139418.P12659767442232735149

`eq[char[A136120(n+1)], A151933(n)]`
-/

namespace A139418.P12659767442232735149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139418.P12659767442232735149

/-!
# A139419: a(n) = first term of the n-th run of consecutive numbers in A136120.

The programs for A139419, there is no canonical definition to state claims against.
-/

/-! ## A139419.P4669669456366432530

`A136120(A136120(n+1)+n-A139420(n+1)+1)`
-/

namespace A139419.P4669669456366432530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (A136120 (n + 1) + ((n : ℤ) - A139420 (n + 1)) + 1).toNat

end

end A139419.P4669669456366432530

/-! ## A139419.P3795729877338073390

`record[A136120(n+1)%A000124(A139420(n+1))]`
-/

namespace A139419.P3795729877338073390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136120 (n + 1)) (A000124 (A139420 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139419.P3795729877338073390

/-! ## A139419.P15662731777321835938

`record[A139420(n+3)-A139420(n+1)]`
-/

namespace A139419.P15662731777321835938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139420 (n + 3) - A139420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139419.P15662731777321835938

/-!
# A139420: a(n) = length of n-th run of consecutive numbers in A136120.

The programs for A139420, there is no canonical definition to state claims against.
-/

/-! ## A139420.P17999054508305260883

`Δ[A136120(A028310(n))]+1`
-/

namespace A139420.P17999054508305260883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A139420.P17999054508305260883

/-! ## A139420.P13602707444946702623

`Δ[A139419(n+1)]-A136120(n+1)`
-/

namespace A139420.P13602707444946702623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136120 (n + 1)

end

end A139420.P13602707444946702623

/-! ## A139420.P15246314528822088350

`Δ[A136120(A028310(n))-A001489(n)]`
-/

namespace A139420.P15246314528822088350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (A028310 n).toNat - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139420.P15246314528822088350

/-! ## A139420.P1575190939909224478

`Δ[A136120(A028310(n))-A024000(n)]`
-/

namespace A139420.P1575190939909224478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (A028310 n).toNat - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139420.P1575190939909224478

/-! ## A139420.P11053993362630588794

`A136120(n+1)+1-A136120(A028310(n))`
-/

namespace A139420.P11053993362630588794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136120 (n + 1) + (1 - A136120 (A028310 n).toNat)

end

end A139420.P11053993362630588794

/-! ## A139420.P11838027325239543137

`A139419(n+2)-(A139419(n+1)+A136120(n+1))`
-/

namespace A139420.P11838027325239543137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139419 (n + 2) - (A139419 (n + 1) + A136120 (n + 1))

end

end A139420.P11838027325239543137

/-!
# A139421: a(1)=1; for n>1, a(n) = largest prime divisor of n!!.

The programs for A139421, the canonical program `A139421.P14238100739878023942` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139421 has offset 1).

The definition of A139421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139421.P14238100739878023942

`A006530(A006882(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139421

/-- `A006530(A006882(n+1))` -/
def P14238100739878023942.Spec : Prop :=
  ∀ n, P14238100739878023942.a n = A139421 (n + 1)

theorem P14238100739878023942.correct : P14238100739878023942.Spec := by
  intro n
  simp only [A139421, Nat.add_sub_cancel]

end A139421

/-! ## A139421.P9468121044167985317

`A136548(A212831(n+1)+1)`
-/

namespace A139421.P9468121044167985317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A212831 (n + 1) + 1).toNat

end

end A139421.P9468121044167985317

namespace A139421

/-- `A136548(A212831(n+1)+1)` -/
def P9468121044167985317.Spec : Prop :=
  ∀ n, P9468121044167985317.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P10391900718723179772

`A136548(gcd(n+1, ∑[n]*A136548(n+2))+1)`
-/

namespace A139421.P10391900718723179772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (Int.gcd (n + 1 : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A136548 (n + 2)) + 1)

end

end A139421.P10391900718723179772

namespace A139421

/-- `A136548(gcd(n+1, ∑[n]*A136548(n+2))+1)` -/
def P10391900718723179772.Spec : Prop :=
  ∀ n, P10391900718723179772.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P18357899908599994158

`A006530(a(A289207(n))*A006530(n+1))` with `a(0)=1`
-/

namespace A139421.P18357899908599994158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (A289207 n).toNat * A006530 (n + 1)).toNat

end

end A139421.P18357899908599994158

namespace A139421

/-- `A006530(a(A289207(n))*A006530(n+1))` -/
def P18357899908599994158.Spec : Prop :=
  ∀ n, P18357899908599994158.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P8309061979182872610

`A006530((n+1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A139421.P8309061979182872610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 ((n + 1 : ℤ) * a (n - 2)).toNat

end

end A139421.P8309061979182872610

namespace A139421

/-- `A006530((n+1)*a(n-2))` -/
def P8309061979182872610.Spec : Prop :=
  ∀ n, P8309061979182872610.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P2859443050505010819

`A006530(lcm(n+1, a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A139421.P2859443050505010819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (Int.lcm (n + 1 : ℤ) (a (n - 2)))

end

end A139421.P2859443050505010819

namespace A139421

/-- `A006530(lcm(n+1, a(n-2)))` -/
def P2859443050505010819.Spec : Prop :=
  ∀ n, P2859443050505010819.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P16661025248831874457

`A006530(floor((2*n-(n-1))*a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A139421.P16661025248831874457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 2)).toNat

end

end A139421.P16661025248831874457

namespace A139421

/-- `A006530(floor((2*n-(n-1))*a(n-2)))` -/
def P16661025248831874457.Spec : Prop :=
  ∀ n, P16661025248831874457.a n = A139421 (n + 1)

end A139421

/-! ## A139421.P4608318752856106852

`A006530((2*n-(n-1))*A006530(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A139421.P4608318752856106852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (((2 * n : ℤ) - ((n : ℤ) - 1)) * A006530 (a (n - 2)).toNat).toNat

end

end A139421.P4608318752856106852

namespace A139421

/-- `A006530((2*n-(n-1))*A006530(a(n-2)))` -/
def P4608318752856106852.Spec : Prop :=
  ∀ n, P4608318752856106852.a n = A139421 (n + 1)

end A139421

/-!
# A139422: a(1)=a(2)=1. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

The programs for A139422, the canonical program `A139422.P6616369610320219079` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139422 has offset 1).

The definition of A139422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139422.P6616369610320219079

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139422

/-- `a(n-1)+A000005(a(n-1))+A000005(a(n-2))` -/
def P6616369610320219079.Spec : Prop :=
  ∀ n, P6616369610320219079.a n = A139422 (n + 1)

theorem P6616369610320219079.correct : P6616369610320219079.Spec := by
  intro n
  simp only [A139422, Nat.add_sub_cancel]

end A139422

/-! ## A139422.P17686495019466162363

`A263087(A085386(n)+2)+n²-n`
-/

namespace A139422.P17686495019466162363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (A085386 n + 2).toNat + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A139422.P17686495019466162363

namespace A139422

/-- `A263087(A085386(n)+2)+n²-n` -/
def P17686495019466162363.Spec : Prop :=
  ∀ n, P17686495019466162363.a n = A139422 (n + 1)

end A139422

/-! ## A139422.P14510725570034087554

`A165900(n)+A108129(A076102(n+2))`
-/

namespace A139422.P14510725570034087554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A108129 (A076102 (n + 2)).toNat

end

end A139422.P14510725570034087554

namespace A139422

/-- `A165900(n)+A108129(A076102(n+2))` -/
def P14510725570034087554.Spec : Prop :=
  ∀ n, P14510725570034087554.a n = A139422 (n + 1)

end A139422

/-! ## A139422.P15850588361331399091

`A002061(n)-A008683(A007784(n+1))`
-/

namespace A139422.P15850588361331399091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A008683 (A007784 (n + 1)).toNat

end

end A139422.P15850588361331399091

namespace A139422

/-- `A002061(n)-A008683(A007784(n+1))` -/
def P15850588361331399091.Spec : Prop :=
  ∀ n, P15850588361331399091.a n = A139422 (n + 1)

end A139422

/-!
# A139423: a(1)=1, a(2)=2. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

The programs for A139423, the canonical program `A139423.P3314553419540253664` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139423 has offset 1).

The definition of A139423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139423.P3314553419540253664

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139423

/-- `a(n-1)+A000005(a(n-1))+A000005(a(n-2))` -/
def P3314553419540253664.Spec : Prop :=
  ∀ n, P3314553419540253664.a n = A139423 (n + 1)

theorem P3314553419540253664.correct : P3314553419540253664.Spec := by
  intro n
  simp only [A139423, Nat.add_sub_cancel]

end A139423

/-! ## A139423.P3647984072360267829

`A140140(∑[A007001(3^n)])`
-/

namespace A139423.P3647984072360267829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139423.P3647984072360267829

namespace A139423

/-- `A140140(∑[A007001(3^n)])` -/
def P3647984072360267829.Spec : Prop :=
  ∀ n, P3647984072360267829.a n = A139423 (n + 1)

end A139423

/-! ## A139423.P10610824924000999829

`A005228(n+1)-lt[A035312(n), 10]`
-/

namespace A139423.P10610824924000999829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A139423.P10610824924000999829

namespace A139423

/-- `A005228(n+1)-lt[A035312(n), 10]` -/
def P10610824924000999829.Spec : Prop :=
  ∀ n, P10610824924000999829.a n = A139423 (n + 1)

end A139423

/-! ## A139423.P1706984349692539354

`A215064(A027379(n))+A082315(n)`
-/

namespace A139423.P1706984349692539354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 (A027379 n).toNat + A082315 n

end

end A139423.P1706984349692539354

namespace A139423

/-- `A215064(A027379(n))+A082315(n)` -/
def P1706984349692539354.Spec : Prop :=
  ∀ n, P1706984349692539354.a n = A139423 (n + 1)

end A139423

/-! ## A139423.P7660883622067776603

`A215064(A027379(n))+A082320(n)`
-/

namespace A139423.P7660883622067776603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 (A027379 n).toNat + A082320 n

end

end A139423.P7660883622067776603

namespace A139423

/-- `A215064(A027379(n))+A082320(n)` -/
def P7660883622067776603.Spec : Prop :=
  ∀ n, P7660883622067776603.a n = A139423 (n + 1)

end A139423

/-!
# A139424: Smallest number k such that M(n)^2-k*M(n)-1 is prime with M(n) = Mersenne primes = A000668(n).

The programs for A139424, there is no canonical definition to state claims against.
-/

/-! ## A139424.P2805753884327632839

`A060361(∑[n^A111146(n)])`
-/

namespace A139424.P2805753884327632839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A111146 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A139424.P2805753884327632839

/-! ## A139424.P16526634125693465408

`A054576(A017928(n)-A004273(n))`
-/

namespace A139424.P16526634125693465408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A017928 n - A004273 n).toNat

end

end A139424.P16526634125693465408

/-! ## A139424.P9863508690089902507

`A094045(A095275(n)^A190353(n+1))`
-/

namespace A139424.P9863508690089902507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094045 (SequenceMachineLib.roundAway ((A095275 n : ℚ) ^ (A190353 (n + 1) : ℤ))).toNat

end

end A139424.P9863508690089902507

/-!
# A139426: Smallest number k such that M(n)^2+k*M(n)-1 is prime with M(n)= Mersenne primes =A000668(n).

The programs for A139426, there is no canonical definition to state claims against.
-/

/-! ## A139426.P7262094614551411201

`A139430(n+1)%A005117(A293063(n))`
-/

namespace A139426.P7262094614551411201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139430 (n + 1)) (A005117 (A293063 n).toNat)

end

end A139426.P7262094614551411201

/-!
# A139433: a(n) = the n-th nonnegative integer m where A139432(m) = 0.

The programs for A139433, there is no canonical definition to state claims against.
-/

/-! ## A139433.P7714933180781895384

`eq[0, A139432(n)]`
-/

namespace A139433.P7714933180781895384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139433.P7714933180781895384

/-! ## A139433.P16569443913525386835

`lt[A139432(n), abs(A020985(n))]`
-/

namespace A139433.P16569443913525386835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139433.P16569443913525386835

/-! ## A139433.P5465875348890967524

`lt[A139432(n), cos(A000007(n))]`
-/

namespace A139433.P5465875348890967524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000007 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P5465875348890967524

/-! ## A139433.P9526168263263998435

`lt[A139432(n), acot(A000124(n))]`
-/

namespace A139433.P9526168263263998435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000124 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P9526168263263998435

/-! ## A139433.P4655420668630914286

`lt[A139432(n), acot(A002088(n))]`
-/

namespace A139433.P4655420668630914286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A002088 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P4655420668630914286

/-! ## A139433.P16747792409207957103

`lt[A139432(n), acot(A002378(n))]`
-/

namespace A139433.P16747792409207957103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A002378 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P16747792409207957103

/-! ## A139433.P13258339120418340771

`lt[A139432(n), acot(A004277(n))]`
-/

namespace A139433.P13258339120418340771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004277 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P13258339120418340771

/-! ## A139433.P1170002526009831892

`lt[A139432(n), acot(A006218(n))]`
-/

namespace A139433.P1170002526009831892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A006218 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P1170002526009831892

/-! ## A139433.P9643875924061236565

`lt[A139432(n), acot(A006257(n))]`
-/

namespace A139433.P9643875924061236565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A006257 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P9643875924061236565

/-! ## A139433.P14248467057617522246

`lt[A139432(n), acot(A008585(n))]`
-/

namespace A139433.P14248467057617522246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008585 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P14248467057617522246

/-! ## A139433.P12780653883825006814

`lt[A057427(n), acot(A139432(n))]`
-/

namespace A139433.P12780653883825006814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A139432 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P12780653883825006814

/-! ## A139433.P2540605427789159484

`lt[A139432(n), acot(A139434(n))]`
-/

namespace A139433.P2540605427789159484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A139434 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P2540605427789159484

/-! ## A139433.P5825126049069476673

`lt[A139432(n), acot(A139438(n))]`
-/

namespace A139433.P5825126049069476673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A139438 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P5825126049069476673

/-! ## A139433.P516600966439070663

`lt[A139432(n), acot(A163655(n))]`
-/

namespace A139433.P516600966439070663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A163655 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P516600966439070663

/-! ## A139433.P5090043029887543139

`lt[A139432(n), acot(A173786(n))]`
-/

namespace A139433.P5090043029887543139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A173786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P5090043029887543139

/-! ## A139433.P18187570672696402177

`lt[A139432(n), acot(A176895(n))]`
-/

namespace A139433.P18187570672696402177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A176895 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P18187570672696402177

/-! ## A139433.P5868458733788720629

`lt[A139432(n), acot(A000005(n+1))]`
-/

namespace A139433.P5868458733788720629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000005 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P5868458733788720629

/-! ## A139433.P2536429701963397648

`lt[A139432(n), acot(A000010(n+1))]`
-/

namespace A139433.P2536429701963397648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000010 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A139433.P2536429701963397648

/-! ## A139433.P14614507456120236649

`lt[A139432(n), A001222(A020483(n))]`
-/

namespace A139433.P14614507456120236649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020483 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139433.P14614507456120236649

/-! ## A139433.P10274879665255787104

`lt[A139432(n), A001222(A051697(n))]`
-/

namespace A139433.P10274879665255787104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139433.P10274879665255787104

/-!
# A139434: Frieze pattern with 4 rows, read by diagonals.

The programs for A139434, there is no canonical definition to state claims against.
-/

/-! ## A139434.P13105150767638328052

`gcd(A250472(A016116(n+1)), A253893(n+1))`
-/

namespace A139434.P13105150767638328052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250472 (A016116 (n + 1)).toNat) (A253893 (n + 1))

end

end A139434.P13105150767638328052

/-!
# A139435: Largest m

The programs for A139435, there is no canonical definition to state claims against.
-/

/-! ## A139435.P7998460963439647032

`and(A077641(n+1), A137167(A046817(n)))`
-/

namespace A139435.P7998460963439647032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077641 (n + 1)) (A137167 (A046817 n).toNat)

end

end A139435.P7998460963439647032

/-! ## A139435.P8969949348870777724

`and(A137167(A046817(n)), A322042(n+1))`
-/

namespace A139435.P8969949348870777724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137167 (A046817 n).toNat) (A322042 (n + 1))

end

end A139435.P8969949348870777724

/-!
# A139436: Number of ways to write n as sum of initial terms of a Collatz trajectory starting with a value less than n.

The programs for A139436, there is no canonical definition to state claims against.
-/

/-! ## A139436.P2839263003879585498

`A087436(∑[A091491(A090771(n+1))])`
-/

namespace A139436.P2839263003879585498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A090771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139436.P2839263003879585498

/-! ## A139436.P17481523729710563371

`A095749(A269867(n+1))%A289439(n+2)`
-/

namespace A139436.P17481523729710563371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095749 (A269867 (n + 1)).toNat) (A289439 (n + 2))

end

end A139436.P17481523729710563371

/-! ## A139436.P5909860748290593368

`A074669(A000051(n))%A289439(n+2)`
-/

namespace A139436.P5909860748290593368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074669 (A000051 n).toNat) (A289439 (n + 2))

end

end A139436.P5909860748290593368

/-!
# A139437: Numbers having exactly one partition into initial terms of a Collatz trajectory starting with a value less than n.

The programs for A139437, there is no canonical definition to state claims against.
-/

/-! ## A139437.P16812306663464683583

`eq[1, A139436(n+1)]+1`
-/

namespace A139437.P16812306663464683583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139437.P16812306663464683583

/-! ## A139437.P9501949979285164726

`eq[1, A139436(n^floor(atan(n)))]`
-/

namespace A139437.P9501949979285164726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139437.P9501949979285164726

/-! ## A139437.P10552881541816706945

`eq[1, A139436(A028310(n))]`
-/

namespace A139437.P10552881541816706945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139437.P10552881541816706945

/-! ## A139437.P13886041134628722017

`A020725(eq[1, A139436(n+1)])`
-/

namespace A139437.P13886041134628722017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139437.P13886041134628722017

/-! ## A139437.P1667963274553998713

`eq[1, A139436(A233583(n+1))]`
-/

namespace A139437.P1667963274553998713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139436 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139437.P1667963274553998713

/-!
# A139438: Frieze pattern with 5 rows, read by diagonals.

The programs for A139438, there is no canonical definition to state claims against.
-/

/-! ## A139438.P10482834759483418151

`A000188(A020701(n)-2*A292200(n+1))`
-/

namespace A139438.P10482834759483418151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020701 n - 2 * A292200 (n + 1)).toNat

end

end A139438.P10482834759483418151

/-!
# A139440: Numbers n such that primorial(n)/2 - 4 is prime.

The programs for A139440, there is no canonical definition to state claims against.
-/

/-! ## A139440.P15795413849572816684

`eq[A103514(n+2), A107286(A000010(n+1))]+2`
-/

namespace A139440.P15795413849572816684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103514 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A139440.P15795413849572816684

/-!
# A139447: Numbers n such that primorial(n)/2 + 64 is prime.

The programs for A139447, there is no canonical definition to state claims against.
-/

/-! ## A139447.P15875277874282271161

`A007913(A294486(n))+A000142(n)`
-/

namespace A139447.P15875277874282271161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A294486 n).toNat + A000142 n

end

end A139447.P15875277874282271161

/-! ## A139447.P11680068609994622307

`A329376(A002894(n))+A000142(n)`
-/

namespace A139447.P11680068609994622307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (A002894 n).toNat + A000142 n

end

end A139447.P11680068609994622307

/-!
# A139455: Numbers n such that primorial(n)/2 + 1024 is prime.

The programs for A139455, there is no canonical definition to state claims against.
-/

/-! ## A139455.P11580136912245808723

`A088752(A088766(2*n+1))-A000720(n+1)`
-/

namespace A139455.P11580136912245808723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088752 (A088766 (2 * n + 1)).toNat - A000720 (n + 1)

end

end A139455.P11580136912245808723

/-!
# A139458: Frieze pattern of order 6, with 5 rows, read by diagonals.

The programs for A139458, there is no canonical definition to state claims against.
-/

/-! ## A139458.P15769253166884272505

`gcd(A008619(A000032(n)), A277543(n+1))`
-/

namespace A139458.P15769253166884272505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A000032 n).toNat) (A277543 (n + 1))

end

end A139458.P15769253166884272505

/-!
# A139459: Triangle read by rows: binomial(3*n,3*k), 0 <= k <= n.

The programs for A139459, there is no canonical definition to state claims against.
-/

/-! ## A139459.P5461455209307034797

`A205545(A245300(n)+1)`
-/

namespace A139459.P5461455209307034797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205545 (A245300 n + 1).toNat

end

end A139459.P5461455209307034797

/-! ## A139459.P14416612217594110821

`A007318(3*(∑[char[∑[n+1]]]²+n))`
-/

namespace A139459.P14416612217594110821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n))

end

end A139459.P14416612217594110821

/-! ## A139459.P8631048892069766974

`A074909(∩[A083920(3*n), A008585(n)])`
-/

namespace A139459.P8631048892069766974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A139459.P8631048892069766974

/-! ## A139459.P6009279172934259468

`A135225(∩[A083920(3*n+4), A016789(n)])`
-/

namespace A139459.P6009279172934259468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A139459.P6009279172934259468

/-! ## A139459.P4024849031540999867

`A000292(A081577(n)^A331570(n))`
-/

namespace A139459.P4024849031540999867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.roundAway ((A081577 n : ℚ) ^ (A331570 n : ℤ))).toNat

end

end A139459.P4024849031540999867

/-!
# A139460: a(n) = m such that 2*prime(n+m+1) + (product of n successive odd primes) is prime.

The programs for A139460, there is no canonical definition to state claims against.
-/

/-! ## A139460.P2361165935409659254

`A000720(A098170(n+2))-(n+2)`
-/

namespace A139460.P2361165935409659254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098170 (n + 2)).toNat - (n + 2 : ℤ)

end

end A139460.P2361165935409659254

/-! ## A139460.P13976643707508541507

`A098171(n+2)-(n+2)`
-/

namespace A139460.P13976643707508541507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098171 (n + 2) - (n + 2 : ℤ)

end

end A139460.P13976643707508541507

/-! ## A139460.P15498356652183735631

`A023444(A098171(n+2)-n)`
-/

namespace A139460.P15498356652183735631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A098171 (n + 2) - (n : ℤ)).toNat

end

end A139460.P15498356652183735631

/-! ## A139460.P6371478495193238064

`abs(A098171(n+2)+A001489(n+2))`
-/

namespace A139460.P6371478495193238064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098171 (n + 2) + A001489 (n + 2)|

end

end A139460.P6371478495193238064

/-! ## A139460.P3438208088809852403

`(A098171(n+2)+A001489(n+2))%A001132(n+1)`
-/

namespace A139460.P3438208088809852403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098171 (n + 2) + A001489 (n + 2)) (A001132 (n + 1))

end

end A139460.P3438208088809852403

/-!
# A139461: Numbers k such that 2*prime(k+2) + product (first k odd primes) is prime, i.e., k such that primorial(k+1)/2 + 2*prime(k+2) is prime.

The programs for A139461, there is no canonical definition to state claims against.
-/

/-! ## A139461.P16685726833759425049

`eq[1, A139460(n+1)]+1`
-/

namespace A139461.P16685726833759425049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139461.P16685726833759425049

/-! ## A139461.P8997216431682116057

`eq[n+2, A098171(n+1)]`
-/

namespace A139461.P8997216431682116057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139461.P8997216431682116057

/-! ## A139461.P18235032552783275901

`lt[A098171(n+2)-(n+2), 2]+1`
-/

namespace A139461.P18235032552783275901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098171 (n + 2) - (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A139461.P18235032552783275901

/-! ## A139461.P16225507384199245009

`eq[n, A023444(A098171(n+1))]`
-/

namespace A139461.P16225507384199245009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A098171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139461.P16225507384199245009

/-! ## A139461.P6791601199187048592

`eq[A065091(n+1), A098170(n+1)]`
-/

namespace A139461.P6791601199187048592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139461.P6791601199187048592

/-!
# A139462: a(n) = m such that product n successive odd primes - 2*prime(n+m+1) is prime = such m that primorial(n+1)/2 - 2*prime(n+m+1) is prime.

The programs for A139462, there is no canonical definition to state claims against.
-/

/-! ## A139462.P443457533552405860

`A270650(A237591(n+1)+A182763(n+1))`
-/

namespace A139462.P443457533552405860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (A237591 (n + 1) + A182763 (n + 1)).toNat

end

end A139462.P443457533552405860

/-! ## A139462.P6408420283887095203

`gcd(A306284(2*(n+1)), A311160(A211679(n+3)))`
-/

namespace A139462.P6408420283887095203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306284 (2 * (n + 1))) (A311160 (A211679 (n + 3)).toNat)

end

end A139462.P6408420283887095203

/-! ## A139462.P14466177482297382274

`A001222(xor(A127193(2*n+1), A127219(n+1)))`
-/

namespace A139462.P14466177482297382274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A127193 (2 * n + 1)) (A127219 (n + 1))).toNat

end

end A139462.P14466177482297382274

/-!
# A139463: Numbers n such that (product of the first n odd primes) - 2*prime(n+2) is a prime.

The programs for A139463, there is no canonical definition to state claims against.
-/

/-! ## A139463.P13473443703051926354

`eq[1, A139462(n+2)]+2`
-/

namespace A139463.P13473443703051926354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A139463.P13473443703051926354

/-! ## A139463.P14468114157516888358

`lt[A139462(round(acot(n)+n)), 2]`
-/

namespace A139463.P14468114157516888358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139463.P14468114157516888358

/-! ## A139463.P4466484311298773621

`eq[1, A139462(A233583(n+1))]`
-/

namespace A139463.P4466484311298773621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139463.P4466484311298773621

/-! ## A139463.P14595729791174109018

`eq[A139462(A028310(n)), A157928(n)]`
-/

namespace A139463.P14595729791174109018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139463.P14595729791174109018

/-!
# A139464: a(n) = n! + 2n - 1.

The programs for A139464, the canonical program `A139464.P471009658587092014` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139464 has offset 1).

The definition of A139464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+2*(n+1)-1` (program `A139464.P471009658587092014`, by `A139464.P471009658587092014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139464.P471009658587092014

`(n+1)!+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139464

/-- `(n+1)!+2*(n+1)-1` -/
def P471009658587092014.Spec : Prop :=
  ∀ n, P471009658587092014.a n = A139464 (n + 1)

theorem P471009658587092014.correct : P471009658587092014.Spec := by
  intro n
  simp only [A139464, Nat.add_sub_cancel]

end A139464

/-! ## A139464.P11675265818422181898

`A000142(n+1)+A005408(n)`
-/

namespace A139464.P11675265818422181898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A005408 n

end

end A139464.P11675265818422181898

namespace A139464

/-- `A000142(n+1)+A005408(n)` -/
def P11675265818422181898.Spec : Prop :=
  ∀ n, P11675265818422181898.a n = A139464 (n + 1)

end A139464

/-! ## A139464.P3639356624247629575

`∑[Δ[n!]+2]`
-/

namespace A139464.P3639356624247629575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P3639356624247629575

namespace A139464

/-- `∑[Δ[n!]+2]` -/
def P3639356624247629575.Spec : Prop :=
  ∀ n, P3639356624247629575.a n = A139464 (n + 1)

end A139464

/-! ## A139464.P13825128907431418144

`∑[n*n!+2]`
-/

namespace A139464.P13825128907431418144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P13825128907431418144

namespace A139464

/-- `∑[n*n!+2]` -/
def P13825128907431418144.Spec : Prop :=
  ∀ n, (P13825128907431418144.a n : ℤ) = A139464 (n + 1)

end A139464

/-! ## A139464.P12584015687422249206

`∑[2-Δ[-n!]]`
-/

namespace A139464.P12584015687422249206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P12584015687422249206

namespace A139464

/-- `∑[2-Δ[-n!]]` -/
def P12584015687422249206.Spec : Prop :=
  ∀ n, P12584015687422249206.a n = A139464 (n + 1)

end A139464

/-! ## A139464.P3809447784590696075

`Δ[n²]+(n+1)!`
-/

namespace A139464.P3809447784590696075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.factorial (n + 1) : ℤ)

end

end A139464.P3809447784590696075

namespace A139464

/-- `Δ[n²]+(n+1)!` -/
def P3809447784590696075.Spec : Prop :=
  ∀ n, P3809447784590696075.a n = A139464 (n + 1)

theorem P3809447784590696075.correct : P3809447784590696075.Spec := by
  intro n
  simp only [A139464, Nat.add_sub_cancel, A139464.P3809447784590696075.f1, A139464.P3809447784590696075.a, A139464.P471009658587092014.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139464

/-! ## A139464.P14380060409723459682

`∏[n+1]+Δ[n²]`
-/

namespace A139464.P14380060409723459682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A139464.P14380060409723459682

namespace A139464

/-- `∏[n+1]+Δ[n²]` -/
def P14380060409723459682.Spec : Prop :=
  ∀ n, P14380060409723459682.a n = A139464 (n + 1)

theorem P14380060409723459682.correct : P14380060409723459682.Spec := by
  intro n
  simp only [A139464, Nat.add_sub_cancel, A139464.P14380060409723459682.f1, A139464.P14380060409723459682.f2, A139464.P14380060409723459682.a, A139464.P471009658587092014.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A139464

/-! ## A139464.P14017264837682233173

`∑[3-Δ[n-n!]]`
-/

namespace A139464.P14017264837682233173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P14017264837682233173

namespace A139464

/-- `∑[3-Δ[n-n!]]` -/
def P14017264837682233173.Spec : Prop :=
  ∀ n, P14017264837682233173.a n = A139464 (n + 1)

end A139464

/-! ## A139464.P11032781013412660008

`∑[(n+1)!+2-n!]`
-/

namespace A139464.P11032781013412660008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + (2 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P11032781013412660008

namespace A139464

/-- `∑[(n+1)!+2-n!]` -/
def P11032781013412660008.Spec : Prop :=
  ∀ n, P11032781013412660008.a n = A139464 (n + 1)

end A139464

/-! ## A139464.P750371195500094

`∑[Δ[n*a(n-1)]+2]` with `a(0)=1`
-/

namespace A139464.P750371195500094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139464.P750371195500094

namespace A139464

/-- `∑[Δ[n*a(n-1)]+2]` -/
def P750371195500094.Spec : Prop :=
  ∀ n, P750371195500094.a n = A139464 (n + 1)

end A139464

/-!
# A139467: Largest prime factor of n! + 2n - 1.

The programs for A139467, the canonical program `A139467.P2342812551218913773` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139467 has offset 1).

The definition of A139467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139467.P2342812551218913773

`A006530(A139464(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139467

/-- `A006530(A139464(n+1))` -/
def P2342812551218913773.Spec : Prop :=
  ∀ n, P2342812551218913773.a n = A139467 (n + 1)

theorem P2342812551218913773.correct : P2342812551218913773.Spec := by
  intro n
  simp only [A139467, Nat.add_sub_cancel]

end A139467

/-! ## A139467.P4716556868987049627

`A006530(∑[Δ[n!]+2])`
-/

namespace A139467.P4716556868987049627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139467.P4716556868987049627

namespace A139467

/-- `A006530(∑[Δ[n!]+2])` -/
def P4716556868987049627.Spec : Prop :=
  ∀ n, P4716556868987049627.a n = A139467 (n + 1)

end A139467

/-! ## A139467.P17796924195248454273

`A006530(∑[n*n!+2])`
-/

namespace A139467.P17796924195248454273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139467.P17796924195248454273

namespace A139467

/-- `A006530(∑[n*n!+2])` -/
def P17796924195248454273.Spec : Prop :=
  ∀ n, P17796924195248454273.a n = A139467 (n + 1)

end A139467

/-! ## A139467.P4636176848467995741

`A006530(∑[2-Δ[-n!]])`
-/

namespace A139467.P4636176848467995741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139467.P4636176848467995741

namespace A139467

/-- `A006530(∑[2-Δ[-n!]])` -/
def P4636176848467995741.Spec : Prop :=
  ∀ n, P4636176848467995741.a n = A139467 (n + 1)

end A139467

/-!
# A139468: a(n) = Sum_{k=0..n} C(n,3k+1)^2.

The programs for A139468, there is no canonical definition to state claims against.
-/

/-! ## A139468.P11439232555005449805

`A000984(n)-(A139469(n)+A119363(n))`
-/

namespace A139468.P11439232555005449805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A139469 n + A119363 n)

end

end A139468.P11439232555005449805

/-! ## A139468.P13206330017179521338

`record[A126930(n)]-A119363(n)-A139469(n)`
-/

namespace A139468.P13206330017179521338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119363 n - A139469 n

end

end A139468.P13206330017179521338

/-!
# A139469: a(n) = Sum_{k=0..n} C(n,3k+2)^2.

The programs for A139469, there is no canonical definition to state claims against.
-/

/-! ## A139469.P6167244085976363033

`A000984(n)-(A139468(n)+A119363(n))`
-/

namespace A139469.P6167244085976363033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A139468 n + A119363 n)

end

end A139469.P6167244085976363033

/-! ## A139469.P3823984516910650548

`record[A126930(n)]-A119363(n)-A139468(n)`
-/

namespace A139469.P3823984516910650548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119363 n - A139468 n

end

end A139469.P3823984516910650548

/-!
# A139473: a(n)=((2*Sqrt[2] + 3)^(2^(n - 1) - 1) - (3 - 2*Sqrt[2])^(2^(n - 1) - 1))/(4*Sqrt[2]).

The programs for A139473, there is no canonical definition to state claims against.
-/

/-! ## A139473.P4810602670608202212

`A204512(2^(n+1))`
-/

namespace A139473.P4810602670608202212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 ^ (n + 1))

end

end A139473.P4810602670608202212

/-! ## A139473.P14092944523410594654

`A001109(2^n-1)`
-/

namespace A139473.P14092944523410594654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (2 ^ n - 1)

end

end A139473.P14092944523410594654

/-! ## A139473.P11226859185310241695

`A106328(2^n)/3`
-/

namespace A139473.P11226859185310241695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106328 (2 ^ n) : ℚ) / 3

end

end A139473.P11226859185310241695

/-!
# A139475: Number of digits in the decimal expansion of A139474(n).

The programs for A139475, there is no canonical definition to state claims against.
-/

/-! ## A139475.P5909218623316104031

`A117120(A140134(∑[n]))`
-/

namespace A139475.P5909218623316104031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A140134 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A139475.P5909218623316104031

/-!
# A139476: Positions of squares in the EKG sequence (A064413).

The programs for A139476, there is no canonical definition to state claims against.
-/

/-! ## A139476.P10009211177563577587

`A064664((n+1)²)`
-/

namespace A139476.P10009211177563577587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 ((n + 1) ^ 2)

end

end A139476.P10009211177563577587

/-! ## A139476.P668675947551364951

`or(char[1], A064664(∑[2*n+1]))`
-/

namespace A139476.P668675947551364951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A064664 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A139476.P668675947551364951

/-! ## A139476.P899222067388606911

`A064664((n+1)^2)^ceil(acot(n))`
-/

namespace A139476.P899222067388606911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064664 ((n + 1) ^ 2) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A139476.P899222067388606911

/-! ## A139476.P14121453866548730936

`(n%2)!*A064664(xor(n, -1)²)`
-/

namespace A139476.P14121453866548730936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A064664 (Int.xor (n : ℤ) (-1) ^ 2).toNat

end

end A139476.P14121453866548730936

/-! ## A139476.P17661184682606770765

`gcd(n, n+1)*A064664(∑[or(1, 2*n)])`
-/

namespace A139476.P17661184682606770765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A064664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139476.P17661184682606770765

/-! ## A139476.P1200715871826899147

`record[A064664(A022446(n)²)]`
-/

namespace A139476.P1200715871826899147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A022446 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P1200715871826899147

/-! ## A139476.P17974518014434826481

`record[A064664(A065648(n)²)]`
-/

namespace A139476.P17974518014434826481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P17974518014434826481

/-! ## A139476.P13813378462931178869

`record[A064664(A106466(n)²)]`
-/

namespace A139476.P13813378462931178869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P13813378462931178869

/-! ## A139476.P4655965292124859513

`record[A064664(A133310(n)²)]`
-/

namespace A139476.P4655965292124859513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P4655965292124859513

/-! ## A139476.P3194340247160809127

`record[A064664(A154958(n)²)]`
-/

namespace A139476.P3194340247160809127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P3194340247160809127

/-! ## A139476.P18139256956695321186

`record[A064664(A286535(n)²)]`
-/

namespace A139476.P18139256956695321186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A286535 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P18139256956695321186

/-! ## A139476.P3086231786966501064

`record[A064664(A286551(n)²)]`
-/

namespace A139476.P3086231786966501064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A286551 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P3086231786966501064

/-! ## A139476.P15490007388071751975

`record[A064664(A328397(n)²)]`
-/

namespace A139476.P15490007388071751975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A328397 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139476.P15490007388071751975

/-! ## A139476.P6895669057012600268

`A000027(A064664(xor(n, -1)²))`
-/

namespace A139476.P6895669057012600268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064664 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A139476.P6895669057012600268

/-! ## A139476.P15643012698116040747

`A000027(A064664(∑[2*n+1]))`
-/

namespace A139476.P15643012698116040747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064664 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A139476.P15643012698116040747

/-!
# A139477: Number of binary digits in A001109(n).

The programs for A139477, the canonical program `A139477.P7115954098944831996` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139477 has offset 0).

The definition of A139477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139477.P3245327375523796379

`ceil(abs(log2(A182189(n))-1))`
-/

namespace A139477.P3245327375523796379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (A182189 n : ℝ) - 1|⌉

end

end A139477.P3245327375523796379

namespace A139477

/-- `ceil(abs(log2(A182189(n))-1))` -/
def P3245327375523796379.Spec : Prop :=
  ∀ n, P3245327375523796379.a n = A139477 n

end A139477

/-! ## A139477.P7115954098944831996

`floor(log2(A126869(n)+A001542(n)+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139477

/-- `floor(log2(A126869(n)+A001542(n)+1))` -/
def P7115954098944831996.Spec : Prop :=
  ∀ n, (P7115954098944831996.a n : ℤ) = A139477 n

theorem P7115954098944831996.correct : P7115954098944831996.Spec := by
  intro n
  simp only [A139477]

end A139477

/-! ## A139477.P10620893439388300968

`floor(log2(A170965(n)+A001542(n)+1))`
-/

namespace A139477.P10620893439388300968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A170965 n + A001542 n + 1).toNat

end

end A139477.P10620893439388300968

namespace A139477

/-- `floor(log2(A170965(n)+A001542(n)+1))` -/
def P10620893439388300968.Spec : Prop :=
  ∀ n, (P10620893439388300968.a n : ℤ) = A139477 n

end A139477

/-! ## A139477.P15370984382767079313

`ceil(log2(A205510(n+2)+A001109(n)))`
-/

namespace A139477.P15370984382767079313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A205510 (n + 2) + A001109 n : ℝ)⌉

end

end A139477.P15370984382767079313

namespace A139477

/-- `ceil(log2(A205510(n+2)+A001109(n)))` -/
def P15370984382767079313.Spec : Prop :=
  ∀ n, P15370984382767079313.a n = A139477 n

end A139477

/-! ## A139477.P3201891670261434220

`floor(log2(A112526(n+1)+A001542(n)+1))`
-/

namespace A139477.P3201891670261434220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A112526 (n + 1) + A001542 n + 1).toNat

end

end A139477.P3201891670261434220

namespace A139477

/-- `floor(log2(A112526(n+1)+A001542(n)+1))` -/
def P3201891670261434220.Spec : Prop :=
  ∀ n, (P3201891670261434220.a n : ℤ) = A139477 n

end A139477

/-!
# A139478: a(n) = A001109(n) in binary.

The programs for A139478, there is no canonical definition to state claims against.
-/

/-! ## A139478.P7469851635287071613

`A204577(n+3)/10`
-/

namespace A139478.P7469851635287071613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204577 (n + 3) : ℚ) / 10

end

end A139478.P7469851635287071613

/-! ## A139478.P3625968862304017345

`A007088(record[6*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A139478.P3625968862304017345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139478.P3625968862304017345

/-!
# A139479: Numbers k such that 24*k+7 is a term of A000043.

The programs for A139479, there is no canonical definition to state claims against.
-/

/-! ## A139479.P5952618599056204151

`lt[A028601(2*(n+2)), A332219(A135659(n))]`
-/

namespace A139479.P5952618599056204151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028601 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A135659 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139479.P5952618599056204151

/-! ## A139479.P13131173653705912711

`eq[1, A013603(A135659(n))]`
-/

namespace A139479.P13131173653705912711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (A135659 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139479.P13131173653705912711

/-!
# A139480: a(n) = A000043(n) - 3.

The programs for A139480, there is no canonical definition to state claims against.
-/

/-! ## A139480.P10613926231128064691

`A000043(n+2)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139480.P10613926231128064691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2) - 3

end

end A139480.P10613926231128064691

/-! ## A139480.P2799483651453276572

`A153798(n+2)-1`
-/

namespace A139480.P2799483651453276572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 2) - 1

end

end A139480.P2799483651453276572

/-! ## A139480.P14533239719101621433

`A090748(n+2)-2`
-/

namespace A139480.P14533239719101621433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 2) - 2

end

end A139480.P14533239719101621433

/-! ## A139480.P5840273041380622805

`A174265(n+1)-3`
-/

namespace A139480.P5840273041380622805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (n + 1) - 3

end

end A139480.P5840273041380622805

/-! ## A139480.P12745969237849322401

`2*A139481(n+2)`
-/

namespace A139480.P12745969237849322401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139481 (n + 2)

end

end A139480.P12745969237849322401

/-!
# A139481: a(n) = A139480(n)/2.

The programs for A139481, there is no canonical definition to state claims against.
-/

/-! ## A139481.P6645294496076377397

`A139480(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139481.P6645294496076377397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139480 (n + 2) : ℚ) / 2

end

end A139481.P6645294496076377397

/-! ## A139481.P11953640475893396140

`A146768(n+1)-1`
-/

namespace A139481.P11953640475893396140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146768 (n + 1) - 1

end

end A139481.P11953640475893396140

/-! ## A139481.P2101193720632871169

`A138576(n+1)-2`
-/

namespace A139481.P2101193720632871169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138576 (n + 1) - 2

end

end A139481.P2101193720632871169

/-! ## A139481.P1983483192616868886

`floor(A153798(n+2)/2)`
-/

namespace A139481.P1983483192616868886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153798 (n + 2) : ℚ) / 2⌋

end

end A139481.P1983483192616868886

/-! ## A139481.P405724752965870290

`A090748(n+2)/2-1`
-/

namespace A139481.P405724752965870290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090748 (n + 2) : ℚ) / 2 - 1

end

end A139481.P405724752965870290

/-!
# A139482: Binomial transform of [1, 1, 2, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, ...].

The programs for A139482, the canonical program `A139482.P13951058526952933709` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139482 has offset 1).

The definition of A139482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139482.P13951058526952933709

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139482

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13951058526952933709.Spec : Prop :=
  ∀ n, P13951058526952933709.a n = A139482 (n + 1)

theorem P13951058526952933709.correct : P13951058526952933709.Spec := by
  intro n
  simp only [A139482, Nat.add_sub_cancel]

end A139482

/-! ## A139482.P18281357932447009232

`∑[a(n-1)+3]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A139482.P18281357932447009232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P18281357932447009232

namespace A139482

/-- `∑[a(n-1)+3]` -/
def P18281357932447009232.Spec : Prop :=
  ∀ n, (P18281357932447009232.a n : ℤ) = A139482 (n + 1)

end A139482

/-! ## A139482.P14446027342081370773

`∑[char[1]+n]+(1-n)²`
-/

namespace A139482.P14446027342081370773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2

end

end A139482.P14446027342081370773

namespace A139482

/-- `∑[char[1]+n]+(1-n)²` -/
def P14446027342081370773.Spec : Prop :=
  ∀ n, P14446027342081370773.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P5185165545953282362

`ogf((1-x+2x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A139482.P5185165545953282362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 1] [1, -3, 3, -1] n

end

end A139482.P5185165545953282362

namespace A139482

/-- `ogf((1-x+2x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P5185165545953282362.Spec : Prop :=
  ∀ n, P5185165545953282362.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P17001089205764647126

`ceil(n²+a(n-1)/3)` with `a(0)=1`
-/

namespace A139482.P17001089205764647126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n ^ 2 : ℚ) + (a (n - 1) : ℚ) / 3⌉

end

end A139482.P17001089205764647126

namespace A139482

/-- `ceil(n²+a(n-1)/3)` -/
def P17001089205764647126.Spec : Prop :=
  ∀ n, P17001089205764647126.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P947936788444517052

`∑[record[n*gcd(2, n)]+1-n]`
-/

namespace A139482.P947936788444517052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P947936788444517052

namespace A139482

/-- `∑[record[n*gcd(2, n)]+1-n]` -/
def P947936788444517052.Spec : Prop :=
  ∀ n, P947936788444517052.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P11563385531530964592

`∑[C(4, n+3)+3*(n-1)]`
-/

namespace A139482.P11563385531530964592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (n + 3) : ℤ) + 3 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P11563385531530964592

namespace A139482

/-- `∑[C(4, n+3)+3*(n-1)]` -/
def P11563385531530964592.Spec : Prop :=
  ∀ n, P11563385531530964592.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P11083826526929925512

`abs(3-a(n-1)-3*n)` with `a(0)=1, a(1)=2`
-/

namespace A139482.P11083826526929925512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  |3 - a (n - 1) - (3 * n : ℤ)|

end

end A139482.P11083826526929925512

namespace A139482

/-- `abs(3-a(n-1)-3*n)` -/
def P11083826526929925512.Spec : Prop :=
  ∀ n, P11083826526929925512.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P7537546077148230349

`Δ[round(sqrt(n²+1))+3*C(n, 3)+n]`
-/

namespace A139482.P7537546077148230349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (3 * Nat.choose n 3 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139482.P7537546077148230349

namespace A139482

/-- `Δ[round(sqrt(n²+1))+3*C(n, 3)+n]` -/
def P7537546077148230349.Spec : Prop :=
  ∀ n, P7537546077148230349.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P15098233504012277002

`abs((n²+1)*ceil(atan(n+1))-(∑[n]+n))`
-/

namespace A139482.P15098233504012277002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉ - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)|

end

end A139482.P15098233504012277002

namespace A139482

/-- `abs((n²+1)*ceil(atan(n+1))-(∑[n]+n))` -/
def P15098233504012277002.Spec : Prop :=
  ∀ n, P15098233504012277002.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P6868955559666961372

`∑[A004275(n)+abs(1-n)]`
-/

namespace A139482.P6868955559666961372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P6868955559666961372

namespace A139482

/-- `∑[A004275(n)+abs(1-n)]` -/
def P6868955559666961372.Spec : Prop :=
  ∀ n, P6868955559666961372.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P1900092696291033419

`(A056106(n)-abs(1-n)-n+2)/2`
-/

namespace A139482.P1900092696291033419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056106 n - |1 - (n : ℤ)| - (n : ℤ) + 2 : ℚ) / 2

end

end A139482.P1900092696291033419

namespace A139482

/-- `(A056106(n)-abs(1-n)-n+2)/2` -/
def P1900092696291033419.Spec : Prop :=
  ∀ n, P1900092696291033419.a n = (A139482 (n + 1) : ℚ)

end A139482

/-! ## A139482.P11626067017329564605

`∑[A008486(A028310(n)-1)]`
-/

namespace A139482.P11626067017329564605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P11626067017329564605

namespace A139482

/-- `∑[A008486(A028310(n)-1)]` -/
def P11626067017329564605.Spec : Prop :=
  ∀ n, P11626067017329564605.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P9414702418521139220

`∑[A008486(A004273(n)-n)]`
-/

namespace A139482.P9414702418521139220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P9414702418521139220

namespace A139482

/-- `∑[A008486(A004273(n)-n)]` -/
def P9414702418521139220.Spec : Prop :=
  ∀ n, P9414702418521139220.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P1125573703363606579

`∑[A048840(n+1)-(n+1)²]`
-/

namespace A139482.P1125573703363606579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048840 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P1125573703363606579

namespace A139482

/-- `∑[A048840(n+1)-(n+1)²]` -/
def P1125573703363606579.Spec : Prop :=
  ∀ n, P1125573703363606579.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P15070256682973743721

`∑[A008486(A289207(n+1))]`
-/

namespace A139482.P15070256682973743721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P15070256682973743721

namespace A139482

/-- `∑[A008486(A289207(n+1))]` -/
def P15070256682973743721.Spec : Prop :=
  ∀ n, P15070256682973743721.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P17938580725984697985

`∑[A267528(A267528(2*n)-n)]`
-/

namespace A139482.P17938580725984697985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A267528 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139482.P17938580725984697985

namespace A139482

/-- `∑[A267528(A267528(2*n)-n)]` -/
def P17938580725984697985.Spec : Prop :=
  ∀ n, P17938580725984697985.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P8183788641620884511

`record[abs(A128504(n))-n]`
-/

namespace A139482.P8183788641620884511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128504 n| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139482.P8183788641620884511

namespace A139482

/-- `record[abs(A128504(n))-n]` -/
def P8183788641620884511.Spec : Prop :=
  ∀ n, P8183788641620884511.a n = A139482 (n + 1)

end A139482

/-! ## A139482.P4814645543261755609

`A001651(A386480(n))`
-/

namespace A139482.P4814645543261755609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A386480 n).toNat

end

end A139482.P4814645543261755609

namespace A139482

/-- `A001651(A386480(n))` -/
def P4814645543261755609.Spec : Prop :=
  ∀ n, P4814645543261755609.a n = A139482 (n + 1)

end A139482

/-!
# A139483: Numbers k such that 24*k + 7 is prime.

The programs for A139483, the canonical program `A139483.P14077773424165135591` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139483 has offset 1).

The definition of A139483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139483.P14077773424165135591

`eq[A260518(2*n), 4*n+1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139483

/-- `eq[A260518(2*n), 4*n+1]` -/
def P14077773424165135591.Spec : Prop :=
  ∀ n, (P14077773424165135591.a n : ℤ) = A139483 (n + 1)

theorem P14077773424165135591.correct : P14077773424165135591.Spec := by
  intro n
  simp only [A139483, Nat.add_sub_cancel]

end A139483

/-! ## A139483.P11819321731666417148

`lt[∏{e}[Δ[A051866(2*n)], #+1], 7]`
-/

namespace A139483.P11819321731666417148
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A139483.P11819321731666417148

namespace A139483

/-- `lt[∏{e}[Δ[A051866(2*n)], #+1], 7]` -/
def P11819321731666417148.Spec : Prop :=
  ∀ n, (P11819321731666417148.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P8063274275721617895

`eq[1, A001222(24*n+7)]`
-/

namespace A139483.P8063274275721617895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P8063274275721617895

namespace A139483

/-- `eq[1, A001222(24*n+7)]` -/
def P8063274275721617895.Spec : Prop :=
  ∀ n, (P8063274275721617895.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P4969783237337156132

`eq[2, A000005(24*n+7)]`
-/

namespace A139483.P4969783237337156132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P4969783237337156132

namespace A139483

/-- `eq[2, A000005(24*n+7)]` -/
def P4969783237337156132.Spec : Prop :=
  ∀ n, (P4969783237337156132.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P12071556315535829533

`lt[A001222(4*6*n+7)², 2]`
-/

namespace A139483.P12071556315535829533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (6 * n) + 7) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139483.P12071556315535829533

namespace A139483

/-- `lt[A001222(4*6*n+7)², 2]` -/
def P12071556315535829533.Spec : Prop :=
  ∀ n, (P12071556315535829533.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P1112979144503110693

`lt[A001222(3*(8*n+3)-2), 2]`
-/

namespace A139483.P1112979144503110693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (8 * n + 3) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139483.P1112979144503110693

namespace A139483

/-- `lt[A001222(3*(8*n+3)-2), 2]` -/
def P1112979144503110693.Spec : Prop :=
  ∀ n, (P1112979144503110693.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P9267447923407134762

`eq[24*n+7, A006530(24*n+7)]`
-/

namespace A139483.P9267447923407134762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (24 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P9267447923407134762

namespace A139483

/-- `eq[24*n+7, A006530(24*n+7)]` -/
def P9267447923407134762.Spec : Prop :=
  ∀ n, (P9267447923407134762.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P5930202151838845940

`eq[24*n+7, A020639(24*n+7)]`
-/

namespace A139483.P5930202151838845940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (24 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P5930202151838845940

namespace A139483

/-- `eq[24*n+7, A020639(24*n+7)]` -/
def P5930202151838845940.Spec : Prop :=
  ∀ n, (P5930202151838845940.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P3868386719720917784

`eq[1, A156706(A017113(n)-2)]`
-/

namespace A139483.P3868386719720917784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A017113 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P3868386719720917784

namespace A139483

/-- `eq[1, A156706(A017113(n)-2)]` -/
def P3868386719720917784.Spec : Prop :=
  ∀ n, (P3868386719720917784.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P18375343485336399049

`lt[A000005(2*A017557(n)+1), 3]`
-/

namespace A139483.P18375343485336399049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A017557 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139483.P18375343485336399049

namespace A139483

/-- `lt[A000005(2*A017557(n)+1), 3]` -/
def P18375343485336399049.Spec : Prop :=
  ∀ n, (P18375343485336399049.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P9055068043225713001

`lt[A000203(A017605(2*n)), A017653(2*n)]`
-/

namespace A139483.P9055068043225713001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139483.P9055068043225713001

namespace A139483

/-- `lt[A000203(A017605(2*n)), A017653(2*n)]` -/
def P9055068043225713001.Spec : Prop :=
  ∀ n, (P9055068043225713001.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P17219680798832102094

`lt[A000203(A017605(2*n)), A017581(2*n+1)]`
-/

namespace A139483.P17219680798832102094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139483.P17219680798832102094

namespace A139483

/-- `lt[A000203(A017605(2*n)), A017581(2*n+1)]` -/
def P17219680798832102094.Spec : Prop :=
  ∀ n, (P17219680798832102094.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P14131454332501333643

`lt[A000203(A017605(2*n)), A017605(2*n+1)]`
-/

namespace A139483.P14131454332501333643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139483.P14131454332501333643

namespace A139483

/-- `lt[A000203(A017605(2*n)), A017605(2*n+1)]` -/
def P14131454332501333643.Spec : Prop :=
  ∀ n, (P14131454332501333643.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P11700241749496745623

`eq[1, A101264(A004767(3*n))]`
-/

namespace A139483.P11700241749496745623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P11700241749496745623

namespace A139483

/-- `eq[1, A101264(A004767(3*n))]` -/
def P11700241749496745623.Spec : Prop :=
  ∀ n, (P11700241749496745623.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P9933696335532888047

`eq[1, A005171(A135659(n))+1]`
-/

namespace A139483.P9933696335532888047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A135659 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P9933696335532888047

namespace A139483

/-- `eq[1, A005171(A135659(n))+1]` -/
def P9933696335532888047.Spec : Prop :=
  ∀ n, (P9933696335532888047.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P4765384202193077390

`eq[1, A225721(12*n+4)]`
-/

namespace A139483.P4765384202193077390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (12 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P4765384202193077390

namespace A139483

/-- `eq[1, A225721(12*n+4)]` -/
def P4765384202193077390.Spec : Prop :=
  ∀ n, (P4765384202193077390.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P10177561243610392401

`eq[1, A016014(A017557(n))]`
-/

namespace A139483.P10177561243610392401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A017557 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P10177561243610392401

namespace A139483

/-- `eq[1, A016014(A017557(n))]` -/
def P10177561243610392401.Spec : Prop :=
  ∀ n, (P10177561243610392401.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P3907780500150402154

`eq[2, A049716(A017569(n))]`
-/

namespace A139483.P3907780500150402154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (A017569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P3907780500150402154

namespace A139483

/-- `eq[2, A049716(A017569(n))]` -/
def P3907780500150402154.Spec : Prop :=
  ∀ n, (P3907780500150402154.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P12106161278158783809

`eq[3, A002373(A017581(n))]`
-/

namespace A139483.P12106161278158783809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P12106161278158783809

namespace A139483

/-- `eq[3, A002373(A017581(n))]` -/
def P12106161278158783809.Spec : Prop :=
  ∀ n, (P12106161278158783809.a n : ℤ) = A139483 (n + 1)

end A139483

/-! ## A139483.P15194264877067751208

`eq[3, A020483(A017545(n))]`
-/

namespace A139483.P15194264877067751208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A017545 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139483.P15194264877067751208

namespace A139483

/-- `eq[3, A020483(A017545(n))]` -/
def P15194264877067751208.Spec : Prop :=
  ∀ n, (P15194264877067751208.a n : ℤ) = A139483 (n + 1)

end A139483

/-!
# A139484: Indices of Mersenne primes among primes of the form 24k + 7 (A107006).

The programs for A139484, there is no canonical definition to state claims against.
-/

/-! ## A139484.P1744519311198595097

`A028310(A115981(3*n)+A035205(n+1))`
-/

namespace A139484.P1744519311198595097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A115981 (3 * n) + A035205 (n + 1)).toNat

end

end A139484.P1744519311198595097

/-!
# A139485: a(1)=1. For m >= 0 and 1 <= k <= 2^m, a(2^m +k) = a(k) + Sum_{j=1..2^m} a(j).

The programs for A139485, there is no canonical definition to state claims against.
-/

/-! ## A139485.P14083698842824321368

`eq[2*A266123(n), A051275(n)]`
-/

namespace A139485.P14083698842824321368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139485.P14083698842824321368

/-! ## A139485.P349264538656834194

`eq[A001281(A051275(n)), A266123(n)]`
-/

namespace A139485.P349264538656834194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A051275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139485.P349264538656834194

/-! ## A139485.P8420505307375522799

`∑[A338251(A001405(and(n, -n)))]`
-/

namespace A139485.P8420505307375522799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (A001405 (Int.land (n : ℤ) (-(n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139485.P8420505307375522799

/-! ## A139485.P14025006108706677217

`∑[A169995(A005408(A061393(n)))]`
-/

namespace A139485.P14025006108706677217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169995 (A005408 (A061393 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139485.P14025006108706677217

/-! ## A139485.P6893836131804434627

`eq[A010177(n), A132301(A054895(n))]`
-/

namespace A139485.P6893836131804434627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132301 (A054895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139485.P6893836131804434627

/-!
# A139486: a(n) = Product_{j=0..n-1} (2^j + 2).

The programs for A139486, there is no canonical definition to state claims against.
-/

/-! ## A139486.P6992122012197349414

`A139485(2^n+1)-1`
-/

namespace A139486.P6992122012197349414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139485 (2 ^ n + 1) - 1

end

end A139486.P6992122012197349414

/-! ## A139486.P10425078971252274595

`∏[2*(a(n-1)-1)]` with `a(0)=1, a(1)=3`
-/

namespace A139486.P10425078971252274595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139486.P10425078971252274595

/-! ## A139486.P5776429658920347416

`∏[floor(2^(n-1))+2]/2`
-/

namespace A139486.P5776429658920347416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A139486.P5776429658920347416

/-! ## A139486.P18377731834160295410

`(2^(n-1)+2)*a(n-1)` with `a(0)=1`
-/

namespace A139486.P18377731834160295410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2) * a (n - 1)

end

end A139486.P18377731834160295410

/-! ## A139486.P11602934635812625180

`∏[a(n-1)+2^(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A139486.P11602934635812625180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139486.P11602934635812625180

/-!
# A139487: Numbers k such that 8k + 7 is prime.

The programs for A139487, the canonical program `A139487.P1787232498596544969` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139487 has offset 1).

The definition of A139487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139487.P1787232498596544969

`(A007522(n+1)-7)/8`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139487

/-- `(A007522(n+1)-7)/8` -/
def P1787232498596544969.Spec : Prop :=
  ∀ n, P1787232498596544969.a n = (A139487 (n + 1) : ℚ)

end A139487

/-! ## A139487.P4202121862112814253

`floor(p?[8*n-1]/8)`
-/

namespace A139487.P4202121862112814253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A139487.P4202121862112814253

namespace A139487

/-- `floor(p?[8*n-1]/8)` -/
def P4202121862112814253.Spec : Prop :=
  ∀ n, P4202121862112814253.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P17964510310952001468

`ceil(p?[8*n-1]/2)/4-1`
-/

namespace A139487.P17964510310952001468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ : ℚ) / 4 - 1

end

end A139487.P17964510310952001468

namespace A139487

/-- `ceil(p?[8*n-1]/2)/4-1` -/
def P17964510310952001468.Spec : Prop :=
  ∀ n, P17964510310952001468.a n = (A139487 (n + 1) : ℚ)

end A139487

/-! ## A139487.P2813252865371354411

`A005122(n+1)-1`
-/

namespace A139487.P2813252865371354411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 1

end

end A139487.P2813252865371354411

namespace A139487

/-- `A005122(n+1)-1` -/
def P2813252865371354411.Spec : Prop :=
  ∀ n, P2813252865371354411.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P3824725764952836410

`A153766(n+1)-2`
-/

namespace A139487.P3824725764952836410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 2

end

end A139487.P3824725764952836410

namespace A139487

/-- `A153766(n+1)-2` -/
def P3824725764952836410.Spec : Prop :=
  ∀ n, P3824725764952836410.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P15339008004474403904

`floor(A007522(n+1)/8)`
-/

namespace A139487.P15339008004474403904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007522 (n + 1) : ℚ) / 8⌋

end

end A139487.P15339008004474403904

namespace A139487

/-- `floor(A007522(n+1)/8)` -/
def P15339008004474403904.Spec : Prop :=
  ∀ n, P15339008004474403904.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P8398601478844444198

`A186303(n+1)/4-1`
-/

namespace A139487.P8398601478844444198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186303 (n + 1) : ℚ) / 4 - 1

end

end A139487.P8398601478844444198

namespace A139487

/-- `A186303(n+1)/4-1` -/
def P8398601478844444198.Spec : Prop :=
  ∀ n, P8398601478844444198.a n = (A139487 (n + 1) : ℚ)

end A139487

/-! ## A139487.P11645970287289799135

`(A186302(n+1)-3)/4`
-/

namespace A139487.P11645970287289799135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186302 (n + 1) - 3 : ℚ) / 4

end

end A139487.P11645970287289799135

namespace A139487

/-- `(A186302(n+1)-3)/4` -/
def P11645970287289799135.Spec : Prop :=
  ∀ n, P11645970287289799135.a n = (A139487 (n + 1) : ℚ)

end A139487

/-! ## A139487.P4761304876054148557

`record[A153766(A328399(n))-2]`
-/

namespace A139487.P4761304876054148557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (A328399 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139487.P4761304876054148557

namespace A139487

/-- `record[A153766(A328399(n))-2]` -/
def P4761304876054148557.Spec : Prop :=
  ∀ n, P4761304876054148557.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P4448742211143337059

`A007522(n+1)%A005122(n+1)`
-/

namespace A139487.P4448742211143337059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007522 (n + 1)) (A005122 (n + 1))

end

end A139487.P4448742211143337059

namespace A139487

/-- `A007522(n+1)%A005122(n+1)` -/
def P4448742211143337059.Spec : Prop :=
  ∀ n, P4448742211143337059.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P10916410410452109853

`A186302(n+1)%A005122(n+1)`
-/

namespace A139487.P10916410410452109853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186302 (n + 1)) (A005122 (n + 1))

end

end A139487.P10916410410452109853

namespace A139487

/-- `A186302(n+1)%A005122(n+1)` -/
def P10916410410452109853.Spec : Prop :=
  ∀ n, P10916410410452109853.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P4874545556009097047

`A022762(n+1)-(A005123(n+1)+1)`
-/

namespace A139487.P4874545556009097047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - (A005123 (n + 1) + 1)

end

end A139487.P4874545556009097047

namespace A139487

/-- `A022762(n+1)-(A005123(n+1)+1)` -/
def P4874545556009097047.Spec : Prop :=
  ∀ n, P4874545556009097047.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P5378408152409111672

`A022762(n+1)-(A153762(n+1)+2)`
-/

namespace A139487.P5378408152409111672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - (A153762 (n + 1) + 2)

end

end A139487.P5378408152409111672

namespace A139487

/-- `A022762(n+1)-(A153762(n+1)+2)` -/
def P5378408152409111672.Spec : Prop :=
  ∀ n, P5378408152409111672.a n = A139487 (n + 1)

end A139487

/-! ## A139487.P1497348701981272987

`eq[n+1, A258835(n)]`
-/

namespace A139487.P1497348701981272987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139487.P1497348701981272987

namespace A139487

/-- `eq[n+1, A258835(n)]` -/
def P1497348701981272987.Spec : Prop :=
  ∀ n, (P1497348701981272987.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P8862744272398088471

`eq[1, A001222(8*n+7)]`
-/

namespace A139487.P8862744272398088471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139487.P8862744272398088471

namespace A139487

/-- `eq[1, A001222(8*n+7)]` -/
def P8862744272398088471.Spec : Prop :=
  ∀ n, (P8862744272398088471.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P17675198114752422224

`eq[2, A000005(8*n+7)]`
-/

namespace A139487.P17675198114752422224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139487.P17675198114752422224

namespace A139487

/-- `eq[2, A000005(8*n+7)]` -/
def P17675198114752422224.Spec : Prop :=
  ∀ n, (P17675198114752422224.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P13671497675862467791

`lt[n+2, A020639(8*n+7)]`
-/

namespace A139487.P13671497675862467791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139487.P13671497675862467791

namespace A139487

/-- `lt[n+2, A020639(8*n+7)]` -/
def P13671497675862467791.Spec : Prop :=
  ∀ n, (P13671497675862467791.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P4791708245311975301

`lt[8*n, A006530(8*n+7)]`
-/

namespace A139487.P4791708245311975301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139487.P4791708245311975301

namespace A139487

/-- `lt[8*n, A006530(8*n+7)]` -/
def P4791708245311975301.Spec : Prop :=
  ∀ n, (P4791708245311975301.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P1198880884003258450

`lt[A000005(2*(4*n+3)+1), 3]`
-/

namespace A139487.P1198880884003258450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (4 * n + 3) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139487.P1198880884003258450

namespace A139487

/-- `lt[A000005(2*(4*n+3)+1), 3]` -/
def P1198880884003258450.Spec : Prop :=
  ∀ n, (P1198880884003258450.a n : ℤ) = A139487 (n + 1)

end A139487

/-! ## A139487.P9450700667947725021

`eq[1, A101264(A004767(n))]`
-/

namespace A139487.P9450700667947725021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139487.P9450700667947725021

namespace A139487

/-- `eq[1, A101264(A004767(n))]` -/
def P9450700667947725021.Spec : Prop :=
  ∀ n, (P9450700667947725021.a n : ℤ) = A139487 (n + 1)

end A139487

/-!
# A139488: Binomial transform of [1, 2, 3, 4, 0, 0, 0, ...].

The programs for A139488, the canonical program `A139488.P6623673175437759332` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139488 has offset 0).

The definition of A139488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139488.P6623673175437759332

`(4*n^3-3*n²+11*n+6)/6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139488

/-- `(4*n^3-3*n²+11*n+6)/6` -/
def P6623673175437759332.Spec : Prop :=
  ∀ n, P6623673175437759332.a n = (A139488 n : ℚ)

end A139488

/-! ## A139488.P12181563600261947221

`Δ[n*(C(n, 3)+n)]`
-/

namespace A139488.P12181563600261947221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose n 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A139488.P12181563600261947221

namespace A139488

/-- `Δ[n*(C(n, 3)+n)]` -/
def P12181563600261947221.Spec : Prop :=
  ∀ n, P12181563600261947221.a n = A139488 n

end A139488

/-! ## A139488.P6333935118603969139

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A139488.P6333935118603969139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P6333935118603969139

namespace A139488

/-- `∑[∑[a(n-1)+4]]` -/
def P6333935118603969139.Spec : Prop :=
  ∀ n, (P6333935118603969139.a n : ℤ) = A139488 n

end A139488

/-! ## A139488.P13325706871481978289

`∑[∑[ogf((1-x+2x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A139488.P13325706871481978289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P13325706871481978289

namespace A139488

/-- `∑[∑[ogf((1-x+2x^2+2x^3)/(1-2x+x^2))]]` -/
def P13325706871481978289.Spec : Prop :=
  ∀ n, P13325706871481978289.a n = A139488 n

end A139488

/-! ## A139488.P15572437229096289109

`∑[n+1]+C(2*n, 3)/2`
-/

namespace A139488.P15572437229096289109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (2 * n) 3 : ℚ) / 2

end

end A139488.P15572437229096289109

namespace A139488

/-- `∑[n+1]+C(2*n, 3)/2` -/
def P15572437229096289109.Spec : Prop :=
  ∀ n, P15572437229096289109.a n = (A139488 n : ℚ)

end A139488

/-! ## A139488.P16360890038316061229

`∑[4*n-(5-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A139488.P16360890038316061229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (4 * n : ℤ) - (5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P16360890038316061229

namespace A139488

/-- `∑[4*n-(5-a(n-1))]` -/
def P16360890038316061229.Spec : Prop :=
  ∀ n, P16360890038316061229.a n = A139488 n

end A139488

/-! ## A139488.P6879321476053991613

`Δ[A361099(n)]`
-/

namespace A139488.P6879321476053991613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139488.P6879321476053991613

namespace A139488

/-- `Δ[A361099(n)]` -/
def P6879321476053991613.Spec : Prop :=
  ∀ n, P6879321476053991613.a n = A139488 n

end A139488

/-! ## A139488.P6364431000509873613

`∑[A116735(n+1)]`
-/

namespace A139488.P6364431000509873613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P6364431000509873613

namespace A139488

/-- `∑[A116735(n+1)]` -/
def P6364431000509873613.Spec : Prop :=
  ∀ n, P6364431000509873613.a n = A139488 n

end A139488

/-! ## A139488.P16976162851912339239

`Δ[A384852(n)]+1`
-/

namespace A139488.P16976162851912339239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A139488.P16976162851912339239

namespace A139488

/-- `Δ[A384852(n)]+1` -/
def P16976162851912339239.Spec : Prop :=
  ∀ n, P16976162851912339239.a n = A139488 n

end A139488

/-! ## A139488.P11838905316839743773

`∑[∑[A135042(n)-n]]`
-/

namespace A139488.P11838905316839743773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P11838905316839743773

namespace A139488

/-- `∑[∑[A135042(n)-n]]` -/
def P11838905316839743773.Spec : Prop :=
  ∀ n, P11838905316839743773.a n = A139488 n

end A139488

/-! ## A139488.P11680573449496840409

`A086514(n+1)+∑[n²]`
-/

namespace A139488.P11680573449496840409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086514 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139488.P11680573449496840409

namespace A139488

/-- `A086514(n+1)+∑[n²]` -/
def P11680573449496840409.Spec : Prop :=
  ∀ n, P11680573449496840409.a n = A139488 n

end A139488

/-! ## A139488.P975295779137555896

`A135859(n+1)-∑[n²]`
-/

namespace A139488.P975295779137555896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135859 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139488.P975295779137555896

namespace A139488

/-- `A135859(n+1)-∑[n²]` -/
def P975295779137555896.Spec : Prop :=
  ∀ n, P975295779137555896.a n = A139488 n

end A139488

/-! ## A139488.P10707468459495931295

`∑[(n-1)*A004275(n)+1+n]`
-/

namespace A139488.P10707468459495931295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A004275 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139488.P10707468459495931295

namespace A139488

/-- `∑[(n-1)*A004275(n)+1+n]` -/
def P10707468459495931295.Spec : Prop :=
  ∀ n, P10707468459495931295.a n = A139488 n

end A139488

/-! ## A139488.P15030406649798174567

`A037235(n)+A000124(n)`
-/

namespace A139488.P15030406649798174567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n + A000124 n

end

end A139488.P15030406649798174567

namespace A139488

/-- `A037235(n)+A000124(n)` -/
def P15030406649798174567.Spec : Prop :=
  ∀ n, P15030406649798174567.a n = A139488 n

end A139488

/-! ## A139488.P4726296814125144678

`A110325(n)+A016061(n)`
-/

namespace A139488.P4726296814125144678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110325 n + A016061 n

end

end A139488.P4726296814125144678

namespace A139488

/-- `A110325(n)+A016061(n)` -/
def P4726296814125144678.Spec : Prop :=
  ∀ n, P4726296814125144678.a n = A139488 n

end A139488

/-! ## A139488.P1377124973179786764

`A084570(n)+A057566(n)`
-/

namespace A139488.P1377124973179786764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084570 n + A057566 n

end

end A139488.P1377124973179786764

namespace A139488

/-- `A084570(n)+A057566(n)` -/
def P1377124973179786764.Spec : Prop :=
  ∀ n, P1377124973179786764.a n = A139488 n

end A139488

/-! ## A139488.P13626757264870708944

`A100119(n)+A050407(n)`
-/

namespace A139488.P13626757264870708944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 n + A050407 n

end

end A139488.P13626757264870708944

namespace A139488

/-- `A100119(n)+A050407(n)` -/
def P13626757264870708944.Spec : Prop :=
  ∀ n, P13626757264870708944.a n = A139488 n

end A139488

/-! ## A139488.P9956914807763842756

`A189890(n)+A000292(n)`
-/

namespace A139488.P9956914807763842756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189890 n + A000292 n

end

end A139488.P9956914807763842756

namespace A139488

/-- `A189890(n)+A000292(n)` -/
def P9956914807763842756.Spec : Prop :=
  ∀ n, P9956914807763842756.a n = A139488 n

end A139488

/-! ## A139488.P2980115907438797435

`A218152(n)+A004006(n)`
-/

namespace A139488.P2980115907438797435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218152 n + A004006 n

end

end A139488.P2980115907438797435

namespace A139488

/-- `A218152(n)+A004006(n)` -/
def P2980115907438797435.Spec : Prop :=
  ∀ n, P2980115907438797435.a n = A139488 n

end A139488

/-! ## A139488.P15035983268525357776

`A005894(n)-A005449(n)`
-/

namespace A139488.P15035983268525357776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - A005449 n

end

end A139488.P15035983268525357776

namespace A139488

/-- `A005894(n)-A005449(n)` -/
def P15035983268525357776.Spec : Prop :=
  ∀ n, P15035983268525357776.a n = A139488 n

end A139488

/-!
# A139492: Primes of the form x^2 + 5x*y + y^2 for x and y nonnegative.

The programs for A139492, the canonical program `A139492.P1000354163127951852` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139492 has offset 1).

The definition of A139492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139492.P6984745296887606725

`p?[A243172(n+1)]`
-/

namespace A139492.P6984745296887606725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139492.P6984745296887606725

namespace A139492

/-- `p?[A243172(n+1)]` -/
def P6984745296887606725.Spec : Prop :=
  ∀ n, P6984745296887606725.a n = A139492 (n + 1)

end A139492

/-! ## A139492.P1000354163127951852

`p?[((n+1)%7)²+3*n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139492

/-- `p?[((n+1)%7)²+3*n]` -/
def P1000354163127951852.Spec : Prop :=
  ∀ n, (P1000354163127951852.a n : ℤ) = A139492 (n + 1)

theorem P1000354163127951852.correct : P1000354163127951852.Spec := by
  intro n
  simp only [A139492, Nat.add_sub_cancel]

end A139492

/-! ## A139492.P17917930552610158077

`∩[A002476(n+1), A033207(n+1)]`
-/

namespace A139492.P17917930552610158077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P17917930552610158077

namespace A139492

/-- `∩[A002476(n+1), A033207(n+1)]` -/
def P17917930552610158077.Spec : Prop :=
  ∀ n, (P17917930552610158077.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P7625886816327496111

`∩[A007645(n+1), A033207(n+1)]`
-/

namespace A139492.P7625886816327496111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P7625886816327496111

namespace A139492

/-- `∩[A007645(n+1), A033207(n+1)]` -/
def P7625886816327496111.Spec : Prop :=
  ∀ n, (P7625886816327496111.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P17041504631816788082

`∩[A002476(n+1), A038893(n+1)]`
-/

namespace A139492.P17041504631816788082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P17041504631816788082

namespace A139492

/-- `∩[A002476(n+1), A038893(n+1)]` -/
def P17041504631816788082.Spec : Prop :=
  ∀ n, (P17041504631816788082.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P17020899830232360180

`∩[A002476(n+1), A045373(n+1)]`
-/

namespace A139492.P17020899830232360180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P17020899830232360180

namespace A139492

/-- `∩[A002476(n+1), A045373(n+1)]` -/
def P17020899830232360180.Spec : Prop :=
  ∀ n, (P17020899830232360180.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P8659484858177401421

`∩[A007645(n+1), A045373(n+1)]`
-/

namespace A139492.P8659484858177401421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P8659484858177401421

namespace A139492

/-- `∩[A007645(n+1), A045373(n+1)]` -/
def P8659484858177401421.Spec : Prop :=
  ∀ n, (P8659484858177401421.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P9379662152225774653

`∩[A033207(n+1), A038893(n+1)]`
-/

namespace A139492.P9379662152225774653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P9379662152225774653

namespace A139492

/-- `∩[A033207(n+1), A038893(n+1)]` -/
def P9379662152225774653.Spec : Prop :=
  ∀ n, (P9379662152225774653.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P12427989804805305452

`∩[A033207(n+1), A045331(n+1)]`
-/

namespace A139492.P12427989804805305452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P12427989804805305452

namespace A139492

/-- `∩[A033207(n+1), A045331(n+1)]` -/
def P12427989804805305452.Spec : Prop :=
  ∀ n, (P12427989804805305452.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P14389851771818591138

`∩[A033207(n+1), A045375(n+1)]`
-/

namespace A139492.P14389851771818591138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P14389851771818591138

namespace A139492

/-- `∩[A033207(n+1), A045375(n+1)]` -/
def P14389851771818591138.Spec : Prop :=
  ∀ n, (P14389851771818591138.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P11310282639167990836

`∩[A123365(n+1), A033207(n+1)]`
-/

namespace A139492.P11310282639167990836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P11310282639167990836

namespace A139492

/-- `∩[A123365(n+1), A033207(n+1)]` -/
def P11310282639167990836.Spec : Prop :=
  ∀ n, (P11310282639167990836.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P16381378679925009355

`∩[A055664(n+1), A033207(n+1)]`
-/

namespace A139492.P16381378679925009355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P16381378679925009355

namespace A139492

/-- `∩[A055664(n+1), A033207(n+1)]` -/
def P16381378679925009355.Spec : Prop :=
  ∀ n, (P16381378679925009355.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P11466183669640925446

`∩[A133290(n+1), A033207(n+1)]`
-/

namespace A139492.P11466183669640925446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P11466183669640925446

namespace A139492

/-- `∩[A133290(n+1), A033207(n+1)]` -/
def P11466183669640925446.Spec : Prop :=
  ∀ n, (P11466183669640925446.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P4200595290436154133

`∩[A137827(n+1), A033207(n+1)]`
-/

namespace A139492.P4200595290436154133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P4200595290436154133

namespace A139492

/-- `∩[A137827(n+1), A033207(n+1)]` -/
def P4200595290436154133.Spec : Prop :=
  ∀ n, (P4200595290436154133.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P9425576512535373815

`filter[A033207(n+1), A070563(#)]`
-/

namespace A139492.P9425576512535373815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A139492.P9425576512535373815

namespace A139492

/-- `filter[A033207(n+1), A070563(#)]` -/
def P9425576512535373815.Spec : Prop :=
  ∀ n, P9425576512535373815.a n = A139492 (n + 1)

end A139492

/-! ## A139492.P17490487594633865870

`filter[A038893(n+1), A070563(#)]`
-/

namespace A139492.P17490487594633865870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A139492.P17490487594633865870

namespace A139492

/-- `filter[A038893(n+1), A070563(#)]` -/
def P17490487594633865870.Spec : Prop :=
  ∀ n, P17490487594633865870.a n = A139492 (n + 1)

end A139492

/-! ## A139492.P16318167910093944008

`filter[A045373(n+1), A070563(#)]`
-/

namespace A139492.P16318167910093944008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A139492.P16318167910093944008

namespace A139492

/-- `filter[A045373(n+1), A070563(#)]` -/
def P16318167910093944008.Spec : Prop :=
  ∀ n, P16318167910093944008.a n = A139492 (n + 1)

end A139492

/-! ## A139492.P15999033158573304170

`∩[A033207(n+1), A107925(n+1)]`
-/

namespace A139492.P15999033158573304170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P15999033158573304170

namespace A139492

/-- `∩[A033207(n+1), A107925(n+1)]` -/
def P15999033158573304170.Spec : Prop :=
  ∀ n, (P15999033158573304170.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P6396162916139472699

`∩[A033207(n+1), A129904(n+1)]`
-/

namespace A139492.P6396162916139472699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P6396162916139472699

namespace A139492

/-- `∩[A033207(n+1), A129904(n+1)]` -/
def P6396162916139472699.Spec : Prop :=
  ∀ n, (P6396162916139472699.a n : ℤ) = A139492 (n + 1)

end A139492

/-! ## A139492.P13786883346815935809

`∩[A004611(n+1), A033207(n+1)]`
-/

namespace A139492.P13786883346815935809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139492.P13786883346815935809

namespace A139492

/-- `∩[A004611(n+1), A033207(n+1)]` -/
def P13786883346815935809.Spec : Prop :=
  ∀ n, (P13786883346815935809.a n : ℤ) = A139492 (n + 1)

end A139492

/-!
# A139493: Primes of the form x^2 + 9x*y + y^2 for x and y nonnegative.

The programs for A139493, there is no canonical definition to state claims against.
-/

/-! ## A139493.P18093043863584858312

`p?[A316621(n+1)]`
-/

namespace A139493.P18093043863584858312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139493.P18093043863584858312

/-! ## A139493.P15925323589063540584

`∩[A038961(n+1), A316621(n+1)]`
-/

namespace A139493.P15925323589063540584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P15925323589063540584

/-! ## A139493.P40281899762413299

`∩[A038961(n+1), A045386(n+1)]`
-/

namespace A139493.P40281899762413299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P40281899762413299

/-! ## A139493.P17860596388502616393

`∩[A033207(n+1), A316621(n+1)]`
-/

namespace A139493.P17860596388502616393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P17860596388502616393

/-! ## A139493.P18192311717342594826

`∩[A033207(n+1), A056874(n+1)]`
-/

namespace A139493.P18192311717342594826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P18192311717342594826

/-! ## A139493.P5506128613130652689

`∩[A038961(n+1), A056874(n+1)]`
-/

namespace A139493.P5506128613130652689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P5506128613130652689

/-! ## A139493.P4997454474440851573

`∩[A045373(n+1), A056874(n+1)]`
-/

namespace A139493.P4997454474440851573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P4997454474440851573

/-! ## A139493.P4432479531770067768

`∩[A045386(n+1), A056874(n+1)]`
-/

namespace A139493.P4432479531770067768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P4432479531770067768

/-! ## A139493.P1696619751491531640

`∩[A341785(n+1), A033207(n+1)]`
-/

namespace A139493.P1696619751491531640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P1696619751491531640

/-! ## A139493.P1398045761653445831

`∩[A045384(n+1), A316621(n+1)]`
-/

namespace A139493.P1398045761653445831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P1398045761653445831

/-! ## A139493.P4882962895147864554

`∩[A045324(n+1), A316621(n+1)]`
-/

namespace A139493.P4882962895147864554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P4882962895147864554

/-! ## A139493.P7726692451182772962

`∩[A045337(n+1), A316621(n+1)]`
-/

namespace A139493.P7726692451182772962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P7726692451182772962

/-! ## A139493.P13816181278656505006

`∩[A045350(n+1), A316621(n+1)]`
-/

namespace A139493.P13816181278656505006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P13816181278656505006

/-! ## A139493.P17103747175123143060

`∩[A045320(n+1), A316621(n+1)]`
-/

namespace A139493.P17103747175123143060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P17103747175123143060

/-! ## A139493.P10411019341108734223

`∩[A045334(n+1), A316621(n+1)]`
-/

namespace A139493.P10411019341108734223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P10411019341108734223

/-! ## A139493.P7672225155868808990

`∩[A045346(n+1), A316621(n+1)]`
-/

namespace A139493.P7672225155868808990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P7672225155868808990

/-! ## A139493.P516945087439096877

`∩[A316621(n+1), A042988(n)]`
-/

namespace A139493.P516945087439096877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P516945087439096877

/-! ## A139493.P1590154486831824494

`∩[A044042(n+1), A316621(n+1)]`
-/

namespace A139493.P1590154486831824494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P1590154486831824494

/-! ## A139493.P8878844449611661504

`∩[A065396(n+1), A316621(n+1)]`
-/

namespace A139493.P8878844449611661504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P8878844449611661504

/-! ## A139493.P13427067355522400971

`∩[A004139(n+1), A316621(n+1)]`
-/

namespace A139493.P13427067355522400971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139493.P13427067355522400971

/-!
# A139494: Primes of the form x^2 + 11x*y + y^2 for x and y nonnegative.

The programs for A139494, there is no canonical definition to state claims against.
-/

/-! ## A139494.P4260999399420373677

`A267455(n+2)`
-/

namespace A139494.P4260999399420373677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 2)

end

end A139494.P4260999399420373677

/-! ## A139494.P17071576215139515566

`∩[A002476(n+1), A038883(n+1)]`
-/

namespace A139494.P17071576215139515566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P17071576215139515566

/-! ## A139494.P6396675820701232221

`∩[A038883(n+1), A045375(n+1)]`
-/

namespace A139494.P6396675820701232221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P6396675820701232221

/-! ## A139494.P6990642186060706557

`∩[A038883(n+1), A123365(n+1)]`
-/

namespace A139494.P6990642186060706557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P6990642186060706557

/-! ## A139494.P4613162078561131740

`∩[A007645(n+2), A038883(n+2)]`
-/

namespace A139494.P4613162078561131740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P4613162078561131740

/-! ## A139494.P9889167026963323798

`∩[A038883(n+2), A045331(n+2)]`
-/

namespace A139494.P9889167026963323798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P9889167026963323798

/-! ## A139494.P13896107312062370827

`∩[A038883(n+2), A279815(n+2)]`
-/

namespace A139494.P13896107312062370827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P13896107312062370827

/-! ## A139494.P10608549528840054810

`∩[A038883(n+2), A055664(n+2)]`
-/

namespace A139494.P10608549528840054810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P10608549528840054810

/-! ## A139494.P8832419003124738342

`∩[A038883(n+1), A133290(n+1)]`
-/

namespace A139494.P8832419003124738342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P8832419003124738342

/-! ## A139494.P8248452366832699967

`∩[A038883(n+1), A137827(n+1)]`
-/

namespace A139494.P8248452366832699967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P8248452366832699967

/-! ## A139494.P6676317069243769155

`filter[A038883(n+1), A070563(#)]`
-/

namespace A139494.P6676317069243769155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A139494.P6676317069243769155

/-! ## A139494.P15699644062484921648

`∩[A038883(n+1), A107925(n+1)]`
-/

namespace A139494.P15699644062484921648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P15699644062484921648

/-! ## A139494.P4056295186358049295

`∩[A038883(n+1), A129904(n+1)]`
-/

namespace A139494.P4056295186358049295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P4056295186358049295

/-! ## A139494.P7423377535583732954

`∩[A004611(n+1), A038883(n+1)]`
-/

namespace A139494.P7423377535583732954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P7423377535583732954

/-! ## A139494.P1546273684678799009

`filter[A038883(n+1), A354982(#)]`
-/

namespace A139494.P1546273684678799009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A139494.P1546273684678799009

/-! ## A139494.P2389453278419531947

`filter[A038883(n+2), A353815(#)]`
-/

namespace A139494.P2389453278419531947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A139494.P2389453278419531947

/-! ## A139494.P5044986900241269089

`filter[A038883(n+2), A353816(#)]`
-/

namespace A139494.P5044986900241269089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A139494.P5044986900241269089

/-! ## A139494.P16064807411226739109

`∩[A034021(n+2), A038883(n+2)]`
-/

namespace A139494.P16064807411226739109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139494.P16064807411226739109

/-!
# A139495: Primes of the form x^2 + 12x*y + y^2 for x and y nonnegative.

The programs for A139495, the canonical program `A139495.P6736765847276065234` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139495 has offset 1).

The definition of A139495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139495.P6736765847276065234

`∩[A033205(n+1), A106881(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139495

/-- `∩[A033205(n+1), A106881(n+1)]` -/
def P6736765847276065234.Spec : Prop :=
  ∀ n, (P6736765847276065234.a n : ℤ) = A139495 (n + 1)

theorem P6736765847276065234.correct : P6736765847276065234.Spec := by
  intro n
  simp only [A139495, Nat.add_sub_cancel]

end A139495

/-! ## A139495.P13404597287615212301

`∩[A033205(n+1), A107134(n+1)]`
-/

namespace A139495.P13404597287615212301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P13404597287615212301

namespace A139495

/-- `∩[A033205(n+1), A107134(n+1)]` -/
def P13404597287615212301.Spec : Prop :=
  ∀ n, (P13404597287615212301.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P7942698411260801489

`∩[A038911(n+1), A106881(n+1)]`
-/

namespace A139495.P7942698411260801489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P7942698411260801489

namespace A139495

/-- `∩[A038911(n+1), A106881(n+1)]` -/
def P7942698411260801489.Spec : Prop :=
  ∀ n, (P7942698411260801489.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P2702690441618594324

`∩[A038911(n+1), A107134(n+1)]`
-/

namespace A139495.P2702690441618594324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P2702690441618594324

namespace A139495

/-- `∩[A038911(n+1), A107134(n+1)]` -/
def P2702690441618594324.Spec : Prop :=
  ∀ n, (P2702690441618594324.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P11686280171236118976

`∩[A038872(n+1), A107134(n+1)]`
-/

namespace A139495.P11686280171236118976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P11686280171236118976

namespace A139495

/-- `∩[A038872(n+1), A107134(n+1)]` -/
def P11686280171236118976.Spec : Prop :=
  ∀ n, (P11686280171236118976.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P16750550572717581062

`∩[A045468(n+1), A107134(n+1)]`
-/

namespace A139495.P16750550572717581062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P16750550572717581062

namespace A139495

/-- `∩[A045468(n+1), A107134(n+1)]` -/
def P16750550572717581062.Spec : Prop :=
  ∀ n, (P16750550572717581062.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P7822855221774800894

`∩[A064739(n+1), A107134(n+1)]`
-/

namespace A139495.P7822855221774800894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P7822855221774800894

namespace A139495

/-- `∩[A064739(n+1), A107134(n+1)]` -/
def P7822855221774800894.Spec : Prop :=
  ∀ n, (P7822855221774800894.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P13682025297913089157

`∩[A191026(n+1), A033205(n+1)]`
-/

namespace A139495.P13682025297913089157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P13682025297913089157

namespace A139495

/-- `∩[A191026(n+1), A033205(n+1)]` -/
def P13682025297913089157.Spec : Prop :=
  ∀ n, (P13682025297913089157.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P1790439761121242636

`∩[A033205(n+1), A038878(n+1)]`
-/

namespace A139495.P1790439761121242636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P1790439761121242636

namespace A139495

/-- `∩[A033205(n+1), A038878(n+1)]` -/
def P1790439761121242636.Spec : Prop :=
  ∀ n, (P1790439761121242636.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P113301126365858996

`∩[A038878(n+1), A091729(n+1)]`
-/

namespace A139495.P113301126365858996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P113301126365858996

namespace A139495

/-- `∩[A038878(n+1), A091729(n+1)]` -/
def P113301126365858996.Spec : Prop :=
  ∀ n, (P113301126365858996.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P16821390231888488447

`∩[A038878(n+1), A106881(n+1)]`
-/

namespace A139495.P16821390231888488447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P16821390231888488447

namespace A139495

/-- `∩[A038878(n+1), A106881(n+1)]` -/
def P16821390231888488447.Spec : Prop :=
  ∀ n, (P16821390231888488447.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P6152751188490223728

`∩[A106881(n+1), A240920(n+1)]`
-/

namespace A139495.P6152751188490223728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P6152751188490223728

namespace A139495

/-- `∩[A106881(n+1), A240920(n+1)]` -/
def P6152751188490223728.Spec : Prop :=
  ∀ n, (P6152751188490223728.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P15426754616904938290

`∩[A002144(n+1), A106881(n+1)]`
-/

namespace A139495.P15426754616904938290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P15426754616904938290

namespace A139495

/-- `∩[A002144(n+1), A106881(n+1)]` -/
def P15426754616904938290.Spec : Prop :=
  ∀ n, (P15426754616904938290.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P16239031875367234422

`∩[A002313(n+1), A106881(n+1)]`
-/

namespace A139495.P16239031875367234422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P16239031875367234422

namespace A139495

/-- `∩[A002313(n+1), A106881(n+1)]` -/
def P16239031875367234422.Spec : Prop :=
  ∀ n, (P16239031875367234422.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P1906586452385948483

`∩[A076518(n+1), A107134(n+1)]`
-/

namespace A139495.P1906586452385948483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P1906586452385948483

namespace A139495

/-- `∩[A076518(n+1), A107134(n+1)]` -/
def P1906586452385948483.Spec : Prop :=
  ∀ n, (P1906586452385948483.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P3531278087206488007

`∩[A033205(n+1), A033207(n+1)]`
-/

namespace A139495.P3531278087206488007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P3531278087206488007

namespace A139495

/-- `∩[A033205(n+1), A033207(n+1)]` -/
def P3531278087206488007.Spec : Prop :=
  ∀ n, (P3531278087206488007.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P5714402030340038009

`∩[A033205(n+1), A045373(n+1)]`
-/

namespace A139495.P5714402030340038009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P5714402030340038009

namespace A139495

/-- `∩[A033205(n+1), A045373(n+1)]` -/
def P5714402030340038009.Spec : Prop :=
  ∀ n, (P5714402030340038009.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P5792100190188052921

`∩[A033205(n+1), A045386(n+1)]`
-/

namespace A139495.P5792100190188052921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P5792100190188052921

namespace A139495

/-- `∩[A033205(n+1), A045386(n+1)]` -/
def P5792100190188052921.Spec : Prop :=
  ∀ n, (P5792100190188052921.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P12698839628418453620

`∩[A033207(n+1), A091729(n+1)]`
-/

namespace A139495.P12698839628418453620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P12698839628418453620

namespace A139495

/-- `∩[A033207(n+1), A091729(n+1)]` -/
def P12698839628418453620.Spec : Prop :=
  ∀ n, (P12698839628418453620.a n : ℤ) = A139495 (n + 1)

end A139495

/-! ## A139495.P11457405043836269403

`∩[A045373(n+1), A091729(n+1)]`
-/

namespace A139495.P11457405043836269403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P11457405043836269403

namespace A139495

/-- `∩[A045373(n+1), A091729(n+1)]` -/
def P11457405043836269403.Spec : Prop :=
  ∀ n, (P11457405043836269403.a n : ℤ) = A139495 (n + 1)

end A139495

/-!
# A139496: Primes of the form x^2 + 13x*y + y^2 for x and y nonnegative.

The programs for A139496, there is no canonical definition to state claims against.
-/

/-! ## A139496.P15132530041392233621

`∩[A033212(n+1), A107013(n+1)]`
-/

namespace A139496.P15132530041392233621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P15132530041392233621

/-! ## A139496.P3058224513333826033

`∩[A033212(n+1), A141177(n+1)]`
-/

namespace A139496.P3058224513333826033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P3058224513333826033

/-! ## A139496.P10369746168253550497

`∩[A033212(n+1), A191036(n+1)]`
-/

namespace A139496.P10369746168253550497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P10369746168253550497

/-! ## A139496.P2672650507419839712

`∩[A107013(n+1), A191036(n+1)]`
-/

namespace A139496.P2672650507419839712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P2672650507419839712

/-! ## A139496.P17147510583777874236

`∩[A038872(n+1), A107013(n+1)]`
-/

namespace A139496.P17147510583777874236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P17147510583777874236

/-! ## A139496.P10757213129284158649

`∩[A045468(n+1), A107013(n+1)]`
-/

namespace A139496.P10757213129284158649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P10757213129284158649

/-! ## A139496.P6152022462811079142

`∩[A064739(n+1), A107013(n+1)]`
-/

namespace A139496.P6152022462811079142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P6152022462811079142

/-! ## A139496.P15275890454803462635

`∩[A038872(n+1), A141177(n+1)]`
-/

namespace A139496.P15275890454803462635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P15275890454803462635

/-! ## A139496.P6628682418200944098

`∩[A045468(n+1), A141177(n+1)]`
-/

namespace A139496.P6628682418200944098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P6628682418200944098

/-! ## A139496.P12833033493802511795

`∩[A064739(n+1), A141177(n+1)]`
-/

namespace A139496.P12833033493802511795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P12833033493802511795

/-! ## A139496.P8007652091736557456

`∩[A107013(n+1), A191018(n+1)]`
-/

namespace A139496.P8007652091736557456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P8007652091736557456

/-! ## A139496.P285031131265018471

`∩[A191018(n+1), A267478(n+1)]`
-/

namespace A139496.P285031131265018471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P285031131265018471

/-! ## A139496.P11178131917323443958

`∩[A002476(n+1), A267478(n+1)]`
-/

namespace A139496.P11178131917323443958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P11178131917323443958

/-! ## A139496.P6425247429714000795

`∩[A007645(n+1), A267478(n+1)]`
-/

namespace A139496.P6425247429714000795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P6425247429714000795

/-! ## A139496.P17449354031440458765

`∩[A076518(n+1), A107013(n+1)]`
-/

namespace A139496.P17449354031440458765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P17449354031440458765

/-! ## A139496.P615868157581433883

`∩[A076518(n+1), A141177(n+1)]`
-/

namespace A139496.P615868157581433883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P615868157581433883

/-! ## A139496.P11366588502673833988

`∩[A033212(n+1), A038907(n+1)]`
-/

namespace A139496.P11366588502673833988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P11366588502673833988

/-! ## A139496.P16875149780864887364

`∩[A033212(n+1), A296920(n+1)]`
-/

namespace A139496.P16875149780864887364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P16875149780864887364

/-! ## A139496.P960252180670861628

`∩[A033212(n+1), A056874(n+1)]`
-/

namespace A139496.P960252180670861628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P960252180670861628

/-! ## A139496.P15049644286234451279

`∩[A055664(n+1), A267478(n+1)]`
-/

namespace A139496.P15049644286234451279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139496.P15049644286234451279

/-!
# A139497: Primes of the form x^2 + 15x*y + y^2 for x and y nonnegative.

The programs for A139497, there is no canonical definition to state claims against.
-/

/-! ## A139497.P17703364649267750349

`A352010(n)+record[A352000(2*n+5)]`
-/

namespace A139497.P17703364649267750349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352000 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352010 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139497.P17703364649267750349

/-!
# A139498: Primes of the form x^2 + 17x*y + y^2 for x and y nonnegative.

The programs for A139498, there is no canonical definition to state claims against.
-/

/-! ## A139498.P7739910602512737666

`∩[A033212(n+1), A141193(n+1)]`
-/

namespace A139498.P7739910602512737666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P7739910602512737666

/-! ## A139498.P12719364991362724678

`∩[A033212(n+1), A267603(n+1)]`
-/

namespace A139498.P12719364991362724678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P12719364991362724678

/-! ## A139498.P10210581888268285939

`∩[A038872(n+1), A141193(n+1)]`
-/

namespace A139498.P10210581888268285939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P10210581888268285939

/-! ## A139498.P8487205709825098523

`∩[A045468(n+1), A141193(n+1)]`
-/

namespace A139498.P8487205709825098523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P8487205709825098523

/-! ## A139498.P16778546015843270390

`∩[A064739(n+1), A141193(n+1)]`
-/

namespace A139498.P16778546015843270390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P16778546015843270390

/-! ## A139498.P3335615847649813362

`∩[A141193(n+1), A191018(n+1)]`
-/

namespace A139498.P3335615847649813362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P3335615847649813362

/-! ## A139498.P14303466618438201615

`∩[A033212(n+1), A106863(n+1)]`
-/

namespace A139498.P14303466618438201615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P14303466618438201615

/-! ## A139498.P14165553442360935325

`∩[A002476(n+1), A267603(n+1)]`
-/

namespace A139498.P14165553442360935325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P14165553442360935325

/-! ## A139498.P6987367237838364045

`∩[A007645(n+1), A267603(n+1)]`
-/

namespace A139498.P6987367237838364045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P6987367237838364045

/-! ## A139498.P17662668681918639282

`∩[A045331(n+1), A267603(n+1)]`
-/

namespace A139498.P17662668681918639282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P17662668681918639282

/-! ## A139498.P5216811539819325772

`∩[A045375(n+1), A267603(n+1)]`
-/

namespace A139498.P5216811539819325772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P5216811539819325772

/-! ## A139498.P2512555303255307576

`∩[A123365(n+1), A267603(n+1)]`
-/

namespace A139498.P2512555303255307576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P2512555303255307576

/-! ## A139498.P11359544904970909620

`∩[A076518(n+1), A141193(n+1)]`
-/

namespace A139498.P11359544904970909620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P11359544904970909620

/-! ## A139498.P9223223886677497028

`∩[A279815(n+1), A267603(n+1)]`
-/

namespace A139498.P9223223886677497028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P9223223886677497028

/-! ## A139498.P6668019548628813817

`∩[A033212(n+1), A038935(n+1)]`
-/

namespace A139498.P6668019548628813817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P6668019548628813817

/-! ## A139498.P8906001091508438275

`∩[A038935(n+1), A267603(n+1)]`
-/

namespace A139498.P8906001091508438275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P8906001091508438275

/-! ## A139498.P5884714709566965951

`∩[A141193(n+1), A341783(n+1)]`
-/

namespace A139498.P5884714709566965951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P5884714709566965951

/-! ## A139498.P10704250553130391749

`∩[A033212(n+1), A341787(n+1)]`
-/

namespace A139498.P10704250553130391749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P10704250553130391749

/-! ## A139498.P8191855072236764790

`∩[A055664(n+1), A267603(n+1)]`
-/

namespace A139498.P8191855072236764790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P8191855072236764790

/-! ## A139498.P15258870492587694005

`∩[A133290(n+1), A267603(n+1)]`
-/

namespace A139498.P15258870492587694005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139498.P15258870492587694005

/-!
# A139499: Primes of the form x^2 + 19x*y + y^2 for x and y nonnegative.

The programs for A139499, there is no canonical definition to state claims against.
-/

/-! ## A139499.P3163209024520491915

`∩[A106904(n+1), A139492(n+1)]`
-/

namespace A139499.P3163209024520491915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P3163209024520491915

/-! ## A139499.P2223084063492131716

`∩[A106904(n+1), A243172(n+1)]`
-/

namespace A139499.P2223084063492131716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P2223084063492131716

/-! ## A139499.P486382497017449100

`∩[A038889(n+1), A139492(n+1)]`
-/

namespace A139499.P486382497017449100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P486382497017449100

/-! ## A139499.P2575061519721963412

`∩[A038889(n+1), A243172(n+1)]`
-/

namespace A139499.P2575061519721963412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P2575061519721963412

/-! ## A139499.P9091251850056833851

`∩[A139492(n+1), A296938(n+1)]`
-/

namespace A139499.P9091251850056833851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P9091251850056833851

/-! ## A139499.P18209633665437314905

`∩[A243172(n+1), A296938(n+1)]`
-/

namespace A139499.P18209633665437314905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P18209633665437314905

/-! ## A139499.P16074217279872541908

`∩[A139492(n+1), A191034(n+1)]`
-/

namespace A139499.P16074217279872541908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P16074217279872541908

/-! ## A139499.P1962753759475212716

`∩[A191034(n+1), A243172(n+1)]`
-/

namespace A139499.P1962753759475212716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P1962753759475212716

/-! ## A139499.P4392280801913819878

`∩[A033207(n+1), A106904(n+1)]`
-/

namespace A139499.P4392280801913819878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P4392280801913819878

/-! ## A139499.P9028977054829733063

`∩[A038893(n+1), A106904(n+1)]`
-/

namespace A139499.P9028977054829733063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P9028977054829733063

/-! ## A139499.P7994824272167390235

`∩[A045373(n+1), A106904(n+1)]`
-/

namespace A139499.P7994824272167390235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P7994824272167390235

/-! ## A139499.P16900162779881810923

`∩[A045386(n+1), A106904(n+1)]`
-/

namespace A139499.P16900162779881810923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P16900162779881810923

/-! ## A139499.P18148443031932713202

`∩[A106904(n+1), A391370(n+1)]`
-/

namespace A139499.P18148443031932713202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P18148443031932713202

/-! ## A139499.P1113255412637293198

`∩[A106904(n+1), A155717(n+1)]`
-/

namespace A139499.P1113255412637293198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P1113255412637293198

/-! ## A139499.P6351930102382738624

`∩[A020670(n+1), A106904(n+1)]`
-/

namespace A139499.P6351930102382738624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P6351930102382738624

/-! ## A139499.P89983683002194697

`∩[A106904(n+1), A244779(n+1)]`
-/

namespace A139499.P89983683002194697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P89983683002194697

/-! ## A139499.P5146907392012755195

`∩[A035258(n+1), A139492(n+1)]`
-/

namespace A139499.P5146907392012755195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P5146907392012755195

/-! ## A139499.P3707386597161950526

`∩[A035248(n+1), A106904(n+1)]`
-/

namespace A139499.P3707386597161950526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P3707386597161950526

/-! ## A139499.P14203138595080675921

`∩[A035260(n+1), A106904(n+1)]`
-/

namespace A139499.P14203138595080675921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P14203138595080675921

/-! ## A139499.P7219942056488998881

`∩[A047350(n+1), A106904(n+1)]`
-/

namespace A139499.P7219942056488998881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139499.P7219942056488998881

