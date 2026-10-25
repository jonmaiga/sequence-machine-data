import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123601: Smallest prime of the form p^n + q^n + r^n, where p,q,r are primes.

The programs for A123601, there is no canonical definition to state claims against.
-/

/-! ## A123601.P8596852263154245846

`p?[2^comp[10*n]+3^n]`
-/

namespace A123601.P8596852263154245846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A123601.P8596852263154245846

/-! ## A123601.P328819106341089321

`∑{p}[A085279(n+1)², #]`
-/

namespace A123601.P328819106341089321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A123601.P328819106341089321

/-! ## A123601.P13581021029454416509

`∑{p}[A153133(n+1)², #]`
-/

namespace A123601.P13581021029454416509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153133 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A123601.P13581021029454416509

/-!
# A123603: Triangle T(n,k), 0<=k<=n, read by rows, with T(0,0) = 1, T(n,k) = 0 if kn, T(n,k) = T(n-1,k-1) + T(n-1,k) + T(n-2,k-2) - T(n-2,k-1) + T(n-2,k).

The programs for A123603, there is no canonical definition to state claims against.
-/

/-! ## A123603.P8314446268663109185

`A031285(A109906(n))-A117401(n)`
-/

namespace A123603.P8314446268663109185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A109906 n).toNat - A117401 n

end

end A123603.P8314446268663109185

/-! ## A123603.P8306514462429047225

`A228506(n+1)-A144556(A228506(n+1))`
-/

namespace A123603.P8306514462429047225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (n + 1) - A144556 (A228506 (n + 1)).toNat

end

end A123603.P8306514462429047225

/-!
# A123606: Number of fusenes with 24 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A123606, there is no canonical definition to state claims against.
-/

/-! ## A123606.P18031875670194038012

`A305575(A001251(n+1))+A123284(n)`
-/

namespace A123606.P18031875670194038012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A001251 (n + 1)).toNat + A123284 (n + 67)

end

end A123606.P18031875670194038012

/-! ## A123606.P708486962832896559

`A239003(A328268(n))+A123284(n)`
-/

namespace A123606.P708486962832896559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A328268 n).toNat + A123284 (n + 67)

end

end A123606.P708486962832896559

/-!
# A123607: Number of fusenes with 24 hexagons, C_(3h) symmetry and containing 67+3n carbon atoms.

The programs for A123607, there is no canonical definition to state claims against.
-/

/-! ## A123607.P15035062728439677516

`A172471(A016127(n))*A179269(n+3)`
-/

namespace A123607.P15035062728439677516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A016127 n).toNat * A179269 (n + 3)

end

end A123607.P15035062728439677516

/-! ## A123607.P17517268739786060900

`A000196(2*(n+1))*A172471(A016127(n))`
-/

namespace A123607.P17517268739786060900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * (n + 1)) * A172471 (A016127 n).toNat

end

end A123607.P17517268739786060900

/-!
# A123608: Numbers k such that k, k+1 and 2*k+1 are composite.

The programs for A123608, the canonical program `A123608.P17223732889640698517` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123608 has offset 1).

The definition of A123608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123608.P17223732889640698517

`∩[A002808(n+1), A166602(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123608

/-- `∩[A002808(n+1), A166602(n+1)]` -/
def P17223732889640698517.Spec : Prop :=
  ∀ n, (P17223732889640698517.a n : ℤ) = A123608 (n + 1)

theorem P17223732889640698517.correct : P17223732889640698517.Spec := by
  intro n
  simp only [A123608, Nat.add_sub_cancel]

end A123608

/-! ## A123608.P9333057042340652650

`filter[A166602(n+1), A066247(#)]`
-/

namespace A123608.P9333057042340652650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A123608.P9333057042340652650

namespace A123608

/-- `filter[A166602(n+1), A066247(#)]` -/
def P9333057042340652650.Spec : Prop :=
  ∀ n, P9333057042340652650.a n = A123608 (n + 1)

end A123608

/-! ## A123608.P4167343775479717373

`filter[A166602(n+2), A005171(#)]`
-/

namespace A123608.P4167343775479717373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A123608.P4167343775479717373

namespace A123608

/-- `filter[A166602(n+2), A005171(#)]` -/
def P4167343775479717373.Spec : Prop :=
  ∀ n, P4167343775479717373.a n = A123608 (n + 1)

end A123608

/-! ## A123608.P6666781069919223930

`filter[A166602(n+2), A292438(#)]`
-/

namespace A123608.P6666781069919223930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A123608.P6666781069919223930

namespace A123608

/-- `filter[A166602(n+2), A292438(#)]` -/
def P6666781069919223930.Spec : Prop :=
  ∀ n, P6666781069919223930.a n = A123608 (n + 1)

end A123608

/-! ## A123608.P9604548780579316434

`∩[A077654(n+1), A166602(n+1)]`
-/

namespace A123608.P9604548780579316434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P9604548780579316434

namespace A123608

/-- `∩[A077654(n+1), A166602(n+1)]` -/
def P9604548780579316434.Spec : Prop :=
  ∀ n, (P9604548780579316434.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P4219306913511262214

`∩[A068780(n+1), A077654(n+1)]`
-/

namespace A123608.P4219306913511262214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P4219306913511262214

namespace A123608

/-- `∩[A068780(n+1), A077654(n+1)]` -/
def P4219306913511262214.Spec : Prop :=
  ∀ n, (P4219306913511262214.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P4348061209675805626

`∩[A068780(n+1), A166602(n+1)]`
-/

namespace A123608.P4348061209675805626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P4348061209675805626

namespace A123608

/-- `∩[A068780(n+1), A166602(n+1)]` -/
def P4348061209675805626.Spec : Prop :=
  ∀ n, (P4348061209675805626.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P11053722256505141240

`∩[A047845(n+1), A068780(n+1)]`
-/

namespace A123608.P11053722256505141240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P11053722256505141240

namespace A123608

/-- `∩[A047845(n+1), A068780(n+1)]` -/
def P11053722256505141240.Spec : Prop :=
  ∀ n, (P11053722256505141240.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P5028598597862241494

`∩[A166602(n+1), A176423(n+1)]`
-/

namespace A123608.P5028598597862241494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P5028598597862241494

namespace A123608

/-- `∩[A166602(n+1), A176423(n+1)]` -/
def P5028598597862241494.Spec : Prop :=
  ∀ n, (P5028598597862241494.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P15361591637415268705

`∩[A077654(n+1), A118742(n)]`
-/

namespace A123608.P15361591637415268705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P15361591637415268705

namespace A123608

/-- `∩[A077654(n+1), A118742(n)]` -/
def P15361591637415268705.Spec : Prop :=
  ∀ n, (P15361591637415268705.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P5755908185289610368

`∩[A072668(n+1), A077654(n+1)]`
-/

namespace A123608.P5755908185289610368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P5755908185289610368

namespace A123608

/-- `∩[A072668(n+1), A077654(n+1)]` -/
def P5755908185289610368.Spec : Prop :=
  ∀ n, (P5755908185289610368.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P12915128148094638179

`∩[A060462(n+1), A077654(n+1)]`
-/

namespace A123608.P12915128148094638179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P12915128148094638179

namespace A123608

/-- `∩[A060462(n+1), A077654(n+1)]` -/
def P12915128148094638179.Spec : Prop :=
  ∀ n, (P12915128148094638179.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P9821429002712777486

`∩[A077654(n+1), A166460(n+1)]`
-/

namespace A123608.P9821429002712777486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P9821429002712777486

namespace A123608

/-- `∩[A077654(n+1), A166460(n+1)]` -/
def P9821429002712777486.Spec : Prop :=
  ∀ n, (P9821429002712777486.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P1166403735551929324

`eq[A090112(n+1), A101808(n)]`
-/

namespace A123608.P1166403735551929324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123608.P1166403735551929324

namespace A123608

/-- `eq[A090112(n+1), A101808(n)]` -/
def P1166403735551929324.Spec : Prop :=
  ∀ n, (P1166403735551929324.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P9292889201169017393

`lt[A110560(2*n), A078772(n+2)]`
-/

namespace A123608.P9292889201169017393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123608.P9292889201169017393

namespace A123608

/-- `lt[A110560(2*n), A078772(n+2)]` -/
def P9292889201169017393.Spec : Prop :=
  ∀ n, (P9292889201169017393.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P5002584854039284688

`lt[A110560(2*n), A175078(n+2)]`
-/

namespace A123608.P5002584854039284688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123608.P5002584854039284688

namespace A123608

/-- `lt[A110560(2*n), A175078(n+2)]` -/
def P5002584854039284688.Spec : Prop :=
  ∀ n, (P5002584854039284688.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P12187808542941023488

`eq[A110560(2*(n+1)), A110560(n)]+1`
-/

namespace A123608.P12187808542941023488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123608.P12187808542941023488

namespace A123608

/-- `eq[A110560(2*(n+1)), A110560(n)]+1` -/
def P12187808542941023488.Spec : Prop :=
  ∀ n, (P12187808542941023488.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P12468966574125823010

`lt[A093074(2*n+1), n]`
-/

namespace A123608.P12468966574125823010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A123608.P12468966574125823010

namespace A123608

/-- `lt[A093074(2*n+1), n]` -/
def P12468966574125823010.Spec : Prop :=
  ∀ n, (P12468966574125823010.a n : ℤ) = A123608 (n + 1)

end A123608

/-! ## A123608.P14192143993402745283

`eq[2, or(A095248(2*n+1), A095248(n+1))]`
-/

namespace A123608.P14192143993402745283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095248 (2 * n + 1)) (A095248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123608.P14192143993402745283

namespace A123608

/-- `eq[2, or(A095248(2*n+1), A095248(n+1))]` -/
def P14192143993402745283.Spec : Prop :=
  ∀ n, (P14192143993402745283.a n : ℤ) = A123608 (n + 1)

end A123608

/-!
# A123610: Triangle read by rows, where T(n,k) = (1/n)*Sum_{d|(n,k)} phi(d) * binomial(n/d,k/d)^2 for n >= k > 0, with T(n,0) = 1 for n >= 0.

The programs for A123610, there is no canonical definition to state claims against.
-/

/-! ## A123610.P9920910528555661233

`A099597(n)+A048158(A288972(n))`
-/

namespace A123610.P9920910528555661233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 n + A048158 (A288972 n).toNat

end

end A123610.P9920910528555661233

/-! ## A123610.P12914418145451366093

`A167904(A086620(n))-A004247(n)`
-/

namespace A123610.P12914418145451366093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A086620 n).toNat - A004247 n

end

end A123610.P12914418145451366093

/-! ## A123610.P974973980895585273

`A167904(A086620(n))+1-A077028(n)`
-/

namespace A123610.P974973980895585273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A086620 n).toNat + (1 - A077028 n)

end

end A123610.P974973980895585273

/-! ## A123610.P8761163266153972884

`A167904(A086620(n))-A023443(A077028(n))`
-/

namespace A123610.P8761163266153972884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A086620 n).toNat - A023443 (A077028 n).toNat

end

end A123610.P8761163266153972884

/-! ## A123610.P239842738140660432

`A048158(A288972(n))+(A081578(n)%A096709(n+1)+3)/4`
-/

namespace A123610.P239842738140660432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (A288972 n).toNat : ℚ) + (Int.tmod (A081578 n) (A096709 (n + 1)) + 3 : ℚ) / 4

end

end A123610.P239842738140660432

/-!
# A123611: Row sums of triangle A123610.

The programs for A123611, there is no canonical definition to state claims against.
-/

/-! ## A123611.P3102966885873251553

`A003239(n)*A036453(n+1)`
-/

namespace A123611.P3102966885873251553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n * A036453 (n + 1)

end

end A123611.P3102966885873251553

/-! ## A123611.P9141312696756575149

`A003239(n)*A006530(A062383(n))`
-/

namespace A123611.P9141312696756575149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n * A006530 (A062383 n).toNat

end

end A123611.P9141312696756575149

/-! ## A123611.P14276612278992339477

`A001222(A001747(n+1))*A003239(n)`
-/

namespace A123611.P14276612278992339477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1)).toNat * A003239 n

end

end A123611.P14276612278992339477

/-! ## A123611.P3375607029823833019

`A003239(n)/A000108(n)*A068875(n)`
-/

namespace A123611.P3375607029823833019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n : ℚ) / (A000108 n : ℚ) * (A068875 n : ℚ)

end

end A123611.P3375607029823833019

/-! ## A123611.P12850209992196621035

`A003239(n)*A020639(A005897(n))`
-/

namespace A123611.P12850209992196621035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n * A020639 (A005897 n).toNat

end

end A123611.P12850209992196621035

/-!
# A123612: Antidiagonal sums of triangle A123610.

The programs for A123612, there is no canonical definition to state claims against.
-/

/-! ## A123612.P12227117272838811806

`A004788(A016116(n)+A001006(n))`
-/

namespace A123612.P12227117272838811806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A016116 n + A001006 n).toNat

end

end A123612.P12227117272838811806

/-! ## A123612.P9070637334885654719

`A261104(A148537(n)+A106693(n))`
-/

namespace A123612.P9070637334885654719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A148537 n + A106693 n).toNat

end

end A123612.P9070637334885654719

/-! ## A123612.P17308839539676333923

`A261104(A148537(n)+A137734(n))`
-/

namespace A123612.P17308839539676333923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A148537 n + A137734 n).toNat

end

end A123612.P17308839539676333923

/-! ## A123612.P12847528734993905825

`A004788(A285943(n)+A257519(n))`
-/

namespace A123612.P12847528734993905825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A285943 n + A257519 n).toNat

end

end A123612.P12847528734993905825

/-! ## A123612.P14944461211116163839

`A261104(A261104(n)+A148537(n))`
-/

namespace A123612.P14944461211116163839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A261104 n + A148537 n).toNat

end

end A123612.P14944461211116163839

/-!
# A123613: Column 3 of triangle A123610.

The programs for A123613, there is no canonical definition to state claims against.
-/

/-! ## A123613.P1413013039876397032

`A123610(∑[n+3]+6)`
-/

namespace A123613.P1413013039876397032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A123613.P1413013039876397032

/-! ## A123613.P8700333490756071763

`A123610(A167614(n+2))%A017020(n)`
-/

namespace A123613.P8700333490756071763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123610 (A167614 (n + 2)).toNat) (A017020 n)

end

end A123613.P8700333490756071763

/-! ## A123613.P14225507137549472121

`A123610(A046691(n+2))%A183436(n+1)`
-/

namespace A123613.P14225507137549472121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123610 (A046691 (n + 2)).toNat) (A183436 (n + 1))

end

end A123613.P14225507137549472121

/-! ## A123613.P17752474046983680752

`A123610(A046691(n+2))^(A007689(n)%2)`
-/

namespace A123613.P17752474046983680752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123610 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A007689 n) 2 : ℤ)

end

end A123613.P17752474046983680752

/-! ## A123613.P15866175052456235220

`A123610(A046691(n+2))+A090288(n+1)%2`
-/

namespace A123613.P15866175052456235220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A046691 (n + 2)).toNat + Int.tmod (A090288 (n + 1)) 2

end

end A123613.P15866175052456235220

/-! ## A123613.P10185574589407833195

`A123610(A046691(n+2))+A000122(A090288(n+1))`
-/

namespace A123613.P10185574589407833195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A046691 (n + 2)).toNat + A000122 (A090288 (n + 1)).toNat

end

end A123613.P10185574589407833195

/-!
# A123614: Column 4 of triangle A123610.

The programs for A123614, there is no canonical definition to state claims against.
-/

/-! ## A123614.P15074901504601740608

`A123610(eq[4, A002262(n)])`
-/

namespace A123614.P15074901504601740608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123614.P15074901504601740608

/-! ## A123614.P10025981207346470425

`A123610(A167614(n+3)+1)`
-/

namespace A123614.P10025981207346470425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A167614 (n + 3) + 1).toNat

end

end A123614.P10025981207346470425

/-! ## A123614.P12707690632190393977

`A123610(A046691(n+3)-1)`
-/

namespace A123614.P12707690632190393977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A046691 (n + 3) - 1).toNat

end

end A123614.P12707690632190393977

/-! ## A123614.P11241398363870260422

`A123610(A000096(n+4)-4)`
-/

namespace A123614.P11241398363870260422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A000096 (n + 4) - 4).toNat

end

end A123614.P11241398363870260422

/-! ## A123614.P2257250742733394597

`A123610(Δ[A023545(n+1)]-1)`
-/

namespace A123614.P2257250742733394597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (f1 (n + 1) - f1 n - 1).toNat

end

end A123614.P2257250742733394597

/-!
# A123615: Column 5 of triangle A123610.

The programs for A123615, there is no canonical definition to state claims against.
-/

/-! ## A123615.P16805815615333446175

`A123610(eq[5, A002262(n)])`
-/

namespace A123615.P16805815615333446175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123615.P16805815615333446175

/-! ## A123615.P3298852909625065733

`A123610(A034856(n+4)+7)`
-/

namespace A123615.P3298852909625065733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A034856 (n + 4) + 7).toNat

end

end A123615.P3298852909625065733

/-! ## A123615.P6755336985478596500

`A123610(A055999(n+3))`
-/

namespace A123615.P6755336985478596500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A055999 (n + 3)).toNat

end

end A123615.P6755336985478596500

/-! ## A123615.P3663779862883913963

`A123610(Δ[A023551(n+1)])`
-/

namespace A123615.P3663779862883913963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (f1 (n + 1) - f1 n).toNat

end

end A123615.P3663779862883913963

/-! ## A123615.P10690496313862318807

`A123610(Δ[A026054(n+3)])`
-/

namespace A123615.P10690496313862318807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (f1 (n + 1) - f1 n).toNat

end

end A123615.P10690496313862318807

/-!
# A123616: Column 6 of triangle A123610.

The programs for A123616, there is no canonical definition to state claims against.
-/

/-! ## A123616.P10745039482685384478

`A123610(eq[6, A002262(n)])`
-/

namespace A123616.P10745039482685384478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123616.P10745039482685384478

/-! ## A123616.P8391330568989107745

`A123610(A000096(n+5)+7)`
-/

namespace A123616.P8391330568989107745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A000096 (n + 5) + 7).toNat

end

end A123616.P8391330568989107745

/-! ## A123616.P16582786740573206182

`A123610(A046691(n+5)-3)`
-/

namespace A123616.P16582786740573206182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A046691 (n + 5) - 3).toNat

end

end A123616.P16582786740573206182

/-! ## A123616.P11562764957148130685

`A123610(Δ[A023551(n+2)]-1)`
-/

namespace A123616.P11562764957148130685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (f1 (n + 1) - f1 n - 1).toNat

end

end A123616.P11562764957148130685

/-! ## A123616.P16898778835756490982

`A123610(Δ[A026054(n+4)]-1)`
-/

namespace A123616.P16898778835756490982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (f1 (n + 1) - f1 n - 1).toNat

end

end A123616.P16898778835756490982

/-!
# A123617: Central terms of triangle A123610: a(n) = A123610(2*n,n).

The programs for A123617, there is no canonical definition to state claims against.
-/

/-! ## A123617.P4904598425039472827

`A123610(∑[4*n])`
-/

namespace A123617.P4904598425039472827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123617.P4904598425039472827

/-! ## A123617.P10539662321342877072

`record[A003982(n)*A123610(n)]`
-/

namespace A123617.P10539662321342877072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A123610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123617.P10539662321342877072

/-! ## A123617.P10192837996102646313

`record[A123610(∑[A266981(n+1)])]`
-/

namespace A123617.P10192837996102646313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123617.P10192837996102646313

/-! ## A123617.P6652473295340396325

`record[A123610(∑[A266981(n)]-1)]`
-/

namespace A123617.P6652473295340396325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123617.P6652473295340396325

/-! ## A123617.P3867094290182255838

`record[A123610(A057979(n²))]`
-/

namespace A123617.P3867094290182255838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123617.P3867094290182255838

/-!
# A123618: a(n) = A123610(2*n+2,n).

The programs for A123618, there is no canonical definition to state claims against.
-/

/-! ## A123618.P11125784555579256624

`(n+1)*A123619(n)`
-/

namespace A123618.P11125784555579256624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123619 n

end

end A123618.P11125784555579256624

/-! ## A123618.P201902376506719855

`A123619(n)*A131818(A000124(n))`
-/

namespace A123618.P201902376506719855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123619 n * A131818 (A000124 n).toNat

end

end A123618.P201902376506719855

/-! ## A123618.P6418403136804843717

`A123610((n+1)²+(n+2)²)`
-/

namespace A123618.P6418403136804843717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A123618.P6418403136804843717

/-! ## A123618.P1540976674494286262

`record[A123610(∑[A266981(n)])]`
-/

namespace A123618.P1540976674494286262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123618.P1540976674494286262

/-! ## A123618.P16216316197490266607

`record[A123610(n*A003982(n+1))]`
-/

namespace A123618.P16216316197490266607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123610 ((n : ℤ) * A003982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123618.P16216316197490266607

/-!
# A123619: a(n) = A123610(2*n+2,n)/(n+1) = A123618(n)/(n+1).

The programs for A123619, there is no canonical definition to state claims against.
-/

/-! ## A123619.P8490135852826150349

`A123618(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123619.P8490135852826150349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123618 n : ℚ) / (n + 1 : ℚ)

end

end A123619.P8490135852826150349

/-! ## A123619.P14921897118715426522

`A071684(n+1)²+A071688(n+1)²`
-/

namespace A123619.P14921897118715426522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071684 (n + 1) ^ 2 + A071688 (n + 1) ^ 2

end

end A123619.P14921897118715426522

/-! ## A123619.P8180237316279953852

`A123610(A099776(n+1))/(n+1)`
-/

namespace A123619.P8180237316279953852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123610 (A099776 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A123619.P8180237316279953852

/-! ## A123619.P4056847838309452711

`A123610(A132209(n+1))/(n+1)`
-/

namespace A123619.P4056847838309452711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123610 (A132209 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A123619.P4056847838309452711

/-!
# A123620: Expansion of (1 + x + x^2) / (1 - 3*x - 3*x^2).

The programs for A123620, the canonical program `A123620.P9595428849471453769` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123620 has offset 0).

The definition of A123620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-3x-3x^2))` (program `A123620.P9595428849471453769`, by `A123620.P9595428849471453769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123620.P9595428849471453769

`ogf((1+x+x^2)/(1-3x-3x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123620

/-- `ogf((1+x+x^2)/(1-3x-3x^2))` -/
def P9595428849471453769.Spec : Prop :=
  ∀ n, P9595428849471453769.a n = A123620 n

theorem P9595428849471453769.correct : P9595428849471453769.Spec := by
  intro n
  simp only [A123620]

end A123620

/-! ## A123620.P583578501464085917

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A123620.P583578501464085917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2)

end

end A123620.P583578501464085917

namespace A123620

/-- `3*a(n-1)+3*a(n-2)` -/
def P583578501464085917.Spec : Prop :=
  ∀ n, (P583578501464085917.a n : ℤ) = A123620 n

end A123620

/-! ## A123620.P5746732915751714923

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A123620.P5746732915751714923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A123620.P5746732915751714923

namespace A123620

/-- `3*(a(n-1)+a(n-2))` -/
def P5746732915751714923.Spec : Prop :=
  ∀ n, (P5746732915751714923.a n : ℤ) = A123620 n

end A123620

/-! ## A123620.P17301633620222995943

`floor(4/3*A030195(n+1))`
-/

namespace A123620.P17301633620222995943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (A030195 (n + 1) : ℚ)⌋

end

end A123620.P17301633620222995943

namespace A123620

/-- `floor(4/3*A030195(n+1))` -/
def P17301633620222995943.Spec : Prop :=
  ∀ n, P17301633620222995943.a n = A123620 n

end A123620

/-! ## A123620.P15006220118483597065

`A155116(n+1)-A180142(n)`
-/

namespace A123620.P15006220118483597065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 1) - A180142 n

end

end A123620.P15006220118483597065

namespace A123620

/-- `A155116(n+1)-A180142(n)` -/
def P15006220118483597065.Spec : Prop :=
  ∀ n, P15006220118483597065.a n = A123620 n

end A123620

/-! ## A123620.P3685282541964455748

`A036453(n+1)*A155116(n)`
-/

namespace A123620.P3685282541964455748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A155116 n

end

end A123620.P3685282541964455748

namespace A123620

/-- `A036453(n+1)*A155116(n)` -/
def P3685282541964455748.Spec : Prop :=
  ∀ n, P3685282541964455748.a n = A123620 n

end A123620

/-! ## A123620.P6970594198090950879

`(2-A000007(n))*A155116(n)`
-/

namespace A123620.P6970594198090950879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A155116 n

end

end A123620.P6970594198090950879

namespace A123620

/-- `(2-A000007(n))*A155116(n)` -/
def P6970594198090950879.Spec : Prop :=
  ∀ n, P6970594198090950879.a n = A123620 n

end A123620

/-! ## A123620.P15031187027560730114

`2*A125145(n)-A180142(n)`
-/

namespace A123620.P15031187027560730114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125145 n - A180142 n

end

end A123620.P15031187027560730114

namespace A123620

/-- `2*A125145(n)-A180142(n)` -/
def P15031187027560730114.Spec : Prop :=
  ∀ n, P15031187027560730114.a n = A123620 n

end A123620

/-! ## A123620.P17887063674490951129

`A040001(2*n)*A155116(n)`
-/

namespace A123620.P17887063674490951129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A155116 n

end

end A123620.P17887063674490951129

namespace A123620

/-- `A040001(2*n)*A155116(n)` -/
def P17887063674490951129.Spec : Prop :=
  ∀ n, P17887063674490951129.a n = A123620 n

end A123620

/-! ## A123620.P10581615080581673930

`Δ[A155116(n)]-2*A030195(n)`
-/

namespace A123620.P10581615080581673930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A030195 n

end

end A123620.P10581615080581673930

namespace A123620

/-- `Δ[A155116(n)]-2*A030195(n)` -/
def P10581615080581673930.Spec : Prop :=
  ∀ n, P10581615080581673930.a n = A123620 n

end A123620

/-! ## A123620.P700306438309681960

`A125145(n)+A030195((2*n)%(n+1))`
-/

namespace A123620.P700306438309681960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 n + A030195 (2 * n % (n + 1))

end

end A123620.P700306438309681960

namespace A123620

/-- `A125145(n)+A030195((2*n)%(n+1))` -/
def P700306438309681960.Spec : Prop :=
  ∀ n, P700306438309681960.a n = A123620 n

end A123620

/-! ## A123620.P13672374319349791892

`A000034(A004273(n))*A155116(n)`
-/

namespace A123620.P13672374319349791892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004273 n).toNat * A155116 n

end

end A123620.P13672374319349791892

namespace A123620

/-- `A000034(A004273(n))*A155116(n)` -/
def P13672374319349791892.Spec : Prop :=
  ∀ n, P13672374319349791892.a n = A123620 n

end A123620

/-! ## A123620.P16397807200861715473

`A020639(A000118(n))*A155116(n)`
-/

namespace A123620.P16397807200861715473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A155116 n

end

end A123620.P16397807200861715473

namespace A123620

/-- `A020639(A000118(n))*A155116(n)` -/
def P16397807200861715473.Spec : Prop :=
  ∀ n, P16397807200861715473.a n = A123620 n

end A123620

/-! ## A123620.P11886706368953613870

`A020639(A005893(n))*A155116(n)`
-/

namespace A123620.P11886706368953613870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat * A155116 n

end

end A123620.P11886706368953613870

namespace A123620

/-- `A020639(A005893(n))*A155116(n)` -/
def P11886706368953613870.Spec : Prop :=
  ∀ n, P11886706368953613870.a n = A123620 n

end A123620

/-! ## A123620.P196917181419635248

`A020639(A008574(n))*A155116(n)`
-/

namespace A123620.P196917181419635248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A155116 n

end

end A123620.P196917181419635248

namespace A123620

/-- `A020639(A008574(n))*A155116(n)` -/
def P196917181419635248.Spec : Prop :=
  ∀ n, P196917181419635248.a n = A123620 n

end A123620

/-! ## A123620.P14879274598069260933

`A020639(A009916(n))*A155116(n)`
-/

namespace A123620.P14879274598069260933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A009916 n).toNat * A155116 n

end

end A123620.P14879274598069260933

namespace A123620

/-- `A020639(A009916(n))*A155116(n)` -/
def P14879274598069260933.Spec : Prop :=
  ∀ n, P14879274598069260933.a n = A123620 n

end A123620

/-! ## A123620.P9713912584848343607

`A155116(n)+A155116(n)%A180142(n)`
-/

namespace A123620.P9713912584848343607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n + Int.tmod (A155116 n) (A180142 n)

end

end A123620.P9713912584848343607

namespace A123620

/-- `A155116(n)+A155116(n)%A180142(n)` -/
def P9713912584848343607.Spec : Prop :=
  ∀ n, P9713912584848343607.a n = A123620 n

end A123620

/-! ## A123620.P12551018389309597448

`A155116(n)+A155116(n)-A019590(n+2)`
-/

namespace A123620.P12551018389309597448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n + (A155116 n - A019590 (n + 2))

end

end A123620.P12551018389309597448

namespace A123620

/-- `A155116(n)+A155116(n)-A019590(n+2)` -/
def P12551018389309597448.Spec : Prop :=
  ∀ n, P12551018389309597448.a n = A123620 n

end A123620

/-!
# A123621: Greatest k <= n/2 such that n divides binomial(n,k).

The programs for A123621, there is no canonical definition to state claims against.
-/

/-! ## A123621.P12502424142625180681

`A363857(A327776(3*(n+1)))+A116921(n+1)`
-/

namespace A123621.P12502424142625180681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363857 (A327776 (3 * (n + 1))).toNat + A116921 (n + 1)

end

end A123621.P12502424142625180681

/-!
# A123623: Smallest k>1 such that mu(n*k) = mu(n), where mu=A008683.

The programs for A123623, there is no canonical definition to state claims against.
-/

/-! ## A123623.P7941843395358880459

`A123624(n+1)/(n+1)`
-/

namespace A123623.P7941843395358880459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123624 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A123623.P7941843395358880459

/-! ## A123623.P1203761488747135345

`(12*A123624(n+1))%A017653(n)`
-/

namespace A123623.P1203761488747135345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 * A123624 (n + 1)) (A017653 n)

end

end A123623.P1203761488747135345

/-! ## A123623.P7218669233356271428

`A007913((n+1)*A123624(n+1))`
-/

namespace A123623.P7218669233356271428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A123624 (n + 1)).toNat

end

end A123623.P7218669233356271428

/-!
# A123624: Smallest multiple m of n such that mu(m) = mu(n), where mu=A008683.

The programs for A123624, there is no canonical definition to state claims against.
-/

/-! ## A123624.P7704757835687664483

`(n+1)*A123623(n+1)`
-/

namespace A123624.P7704757835687664483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123623 (n + 1)

end

end A123624.P7704757835687664483

/-! ## A123624.P13555929038209382680

`A071364(A245165(n)+A157353(2*n+3))`
-/

namespace A123624.P13555929038209382680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A245165 n + A157353 (2 * n + 3)).toNat

end

end A123624.P13555929038209382680

/-!
# A123627: Smallest prime q such that (q^p+1)/(q+1) is prime, where p = prime(n); or 0 if no such prime q exists.

The programs for A123627, there is no canonical definition to state claims against.
-/

/-! ## A123627.P7804476936608819939

`A252503(A073582(n+1))%Δ[n^5]`
-/

namespace A123627.P7804476936608819939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252503 (A073582 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123627.P7804476936608819939

/-! ## A123627.P11325707693823450504

`ceil(sin(n)²)*A252503(A100484(n+1))`
-/

namespace A123627.P11325707693823450504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A252503 (A100484 (n + 1)).toNat

end

end A123627.P11325707693823450504

/-! ## A123627.P7770911557519159115

`A252503(A073582(n+1))-A000038(n)`
-/

namespace A123627.P7770911557519159115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A073582 (n + 1)).toNat - A000038 n

end

end A123627.P7770911557519159115

/-! ## A123627.P12294932692424637588

`A252503(A100484(n+1))-A000038(n)`
-/

namespace A123627.P12294932692424637588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A100484 (n + 1)).toNat - A000038 n

end

end A123627.P12294932692424637588

/-! ## A123627.P15267912612310204718

`A057427(n)*A252503(A073582(n+1))`
-/

namespace A123627.P15267912612310204718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A252503 (A073582 (n + 1)).toNat

end

end A123627.P15267912612310204718

/-! ## A123627.P4388033997045589591

`A057427(n)*A252503(A100484(n+1))`
-/

namespace A123627.P4388033997045589591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A252503 (A100484 (n + 1)).toNat

end

end A123627.P4388033997045589591

/-! ## A123627.P457982294177942851

`and(A083420(n), A252503(A073582(n+1)))`
-/

namespace A123627.P457982294177942851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083420 n) (A252503 (A073582 (n + 1)).toNat)

end

end A123627.P457982294177942851

/-! ## A123627.P7409273933926503924

`and(A057428(n), A252503(A100484(n+1)))`
-/

namespace A123627.P7409273933926503924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A252503 (A100484 (n + 1)).toNat)

end

end A123627.P7409273933926503924

/-! ## A123627.P14508817998335089498

`(1-A000007(n))*A252503(A073582(n+1))`
-/

namespace A123627.P14508817998335089498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A252503 (A073582 (n + 1)).toNat

end

end A123627.P14508817998335089498

/-! ## A123627.P17108216089352406122

`A252503(A001747(n+2))%A037443(n+2)`
-/

namespace A123627.P17108216089352406122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252503 (A001747 (n + 2)).toNat) (A037443 (n + 2))

end

end A123627.P17108216089352406122

/-! ## A123627.P9173127954186620578

`char[A002330(n+1)]*A252503(A073582(n+1))`
-/

namespace A123627.P9173127954186620578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252503 (A073582 (n + 1)).toNat

end

end A123627.P9173127954186620578

/-! ## A123627.P14289541718704852323

`char[A002331(n+1)]*A252503(A073582(n+1))`
-/

namespace A123627.P14289541718704852323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252503 (A073582 (n + 1)).toNat

end

end A123627.P14289541718704852323

/-! ## A123627.P9116601320373492546

`A252503(A100484(n+1))%∑[A000041(n+1)]`
-/

namespace A123627.P9116601320373492546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252503 (A100484 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123627.P9116601320373492546

/-! ## A123627.P9384442946532263021

`A000040(n+1)%2*A252503(A073582(n+1))`
-/

namespace A123627.P9384442946532263021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A252503 (A073582 (n + 1)).toNat

end

end A123627.P9384442946532263021

/-! ## A123627.P4956773880974013462

`A001222(a(n-1))*A252503(A073582(n+1))` with `a(0)=0, a(1)=2`
-/

namespace A123627.P4956773880974013462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A001222 (a (n - 1)).toNat * A252503 (A073582 (n + 1)).toNat

end

end A123627.P4956773880974013462

/-! ## A123627.P5817425105822651915

`A001222(a(n-1))*A252503(A100484(n+1))` with `a(0)=0, a(1)=2`
-/

namespace A123627.P5817425105822651915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A001222 (a (n - 1)).toNat * A252503 (A100484 (n + 1)).toNat

end

end A123627.P5817425105822651915

/-! ## A123627.P12420926338356674187

`A000217(ceil(n/(n+1)))*A252503(A073582(n+1))`
-/

namespace A123627.P12420926338356674187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A252503 (A073582 (n + 1)).toNat

end

end A123627.P12420926338356674187

/-!
# A123628: Smallest prime of the form (q^p+1)/(q+1), where p = prime(n) and q is also prime (q = A123627(n)); or 1 if such a prime does not exist.

The programs for A123628, there is no canonical definition to state claims against.
-/

/-! ## A123628.P13717906410621808926

`A088032(p?[comp[n²]])/3`
-/

namespace A123628.P13717906410621808926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 3

end

end A123628.P13717906410621808926

/-! ## A123628.P4314789270859296586

`A127959(∑{d}[n+1, #])%record[2^∏{p}[n, #-1]]`
-/

namespace A123628.P4314789270859296586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127959 (∑ d ∈ Nat.divisors (f1 n), d)) (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)))

end

end A123628.P4314789270859296586

/-! ## A123628.P8401022722509654241

`record[A276391(A000009(n))]`
-/

namespace A123628.P8401022722509654241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A000009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123628.P8401022722509654241

/-! ## A123628.P12516287761126100375

`A247648(A030426(n+1))`
-/

namespace A123628.P12516287761126100375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (A030426 (n + 1)).toNat

end

end A123628.P12516287761126100375

/-! ## A123628.P16433613971968341735

`A214101(A072205(n+1))`
-/

namespace A123628.P16433613971968341735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A072205 (n + 1)).toNat

end

end A123628.P16433613971968341735

/-!
# A123629: Expansion of b(q^2) * c(q^6) / (b(q) * c(q^3)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A123629, there is no canonical definition to state claims against.
-/

/-! ## A123629.P169859612478323846

`A212484(n+1)`
-/

namespace A123629.P169859612478323846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212484 (n + 1)

end

end A123629.P169859612478323846

/-! ## A123629.P4014753749402393631

`A227587(n+1)/4`
-/

namespace A123629.P4014753749402393631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227587 (n + 1) : ℚ) / 4

end

end A123629.P4014753749402393631

/-! ## A123629.P5682740273457010248

`A233693(2*(n+1))`
-/

namespace A123629.P5682740273457010248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (2 * (n + 1))

end

end A123629.P5682740273457010248

/-! ## A123629.P6698823212081422986

`(A182038(2*(n+1))+A128128(n+1))/2`
-/

namespace A123629.P6698823212081422986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182038 (2 * (n + 1)) + A128128 (n + 1) : ℚ) / 2

end

end A123629.P6698823212081422986

/-! ## A123629.P13485034520707122121

`record[A233693(n+1)/A233693(A020639(n+1))]`
-/

namespace A123629.P13485034520707122121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233693 (n + 1) : ℚ) / (A233693 (A020639 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123629.P13485034520707122121

/-! ## A123629.P5239443469435569431

`A261154(2*(n+1))`
-/

namespace A123629.P5239443469435569431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (2 * (n + 1))

end

end A123629.P5239443469435569431

/-! ## A123629.P10987921593600629883

`A260215(2*(n+1))/2`
-/

namespace A123629.P10987921593600629883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * (n + 1)) : ℚ) / 2

end

end A123629.P10987921593600629883

/-! ## A123629.P6588239310648162402

`A261156(2*(n+1))/2`
-/

namespace A123629.P6588239310648162402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 (2 * (n + 1)) : ℚ) / 2

end

end A123629.P6588239310648162402

/-! ## A123629.P2910274193575506668

`record[A260215(n)/A048896(A048896(n))]`
-/

namespace A123629.P2910274193575506668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 n : ℚ) / (A048896 (A048896 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123629.P2910274193575506668

/-! ## A123629.P18235372537675623123

`record[A260215(n)/A020639(A000132(n))]`
-/

namespace A123629.P18235372537675623123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 n : ℚ) / (A020639 (A000132 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123629.P18235372537675623123

/-!
# A123630: Expansion of q * (chi(-q^3) * chi(-q^5)) / (chi(-q) * chi(-q^15))^2 in powers of q where chi() is a Ramanujan theta function.

The programs for A123630, there is no canonical definition to state claims against.
-/

/-! ## A123630.P982089134732251068

`A094023(n+1)`
-/

namespace A123630.P982089134732251068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (n + 1)

end

end A123630.P982089134732251068

/-! ## A123630.P15910161714446433864

`abs(A145786(n+1))`
-/

namespace A123630.P15910161714446433864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145786 (n + 1)|

end

end A123630.P15910161714446433864

/-! ## A123630.P13551309815533619743

`A103259(n+1)/2`
-/

namespace A123630.P13551309815533619743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103259 (n + 1) : ℚ) / 2

end

end A123630.P13551309815533619743

/-! ## A123630.P9592730988087135481

`ratio[A094023(n)]*A094023(n)`
-/

namespace A123630.P9592730988087135481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A094023 n : ℚ)

end

end A123630.P9592730988087135481

/-! ## A123630.P13801967424927380876

`A033999(n)*A145786(n+1)`
-/

namespace A123630.P13801967424927380876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145786 (n + 1)

end

end A123630.P13801967424927380876

/-! ## A123630.P890009369387052445

`gcd(A000038(n), A145786(n+1))`
-/

namespace A123630.P890009369387052445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145786 (n + 1))

end

end A123630.P890009369387052445

/-! ## A123630.P10710377531318081422

`lcm(A020985(n), A145786(n+1))`
-/

namespace A123630.P10710377531318081422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145786 (n + 1))

end

end A123630.P10710377531318081422

/-! ## A123630.P6807217649671553505

`2*A123632(n+1)-A094022(n+1)`
-/

namespace A123630.P6807217649671553505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123632 (n + 1) - A094022 (n + 1)

end

end A123630.P6807217649671553505

/-! ## A123630.P3991516368716665469

`abs(A145728(n+1))`
-/

namespace A123630.P3991516368716665469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145728 (n + 1)|

end

end A123630.P3991516368716665469

/-! ## A123630.P17841510887899724297

`A033999(n+1)*A145728(n+1)`
-/

namespace A123630.P17841510887899724297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145728 (n + 1)

end

end A123630.P17841510887899724297

/-! ## A123630.P17575669655156169462

`2*A145728(n+1)/A280560(n+1)`
-/

namespace A123630.P17575669655156169462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A145728 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ))

end

end A123630.P17575669655156169462

/-! ## A123630.P5639037507069843220

`A143752(2*(n+1))`
-/

namespace A123630.P5639037507069843220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1))

end

end A123630.P5639037507069843220

/-! ## A123630.P17584855509273669384

`A145933(2*(n+1))`
-/

namespace A123630.P17584855509273669384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * (n + 1))

end

end A123630.P17584855509273669384

/-! ## A123630.P7088554127909016030

`ratio[A145933(2*n)]*A145933(2*n)`
-/

namespace A123630.P7088554127909016030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A145933 (2 * n) : ℚ)

end

end A123630.P7088554127909016030

/-!
# A123632: Expansion of q / (chi(-q) * chi(-q^3) * chi(-q^5) * chi(-q^15)) in powers of q where chi() is a Ramanujan theta function.

The programs for A123632, there is no canonical definition to state claims against.
-/

/-! ## A123632.P10416620598741148119

`(A123630(n+1)+A094022(n+1))/2`
-/

namespace A123632.P10416620598741148119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123630 (n + 1) + A094022 (n + 1) : ℚ) / 2

end

end A123632.P10416620598741148119

/-! ## A123632.P14875489086881586172

`A143752(2*(n+1))-A257632(n+1)`
-/

namespace A123632.P14875489086881586172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1)) - A257632 (n + 1)

end

end A123632.P14875489086881586172

/-! ## A123632.P11835237741779518075

`A145933(2*(n+1))-A257632(n+1)`
-/

namespace A123632.P11835237741779518075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * (n + 1)) - A257632 (n + 1)

end

end A123632.P11835237741779518075

/-! ## A123632.P8193273151004946431

`A143752(2*(n+1))+A132967(2*(n+1))`
-/

namespace A123632.P8193273151004946431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1)) + A132967 (2 * (n + 1))

end

end A123632.P8193273151004946431

/-! ## A123632.P3919631783986860444

`A145933(2*(n+1))+A132967(2*(n+1))`
-/

namespace A123632.P3919631783986860444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * (n + 1)) + A132967 (2 * (n + 1))

end

end A123632.P3919631783986860444

/-! ## A123632.P440379960816906360

`A143752(2*(n+1))-A132968(2*(n+1))`
-/

namespace A123632.P440379960816906360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (2 * (n + 1)) - A132968 (2 * (n + 1))

end

end A123632.P440379960816906360

/-! ## A123632.P11806208622625921436

`A145933(2*(n+1))-A132968(2*(n+1))`
-/

namespace A123632.P11806208622625921436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (2 * (n + 1)) - A132968 (2 * (n + 1))

end

end A123632.P11806208622625921436

/-!
# A123633: Expansion of (c(q^2)/c(q))^3 in powers of q where c() is a cubic AGM theta function.

The programs for A123633, there is no canonical definition to state claims against.
-/

/-! ## A123633.P2349232218933648788

`A128636(n+1)`
-/

namespace A123633.P2349232218933648788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128636 (n + 1)

end

end A123633.P2349232218933648788

/-! ## A123633.P8401184225501131109

`A187153(2*(n+1))`
-/

namespace A123633.P8401184225501131109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (2 * (n + 1))

end

end A123633.P8401184225501131109

/-! ## A123633.P456900726929575982

`-A123649(2*(n+1))`
-/

namespace A123633.P456900726929575982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123649 (2 * (n + 1))

end

end A123633.P456900726929575982

/-! ## A123633.P12896518767092509398

`A000007(n+1)-A123649(2*(n+1))`
-/

namespace A123633.P12896518767092509398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A123649 (2 * (n + 1))

end

end A123633.P12896518767092509398

/-! ## A123633.P1182161738760405439

`A000035(2*n)-A123649(2*n+2)`
-/

namespace A123633.P1182161738760405439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A123649 (2 * n + 2)

end

end A123633.P1182161738760405439

/-! ## A123633.P6515423907776329155

`1-(A123649(2*n+2)+A033999(2*n))`
-/

namespace A123633.P6515423907776329155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A123649 (2 * n + 2) + A033999 (2 * n))

end

end A123633.P6515423907776329155

/-! ## A123633.P15398428234247672893

`A033999(2*n+1)*A123649(2*(n+1))`
-/

namespace A123633.P15398428234247672893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A123649 (2 * (n + 1))

end

end A123633.P15398428234247672893

/-! ## A123633.P7703676998672773231

`(2*n-A004442(2*n))*A123649(2*(n+1))`
-/

namespace A123633.P7703676998672773231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A004442 (2 * n)) * A123649 (2 * (n + 1))

end

end A123633.P7703676998672773231

/-! ## A123633.P898615748782076333

`A049347(2*n)+A049347(n+1)-A123649(2*(n+1))`
-/

namespace A123633.P898615748782076333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) + (A049347 (n + 1) - A123649 (2 * (n + 1)))

end

end A123633.P898615748782076333

/-! ## A123633.P12004632080616163150

`A057078(2*n+1)+A057078(n+1)-A123649(2*(n+1))`
-/

namespace A123633.P12004632080616163150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n + 1) + (A057078 (n + 1) - A123649 (2 * (n + 1)))

end

end A123633.P12004632080616163150

/-! ## A123633.P10382244901289559603

`A213265(2*(n+1))`
-/

namespace A123633.P10382244901289559603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (2 * (n + 1))

end

end A123633.P10382244901289559603

/-! ## A123633.P18112386802343946852

`ratio[A213265(2*n)]*A213265(2*n)`
-/

namespace A123633.P18112386802343946852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A213265 (2 * n) : ℚ)

end

end A123633.P18112386802343946852

/-! ## A123633.P544604702652008454

`A261325(2*n)-(A261446(2*n)+A123649(2*(n+1)))`
-/

namespace A123633.P544604702652008454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261325 (2 * n) - (A261446 (2 * n) + A123649 (2 * (n + 1)))

end

end A123633.P544604702652008454

/-! ## A123633.P7279154674321410781

`A261325(2*n+1)/A261446(2*n+1)*A123649(2*(n+1))`
-/

namespace A123633.P7279154674321410781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 (2 * n + 1) : ℚ) / (A261446 (2 * n + 1) : ℚ) * (A123649 (2 * (n + 1)) : ℚ)

end

end A123633.P7279154674321410781

/-!
# A123635: Residue mod 3 of average of n-th and (n+1)st odd primes.

The programs for A123635, the canonical program `A123635.P11455475426760564630` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123635 has offset 1).

The definition of A123635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123635.P11455475426760564630

`A024675(n+1)%3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123635

/-- `A024675(n+1)%3` -/
def P11455475426760564630.Spec : Prop :=
  ∀ n, P11455475426760564630.a n = A123635 (n + 1)

theorem P11455475426760564630.correct : P11455475426760564630.Spec := by
  intro n
  simp only [A123635, Nat.add_sub_cancel]

end A123635

/-! ## A123635.P1768095082970198053

`A062234(n+2)%3`
-/

namespace A123635.P1768095082970198053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 2)) 3

end

end A123635.P1768095082970198053

namespace A123635

/-- `A062234(n+2)%3` -/
def P1768095082970198053.Spec : Prop :=
  ∀ n, P1768095082970198053.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P7113285016536718060

`Δ[A166448(n+1)]%3`
-/

namespace A123635.P7113285016536718060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A123635.P7113285016536718060

namespace A123635

/-- `Δ[A166448(n+1)]%3` -/
def P7113285016536718060.Spec : Prop :=
  ∀ n, P7113285016536718060.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P17572915671837823090

`floor(sqrt(A075892(n+2)))%3`
-/

namespace A123635.P17572915671837823090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A075892 (n + 2))) 3

end

end A123635.P17572915671837823090

namespace A123635

/-- `floor(sqrt(A075892(n+2)))%3` -/
def P17572915671837823090.Spec : Prop :=
  ∀ n, P17572915671837823090.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P17302250034899938430

`A162735(n+2)%3`
-/

namespace A123635.P17302250034899938430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162735 (n + 2)) 3

end

end A123635.P17302250034899938430

namespace A123635

/-- `A162735(n+2)%3` -/
def P17302250034899938430.Spec : Prop :=
  ∀ n, P17302250034899938430.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P4628595983564129906

`A162800(n+2)%3`
-/

namespace A123635.P4628595983564129906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162800 (n + 2)) 3

end

end A123635.P4628595983564129906

namespace A123635

/-- `A162800(n+2)%3` -/
def P4628595983564129906.Spec : Prop :=
  ∀ n, P4628595983564129906.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P13480645512962776324

`A210497(n+2)%3`
-/

namespace A123635.P13480645512962776324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210497 (n + 2)) 3

end

end A123635.P13480645512962776324

namespace A123635

/-- `A210497(n+2)%3` -/
def P13480645512962776324.Spec : Prop :=
  ∀ n, P13480645512962776324.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P11801753554009262217

`A211280(n+2)%3`
-/

namespace A123635.P11801753554009262217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211280 (n + 2)) 3

end

end A123635.P11801753554009262217

namespace A123635

/-- `A211280(n+2)%3` -/
def P11801753554009262217.Spec : Prop :=
  ∀ n, P11801753554009262217.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P15636265935474873832

`A247474(n+2)%3`
-/

namespace A123635.P15636265935474873832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247474 (n + 2)) 3

end

end A123635.P15636265935474873832

namespace A123635

/-- `A247474(n+2)%3` -/
def P15636265935474873832.Spec : Prop :=
  ∀ n, P15636265935474873832.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P11441081458808166456

`(A078444(n+2)+1)%3`
-/

namespace A123635.P11441081458808166456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078444 (n + 2) + 1) 3

end

end A123635.P11441081458808166456

namespace A123635

/-- `(A078444(n+2)+1)%3` -/
def P11441081458808166456.Spec : Prop :=
  ∀ n, P11441081458808166456.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P12890942840126960792

`(2*A001043(n+2))%3`
-/

namespace A123635.P12890942840126960792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A001043 (n + 2)) 3

end

end A123635.P12890942840126960792

namespace A123635

/-- `(2*A001043(n+2))%3` -/
def P12890942840126960792.Spec : Prop :=
  ∀ n, P12890942840126960792.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P9998115512275271135

`(A011974(n+3)/2)%3`
-/

namespace A123635.P9998115512275271135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A011974 (n + 3) : ℚ) / 2)) 3

end

end A123635.P9998115512275271135

namespace A123635

/-- `(A011974(n+3)/2)%3` -/
def P9998115512275271135.Spec : Prop :=
  ∀ n, P9998115512275271135.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P16549502238322343393

`ceil(sqrt(A006094(n+2)))%3`
-/

namespace A123635.P16549502238322343393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉ 3

end

end A123635.P16549502238322343393

namespace A123635

/-- `ceil(sqrt(A006094(n+2)))%3` -/
def P16549502238322343393.Spec : Prop :=
  ∀ n, P16549502238322343393.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P9492831091992825651

`A010872(A024675(n+1))`
-/

namespace A123635.P9492831091992825651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A024675 (n + 1)).toNat

end

end A123635.P9492831091992825651

namespace A123635

/-- `A010872(A024675(n+1))` -/
def P9492831091992825651.Spec : Prop :=
  ∀ n, P9492831091992825651.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P13204150107704170352

`A010872(A062234(n+2))`
-/

namespace A123635.P13204150107704170352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A062234 (n + 2)).toNat

end

end A123635.P13204150107704170352

namespace A123635

/-- `A010872(A062234(n+2))` -/
def P13204150107704170352.Spec : Prop :=
  ∀ n, P13204150107704170352.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P2216302964249880066

`A010872(A162735(n+2))`
-/

namespace A123635.P2216302964249880066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A162735 (n + 2)).toNat

end

end A123635.P2216302964249880066

namespace A123635

/-- `A010872(A162735(n+2))` -/
def P2216302964249880066.Spec : Prop :=
  ∀ n, P2216302964249880066.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P7021530159651598553

`A131026(A124115(n+2))`
-/

namespace A123635.P7021530159651598553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A124115 (n + 2)).toNat

end

end A123635.P7021530159651598553

namespace A123635

/-- `A131026(A124115(n+2))` -/
def P7021530159651598553.Spec : Prop :=
  ∀ n, P7021530159651598553.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P5475536673504118039

`A010872(A210497(n+2))`
-/

namespace A123635.P5475536673504118039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A210497 (n + 2)).toNat

end

end A123635.P5475536673504118039

namespace A123635

/-- `A010872(A210497(n+2))` -/
def P5475536673504118039.Spec : Prop :=
  ∀ n, P5475536673504118039.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P15849478135438196301

`A010872(A211280(n+2))`
-/

namespace A123635.P15849478135438196301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A211280 (n + 2)).toNat

end

end A123635.P15849478135438196301

namespace A123635

/-- `A010872(A211280(n+2))` -/
def P15849478135438196301.Spec : Prop :=
  ∀ n, P15849478135438196301.a n = A123635 (n + 1)

end A123635

/-! ## A123635.P8340247987665310071

`A080425(A001043(n+2))`
-/

namespace A123635.P8340247987665310071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A001043 (n + 2)).toNat

end

end A123635.P8340247987665310071

namespace A123635

/-- `A080425(A001043(n+2))` -/
def P8340247987665310071.Spec : Prop :=
  ∀ n, P8340247987665310071.a n = A123635 (n + 1)

end A123635

/-!
# A123636: a(n) = 1 + 1*n + 1*n*2 + 1*n*2*(n-1) + 1*n*2*(n-1)*3 + 1*n*2*(n-1)*3*(n-2) + ... + n!.

The programs for A123636, there is no canonical definition to state claims against.
-/

/-! ## A123636.P10051482098090461064

`Δ[A230980(lcm(n, 2*n!))]`
-/

namespace A123636.P10051482098090461064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.lcm n (2 * Nat.factorial n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123636.P10051482098090461064

/-! ## A123636.P18321130740725690152

`A111439(∑[abs(∑[(-n)^n])])`
-/

namespace A123636.P18321130740725690152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123636.P18321130740725690152

/-!
# A123637: a(n) = 1 + 1*n + 1*n*2 + 1*n*2*(n-1) + 1*n*2*(n-1)*3 + 1*n*2*(n-1)*3*(n-2) + ... + n!*(n+1)!.

The programs for A123637, there is no canonical definition to state claims against.
-/

/-! ## A123637.P15133418430513606515

`A083028(A376126(n))+A001861(n)`
-/

namespace A123637.P15133418430513606515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (A376126 n).toNat + A001861 n

end

end A123637.P15133418430513606515

/-!
# A123638: Consider the 2^n compositions of n and count only those ending in an odd part with row sum A001045.

The programs for A123638, there is no canonical definition to state claims against.
-/

/-! ## A123638.P5624458905602761201

`A047970(n)-A123639(n+1)`
-/

namespace A123638.P5624458905602761201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n - A123639 (n + 1)

end

end A123638.P5624458905602761201

/-! ## A123638.P14000137978152246967

`∑[A112532(n)]-A123639(n+1)`
-/

namespace A123638.P14000137978152246967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123639 (n + 1)

end

end A123638.P14000137978152246967

/-! ## A123638.P12895296916159919802

`A242431(∑[n])-A123639(n+1)`
-/

namespace A123638.P12895296916159919802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242431 (∑ j ∈ Finset.range (n + 1), f1 j) - A123639 (n + 1)

end

end A123638.P12895296916159919802

/-! ## A123638.P2790691263117346536

`Δ[A003101(n)]-A123639(n+1)`
-/

namespace A123638.P2790691263117346536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123639 (n + 1)

end

end A123638.P2790691263117346536

/-! ## A123638.P15347720184439654814

`Δ[A026898(n)]-A123639(n+1)`
-/

namespace A123638.P15347720184439654814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123639 (n + 1)

end

end A123638.P15347720184439654814

/-!
# A123639: Consider the 2^n compositions of n and count only those ending in an even part.

The programs for A123639, there is no canonical definition to state claims against.
-/

/-! ## A123639.P7793197891673698589

`A047970(n)-A123638(n+1)`
-/

namespace A123639.P7793197891673698589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n - A123638 (n + 1)

end

end A123639.P7793197891673698589

/-! ## A123639.P17098549078612545467

`∑[A112532(n)]-A123638(n+1)`
-/

namespace A123639.P17098549078612545467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123638 (n + 1)

end

end A123639.P17098549078612545467

/-! ## A123639.P14362029390828966996

`A242431(∑[n])-A123638(n+1)`
-/

namespace A123639.P14362029390828966996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242431 (∑ j ∈ Finset.range (n + 1), f1 j) - A123638 (n + 1)

end

end A123639.P14362029390828966996

/-! ## A123639.P10659932361298793557

`Δ[A003101(n)]-A123638(n+1)`
-/

namespace A123639.P10659932361298793557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123638 (n + 1)

end

end A123639.P10659932361298793557

/-! ## A123639.P16802083773176812161

`Δ[A026898(n)]-A123638(n+1)`
-/

namespace A123639.P16802083773176812161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123638 (n + 1)

end

end A123639.P16802083773176812161

/-!
# A123640: a(n) = A065120(n) modulo 2.

The programs for A123640, the canonical program `A123640.P5226503821032726972` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123640 has offset 0).

The definition of A123640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123640.P5226503821032726972

`a(floor(lcm(2, n)/4))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123640

/-- `a(floor(lcm(2, n)/4))` -/
def P5226503821032726972.Spec : Prop :=
  ∀ n, (P5226503821032726972.a n : ℤ) = A123640 n

theorem P5226503821032726972.correct : P5226503821032726972.Spec := by
  intro n
  simp only [A123640]

end A123640

/-! ## A123640.P11737648303787383695

`a(floor(gcd(n, ∑[n])/2))` with `a(0)=0, a(1)=1`
-/

namespace A123640.P11737648303787383695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋.toNat

end

end A123640.P11737648303787383695

namespace A123640

/-- `a(floor(gcd(n, ∑[n])/2))` -/
def P11737648303787383695.Spec : Prop :=
  ∀ n, (P11737648303787383695.a n : ℤ) = A123640 n

end A123640

/-! ## A123640.P8145652377490254306

`a(floor(n/gcd(4, 2*n)))` with `a(0)=0, a(1)=1`
-/

namespace A123640.P8145652377490254306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / (Nat.gcd 4 (2 * n) : ℚ)⌋.toNat

end

end A123640.P8145652377490254306

namespace A123640

/-- `a(floor(n/gcd(4, 2*n)))` -/
def P8145652377490254306.Spec : Prop :=
  ∀ n, (P8145652377490254306.a n : ℤ) = A123640 n

end A123640

/-! ## A123640.P6146576653149803837

`xor(a(floor(n/2)), char[2^n])` with `a(0)=0`
-/

namespace A123640.P6146576653149803837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a ⌊(n : ℚ) / 2⌋.toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A123640.P6146576653149803837

namespace A123640

/-- `xor(a(floor(n/2)), char[2^n])` -/
def P6146576653149803837.Spec : Prop :=
  ∀ n, (P6146576653149803837.a n : ℤ) = A123640 n

end A123640

/-! ## A123640.P4344327300084615473

`a(floor(n/((-1)^n+3)))` with `a(0)=0, a(1)=1`
-/

namespace A123640.P4344327300084615473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / ((-1) ^ n + 3 : ℚ)⌋.toNat

end

end A123640.P4344327300084615473

namespace A123640

/-- `a(floor(n/((-1)^n+3)))` -/
def P4344327300084615473.Spec : Prop :=
  ∀ n, (P4344327300084615473.a n : ℤ) = A123640 n

end A123640

/-! ## A123640.P11207888241949934347

`abs(a(floor(n/2))-char[2^n])` with `a(0)=0`
-/

namespace A123640.P11207888241949934347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)|

end

end A123640.P11207888241949934347

namespace A123640

/-- `abs(a(floor(n/2))-char[2^n])` -/
def P11207888241949934347.Spec : Prop :=
  ∀ n, P11207888241949934347.a n = A123640 n

end A123640

/-! ## A123640.P15562560939382037275

`(a(floor(n/2))-char[2^n])²` with `a(0)=0`
-/

namespace A123640.P15562560939382037275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A123640.P15562560939382037275

namespace A123640

/-- `(a(floor(n/2))-char[2^n])²` -/
def P15562560939382037275.Spec : Prop :=
  ∀ n, P15562560939382037275.a n = A123640 n

end A123640

/-! ## A123640.P9613910634224700137

`A065120(n)%2`
-/

namespace A123640.P9613910634224700137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065120 n) 2

end

end A123640.P9613910634224700137

namespace A123640

/-- `A065120(n)%2` -/
def P9613910634224700137.Spec : Prop :=
  ∀ n, P9613910634224700137.a n = A123640 n

end A123640

/-! ## A123640.P7761843246403694596

`val(A057335(n), 2)%2`
-/

namespace A123640.P7761843246403694596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057335 n).toNat 2 % 2

end

end A123640.P7761843246403694596

namespace A123640

/-- `val(A057335(n), 2)%2` -/
def P7761843246403694596.Spec : Prop :=
  ∀ n, (P7761843246403694596.a n : ℤ) = A123640 n

end A123640

/-! ## A123640.P7692114388008335742

`A000035(A065120(n))`
-/

namespace A123640.P7692114388008335742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A065120 n).toNat

end

end A123640.P7692114388008335742

namespace A123640

/-- `A000035(A065120(n))` -/
def P7692114388008335742.Spec : Prop :=
  ∀ n, P7692114388008335742.a n = A123640 n

end A123640

/-! ## A123640.P17007441130195280711

`A059841(A065120(n)+1)`
-/

namespace A123640.P17007441130195280711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A065120 n + 1).toNat

end

end A123640.P17007441130195280711

namespace A123640

/-- `A059841(A065120(n)+1)` -/
def P17007441130195280711.Spec : Prop :=
  ∀ n, P17007441130195280711.a n = A123640 n

end A123640

/-! ## A123640.P3378352762850954428

`and(A008349(n), A065120(n))`
-/

namespace A123640.P3378352762850954428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A065120 n)

end

end A123640.P3378352762850954428

namespace A123640

/-- `and(A008349(n), A065120(n))` -/
def P3378352762850954428.Spec : Prop :=
  ∀ n, P3378352762850954428.a n = A123640 n

end A123640

/-! ## A123640.P13211180393164044742

`and(A008362(n), A065120(n))`
-/

namespace A123640.P13211180393164044742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A065120 n)

end

end A123640.P13211180393164044742

namespace A123640

/-- `and(A008362(n), A065120(n))` -/
def P13211180393164044742.Spec : Prop :=
  ∀ n, P13211180393164044742.a n = A123640 n

end A123640

/-! ## A123640.P878677926795177127

`and(A008417(n), A065120(n))`
-/

namespace A123640.P878677926795177127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A065120 n)

end

end A123640.P878677926795177127

namespace A123640

/-- `and(A008417(n), A065120(n))` -/
def P878677926795177127.Spec : Prop :=
  ∀ n, P878677926795177127.a n = A123640 n

end A123640

/-! ## A123640.P7685262510426003647

`and(A008514(n), A065120(n))`
-/

namespace A123640.P7685262510426003647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A065120 n)

end

end A123640.P7685262510426003647

namespace A123640

/-- `and(A008514(n), A065120(n))` -/
def P7685262510426003647.Spec : Prop :=
  ∀ n, P7685262510426003647.a n = A123640 n

end A123640

/-! ## A123640.P12879736126661179596

`and(A016760(n), A065120(n))`
-/

namespace A123640.P12879736126661179596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A065120 n)

end

end A123640.P12879736126661179596

namespace A123640

/-- `and(A016760(n), A065120(n))` -/
def P12879736126661179596.Spec : Prop :=
  ∀ n, P12879736126661179596.a n = A123640 n

end A123640

/-! ## A123640.P16948005556434642992

`and(A016820(n), A065120(n))`
-/

namespace A123640.P16948005556434642992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A065120 n)

end

end A123640.P16948005556434642992

namespace A123640

/-- `and(A016820(n), A065120(n))` -/
def P16948005556434642992.Spec : Prop :=
  ∀ n, P16948005556434642992.a n = A123640 n

end A123640

/-! ## A123640.P1997699125974289431

`A007814(A065120(n)²+1)`
-/

namespace A123640.P1997699125974289431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A065120 n ^ 2 + 1).toNat

end

end A123640.P1997699125974289431

namespace A123640

/-- `A007814(A065120(n)²+1)` -/
def P1997699125974289431.Spec : Prop :=
  ∀ n, P1997699125974289431.a n = A123640 n

end A123640

/-! ## A123640.P11983192029832266858

`A059841((1-A065120(n))²)`
-/

namespace A123640.P11983192029832266858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((1 - A065120 n) ^ 2).toNat

end

end A123640.P11983192029832266858

namespace A123640

/-- `A059841((1-A065120(n))²)` -/
def P11983192029832266858.Spec : Prop :=
  ∀ n, P11983192029832266858.a n = A123640 n

end A123640

/-! ## A123640.P11910011991483440043

`and(A065120(n), A282997(n+1))`
-/

namespace A123640.P11910011991483440043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065120 n) (A282997 (n + 1))

end

end A123640.P11910011991483440043

namespace A123640

/-- `and(A065120(n), A282997(n+1))` -/
def P11910011991483440043.Spec : Prop :=
  ∀ n, P11910011991483440043.a n = A123640 n

end A123640

/-!
# A123641: Triangular array related to sequence A123640 with row sum A001045.

The programs for A123641, the canonical program `A123641.P11126860064220415854` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123641 has offset 1).

The definition of A123641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123641.P11126860064220415854

`ceil(A130125(n)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A123641

/-- `ceil(A130125(n)/2)` -/
def P11126860064220415854.Spec : Prop :=
  ∀ n, P11126860064220415854.a n = A123641 (n + 1)

theorem P11126860064220415854.correct : P11126860064220415854.Spec := by
  intro n
  simp only [A123641, Nat.add_sub_cancel]

end A123641

/-! ## A123641.P13601098520615119233

`round(2^(A140756(n+1)-2))`
-/

namespace A123641.P13601098520615119233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (A140756 (n + 1) - 2 : ℤ))

end

end A123641.P13601098520615119233

namespace A123641

/-- `round(2^(A140756(n+1)-2))` -/
def P13601098520615119233.Spec : Prop :=
  ∀ n, P13601098520615119233.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P5729597695334748904

`comp[∑[4*n]]%2*A166692(n)`
-/

namespace A123641.P5729597695334748904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A166692 n

end

end A123641.P5729597695334748904

namespace A123641

/-- `comp[∑[4*n]]%2*A166692(n)` -/
def P5729597695334748904.Spec : Prop :=
  ∀ n, P5729597695334748904.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P14914147960078081995

`A158780(A133728(n+1))`
-/

namespace A123641.P14914147960078081995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A133728 (n + 1)).toNat

end

end A123641.P14914147960078081995

namespace A123641

/-- `A158780(A133728(n+1))` -/
def P14914147960078081995.Spec : Prop :=
  ∀ n, P14914147960078081995.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P3792966965166064111

`A166444(A128179(n+1))`
-/

namespace A123641.P3792966965166064111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A128179 (n + 1)).toNat

end

end A123641.P3792966965166064111

namespace A123641

/-- `A166444(A128179(n+1))` -/
def P3792966965166064111.Spec : Prop :=
  ∀ n, P3792966965166064111.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P8657892278844572094

`A071022(n)*A166692(n)`
-/

namespace A123641.P8657892278844572094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 n * A166692 n

end

end A123641.P8657892278844572094

namespace A123641

/-- `A071022(n)*A166692(n)` -/
def P8657892278844572094.Spec : Prop :=
  ∀ n, P8657892278844572094.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P5340331294398009929

`A130125(n)/A238303(n)`
-/

namespace A123641.P5340331294398009929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130125 n : ℚ) / (A238303 n : ℚ)

end

end A123641.P5340331294398009929

namespace A123641

/-- `A130125(n)/A238303(n)` -/
def P5340331294398009929.Spec : Prop :=
  ∀ n, P5340331294398009929.a n = (A123641 (n + 1) : ℚ)

end A123641

/-! ## A123641.P15645474447144252205

`lcm(A166692(n), A369736(n))`
-/

namespace A123641.P15645474447144252205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166692 n) (A369736 n)

end

end A123641.P15645474447144252205

namespace A123641

/-- `lcm(A166692(n), A369736(n))` -/
def P15645474447144252205.Spec : Prop :=
  ∀ n, (P15645474447144252205.a n : ℤ) = A123641 (n + 1)

end A123641

/-! ## A123641.P1254280153991437907

`A128174(n+1)*A166692(n)`
-/

namespace A123641.P1254280153991437907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A166692 n

end

end A123641.P1254280153991437907

namespace A123641

/-- `A128174(n+1)*A166692(n)` -/
def P1254280153991437907.Spec : Prop :=
  ∀ n, P1254280153991437907.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P1013293192818718770

`A128174(n+1)*A232089(n)`
-/

namespace A123641.P1013293192818718770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A232089 n

end

end A123641.P1013293192818718770

namespace A123641

/-- `A128174(n+1)*A232089(n)` -/
def P1013293192818718770.Spec : Prop :=
  ∀ n, P1013293192818718770.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P6319414019071177214

`and(A166692(n), A357213(n+1))`
-/

namespace A123641.P6319414019071177214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166692 n) (A357213 (n + 1))

end

end A123641.P6319414019071177214

namespace A123641

/-- `and(A166692(n), A357213(n+1))` -/
def P6319414019071177214.Spec : Prop :=
  ∀ n, P6319414019071177214.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P10137645467577662591

`and(A232089(n), A357213(n+1))`
-/

namespace A123641.P10137645467577662591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232089 n) (A357213 (n + 1))

end

end A123641.P10137645467577662591

namespace A123641

/-- `and(A232089(n), A357213(n+1))` -/
def P10137645467577662591.Spec : Prop :=
  ∀ n, P10137645467577662591.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P14527407605820464425

`floor((A130125(comp[∑[n]])+2)/4)`
-/

namespace A123641.P14527407605820464425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2 : ℚ) / 4⌋

end

end A123641.P14527407605820464425

namespace A123641

/-- `floor((A130125(comp[∑[n]])+2)/4)` -/
def P14527407605820464425.Spec : Prop :=
  ∀ n, P14527407605820464425.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P11323232158350288601

`A166692(n)%A225750(n)`
-/

namespace A123641.P11323232158350288601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166692 n) (A225750 n)

end

end A123641.P11323232158350288601

namespace A123641

/-- `A166692(n)%A225750(n)` -/
def P11323232158350288601.Spec : Prop :=
  ∀ n, P11323232158350288601.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P14893271847087559816

`A232089(n)%A225750(n)`
-/

namespace A123641.P14893271847087559816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232089 n) (A225750 n)

end

end A123641.P14893271847087559816

namespace A123641

/-- `A232089(n)%A225750(n)` -/
def P14893271847087559816.Spec : Prop :=
  ∀ n, P14893271847087559816.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P4921974593267671300

`A003714(A128618(n+1))`
-/

namespace A123641.P4921974593267671300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A128618 (n + 1)).toNat

end

end A123641.P4921974593267671300

namespace A123641

/-- `A003714(A128618(n+1))` -/
def P4921974593267671300.Spec : Prop :=
  ∀ n, P4921974593267671300.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P16031628000684023757

`(2-gcd(2, comp[∑[4*n]]))*A000010(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A123641.P16031628000684023757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat

end

end A123641.P16031628000684023757

namespace A123641

/-- `(2-gcd(2, comp[∑[4*n]]))*A000010(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P16031628000684023757.Spec : Prop :=
  ∀ n, P16031628000684023757.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P17498768874947528688

`A004525(A130125(n))`
-/

namespace A123641.P17498768874947528688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A130125 n).toNat

end

end A123641.P17498768874947528688

namespace A123641

/-- `A004525(A130125(n))` -/
def P17498768874947528688.Spec : Prop :=
  ∀ n, P17498768874947528688.a n = A123641 (n + 1)

end A123641

/-! ## A123641.P6450015713407420301

`A004526(A130125(n)+1)`
-/

namespace A123641.P6450015713407420301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130125 n + 1).toNat

end

end A123641.P6450015713407420301

namespace A123641

/-- `A004526(A130125(n)+1)` -/
def P6450015713407420301.Spec : Prop :=
  ∀ n, P6450015713407420301.a n = A123641 (n + 1)

end A123641

/-!
# A123642: a(n) = n! - 2^n.

The programs for A123642, the canonical program `A123642.P3051291708944674262` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123642 has offset 0).

The definition of A123642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-2^n` (program `A123642.P3051291708944674262`, by `A123642.P3051291708944674262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123642.P3051291708944674262

`n!-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123642

/-- `n!-2^n` -/
def P3051291708944674262.Spec : Prop :=
  ∀ n, P3051291708944674262.a n = A123642 n

theorem P3051291708944674262.correct : P3051291708944674262.Spec := by
  intro n
  simp only [A123642]

end A123642

/-! ## A123642.P16793011296336176662

`A000142(n)-A000079(n)`
-/

namespace A123642.P16793011296336176662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000079 n

end

end A123642.P16793011296336176662

namespace A123642

/-- `A000142(n)-A000079(n)` -/
def P16793011296336176662.Spec : Prop :=
  ∀ n, P16793011296336176662.a n = A123642 n

theorem P16793011296336176662.correct : P16793011296336176662.Spec := by
  intro n
  simp only [A123642, Nat.add_sub_cancel, A123642.P16793011296336176662.a, A123642.P3051291708944674262.a, A000079, A000079.P10855139691139572931.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123642

/-! ## A123642.P4914685942761888827

`Δ[-2^n]+n!`
-/

namespace A123642.P4914685942761888827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A123642.P4914685942761888827

namespace A123642

/-- `Δ[-2^n]+n!` -/
def P4914685942761888827.Spec : Prop :=
  ∀ n, P4914685942761888827.a n = A123642 n

theorem P4914685942761888827.correct : P4914685942761888827.Spec := by
  intro n
  simp only [A123642, Nat.add_sub_cancel, A123642.P4914685942761888827.f1, A123642.P4914685942761888827.a, A123642.P3051291708944674262.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123642

/-! ## A123642.P8528013835713853638

`∏[round(1/acot(n))]-2^n`
-/

namespace A123642.P8528013835713853638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A123642.P8528013835713853638

namespace A123642

/-- `∏[round(1/acot(n))]-2^n` -/
def P8528013835713853638.Spec : Prop :=
  ∀ n, P8528013835713853638.a n = A123642 n

end A123642

/-! ## A123642.P15563552827296962336

`∏[ceil(abs(γ-n))]-2^n`
-/

namespace A123642.P15563552827296962336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A123642.P15563552827296962336

namespace A123642

/-- `∏[ceil(abs(γ-n))]-2^n` -/
def P15563552827296962336.Spec : Prop :=
  ∀ n, P15563552827296962336.a n = A123642 n

end A123642

/-! ## A123642.P13642568650473137287

`Δ[A003422(n)-A000051(n)]`
-/

namespace A123642.P13642568650473137287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123642.P13642568650473137287

namespace A123642

/-- `Δ[A003422(n)-A000051(n)]` -/
def P13642568650473137287.Spec : Prop :=
  ∀ n, P13642568650473137287.a n = A123642 n

end A123642

/-! ## A123642.P3252237984022760085

`Δ[A003422(n)-A000079(n)]`
-/

namespace A123642.P3252237984022760085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123642.P3252237984022760085

namespace A123642

/-- `Δ[A003422(n)-A000079(n)]` -/
def P3252237984022760085.Spec : Prop :=
  ∀ n, P3252237984022760085.a n = A123642 n

end A123642

/-!
# A123643: Record values in A062039.

The programs for A123643, there is no canonical definition to state claims against.
-/

/-! ## A123643.P16063720052357280805

`record[A062039(n)]`
-/

namespace A123643.P16063720052357280805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123643.P16063720052357280805

/-! ## A123643.P2203682940802596190

`record[∑[A193926(n)]+1]`
-/

namespace A123643.P2203682940802596190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123643.P2203682940802596190

/-! ## A123643.P16112705180763802740

`record[A193926(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A123643.P16112705180763802740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A193926 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123643.P16112705180763802740

/-! ## A123643.P10848732905176575940

`A062039(A123644(n))`
-/

namespace A123643.P10848732905176575940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062039 (A123644 n).toNat

end

end A123643.P10848732905176575940

/-! ## A123643.P2738713034836630126

`record[∑[A193926(A028310(n))]]`
-/

namespace A123643.P2738713034836630126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123643.P2738713034836630126

/-!
# A123644: Where record values occur in A062039.

The programs for A123644, there is no canonical definition to state claims against.
-/

/-! ## A123644.P9196317462185787534

`A056557(A290261(n+1)²-n)+n`
-/

namespace A123644.P9196317462185787534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (A290261 (n + 1) ^ 2 - (n : ℤ)).toNat + (n : ℤ)

end

end A123644.P9196317462185787534

/-! ## A123644.P3248622277337371904

`eq[A029392(n), A029406(A029416(2*(n+1)))]`
-/

namespace A123644.P3248622277337371904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029406 (A029416 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123644.P3248622277337371904

/-! ## A123644.P17886676758047735680

`eq[A053258(2*(n+2)), A053260(A053265(n))]`
-/

namespace A123644.P17886676758047735680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053258 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (A053265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123644.P17886676758047735680

/-! ## A123644.P13456005771701239507

`eq[A053260(A053265(n)), A260971(2*(n+2))]`
-/

namespace A123644.P13456005771701239507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (A053265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123644.P13456005771701239507

/-! ## A123644.P15593012802297112479

`A078829(n+1)-A316978(A078817(n+1)+1)`
-/

namespace A123644.P15593012802297112479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1) - A316978 (A078817 (n + 1) + 1).toNat

end

end A123644.P15593012802297112479

/-!
# A123647: Expansion of (eta(q^4) * eta(q^12) / (eta(q) * eta(q^3)))^2 in powers of q.

The programs for A123647, there is no canonical definition to state claims against.
-/

/-! ## A123647.P6151713882648429560

`A123861(n+1)/4`
-/

namespace A123647.P6151713882648429560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123861 (n + 1) : ℚ) / 4

end

end A123647.P6151713882648429560

/-! ## A123647.P11658124065968280180

`record[A212770(n+1)/A030209(A020639(n+1))]`
-/

namespace A123647.P11658124065968280180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212770 (n + 1) : ℚ) / (A030209 (A020639 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123647.P11658124065968280180

/-! ## A123647.P4898358084328769714

`record[A212770(n+2)/A212770(A020639(2*(n+1)))]`
-/

namespace A123647.P4898358084328769714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212770 (n + 2) : ℚ) / (A212770 (A020639 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123647.P4898358084328769714

/-! ## A123647.P5783042664124275046

`A212770(2*(n+1))/A030209(A020639(2*(n+1)))`
-/

namespace A123647.P5783042664124275046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212770 (2 * (n + 1)) : ℚ) / (A030209 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A123647.P5783042664124275046

/-!
# A123648: Expansion of eta(q^4) * eta(q^28) / (eta(q) * eta(q^7)) in powers of q.

The programs for A123648, there is no canonical definition to state claims against.
-/

/-! ## A123648.P18361667838858188940

`A123862(n+1)/2`
-/

namespace A123648.P18361667838858188940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123862 (n + 1) : ℚ) / 2

end

end A123648.P18361667838858188940

/-! ## A123648.P12737806987801284712

`Δ[∑[A123862(n)]/2]`
-/

namespace A123648.P12737806987801284712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123862 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123648.P12737806987801284712

/-! ## A123648.P11406893666032144259

`∑[A273943(Δ[A123862(n)])]`
-/

namespace A123648.P11406893666032144259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123648.P11406893666032144259

/-! ## A123648.P9895759283188718147

`A014682(A123862(n+1))`
-/

namespace A123648.P9895759283188718147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A123862 (n + 1)).toNat

end

end A123648.P9895759283188718147

/-!
# A123649: Expansion of c(q^4) / c(q) in powers of q where c() is a cubic AGM theta function.

The programs for A123649, there is no canonical definition to state claims against.
-/

/-! ## A123649.P16560821013503709194

`A033999(n)*A187153(n+1)`
-/

namespace A123649.P16560821013503709194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A187153 (n + 1)

end

end A123649.P16560821013503709194

/-! ## A123649.P4567214928205736759

`A187153(n+1)/A217771(n)*A261321(n)`
-/

namespace A123649.P4567214928205736759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187153 (n + 1) : ℚ) / (A217771 n : ℚ) * (A261321 n : ℚ)

end

end A123649.P4567214928205736759

/-! ## A123649.P17207257211993912766

`A293387(n+1)/A132954(2*n+1)`
-/

namespace A123649.P17207257211993912766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293387 (n + 1) : ℚ) / (A132954 (2 * n + 1) : ℚ)

end

end A123649.P17207257211993912766

/-! ## A123649.P6223201756565766395

`A261321(n+1)/(A132954(2*n+1)*A132954(n+1))`
-/

namespace A123649.P6223201756565766395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (n + 1) : ℚ) / (A132954 (2 * n + 1) * A132954 (n + 1) : ℚ)

end

end A123649.P6223201756565766395

/-! ## A123649.P4190167376390352528

`A187153(2*n+1)/A217771(2*n+1)*A217771(n+1)`
-/

namespace A123649.P4190167376390352528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187153 (2 * n + 1) : ℚ) / (A217771 (2 * n + 1) : ℚ) * (A217771 (n + 1) : ℚ)

end

end A123649.P4190167376390352528

/-! ## A123649.P8848785079111957973

`A213265(2*n+1)/A217771(2*n+1)*A217771(n+1)`
-/

namespace A123649.P8848785079111957973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213265 (2 * n + 1) : ℚ) / (A217771 (2 * n + 1) : ℚ) * (A217771 (n + 1) : ℚ)

end

end A123649.P8848785079111957973

/-! ## A123649.P9101989505913333065

`A213265(n+1)*A217771(n)/A261321(n)`
-/

namespace A123649.P9101989505913333065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213265 (n + 1) * A217771 n : ℚ) / (A261321 n : ℚ)

end

end A123649.P9101989505913333065

/-! ## A123649.P10716037533730838044

`A187100(2*n+1)/A261320(2*n+1)*A217771(n+1)`
-/

namespace A123649.P10716037533730838044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (2 * n + 1) : ℚ) / (A261320 (2 * n + 1) : ℚ) * (A217771 (n + 1) : ℚ)

end

end A123649.P10716037533730838044

/-!
# A123650: a(n) = 1 + n^2 + n^3 + n^5.

The programs for A123650, the canonical program `A123650.P1412086293311893891` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123650 has offset 1).

The definition of A123650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)²+(n+1)^3+(n+1)^5` (program `A123650.P1412086293311893891`, by `A123650.P1412086293311893891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123650.P1412086293311893891

`1+(n+1)²+(n+1)^3+(n+1)^5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123650

/-- `1+(n+1)²+(n+1)^3+(n+1)^5` -/
def P1412086293311893891.Spec : Prop :=
  ∀ n, (P1412086293311893891.a n : ℤ) = A123650 (n + 1)

theorem P1412086293311893891.correct : P1412086293311893891.Spec := by
  intro n
  simp only [A123650, Nat.add_sub_cancel]

end A123650

/-! ## A123650.P8906428120895131603

`A002061(n+1)*A053698(n+1)`
-/

namespace A123650.P8906428120895131603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A053698 (n + 1)

end

end A123650.P8906428120895131603

namespace A123650

/-- `A002061(n+1)*A053698(n+1)` -/
def P8906428120895131603.Spec : Prop :=
  ∀ n, P8906428120895131603.a n = A123650 (n + 1)

theorem P8906428120895131603.correct : P8906428120895131603.Spec := by
  intro n
  simp only [A123650, Nat.add_sub_cancel, A123650.P8906428120895131603.a, A123650.P1412086293311893891.a, A002061, A002061.P13016590216674735232.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123650

/-! ## A123650.P7782098167314417384

`A000034(n+1)*A281661(n+1)`
-/

namespace A123650.P7782098167314417384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A281661 (n + 1)

end

end A123650.P7782098167314417384

namespace A123650

/-- `A000034(n+1)*A281661(n+1)` -/
def P7782098167314417384.Spec : Prop :=
  ∀ n, P7782098167314417384.a n = A123650 (n + 1)

end A123650

/-! ## A123650.P8754861783392986739

`(A053698(n)-A000578(n))*A053698(n+1)`
-/

namespace A123650.P8754861783392986739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053698 n - A000578 n) * A053698 (n + 1)

end

end A123650.P8754861783392986739

namespace A123650

/-- `(A053698(n)-A000578(n))*A053698(n+1)` -/
def P8754861783392986739.Spec : Prop :=
  ∀ n, P8754861783392986739.a n = A123650 (n + 1)

theorem P8754861783392986739.correct : P8754861783392986739.Spec := by
  intro n
  simp only [A123650, Nat.add_sub_cancel, A123650.P8754861783392986739.a, A123650.P1412086293311893891.a, A000578, A000578.P12162961755414704816.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123650

/-! ## A123650.P12439301666806155423

`(A045991(n+1)+A002522(n+1))*A002522(n+1)`
-/

namespace A123650.P12439301666806155423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045991 (n + 1) + A002522 (n + 1)) * A002522 (n + 1)

end

end A123650.P12439301666806155423

namespace A123650

/-- `(A045991(n+1)+A002522(n+1))*A002522(n+1)` -/
def P12439301666806155423.Spec : Prop :=
  ∀ n, P12439301666806155423.a n = A123650 (n + 1)

theorem P12439301666806155423.correct : P12439301666806155423.Spec := by
  intro n
  simp only [A123650, Nat.add_sub_cancel, A123650.P12439301666806155423.a, A123650.P1412086293311893891.a, A002522, A002522.P3778392011853271743.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123650

/-! ## A123650.P346031418402102952

`A053698(n+1)/A281660(n+1)*A281661(n+1)`
-/

namespace A123650.P346031418402102952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053698 (n + 1) : ℚ) / (A281660 (n + 1) : ℚ) * (A281661 (n + 1) : ℚ)

end

end A123650.P346031418402102952

namespace A123650

/-- `A053698(n+1)/A281660(n+1)*A281661(n+1)` -/
def P346031418402102952.Spec : Prop :=
  ∀ n, P346031418402102952.a n = (A123650 (n + 1) : ℚ)

end A123650

/-!
# A123651: a(n) = 1 + n^2 + n^3 + n^5 + n^7 + n^11 + n^13 + n^17.

The programs for A123651, the canonical program `A123651.P4191571819203945159` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123651 has offset 1).

The definition of A123651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7+(n+1)^11+(n+1)^13+(n+1)^17` (program `A123651.P4191571819203945159`, by `A123651.P4191571819203945159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123651.P4191571819203945159

`1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7+(n+1)^11+(n+1)^13+(n+1)^17`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123651

/-- `1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7+(n+1)^11+(n+1)^13+(n+1)^17` -/
def P4191571819203945159.Spec : Prop :=
  ∀ n, (P4191571819203945159.a n : ℤ) = A123651 (n + 1)

theorem P4191571819203945159.correct : P4191571819203945159.Spec := by
  intro n
  simp only [A123651, Nat.add_sub_cancel]

end A123651

/-!
# A123653: Expansion of (eta(q^2)eta(q^6)/(eta(q)eta(q^3)))^6 in powers of q.

The programs for A123653, there is no canonical definition to state claims against.
-/

/-! ## A123653.P8144697980744149625

`A123647(2*(n+1))/2`
-/

namespace A123653.P8144697980744149625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123647 (2 * (n + 1)) : ℚ) / 2

end

end A123653.P8144697980744149625

/-! ## A123653.P10287218536094382581

`abs(A107653(n+1))`
-/

namespace A123653.P10287218536094382581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107653 (n + 1)|

end

end A123653.P10287218536094382581

/-! ## A123653.P3792392225331875571

`A033999(n)*A107653(n+1)`
-/

namespace A123653.P3792392225331875571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107653 (n + 1)

end

end A123653.P3792392225331875571

/-! ## A123653.P13615356513308826344

`gcd(A000038(n), A107653(n+1))`
-/

namespace A123653.P13615356513308826344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A107653 (n + 1))

end

end A123653.P13615356513308826344

/-! ## A123653.P4361858946712372637

`lcm(A000034(n), A107653(n+1))`
-/

namespace A123653.P4361858946712372637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A107653 (n + 1))

end

end A123653.P4361858946712372637

/-!
# A123655: Expansion of q * psi(q^8) / phi(-q) in powers of q where psi(), phi() are Ramanujan theta functions.

The programs for A123655, there is no canonical definition to state claims against.
-/

/-! ## A123655.P1094225414953436831

`A208933(n+1)/2`
-/

namespace A123655.P1094225414953436831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (n + 1) : ℚ) / 2

end

end A123655.P1094225414953436831

/-! ## A123655.P11359340350586583364

`A007096(n+1)/4`
-/

namespace A123655.P11359340350586583364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (n + 1) : ℚ) / 4

end

end A123655.P11359340350586583364

/-! ## A123655.P7403107118273781099

`abs(A208605(n+1))`
-/

namespace A123655.P7403107118273781099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208605 (n + 1)|

end

end A123655.P7403107118273781099

/-! ## A123655.P2612399138594940053

`A033999(n)*A208605(n+1)`
-/

namespace A123655.P2612399138594940053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208605 (n + 1)

end

end A123655.P2612399138594940053

/-! ## A123655.P13373557844157085700

`gcd(A000038(n), A208605(n+1))`
-/

namespace A123655.P13373557844157085700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208605 (n + 1))

end

end A123655.P13373557844157085700

/-! ## A123655.P12038040796281740678

`lcm(A000034(n), A208605(n+1))`
-/

namespace A123655.P12038040796281740678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A208605 (n + 1))

end

end A123655.P12038040796281740678

/-! ## A123655.P5745205015911757770

`abs(A112128(n+1)/2)`
-/

namespace A123655.P5745205015911757770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A112128 (n + 1) : ℚ) / 2|

end

end A123655.P5745205015911757770

/-! ## A123655.P3595125483366328764

`A112128(n+1)/A280560(n+1)`
-/

namespace A123655.P3595125483366328764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A123655.P3595125483366328764

/-! ## A123655.P9336933978494314839

`A033999(n+1)/2*A112128(n+1)`
-/

namespace A123655.P9336933978494314839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A112128 (n + 1) : ℚ)

end

end A123655.P9336933978494314839

/-! ## A123655.P5861398433179629374

`gcd(A000038(n+1), A112128(n+1))/2`
-/

namespace A123655.P5861398433179629374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A112128 (n + 1)) : ℚ) / 2

end

end A123655.P5861398433179629374

/-! ## A123655.P3726382838102952167

`lcm(2, A189925(n+1)/2)/2`
-/

namespace A123655.P3726382838102952167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((A189925 (n + 1) : ℚ) / 2)) : ℚ) / 2

end

end A123655.P3726382838102952167

/-! ## A123655.P10095166512628590439

`A189925(n+1)/(2*A280560(n+1))`
-/

namespace A123655.P10095166512628590439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (n + 1) : ℚ) / (2 * A280560 (n + 1) : ℚ)

end

end A123655.P10095166512628590439

/-! ## A123655.P9000688952570182195

`A112128(n+1)/A014969(n+1)*A210066(n+1)`
-/

namespace A123655.P9000688952570182195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (n + 1) : ℚ) / (A014969 (n + 1) : ℚ) * (A210066 (n + 1) : ℚ)

end

end A123655.P9000688952570182195

/-!
# A123656: a(n) = 1 + n^4 + n^6.

The programs for A123656, the canonical program `A123656.P15712598152026900771` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123656 has offset 1).

The definition of A123656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)^4+(n+1)^6` (program `A123656.P15712598152026900771`, by `A123656.P15712598152026900771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123656.P15712598152026900771

`1+(n+1)^4+(n+1)^6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123656

/-- `1+(n+1)^4+(n+1)^6` -/
def P15712598152026900771.Spec : Prop :=
  ∀ n, (P15712598152026900771.a n : ℤ) = A123656 (n + 1)

theorem P15712598152026900771.correct : P15712598152026900771.Spec := by
  intro n
  simp only [A123656, Nat.add_sub_cancel]

end A123656

/-! ## A123656.P928766311316880227

`xor(1, (n+1)*A155977(n+1))`
-/

namespace A123656.P928766311316880227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n + 1 : ℤ) * A155977 (n + 1))

end

end A123656.P928766311316880227

namespace A123656

/-- `xor(1, (n+1)*A155977(n+1))` -/
def P928766311316880227.Spec : Prop :=
  ∀ n, P928766311316880227.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P18439411721177532286

`(2*A168364(n+1)+n+1)/(n+1)`
-/

namespace A123656.P18439411721177532286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A168364 (n + 1) + (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A123656.P18439411721177532286

namespace A123656

/-- `(2*A168364(n+1)+n+1)/(n+1)` -/
def P18439411721177532286.Spec : Prop :=
  ∀ n, P18439411721177532286.a n = (A123656 (n + 1) : ℚ)

end A123656

/-! ## A123656.P6251771879433365236

`abs((n+1)²-A059830(n+1))`
-/

namespace A123656.P6251771879433365236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A059830 (n + 1)|

end

end A123656.P6251771879433365236

namespace A123656

/-- `abs((n+1)²-A059830(n+1))` -/
def P6251771879433365236.Spec : Prop :=
  ∀ n, P6251771879433365236.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P17227459523303247941

`or(1, (n+1)^3*Δ[A001621(n)])`
-/

namespace A123656.P17227459523303247941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ 3 : ℤ) * (f1 (n + 1) - f1 n))

end

end A123656.P17227459523303247941

namespace A123656

/-- `or(1, (n+1)^3*Δ[A001621(n)])` -/
def P17227459523303247941.Spec : Prop :=
  ∀ n, P17227459523303247941.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P15615236384352644778

`∑[Δ[A168192(n)]*A178815(n+1)]`
-/

namespace A123656.P15615236384352644778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123656.P15615236384352644778

namespace A123656

/-- `∑[Δ[A168192(n)]*A178815(n+1)]` -/
def P15615236384352644778.Spec : Prop :=
  ∀ n, P15615236384352644778.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P3728181734406886729

`A098547((n+1)²)`
-/

namespace A123656.P3728181734406886729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 ((n + 1) ^ 2)

end

end A123656.P3728181734406886729

namespace A123656

/-- `A098547((n+1)²)` -/
def P3728181734406886729.Spec : Prop :=
  ∀ n, P3728181734406886729.a n = A123656 (n + 1)

theorem P3728181734406886729.correct : P3728181734406886729.Spec := by
  intro n
  simp only [A123656, Nat.add_sub_cancel, A123656.P3728181734406886729.a, A123656.P15712598152026900771.a, A098547, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123656

/-! ## A123656.P12294264569737732980

`record[A098547((1-n)²)]`
-/

namespace A123656.P12294264569737732980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123656.P12294264569737732980

namespace A123656

/-- `record[A098547((1-n)²)]` -/
def P12294264569737732980.Spec : Prop :=
  ∀ n, P12294264569737732980.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P14226751981441318451

`or(1, A011379((n+1)²))`
-/

namespace A123656.P14226751981441318451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011379 ((n + 1) ^ 2))

end

end A123656.P14226751981441318451

namespace A123656

/-- `or(1, A011379((n+1)²))` -/
def P14226751981441318451.Spec : Prop :=
  ∀ n, P14226751981441318451.a n = A123656 (n + 1)

end A123656

/-! ## A123656.P1483347436227919101

`A100606((n+1)²)/(n+1)²`
-/

namespace A123656.P1483347436227919101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100606 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A123656.P1483347436227919101

namespace A123656

/-- `A100606((n+1)²)/(n+1)²` -/
def P1483347436227919101.Spec : Prop :=
  ∀ n, P1483347436227919101.a n = (A123656 (n + 1) : ℚ)

theorem P1483347436227919101.correct : P1483347436227919101.Spec := by
  intro n
  simp only [A123656, Nat.add_sub_cancel, A123656.P1483347436227919101.a, A123656.P15712598152026900771.a, A100606, A100606.P3720319704037152132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123656

/-!
# A123657: a(n) = 1 + n^4 + n^6 + n^9.

The programs for A123657, the canonical program `A123657.P4234006588092904646` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123657 has offset 1).

The definition of A123657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)^4+(n+1)^6+(n+1)^9` (program `A123657.P4234006588092904646`, by `A123657.P4234006588092904646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123657.P4234006588092904646

`1+(n+1)^4+(n+1)^6+(n+1)^9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123657

/-- `1+(n+1)^4+(n+1)^6+(n+1)^9` -/
def P4234006588092904646.Spec : Prop :=
  ∀ n, (P4234006588092904646.a n : ℤ) = A123657 (n + 1)

theorem P4234006588092904646.correct : P4234006588092904646.Spec := by
  intro n
  simp only [A123657, Nat.add_sub_cancel]

end A123657

/-!
# A123658: a(n) = 1 + n^4 + n^6 + n^9 + n^10.

The programs for A123658, the canonical program `A123658.P972905454488508573` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123658 has offset 1).

The definition of A123658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10` (program `A123658.P972905454488508573`, by `A123658.P972905454488508573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123658.P972905454488508573

`1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123658

/-- `1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10` -/
def P972905454488508573.Spec : Prop :=
  ∀ n, (P972905454488508573.a n : ℤ) = A123658 (n + 1)

theorem P972905454488508573.correct : P972905454488508573.Spec := by
  intro n
  simp only [A123658, Nat.add_sub_cancel]

end A123658

/-!
# A123659: a(n) = 1 + n^4 + n^6 + n^9 + n^10 + n^14.

The programs for A123659, the canonical program `A123659.P2098216433758277518` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123659 has offset 1).

The definition of A123659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10+(n+1)^14` (program `A123659.P2098216433758277518`, by `A123659.P2098216433758277518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123659.P2098216433758277518

`1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10+(n+1)^14`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123659

/-- `1+(n+1)^4+(n+1)^6+(n+1)^9+(n+1)^10+(n+1)^14` -/
def P2098216433758277518.Spec : Prop :=
  ∀ n, (P2098216433758277518.a n : ℤ) = A123659 (n + 1)

theorem P2098216433758277518.correct : P2098216433758277518.Spec := by
  intro n
  simp only [A123659, Nat.add_sub_cancel]

end A123659

/-!
# A123663: Number of shared edges in a spiral of n unit squares.

The programs for A123663, the canonical program `A123663.P18403539891228098947` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123663 has offset 1).

The definition of A123663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123663.P18403539891228098947

`2*(n+1)-ceil(2*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123663

/-- `2*(n+1)-ceil(2*sqrt(n+1))` -/
def P18403539891228098947.Spec : Prop :=
  ∀ n, P18403539891228098947.a n = A123663 (n + 1)

theorem P18403539891228098947.correct : P18403539891228098947.Spec := by
  intro n
  simp only [A123663, Nat.add_sub_cancel]

end A123663

/-! ## A123663.P13782206385146263864

`lt[val(floor(sqrt(2*n)+n)+1, 2), 1]`
-/

namespace A123663.P13782206385146263864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊Real.sqrt (2 * n : ℝ) + (n : ℝ)⌋ + 1).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123663.P13782206385146263864

namespace A123663

/-- `lt[val(floor(sqrt(2*n)+n)+1, 2), 1]` -/
def P13782206385146263864.Spec : Prop :=
  ∀ n, (P13782206385146263864.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P1299091445562686554

`xor(A118175(n), A122800(n+1))`
-/

namespace A123663.P1299091445562686554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118175 n) (A122800 (n + 1))

end

end A123663.P1299091445562686554

namespace A123663

/-- `xor(A118175(n), A122800(n+1))` -/
def P1299091445562686554.Spec : Prop :=
  ∀ n, P1299091445562686554.a n = A123663 (n + 1)

end A123663

/-! ## A123663.P16664531463359450741

`∪[A078633(n+1), A000982(n)]`
-/

namespace A123663.P16664531463359450741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123663.P16664531463359450741

namespace A123663

/-- `∪[A078633(n+1), A000982(n)]` -/
def P16664531463359450741.Spec : Prop :=
  ∀ n, (P16664531463359450741.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P5652736911842942121

`eq[A116939(n), A172471(n)]`
-/

namespace A123663.P5652736911842942121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123663.P5652736911842942121

namespace A123663

/-- `eq[A116939(n), A172471(n)]` -/
def P5652736911842942121.Spec : Prop :=
  ∀ n, (P5652736911842942121.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P2200356606881387777

`eq[A100795(n+1), A101776(n)]`
-/

namespace A123663.P2200356606881387777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123663.P2200356606881387777

namespace A123663

/-- `eq[A100795(n+1), A101776(n)]` -/
def P2200356606881387777.Spec : Prop :=
  ∀ n, (P2200356606881387777.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P3823559041451117230

`A309945(2*(n+1))`
-/

namespace A123663.P3823559041451117230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (2 * (n + 1))

end

end A123663.P3823559041451117230

namespace A123663

/-- `A309945(2*(n+1))` -/
def P3823559041451117230.Spec : Prop :=
  ∀ n, P3823559041451117230.a n = A123663 (n + 1)

end A123663

/-! ## A123663.P9441886229759886202

`eq[1, A071030(2*n)]`
-/

namespace A123663.P9441886229759886202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123663.P9441886229759886202

namespace A123663

/-- `eq[1, A071030(2*n)]` -/
def P9441886229759886202.Spec : Prop :=
  ∀ n, (P9441886229759886202.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P3157739352954759991

`eq[1, A071037(2*n+1)]`
-/

namespace A123663.P3157739352954759991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123663.P3157739352954759991

namespace A123663

/-- `eq[1, A071037(2*n+1)]` -/
def P3157739352954759991.Spec : Prop :=
  ∀ n, (P3157739352954759991.a n : ℤ) = A123663 (n + 1)

end A123663

/-! ## A123663.P482607274478840247

`A172151(3*(n+1)+n)`
-/

namespace A123663.P482607274478840247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172151 (3 * (n + 1) + n)

end

end A123663.P482607274478840247

namespace A123663

/-- `A172151(3*(n+1)+n)` -/
def P482607274478840247.Spec : Prop :=
  ∀ n, P482607274478840247.a n = A123663 (n + 1)

end A123663

/-! ## A123663.P448384738764055286

`A082375(A001000(n+2))`
-/

namespace A123663.P448384738764055286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A001000 (n + 2)).toNat

end

end A123663.P448384738764055286

namespace A123663

/-- `A082375(A001000(n+2))` -/
def P448384738764055286.Spec : Prop :=
  ∀ n, P448384738764055286.a n = A123663 (n + 1)

end A123663

/-! ## A123663.P4356739912348488608

`A082375(A071111(n+2))`
-/

namespace A123663.P4356739912348488608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A071111 (n + 2)).toNat

end

end A123663.P4356739912348488608

namespace A123663

/-- `A082375(A071111(n+2))` -/
def P4356739912348488608.Spec : Prop :=
  ∀ n, P4356739912348488608.a n = A123663 (n + 1)

end A123663

/-!
# A123664: a(1) = 1, a(2) = 2; then all new products of subsets of pre-existing terms which include the most recent, then the first integer not present and so on.

The programs for A123664, there is no canonical definition to state claims against.
-/

/-! ## A123664.P11611221498634616300

`A096113(lt[A102369(2*n+3), A002144(3*n+4)])`
-/

namespace A123664.P11611221498634616300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102369 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A123664.P11611221498634616300

/-! ## A123664.P15926348793692393462

`A000005(∏[n!%2+n]-9*C(n, 4))`
-/

namespace A123664.P15926348793692393462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j - 9 * Nat.choose n 4)

end

end A123664.P15926348793692393462

/-! ## A123664.P13140508605592315223

`A038148(A048148(n+1))`
-/

namespace A123664.P13140508605592315223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (A048148 (n + 1)).toNat

end

end A123664.P13140508605592315223

/-! ## A123664.P1222737996868537005

`A000005(A098558(n)-A060008(n))`
-/

namespace A123664.P1222737996868537005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A098558 n - A060008 n).toNat

end

end A123664.P1222737996868537005

/-! ## A123664.P7817794501194137671

`A096113(lt[A171367(n), A285844(n)])`
-/

namespace A123664.P7817794501194137671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A123664.P7817794501194137671

/-!
# A123666: Numbers with an even number of prime factors, at least half of which are 2.

The programs for A123666, the canonical program `A123666.P17536104339572063503` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123666 has offset 1).

The definition of A123666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1805 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123666.P17536104339572063503

`lt[0, char[(n+1)*2^∑{e}[n+1, #]]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123666

/-- `lt[0, char[(n+1)*2^∑{e}[n+1, #]]]` -/
def P17536104339572063503.Spec : Prop :=
  ∀ n, (P17536104339572063503.a n : ℤ) = A123666 (n + 1)

theorem P17536104339572063503.correct : P17536104339572063503.Spec := by
  intro n
  simp only [A123666, Nat.add_sub_cancel]

end A123666

/-! ## A123666.P1047047324727146414

`eq[1, char[(n+1)*2^∑{e}[n+1, #]]]`
-/

namespace A123666.P1047047324727146414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123666.P1047047324727146414

namespace A123666

/-- `eq[1, char[(n+1)*2^∑{e}[n+1, #]]]` -/
def P1047047324727146414.Spec : Prop :=
  ∀ n, (P1047047324727146414.a n : ℤ) = A123666 (n + 1)

end A123666

/-! ## A123666.P4573703398778802692

`lt[0, char[A123667(n+1)]]`
-/

namespace A123666.P4573703398778802692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123666.P4573703398778802692

namespace A123666

/-- `lt[0, char[A123667(n+1)]]` -/
def P4573703398778802692.Spec : Prop :=
  ∀ n, (P4573703398778802692.a n : ℤ) = A123666 (n + 1)

end A123666

/-! ## A123666.P3973756411041732470

`record[A079880(A026422(n+1))]`
-/

namespace A123666.P3973756411041732470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (A026422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123666.P3973756411041732470

namespace A123666

/-- `record[A079880(A026422(n+1))]` -/
def P3973756411041732470.Spec : Prop :=
  ∀ n, P3973756411041732470.a n = A123666 (n + 1)

end A123666

/-! ## A123666.P7078278245222480986

`record[A079880(A026424(n+1))]`
-/

namespace A123666.P7078278245222480986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (A026424 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123666.P7078278245222480986

namespace A123666

/-- `record[A079880(A026424(n+1))]` -/
def P7078278245222480986.Spec : Prop :=
  ∀ n, P7078278245222480986.a n = A123666 (n + 1)

end A123666

/-! ## A123666.P11899752154347261514

`record[gcd(A079880(n+1), A320655(n+1))]`
-/

namespace A123666.P11899752154347261514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079880 (n + 1)) (A320655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123666.P11899752154347261514

namespace A123666

/-- `record[gcd(A079880(n+1), A320655(n+1))]` -/
def P11899752154347261514.Spec : Prop :=
  ∀ n, (P11899752154347261514.a n : ℤ) = A123666 (n + 1)

end A123666

/-! ## A123666.P5747817121417820483

`record[and(A008836(n+1), A079880(n+1))]`
-/

namespace A123666.P5747817121417820483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008836 (n + 1)) (A079880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123666.P5747817121417820483

namespace A123666

/-- `record[and(A008836(n+1), A079880(n+1))]` -/
def P5747817121417820483.Spec : Prop :=
  ∀ n, P5747817121417820483.a n = A123666 (n + 1)

end A123666

/-! ## A123666.P1953979096434758900

`record[and(A079880(n+1), A307428(n+1))]`
-/

namespace A123666.P1953979096434758900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079880 (n + 1)) (A307428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123666.P1953979096434758900

namespace A123666

/-- `record[and(A079880(n+1), A307428(n+1))]` -/
def P1953979096434758900.Spec : Prop :=
  ∀ n, P1953979096434758900.a n = A123666 (n + 1)

end A123666

/-!
# A123667: a(n) = n * 2^bigomega(n).

The programs for A123667, the canonical program `A123667.P10077469845532265586` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123667 has offset 1).

The definition of A123667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123667.P10077469845532265586

`(n+1)*A061142(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A123667

/-- `(n+1)*A061142(n+1)` -/
def P10077469845532265586.Spec : Prop :=
  ∀ n, P10077469845532265586.a n = A123667 (n + 1)

theorem P10077469845532265586.correct : P10077469845532265586.Spec := by
  intro n
  simp only [A123667, Nat.add_sub_cancel]

end A123667

/-! ## A123667.P17465397721345175308

`(n+1)*2^∑{e}[n+1, #]`
-/

namespace A123667.P17465397721345175308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A123667.P17465397721345175308

namespace A123667

/-- `(n+1)*2^∑{e}[n+1, #]` -/
def P17465397721345175308.Spec : Prop :=
  ∀ n, (P17465397721345175308.a n : ℤ) = A123667 (n + 1)

end A123667

/-! ## A123667.P1645543040549262839

`(n+1)*∏{e}[n+1, 2^#]`
-/

namespace A123667.P1645543040549262839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p)

end

end A123667.P1645543040549262839

namespace A123667

/-- `(n+1)*∏{e}[n+1, 2^#]` -/
def P1645543040549262839.Spec : Prop :=
  ∀ n, (P1645543040549262839.a n : ℤ) = A123667 (n + 1)

end A123667

/-! ## A123667.P17998065876044720393

`(n+1)/2^∑{e}[n+1, -#]`
-/

namespace A123667.P17998065876044720393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ)

end

end A123667.P17998065876044720393

namespace A123667

/-- `(n+1)/2^∑{e}[n+1, -#]` -/
def P17998065876044720393.Spec : Prop :=
  ∀ n, P17998065876044720393.a n = (A123667 (n + 1) : ℚ)

end A123667

/-! ## A123667.P17107965685355913076

`(n+1)/∏{e}[n+1, 2^-#]`
-/

namespace A123667.P17107965685355913076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (-(Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A123667.P17107965685355913076

namespace A123667

/-- `(n+1)/∏{e}[n+1, 2^-#]` -/
def P17107965685355913076.Spec : Prop :=
  ∀ n, P17107965685355913076.a n = (A123667 (n + 1) : ℚ)

end A123667

/-! ## A123667.P15444526369370562610

`2^(∑{e}[n+1, #]+log2(n+1))`
-/

namespace A123667.P15444526369370562610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) + Real.logb 2 (n + 1 : ℝ))

end

end A123667.P15444526369370562610

namespace A123667

/-- `2^(∑{e}[n+1, #]+log2(n+1))` -/
def P15444526369370562610.Spec : Prop :=
  ∀ n, P15444526369370562610.a n = (A123667 (n + 1) : ℝ)

end A123667

/-! ## A123667.P10658265574391182336

`abs((n+1)*A165872(n+1))`
-/

namespace A123667.P10658265574391182336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A165872 (n + 1)|

end

end A123667.P10658265574391182336

namespace A123667

/-- `abs((n+1)*A165872(n+1))` -/
def P10658265574391182336.Spec : Prop :=
  ∀ n, P10658265574391182336.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P17334531756843222575

`(n+1)*sqrt(A165825(n+1))`
-/

namespace A123667.P17334531756843222575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165825 (n + 1) : ℝ)

end

end A123667.P17334531756843222575

namespace A123667

/-- `(n+1)*sqrt(A165825(n+1))` -/
def P17334531756843222575.Spec : Prop :=
  ∀ n, P17334531756843222575.a n = (A123667 (n + 1) : ℝ)

end A123667

/-! ## A123667.P14739335854373169321

`sqrt((n+1)*A166625(n+1))`
-/

namespace A123667.P14739335854373169321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A166625 (n + 1) : ℝ)

end

end A123667.P14739335854373169321

namespace A123667

/-- `sqrt((n+1)*A166625(n+1))` -/
def P14739335854373169321.Spec : Prop :=
  ∀ n, P14739335854373169321.a n = (A123667 (n + 1) : ℝ)

end A123667

/-! ## A123667.P14913006649795538871

`(n+1)*2^A001222(n+1)`
-/

namespace A123667.P14913006649795538871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A123667.P14913006649795538871

namespace A123667

/-- `(n+1)*2^A001222(n+1)` -/
def P14913006649795538871.Spec : Prop :=
  ∀ n, P14913006649795538871.a n = (A123667 (n + 1) : ℚ)

end A123667

/-! ## A123667.P1592392253582415639

`(n+1)*A000079(∑{e}[n+1, #])`
-/

namespace A123667.P1592392253582415639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A123667.P1592392253582415639

namespace A123667

/-- `(n+1)*A000079(∑{e}[n+1, #])` -/
def P1592392253582415639.Spec : Prop :=
  ∀ n, P1592392253582415639.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P4192273589872495613

`(n+1)*A219676(∑{e}[n+1, #])`
-/

namespace A123667.P4192273589872495613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A219676 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A123667.P4192273589872495613

namespace A123667

/-- `(n+1)*A219676(∑{e}[n+1, #])` -/
def P4192273589872495613.Spec : Prop :=
  ∀ n, P4192273589872495613.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P6141851056976225932

`(n+1)*A000079(A001222(n+1))`
-/

namespace A123667.P6141851056976225932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A001222 (n + 1)).toNat

end

end A123667.P6141851056976225932

namespace A123667

/-- `(n+1)*A000079(A001222(n+1))` -/
def P6141851056976225932.Spec : Prop :=
  ∀ n, P6141851056976225932.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P1702607807089967116

`(n+1)*A011782(A073093(n+1))`
-/

namespace A123667.P1702607807089967116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (A073093 (n + 1)).toNat

end

end A123667.P1702607807089967116

namespace A123667

/-- `(n+1)*A011782(A073093(n+1))` -/
def P1702607807089967116.Spec : Prop :=
  ∀ n, P1702607807089967116.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P14081384435170898700

`A061019(n+1)*A165872(n+1)`
-/

namespace A123667.P14081384435170898700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1) * A165872 (n + 1)

end

end A123667.P14081384435170898700

namespace A123667

/-- `A061019(n+1)*A165872(n+1)` -/
def P14081384435170898700.Spec : Prop :=
  ∀ n, P14081384435170898700.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P3282005535487969692

`(n+1)*A122111(A105560(n+1))`
-/

namespace A123667.P3282005535487969692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122111 (A105560 (n + 1)).toNat

end

end A123667.P3282005535487969692

namespace A123667

/-- `(n+1)*A122111(A105560(n+1))` -/
def P3282005535487969692.Spec : Prop :=
  ∀ n, P3282005535487969692.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P7405413260370898211

`(n+1)*A248692(A181819(n+1))`
-/

namespace A123667.P7405413260370898211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A248692 (A181819 (n + 1)).toNat

end

end A123667.P7405413260370898211

namespace A123667

/-- `(n+1)*A248692(A181819(n+1))` -/
def P7405413260370898211.Spec : Prop :=
  ∀ n, P7405413260370898211.a n = A123667 (n + 1)

end A123667

/-! ## A123667.P15763217597216581025

`A166625(n+1)/A061142(n+1)`
-/

namespace A123667.P15763217597216581025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A123667.P15763217597216581025

namespace A123667

/-- `A166625(n+1)/A061142(n+1)` -/
def P15763217597216581025.Spec : Prop :=
  ∀ n, P15763217597216581025.a n = (A123667 (n + 1) : ℚ)

end A123667

/-! ## A123667.P1322835499331917672

`A166627(n+1)/A165824(n+1)`
-/

namespace A123667.P1322835499331917672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166627 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A123667.P1322835499331917672

namespace A123667

/-- `A166627(n+1)/A165824(n+1)` -/
def P1322835499331917672.Spec : Prop :=
  ∀ n, P1322835499331917672.a n = (A123667 (n + 1) : ℚ)

end A123667

/-! ## A123667.P11825694277953665519

`A166629(n+1)/A165825(n+1)`
-/

namespace A123667.P11825694277953665519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166629 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A123667.P11825694277953665519

namespace A123667

/-- `A166629(n+1)/A165825(n+1)` -/
def P11825694277953665519.Spec : Prop :=
  ∀ n, P11825694277953665519.a n = (A123667 (n + 1) : ℚ)

end A123667

/-!
# A123669: Smallest generalized Fermat prime of the form (2n)^(2^k) + 1, where k>0; or -1 if no such prime exists.

The programs for A123669, there is no canonical definition to state claims against.
-/

/-! ## A123669.P913725531410056485

`or((∏{p}[n+1, #]+1+n)², Δ[xor(n, 2*n-1)]%2)`
-/

namespace A123669.P913725531410056485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n) ^ 2 : ℕ) : ℤ) (Int.tmod (f2 (n + 1) - f2 n) 2)

end

end A123669.P913725531410056485

/-!
# A123670: Triangle read by rows: T(n,k) is the coefficient of x^k of the polynomial n(n-x)(n-2x)(n-3x)...(n-(n-1)x) (n>=1, 0<=k<=n-1).

The programs for A123670, there is no canonical definition to state claims against.
-/

/-! ## A123670.P16532993491030931023

`A008276(n+1)*A095896(n+1)`
-/

namespace A123670.P16532993491030931023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (n + 1) * A095896 (n + 1)

end

end A123670.P16532993491030931023

/-! ## A123670.P13643901071094421622

`A008276(n+1)*A075363(A038722(n+1))`
-/

namespace A123670.P13643901071094421622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (n + 1) * A075363 (A038722 (n + 1)).toNat

end

end A123670.P13643901071094421622

/-! ## A123670.P13246917543295562435

`A008275(A038722(n+1))*A095896(n+1)`
-/

namespace A123670.P13246917543295562435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A038722 (n + 1)).toNat * A095896 (n + 1)

end

end A123670.P13246917543295562435

/-! ## A123670.P14961356200961440547

`A054654(A007401(n+1))*A095896(n+1)`
-/

namespace A123670.P14961356200961440547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A007401 (n + 1)).toNat * A095896 (n + 1)

end

end A123670.P14961356200961440547

/-! ## A123670.P694767244364972926

`A002024(n+1)^A004736(n+1)*A008276(n+1)`
-/

namespace A123670.P694767244364972926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ) * (A008276 (n + 1) : ℚ)

end

end A123670.P694767244364972926

/-!
# A123671: Number of nonisomorphic Camina groups of order n.

The programs for A123671, there is no canonical definition to state claims against.
-/

/-! ## A123671.P3935987997047074077

`val(A198301(∑{p}[n+1, ceil(n/#)]), 2)`
-/

namespace A123671.P3935987997047074077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A198301 (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat).toNat 2

end

end A123671.P3935987997047074077

/-! ## A123671.P8858044547470060016

`round(sqrt((23*n+2)%A009213(n+1)))`
-/

namespace A123671.P8858044547470060016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (23 * n + 2 : ℤ) (A009213 (n + 1)) : ℝ))

end

end A123671.P8858044547470060016

/-! ## A123671.P14649120636039404908

`gcd(n+1, ∑{p}[n+1, #*val(n+1, #)])%A325567(n+1)`
-/

namespace A123671.P14649120636039404908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.gcd (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) : ℤ) (A325567 (n + 1))

end

end A123671.P14649120636039404908

/-! ## A123671.P2471208520812620570

`A076826(A083280(n+1))`
-/

namespace A123671.P2471208520812620570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A083280 (n + 1)).toNat

end

end A123671.P2471208520812620570

/-! ## A123671.P14985339332619651600

`A126304(A126168(n+1))`
-/

namespace A123671.P14985339332619651600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A126168 (n + 1)).toNat

end

end A123671.P14985339332619651600

/-!
# A123672: a(1) = 1; for n > 1, a(n) = (2^n-1)*a(n-1) + (-1)^n.

The programs for A123672, the canonical program `A123672.P6919656012301716851` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123672 has offset 1).

The definition of A123672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)-1)*a(n-1)+(-1)^(n+1)` (program `A123672.P6919656012301716851`, by `A123672.P6919656012301716851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123672.P6919656012301716851

`(2^(n+1)-1)*a(n-1)+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123672

/-- `(2^(n+1)-1)*a(n-1)+(-1)^(n+1)` -/
def P6919656012301716851.Spec : Prop :=
  ∀ n, P6919656012301716851.a n = A123672 (n + 1)

theorem P6919656012301716851.correct : P6919656012301716851.Spec := by
  intro n
  simp only [A123672, Nat.add_sub_cancel]

end A123672

/-! ## A123672.P9409068072683711607

`a(n-1)*A126646(n)-(-1)^n` with `a(0)=1`
-/

namespace A123672.P9409068072683711607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A126646 n - (-1) ^ n

end

end A123672.P9409068072683711607

namespace A123672

/-- `a(n-1)*A126646(n)-(-1)^n` -/
def P9409068072683711607.Spec : Prop :=
  ∀ n, P9409068072683711607.a n = A123672 (n + 1)

theorem P9409068072683711607.correct : P9409068072683711607.Spec := by
  intro n
  simp only [A123672, Nat.add_sub_cancel, A123672.P9409068072683711607.a, A123672.P6919656012301716851.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A123672

/-! ## A123672.P10329229918472959110

`A005329(n+1)+A005327(n+2)`
-/

namespace A123672.P10329229918472959110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005329 (n + 1) + A005327 (n + 2)

end

end A123672.P10329229918472959110

namespace A123672

/-- `A005329(n+1)+A005327(n+2)` -/
def P10329229918472959110.Spec : Prop :=
  ∀ n, P10329229918472959110.a n = A123672 (n + 1)

end A123672

/-! ## A123672.P12161596454793852382

`a(n-1)*A127330(A000124(n))-(-1)^n` with `a(0)=1`
-/

namespace A123672.P12161596454793852382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A127330 (A000124 n).toNat - (-1) ^ n

end

end A123672.P12161596454793852382

namespace A123672

/-- `a(n-1)*A127330(A000124(n))-(-1)^n` -/
def P12161596454793852382.Spec : Prop :=
  ∀ n, P12161596454793852382.a n = A123672 (n + 1)

end A123672

/-! ## A123672.P17093238426926025987

`(A002884(n+1)+A002820(n+1))/A006125(n+1)`
-/

namespace A123672.P17093238426926025987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) + A002820 (n + 1) : ℚ) / (A006125 (n + 1) : ℚ)

end

end A123672.P17093238426926025987

namespace A123672

/-- `(A002884(n+1)+A002820(n+1))/A006125(n+1)` -/
def P17093238426926025987.Spec : Prop :=
  ∀ n, P17093238426926025987.a n = (A123672 (n + 1) : ℚ)

end A123672

/-!
# A123673: Smaller side of right triangles with integer sides and integer side inscribed squares with two vertices on the hypotenuse.

The programs for A123673, there is no canonical definition to state claims against.
-/

/-! ## A123673.P2132269238277635198

`∪[A123697(n+1), A177769(n+1)]`
-/

namespace A123673.P2132269238277635198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123673.P2132269238277635198

/-!
# A123674: a(n) = number of primes of the form 2^n - 3^k.

The programs for A123674, there is no canonical definition to state claims against.
-/

/-! ## A123674.P4345811084060226414

`A001221(lcm(A045795(n+1), A072985(n)))`
-/

namespace A123674.P4345811084060226414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A045795 (n + 1)) (A072985 n))

end

end A123674.P4345811084060226414

/-! ## A123674.P7669176312050542429

`A001222(or(A099425(n), A179884(n+1)))`
-/

namespace A123674.P7669176312050542429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A099425 n) (A179884 (n + 1))).toNat

end

end A123674.P7669176312050542429

/-! ## A123674.P15377794783863940428

`A259651(A214679(n+2)+n)`
-/

namespace A123674.P15377794783863940428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259651 (A214679 (n + 2) + (n : ℤ)).toNat

end

end A123674.P15377794783863940428

/-! ## A123674.P11432872713565838905

`gcd(A292941(n+1)+A185284(3*n), 2*n)`
-/

namespace A123674.P11432872713565838905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292941 (n + 1) + A185284 (3 * n)) (2 * n : ℤ)

end

end A123674.P11432872713565838905

/-! ## A123674.P11608286497466865429

`A001222(A318149(n+1)+A000384(n))`
-/

namespace A123674.P11608286497466865429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318149 (n + 1) + A000384 n).toNat

end

end A123674.P11608286497466865429

/-!
# A123675: a(n) = number of primes of the form 2^n - 5^k.

The programs for A123675, there is no canonical definition to state claims against.
-/

/-! ## A123675.P861479261578554696

`val(A286873(2*n+5)+A008475(A165843(2*n+1)), 2)`
-/

namespace A123675.P861479261578554696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286873 (2 * n + 5) + A008475 (A165843 (2 * n + 1)).toNat).toNat 2

end

end A123675.P861479261578554696

/-! ## A123675.P15072349404441411192

`A373369(A022570(n))`
-/

namespace A123675.P15072349404441411192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373369 (A022570 n).toNat

end

end A123675.P15072349404441411192

/-! ## A123675.P9517158249934694778

`val(A045753(A209410(n)), 3)`
-/

namespace A123675.P9517158249934694778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045753 (A209410 n).toNat).toNat 3

end

end A123675.P9517158249934694778

/-! ## A123675.P16340323808689660640

`val(A266646(record[A123223(n)]), 2)`
-/

namespace A123675.P16340323808689660640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat 2

end

end A123675.P16340323808689660640

/-! ## A123675.P15738553007633076003

`A083916(A045969(n+1)+1)`
-/

namespace A123675.P15738553007633076003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A045969 (n + 1) + 1).toNat

end

end A123675.P15738553007633076003

/-!
# A123677: Primes p such that Lucas(prime(p)) is prime, where Lucas = A000032.

The programs for A123677, there is no canonical definition to state claims against.
-/

/-! ## A123677.P5415594694091351637

`p?[A120561(n+1)]`
-/

namespace A123677.P5415594694091351637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123677.P5415594694091351637

/-! ## A123677.P15598983468312639697

`A000040(A123678(n+1))`
-/

namespace A123677.P15598983468312639697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123678 (n + 1)).toNat

end

end A123677.P15598983468312639697

/-! ## A123677.P17073934821975204723

`p?[record[A120561(A065648(n))]]`
-/

namespace A123677.P17073934821975204723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123677.P17073934821975204723

/-! ## A123677.P9021780815274855313

`p?[record[A120561(A106466(n))]]`
-/

namespace A123677.P9021780815274855313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123677.P9021780815274855313

/-! ## A123677.P9551440278135735149

`record[A020639(A120561(n+2))]`
-/

namespace A123677.P9551440278135735149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120561 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123677.P9551440278135735149

/-!
# A123678: Numbers n such that Lucas(prime(prime(n))) is prime, where Lucas(k) = A000032(k).

The programs for A123678, there is no canonical definition to state claims against.
-/

/-! ## A123678.P1896541428315486024

`A000720(A123677(n+1))`
-/

namespace A123678.P1896541428315486024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A123677 (n + 1)).toNat

end

end A123678.P1896541428315486024

/-! ## A123678.P7023727317083147094

`A000720(p?[A120561(n+1)])`
-/

namespace A123678.P7023727317083147094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123678.P7023727317083147094

/-! ## A123678.P4233341298333821309

`A061395(p?[A120561(n+1)])`
-/

namespace A123678.P4233341298333821309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123678.P4233341298333821309

/-! ## A123678.P12191793146534693492

`A061395(p?[A123677(n+1)])`
-/

namespace A123678.P12191793146534693492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123678.P12191793146534693492

/-! ## A123678.P7577574398453047751

`A066328(p?[A120561(n+1)])`
-/

namespace A123678.P7577574398453047751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A123678.P7577574398453047751

/-!
# A123679: a(n) = 2*n - A123088(n).

The programs for A123679, there is no canonical definition to state claims against.
-/

/-! ## A123679.P10654497474307342730

`2*(n+1)-A123088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123679.P10654497474307342730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A123088 (n + 1)

end

end A123679.P10654497474307342730

/-! ## A123679.P5629196257338974015

`n+1-comp[A367039(n+2)]+n`
-/

namespace A123679.P5629196257338974015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367039 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (n : ℤ)

end

end A123679.P5629196257338974015

/-! ## A123679.P1522341807874906803

`A028310(n)-A367039(n+1)`
-/

namespace A123679.P1522341807874906803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A367039 (n + 1)

end

end A123679.P1522341807874906803

/-! ## A123679.P17254087718318358018

`A008619(A004273(n))-A367039(n+1)`
-/

namespace A123679.P17254087718318358018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat - A367039 (n + 1)

end

end A123679.P17254087718318358018

/-! ## A123679.P10255331759415444698

`A123249(A010078(n+1))-A163300(A010078(n+1))`
-/

namespace A123679.P10255331759415444698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123249 (A010078 (n + 1)).toNat - A163300 (A010078 (n + 1)).toNat

end

end A123679.P10255331759415444698

/-! ## A123679.P9191883337699044847

`A123249(A010078(n+1))%A010078(A005843(n+1))`
-/

namespace A123679.P9191883337699044847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123249 (A010078 (n + 1)).toNat) (A010078 (A005843 (n + 1)).toNat)

end

end A123679.P9191883337699044847

/-! ## A123679.P9340889465216794932

`A025581(A123088(n+1)+∑[n])`
-/

namespace A123679.P9340889465216794932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A123088 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A123679.P9340889465216794932

/-! ## A123679.P5094284634999108158

`A005408(n)+1-A123088(n+1)`
-/

namespace A123679.P5094284634999108158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A123088 (n + 1))

end

end A123679.P5094284634999108158

/-! ## A123679.P18205755291237452202

`A005843(n)+2-A123088(n+1)`
-/

namespace A123679.P18205755291237452202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A123088 (n + 1))

end

end A123679.P18205755291237452202

/-! ## A123679.P6891589163865574107

`abs(A123088(n+1)-A163300(n+1))`
-/

namespace A123679.P6891589163865574107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123088 (n + 1) - A163300 (n + 1)|

end

end A123679.P6891589163865574107

/-!
# A123680: a(n) = Sum_{k=0..n} C(n+k-1,k)*k!.

The programs for A123680, there is no canonical definition to state claims against.
-/

/-! ## A123680.P9929395240103447628

`(n+1)*A123681(n)`
-/

namespace A123680.P9929395240103447628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123681 n

end

end A123680.P9929395240103447628

/-! ## A123680.P9273117550374702964

`A111685(A028310(n))+floor(atan(n+1))`
-/

namespace A123680.P9273117550374702964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111685 (A028310 n).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A123680.P9273117550374702964

/-! ## A123680.P12315716913751331339

`A111685(A028310(n))+A057427(n)`
-/

namespace A123680.P12315716913751331339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111685 (A028310 n).toNat + A057427 n

end

end A123680.P12315716913751331339

/-! ## A123680.P15498492556287869059

`A123681(n)*A135227(A000217(n))`
-/

namespace A123680.P15498492556287869059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123681 n * A135227 (A000217 n).toNat

end

end A123680.P15498492556287869059

/-! ## A123680.P5786081503968711533

`A123681(n)*A321331(A000096(n))`
-/

namespace A123680.P5786081503968711533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123681 n * A321331 (A000096 n).toNat

end

end A123680.P5786081503968711533

/-!
# A123681: a(n) = (1/(n+1)) * Sum_{k=0..n} C(n+k-1,k)*k! = A123680(n)/(n+1).

The programs for A123681, there is no canonical definition to state claims against.
-/

/-! ## A123681.P6536858796277708310

`A123680(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123681.P6536858796277708310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123680 n : ℚ) / (n + 1 : ℚ)

end

end A123681.P6536858796277708310

/-! ## A123681.P15881703744065256786

`A001761(n)/A001813(n)*A123680(n)`
-/

namespace A123681.P15881703744065256786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001761 n : ℚ) / (A001813 n : ℚ) * (A123680 n : ℚ)

end

end A123681.P15881703744065256786

/-! ## A123681.P2378550662667703994

`(A111685(A028310(n))+A057427(n))/(n+1)`
-/

namespace A123681.P2378550662667703994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111685 (A028310 n).toNat + A057427 n : ℚ) / (n + 1 : ℚ)

end

end A123681.P2378550662667703994

/-! ## A123681.P16174145432362788535

`A117396(2*n²)`
-/

namespace A123681.P16174145432362788535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117396 (2 * n ^ 2)

end

end A123681.P16174145432362788535

/-! ## A123681.P6732778027760528422

`or(1, A117396(A001105(n)))`
-/

namespace A123681.P6732778027760528422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117396 (A001105 n).toNat)

end

end A123681.P6732778027760528422

/-!
# A123682: First in an infinite series of triangular arrays which, when taken together, sum to 1,1,3,5,11,21,43,85,... cf. A001045.

The programs for A123682, there is no canonical definition to state claims against.
-/

/-! ## A123682.P6714474792108717774

`A128227(n)-(C(comp[∑[n]]-n, 2)+1+n)%2`
-/

namespace A123682.P6714474792108717774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n - (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n) % 2 : ℕ) : ℤ)

end

end A123682.P6714474792108717774

/-! ## A123682.P9776854828570117049

`A002262(∑[char[comp[∑[n]]]])+2-gcd(2, comp[∑[4*n]])`
-/

namespace A123682.P9776854828570117049
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n) : ℤ))

end

end A123682.P9776854828570117049

/-! ## A123682.P12725900500522397451

`abs(Δ[A182093(A130328(n))])`
-/

namespace A123682.P12725900500522397451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A130328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A123682.P12725900500522397451

/-! ## A123682.P16092922747913591544

`A128227(n)-A025581(n)%2`
-/

namespace A123682.P16092922747913591544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n - Int.tmod (A025581 n) 2

end

end A123682.P16092922747913591544

/-! ## A123682.P15302126901597813671

`A128227(n)-A335821(n)%2`
-/

namespace A123682.P15302126901597813671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n - Int.tmod (A335821 n) 2

end

end A123682.P15302126901597813671

/-!
# A123684: Alternate A016777(n) with A000027(n).

The programs for A123684, the canonical program `A123684.P10917051134979273385` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123684 has offset 1).

The definition of A123684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123684.P10917051134979273385

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123684

/-- `2*a(n-2)-a(n-4)` -/
def P10917051134979273385.Spec : Prop :=
  ∀ n, P10917051134979273385.a n = A123684 (n + 1)

theorem P10917051134979273385.correct : P10917051134979273385.Spec := by
  intro n
  simp only [A123684, Nat.add_sub_cancel]

end A123684

/-! ## A123684.P2160794740767041950

`1/4*(4*(n+1)-1-(2*(n+1)-1)*(-1)^(n+1))`
-/

namespace A123684.P2160794740767041950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((4 * (n + 1) : ℤ) - 1 - ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) : ℚ)

end

end A123684.P2160794740767041950

namespace A123684

/-- `1/4*(4*(n+1)-1-(2*(n+1)-1)*(-1)^(n+1))` -/
def P2160794740767041950.Spec : Prop :=
  ∀ n, P2160794740767041950.a n = (A123684 (n + 1) : ℚ)

theorem P2160794740767041950.correct : P2160794740767041950.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A123684, Nat.add_sub_cancel, A123684.P2160794740767041950.a, A123684.P10917051134979273385.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A123684, Nat.add_sub_cancel, A123684.P2160794740767041950.a, A123684.P10917051134979273385.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123684

/-! ## A123684.P5891095505091171962

`A071045(n)+1`
-/

namespace A123684.P5891095505091171962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + 1

end

end A123684.P5891095505091171962

namespace A123684

/-- `A071045(n)+1` -/
def P5891095505091171962.Spec : Prop :=
  ∀ n, P5891095505091171962.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P3776242359754618340

`A064455(n+1)-A137501(n+1)`
-/

namespace A123684.P3776242359754618340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) - A137501 (n + 1)

end

end A123684.P3776242359754618340

namespace A123684

/-- `A064455(n+1)-A137501(n+1)` -/
def P3776242359754618340.Spec : Prop :=
  ∀ n, P3776242359754618340.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P16247566541274003872

`A092530(n+1)-A092530(n)-1`
-/

namespace A123684.P16247566541274003872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 (n + 1) - A092530 n - 1

end

end A123684.P16247566541274003872

namespace A123684

/-- `A092530(n+1)-A092530(n)-1` -/
def P16247566541274003872.Spec : Prop :=
  ∀ n, P16247566541274003872.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P1482877223283941265

`Δ[lcm(2, n)/2]+n`
-/

namespace A123684.P1482877223283941265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A123684.P1482877223283941265

namespace A123684

/-- `Δ[lcm(2, n)/2]+n` -/
def P1482877223283941265.Spec : Prop :=
  ∀ n, P1482877223283941265.a n = (A123684 (n + 1) : ℚ)

end A123684

/-! ## A123684.P2732226852401860893

`Δ[n/gcd(2, n)]+n`
-/

namespace A123684.P2732226852401860893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A123684.P2732226852401860893

namespace A123684

/-- `Δ[n/gcd(2, n)]+n` -/
def P2732226852401860893.Spec : Prop :=
  ∀ n, P2732226852401860893.a n = (A123684 (n + 1) : ℚ)

end A123684

/-! ## A123684.P8336911130717626336

`∑[(-1)^n*xor(1, n)]`
-/

namespace A123684.P8336911130717626336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P8336911130717626336

namespace A123684

/-- `∑[(-1)^n*xor(1, n)]` -/
def P8336911130717626336.Spec : Prop :=
  ∀ n, P8336911130717626336.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P7957556642949791366

`∑[xor(1, n)/(-1)^n]`
-/

namespace A123684.P7957556642949791366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P7957556642949791366

namespace A123684

/-- `∑[xor(1, n)/(-1)^n]` -/
def P7957556642949791366.Spec : Prop :=
  ∀ n, P7957556642949791366.a n = (A123684 (n + 1) : ℚ)

end A123684

/-! ## A123684.P16013349050328352393

`Δ[gcd(n², C(n, 2))]+n`
-/

namespace A123684.P16013349050328352393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A123684.P16013349050328352393

namespace A123684

/-- `Δ[gcd(n², C(n, 2))]+n` -/
def P16013349050328352393.Spec : Prop :=
  ∀ n, P16013349050328352393.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P17215621551127335746

`∑[-xor(n, -(-1)^n)]`
-/

namespace A123684.P17215621551127335746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P17215621551127335746

namespace A123684

/-- `∑[-xor(n, -(-1)^n)]` -/
def P17215621551127335746.Spec : Prop :=
  ∀ n, P17215621551127335746.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P15501483029833544744

`∑[xor(1, 2-a(n-1))]` with `a(0)=1`
-/

namespace A123684.P15501483029833544744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 1 (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P15501483029833544744

namespace A123684

/-- `∑[xor(1, 2-a(n-1))]` -/
def P15501483029833544744.Spec : Prop :=
  ∀ n, P15501483029833544744.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P5929204277386962004

`(n²-1)%Δ[n²]+1`
-/

namespace A123684.P5929204277386962004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A123684.P5929204277386962004

namespace A123684

/-- `(n²-1)%Δ[n²]+1` -/
def P5929204277386962004.Spec : Prop :=
  ∀ n, P5929204277386962004.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P7052569753537108469

`∑[∑[ogf((1+x+2x^2)/(1+2x+x^2))]]`
-/

namespace A123684.P7052569753537108469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P7052569753537108469

namespace A123684

/-- `∑[∑[ogf((1+x+2x^2)/(1+2x+x^2))]]` -/
def P7052569753537108469.Spec : Prop :=
  ∀ n, P7052569753537108469.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P77307503156487894

`ogf((1+x+2x^2)/(1-2x^2+x^4))`
-/

namespace A123684.P77307503156487894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -2, 0, 1] n

end

end A123684.P77307503156487894

namespace A123684

/-- `ogf((1+x+2x^2)/(1-2x^2+x^4))` -/
def P77307503156487894.Spec : Prop :=
  ∀ n, P77307503156487894.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P12306575371029590445

`or(1, n)-a(n-1)+n` with `a(0)=1`
-/

namespace A123684.P12306575371029590445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 1 n : ℤ) - a (n - 1) + (n : ℤ)

end

end A123684.P12306575371029590445

namespace A123684

/-- `or(1, n)-a(n-1)+n` -/
def P12306575371029590445.Spec : Prop :=
  ∀ n, P12306575371029590445.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P2123226106701712789

`or(1, n)-(a(n-1)-n)` with `a(0)=1`
-/

namespace A123684.P2123226106701712789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 1 n : ℤ) - (a (n - 1) - (n : ℤ))

end

end A123684.P2123226106701712789

namespace A123684

/-- `or(1, n)-(a(n-1)-n)` -/
def P2123226106701712789.Spec : Prop :=
  ∀ n, P2123226106701712789.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P3192853087093769596

`a(n-2)+gcd(3, n%2)` with `a(0)=1, a(1)=1`
-/

namespace A123684.P3192853087093769596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.gcd 3 (n % 2)

end

end A123684.P3192853087093769596

namespace A123684

/-- `a(n-2)+gcd(3, n%2)` -/
def P3192853087093769596.Spec : Prop :=
  ∀ n, (P3192853087093769596.a n : ℤ) = A123684 (n + 1)

end A123684

/-! ## A123684.P6091355102178019618

`∑[n+1-2*n*and(1, n)]`
-/

namespace A123684.P6091355102178019618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (2 * n * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123684.P6091355102178019618

namespace A123684

/-- `∑[n+1-2*n*and(1, n)]` -/
def P6091355102178019618.Spec : Prop :=
  ∀ n, P6091355102178019618.a n = A123684 (n + 1)

end A123684

/-! ## A123684.P2884654772926536777

`a(n-2)+(-1)^n+2` with `a(0)=1, a(1)=1`
-/

namespace A123684.P2884654772926536777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((-1) ^ n + 2)

end

end A123684.P2884654772926536777

namespace A123684

/-- `a(n-2)+(-1)^n+2` -/
def P2884654772926536777.Spec : Prop :=
  ∀ n, P2884654772926536777.a n = A123684 (n + 1)

end A123684

/-!
# A123689: Number of points in a square lattice covered by a circle of diameter n if the center of the circle is chosen such that the circle covers the minimum possible number of lattice points.

The programs for A123689, there is no canonical definition to state claims against.
-/

/-! ## A123689.P1458436399266863358

`floor(sqrt(2*(A131513(n+1)+n²)))`
-/

namespace A123689.P1458436399266863358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * (A131513 (n + 1) + (n ^ 2 : ℤ)))

end

end A123689.P1458436399266863358

/-! ## A123689.P16619738232843659678

`A172471(A131513(n+1)+n²)`
-/

namespace A123689.P16619738232843659678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A131513 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A123689.P16619738232843659678

/-! ## A123689.P18149963770020485307

`A172471(A131513(n+1))+A057427(n)`
-/

namespace A123689.P18149963770020485307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A131513 (n + 1)).toNat + A057427 n

end

end A123689.P18149963770020485307

/-! ## A123689.P15902209759908030

`A178334(n)+A172471(A131513(n+1))`
-/

namespace A123689.P15902209759908030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A172471 (A131513 (n + 1)).toNat

end

end A123689.P15902209759908030

/-! ## A123689.P13595397523884595604

`A178489(n)+A172471(A131513(n+1))`
-/

namespace A123689.P13595397523884595604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A172471 (A131513 (n + 1)).toNat

end

end A123689.P13595397523884595604

/-!
# A123691: a(n) = number of standard Young tableaux of type (n,n-1,n-1).

The programs for A123691, the canonical program `A123691.P15958346265294691112` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123691 has offset 1).

The definition of A123691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123691.P15958346265294691112

`6*(3*(n+1)-2)!/((n+1)!*n!*(n+3)!)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123691

/-- `6*(3*(n+1)-2)!/((n+1)!*n!*(n+3)!)` -/
def P15958346265294691112.Spec : Prop :=
  ∀ n, P15958346265294691112.a n = (A123691 (n + 1) : ℚ)

end A123691

/-! ## A123691.P5814215644564538670

`A065077(∑[n+1]+n)`
-/

namespace A123691.P5814215644564538670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065077 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A123691.P5814215644564538670

namespace A123691

/-- `A065077(∑[n+1]+n)` -/
def P5814215644564538670.Spec : Prop :=
  ∀ n, P5814215644564538670.a n = A123691 (n + 1)

end A123691

/-! ## A123691.P9281535862069205278

`A123555(n)+A005789(n)`
-/

namespace A123691.P9281535862069205278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123555 n + A005789 n

end

end A123691.P9281535862069205278

namespace A123691

/-- `A123555(n)+A005789(n)` -/
def P9281535862069205278.Spec : Prop :=
  ∀ n, P9281535862069205278.a n = A123691 (n + 1)

end A123691

/-! ## A123691.P4074318976441323289

`A123555(n)+A000108(n+1)/(n+1)*A001764(n)`
-/

namespace A123691.P4074318976441323289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123555 n : ℚ) + (A000108 (n + 1) : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A123691.P4074318976441323289

namespace A123691

/-- `A123555(n)+A000108(n+1)/(n+1)*A001764(n)` -/
def P4074318976441323289.Spec : Prop :=
  ∀ n, P4074318976441323289.a n = (A123691 (n + 1) : ℚ)

end A123691

/-! ## A123691.P14940629537933919945

`A123555(n)+A324151(n)/(n+1)`
-/

namespace A123691.P14940629537933919945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123555 n : ℚ) + (A324151 n : ℚ) / (n + 1 : ℚ)

end

end A123691.P14940629537933919945

namespace A123691

/-- `A123555(n)+A324151(n)/(n+1)` -/
def P14940629537933919945.Spec : Prop :=
  ∀ n, P14940629537933919945.a n = (A123691 (n + 1) : ℚ)

end A123691

/-! ## A123691.P12259596229262426741

`A324151(n+1)/(3*n+2)`
-/

namespace A123691.P12259596229262426741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324151 (n + 1) : ℚ) / (3 * n + 2 : ℚ)

end

end A123691.P12259596229262426741

namespace A123691

/-- `A324151(n+1)/(3*n+2)` -/
def P12259596229262426741.Spec : Prop :=
  ∀ n, P12259596229262426741.a n = (A123691 (n + 1) : ℚ)

end A123691

/-! ## A123691.P5847583342140071035

`A123555(n)+A007004(n)/∑[n+1]`
-/

namespace A123691.P5847583342140071035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123555 n : ℚ) + (A007004 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A123691.P5847583342140071035

namespace A123691

/-- `A123555(n)+A007004(n)/∑[n+1]` -/
def P5847583342140071035.Spec : Prop :=
  ∀ n, P5847583342140071035.a n = (A123691 (n + 1) : ℚ)

end A123691

/-!
# A123692: Primes p such that p^2 divides 5^(p-1) - 1.

The programs for A123692, there is no canonical definition to state claims against.
-/

/-! ## A123692.P8917422639677429214

`A305332(n+1)*A305333(n+1)+1`
-/

namespace A123692.P8917422639677429214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305332 (n + 1) * A305333 (n + 1) + 1

end

end A123692.P8917422639677429214

/-!
# A123695: Signature permutation of a nonrecursive Catalan automorphism: row 1653002 of table A089840.

The programs for A123695, there is no canonical definition to state claims against.
-/

/-! ## A123695.P14535500057774240308

`A057163(A123696(A057163(n)))`
-/

namespace A123695.P14535500057774240308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A123696 (A057163 n).toNat).toNat

end

end A123695.P14535500057774240308

/-! ## A123695.P12886267979890544993

`A082335(A123696(A082335(n)))`
-/

namespace A123695.P12886267979890544993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082335 (A123696 (A082335 n).toNat).toNat

end

end A123695.P12886267979890544993

/-! ## A123695.P4234258322207225918

`A154121(A130369(n))+A000038(A002379(n))`
-/

namespace A123695.P4234258322207225918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A130369 n).toNat + A000038 (A002379 n).toNat

end

end A123695.P4234258322207225918

/-! ## A123695.P10144948552132365589

`A074685(n)-A010815(A092103(n+2))`
-/

namespace A123695.P10144948552132365589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 n - A010815 (A092103 (n + 2)).toNat

end

end A123695.P10144948552132365589

/-!
# A123696: Signature permutation of a nonrecursive Catalan automorphism: row 1653063 of table A089840.

The programs for A123696, there is no canonical definition to state claims against.
-/

/-! ## A123696.P3180335675410454015

`A057163(A123695(A057163(n)))`
-/

namespace A123696.P3180335675410454015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A123695 (A057163 n).toNat).toNat

end

end A123696.P3180335675410454015

/-! ## A123696.P10446540048141863178

`A082336(A123695(A082336(n)))`
-/

namespace A123696.P10446540048141863178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082336 (A123695 (A082336 n).toNat).toNat

end

end A123696.P10446540048141863178

/-! ## A123696.P9969885872561213594

`A130370(A154122(n))*A323072(A323067(n+1))`
-/

namespace A123696.P9969885872561213594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (A154122 n).toNat * A323072 (A323067 (n + 1)).toNat

end

end A123696.P9969885872561213594

/-! ## A123696.P14049198045925954471

`A123500(A010784(n+1)%A247027(n+1))`
-/

namespace A123696.P14049198045925954471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (Int.tmod (A010784 (n + 1)) (A247027 (n + 1))).toNat

end

end A123696.P14049198045925954471

/-! ## A123696.P16164613617587483835

`A123500(A249157(n+1))`
-/

namespace A123696.P16164613617587483835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (A249157 (n + 1)).toNat

end

end A123696.P16164613617587483835

/-!
# A123698: An example of a stereogram: a flat picture that appears three-dimensional when viewed in the correct way.

The programs for A123698, there is no canonical definition to state claims against.
-/

/-! ## A123698.P6042851228038287173

`A152764(A053615(n)+1)`
-/

namespace A123698.P6042851228038287173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152764 (A053615 n + 1).toNat

end

end A123698.P6042851228038287173

/-! ## A123698.P17550337402121041284

`A071033(A053615(n)^A144112(n+1))`
-/

namespace A123698.P17550337402121041284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071033 (SequenceMachineLib.roundAway ((A053615 n : ℚ) ^ (A144112 (n + 1) : ℤ))).toNat

end

end A123698.P17550337402121041284

/-! ## A123698.P11307003066423496678

`A249183(A053615(n)^A144112(n+1))`
-/

namespace A123698.P11307003066423496678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249183 (SequenceMachineLib.roundAway ((A053615 n : ℚ) ^ (A144112 (n + 1) : ℤ))).toNat

end

end A123698.P11307003066423496678

/-! ## A123698.P4412044541394001091

`A267364(A053615(n)^A144112(n+1))`
-/

namespace A123698.P4412044541394001091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267364 (SequenceMachineLib.roundAway ((A053615 n : ℚ) ^ (A144112 (n + 1) : ℤ))).toNat

end

end A123698.P4412044541394001091

/-!
# A123699: Smallest b such that all digits are distinct in base b representation of n.

The programs for A123699, there is no canonical definition to state claims against.
-/

/-! ## A123699.P8338648006763989367

`A126688(n+1)-floor(acot(n))`
-/

namespace A123699.P8338648006763989367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A123699.P8338648006763989367

/-! ## A123699.P4542601715618169411

`A126688(a(3*floor(acot(n)))+n)` with `a(0)=1`
-/

namespace A123699.P4542601715618169411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126688 (a (3 * ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat + (n : ℤ)).toNat

end

end A123699.P4542601715618169411

/-! ## A123699.P12613608374345993972

`A126688(a(floor(acot(n)^3))+n)` with `a(0)=1`
-/

namespace A123699.P12613608374345993972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126688 (a ⌊SequenceMachineLib.acot (n : ℝ) ^ 3⌋.toNat + (n : ℤ)).toNat

end

end A123699.P12613608374345993972

/-! ## A123699.P17303510191379565240

`A126688(n+1)-A000007(n)`
-/

namespace A123699.P17303510191379565240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - A000007 n

end

end A123699.P17303510191379565240

/-! ## A123699.P8853508666569423763

`A126688(n+1)/A054977(n)`
-/

namespace A123699.P8853508666569423763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A123699.P8853508666569423763

/-! ## A123699.P3721162714525821902

`gcd(A056835(n), A126688(n+1))`
-/

namespace A123699.P3721162714525821902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056835 n) (A126688 (n + 1))

end

end A123699.P3721162714525821902

/-! ## A123699.P13750106116746537496

`A126688(n+1)/A000038(n)!`
-/

namespace A123699.P13750106116746537496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A123699.P13750106116746537496

/-! ## A123699.P16761068762000749303

`A002260(A126688(n+1)+∑[n])`
-/

namespace A123699.P16761068762000749303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A126688 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A123699.P16761068762000749303

/-! ## A123699.P3718486361759891784

`A126688(n+1)-A004011(n)%2`
-/

namespace A123699.P3718486361759891784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - Int.tmod (A004011 n) 2

end

end A123699.P3718486361759891784

/-! ## A123699.P5725083237058052460

`A126688(n+1)-val(A000040(n+1), 2)`
-/

namespace A123699.P5725083237058052460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A123699.P5725083237058052460

/-! ## A123699.P9644556471893196790

`A126688(n+1)-and(1, A000010(n+2))`
-/

namespace A123699.P9644556471893196790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - Int.land 1 (A000010 (n + 2))

end

end A123699.P9644556471893196790

/-! ## A123699.P1474360250109680583

`A126688(n+1)-A000045(C(2, n+2))`
-/

namespace A123699.P1474360250109680583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - A000045 (Nat.choose 2 (n + 2))

end

end A123699.P1474360250109680583

/-! ## A123699.P14531951996957756785

`A126688(n+1)-A008683(A008574(n))`
-/

namespace A123699.P14531951996957756785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) - A008683 (A008574 n).toNat

end

end A123699.P14531951996957756785

/-! ## A123699.P3063193465015659538

`A126688(n+1)^A001221(A001316(n))`
-/

namespace A123699.P3063193465015659538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A123699.P3063193465015659538

/-! ## A123699.P14752124610823874582

`A126688(n+1)+A008683(2*A008574(n))`
-/

namespace A123699.P14752124610823874582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A123699.P14752124610823874582

/-! ## A123699.P9212813710488871681

`A126688(n+1)^A001221(A000015(n+1))`
-/

namespace A123699.P9212813710488871681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A123699.P9212813710488871681

/-! ## A123699.P17936444716176024724

`A126688(n+1)^A001221(A000961(n+1))`
-/

namespace A123699.P17936444716176024724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A123699.P17936444716176024724

/-! ## A123699.P7780235287848469630

`A126688(n+1)^A008683(2*A000040(n+1))`
-/

namespace A123699.P7780235287848469630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A123699.P7780235287848469630

/-! ## A123699.P16330025206007144188

`A126688(n+1)^A001222(A000032(C(2, n+2)))`
-/

namespace A123699.P16330025206007144188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126688 (n + 1) : ℚ) ^ (A001222 (A000032 (Nat.choose 2 (n + 2))).toNat : ℤ)

end

end A123699.P16330025206007144188

