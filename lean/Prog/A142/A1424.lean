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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A142400: Primes congruent to 7 mod 48.

The programs for A142400, the canonical program `A142400.P17490170735481666965` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142400 has offset 1).

The definition of A142400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142400.P17490170735481666965

`∩[A107006(n+1), A141194(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A142400

/-- `∩[A107006(n+1), A141194(n+1)]` -/
def P17490170735481666965.Spec : Prop :=
  ∀ n, (P17490170735481666965.a n : ℤ) = A142400 (n + 1)

theorem P17490170735481666965.correct : P17490170735481666965.Spec := by
  intro n
  simp only [A142400, Nat.add_sub_cancel]

end A142400

/-! ## A142400.P532359145290236398

`p?[48*n+7]`
-/

namespace A142400.P532359145290236398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142400.P532359145290236398

namespace A142400

/-- `p?[48*n+7]` -/
def P532359145290236398.Spec : Prop :=
  ∀ n, (P532359145290236398.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P2506300700616413206

`∩[A033199(n+1), A141194(n+1)]`
-/

namespace A142400.P2506300700616413206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P2506300700616413206

namespace A142400

/-- `∩[A033199(n+1), A141194(n+1)]` -/
def P2506300700616413206.Spec : Prop :=
  ∀ n, (P2506300700616413206.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P592114941835290236

`or(1, p?[7*A016993(n)-n])`
-/

namespace A142400.P592114941835290236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A016993 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142400.P592114941835290236

namespace A142400

/-- `or(1, p?[7*A016993(n)-n])` -/
def P592114941835290236.Spec : Prop :=
  ∀ n, P592114941835290236.a n = A142400 (n + 1)

end A142400

/-! ## A142400.P3804912866283105339

`∩[A033199(n+1), A228227(n+1)]`
-/

namespace A142400.P3804912866283105339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P3804912866283105339

namespace A142400

/-- `∩[A033199(n+1), A228227(n+1)]` -/
def P3804912866283105339.Spec : Prop :=
  ∀ n, (P3804912866283105339.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P8503459545168315851

`∩[A107006(n+1), A228227(n+1)]`
-/

namespace A142400.P8503459545168315851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P8503459545168315851

namespace A142400

/-- `∩[A107006(n+1), A228227(n+1)]` -/
def P8503459545168315851.Spec : Prop :=
  ∀ n, (P8503459545168315851.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P15518878147953908298

`∩[A141194(n+1), A290402(n+1)]`
-/

namespace A142400.P15518878147953908298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P15518878147953908298

namespace A142400

/-- `∩[A141194(n+1), A290402(n+1)]` -/
def P15518878147953908298.Spec : Prop :=
  ∀ n, (P15518878147953908298.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P4767859993506783066

`∩[A228227(n+1), A290402(n+1)]`
-/

namespace A142400.P4767859993506783066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P4767859993506783066

namespace A142400

/-- `∩[A228227(n+1), A290402(n+1)]` -/
def P4767859993506783066.Spec : Prop :=
  ∀ n, (P4767859993506783066.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P10812861934461474187

`∩[A068229(n+1), A141194(n+1)]`
-/

namespace A142400.P10812861934461474187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P10812861934461474187

namespace A142400

/-- `∩[A068229(n+1), A141194(n+1)]` -/
def P10812861934461474187.Spec : Prop :=
  ∀ n, (P10812861934461474187.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P1736099071815579077

`∩[A141194(n+1), A385223(n+1)]`
-/

namespace A142400.P1736099071815579077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P1736099071815579077

namespace A142400

/-- `∩[A141194(n+1), A385223(n+1)]` -/
def P1736099071815579077.Spec : Prop :=
  ∀ n, (P1736099071815579077.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P6272944142993924701

`∩[A141194(n+1), A332514(n+1)]`
-/

namespace A142400.P6272944142993924701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P6272944142993924701

namespace A142400

/-- `∩[A141194(n+1), A332514(n+1)]` -/
def P6272944142993924701.Spec : Prop :=
  ∀ n, (P6272944142993924701.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P4726082471231995209

`∩[A141194(n+1), A135659(n)]`
-/

namespace A142400.P4726082471231995209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P4726082471231995209

namespace A142400

/-- `∩[A141194(n+1), A135659(n)]` -/
def P4726082471231995209.Spec : Prop :=
  ∀ n, (P4726082471231995209.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P17960517845129803031

`∩[A228227(n+1), A135659(n)]`
-/

namespace A142400.P17960517845129803031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P17960517845129803031

namespace A142400

/-- `∩[A228227(n+1), A135659(n)]` -/
def P17960517845129803031.Spec : Prop :=
  ∀ n, (P17960517845129803031.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P7506385442279300771

`∩[A002476(n+1), A141194(n+1)]`
-/

namespace A142400.P7506385442279300771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P7506385442279300771

namespace A142400

/-- `∩[A002476(n+1), A141194(n+1)]` -/
def P7506385442279300771.Spec : Prop :=
  ∀ n, (P7506385442279300771.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P16180786852381139866

`∩[A007645(n+1), A141194(n+1)]`
-/

namespace A142400.P16180786852381139866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P16180786852381139866

namespace A142400

/-- `∩[A007645(n+1), A141194(n+1)]` -/
def P16180786852381139866.Spec : Prop :=
  ∀ n, (P16180786852381139866.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P12494378312002849647

`∩[A045331(n+1), A141194(n+1)]`
-/

namespace A142400.P12494378312002849647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P12494378312002849647

namespace A142400

/-- `∩[A045331(n+1), A141194(n+1)]` -/
def P12494378312002849647.Spec : Prop :=
  ∀ n, (P12494378312002849647.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P16348187703972808424

`∩[A045375(n+1), A141194(n+1)]`
-/

namespace A142400.P16348187703972808424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P16348187703972808424

namespace A142400

/-- `∩[A045375(n+1), A141194(n+1)]` -/
def P16348187703972808424.Spec : Prop :=
  ∀ n, (P16348187703972808424.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P7608814226239367945

`∩[A123365(n+1), A141194(n+1)]`
-/

namespace A142400.P7608814226239367945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P7608814226239367945

namespace A142400

/-- `∩[A123365(n+1), A141194(n+1)]` -/
def P7608814226239367945.Spec : Prop :=
  ∀ n, (P7608814226239367945.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P9966306520481333225

`∩[A214588(n+1), A135659(n)]`
-/

namespace A142400.P9966306520481333225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P9966306520481333225

namespace A142400

/-- `∩[A214588(n+1), A135659(n)]` -/
def P9966306520481333225.Spec : Prop :=
  ∀ n, (P9966306520481333225.a n : ℤ) = A142400 (n + 1)

end A142400

/-! ## A142400.P534034707867619759

`∩[A141194(n+1), A157437(n+1)]`
-/

namespace A142400.P534034707867619759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P534034707867619759

namespace A142400

/-- `∩[A141194(n+1), A157437(n+1)]` -/
def P534034707867619759.Spec : Prop :=
  ∀ n, (P534034707867619759.a n : ℤ) = A142400 (n + 1)

end A142400

/-!
# A142401: Primes congruent to 11 mod 48.

The programs for A142401, the canonical program `A142401.P13989162071299428488` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142401 has offset 1).

The definition of A142401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142401.P5409847183776692846

`∩[A141195(n+1), A168539(n+1)]`
-/

namespace A142401.P5409847183776692846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P5409847183776692846

namespace A142401

/-- `∩[A141195(n+1), A168539(n+1)]` -/
def P5409847183776692846.Spec : Prop :=
  ∀ n, (P5409847183776692846.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P10329755415221249291

`∩[A107007(n+1), A141195(n+1)]`
-/

namespace A142401.P10329755415221249291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P10329755415221249291

namespace A142401

/-- `∩[A107007(n+1), A141195(n+1)]` -/
def P10329755415221249291.Spec : Prop :=
  ∀ n, (P10329755415221249291.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P13989162071299428488

`p?[48*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142401

/-- `p?[48*n+11]` -/
def P13989162071299428488.Spec : Prop :=
  ∀ n, (P13989162071299428488.a n : ℤ) = A142401 (n + 1)

theorem P13989162071299428488.correct : P13989162071299428488.Spec := by
  intro n
  simp only [A142401, Nat.add_sub_cancel]

end A142401

/-! ## A142401.P7353147433972724593

`∩[A141195(n+1), A168367(n+1)]`
-/

namespace A142401.P7353147433972724593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P7353147433972724593

namespace A142401

/-- `∩[A141195(n+1), A168367(n+1)]` -/
def P7353147433972724593.Spec : Prop :=
  ∀ n, (P7353147433972724593.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P14531719513544933548

`∩[A107007(n+1), A228227(n+1)]`
-/

namespace A142401.P14531719513544933548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P14531719513544933548

namespace A142401

/-- `∩[A107007(n+1), A228227(n+1)]` -/
def P14531719513544933548.Spec : Prop :=
  ∀ n, (P14531719513544933548.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P1706949125838998528

`∩[A168539(n+1), A228227(n+1)]`
-/

namespace A142401.P1706949125838998528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P1706949125838998528

namespace A142401

/-- `∩[A168539(n+1), A228227(n+1)]` -/
def P1706949125838998528.Spec : Prop :=
  ∀ n, (P1706949125838998528.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P11197409716626121639

`∩[A106949(n+1), A141195(n+1)]`
-/

namespace A142401.P11197409716626121639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P11197409716626121639

namespace A142401

/-- `∩[A106949(n+1), A141195(n+1)]` -/
def P11197409716626121639.Spec : Prop :=
  ∀ n, (P11197409716626121639.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P17989077675957894328

`∩[A106949(n+1), A228227(n+1)]`
-/

namespace A142401.P17989077675957894328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P17989077675957894328

namespace A142401

/-- `∩[A106949(n+1), A228227(n+1)]` -/
def P17989077675957894328.Spec : Prop :=
  ∀ n, (P17989077675957894328.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P10136007769318105825

`∩[A084865(n+1), A141195(n+1)]`
-/

namespace A142401.P10136007769318105825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P10136007769318105825

namespace A142401

/-- `∩[A084865(n+1), A141195(n+1)]` -/
def P10136007769318105825.Spec : Prop :=
  ∀ n, (P10136007769318105825.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P3311441135433639873

`∩[A084865(n+1), A228227(n+1)]`
-/

namespace A142401.P3311441135433639873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P3311441135433639873

namespace A142401

/-- `∩[A084865(n+1), A228227(n+1)]` -/
def P3311441135433639873.Spec : Prop :=
  ∀ n, (P3311441135433639873.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P5745792398915411722

`∩[A068231(n+1), A141195(n+1)]`
-/

namespace A142401.P5745792398915411722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P5745792398915411722

namespace A142401

/-- `∩[A068231(n+1), A141195(n+1)]` -/
def P5745792398915411722.Spec : Prop :=
  ∀ n, (P5745792398915411722.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P4798377439635028909

`∩[A141187(n+1), A141195(n+1)]`
-/

namespace A142401.P4798377439635028909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P4798377439635028909

namespace A142401

/-- `∩[A141187(n+1), A141195(n+1)]` -/
def P4798377439635028909.Spec : Prop :=
  ∀ n, (P4798377439635028909.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P14906950953501325358

`∩[A141123(n+1), A141195(n+1)]`
-/

namespace A142401.P14906950953501325358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P14906950953501325358

namespace A142401

/-- `∩[A141123(n+1), A141195(n+1)]` -/
def P14906950953501325358.Spec : Prop :=
  ∀ n, (P14906950953501325358.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P4686873739801214974

`∩[A141195(n+1), A385220(n+1)]`
-/

namespace A142401.P4686873739801214974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P4686873739801214974

namespace A142401

/-- `∩[A141195(n+1), A385220(n+1)]` -/
def P4686873739801214974.Spec : Prop :=
  ∀ n, (P4686873739801214974.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P5724604323964813270

`∩[A141195(n+1), A363215(n+1)]`
-/

namespace A142401.P5724604323964813270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P5724604323964813270

namespace A142401

/-- `∩[A141195(n+1), A363215(n+1)]` -/
def P5724604323964813270.Spec : Prop :=
  ∀ n, (P5724604323964813270.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P6367398815067061152

`∩[A141195(n+1), A332516(n+1)]`
-/

namespace A142401.P6367398815067061152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P6367398815067061152

namespace A142401

/-- `∩[A141195(n+1), A332516(n+1)]` -/
def P6367398815067061152.Spec : Prop :=
  ∀ n, (P6367398815067061152.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P9051875985032428621

`∩[A040101(n+1), A141195(n+1)]`
-/

namespace A142401.P9051875985032428621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P9051875985032428621

namespace A142401

/-- `∩[A040101(n+1), A141195(n+1)]` -/
def P9051875985032428621.Spec : Prop :=
  ∀ n, (P9051875985032428621.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P8938578758456889329

`∩[A040124(n+1), A141195(n+1)]`
-/

namespace A142401.P8938578758456889329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P8938578758456889329

namespace A142401

/-- `∩[A040124(n+1), A141195(n+1)]` -/
def P8938578758456889329.Spec : Prop :=
  ∀ n, (P8938578758456889329.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P15813232397504951108

`∩[A040994(n+1), A141195(n+1)]`
-/

namespace A142401.P15813232397504951108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P15813232397504951108

namespace A142401

/-- `∩[A040994(n+1), A141195(n+1)]` -/
def P15813232397504951108.Spec : Prop :=
  ∀ n, (P15813232397504951108.a n : ℤ) = A142401 (n + 1)

end A142401

/-! ## A142401.P1533450119573235951

`∩[A141195(n+1), A348845(n)]`
-/

namespace A142401.P1533450119573235951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142401.P1533450119573235951

namespace A142401

/-- `∩[A141195(n+1), A348845(n)]` -/
def P1533450119573235951.Spec : Prop :=
  ∀ n, (P1533450119573235951.a n : ℤ) = A142401 (n + 1)

end A142401

/-!
# A142402: Primes congruent to 13 mod 48.

The programs for A142402, the canonical program `A142402.P18041103152548127886` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142402 has offset 1).

The definition of A142402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4922 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142402.P11319923614529559384

`∩[A139530(n+1), A141196(n+1)]`
-/

namespace A142402.P11319923614529559384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P11319923614529559384

namespace A142402

/-- `∩[A139530(n+1), A141196(n+1)]` -/
def P11319923614529559384.Spec : Prop :=
  ∀ n, (P11319923614529559384.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P18041103152548127886

`p?[6*8*n-35]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142402

/-- `p?[6*8*n-35]` -/
def P18041103152548127886.Spec : Prop :=
  ∀ n, P18041103152548127886.a n = A142402 (n + 1)

theorem P18041103152548127886.correct : P18041103152548127886.Spec := by
  intro n
  simp only [A142402, Nat.add_sub_cancel]

end A142402

/-! ## A142402.P4659980530252127873

`∩[A068228(n+1), A141196(n+1)]`
-/

namespace A142402.P4659980530252127873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P4659980530252127873

namespace A142402

/-- `∩[A068228(n+1), A141196(n+1)]` -/
def P4659980530252127873.Spec : Prop :=
  ∀ n, (P4659980530252127873.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P9764549657304124105

`∩[A141196(n+1), A351537(n+1)]`
-/

namespace A142402.P9764549657304124105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P9764549657304124105

namespace A142402

/-- `∩[A141196(n+1), A351537(n+1)]` -/
def P9764549657304124105.Spec : Prop :=
  ∀ n, (P9764549657304124105.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P16790330459063915604

`∩[A141196(n+1), A354467(n+1)]`
-/

namespace A142402.P16790330459063915604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P16790330459063915604

namespace A142402

/-- `∩[A141196(n+1), A354467(n+1)]` -/
def P16790330459063915604.Spec : Prop :=
  ∀ n, (P16790330459063915604.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P14538644674071123439

`∩[A038874(n+1), A141196(n+1)]`
-/

namespace A142402.P14538644674071123439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P14538644674071123439

namespace A142402

/-- `∩[A038874(n+1), A141196(n+1)]` -/
def P14538644674071123439.Spec : Prop :=
  ∀ n, (P14538644674071123439.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P8375556515796085272

`∩[A097933(n+1), A141196(n+1)]`
-/

namespace A142402.P8375556515796085272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P8375556515796085272

namespace A142402

/-- `∩[A097933(n+1), A141196(n+1)]` -/
def P8375556515796085272.Spec : Prop :=
  ∀ n, (P8375556515796085272.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P8582947166057325317

`∩[A141196(n+1), A296933(n+1)]`
-/

namespace A142402.P8582947166057325317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P8582947166057325317

namespace A142402

/-- `∩[A141196(n+1), A296933(n+1)]` -/
def P8582947166057325317.Spec : Prop :=
  ∀ n, (P8582947166057325317.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P976313313244066356

`∩[A002476(n+1), A141196(n+1)]`
-/

namespace A142402.P976313313244066356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P976313313244066356

namespace A142402

/-- `∩[A002476(n+1), A141196(n+1)]` -/
def P976313313244066356.Spec : Prop :=
  ∀ n, (P976313313244066356.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P17047376753477586185

`∩[A007645(n+1), A141196(n+1)]`
-/

namespace A142402.P17047376753477586185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P17047376753477586185

namespace A142402

/-- `∩[A007645(n+1), A141196(n+1)]` -/
def P17047376753477586185.Spec : Prop :=
  ∀ n, (P17047376753477586185.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P7247840323476119938

`∩[A045331(n+1), A141196(n+1)]`
-/

namespace A142402.P7247840323476119938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P7247840323476119938

namespace A142402

/-- `∩[A045331(n+1), A141196(n+1)]` -/
def P7247840323476119938.Spec : Prop :=
  ∀ n, (P7247840323476119938.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P10745758583391713190

`∩[A045375(n+1), A141196(n+1)]`
-/

namespace A142402.P10745758583391713190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P10745758583391713190

namespace A142402

/-- `∩[A045375(n+1), A141196(n+1)]` -/
def P10745758583391713190.Spec : Prop :=
  ∀ n, (P10745758583391713190.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P8465146184482493544

`∩[A123365(n+1), A141196(n+1)]`
-/

namespace A142402.P8465146184482493544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P8465146184482493544

namespace A142402

/-- `∩[A123365(n+1), A141196(n+1)]` -/
def P8465146184482493544.Spec : Prop :=
  ∀ n, (P8465146184482493544.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P13055769039227303237

`A002476(eq[12, and(14, A002476(n+1))]+1)`
-/

namespace A142402.P13055769039227303237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142402.P13055769039227303237

namespace A142402

/-- `A002476(eq[12, and(14, A002476(n+1))]+1)` -/
def P13055769039227303237.Spec : Prop :=
  ∀ n, P13055769039227303237.a n = A142402 (n + 1)

end A142402

/-! ## A142402.P2782653957529905458

`∩[A141196(n+1), A279815(n+1)]`
-/

namespace A142402.P2782653957529905458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P2782653957529905458

namespace A142402

/-- `∩[A141196(n+1), A279815(n+1)]` -/
def P2782653957529905458.Spec : Prop :=
  ∀ n, (P2782653957529905458.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P14493336760780844929

`∩[A141196(n+1), A191059(n+1)]`
-/

namespace A142402.P14493336760780844929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P14493336760780844929

namespace A142402

/-- `∩[A141196(n+1), A191059(n+1)]` -/
def P14493336760780844929.Spec : Prop :=
  ∀ n, (P14493336760780844929.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P4907847995464736581

`∩[A141196(n+1), A391369(n+1)]`
-/

namespace A142402.P4907847995464736581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P4907847995464736581

namespace A142402

/-- `∩[A141196(n+1), A391369(n+1)]` -/
def P4907847995464736581.Spec : Prop :=
  ∀ n, (P4907847995464736581.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P11924405740050611104

`∩[A055664(n+1), A141196(n+1)]`
-/

namespace A142402.P11924405740050611104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P11924405740050611104

namespace A142402

/-- `∩[A055664(n+1), A141196(n+1)]` -/
def P11924405740050611104.Spec : Prop :=
  ∀ n, (P11924405740050611104.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P4941886509963951566

`∩[A133290(n+1), A141196(n+1)]`
-/

namespace A142402.P4941886509963951566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P4941886509963951566

namespace A142402

/-- `∩[A133290(n+1), A141196(n+1)]` -/
def P4941886509963951566.Spec : Prop :=
  ∀ n, (P4941886509963951566.a n : ℤ) = A142402 (n + 1)

end A142402

/-! ## A142402.P3991646067204178303

`∩[A038877(n+1), A141196(n+1)]`
-/

namespace A142402.P3991646067204178303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142402.P3991646067204178303

namespace A142402

/-- `∩[A038877(n+1), A141196(n+1)]` -/
def P3991646067204178303.Spec : Prop :=
  ∀ n, (P3991646067204178303.a n : ℤ) = A142402 (n + 1)

end A142402

/-!
# A142403: Primes congruent to 17 mod 48.

The programs for A142403, the canonical program `A142403.P12333573160411279363` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142403 has offset 1).

The definition of A142403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142403.P16522874477605139551

`∩[A094407(n+1), A107181(n+1)]`
-/

namespace A142403.P16522874477605139551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P16522874477605139551

namespace A142403

/-- `∩[A094407(n+1), A107181(n+1)]` -/
def P16522874477605139551.Spec : Prop :=
  ∀ n, (P16522874477605139551.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P12333573160411279363

`p?[48*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142403

/-- `p?[48*n+17]` -/
def P12333573160411279363.Spec : Prop :=
  ∀ n, (P12333573160411279363.a n : ℤ) = A142403 (n + 1)

theorem P12333573160411279363.correct : P12333573160411279363.Spec := by
  intro n
  simp only [A142403, Nat.add_sub_cancel]

end A142403

/-! ## A142403.P15417899786781966157

`∩[A094407(n+1), A290402(n+1)]`
-/

namespace A142403.P15417899786781966157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P15417899786781966157

namespace A142403

/-- `∩[A094407(n+1), A290402(n+1)]` -/
def P15417899786781966157.Spec : Prop :=
  ∀ n, (P15417899786781966157.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P15202466968544942600

`∩[A040117(n+1), A094407(n+1)]`
-/

namespace A142403.P15202466968544942600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P15202466968544942600

namespace A142403

/-- `∩[A040117(n+1), A094407(n+1)]` -/
def P15202466968544942600.Spec : Prop :=
  ∀ n, (P15202466968544942600.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P873922235135684186

`∩[A094407(n+1), A243183(n+1)]`
-/

namespace A142403.P873922235135684186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P873922235135684186

namespace A142403

/-- `∩[A094407(n+1), A243183(n+1)]` -/
def P873922235135684186.Spec : Prop :=
  ∀ n, (P873922235135684186.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P13814728634826356102

`∩[A094407(n+1), A106949(n+1)]`
-/

namespace A142403.P13814728634826356102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P13814728634826356102

namespace A142403

/-- `∩[A094407(n+1), A106949(n+1)]` -/
def P13814728634826356102.Spec : Prop :=
  ∀ n, (P13814728634826356102.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P6566050474441921946

`∩[A094407(n+1), A256397(n+1)]`
-/

namespace A142403.P6566050474441921946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P6566050474441921946

namespace A142403

/-- `∩[A094407(n+1), A256397(n+1)]` -/
def P6566050474441921946.Spec : Prop :=
  ∀ n, (P6566050474441921946.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P10839635981468165346

`record[p?[lcm(18, n+1)-n]]`
-/

namespace A142403.P10839635981468165346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 18 (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142403.P10839635981468165346

namespace A142403

/-- `record[p?[lcm(18, n+1)-n]]` -/
def P10839635981468165346.Spec : Prop :=
  ∀ n, P10839635981468165346.a n = A142403 (n + 1)

end A142403

/-! ## A142403.P16871011091218241315

`∩[A094407(n+1), A350052(n)]`
-/

namespace A142403.P16871011091218241315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P16871011091218241315

namespace A142403

/-- `∩[A094407(n+1), A350052(n)]` -/
def P16871011091218241315.Spec : Prop :=
  ∀ n, (P16871011091218241315.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P88173197738365072

`∩[A350052(2*n), A040117(n+2)]`
-/

namespace A142403.P88173197738365072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P88173197738365072

namespace A142403

/-- `∩[A350052(2*n), A040117(n+2)]` -/
def P88173197738365072.Spec : Prop :=
  ∀ n, (P88173197738365072.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P887543874769491885

`∩[A214588(n+1), A350052(n)]`
-/

namespace A142403.P887543874769491885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P887543874769491885

namespace A142403

/-- `∩[A214588(n+1), A350052(n)]` -/
def P887543874769491885.Spec : Prop :=
  ∀ n, (P887543874769491885.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P8547657322173924716

`∩[A094407(n+1), A191059(n+1)]`
-/

namespace A142403.P8547657322173924716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P8547657322173924716

namespace A142403

/-- `∩[A094407(n+1), A191059(n+1)]` -/
def P8547657322173924716.Spec : Prop :=
  ∀ n, (P8547657322173924716.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P11438366221270075882

`∩[A107181(n+1), A214588(n+1)]`
-/

namespace A142403.P11438366221270075882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P11438366221270075882

namespace A142403

/-- `∩[A107181(n+1), A214588(n+1)]` -/
def P11438366221270075882.Spec : Prop :=
  ∀ n, (P11438366221270075882.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P2674462829557119626

`∩[A214588(n+1), A350051(n)-2]`
-/

namespace A142403.P2674462829557119626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P2674462829557119626

namespace A142403

/-- `∩[A214588(n+1), A350051(n)-2]` -/
def P2674462829557119626.Spec : Prop :=
  ∀ n, (P2674462829557119626.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P367296018659663553

`∩[A003627(n+1), A094407(n+1)]`
-/

namespace A142403.P367296018659663553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P367296018659663553

namespace A142403

/-- `∩[A003627(n+1), A094407(n+1)]` -/
def P367296018659663553.Spec : Prop :=
  ∀ n, (P367296018659663553.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P2478823619031543079

`∩[A007528(n+1), A094407(n+1)]`
-/

namespace A142403.P2478823619031543079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P2478823619031543079

namespace A142403

/-- `∩[A007528(n+1), A094407(n+1)]` -/
def P2478823619031543079.Spec : Prop :=
  ∀ n, (P2478823619031543079.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P4931173811256874121

`∩[A045309(n+1), A094407(n+1)]`
-/

namespace A142403.P4931173811256874121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P4931173811256874121

namespace A142403

/-- `∩[A045309(n+1), A094407(n+1)]` -/
def P4931173811256874121.Spec : Prop :=
  ∀ n, (P4931173811256874121.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P5393237578349486179

`∩[A045410(n+1), A094407(n+1)]`
-/

namespace A142403.P5393237578349486179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P5393237578349486179

namespace A142403

/-- `∩[A045410(n+1), A094407(n+1)]` -/
def P5393237578349486179.Spec : Prop :=
  ∀ n, (P5393237578349486179.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P14174732027993603660

`∩[A056955(n+1), A094407(n+1)]`
-/

namespace A142403.P14174732027993603660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P14174732027993603660

namespace A142403

/-- `∩[A056955(n+1), A094407(n+1)]` -/
def P14174732027993603660.Spec : Prop :=
  ∀ n, (P14174732027993603660.a n : ℤ) = A142403 (n + 1)

end A142403

/-! ## A142403.P7231244700669756888

`∩[A003630(n+1), A094407(n+1)]`
-/

namespace A142403.P7231244700669756888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142403.P7231244700669756888

namespace A142403

/-- `∩[A003630(n+1), A094407(n+1)]` -/
def P7231244700669756888.Spec : Prop :=
  ∀ n, (P7231244700669756888.a n : ℤ) = A142403 (n + 1)

end A142403

/-!
# A142404: Primes congruent to 19 mod 48.

The programs for A142404, the canonical program `A142404.P3151570573728460328` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142404 has offset 1).

The definition of A142404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142404.P3151570573728460328

`p?[48*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142404

/-- `p?[48*n+19]` -/
def P3151570573728460328.Spec : Prop :=
  ∀ n, (P3151570573728460328.a n : ℤ) = A142404 (n + 1)

theorem P3151570573728460328.correct : P3151570573728460328.Spec := by
  intro n
  simp only [A142404, Nat.add_sub_cancel]

end A142404

/-! ## A142404.P9733666098367851694

`∩[A091968(n+1), A106950(n+1)]`
-/

namespace A142404.P9733666098367851694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P9733666098367851694

namespace A142404

/-- `∩[A091968(n+1), A106950(n+1)]` -/
def P9733666098367851694.Spec : Prop :=
  ∀ n, (P9733666098367851694.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P4130075028939356610

`∩[A068229(n+1), A091968(n+1)]`
-/

namespace A142404.P4130075028939356610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P4130075028939356610

namespace A142404

/-- `∩[A068229(n+1), A091968(n+1)]` -/
def P4130075028939356610.Spec : Prop :=
  ∀ n, (P4130075028939356610.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P10143721965429048904

`∩[A091968(n+1), A385223(n+1)]`
-/

namespace A142404.P10143721965429048904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P10143721965429048904

namespace A142404

/-- `∩[A091968(n+1), A385223(n+1)]` -/
def P10143721965429048904.Spec : Prop :=
  ∀ n, (P10143721965429048904.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P2869510082782001731

`∩[A091968(n+1), A332514(n+1)]`
-/

namespace A142404.P2869510082782001731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P2869510082782001731

namespace A142404

/-- `∩[A091968(n+1), A332514(n+1)]` -/
def P2869510082782001731.Spec : Prop :=
  ∀ n, (P2869510082782001731.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P11027816885831645821

`∩[A091968(n+1), A350051(n)]`
-/

namespace A142404.P11027816885831645821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P11027816885831645821

namespace A142404

/-- `∩[A091968(n+1), A350051(n)]` -/
def P11027816885831645821.Spec : Prop :=
  ∀ n, (P11027816885831645821.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P9475342206699960473

`∩[A091968(n+1), A097934(n+1)]`
-/

namespace A142404.P9475342206699960473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P9475342206699960473

namespace A142404

/-- `∩[A091968(n+1), A097934(n+1)]` -/
def P9475342206699960473.Spec : Prop :=
  ∀ n, (P9475342206699960473.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P1998363091568375478

`∩[A002476(n+1), A091968(n+1)]`
-/

namespace A142404.P1998363091568375478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P1998363091568375478

namespace A142404

/-- `∩[A002476(n+1), A091968(n+1)]` -/
def P1998363091568375478.Spec : Prop :=
  ∀ n, (P1998363091568375478.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P12766018344382927990

`∩[A045375(n+1), A091968(n+1)]`
-/

namespace A142404.P12766018344382927990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P12766018344382927990

namespace A142404

/-- `∩[A045375(n+1), A091968(n+1)]` -/
def P12766018344382927990.Spec : Prop :=
  ∀ n, (P12766018344382927990.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P5674209210868468345

`∩[A091968(n+1), A123365(n+1)]`
-/

namespace A142404.P5674209210868468345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P5674209210868468345

namespace A142404

/-- `∩[A091968(n+1), A123365(n+1)]` -/
def P5674209210868468345.Spec : Prop :=
  ∀ n, (P5674209210868468345.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P15776141821142645790

`A002476(eq[2, and(14, A002476(n+1))]+1)`
-/

namespace A142404.P15776141821142645790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142404.P15776141821142645790

namespace A142404

/-- `A002476(eq[2, and(14, A002476(n+1))]+1)` -/
def P15776141821142645790.Spec : Prop :=
  ∀ n, P15776141821142645790.a n = A142404 (n + 1)

end A142404

/-! ## A142404.P6178077570766692973

`∩[A214588(n+1), A350051(n)]`
-/

namespace A142404.P6178077570766692973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P6178077570766692973

namespace A142404

/-- `∩[A214588(n+1), A350051(n)]` -/
def P6178077570766692973.Spec : Prop :=
  ∀ n, (P6178077570766692973.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P3178664215211492430

`∩[A214588(n+1), A350052(n)+2]`
-/

namespace A142404.P3178664215211492430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P3178664215211492430

namespace A142404

/-- `∩[A214588(n+1), A350052(n)+2]` -/
def P3178664215211492430.Spec : Prop :=
  ∀ n, (P3178664215211492430.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P6092291578797683252

`∩[A091968(n+1), A191059(n+1)]`
-/

namespace A142404.P6092291578797683252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P6092291578797683252

namespace A142404

/-- `∩[A091968(n+1), A191059(n+1)]` -/
def P6092291578797683252.Spec : Prop :=
  ∀ n, (P6092291578797683252.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P16151718401075936826

`∩[A228228(n+1), A350051(n)]`
-/

namespace A142404.P16151718401075936826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P16151718401075936826

namespace A142404

/-- `∩[A228228(n+1), A350051(n)]` -/
def P16151718401075936826.Spec : Prop :=
  ∀ n, (P16151718401075936826.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P5384211907211044733

`∩[A106950(n+1), A228228(n+1)]`
-/

namespace A142404.P5384211907211044733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P5384211907211044733

namespace A142404

/-- `∩[A106950(n+1), A228228(n+1)]` -/
def P5384211907211044733.Spec : Prop :=
  ∀ n, (P5384211907211044733.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P14578717450909657729

`∩[A091968(n+1), A133290(n+1)]`
-/

namespace A142404.P14578717450909657729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P14578717450909657729

namespace A142404

/-- `∩[A091968(n+1), A133290(n+1)]` -/
def P14578717450909657729.Spec : Prop :=
  ∀ n, (P14578717450909657729.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P7897953811566361693

`∩[A003630(n+1), A091968(n+1)]`
-/

namespace A142404.P7897953811566361693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P7897953811566361693

namespace A142404

/-- `∩[A003630(n+1), A091968(n+1)]` -/
def P7897953811566361693.Spec : Prop :=
  ∀ n, (P7897953811566361693.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P3629183605338780542

`∩[A038875(n+1), A091968(n+1)]`
-/

namespace A142404.P3629183605338780542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P3629183605338780542

namespace A142404

/-- `∩[A038875(n+1), A091968(n+1)]` -/
def P3629183605338780542.Spec : Prop :=
  ∀ n, (P3629183605338780542.a n : ℤ) = A142404 (n + 1)

end A142404

/-! ## A142404.P16050846050120977857

`∩[A091968(n+1), A137827(n+1)]`
-/

namespace A142404.P16050846050120977857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142404.P16050846050120977857

namespace A142404

/-- `∩[A091968(n+1), A137827(n+1)]` -/
def P16050846050120977857.Spec : Prop :=
  ∀ n, (P16050846050120977857.a n : ℤ) = A142404 (n + 1)

end A142404

/-!
# A142405: Primes congruent to 23 mod 48.

The programs for A142405, the canonical program `A142405.P7484043141253208572` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142405 has offset 1).

The definition of A142405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142405.P7484043141253208572

`∩[A134517(n+1), A141194(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A142405

/-- `∩[A134517(n+1), A141194(n+1)]` -/
def P7484043141253208572.Spec : Prop :=
  ∀ n, (P7484043141253208572.a n : ℤ) = A142405 (n + 1)

theorem P7484043141253208572.correct : P7484043141253208572.Spec := by
  intro n
  simp only [A142405, Nat.add_sub_cancel]

end A142405

/-! ## A142405.P569680560195889951

`p?[xor(15, 24*n)]`
-/

namespace A142405.P569680560195889951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 15 (24 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142405.P569680560195889951

namespace A142405

/-- `p?[xor(15, 24*n)]` -/
def P569680560195889951.Spec : Prop :=
  ∀ n, (P569680560195889951.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P17042088515725469150

`p?[6*8*n+23]`
-/

namespace A142405.P17042088515725469150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142405.P17042088515725469150

namespace A142405

/-- `p?[6*8*n+23]` -/
def P17042088515725469150.Spec : Prop :=
  ∀ n, (P17042088515725469150.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P4558811980842808754

`∩[A130063(n+1), A141194(n+1)]`
-/

namespace A142405.P4558811980842808754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P4558811980842808754

namespace A142405

/-- `∩[A130063(n+1), A141194(n+1)]` -/
def P4558811980842808754.Spec : Prop :=
  ∀ n, (P4558811980842808754.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P7455793790864662043

`∩[A130063(n+1), A228227(n+1)]`
-/

namespace A142405.P7455793790864662043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7455793790864662043

namespace A142405

/-- `∩[A130063(n+1), A228227(n+1)]` -/
def P7455793790864662043.Spec : Prop :=
  ∀ n, (P7455793790864662043.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P7058634057992714276

`∩[A134517(n+1), A228227(n+1)]`
-/

namespace A142405.P7058634057992714276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7058634057992714276

namespace A142405

/-- `∩[A134517(n+1), A228227(n+1)]` -/
def P7058634057992714276.Spec : Prop :=
  ∀ n, (P7058634057992714276.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P15489850514905220138

`∩[A141194(n+1), A256397(n+1)]`
-/

namespace A142405.P15489850514905220138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P15489850514905220138

namespace A142405

/-- `∩[A141194(n+1), A256397(n+1)]` -/
def P15489850514905220138.Spec : Prop :=
  ∀ n, (P15489850514905220138.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P10928145021390120796

`∩[A228227(n+1), A256397(n+1)]`
-/

namespace A142405.P10928145021390120796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P10928145021390120796

namespace A142405

/-- `∩[A228227(n+1), A256397(n+1)]` -/
def P10928145021390120796.Spec : Prop :=
  ∀ n, (P10928145021390120796.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P11370319951060690537

`∩[A068231(n+1), A141194(n+1)]`
-/

namespace A142405.P11370319951060690537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P11370319951060690537

namespace A142405

/-- `∩[A068231(n+1), A141194(n+1)]` -/
def P11370319951060690537.Spec : Prop :=
  ∀ n, (P11370319951060690537.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P7383728710413695109

`∩[A141171(n+1), A141194(n+1)]`
-/

namespace A142405.P7383728710413695109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P7383728710413695109

namespace A142405

/-- `∩[A141171(n+1), A141194(n+1)]` -/
def P7383728710413695109.Spec : Prop :=
  ∀ n, (P7383728710413695109.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P12108642655543766642

`∩[A141171(n+1), A228227(n+1)]`
-/

namespace A142405.P12108642655543766642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P12108642655543766642

namespace A142405

/-- `∩[A141171(n+1), A228227(n+1)]` -/
def P12108642655543766642.Spec : Prop :=
  ∀ n, (P12108642655543766642.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P8036255086554297847

`∩[A141123(n+1), A141194(n+1)]`
-/

namespace A142405.P8036255086554297847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P8036255086554297847

namespace A142405

/-- `∩[A141123(n+1), A141194(n+1)]` -/
def P8036255086554297847.Spec : Prop :=
  ∀ n, (P8036255086554297847.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P10559679297786536619

`∩[A141187(n+1), A141194(n+1)]`
-/

namespace A142405.P10559679297786536619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P10559679297786536619

namespace A142405

/-- `∩[A141187(n+1), A141194(n+1)]` -/
def P10559679297786536619.Spec : Prop :=
  ∀ n, (P10559679297786536619.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P13483560537196916724

`∩[A141194(n+1), A363215(n+1)]`
-/

namespace A142405.P13483560537196916724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P13483560537196916724

namespace A142405

/-- `∩[A141194(n+1), A363215(n+1)]` -/
def P13483560537196916724.Spec : Prop :=
  ∀ n, (P13483560537196916724.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P13608695754015216190

`∩[A141194(n+1), A385220(n+1)]`
-/

namespace A142405.P13608695754015216190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P13608695754015216190

namespace A142405

/-- `∩[A141194(n+1), A385220(n+1)]` -/
def P13608695754015216190.Spec : Prop :=
  ∀ n, (P13608695754015216190.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P4237063903796835445

`∩[A040107(n+1), A141194(n+1)]`
-/

namespace A142405.P4237063903796835445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P4237063903796835445

namespace A142405

/-- `∩[A040107(n+1), A141194(n+1)]` -/
def P4237063903796835445.Spec : Prop :=
  ∀ n, (P4237063903796835445.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P12610043428612498488

`∩[A141194(n+1), A332516(n+1)]`
-/

namespace A142405.P12610043428612498488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P12610043428612498488

namespace A142405

/-- `∩[A141194(n+1), A332516(n+1)]` -/
def P12610043428612498488.Spec : Prop :=
  ∀ n, (P12610043428612498488.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P15848786056121927798

`∩[A040101(n+1), A141194(n+1)]`
-/

namespace A142405.P15848786056121927798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P15848786056121927798

namespace A142405

/-- `∩[A040101(n+1), A141194(n+1)]` -/
def P15848786056121927798.Spec : Prop :=
  ∀ n, (P15848786056121927798.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P9709497135007705626

`∩[A040124(n+1), A141194(n+1)]`
-/

namespace A142405.P9709497135007705626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P9709497135007705626

namespace A142405

/-- `∩[A040124(n+1), A141194(n+1)]` -/
def P9709497135007705626.Spec : Prop :=
  ∀ n, (P9709497135007705626.a n : ℤ) = A142405 (n + 1)

end A142405

/-! ## A142405.P14937065265314696520

`∩[A040994(n+1), A141194(n+1)]`
-/

namespace A142405.P14937065265314696520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142405.P14937065265314696520

namespace A142405

/-- `∩[A040994(n+1), A141194(n+1)]` -/
def P14937065265314696520.Spec : Prop :=
  ∀ n, (P14937065265314696520.a n : ℤ) = A142405 (n + 1)

end A142405

/-!
# A142406: Primes congruent to 25 mod 48.

The programs for A142406, the canonical program `A142406.P5142854088370419497` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142406 has offset 1).

The definition of A142406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142406.P5142854088370419497

`∩[A105126(n+1), A107008(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142406

/-- `∩[A105126(n+1), A107008(n+1)]` -/
def P5142854088370419497.Spec : Prop :=
  ∀ n, (P5142854088370419497.a n : ℤ) = A142406 (n + 1)

theorem P5142854088370419497.correct : P5142854088370419497.Spec := by
  intro n
  simp only [A142406, Nat.add_sub_cancel]

end A142406

/-! ## A142406.P42567649184550950

`p?[or(9, 24*n)]`
-/

namespace A142406.P42567649184550950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 (24 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142406.P42567649184550950

namespace A142406

/-- `p?[or(9, 24*n)]` -/
def P42567649184550950.Spec : Prop :=
  ∀ n, (P42567649184550950.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P17637374426772028340

`p?[6*8*n+25]`
-/

namespace A142406.P17637374426772028340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142406.P17637374426772028340

namespace A142406

/-- `p?[6*8*n+25]` -/
def P17637374426772028340.Spec : Prop :=
  ∀ n, (P17637374426772028340.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P10203053944240975431

`∩[A033199(n+1), A105126(n+1)]`
-/

namespace A142406.P10203053944240975431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P10203053944240975431

namespace A142406

/-- `∩[A033199(n+1), A105126(n+1)]` -/
def P10203053944240975431.Spec : Prop :=
  ∀ n, (P10203053944240975431.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P6314191987518842754

`∩[A068228(n+1), A105126(n+1)]`
-/

namespace A142406.P6314191987518842754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P6314191987518842754

namespace A142406

/-- `∩[A068228(n+1), A105126(n+1)]` -/
def P6314191987518842754.Spec : Prop :=
  ∀ n, (P6314191987518842754.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P2276022969007009033

`∩[A105126(n+1), A354084(n+1)]`
-/

namespace A142406.P2276022969007009033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P2276022969007009033

namespace A142406

/-- `∩[A105126(n+1), A354084(n+1)]` -/
def P2276022969007009033.Spec : Prop :=
  ∀ n, (P2276022969007009033.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P1386466757244027622

`∩[A105126(n+1), A130063(n+1)]`
-/

namespace A142406.P1386466757244027622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P1386466757244027622

namespace A142406

/-- `∩[A105126(n+1), A130063(n+1)]` -/
def P1386466757244027622.Spec : Prop :=
  ∀ n, (P1386466757244027622.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P5288619928878940227

`∩[A105126(n+1), A106950(n+1)]`
-/

namespace A142406.P5288619928878940227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P5288619928878940227

namespace A142406

/-- `∩[A105126(n+1), A106950(n+1)]` -/
def P5288619928878940227.Spec : Prop :=
  ∀ n, (P5288619928878940227.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P10367767235307585866

`∩[A105126(n+1), A141170(n+1)]`
-/

namespace A142406.P10367767235307585866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P10367767235307585866

namespace A142406

/-- `∩[A105126(n+1), A141170(n+1)]` -/
def P10367767235307585866.Spec : Prop :=
  ∀ n, (P10367767235307585866.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P16185333143945552253

`A000027(p?[A053742(n)-2*n])`
-/

namespace A142406.P16185333143945552253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142406.P16185333143945552253

namespace A142406

/-- `A000027(p?[A053742(n)-2*n])` -/
def P16185333143945552253.Spec : Prop :=
  ∀ n, P16185333143945552253.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P11960347218402906931

`or(1, p?[A053742(n)-A005843(n)])`
-/

namespace A142406.P11960347218402906931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142406.P11960347218402906931

namespace A142406

/-- `or(1, p?[A053742(n)-A005843(n)])` -/
def P11960347218402906931.Spec : Prop :=
  ∀ n, P11960347218402906931.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P11746531545509329175

`p?[A053742(n)-A005843(n)]%A001248(n+7)`
-/

namespace A142406.P11746531545509329175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001248 (n + 7))

end

end A142406.P11746531545509329175

namespace A142406

/-- `p?[A053742(n)-A005843(n)]%A001248(n+7)` -/
def P11746531545509329175.Spec : Prop :=
  ∀ n, P11746531545509329175.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P11731846032487941874

`∩[A105126(n+1), A351537(n+1)]`
-/

namespace A142406.P11731846032487941874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P11731846032487941874

namespace A142406

/-- `∩[A105126(n+1), A351537(n+1)]` -/
def P11731846032487941874.Spec : Prop :=
  ∀ n, (P11731846032487941874.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P6750133265079230512

`∩[A105126(n+1), A354467(n+1)]`
-/

namespace A142406.P6750133265079230512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P6750133265079230512

namespace A142406

/-- `∩[A105126(n+1), A354467(n+1)]` -/
def P6750133265079230512.Spec : Prop :=
  ∀ n, (P6750133265079230512.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P2597402997551558001

`∩[A105126(n+1), A103214(n)]`
-/

namespace A142406.P2597402997551558001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P2597402997551558001

namespace A142406

/-- `∩[A105126(n+1), A103214(n)]` -/
def P2597402997551558001.Spec : Prop :=
  ∀ n, (P2597402997551558001.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P1577553075929388100

`record[p?[A103214(A000265(n+1))]]`
-/

namespace A142406.P1577553075929388100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142406.P1577553075929388100

namespace A142406

/-- `record[p?[A103214(A000265(n+1))]]` -/
def P1577553075929388100.Spec : Prop :=
  ∀ n, P1577553075929388100.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P1829640382871614156

`record[p?[A103214(A248511(n+1))]]`
-/

namespace A142406.P1829640382871614156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A248511 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142406.P1829640382871614156

namespace A142406

/-- `record[p?[A103214(A248511(n+1))]]` -/
def P1829640382871614156.Spec : Prop :=
  ∀ n, P1829640382871614156.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P13167283169789720791

`A000027(p?[A103214(n+1+n)])`
-/

namespace A142406.P13167283169789720791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142406.P13167283169789720791

namespace A142406

/-- `A000027(p?[A103214(n+1+n)])` -/
def P13167283169789720791.Spec : Prop :=
  ∀ n, P13167283169789720791.a n = A142406 (n + 1)

end A142406

/-! ## A142406.P11707732888943639360

`∩[A103214(2*n+1), A007519(n+2)]`
-/

namespace A142406.P11707732888943639360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P11707732888943639360

namespace A142406

/-- `∩[A103214(2*n+1), A007519(n+2)]` -/
def P11707732888943639360.Spec : Prop :=
  ∀ n, (P11707732888943639360.a n : ℤ) = A142406 (n + 1)

end A142406

/-! ## A142406.P6585080782956677102

`∩[A103214(2*n+1), A033199(n+2)]`
-/

namespace A142406.P6585080782956677102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P6585080782956677102

namespace A142406

/-- `∩[A103214(2*n+1), A033199(n+2)]` -/
def P6585080782956677102.Spec : Prop :=
  ∀ n, (P6585080782956677102.a n : ℤ) = A142406 (n + 1)

end A142406

/-!
# A142407: Primes congruent to 29 mod 48.

The programs for A142407, the canonical program `A142407.P15500163210538704829` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142407 has offset 1).

The definition of A142407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4984 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142407.P15500163210538704829

`∩[A107003(n+1), A141196(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142407

/-- `∩[A107003(n+1), A141196(n+1)]` -/
def P15500163210538704829.Spec : Prop :=
  ∀ n, (P15500163210538704829.a n : ℤ) = A142407 (n + 1)

theorem P15500163210538704829.correct : P15500163210538704829.Spec := by
  intro n
  simp only [A142407, Nat.add_sub_cancel]

end A142407

/-! ## A142407.P13148776307225555797

`p?[48*n-19]`
-/

namespace A142407.P13148776307225555797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142407.P13148776307225555797

namespace A142407

/-- `p?[48*n-19]` -/
def P13148776307225555797.Spec : Prop :=
  ∀ n, P13148776307225555797.a n = A142407 (n + 1)

end A142407

/-! ## A142407.P1595254111835130064

`∩[A141196(n+1), A354084(n+1)]`
-/

namespace A142407.P1595254111835130064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P1595254111835130064

namespace A142407

/-- `∩[A141196(n+1), A354084(n+1)]` -/
def P1595254111835130064.Spec : Prop :=
  ∀ n, (P1595254111835130064.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P16791009746172237153

`∩[A040117(n+1), A141196(n+1)]`
-/

namespace A142407.P16791009746172237153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P16791009746172237153

namespace A142407

/-- `∩[A040117(n+1), A141196(n+1)]` -/
def P16791009746172237153.Spec : Prop :=
  ∀ n, (P16791009746172237153.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P9115749195650050385

`∩[A084865(n+1), A141196(n+1)]`
-/

namespace A142407.P9115749195650050385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P9115749195650050385

namespace A142407

/-- `∩[A084865(n+1), A141196(n+1)]` -/
def P9115749195650050385.Spec : Prop :=
  ∀ n, (P9115749195650050385.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P12696840584513733562

`∩[A141196(n+1), A243183(n+1)]`
-/

namespace A142407.P12696840584513733562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P12696840584513733562

namespace A142407

/-- `∩[A141196(n+1), A243183(n+1)]` -/
def P12696840584513733562.Spec : Prop :=
  ∀ n, (P12696840584513733562.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P4731508611778513016

`∩[A141171(n+1), A141196(n+1)]`
-/

namespace A142407.P4731508611778513016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P4731508611778513016

namespace A142407

/-- `∩[A141171(n+1), A141196(n+1)]` -/
def P4731508611778513016.Spec : Prop :=
  ∀ n, (P4731508611778513016.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P2480349316309794571

`∩[A038876(n+1), A141196(n+1)]`
-/

namespace A142407.P2480349316309794571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P2480349316309794571

namespace A142407

/-- `∩[A038876(n+1), A141196(n+1)]` -/
def P2480349316309794571.Spec : Prop :=
  ∀ n, (P2480349316309794571.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P10336285702079428104

`∩[A097934(n+1), A141196(n+1)]`
-/

namespace A142407.P10336285702079428104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P10336285702079428104

namespace A142407

/-- `∩[A097934(n+1), A141196(n+1)]` -/
def P10336285702079428104.Spec : Prop :=
  ∀ n, (P10336285702079428104.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P1006270869837321052

`∩[A141196(n+1), A157437(n+1)]`
-/

namespace A142407.P1006270869837321052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P1006270869837321052

namespace A142407

/-- `∩[A141196(n+1), A157437(n+1)]` -/
def P1006270869837321052.Spec : Prop :=
  ∀ n, (P1006270869837321052.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P2274153521530177831

`∩[A141196(n+1), A296924(n+1)]`
-/

namespace A142407.P2274153521530177831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P2274153521530177831

namespace A142407

/-- `∩[A141196(n+1), A296924(n+1)]` -/
def P2274153521530177831.Spec : Prop :=
  ∀ n, (P2274153521530177831.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P17947409848318353151

`∩[A141196(n+1), A391371(n+1)]`
-/

namespace A142407.P17947409848318353151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P17947409848318353151

namespace A142407

/-- `∩[A141196(n+1), A391371(n+1)]` -/
def P17947409848318353151.Spec : Prop :=
  ∀ n, (P17947409848318353151.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P2722695459853533832

`∩[A003627(n+1), A141196(n+1)]`
-/

namespace A142407.P2722695459853533832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P2722695459853533832

namespace A142407

/-- `∩[A003627(n+1), A141196(n+1)]` -/
def P2722695459853533832.Spec : Prop :=
  ∀ n, (P2722695459853533832.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P11959981586946865522

`∩[A003630(n+1), A141196(n+1)]`
-/

namespace A142407.P11959981586946865522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P11959981586946865522

namespace A142407

/-- `∩[A003630(n+1), A141196(n+1)]` -/
def P11959981586946865522.Spec : Prop :=
  ∀ n, (P11959981586946865522.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P82962289884409769

`∩[A007528(n+1), A141196(n+1)]`
-/

namespace A142407.P82962289884409769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P82962289884409769

namespace A142407

/-- `∩[A007528(n+1), A141196(n+1)]` -/
def P82962289884409769.Spec : Prop :=
  ∀ n, (P82962289884409769.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P15253784813835076636

`∩[A038875(n+1), A141196(n+1)]`
-/

namespace A142407.P15253784813835076636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P15253784813835076636

namespace A142407

/-- `∩[A038875(n+1), A141196(n+1)]` -/
def P15253784813835076636.Spec : Prop :=
  ∀ n, (P15253784813835076636.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P15618465177256134446

`∩[A045309(n+1), A141196(n+1)]`
-/

namespace A142407.P15618465177256134446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P15618465177256134446

namespace A142407

/-- `∩[A045309(n+1), A141196(n+1)]` -/
def P15618465177256134446.Spec : Prop :=
  ∀ n, (P15618465177256134446.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P1957348769193968643

`∩[A045410(n+1), A141196(n+1)]`
-/

namespace A142407.P1957348769193968643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P1957348769193968643

namespace A142407

/-- `∩[A045410(n+1), A141196(n+1)]` -/
def P1957348769193968643.Spec : Prop :=
  ∀ n, (P1957348769193968643.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P3161177644472642106

`∩[A056955(n+1), A141196(n+1)]`
-/

namespace A142407.P3161177644472642106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P3161177644472642106

namespace A142407

/-- `∩[A056955(n+1), A141196(n+1)]` -/
def P3161177644472642106.Spec : Prop :=
  ∀ n, (P3161177644472642106.a n : ℤ) = A142407 (n + 1)

end A142407

/-! ## A142407.P17126687680569715470

`∩[A141196(n+1), A391366(n+1)]`
-/

namespace A142407.P17126687680569715470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142407.P17126687680569715470

namespace A142407

/-- `∩[A141196(n+1), A391366(n+1)]` -/
def P17126687680569715470.Spec : Prop :=
  ∀ n, (P17126687680569715470.a n : ℤ) = A142407 (n + 1)

end A142407

/-!
# A142408: Primes congruent to 31 mod 48.

The programs for A142408, the canonical program `A142408.P14875019921775552722` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142408 has offset 1).

The definition of A142408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142408.P14875019921775552722

`∩[A107006(n+1), A127576(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A142408

/-- `∩[A107006(n+1), A127576(n+1)]` -/
def P14875019921775552722.Spec : Prop :=
  ∀ n, (P14875019921775552722.a n : ℤ) = A142408 (n + 1)

theorem P14875019921775552722.correct : P14875019921775552722.Spec := by
  intro n
  simp only [A142408, Nat.add_sub_cancel]

end A142408

/-! ## A142408.P6088817997515783241

`p?[a(n-1)+48]` with `a(0)=31`
-/

namespace A142408.P6088817997515783241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142408.P6088817997515783241

namespace A142408

/-- `p?[a(n-1)+48]` -/
def P6088817997515783241.Spec : Prop :=
  ∀ n, (P6088817997515783241.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P1058633842654223429

`p?[6*(8*n+5)+1]`
-/

namespace A142408.P1058633842654223429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n + 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142408.P1058633842654223429

namespace A142408

/-- `p?[6*(8*n+5)+1]` -/
def P1058633842654223429.Spec : Prop :=
  ∀ n, (P1058633842654223429.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P7175646255726986869

`∩[A033199(n+1), A127576(n+1)]`
-/

namespace A142408.P7175646255726986869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P7175646255726986869

namespace A142408

/-- `∩[A033199(n+1), A127576(n+1)]` -/
def P7175646255726986869.Spec : Prop :=
  ∀ n, (P7175646255726986869.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P3349940715055249919

`∩[A127576(n+1), A290402(n+1)]`
-/

namespace A142408.P3349940715055249919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P3349940715055249919

namespace A142408

/-- `∩[A127576(n+1), A290402(n+1)]` -/
def P3349940715055249919.Spec : Prop :=
  ∀ n, (P3349940715055249919.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P10720956526031764155

`∩[A068229(n+1), A127576(n+1)]`
-/

namespace A142408.P10720956526031764155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P10720956526031764155

namespace A142408

/-- `∩[A068229(n+1), A127576(n+1)]` -/
def P10720956526031764155.Spec : Prop :=
  ∀ n, (P10720956526031764155.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P12918723002044628027

`record[p?[lcm(18, n)-(n+1)]]`
-/

namespace A142408.P12918723002044628027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 18 n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142408.P12918723002044628027

namespace A142408

/-- `record[p?[lcm(18, n)-(n+1)]]` -/
def P12918723002044628027.Spec : Prop :=
  ∀ n, P12918723002044628027.a n = A142408 (n + 1)

end A142408

/-! ## A142408.P7575386314613366746

`∩[A127576(n+1), A385223(n+1)]`
-/

namespace A142408.P7575386314613366746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P7575386314613366746

namespace A142408

/-- `∩[A127576(n+1), A385223(n+1)]` -/
def P7575386314613366746.Spec : Prop :=
  ∀ n, (P7575386314613366746.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P15598564938550086839

`∩[A127576(n+1), A332514(n+1)]`
-/

namespace A142408.P15598564938550086839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P15598564938550086839

namespace A142408

/-- `∩[A127576(n+1), A332514(n+1)]` -/
def P15598564938550086839.Spec : Prop :=
  ∀ n, (P15598564938550086839.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P15204960043805757010

`∩[A127576(n+1), A135659(n)]`
-/

namespace A142408.P15204960043805757010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P15204960043805757010

namespace A142408

/-- `∩[A127576(n+1), A135659(n)]` -/
def P15204960043805757010.Spec : Prop :=
  ∀ n, (P15204960043805757010.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P15231847432777579705

`∩[A002476(n+1), A127576(n+1)]`
-/

namespace A142408.P15231847432777579705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P15231847432777579705

namespace A142408

/-- `∩[A002476(n+1), A127576(n+1)]` -/
def P15231847432777579705.Spec : Prop :=
  ∀ n, (P15231847432777579705.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P2227513483222641232

`∩[A007645(n+1), A127576(n+1)]`
-/

namespace A142408.P2227513483222641232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P2227513483222641232

namespace A142408

/-- `∩[A007645(n+1), A127576(n+1)]` -/
def P2227513483222641232.Spec : Prop :=
  ∀ n, (P2227513483222641232.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P12808200417192562198

`∩[A045331(n+1), A127576(n+1)]`
-/

namespace A142408.P12808200417192562198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P12808200417192562198

namespace A142408

/-- `∩[A045331(n+1), A127576(n+1)]` -/
def P12808200417192562198.Spec : Prop :=
  ∀ n, (P12808200417192562198.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P18045856157232573800

`∩[A045375(n+1), A127576(n+1)]`
-/

namespace A142408.P18045856157232573800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P18045856157232573800

namespace A142408

/-- `∩[A045375(n+1), A127576(n+1)]` -/
def P18045856157232573800.Spec : Prop :=
  ∀ n, (P18045856157232573800.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P2715890127459917425

`∩[A123365(n+1), A127576(n+1)]`
-/

namespace A142408.P2715890127459917425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P2715890127459917425

namespace A142408

/-- `∩[A123365(n+1), A127576(n+1)]` -/
def P2715890127459917425.Spec : Prop :=
  ∀ n, (P2715890127459917425.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P7173329413083399956

`∩[A127576(n+1), A157437(n+1)]`
-/

namespace A142408.P7173329413083399956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P7173329413083399956

namespace A142408

/-- `∩[A127576(n+1), A157437(n+1)]` -/
def P7173329413083399956.Spec : Prop :=
  ∀ n, (P7173329413083399956.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P592421763593962614

`∩[A127576(n+1), A279815(n+1)]`
-/

namespace A142408.P592421763593962614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P592421763593962614

namespace A142408

/-- `∩[A127576(n+1), A279815(n+1)]` -/
def P592421763593962614.Spec : Prop :=
  ∀ n, (P592421763593962614.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P6071807819562418917

`∩[A127576(n+1), A296924(n+1)]`
-/

namespace A142408.P6071807819562418917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P6071807819562418917

namespace A142408

/-- `∩[A127576(n+1), A296924(n+1)]` -/
def P6071807819562418917.Spec : Prop :=
  ∀ n, (P6071807819562418917.a n : ℤ) = A142408 (n + 1)

end A142408

/-! ## A142408.P5041466902375745875

`A002476(eq[14, and(14, A002476(n+1))]+1)`
-/

namespace A142408.P5041466902375745875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142408.P5041466902375745875

namespace A142408

/-- `A002476(eq[14, and(14, A002476(n+1))]+1)` -/
def P5041466902375745875.Spec : Prop :=
  ∀ n, P5041466902375745875.a n = A142408 (n + 1)

end A142408

/-! ## A142408.P12060308536583371427

`∩[A228228(n+1), A135659(n)]`
-/

namespace A142408.P12060308536583371427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P12060308536583371427

namespace A142408

/-- `∩[A228228(n+1), A135659(n)]` -/
def P12060308536583371427.Spec : Prop :=
  ∀ n, (P12060308536583371427.a n : ℤ) = A142408 (n + 1)

end A142408

/-!
# A142409: Primes congruent to 35 mod 48.

The programs for A142409, the canonical program `A142409.P9791940095608550228` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142409 has offset 1).

The definition of A142409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142409.P18013772608759448236

`∩[A091968(n+1), A168539(n+1)]`
-/

namespace A142409.P18013772608759448236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P18013772608759448236

namespace A142409

/-- `∩[A091968(n+1), A168539(n+1)]` -/
def P18013772608759448236.Spec : Prop :=
  ∀ n, (P18013772608759448236.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P9791940095608550228

`p?[6*8*n+35]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142409

/-- `p?[6*8*n+35]` -/
def P9791940095608550228.Spec : Prop :=
  ∀ n, (P9791940095608550228.a n : ℤ) = A142409 (n + 1)

theorem P9791940095608550228.correct : P9791940095608550228.Spec := by
  intro n
  simp only [A142409, Nat.add_sub_cancel]

end A142409

/-! ## A142409.P17742570371878155545

`or(1, p?[48*n-13])`
-/

namespace A142409.P17742570371878155545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142409.P17742570371878155545

namespace A142409

/-- `or(1, p?[48*n-13])` -/
def P17742570371878155545.Spec : Prop :=
  ∀ n, P17742570371878155545.a n = A142409 (n + 1)

end A142409

/-! ## A142409.P3615184226712246147

`2*p?[48*n-13]-p?[48*n-13]`
-/

namespace A142409.P3615184226712246147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142409.P3615184226712246147

namespace A142409

/-- `2*p?[48*n-13]-p?[48*n-13]` -/
def P3615184226712246147.Spec : Prop :=
  ∀ n, P3615184226712246147.a n = A142409 (n + 1)

end A142409

/-! ## A142409.P3786975028552155168

`∩[A091968(n+1), A168367(n+1)]`
-/

namespace A142409.P3786975028552155168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P3786975028552155168

namespace A142409

/-- `∩[A091968(n+1), A168367(n+1)]` -/
def P3786975028552155168.Spec : Prop :=
  ∀ n, (P3786975028552155168.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P16300575822375314575

`∩[A091968(n+1), A106949(n+1)]`
-/

namespace A142409.P16300575822375314575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P16300575822375314575

namespace A142409

/-- `∩[A091968(n+1), A106949(n+1)]` -/
def P16300575822375314575.Spec : Prop :=
  ∀ n, (P16300575822375314575.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P1400205538004782280

`∩[A068231(n+1), A091968(n+1)]`
-/

namespace A142409.P1400205538004782280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P1400205538004782280

namespace A142409

/-- `∩[A068231(n+1), A091968(n+1)]` -/
def P1400205538004782280.Spec : Prop :=
  ∀ n, (P1400205538004782280.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P10696271063922405762

`∩[A091968(n+1), A385220(n+1)]`
-/

namespace A142409.P10696271063922405762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P10696271063922405762

namespace A142409

/-- `∩[A091968(n+1), A385220(n+1)]` -/
def P10696271063922405762.Spec : Prop :=
  ∀ n, (P10696271063922405762.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P9363495633287412806

`∩[A091968(n+1), A363215(n+1)]`
-/

namespace A142409.P9363495633287412806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P9363495633287412806

namespace A142409

/-- `∩[A091968(n+1), A363215(n+1)]` -/
def P9363495633287412806.Spec : Prop :=
  ∀ n, (P9363495633287412806.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P16817069893136715710

`∩[A091968(n+1), A332516(n+1)]`
-/

namespace A142409.P16817069893136715710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P16817069893136715710

namespace A142409

/-- `∩[A091968(n+1), A332516(n+1)]` -/
def P16817069893136715710.Spec : Prop :=
  ∀ n, (P16817069893136715710.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P10217354748160772474

`∩[A091968(n+1), A348845(n)]`
-/

namespace A142409.P10217354748160772474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P10217354748160772474

namespace A142409

/-- `∩[A091968(n+1), A348845(n)]` -/
def P10217354748160772474.Spec : Prop :=
  ∀ n, (P10217354748160772474.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P4243231061236479310

`∩[A091968(n+1), A097933(n+1)]`
-/

namespace A142409.P4243231061236479310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P4243231061236479310

namespace A142409

/-- `∩[A091968(n+1), A097933(n+1)]` -/
def P4243231061236479310.Spec : Prop :=
  ∀ n, (P4243231061236479310.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P5484411004953815076

`∩[A091968(n+1), A157437(n+1)]`
-/

namespace A142409.P5484411004953815076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P5484411004953815076

namespace A142409

/-- `∩[A091968(n+1), A157437(n+1)]` -/
def P5484411004953815076.Spec : Prop :=
  ∀ n, (P5484411004953815076.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P12426019212138015448

`∩[A214588(n+1), A348845(n)]`
-/

namespace A142409.P12426019212138015448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P12426019212138015448

namespace A142409

/-- `∩[A214588(n+1), A348845(n)]` -/
def P12426019212138015448.Spec : Prop :=
  ∀ n, (P12426019212138015448.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P8641171277409353578

`∩[A168539(n+1), A214588(n+1)]`
-/

namespace A142409.P8641171277409353578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P8641171277409353578

namespace A142409

/-- `∩[A168539(n+1), A214588(n+1)]` -/
def P8641171277409353578.Spec : Prop :=
  ∀ n, (P8641171277409353578.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P13008980001081463879

`∩[A003627(n+1), A091968(n+1)]`
-/

namespace A142409.P13008980001081463879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P13008980001081463879

namespace A142409

/-- `∩[A003627(n+1), A091968(n+1)]` -/
def P13008980001081463879.Spec : Prop :=
  ∀ n, (P13008980001081463879.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P16049818072783731835

`∩[A007528(n+1), A091968(n+1)]`
-/

namespace A142409.P16049818072783731835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P16049818072783731835

namespace A142409

/-- `∩[A007528(n+1), A091968(n+1)]` -/
def P16049818072783731835.Spec : Prop :=
  ∀ n, (P16049818072783731835.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P17190670043633187327

`∩[A056955(n+1), A091968(n+1)]`
-/

namespace A142409.P17190670043633187327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P17190670043633187327

namespace A142409

/-- `∩[A056955(n+1), A091968(n+1)]` -/
def P17190670043633187327.Spec : Prop :=
  ∀ n, (P17190670043633187327.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P11666090502285012394

`∩[A228228(n+1), A348845(n)]`
-/

namespace A142409.P11666090502285012394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P11666090502285012394

namespace A142409

/-- `∩[A228228(n+1), A348845(n)]` -/
def P11666090502285012394.Spec : Prop :=
  ∀ n, (P11666090502285012394.a n : ℤ) = A142409 (n + 1)

end A142409

/-! ## A142409.P3997474309244545421

`∩[A106949(n+1), A228228(n+1)]`
-/

namespace A142409.P3997474309244545421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142409.P3997474309244545421

namespace A142409

/-- `∩[A106949(n+1), A228228(n+1)]` -/
def P3997474309244545421.Spec : Prop :=
  ∀ n, (P3997474309244545421.a n : ℤ) = A142409 (n + 1)

end A142409

/-!
# A142410: Primes congruent to 37 mod 48.

The programs for A142410, the canonical program `A142410.P15658897944720024963` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142410 has offset 1).

The definition of A142410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142410.P9238759593495876420

`∩[A127589(n+1), A139530(n+1)]`
-/

namespace A142410.P9238759593495876420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P9238759593495876420

namespace A142410

/-- `∩[A127589(n+1), A139530(n+1)]` -/
def P9238759593495876420.Spec : Prop :=
  ∀ n, (P9238759593495876420.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P15658897944720024963

`p?[6*8*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142410

/-- `p?[6*8*n-11]` -/
def P15658897944720024963.Spec : Prop :=
  ∀ n, P15658897944720024963.a n = A142410 (n + 1)

theorem P15658897944720024963.correct : P15658897944720024963.Spec := by
  intro n
  simp only [A142410, Nat.add_sub_cancel]

end A142410

/-! ## A142410.P14769285017551500897

`∩[A068228(n+1), A127589(n+1)]`
-/

namespace A142410.P14769285017551500897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P14769285017551500897

namespace A142410

/-- `∩[A068228(n+1), A127589(n+1)]` -/
def P14769285017551500897.Spec : Prop :=
  ∀ n, (P14769285017551500897.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P16095489000169798534

`∩[A127589(n+1), A351537(n+1)]`
-/

namespace A142410.P16095489000169798534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P16095489000169798534

namespace A142410

/-- `∩[A127589(n+1), A351537(n+1)]` -/
def P16095489000169798534.Spec : Prop :=
  ∀ n, (P16095489000169798534.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P3941121459464936599

`∩[A127589(n+1), A354467(n+1)]`
-/

namespace A142410.P3941121459464936599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P3941121459464936599

namespace A142410

/-- `∩[A127589(n+1), A354467(n+1)]` -/
def P3941121459464936599.Spec : Prop :=
  ∀ n, (P3941121459464936599.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P9033394354259201323

`∩[A038874(n+1), A127589(n+1)]`
-/

namespace A142410.P9033394354259201323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P9033394354259201323

namespace A142410

/-- `∩[A038874(n+1), A127589(n+1)]` -/
def P9033394354259201323.Spec : Prop :=
  ∀ n, (P9033394354259201323.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P13786250796048645729

`∩[A097933(n+1), A127589(n+1)]`
-/

namespace A142410.P13786250796048645729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P13786250796048645729

namespace A142410

/-- `∩[A097933(n+1), A127589(n+1)]` -/
def P13786250796048645729.Spec : Prop :=
  ∀ n, (P13786250796048645729.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P229619801802809257

`∩[A127589(n+1), A296933(n+1)]`
-/

namespace A142410.P229619801802809257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P229619801802809257

namespace A142410

/-- `∩[A127589(n+1), A296933(n+1)]` -/
def P229619801802809257.Spec : Prop :=
  ∀ n, (P229619801802809257.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P5421376034547188842

`∩[A002476(n+1), A127589(n+1)]`
-/

namespace A142410.P5421376034547188842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P5421376034547188842

namespace A142410

/-- `∩[A002476(n+1), A127589(n+1)]` -/
def P5421376034547188842.Spec : Prop :=
  ∀ n, (P5421376034547188842.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P3607690223988599001

`∩[A007645(n+1), A127589(n+1)]`
-/

namespace A142410.P3607690223988599001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P3607690223988599001

namespace A142410

/-- `∩[A007645(n+1), A127589(n+1)]` -/
def P3607690223988599001.Spec : Prop :=
  ∀ n, (P3607690223988599001.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P9449547621355112066

`∩[A045331(n+1), A127589(n+1)]`
-/

namespace A142410.P9449547621355112066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P9449547621355112066

namespace A142410

/-- `∩[A045331(n+1), A127589(n+1)]` -/
def P9449547621355112066.Spec : Prop :=
  ∀ n, (P9449547621355112066.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P15719183923257932253

`∩[A045375(n+1), A127589(n+1)]`
-/

namespace A142410.P15719183923257932253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P15719183923257932253

namespace A142410

/-- `∩[A045375(n+1), A127589(n+1)]` -/
def P15719183923257932253.Spec : Prop :=
  ∀ n, (P15719183923257932253.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P2447742195508864241

`∩[A123365(n+1), A127589(n+1)]`
-/

namespace A142410.P2447742195508864241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P2447742195508864241

namespace A142410

/-- `∩[A123365(n+1), A127589(n+1)]` -/
def P2447742195508864241.Spec : Prop :=
  ∀ n, (P2447742195508864241.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P2081112376840198409

`A002476(eq[4, and(14, A002476(n+1))]+1)`
-/

namespace A142410.P2081112376840198409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142410.P2081112376840198409

namespace A142410

/-- `A002476(eq[4, and(14, A002476(n+1))]+1)` -/
def P2081112376840198409.Spec : Prop :=
  ∀ n, P2081112376840198409.a n = A142410 (n + 1)

end A142410

/-! ## A142410.P179762941957003146

`A007645(eq[4, and(14, A007645(n+1))]+1)`
-/

namespace A142410.P179762941957003146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A007645 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142410.P179762941957003146

namespace A142410

/-- `A007645(eq[4, and(14, A007645(n+1))]+1)` -/
def P179762941957003146.Spec : Prop :=
  ∀ n, P179762941957003146.a n = A142410 (n + 1)

end A142410

/-! ## A142410.P16259793606395316906

`∩[A127589(n+1), A279815(n+1)]`
-/

namespace A142410.P16259793606395316906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P16259793606395316906

namespace A142410

/-- `∩[A127589(n+1), A279815(n+1)]` -/
def P16259793606395316906.Spec : Prop :=
  ∀ n, (P16259793606395316906.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P6049532241005656649

`∩[A139530(n+1), A214588(n+1)]`
-/

namespace A142410.P6049532241005656649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P6049532241005656649

namespace A142410

/-- `∩[A139530(n+1), A214588(n+1)]` -/
def P6049532241005656649.Spec : Prop :=
  ∀ n, (P6049532241005656649.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P5727678297186818883

`∩[A214588(n+1), A348845(n)+2]`
-/

namespace A142410.P5727678297186818883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P5727678297186818883

namespace A142410

/-- `∩[A214588(n+1), A348845(n)+2]` -/
def P5727678297186818883.Spec : Prop :=
  ∀ n, (P5727678297186818883.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P11417665653406675827

`∩[A127589(n+1), A191059(n+1)]`
-/

namespace A142410.P11417665653406675827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P11417665653406675827

namespace A142410

/-- `∩[A127589(n+1), A191059(n+1)]` -/
def P11417665653406675827.Spec : Prop :=
  ∀ n, (P11417665653406675827.a n : ℤ) = A142410 (n + 1)

end A142410

/-! ## A142410.P14768863030902156856

`∩[A127589(n+1), A391369(n+1)]`
-/

namespace A142410.P14768863030902156856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142410.P14768863030902156856

namespace A142410

/-- `∩[A127589(n+1), A391369(n+1)]` -/
def P14768863030902156856.Spec : Prop :=
  ∀ n, (P14768863030902156856.a n : ℤ) = A142410 (n + 1)

end A142410

/-!
# A142411: Primes congruent to 41 mod 48.

The programs for A142411, the canonical program `A142411.P17941227972138577087` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142411 has offset 1).

The definition of A142411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142411.P4507090823832693646

`∩[A105126(n+1), A107181(n+1)]`
-/

namespace A142411.P4507090823832693646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P4507090823832693646

namespace A142411

/-- `∩[A105126(n+1), A107181(n+1)]` -/
def P4507090823832693646.Spec : Prop :=
  ∀ n, (P4507090823832693646.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P17941227972138577087

`p?[48*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142411

/-- `p?[48*n-7]` -/
def P17941227972138577087.Spec : Prop :=
  ∀ n, P17941227972138577087.a n = A142411 (n + 1)

theorem P17941227972138577087.correct : P17941227972138577087.Spec := by
  intro n
  simp only [A142411, Nat.add_sub_cancel]

end A142411

/-! ## A142411.P402626961643424193

`∩[A040117(n+1), A105126(n+1)]`
-/

namespace A142411.P402626961643424193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P402626961643424193

namespace A142411

/-- `∩[A040117(n+1), A105126(n+1)]` -/
def P402626961643424193.Spec : Prop :=
  ∀ n, (P402626961643424193.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P3324964168358650133

`∩[A105126(n+1), A106949(n+1)]`
-/

namespace A142411.P3324964168358650133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P3324964168358650133

namespace A142411

/-- `∩[A105126(n+1), A106949(n+1)]` -/
def P3324964168358650133.Spec : Prop :=
  ∀ n, (P3324964168358650133.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P6482168394821031955

`∩[A105126(n+1), A243183(n+1)]`
-/

namespace A142411.P6482168394821031955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P6482168394821031955

namespace A142411

/-- `∩[A105126(n+1), A243183(n+1)]` -/
def P6482168394821031955.Spec : Prop :=
  ∀ n, (P6482168394821031955.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P11769804472294664196

`∩[A105126(n+1), A290402(n+1)]`
-/

namespace A142411.P11769804472294664196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P11769804472294664196

namespace A142411

/-- `∩[A105126(n+1), A290402(n+1)]` -/
def P11769804472294664196.Spec : Prop :=
  ∀ n, (P11769804472294664196.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P10573620795256970198

`∩[A105126(n+1), A256397(n+1)]`
-/

namespace A142411.P10573620795256970198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P10573620795256970198

namespace A142411

/-- `∩[A105126(n+1), A256397(n+1)]` -/
def P10573620795256970198.Spec : Prop :=
  ∀ n, (P10573620795256970198.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P4114226361096423211

`∩[A105126(n+1), A350052(n)]`
-/

namespace A142411.P4114226361096423211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P4114226361096423211

namespace A142411

/-- `∩[A105126(n+1), A350052(n)]` -/
def P4114226361096423211.Spec : Prop :=
  ∀ n, (P4114226361096423211.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P261563455717248741

`∩[A350052(2*n+1), A040117(n+2)]`
-/

namespace A142411.P261563455717248741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350052 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P261563455717248741

namespace A142411

/-- `∩[A350052(2*n+1), A040117(n+2)]` -/
def P261563455717248741.Spec : Prop :=
  ∀ n, (P261563455717248741.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P14706261717788408092

`∩[A003627(n+1), A105126(n+1)]`
-/

namespace A142411.P14706261717788408092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P14706261717788408092

namespace A142411

/-- `∩[A003627(n+1), A105126(n+1)]` -/
def P14706261717788408092.Spec : Prop :=
  ∀ n, (P14706261717788408092.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P6763208923112782224

`∩[A007528(n+1), A105126(n+1)]`
-/

namespace A142411.P6763208923112782224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P6763208923112782224

namespace A142411

/-- `∩[A007528(n+1), A105126(n+1)]` -/
def P6763208923112782224.Spec : Prop :=
  ∀ n, (P6763208923112782224.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P6215975228016325418

`∩[A045309(n+1), A105126(n+1)]`
-/

namespace A142411.P6215975228016325418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P6215975228016325418

namespace A142411

/-- `∩[A045309(n+1), A105126(n+1)]` -/
def P6215975228016325418.Spec : Prop :=
  ∀ n, (P6215975228016325418.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P12868850577886365179

`∩[A045410(n+1), A105126(n+1)]`
-/

namespace A142411.P12868850577886365179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P12868850577886365179

namespace A142411

/-- `∩[A045410(n+1), A105126(n+1)]` -/
def P12868850577886365179.Spec : Prop :=
  ∀ n, (P12868850577886365179.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P17243375732259978976

`∩[A056955(n+1), A105126(n+1)]`
-/

namespace A142411.P17243375732259978976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P17243375732259978976

namespace A142411

/-- `∩[A056955(n+1), A105126(n+1)]` -/
def P17243375732259978976.Spec : Prop :=
  ∀ n, (P17243375732259978976.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P5382905744965028750

`∩[A105126(n+1), A191059(n+1)]`
-/

namespace A142411.P5382905744965028750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P5382905744965028750

namespace A142411

/-- `∩[A105126(n+1), A191059(n+1)]` -/
def P5382905744965028750.Spec : Prop :=
  ∀ n, (P5382905744965028750.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P12622615133781704889

`∩[A003630(n+1), A105126(n+1)]`
-/

namespace A142411.P12622615133781704889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P12622615133781704889

namespace A142411

/-- `∩[A003630(n+1), A105126(n+1)]` -/
def P12622615133781704889.Spec : Prop :=
  ∀ n, (P12622615133781704889.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P9906891505183046499

`∩[A038875(n+1), A105126(n+1)]`
-/

namespace A142411.P9906891505183046499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P9906891505183046499

namespace A142411

/-- `∩[A038875(n+1), A105126(n+1)]` -/
def P9906891505183046499.Spec : Prop :=
  ∀ n, (P9906891505183046499.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P11935136639931666558

`∩[A038877(n+1), A105126(n+1)]`
-/

namespace A142411.P11935136639931666558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P11935136639931666558

namespace A142411

/-- `∩[A038877(n+1), A105126(n+1)]` -/
def P11935136639931666558.Spec : Prop :=
  ∀ n, (P11935136639931666558.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P1973590683861656726

`∩[A020693(n+1), A105126(n+1)]`
-/

namespace A142411.P1973590683861656726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P1973590683861656726

namespace A142411

/-- `∩[A020693(n+1), A105126(n+1)]` -/
def P1973590683861656726.Spec : Prop :=
  ∀ n, (P1973590683861656726.a n : ℤ) = A142411 (n + 1)

end A142411

/-! ## A142411.P6176361445607458691

`∩[A105126(n+1), A167135(n+1)]`
-/

namespace A142411.P6176361445607458691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142411.P6176361445607458691

namespace A142411

/-- `∩[A105126(n+1), A167135(n+1)]` -/
def P6176361445607458691.Spec : Prop :=
  ∀ n, (P6176361445607458691.a n : ℤ) = A142411 (n + 1)

end A142411

/-!
# A142412: Primes congruent to 43 mod 48.

The programs for A142412, the canonical program `A142412.P13689373659218253707` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142412 has offset 1).

The definition of A142412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142412.P13689373659218253707

`∩[A141195(n+1), A141373(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142412

/-- `∩[A141195(n+1), A141373(n+1)]` -/
def P13689373659218253707.Spec : Prop :=
  ∀ n, (P13689373659218253707.a n : ℤ) = A142412 (n + 1)

theorem P13689373659218253707.correct : P13689373659218253707.Spec := by
  intro n
  simp only [A142412, Nat.add_sub_cancel]

end A142412

/-! ## A142412.P14468135847509759151

`p?[48*n-5]`
-/

namespace A142412.P14468135847509759151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142412.P14468135847509759151

namespace A142412

/-- `p?[48*n-5]` -/
def P14468135847509759151.Spec : Prop :=
  ∀ n, P14468135847509759151.a n = A142412 (n + 1)

end A142412

/-! ## A142412.P13480074961089460644

`∩[A106950(n+1), A141195(n+1)]`
-/

namespace A142412.P13480074961089460644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P13480074961089460644

namespace A142412

/-- `∩[A106950(n+1), A141195(n+1)]` -/
def P13480074961089460644.Spec : Prop :=
  ∀ n, (P13480074961089460644.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P18251182840082777297

`∩[A141170(n+1), A141195(n+1)]`
-/

namespace A142412.P18251182840082777297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P18251182840082777297

namespace A142412

/-- `∩[A141170(n+1), A141195(n+1)]` -/
def P18251182840082777297.Spec : Prop :=
  ∀ n, (P18251182840082777297.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P4629288308460633018

`∩[A106950(n+1), A228227(n+1)]`
-/

namespace A142412.P4629288308460633018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P4629288308460633018

namespace A142412

/-- `∩[A106950(n+1), A228227(n+1)]` -/
def P4629288308460633018.Spec : Prop :=
  ∀ n, (P4629288308460633018.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P16080235319857117097

`∩[A141170(n+1), A228227(n+1)]`
-/

namespace A142412.P16080235319857117097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P16080235319857117097

namespace A142412

/-- `∩[A141170(n+1), A228227(n+1)]` -/
def P16080235319857117097.Spec : Prop :=
  ∀ n, (P16080235319857117097.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P324937234896281247

`∩[A141373(n+1), A228227(n+1)]`
-/

namespace A142412.P324937234896281247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P324937234896281247

namespace A142412

/-- `∩[A141373(n+1), A228227(n+1)]` -/
def P324937234896281247.Spec : Prop :=
  ∀ n, (P324937234896281247.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P1043366278722486611

`∩[A068229(n+1), A141195(n+1)]`
-/

namespace A142412.P1043366278722486611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P1043366278722486611

namespace A142412

/-- `∩[A068229(n+1), A141195(n+1)]` -/
def P1043366278722486611.Spec : Prop :=
  ∀ n, (P1043366278722486611.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P15547927215769884096

`∩[A141195(n+1), A385223(n+1)]`
-/

namespace A142412.P15547927215769884096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P15547927215769884096

namespace A142412

/-- `∩[A141195(n+1), A385223(n+1)]` -/
def P15547927215769884096.Spec : Prop :=
  ∀ n, (P15547927215769884096.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P10126665466401752243

`∩[A040107(n+1), A141195(n+1)]`
-/

namespace A142412.P10126665466401752243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P10126665466401752243

namespace A142412

/-- `∩[A040107(n+1), A141195(n+1)]` -/
def P10126665466401752243.Spec : Prop :=
  ∀ n, (P10126665466401752243.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P5163227027806858214

`∩[A141195(n+1), A332514(n+1)]`
-/

namespace A142412.P5163227027806858214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P5163227027806858214

namespace A142412

/-- `∩[A141195(n+1), A332514(n+1)]` -/
def P5163227027806858214.Spec : Prop :=
  ∀ n, (P5163227027806858214.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P1836409613890851880

`∩[A141195(n+1), A350051(n)]`
-/

namespace A142412.P1836409613890851880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P1836409613890851880

namespace A142412

/-- `∩[A141195(n+1), A350051(n)]` -/
def P1836409613890851880.Spec : Prop :=
  ∀ n, (P1836409613890851880.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P3351230873907742939

`∩[A228227(n+1), A350051(n)]`
-/

namespace A142412.P3351230873907742939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P3351230873907742939

namespace A142412

/-- `∩[A228227(n+1), A350051(n)]` -/
def P3351230873907742939.Spec : Prop :=
  ∀ n, (P3351230873907742939.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P3941138671469334097

`∩[A038876(n+1), A141195(n+1)]`
-/

namespace A142412.P3941138671469334097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P3941138671469334097

namespace A142412

/-- `∩[A038876(n+1), A141195(n+1)]` -/
def P3941138671469334097.Spec : Prop :=
  ∀ n, (P3941138671469334097.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P12255654063886355188

`∩[A097934(n+1), A141195(n+1)]`
-/

namespace A142412.P12255654063886355188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P12255654063886355188

namespace A142412

/-- `∩[A097934(n+1), A141195(n+1)]` -/
def P12255654063886355188.Spec : Prop :=
  ∀ n, (P12255654063886355188.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P3198860388955756950

`∩[A002476(n+1), A141195(n+1)]`
-/

namespace A142412.P3198860388955756950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P3198860388955756950

namespace A142412

/-- `∩[A002476(n+1), A141195(n+1)]` -/
def P3198860388955756950.Spec : Prop :=
  ∀ n, (P3198860388955756950.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P4095117574056478214

`∩[A007645(n+1), A141195(n+1)]`
-/

namespace A142412.P4095117574056478214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P4095117574056478214

namespace A142412

/-- `∩[A007645(n+1), A141195(n+1)]` -/
def P4095117574056478214.Spec : Prop :=
  ∀ n, (P4095117574056478214.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P5063590997212931817

`∩[A045375(n+1), A141195(n+1)]`
-/

namespace A142412.P5063590997212931817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P5063590997212931817

namespace A142412

/-- `∩[A045375(n+1), A141195(n+1)]` -/
def P5063590997212931817.Spec : Prop :=
  ∀ n, (P5063590997212931817.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P12923423450148012327

`∩[A123365(n+1), A141195(n+1)]`
-/

namespace A142412.P12923423450148012327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142412.P12923423450148012327

namespace A142412

/-- `∩[A123365(n+1), A141195(n+1)]` -/
def P12923423450148012327.Spec : Prop :=
  ∀ n, (P12923423450148012327.a n : ℤ) = A142412 (n + 1)

end A142412

/-! ## A142412.P11460280107658228078

`A002476(eq[10, and(14, A002476(n+1))]+1)`
-/

namespace A142412.P11460280107658228078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142412.P11460280107658228078

namespace A142412

/-- `A002476(eq[10, and(14, A002476(n+1))]+1)` -/
def P11460280107658228078.Spec : Prop :=
  ∀ n, P11460280107658228078.a n = A142412 (n + 1)

end A142412

/-!
# A142413: Primes congruent to 47 mod 48.

The programs for A142413, the canonical program `A142413.P5132067326325250209` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142413 has offset 1).

The definition of A142413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142413.P5132067326325250209

`∩[A127576(n+1), A134517(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A142413

/-- `∩[A127576(n+1), A134517(n+1)]` -/
def P5132067326325250209.Spec : Prop :=
  ∀ n, (P5132067326325250209.a n : ℤ) = A142413 (n + 1)

theorem P5132067326325250209.correct : P5132067326325250209.Spec := by
  intro n
  simp only [A142413, Nat.add_sub_cancel]

end A142413

/-! ## A142413.P7852622036241883233

`p?[48*n-1]`
-/

namespace A142413.P7852622036241883233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142413.P7852622036241883233

namespace A142413

/-- `p?[48*n-1]` -/
def P7852622036241883233.Spec : Prop :=
  ∀ n, P7852622036241883233.a n = A142413 (n + 1)

end A142413

/-! ## A142413.P8269301650848910751

`∩[A127576(n+1), A130063(n+1)]`
-/

namespace A142413.P8269301650848910751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P8269301650848910751

namespace A142413

/-- `∩[A127576(n+1), A130063(n+1)]` -/
def P8269301650848910751.Spec : Prop :=
  ∀ n, (P8269301650848910751.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P3544385477870370271

`∩[A127576(n+1), A256397(n+1)]`
-/

namespace A142413.P3544385477870370271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P3544385477870370271

namespace A142413

/-- `∩[A127576(n+1), A256397(n+1)]` -/
def P3544385477870370271.Spec : Prop :=
  ∀ n, (P3544385477870370271.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P1544535684669024358

`∩[A068231(n+1), A127576(n+1)]`
-/

namespace A142413.P1544535684669024358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P1544535684669024358

namespace A142413

/-- `∩[A068231(n+1), A127576(n+1)]` -/
def P1544535684669024358.Spec : Prop :=
  ∀ n, (P1544535684669024358.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P8953020732843112571

`∩[A127576(n+1), A141123(n+1)]`
-/

namespace A142413.P8953020732843112571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P8953020732843112571

namespace A142413

/-- `∩[A127576(n+1), A141123(n+1)]` -/
def P8953020732843112571.Spec : Prop :=
  ∀ n, (P8953020732843112571.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P9685256738624381067

`∩[A127576(n+1), A141171(n+1)]`
-/

namespace A142413.P9685256738624381067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P9685256738624381067

namespace A142413

/-- `∩[A127576(n+1), A141171(n+1)]` -/
def P9685256738624381067.Spec : Prop :=
  ∀ n, (P9685256738624381067.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P9264576637161132816

`∩[A127576(n+1), A141187(n+1)]`
-/

namespace A142413.P9264576637161132816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P9264576637161132816

namespace A142413

/-- `∩[A127576(n+1), A141187(n+1)]` -/
def P9264576637161132816.Spec : Prop :=
  ∀ n, (P9264576637161132816.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P17371329675602846286

`∩[A127576(n+1), A385220(n+1)]`
-/

namespace A142413.P17371329675602846286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P17371329675602846286

namespace A142413

/-- `∩[A127576(n+1), A385220(n+1)]` -/
def P17371329675602846286.Spec : Prop :=
  ∀ n, (P17371329675602846286.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P13859330830704167390

`∩[A127576(n+1), A363215(n+1)]`
-/

namespace A142413.P13859330830704167390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P13859330830704167390

namespace A142413

/-- `∩[A127576(n+1), A363215(n+1)]` -/
def P13859330830704167390.Spec : Prop :=
  ∀ n, (P13859330830704167390.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P783085729289329024

`∩[A040107(n+1), A127576(n+1)]`
-/

namespace A142413.P783085729289329024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P783085729289329024

namespace A142413

/-- `∩[A040107(n+1), A127576(n+1)]` -/
def P783085729289329024.Spec : Prop :=
  ∀ n, (P783085729289329024.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P5312006889138949508

`∩[A127576(n+1), A332516(n+1)]`
-/

namespace A142413.P5312006889138949508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P5312006889138949508

namespace A142413

/-- `∩[A127576(n+1), A332516(n+1)]` -/
def P5312006889138949508.Spec : Prop :=
  ∀ n, (P5312006889138949508.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P15550582848679165407

`∩[A040101(n+1), A127576(n+1)]`
-/

namespace A142413.P15550582848679165407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P15550582848679165407

namespace A142413

/-- `∩[A040101(n+1), A127576(n+1)]` -/
def P15550582848679165407.Spec : Prop :=
  ∀ n, (P15550582848679165407.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P12723030567054616479

`∩[A040124(n+1), A127576(n+1)]`
-/

namespace A142413.P12723030567054616479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P12723030567054616479

namespace A142413

/-- `∩[A040124(n+1), A127576(n+1)]` -/
def P12723030567054616479.Spec : Prop :=
  ∀ n, (P12723030567054616479.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P1614686822524594887

`∩[A040994(n+1), A127576(n+1)]`
-/

namespace A142413.P1614686822524594887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P1614686822524594887

namespace A142413

/-- `∩[A040994(n+1), A127576(n+1)]` -/
def P1614686822524594887.Spec : Prop :=
  ∀ n, (P1614686822524594887.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P4845304407740504246

`A000027(p?[A183010(2*n)])`
-/

namespace A142413.P4845304407740504246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142413.P4845304407740504246

namespace A142413

/-- `A000027(p?[A183010(2*n)])` -/
def P4845304407740504246.Spec : Prop :=
  ∀ n, P4845304407740504246.a n = A142413 (n + 1)

end A142413

/-! ## A142413.P1004948816568938277

`∩[A127576(n+1), A183010(n)]`
-/

namespace A142413.P1004948816568938277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P1004948816568938277

namespace A142413

/-- `∩[A127576(n+1), A183010(n)]` -/
def P1004948816568938277.Spec : Prop :=
  ∀ n, (P1004948816568938277.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P17873443505693239536

`∩[A045317(n+1), A127576(n+1)]`
-/

namespace A142413.P17873443505693239536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P17873443505693239536

namespace A142413

/-- `∩[A045317(n+1), A127576(n+1)]` -/
def P17873443505693239536.Spec : Prop :=
  ∀ n, (P17873443505693239536.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P3991857794700503534

`∩[A097933(n+1), A127576(n+1)]`
-/

namespace A142413.P3991857794700503534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P3991857794700503534

namespace A142413

/-- `∩[A097933(n+1), A127576(n+1)]` -/
def P3991857794700503534.Spec : Prop :=
  ∀ n, (P3991857794700503534.a n : ℤ) = A142413 (n + 1)

end A142413

/-! ## A142413.P10255246885233764361

`∩[A127576(n+1), A365313(n+1)]`
-/

namespace A142413.P10255246885233764361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142413.P10255246885233764361

namespace A142413

/-- `∩[A127576(n+1), A365313(n+1)]` -/
def P10255246885233764361.Spec : Prop :=
  ∀ n, (P10255246885233764361.a n : ℤ) = A142413 (n + 1)

end A142413

/-!
# A142414: Primes congruent to 1 mod 49.

The programs for A142414, the canonical program `A142414.P4960954613449093379` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142414 has offset 1).

The definition of A142414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142414.P4960954613449093379

`p?[49*n+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142414

/-- `p?[49*n+1]` -/
def P4960954613449093379.Spec : Prop :=
  ∀ n, (P4960954613449093379.a n : ℤ) = A142414 (n + 1)

theorem P4960954613449093379.correct : P4960954613449093379.Spec := by
  intro n
  simp only [A142414, Nat.add_sub_cancel]

end A142414

/-! ## A142414.P9286476522934010941

`or(1, p?[or(1, 49*n)])`
-/

namespace A142414.P9286476522934010941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (49 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142414.P9286476522934010941

namespace A142414

/-- `or(1, p?[or(1, 49*n)])` -/
def P9286476522934010941.Spec : Prop :=
  ∀ n, (P9286476522934010941.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P1993639204298617991

`or(1, p?[a(n-1)+49])` with `a(0)=1`
-/

namespace A142414.P1993639204298617991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142414.P1993639204298617991

namespace A142414

/-- `or(1, p?[a(n-1)+49])` -/
def P1993639204298617991.Spec : Prop :=
  ∀ n, (P1993639204298617991.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P4937037190025199148

`∏{d}[p?[a(n-1)+49], #]` with `a(0)=1`
-/

namespace A142414.P4937037190025199148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142414.P4937037190025199148

namespace A142414

/-- `∏{d}[p?[a(n-1)+49], #]` -/
def P4937037190025199148.Spec : Prop :=
  ∀ n, (P4937037190025199148.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P10296825373689748538

`∑{p}[p?[a(n-1)+49], #]` with `a(0)=1`
-/

namespace A142414.P10296825373689748538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142414.P10296825373689748538

namespace A142414

/-- `∑{p}[p?[a(n-1)+49], #]` -/
def P10296825373689748538.Spec : Prop :=
  ∀ n, (P10296825373689748538.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P17995871577274906847

`∏{p}[p?[a(n-1)+49], #]` with `a(0)=1`
-/

namespace A142414.P17995871577274906847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142414.P17995871577274906847

namespace A142414

/-- `∏{p}[p?[a(n-1)+49], #]` -/
def P17995871577274906847.Spec : Prop :=
  ∀ n, (P17995871577274906847.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P9662033672846173281

`or(1, p?[A157947(n+1)])`
-/

namespace A142414.P9662033672846173281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142414.P9662033672846173281

namespace A142414

/-- `or(1, p?[A157947(n+1)])` -/
def P9662033672846173281.Spec : Prop :=
  ∀ n, P9662033672846173281.a n = A142414 (n + 1)

end A142414

/-! ## A142414.P5111736844338354447

`p?[A157947(n+1)]%A157915(n+1)`
-/

namespace A142414.P5111736844338354447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157915 (n + 1))

end

end A142414.P5111736844338354447

namespace A142414

/-- `p?[A157947(n+1)]%A157915(n+1)` -/
def P5111736844338354447.Spec : Prop :=
  ∀ n, P5111736844338354447.a n = A142414 (n + 1)

end A142414

/-! ## A142414.P7387782093619323765

`∩[A045465(n+1), A157947(n+1)]`
-/

namespace A142414.P7387782093619323765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P7387782093619323765

namespace A142414

/-- `∩[A045465(n+1), A157947(n+1)]` -/
def P7387782093619323765.Spec : Prop :=
  ∀ n, (P7387782093619323765.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P13743396262551369230

`∩[A140444(n+1), A157947(n+1)]`
-/

namespace A142414.P13743396262551369230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P13743396262551369230

namespace A142414

/-- `∩[A140444(n+1), A157947(n+1)]` -/
def P13743396262551369230.Spec : Prop :=
  ∀ n, (P13743396262551369230.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P7613226668616558974

`∩[A045465(n+1), A158066(n+1)]`
-/

namespace A142414.P7613226668616558974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P7613226668616558974

namespace A142414

/-- `∩[A045465(n+1), A158066(n+1)]` -/
def P7613226668616558974.Spec : Prop :=
  ∀ n, (P7613226668616558974.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P565907857804084899

`∩[A140444(n+1), A158066(n+1)]`
-/

namespace A142414.P565907857804084899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P565907857804084899

namespace A142414

/-- `∩[A140444(n+1), A158066(n+1)]` -/
def P565907857804084899.Spec : Prop :=
  ∀ n, (P565907857804084899.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P12470951005230659197

`∩[A045381(n+1), A157947(n+1)]`
-/

namespace A142414.P12470951005230659197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P12470951005230659197

namespace A142414

/-- `∩[A045381(n+1), A157947(n+1)]` -/
def P12470951005230659197.Spec : Prop :=
  ∀ n, (P12470951005230659197.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P14677404820051744348

`∩[A045391(n+1), A157947(n+1)]`
-/

namespace A142414.P14677404820051744348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P14677404820051744348

namespace A142414

/-- `∩[A045391(n+1), A157947(n+1)]` -/
def P14677404820051744348.Spec : Prop :=
  ∀ n, (P14677404820051744348.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P7261567061681476393

`∩[A045381(n+1), A158066(n+1)]`
-/

namespace A142414.P7261567061681476393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P7261567061681476393

namespace A142414

/-- `∩[A045381(n+1), A158066(n+1)]` -/
def P7261567061681476393.Spec : Prop :=
  ∀ n, (P7261567061681476393.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P5013456489902502778

`∩[A045391(n+1), A158066(n+1)]`
-/

namespace A142414.P5013456489902502778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P5013456489902502778

namespace A142414

/-- `∩[A045391(n+1), A158066(n+1)]` -/
def P5013456489902502778.Spec : Prop :=
  ∀ n, (P5013456489902502778.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P14784982801267566812

`∩[A045424(n+1), A157947(n+1)]`
-/

namespace A142414.P14784982801267566812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P14784982801267566812

namespace A142414

/-- `∩[A045424(n+1), A157947(n+1)]` -/
def P14784982801267566812.Spec : Prop :=
  ∀ n, (P14784982801267566812.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P17147821854135176234

`∩[A045436(n+1), A157947(n+1)]`
-/

namespace A142414.P17147821854135176234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P17147821854135176234

namespace A142414

/-- `∩[A045436(n+1), A157947(n+1)]` -/
def P17147821854135176234.Spec : Prop :=
  ∀ n, (P17147821854135176234.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P8481869108624803306

`∩[A045446(n+1), A157947(n+1)]`
-/

namespace A142414.P8481869108624803306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P8481869108624803306

namespace A142414

/-- `∩[A045446(n+1), A157947(n+1)]` -/
def P8481869108624803306.Spec : Prop :=
  ∀ n, (P8481869108624803306.a n : ℤ) = A142414 (n + 1)

end A142414

/-! ## A142414.P12886992603626673302

`∩[A045456(n+1), A157947(n+1)]`
-/

namespace A142414.P12886992603626673302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142414.P12886992603626673302

namespace A142414

/-- `∩[A045456(n+1), A157947(n+1)]` -/
def P12886992603626673302.Spec : Prop :=
  ∀ n, (P12886992603626673302.a n : ℤ) = A142414 (n + 1)

end A142414

/-!
# A142415: Primes congruent to 2 mod 49.

The programs for A142415, the canonical program `A142415.P2169116940538813865` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142415 has offset 1).

The definition of A142415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142415.P2169116940538813865

`p?[49*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142415

/-- `p?[49*n+2]` -/
def P2169116940538813865.Spec : Prop :=
  ∀ n, (P2169116940538813865.a n : ℤ) = A142415 (n + 1)

theorem P2169116940538813865.correct : P2169116940538813865.Spec := by
  intro n
  simp only [A142415, Nat.add_sub_cancel]

end A142415

/-! ## A142415.P7061512507264645136

`∏{p}[p?[a(n-1)+49], #]` with `a(0)=2`
-/

namespace A142415.P7061512507264645136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142415.P7061512507264645136

namespace A142415

/-- `∏{p}[p?[a(n-1)+49], #]` -/
def P7061512507264645136.Spec : Prop :=
  ∀ n, (P7061512507264645136.a n : ℤ) = A142415 (n + 1)

end A142415

/-! ## A142415.P10602981083052262164

`and(p?[a(n-1)+49], -1)` with `a(0)=2`
-/

namespace A142415.P10602981083052262164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)

end

end A142415.P10602981083052262164

namespace A142415

/-- `and(p?[a(n-1)+49], -1)` -/
def P10602981083052262164.Spec : Prop :=
  ∀ n, P10602981083052262164.a n = A142415 (n + 1)

end A142415

/-! ## A142415.P13708464484151107681

`abs(p?[a(n-1)+49]-n)+n` with `a(0)=2`
-/

namespace A142415.P13708464484151107681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A142415.P13708464484151107681

namespace A142415

/-- `abs(p?[a(n-1)+49]-n)+n` -/
def P13708464484151107681.Spec : Prop :=
  ∀ n, P13708464484151107681.a n = A142415 (n + 1)

end A142415

/-! ## A142415.P4328853197448946396

`A000027(p?[A304205(n+1)-10])`
-/

namespace A142415.P4328853197448946396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142415.P4328853197448946396

namespace A142415

/-- `A000027(p?[A304205(n+1)-10])` -/
def P4328853197448946396.Spec : Prop :=
  ∀ n, P4328853197448946396.a n = A142415 (n + 1)

end A142415

/-! ## A142415.P17915991744098370992

`record[A020639(50*(n+2)-n)]`
-/

namespace A142415.P17915991744098370992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (50 * (n + 2) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142415.P17915991744098370992

namespace A142415

/-- `record[A020639(50*(n+2)-n)]` -/
def P17915991744098370992.Spec : Prop :=
  ∀ n, P17915991744098370992.a n = A142415 (n + 1)

end A142415

/-! ## A142415.P12073511009610339023

`∩[A045383(n+1), A056022(n+1)+1]`
-/

namespace A142415.P12073511009610339023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142415.P12073511009610339023

namespace A142415

/-- `∩[A045383(n+1), A056022(n+1)+1]` -/
def P12073511009610339023.Spec : Prop :=
  ∀ n, (P12073511009610339023.a n : ℤ) = A142415 (n + 1)

end A142415

/-! ## A142415.P16649093491193343961

`∩[A045392(n+1), A056022(n+1)+1]`
-/

namespace A142415.P16649093491193343961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142415.P16649093491193343961

namespace A142415

/-- `∩[A045392(n+1), A056022(n+1)+1]` -/
def P16649093491193343961.Spec : Prop :=
  ∀ n, (P16649093491193343961.a n : ℤ) = A142415 (n + 1)

end A142415

/-!
# A142416: Primes congruent to 3 mod 49.

The programs for A142416, the canonical program `A142416.P5754371465448936547` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142416 has offset 1).

The definition of A142416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142416.P5754371465448936547

`p?[49*n+3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142416

/-- `p?[49*n+3]` -/
def P5754371465448936547.Spec : Prop :=
  ∀ n, (P5754371465448936547.a n : ℤ) = A142416 (n + 1)

theorem P5754371465448936547.correct : P5754371465448936547.Spec := by
  intro n
  simp only [A142416, Nat.add_sub_cancel]

end A142416

/-! ## A142416.P6182561469654039559

`or(1, p?[a(n-1)+49])` with `a(0)=3`
-/

namespace A142416.P6182561469654039559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142416.P6182561469654039559

namespace A142416

/-- `or(1, p?[a(n-1)+49])` -/
def P6182561469654039559.Spec : Prop :=
  ∀ n, (P6182561469654039559.a n : ℤ) = A142416 (n + 1)

end A142416

/-! ## A142416.P17223470239142603550

`abs(p?[a(n-1)+49]-n)+n` with `a(0)=1, a(1)=3`
-/

namespace A142416.P17223470239142603550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A142416.P17223470239142603550

namespace A142416

/-- `abs(p?[a(n-1)+49]-n)+n` -/
def P17223470239142603550.Spec : Prop :=
  ∀ n, P17223470239142603550.a n = A142416 (n + 1)

end A142416

/-! ## A142416.P14511095818346176210

`A000027(p?[a(n-1)+49])` with `a(0)=3`
-/

namespace A142416.P14511095818346176210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142416.P14511095818346176210

namespace A142416

/-- `A000027(p?[a(n-1)+49])` -/
def P14511095818346176210.Spec : Prop :=
  ∀ n, P14511095818346176210.a n = A142416 (n + 1)

end A142416

/-! ## A142416.P3194313226216415213

`record[A020639(49*n+3)]`
-/

namespace A142416.P3194313226216415213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142416.P3194313226216415213

namespace A142416

/-- `record[A020639(49*n+3)]` -/
def P3194313226216415213.Spec : Prop :=
  ∀ n, P3194313226216415213.a n = A142416 (n + 1)

end A142416

/-! ## A142416.P13505261249152642774

`record[A006530(98*n+3)]`
-/

namespace A142416.P13505261249152642774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (98 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142416.P13505261249152642774

namespace A142416

/-- `record[A006530(98*n+3)]` -/
def P13505261249152642774.Spec : Prop :=
  ∀ n, P13505261249152642774.a n = A142416 (n + 1)

end A142416

/-! ## A142416.P17562685876571382501

`or(1, p?[A017017(7*n)])`
-/

namespace A142416.P17562685876571382501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142416.P17562685876571382501

namespace A142416

/-- `or(1, p?[A017017(7*n)])` -/
def P17562685876571382501.Spec : Prop :=
  ∀ n, P17562685876571382501.a n = A142416 (n + 1)

end A142416

/-! ## A142416.P11384414047738207966

`record[A076565(7*7*n+1)]`
-/

namespace A142416.P11384414047738207966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (7 * (7 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142416.P11384414047738207966

namespace A142416

/-- `record[A076565(7*7*n+1)]` -/
def P11384414047738207966.Spec : Prop :=
  ∀ n, P11384414047738207966.a n = A142416 (n + 1)

end A142416

/-!
# A142417: Primes congruent to 4 mod 49.

The programs for A142417, the canonical program `A142417.P4842907493679080872` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142417 has offset 1).

The definition of A142417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142417.P4842907493679080872

`p?[49*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142417

/-- `p?[49*n+4]` -/
def P4842907493679080872.Spec : Prop :=
  ∀ n, (P4842907493679080872.a n : ℤ) = A142417 (n + 1)

theorem P4842907493679080872.correct : P4842907493679080872.Spec := by
  intro n
  simp only [A142417, Nat.add_sub_cancel]

end A142417

/-! ## A142417.P505787449419810607

`or(1, p?[a(n-1)+49])` with `a(0)=4`
-/

namespace A142417.P505787449419810607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142417.P505787449419810607

namespace A142417

/-- `or(1, p?[a(n-1)+49])` -/
def P505787449419810607.Spec : Prop :=
  ∀ n, (P505787449419810607.a n : ℤ) = A142417 (n + 1)

end A142417

/-! ## A142417.P2047131460255157763

`abs(p?[a(n-1)+49]-n)+n` with `a(0)=4`
-/

namespace A142417.P2047131460255157763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A142417.P2047131460255157763

namespace A142417

/-- `abs(p?[a(n-1)+49]-n)+n` -/
def P2047131460255157763.Spec : Prop :=
  ∀ n, P2047131460255157763.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P8500337805698688497

`or(1, p?[A158066(n+1)+3])`
-/

namespace A142417.P8500337805698688497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142417.P8500337805698688497

namespace A142417

/-- `or(1, p?[A158066(n+1)+3])` -/
def P8500337805698688497.Spec : Prop :=
  ∀ n, P8500337805698688497.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P15391781228928795967

`record[A006530(49*(n+1)+4)]`
-/

namespace A142417.P15391781228928795967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (49 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142417.P15391781228928795967

namespace A142417

/-- `record[A006530(49*(n+1)+4)]` -/
def P15391781228928795967.Spec : Prop :=
  ∀ n, P15391781228928795967.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P17952087852655162698

`record[A020639(49*(n+1)+4)]`
-/

namespace A142417.P17952087852655162698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142417.P17952087852655162698

namespace A142417

/-- `record[A020639(49*(n+1)+4)]` -/
def P17952087852655162698.Spec : Prop :=
  ∀ n, P17952087852655162698.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P10387809294946613989

`A000027(p?[A017029(7*n)])`
-/

namespace A142417.P10387809294946613989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142417.P10387809294946613989

namespace A142417

/-- `A000027(p?[A017029(7*n)])` -/
def P10387809294946613989.Spec : Prop :=
  ∀ n, P10387809294946613989.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P11423743426702444020

`or(1, p?[A016993(A016993(n))-4])`
-/

namespace A142417.P11423743426702444020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142417.P11423743426702444020

namespace A142417

/-- `or(1, p?[A016993(A016993(n))-4])` -/
def P11423743426702444020.Spec : Prop :=
  ∀ n, P11423743426702444020.a n = A142417 (n + 1)

end A142417

/-! ## A142417.P16618065116048186564

`A006530(2*p?[A017029(7*n)])`
-/

namespace A142417.P16618065116048186564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142417.P16618065116048186564

namespace A142417

/-- `A006530(2*p?[A017029(7*n)])` -/
def P16618065116048186564.Spec : Prop :=
  ∀ n, P16618065116048186564.a n = A142417 (n + 1)

end A142417

/-!
# A142418: Primes congruent to 5 mod 49.

The programs for A142418, the canonical program `A142418.P5100325192273801817` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142418 has offset 1).

The definition of A142418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142418.P5100325192273801817

`p?[49*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142418

/-- `p?[49*n+5]` -/
def P5100325192273801817.Spec : Prop :=
  ∀ n, (P5100325192273801817.a n : ℤ) = A142418 (n + 1)

theorem P5100325192273801817.correct : P5100325192273801817.Spec := by
  intro n
  simp only [A142418, Nat.add_sub_cancel]

end A142418

/-! ## A142418.P18110855391648662721

`or(1, p?[a(n-1)+49])` with `a(0)=5`
-/

namespace A142418.P18110855391648662721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142418.P18110855391648662721

namespace A142418

/-- `or(1, p?[a(n-1)+49])` -/
def P18110855391648662721.Spec : Prop :=
  ∀ n, (P18110855391648662721.a n : ℤ) = A142418 (n + 1)

end A142418

/-! ## A142418.P2496437028142392485

`∏{d}[p?[a(n-1)+49], #]` with `a(0)=5`
-/

namespace A142418.P2496437028142392485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142418.P2496437028142392485

namespace A142418

/-- `∏{d}[p?[a(n-1)+49], #]` -/
def P2496437028142392485.Spec : Prop :=
  ∀ n, (P2496437028142392485.a n : ℤ) = A142418 (n + 1)

end A142418

/-! ## A142418.P409566200026543496

`∏{p}[p?[a(n-1)+49], #]` with `a(0)=5`
-/

namespace A142418.P409566200026543496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142418.P409566200026543496

namespace A142418

/-- `∏{p}[p?[a(n-1)+49], #]` -/
def P409566200026543496.Spec : Prop :=
  ∀ n, (P409566200026543496.a n : ℤ) = A142418 (n + 1)

end A142418

/-! ## A142418.P13565385772743774201

`and(p?[a(n-1)+49], -1)` with `a(0)=5`
-/

namespace A142418.P13565385772743774201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)

end

end A142418.P13565385772743774201

namespace A142418

/-- `and(p?[a(n-1)+49], -1)` -/
def P13565385772743774201.Spec : Prop :=
  ∀ n, P13565385772743774201.a n = A142418 (n + 1)

end A142418

/-! ## A142418.P8839291295586822869

`record[A006530(49*n+5)]`
-/

namespace A142418.P8839291295586822869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (49 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142418.P8839291295586822869

namespace A142418

/-- `record[A006530(49*n+5)]` -/
def P8839291295586822869.Spec : Prop :=
  ∀ n, P8839291295586822869.a n = A142418 (n + 1)

end A142418

/-! ## A142418.P7549136344525058333

`record[A008472(49*n+5)]`
-/

namespace A142418.P7549136344525058333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (49 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142418.P7549136344525058333

namespace A142418

/-- `record[A008472(49*n+5)]` -/
def P7549136344525058333.Spec : Prop :=
  ∀ n, P7549136344525058333.a n = A142418 (n + 1)

end A142418

/-! ## A142418.P11126118825950162424

`record[A020639(49*n+5)]`
-/

namespace A142418.P11126118825950162424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142418.P11126118825950162424

namespace A142418

/-- `record[A020639(49*n+5)]` -/
def P11126118825950162424.Spec : Prop :=
  ∀ n, P11126118825950162424.a n = A142418 (n + 1)

end A142418

/-! ## A142418.P7979506005762321953

`or(1, p?[A017041(7*n)])`
-/

namespace A142418.P7979506005762321953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142418.P7979506005762321953

namespace A142418

/-- `or(1, p?[A017041(7*n)])` -/
def P7979506005762321953.Spec : Prop :=
  ∀ n, P7979506005762321953.a n = A142418 (n + 1)

end A142418

/-!
# A142419: Primes congruent to 6 mod 49.

The programs for A142419, the canonical program `A142419.P776283272500742932` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142419 has offset 1).

The definition of A142419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142419.P776283272500742932

`p?[49*n+6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142419

/-- `p?[49*n+6]` -/
def P776283272500742932.Spec : Prop :=
  ∀ n, (P776283272500742932.a n : ℤ) = A142419 (n + 1)

theorem P776283272500742932.correct : P776283272500742932.Spec := by
  intro n
  simp only [A142419, Nat.add_sub_cancel]

end A142419

/-! ## A142419.P2059118500232305406

`A000027(p?[A158066(n+1)+5])`
-/

namespace A142419.P2059118500232305406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P2059118500232305406

namespace A142419

/-- `A000027(p?[A158066(n+1)+5])` -/
def P2059118500232305406.Spec : Prop :=
  ∀ n, P2059118500232305406.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P12629824081803907320

`A000027(p?[A304205(n+1)-6])`
-/

namespace A142419.P12629824081803907320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P12629824081803907320

namespace A142419

/-- `A000027(p?[A304205(n+1)-6])` -/
def P12629824081803907320.Spec : Prop :=
  ∀ n, P12629824081803907320.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P14212608858139524145

`A000027(p?[A139611(n)-A016969(n)])`
-/

namespace A142419.P14212608858139524145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P14212608858139524145

namespace A142419

/-- `A000027(p?[A139611(n)-A016969(n)])` -/
def P14212608858139524145.Spec : Prop :=
  ∀ n, P14212608858139524145.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P3805246573463499105

`A000027(p?[A139611(n)-A091998(n+1)])`
-/

namespace A142419.P3805246573463499105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P3805246573463499105

namespace A142419

/-- `A000027(p?[A139611(n)-A091998(n+1)])` -/
def P3805246573463499105.Spec : Prop :=
  ∀ n, P3805246573463499105.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P4880928321302440202

`A000265(p?[A158066(n+1)+5])`
-/

namespace A142419.P4880928321302440202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P4880928321302440202

namespace A142419

/-- `A000265(p?[A158066(n+1)+5])` -/
def P4880928321302440202.Spec : Prop :=
  ∀ n, P4880928321302440202.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P4753873311588822140

`A007913(p?[A158066(n+1)+5])`
-/

namespace A142419.P4753873311588822140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P4753873311588822140

namespace A142419

/-- `A007913(p?[A158066(n+1)+5])` -/
def P4753873311588822140.Spec : Prop :=
  ∀ n, P4753873311588822140.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P524358882301797372

`A007947(p?[A158066(n+1)+5])`
-/

namespace A142419.P524358882301797372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P524358882301797372

namespace A142419

/-- `A007947(p?[A158066(n+1)+5])` -/
def P524358882301797372.Spec : Prop :=
  ∀ n, P524358882301797372.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P7406590053220714099

`A008472(p?[A158066(n+1)+5])`
-/

namespace A142419.P7406590053220714099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P7406590053220714099

namespace A142419

/-- `A008472(p?[A158066(n+1)+5])` -/
def P7406590053220714099.Spec : Prop :=
  ∀ n, P7406590053220714099.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P7293264203391618521

`A000265(p?[A304205(n+1)-6])`
-/

namespace A142419.P7293264203391618521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P7293264203391618521

namespace A142419

/-- `A000265(p?[A304205(n+1)-6])` -/
def P7293264203391618521.Spec : Prop :=
  ∀ n, P7293264203391618521.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P17499617229501498089

`A008472(p?[A304205(n+2)-6])`
-/

namespace A142419.P17499617229501498089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 2) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P17499617229501498089

namespace A142419

/-- `A008472(p?[A304205(n+2)-6])` -/
def P17499617229501498089.Spec : Prop :=
  ∀ n, P17499617229501498089.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P14149995347703633375

`A000265(p?[A139611(n)-A016969(n)])`
-/

namespace A142419.P14149995347703633375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P14149995347703633375

namespace A142419

/-- `A000265(p?[A139611(n)-A016969(n)])` -/
def P14149995347703633375.Spec : Prop :=
  ∀ n, P14149995347703633375.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P3219547734482305703

`A007913(p?[A139611(n)-A016969(n)])`
-/

namespace A142419.P3219547734482305703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P3219547734482305703

namespace A142419

/-- `A007913(p?[A139611(n)-A016969(n)])` -/
def P3219547734482305703.Spec : Prop :=
  ∀ n, P3219547734482305703.a n = A142419 (n + 1)

end A142419

/-! ## A142419.P8040713701570148080

`A008472(p?[A139611(n)-A016969(n)])`
-/

namespace A142419.P8040713701570148080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142419.P8040713701570148080

namespace A142419

/-- `A008472(p?[A139611(n)-A016969(n)])` -/
def P8040713701570148080.Spec : Prop :=
  ∀ n, P8040713701570148080.a n = A142419 (n + 1)

end A142419

/-!
# A142420: Primes congruent to 8 mod 49.

The programs for A142420, the canonical program `A142420.P1512918209034119506` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142420 has offset 1).

The definition of A142420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142420.P1512918209034119506

`p?[49*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142420

/-- `p?[49*n+8]` -/
def P1512918209034119506.Spec : Prop :=
  ∀ n, (P1512918209034119506.a n : ℤ) = A142420 (n + 1)

theorem P1512918209034119506.correct : P1512918209034119506.Spec := by
  intro n
  simp only [A142420, Nat.add_sub_cancel]

end A142420

/-! ## A142420.P17501717066612451842

`A000027(p?[A304205(n+1)+94])`
-/

namespace A142420.P17501717066612451842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 94

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P17501717066612451842

namespace A142420

/-- `A000027(p?[A304205(n+1)+94])` -/
def P17501717066612451842.Spec : Prop :=
  ∀ n, P17501717066612451842.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P4885785671342250689

`A000027(p?[A158066(n+1)+7])`
-/

namespace A142420.P4885785671342250689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P4885785671342250689

namespace A142420

/-- `A000027(p?[A158066(n+1)+7])` -/
def P4885785671342250689.Spec : Prop :=
  ∀ n, P4885785671342250689.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P1104259572026802097

`or(p?[A304205(n+1)-4], A000035(n))`
-/

namespace A142420.P1104259572026802097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142420.P1104259572026802097

namespace A142420

/-- `or(p?[A304205(n+1)-4], A000035(n))` -/
def P1104259572026802097.Spec : Prop :=
  ∀ n, P1104259572026802097.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P17374667032896960525

`or(p?[A304205(n+1)-4], A005614(n))`
-/

namespace A142420.P17374667032896960525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A005614 n)

end

end A142420.P17374667032896960525

namespace A142420

/-- `or(p?[A304205(n+1)-4], A005614(n))` -/
def P17374667032896960525.Spec : Prop :=
  ∀ n, P17374667032896960525.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P9033159500865624625

`or(p?[A304205(n+1)-4], A010054(n))`
-/

namespace A142420.P9033159500865624625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010054 n)

end

end A142420.P9033159500865624625

namespace A142420

/-- `or(p?[A304205(n+1)-4], A010054(n))` -/
def P9033159500865624625.Spec : Prop :=
  ∀ n, P9033159500865624625.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P17679679213583995952

`or(p?[A158066(n+1)+7], A178226(n))`
-/

namespace A142420.P17679679213583995952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A178226 n)

end

end A142420.P17679679213583995952

namespace A142420

/-- `or(p?[A158066(n+1)+7], A178226(n))` -/
def P17679679213583995952.Spec : Prop :=
  ∀ n, P17679679213583995952.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P224515010134714162

`p?[A304205(n+1)-4]%A115393(n+1)²`
-/

namespace A142420.P224515010134714162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A115393 (n + 1) ^ 2)

end

end A142420.P224515010134714162

namespace A142420

/-- `p?[A304205(n+1)-4]%A115393(n+1)²` -/
def P224515010134714162.Spec : Prop :=
  ∀ n, P224515010134714162.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P5137857949304566976

`∩[A045436(n+1), A156674(n+1)-2]`
-/

namespace A142420.P5137857949304566976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142420.P5137857949304566976

namespace A142420

/-- `∩[A045436(n+1), A156674(n+1)-2]` -/
def P5137857949304566976.Spec : Prop :=
  ∀ n, (P5137857949304566976.a n : ℤ) = A142420 (n + 1)

end A142420

/-! ## A142420.P5848617748582708402

`∩[A045461(n+1), A156674(n+1)-2]`
-/

namespace A142420.P5848617748582708402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142420.P5848617748582708402

namespace A142420

/-- `∩[A045461(n+1), A156674(n+1)-2]` -/
def P5848617748582708402.Spec : Prop :=
  ∀ n, (P5848617748582708402.a n : ℤ) = A142420 (n + 1)

end A142420

/-! ## A142420.P3703094732590915030

`∩[A045469(n+1), A156674(n+1)-2]`
-/

namespace A142420.P3703094732590915030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142420.P3703094732590915030

namespace A142420

/-- `∩[A045469(n+1), A156674(n+1)-2]` -/
def P3703094732590915030.Spec : Prop :=
  ∀ n, (P3703094732590915030.a n : ℤ) = A142420 (n + 1)

end A142420

/-! ## A142420.P2028635857339240371

`A000265(p?[A304205(n+1)-4])`
-/

namespace A142420.P2028635857339240371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P2028635857339240371

namespace A142420

/-- `A000265(p?[A304205(n+1)-4])` -/
def P2028635857339240371.Spec : Prop :=
  ∀ n, P2028635857339240371.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P2332412474427512224

`A001414(p?[A304205(n+1)-4])`
-/

namespace A142420.P2332412474427512224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P2332412474427512224

namespace A142420

/-- `A001414(p?[A304205(n+1)-4])` -/
def P2332412474427512224.Spec : Prop :=
  ∀ n, P2332412474427512224.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P18316935551811586696

`A007947(p?[A304205(n+1)-4])`
-/

namespace A142420.P18316935551811586696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P18316935551811586696

namespace A142420

/-- `A007947(p?[A304205(n+1)-4])` -/
def P18316935551811586696.Spec : Prop :=
  ∀ n, P18316935551811586696.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P9013806588609120532

`A000265(p?[A158066(n+1)+7])`
-/

namespace A142420.P9013806588609120532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P9013806588609120532

namespace A142420

/-- `A000265(p?[A158066(n+1)+7])` -/
def P9013806588609120532.Spec : Prop :=
  ∀ n, P9013806588609120532.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P1614397932451254314

`A007913(p?[A158066(n+1)+7])`
-/

namespace A142420.P1614397932451254314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142420.P1614397932451254314

namespace A142420

/-- `A007913(p?[A158066(n+1)+7])` -/
def P1614397932451254314.Spec : Prop :=
  ∀ n, P1614397932451254314.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P3141129318510093603

`A020639(or(1, p?[A304205(n+1)-4]))`
-/

namespace A142420.P3141129318510093603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A142420.P3141129318510093603

namespace A142420

/-- `A020639(or(1, p?[A304205(n+1)-4]))` -/
def P3141129318510093603.Spec : Prop :=
  ∀ n, P3141129318510093603.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P5938332508397993207

`∏{d}[p?[A304205(n+1)-4], A006530(#)]`
-/

namespace A142420.P5938332508397993207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A142420.P5938332508397993207

namespace A142420

/-- `∏{d}[p?[A304205(n+1)-4], A006530(#)]` -/
def P5938332508397993207.Spec : Prop :=
  ∀ n, P5938332508397993207.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P16773084843691172495

`∏{p}[p?[A304205(n+1)-4], A020639(#)]`
-/

namespace A142420.P16773084843691172495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A142420.P16773084843691172495

namespace A142420

/-- `∏{p}[p?[A304205(n+1)-4], A020639(#)]` -/
def P16773084843691172495.Spec : Prop :=
  ∀ n, P16773084843691172495.a n = A142420 (n + 1)

end A142420

/-! ## A142420.P6931974914918307431

`∩[A140444(n+1), A016993(A016993(n))]`
-/

namespace A142420.P6931974914918307431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142420.P6931974914918307431

namespace A142420

/-- `∩[A140444(n+1), A016993(A016993(n))]` -/
def P6931974914918307431.Spec : Prop :=
  ∀ n, (P6931974914918307431.a n : ℤ) = A142420 (n + 1)

end A142420

/-!
# A142421: Primes congruent to 9 mod 49.

The programs for A142421, the canonical program `A142421.P115937325329005773` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142421 has offset 1).

The definition of A142421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1848 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142421.P115937325329005773

`p?[98*n+9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142421

/-- `p?[98*n+9]` -/
def P115937325329005773.Spec : Prop :=
  ∀ n, (P115937325329005773.a n : ℤ) = A142421 (n + 1)

theorem P115937325329005773.correct : P115937325329005773.Spec := by
  intro n
  simp only [A142421, Nat.add_sub_cancel]

end A142421

/-! ## A142421.P1661758344155025013

`abs(p?[a(n-1)+49]-n)+n` with `a(0)=9`
-/

namespace A142421.P1661758344155025013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A142421.P1661758344155025013

namespace A142421

/-- `abs(p?[a(n-1)+49]-n)+n` -/
def P1661758344155025013.Spec : Prop :=
  ∀ n, P1661758344155025013.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P6031447094242829725

`A000027(p?[abs(3-A304205(n+1))])`
-/

namespace A142421.P6031447094242829725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A304205 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142421.P6031447094242829725

namespace A142421

/-- `A000027(p?[abs(3-A304205(n+1))])` -/
def P6031447094242829725.Spec : Prop :=
  ∀ n, P6031447094242829725.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P8640900281813298120

`∩[A045374(n+1), A156674(n+1)-1]`
-/

namespace A142421.P8640900281813298120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P8640900281813298120

namespace A142421

/-- `∩[A045374(n+1), A156674(n+1)-1]` -/
def P8640900281813298120.Spec : Prop :=
  ∀ n, (P8640900281813298120.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P1582992341735790802

`∩[A045387(n+1), A156674(n+1)-1]`
-/

namespace A142421.P1582992341735790802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P1582992341735790802

namespace A142421

/-- `∩[A045387(n+1), A156674(n+1)-1]` -/
def P1582992341735790802.Spec : Prop :=
  ∀ n, (P1582992341735790802.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P10623033179925474301

`∩[A156674(2*n+1)-1, A045333(n+2)]`
-/

namespace A142421.P10623033179925474301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P10623033179925474301

namespace A142421

/-- `∩[A156674(2*n+1)-1, A045333(n+2)]` -/
def P10623033179925474301.Spec : Prop :=
  ∀ n, (P10623033179925474301.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P12495913193444482250

`∩[A033207(n+1), A156674(n+1)-1]`
-/

namespace A142421.P12495913193444482250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P12495913193444482250

namespace A142421

/-- `∩[A033207(n+1), A156674(n+1)-1]` -/
def P12495913193444482250.Spec : Prop :=
  ∀ n, (P12495913193444482250.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P7872293557951195241

`∩[A045373(n+1), A156674(n+1)-1]`
-/

namespace A142421.P7872293557951195241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P7872293557951195241

namespace A142421

/-- `∩[A045373(n+1), A156674(n+1)-1]` -/
def P7872293557951195241.Spec : Prop :=
  ∀ n, (P7872293557951195241.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P10945258416458561712

`∩[A045347(n+1), A156674(n+1)-1]`
-/

namespace A142421.P10945258416458561712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P10945258416458561712

namespace A142421

/-- `∩[A045347(n+1), A156674(n+1)-1]` -/
def P10945258416458561712.Spec : Prop :=
  ∀ n, (P10945258416458561712.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P6456392749361799882

`∩[A045369(n+1), A156674(n+1)-1]`
-/

namespace A142421.P6456392749361799882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P6456392749361799882

namespace A142421

/-- `∩[A045369(n+1), A156674(n+1)-1]` -/
def P6456392749361799882.Spec : Prop :=
  ∀ n, (P6456392749361799882.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P9397107698737035120

`∩[A045384(n+1), A156674(n+1)-1]`
-/

namespace A142421.P9397107698737035120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P9397107698737035120

namespace A142421

/-- `∩[A045384(n+1), A156674(n+1)-1]` -/
def P9397107698737035120.Spec : Prop :=
  ∀ n, (P9397107698737035120.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P517670653685156900

`∩[A045346(n+1), A156674(n+1)-1]`
-/

namespace A142421.P517670653685156900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P517670653685156900

namespace A142421

/-- `∩[A045346(n+1), A156674(n+1)-1]` -/
def P517670653685156900.Spec : Prop :=
  ∀ n, (P517670653685156900.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P11135242750224882628

`∩[A156674(2*n+1)-1, A042990(n+1)]`
-/

namespace A142421.P11135242750224882628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142421.P11135242750224882628

namespace A142421

/-- `∩[A156674(2*n+1)-1, A042990(n+1)]` -/
def P11135242750224882628.Spec : Prop :=
  ∀ n, (P11135242750224882628.a n : ℤ) = A142421 (n + 1)

end A142421

/-! ## A142421.P10759902931923958512

`record[A006530(A157947(n+1)+8)]`
-/

namespace A142421.P10759902931923958512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157947 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142421.P10759902931923958512

namespace A142421

/-- `record[A006530(A157947(n+1)+8)]` -/
def P10759902931923958512.Spec : Prop :=
  ∀ n, P10759902931923958512.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P13054278383957424909

`record[A006530(A157924(n+1)+10)]`
-/

namespace A142421.P13054278383957424909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157924 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142421.P13054278383957424909

namespace A142421

/-- `record[A006530(A157924(n+1)+10)]` -/
def P13054278383957424909.Spec : Prop :=
  ∀ n, P13054278383957424909.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P13726976994312029258

`record[A020639(A157924(n+1)+10)]`
-/

namespace A142421.P13726976994312029258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157924 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142421.P13726976994312029258

namespace A142421

/-- `record[A020639(A157924(n+1)+10)]` -/
def P13726976994312029258.Spec : Prop :=
  ∀ n, P13726976994312029258.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P16353392803810774211

`or(1, p?[A016993(A016993(n))+1])`
-/

namespace A142421.P16353392803810774211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142421.P16353392803810774211

namespace A142421

/-- `or(1, p?[A016993(A016993(n))+1])` -/
def P16353392803810774211.Spec : Prop :=
  ∀ n, P16353392803810774211.a n = A142421 (n + 1)

end A142421

/-! ## A142421.P3812089411638383755

`∏{p}[p?[A016993(A016993(n+1))+1], #]`
-/

namespace A142421.P3812089411638383755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142421.P3812089411638383755

namespace A142421

/-- `∏{p}[p?[A016993(A016993(n+1))+1], #]` -/
def P3812089411638383755.Spec : Prop :=
  ∀ n, (P3812089411638383755.a n : ℤ) = A142421 (n + 1)

end A142421

/-!
# A142422: Primes congruent to 10 mod 49.

The programs for A142422, the canonical program `A142422.P15421781261087999992` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142422 has offset 1).

The definition of A142422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142422.P15421781261087999992

`p?[49*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142422

/-- `p?[49*n+10]` -/
def P15421781261087999992.Spec : Prop :=
  ∀ n, (P15421781261087999992.a n : ℤ) = A142422 (n + 1)

theorem P15421781261087999992.correct : P15421781261087999992.Spec := by
  intro n
  simp only [A142422, Nat.add_sub_cancel]

end A142422

/-! ## A142422.P12677853464633556430

`or(1, p?[a(n-1)+49])` with `a(0)=10`
-/

namespace A142422.P12677853464633556430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142422.P12677853464633556430

namespace A142422

/-- `or(1, p?[a(n-1)+49])` -/
def P12677853464633556430.Spec : Prop :=
  ∀ n, (P12677853464633556430.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P7392085889511306431

`or(1, p?[A053741(n)-(n+10)])`
-/

namespace A142422.P7392085889511306431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - (n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142422.P7392085889511306431

namespace A142422

/-- `or(1, p?[A053741(n)-(n+10)])` -/
def P7392085889511306431.Spec : Prop :=
  ∀ n, P7392085889511306431.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P13055462650166105273

`A000027(p?[A304205(n+1)-2])`
-/

namespace A142422.P13055462650166105273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142422.P13055462650166105273

namespace A142422

/-- `A000027(p?[A304205(n+1)-2])` -/
def P13055462650166105273.Spec : Prop :=
  ∀ n, P13055462650166105273.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P7086672635278058197

`or(p?[A304205(n+1)-2], A000007(n))`
-/

namespace A142422.P7086672635278058197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142422.P7086672635278058197

namespace A142422

/-- `or(p?[A304205(n+1)-2], A000007(n))` -/
def P7086672635278058197.Spec : Prop :=
  ∀ n, P7086672635278058197.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P10785122206305635854

`p?[A304205(n+1)-2]/A033999(n)²`
-/

namespace A142422.P10785122206305635854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142422.P10785122206305635854

namespace A142422

/-- `p?[A304205(n+1)-2]/A033999(n)²` -/
def P10785122206305635854.Spec : Prop :=
  ∀ n, P10785122206305635854.a n = (A142422 (n + 1) : ℚ)

end A142422

/-! ## A142422.P12190978777496315095

`A000038(n+1)+p?[A304205(n+1)-2]`
-/

namespace A142422.P12190978777496315095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142422.P12190978777496315095

namespace A142422

/-- `A000038(n+1)+p?[A304205(n+1)-2]` -/
def P12190978777496315095.Spec : Prop :=
  ∀ n, P12190978777496315095.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P16864865589165187121

`p?[A304205(n+1)-2]%A046691(n+3)²`
-/

namespace A142422.P16864865589165187121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A046691 (n + 3) ^ 2)

end

end A142422.P16864865589165187121

namespace A142422

/-- `p?[A304205(n+1)-2]%A046691(n+3)²` -/
def P16864865589165187121.Spec : Prop :=
  ∀ n, P16864865589165187121.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P305729140339106823

`p?[A304205(n+1)-2]+and(2, A000005(n+1)²)`
-/

namespace A142422.P305729140339106823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.land 2 (A000005 (n + 1) ^ 2)

end

end A142422.P305729140339106823

namespace A142422

/-- `p?[A304205(n+1)-2]+and(2, A000005(n+1)²)` -/
def P305729140339106823.Spec : Prop :=
  ∀ n, P305729140339106823.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P16539587776145630736

`p?[A304205(n+1)-2]/A007318(A057944(n))`
-/

namespace A142422.P16539587776145630736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (A057944 n).toNat : ℚ)

end

end A142422.P16539587776145630736

namespace A142422

/-- `p?[A304205(n+1)-2]/A007318(A057944(n))` -/
def P16539587776145630736.Spec : Prop :=
  ∀ n, P16539587776145630736.a n = (A142422 (n + 1) : ℚ)

end A142422

/-! ## A142422.P18111398119725506886

`A000035(A168397(n+1))+p?[A304205(n+1)-2]`
-/

namespace A142422.P18111398119725506886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A168397 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142422.P18111398119725506886

namespace A142422

/-- `A000035(A168397(n+1))+p?[A304205(n+1)-2]` -/
def P18111398119725506886.Spec : Prop :=
  ∀ n, P18111398119725506886.a n = A142422 (n + 1)

end A142422

/-! ## A142422.P8806012723104534382

`∩[A045401(n+1), A304205(n+1)-2]`
-/

namespace A142422.P8806012723104534382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P8806012723104534382

namespace A142422

/-- `∩[A045401(n+1), A304205(n+1)-2]` -/
def P8806012723104534382.Spec : Prop :=
  ∀ n, (P8806012723104534382.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P15544897486013364753

`∩[A045416(n+1), A304205(n+1)-2]`
-/

namespace A142422.P15544897486013364753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P15544897486013364753

namespace A142422

/-- `∩[A045416(n+1), A304205(n+1)-2]` -/
def P15544897486013364753.Spec : Prop :=
  ∀ n, (P15544897486013364753.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P18169574867502788199

`∩[A045333(n+1), A156674(n+1)]`
-/

namespace A142422.P18169574867502788199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P18169574867502788199

namespace A142422

/-- `∩[A045333(n+1), A156674(n+1)]` -/
def P18169574867502788199.Spec : Prop :=
  ∀ n, (P18169574867502788199.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P10623185883845732577

`∩[A045343(n+1), A156674(n+1)]`
-/

namespace A142422.P10623185883845732577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P10623185883845732577

namespace A142422

/-- `∩[A045343(n+1), A156674(n+1)]` -/
def P10623185883845732577.Spec : Prop :=
  ∀ n, (P10623185883845732577.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P2116128415496365701

`∩[A045401(n+1), A156674(n+1)]`
-/

namespace A142422.P2116128415496365701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P2116128415496365701

namespace A142422

/-- `∩[A045401(n+1), A156674(n+1)]` -/
def P2116128415496365701.Spec : Prop :=
  ∀ n, (P2116128415496365701.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P11826806929652983175

`∩[A045423(n+1), A156674(n+1)]`
-/

namespace A142422.P11826806929652983175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P11826806929652983175

namespace A142422

/-- `∩[A045423(n+1), A156674(n+1)]` -/
def P11826806929652983175.Spec : Prop :=
  ∀ n, (P11826806929652983175.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P14739461975225563059

`∩[A045424(n+1), A156674(n+1)]`
-/

namespace A142422.P14739461975225563059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P14739461975225563059

namespace A142422

/-- `∩[A045424(n+1), A156674(n+1)]` -/
def P14739461975225563059.Spec : Prop :=
  ∀ n, (P14739461975225563059.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P3192129441441767389

`∩[A045425(n+1), A156674(n+1)]`
-/

namespace A142422.P3192129441441767389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P3192129441441767389

namespace A142422

/-- `∩[A045425(n+1), A156674(n+1)]` -/
def P3192129441441767389.Spec : Prop :=
  ∀ n, (P3192129441441767389.a n : ℤ) = A142422 (n + 1)

end A142422

/-! ## A142422.P2345702992410498626

`∩[A045436(n+1), A156674(n+1)]`
-/

namespace A142422.P2345702992410498626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142422.P2345702992410498626

namespace A142422

/-- `∩[A045436(n+1), A156674(n+1)]` -/
def P2345702992410498626.Spec : Prop :=
  ∀ n, (P2345702992410498626.a n : ℤ) = A142422 (n + 1)

end A142422

/-!
# A142423: Primes congruent to 11 mod 49.

The programs for A142423, the canonical program `A142423.P3925050904865258140` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142423 has offset 1).

The definition of A142423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142423.P3925050904865258140

`p?[49*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142423

/-- `p?[49*n+11]` -/
def P3925050904865258140.Spec : Prop :=
  ∀ n, (P3925050904865258140.a n : ℤ) = A142423 (n + 1)

theorem P3925050904865258140.correct : P3925050904865258140.Spec := by
  intro n
  simp only [A142423, Nat.add_sub_cancel]

end A142423

/-! ## A142423.P9278874285142770805

`A000027(p?[A304205(n+1)-1])`
-/

namespace A142423.P9278874285142770805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142423.P9278874285142770805

namespace A142423

/-- `A000027(p?[A304205(n+1)-1])` -/
def P9278874285142770805.Spec : Prop :=
  ∀ n, P9278874285142770805.a n = A142423 (n + 1)

end A142423

/-! ## A142423.P4567685735577121937

`A000027(p?[A158066(n+1)-88])`
-/

namespace A142423.P4567685735577121937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 88

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142423.P4567685735577121937

namespace A142423

/-- `A000027(p?[A158066(n+1)-88])` -/
def P4567685735577121937.Spec : Prop :=
  ∀ n, P4567685735577121937.a n = A142423 (n + 1)

end A142423

/-! ## A142423.P13257502674324206976

`∩[A045441(n+1), A304205(n+1)-1]`
-/

namespace A142423.P13257502674324206976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P13257502674324206976

namespace A142423

/-- `∩[A045441(n+1), A304205(n+1)-1]` -/
def P13257502674324206976.Spec : Prop :=
  ∀ n, (P13257502674324206976.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P4718925121061216112

`∩[A045452(n+1), A304205(n+1)-1]`
-/

namespace A142423.P4718925121061216112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P4718925121061216112

namespace A142423

/-- `∩[A045452(n+1), A304205(n+1)-1]` -/
def P4718925121061216112.Spec : Prop :=
  ∀ n, (P4718925121061216112.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P5096262928520778995

`∏{p}[p?[A158066(A123108(2*n))-88], #]`
-/

namespace A142423.P5096262928520778995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (A123108 (2 * n)).toNat - 88

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142423.P5096262928520778995

namespace A142423

/-- `∏{p}[p?[A158066(A123108(2*n))-88], #]` -/
def P5096262928520778995.Spec : Prop :=
  ∀ n, (P5096262928520778995.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P7744672684730676201

`∩[A045374(n+1), A156674(n+1)+1]`
-/

namespace A142423.P7744672684730676201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P7744672684730676201

namespace A142423

/-- `∩[A045374(n+1), A156674(n+1)+1]` -/
def P7744672684730676201.Spec : Prop :=
  ∀ n, (P7744672684730676201.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P13894006335965208453

`∩[A045387(n+1), A156674(n+1)+1]`
-/

namespace A142423.P13894006335965208453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P13894006335965208453

namespace A142423

/-- `∩[A045387(n+1), A156674(n+1)+1]` -/
def P13894006335965208453.Spec : Prop :=
  ∀ n, (P13894006335965208453.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P11271222697456318052

`∩[A045460(n+1), A156674(n+1)+1]`
-/

namespace A142423.P11271222697456318052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P11271222697456318052

namespace A142423

/-- `∩[A045460(n+1), A156674(n+1)+1]` -/
def P11271222697456318052.Spec : Prop :=
  ∀ n, (P11271222697456318052.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P1783621333582924327

`∩[A045461(n+1), A156674(n+1)+1]`
-/

namespace A142423.P1783621333582924327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P1783621333582924327

namespace A142423

/-- `∩[A045461(n+1), A156674(n+1)+1]` -/
def P1783621333582924327.Spec : Prop :=
  ∀ n, (P1783621333582924327.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P14119365466088385223

`∩[A045462(n+1), A156674(n+1)+1]`
-/

namespace A142423.P14119365466088385223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P14119365466088385223

namespace A142423

/-- `∩[A045462(n+1), A156674(n+1)+1]` -/
def P14119365466088385223.Spec : Prop :=
  ∀ n, (P14119365466088385223.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P12174209828952511048

`∩[A045467(n+1), A156674(n+1)+1]`
-/

namespace A142423.P12174209828952511048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P12174209828952511048

namespace A142423

/-- `∩[A045467(n+1), A156674(n+1)+1]` -/
def P12174209828952511048.Spec : Prop :=
  ∀ n, (P12174209828952511048.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P13767691646970656219

`∩[A045469(n+1), A156674(n+1)+1]`
-/

namespace A142423.P13767691646970656219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P13767691646970656219

namespace A142423

/-- `∩[A045469(n+1), A156674(n+1)+1]` -/
def P13767691646970656219.Spec : Prop :=
  ∀ n, (P13767691646970656219.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P2025272024506912331

`∩[A045471(n+1), A156674(n+1)+1]`
-/

namespace A142423.P2025272024506912331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P2025272024506912331

namespace A142423

/-- `∩[A045471(n+1), A156674(n+1)+1]` -/
def P2025272024506912331.Spec : Prop :=
  ∀ n, (P2025272024506912331.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P16091584850281923207

`∩[A156674(2*n+1)+1, A045441(n+2)]`
-/

namespace A142423.P16091584850281923207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P16091584850281923207

namespace A142423

/-- `∩[A156674(2*n+1)+1, A045441(n+2)]` -/
def P16091584850281923207.Spec : Prop :=
  ∀ n, (P16091584850281923207.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P13022728367018538462

`∩[A156674(2*n+1)+1, A045452(n+2)]`
-/

namespace A142423.P13022728367018538462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P13022728367018538462

namespace A142423

/-- `∩[A156674(2*n+1)+1, A045452(n+2)]` -/
def P13022728367018538462.Spec : Prop :=
  ∀ n, (P13022728367018538462.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P10570562517120985064

`∩[A033207(n+1), A156674(n+1)+1]`
-/

namespace A142423.P10570562517120985064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P10570562517120985064

namespace A142423

/-- `∩[A033207(n+1), A156674(n+1)+1]` -/
def P10570562517120985064.Spec : Prop :=
  ∀ n, (P10570562517120985064.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P4166021868585838192

`∩[A045373(n+1), A156674(n+1)+1]`
-/

namespace A142423.P4166021868585838192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P4166021868585838192

namespace A142423

/-- `∩[A045373(n+1), A156674(n+1)+1]` -/
def P4166021868585838192.Spec : Prop :=
  ∀ n, (P4166021868585838192.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P8075422388580857620

`∩[A045369(n+1), A156674(n+1)+1]`
-/

namespace A142423.P8075422388580857620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P8075422388580857620

namespace A142423

/-- `∩[A045369(n+1), A156674(n+1)+1]` -/
def P8075422388580857620.Spec : Prop :=
  ∀ n, (P8075422388580857620.a n : ℤ) = A142423 (n + 1)

end A142423

/-! ## A142423.P17264000230273714875

`∩[A045384(n+1), A156674(n+1)+1]`
-/

namespace A142423.P17264000230273714875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142423.P17264000230273714875

namespace A142423

/-- `∩[A045384(n+1), A156674(n+1)+1]` -/
def P17264000230273714875.Spec : Prop :=
  ∀ n, (P17264000230273714875.a n : ℤ) = A142423 (n + 1)

end A142423

/-!
# A142424: Primes congruent to 12 mod 49.

The programs for A142424, the canonical program `A142424.P17597334879441742239` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142424 has offset 1).

The definition of A142424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142424.P17597334879441742239

`p?[49*n+12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142424

/-- `p?[49*n+12]` -/
def P17597334879441742239.Spec : Prop :=
  ∀ n, (P17597334879441742239.a n : ℤ) = A142424 (n + 1)

theorem P17597334879441742239.correct : P17597334879441742239.Spec := by
  intro n
  simp only [A142424, Nat.add_sub_cancel]

end A142424

/-! ## A142424.P5902765170076985994

`or(1, p?[a(n-1)+49])` with `a(0)=12`
-/

namespace A142424.P5902765170076985994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142424.P5902765170076985994

namespace A142424

/-- `or(1, p?[a(n-1)+49])` -/
def P5902765170076985994.Spec : Prop :=
  ∀ n, (P5902765170076985994.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P9412210516123214554

`∏{d}[p?[a(n-1)+49], #]` with `a(0)=12`
-/

namespace A142424.P9412210516123214554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142424.P9412210516123214554

namespace A142424

/-- `∏{d}[p?[a(n-1)+49], #]` -/
def P9412210516123214554.Spec : Prop :=
  ∀ n, (P9412210516123214554.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P4417035235790263813

`∑{p}[p?[a(n-1)+49], #]` with `a(0)=12`
-/

namespace A142424.P4417035235790263813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142424.P4417035235790263813

namespace A142424

/-- `∑{p}[p?[a(n-1)+49], #]` -/
def P4417035235790263813.Spec : Prop :=
  ∀ n, (P4417035235790263813.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P17984894311646869793

`∏{p}[p?[a(n-1)+49], #]` with `a(0)=12`
-/

namespace A142424.P17984894311646869793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142424.P17984894311646869793

namespace A142424

/-- `∏{p}[p?[a(n-1)+49], #]` -/
def P17984894311646869793.Spec : Prop :=
  ∀ n, (P17984894311646869793.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P12273098166099649273

`or(1, p?[A304205(n+1)])`
-/

namespace A142424.P12273098166099649273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142424.P12273098166099649273

namespace A142424

/-- `or(1, p?[A304205(n+1)])` -/
def P12273098166099649273.Spec : Prop :=
  ∀ n, P12273098166099649273.a n = A142424 (n + 1)

end A142424

/-! ## A142424.P2320946701370963077

`A000027(p?[A304205(n+1)])`
-/

namespace A142424.P2320946701370963077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142424.P2320946701370963077

namespace A142424

/-- `A000027(p?[A304205(n+1)])` -/
def P2320946701370963077.Spec : Prop :=
  ∀ n, P2320946701370963077.a n = A142424 (n + 1)

end A142424

/-! ## A142424.P1438310364126884006

`∩[A045447(n+1), A304205(n+1)]`
-/

namespace A142424.P1438310364126884006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P1438310364126884006

namespace A142424

/-- `∩[A045447(n+1), A304205(n+1)]` -/
def P1438310364126884006.Spec : Prop :=
  ∀ n, (P1438310364126884006.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P1832164311244522236

`∩[A045458(n+1), A304205(n+1)]`
-/

namespace A142424.P1832164311244522236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P1832164311244522236

namespace A142424

/-- `∩[A045458(n+1), A304205(n+1)]` -/
def P1832164311244522236.Spec : Prop :=
  ∀ n, (P1832164311244522236.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P11899104713125813838

`p?[A304205(n+1)]%A224137(n+1)`
-/

namespace A142424.P11899104713125813838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A224137 (n + 1))

end

end A142424.P11899104713125813838

namespace A142424

/-- `p?[A304205(n+1)]%A224137(n+1)` -/
def P11899104713125813838.Spec : Prop :=
  ∀ n, P11899104713125813838.a n = A142424 (n + 1)

end A142424

/-! ## A142424.P3965762545495851023

`∩[A004623(n+1), A304205(n+1)]`
-/

namespace A142424.P3965762545495851023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P3965762545495851023

namespace A142424

/-- `∩[A004623(n+1), A304205(n+1)]` -/
def P3965762545495851023.Spec : Prop :=
  ∀ n, (P3965762545495851023.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P18293090555932916565

`∩[A045359(n+1), A304205(n+1)]`
-/

namespace A142424.P18293090555932916565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P18293090555932916565

namespace A142424

/-- `∩[A045359(n+1), A304205(n+1)]` -/
def P18293090555932916565.Spec : Prop :=
  ∀ n, (P18293090555932916565.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P16244098733326138059

`∩[A045368(n+1), A304205(n+1)]`
-/

namespace A142424.P16244098733326138059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P16244098733326138059

namespace A142424

/-- `∩[A045368(n+1), A304205(n+1)]` -/
def P16244098733326138059.Spec : Prop :=
  ∀ n, (P16244098733326138059.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P17615194596568937497

`∩[A045446(n+1), A304205(n+1)]`
-/

namespace A142424.P17615194596568937497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P17615194596568937497

namespace A142424

/-- `∩[A045446(n+1), A304205(n+1)]` -/
def P17615194596568937497.Spec : Prop :=
  ∀ n, (P17615194596568937497.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P7629352566082804678

`∩[A045456(n+1), A304205(n+1)]`
-/

namespace A142424.P7629352566082804678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P7629352566082804678

namespace A142424

/-- `∩[A045456(n+1), A304205(n+1)]` -/
def P7629352566082804678.Spec : Prop :=
  ∀ n, (P7629352566082804678.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P918268926570139953

`∩[A045401(n+1), A304205(n+1)]`
-/

namespace A142424.P918268926570139953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P918268926570139953

namespace A142424

/-- `∩[A045401(n+1), A304205(n+1)]` -/
def P918268926570139953.Spec : Prop :=
  ∀ n, (P918268926570139953.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P3010911502813776127

`∩[A045416(n+1), A304205(n+1)]`
-/

namespace A142424.P3010911502813776127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P3010911502813776127

namespace A142424

/-- `∩[A045416(n+1), A304205(n+1)]` -/
def P3010911502813776127.Spec : Prop :=
  ∀ n, (P3010911502813776127.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P12434395774781633372

`∩[A045441(n+1), A304205(n+1)]`
-/

namespace A142424.P12434395774781633372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P12434395774781633372

namespace A142424

/-- `∩[A045441(n+1), A304205(n+1)]` -/
def P12434395774781633372.Spec : Prop :=
  ∀ n, (P12434395774781633372.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P6336915448346171584

`∩[A045452(n+1), A304205(n+1)]`
-/

namespace A142424.P6336915448346171584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P6336915448346171584

namespace A142424

/-- `∩[A045452(n+1), A304205(n+1)]` -/
def P6336915448346171584.Spec : Prop :=
  ∀ n, (P6336915448346171584.a n : ℤ) = A142424 (n + 1)

end A142424

/-! ## A142424.P1436784216979329717

`∩[A045444(n+1), A304205(n+1)]`
-/

namespace A142424.P1436784216979329717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142424.P1436784216979329717

namespace A142424

/-- `∩[A045444(n+1), A304205(n+1)]` -/
def P1436784216979329717.Spec : Prop :=
  ∀ n, (P1436784216979329717.a n : ℤ) = A142424 (n + 1)

end A142424

/-!
# A142425: Primes congruent to 13 mod 49.

The programs for A142425, the canonical program `A142425.P10894764248669936739` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142425 has offset 1).

The definition of A142425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1888 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142425.P10894764248669936739

`p?[49*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142425

/-- `p?[49*n+13]` -/
def P10894764248669936739.Spec : Prop :=
  ∀ n, (P10894764248669936739.a n : ℤ) = A142425 (n + 1)

theorem P10894764248669936739.correct : P10894764248669936739.Spec := by
  intro n
  simp only [A142425, Nat.add_sub_cancel]

end A142425

/-! ## A142425.P18436005017610030802

`A000027(p?[A304205(n+1)+1])`
-/

namespace A142425.P18436005017610030802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142425.P18436005017610030802

namespace A142425

/-- `A000027(p?[A304205(n+1)+1])` -/
def P18436005017610030802.Spec : Prop :=
  ∀ n, P18436005017610030802.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P7664228923565975924

`or(p?[A304205(n+1)+1], A000007(n))`
-/

namespace A142425.P7664228923565975924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142425.P7664228923565975924

namespace A142425

/-- `or(p?[A304205(n+1)+1], A000007(n))` -/
def P7664228923565975924.Spec : Prop :=
  ∀ n, P7664228923565975924.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P13337048551170441984

`or(p?[A304205(n+1)+1], A000035(n))`
-/

namespace A142425.P13337048551170441984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142425.P13337048551170441984

namespace A142425

/-- `or(p?[A304205(n+1)+1], A000035(n))` -/
def P13337048551170441984.Spec : Prop :=
  ∀ n, P13337048551170441984.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P17502067415884318658

`∩[A045444(n+1), A304205(n+1)+1]`
-/

namespace A142425.P17502067415884318658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142425.P17502067415884318658

namespace A142425

/-- `∩[A045444(n+1), A304205(n+1)+1]` -/
def P17502067415884318658.Spec : Prop :=
  ∀ n, (P17502067415884318658.a n : ℤ) = A142425 (n + 1)

end A142425

/-! ## A142425.P2141188887596754088

`record[A020639(A304205(n+1)+1)]`
-/

namespace A142425.P2141188887596754088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142425.P2141188887596754088

namespace A142425

/-- `record[A020639(A304205(n+1)+1)]` -/
def P2141188887596754088.Spec : Prop :=
  ∀ n, P2141188887596754088.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P16132468275945560810

`A000265(p?[A304205(n+1)+1])`
-/

namespace A142425.P16132468275945560810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142425.P16132468275945560810

namespace A142425

/-- `A000265(p?[A304205(n+1)+1])` -/
def P16132468275945560810.Spec : Prop :=
  ∀ n, P16132468275945560810.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P196123752687244660

`A007947(p?[A304205(n+1)+1])`
-/

namespace A142425.P196123752687244660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142425.P196123752687244660

namespace A142425

/-- `A007947(p?[A304205(n+1)+1])` -/
def P196123752687244660.Spec : Prop :=
  ∀ n, P196123752687244660.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P6136048127137808619

`A020639(or(1, p?[A304205(n+1)+1]))`
-/

namespace A142425.P6136048127137808619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A142425.P6136048127137808619

namespace A142425

/-- `A020639(or(1, p?[A304205(n+1)+1]))` -/
def P6136048127137808619.Spec : Prop :=
  ∀ n, P6136048127137808619.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P9111466804936550333

`record[A020639(A045809(2*n+1)-n)]`
-/

namespace A142425.P9111466804936550333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045809 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142425.P9111466804936550333

namespace A142425

/-- `record[A020639(A045809(2*n+1)-n)]` -/
def P9111466804936550333.Spec : Prop :=
  ∀ n, P9111466804936550333.a n = A142425 (n + 1)

end A142425

/-! ## A142425.P14146495899443420675

`record[A020639(A017005(A017005(n))-3)]`
-/

namespace A142425.P14146495899443420675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017005 (A017005 n).toNat - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142425.P14146495899443420675

namespace A142425

/-- `record[A020639(A017005(A017005(n))-3)]` -/
def P14146495899443420675.Spec : Prop :=
  ∀ n, P14146495899443420675.a n = A142425 (n + 1)

end A142425

/-!
# A142426: Primes congruent to 15 mod 49.

The programs for A142426, the canonical program `A142426.P3751954481335393160` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142426 has offset 1).

The definition of A142426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142426.P3751954481335393160

`p?[49*n+15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142426

/-- `p?[49*n+15]` -/
def P3751954481335393160.Spec : Prop :=
  ∀ n, (P3751954481335393160.a n : ℤ) = A142426 (n + 1)

theorem P3751954481335393160.correct : P3751954481335393160.Spec := by
  intro n
  simp only [A142426, Nat.add_sub_cancel]

end A142426

/-! ## A142426.P16698047751676030711

`A000027(p?[A304205(n+1)+3])`
-/

namespace A142426.P16698047751676030711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P16698047751676030711

namespace A142426

/-- `A000027(p?[A304205(n+1)+3])` -/
def P16698047751676030711.Spec : Prop :=
  ∀ n, P16698047751676030711.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P11150815068299687205

`A001414(p?[A304205(n+1)+3])`
-/

namespace A142426.P11150815068299687205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P11150815068299687205

namespace A142426

/-- `A001414(p?[A304205(n+1)+3])` -/
def P11150815068299687205.Spec : Prop :=
  ∀ n, P11150815068299687205.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P1034033191464820937

`A007947(p?[A304205(n+1)+3])`
-/

namespace A142426.P1034033191464820937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P1034033191464820937

namespace A142426

/-- `A007947(p?[A304205(n+1)+3])` -/
def P1034033191464820937.Spec : Prop :=
  ∀ n, P1034033191464820937.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P2552469721349581586

`A008472(p?[A304205(n+1)+3])`
-/

namespace A142426.P2552469721349581586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P2552469721349581586

namespace A142426

/-- `A008472(p?[A304205(n+1)+3])` -/
def P2552469721349581586.Spec : Prop :=
  ∀ n, P2552469721349581586.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P9598302436125644471

`record[A006530(A157947(n+1)+14)]`
-/

namespace A142426.P9598302436125644471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157947 (n + 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142426.P9598302436125644471

namespace A142426

/-- `record[A006530(A157947(n+1)+14)]` -/
def P9598302436125644471.Spec : Prop :=
  ∀ n, P9598302436125644471.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P17179258130527332884

`record[A020639(A157947(n+1)+14)]`
-/

namespace A142426.P17179258130527332884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142426.P17179258130527332884

namespace A142426

/-- `record[A020639(A157947(n+1)+14)]` -/
def P17179258130527332884.Spec : Prop :=
  ∀ n, P17179258130527332884.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P7459436460924774845

`record[A006530(A157924(n+1)+16)]`
-/

namespace A142426.P7459436460924774845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157924 (n + 1) + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142426.P7459436460924774845

namespace A142426

/-- `record[A006530(A157924(n+1)+16)]` -/
def P7459436460924774845.Spec : Prop :=
  ∀ n, P7459436460924774845.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P3630400838771511235

`∩[A140444(n+1), A016993(A016993(n)+1)]`
-/

namespace A142426.P3630400838771511235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142426.P3630400838771511235

namespace A142426

/-- `∩[A140444(n+1), A016993(A016993(n)+1)]` -/
def P3630400838771511235.Spec : Prop :=
  ∀ n, (P3630400838771511235.a n : ℤ) = A142426 (n + 1)

end A142426

/-! ## A142426.P9851301528639812701

`A125746(p?[A304205(n+1)+3])`
-/

namespace A142426.P9851301528639812701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P9851301528639812701

namespace A142426

/-- `A125746(p?[A304205(n+1)+3])` -/
def P9851301528639812701.Spec : Prop :=
  ∀ n, P9851301528639812701.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P11418484288776677252

`A318456(p?[A304205(n+1)+3])`
-/

namespace A142426.P11418484288776677252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142426.P11418484288776677252

namespace A142426

/-- `A318456(p?[A304205(n+1)+3])` -/
def P11418484288776677252.Spec : Prop :=
  ∀ n, P11418484288776677252.a n = A142426 (n + 1)

end A142426

/-! ## A142426.P6798920709953030994

`record[A006530(A158225(n+1)+31)]`
-/

namespace A142426.P6798920709953030994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158225 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142426.P6798920709953030994

namespace A142426

/-- `record[A006530(A158225(n+1)+31)]` -/
def P6798920709953030994.Spec : Prop :=
  ∀ n, P6798920709953030994.a n = A142426 (n + 1)

end A142426

/-!
# A142427: Primes congruent to 16 mod 49.

The programs for A142427, the canonical program `A142427.P5704172479571554384` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142427 has offset 1).

The definition of A142427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142427.P5704172479571554384

`p?[49*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142427

/-- `p?[49*n+16]` -/
def P5704172479571554384.Spec : Prop :=
  ∀ n, (P5704172479571554384.a n : ℤ) = A142427 (n + 1)

theorem P5704172479571554384.correct : P5704172479571554384.Spec := by
  intro n
  simp only [A142427, Nat.add_sub_cancel]

end A142427

/-! ## A142427.P17168789807463482472

`A000027(p?[A157947(n+1)+64])`
-/

namespace A142427.P17168789807463482472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P17168789807463482472

namespace A142427

/-- `A000027(p?[A157947(n+1)+64])` -/
def P17168789807463482472.Spec : Prop :=
  ∀ n, P17168789807463482472.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P1657533457931300113

`or(1, p?[A304205(n+1)+4])`
-/

namespace A142427.P1657533457931300113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142427.P1657533457931300113

namespace A142427

/-- `or(1, p?[A304205(n+1)+4])` -/
def P1657533457931300113.Spec : Prop :=
  ∀ n, P1657533457931300113.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P11095461197304258533

`A000027(p?[A304205(n+1)+4])`
-/

namespace A142427.P11095461197304258533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P11095461197304258533

namespace A142427

/-- `A000027(p?[A304205(n+1)+4])` -/
def P11095461197304258533.Spec : Prop :=
  ∀ n, P11095461197304258533.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P6616044066700564493

`A000027(p?[A158066(n+1)+64])`
-/

namespace A142427.P6616044066700564493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P6616044066700564493

namespace A142427

/-- `A000027(p?[A158066(n+1)+64])` -/
def P6616044066700564493.Spec : Prop :=
  ∀ n, P6616044066700564493.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P15762562015751654989

`or(p?[A158066(n+1)+64], A000007(n))`
-/

namespace A142427.P15762562015751654989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142427.P15762562015751654989

namespace A142427

/-- `or(p?[A158066(n+1)+64], A000007(n))` -/
def P15762562015751654989.Spec : Prop :=
  ∀ n, P15762562015751654989.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P11543354313613862728

`or(p?[A158066(n+1)+64], A168046(n))`
-/

namespace A142427.P11543354313613862728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A168046 n)

end

end A142427.P11543354313613862728

namespace A142427

/-- `or(p?[A158066(n+1)+64], A168046(n))` -/
def P11543354313613862728.Spec : Prop :=
  ∀ n, P11543354313613862728.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P18020913566113308755

`A000265(p?[A304205(n+1)+4])`
-/

namespace A142427.P18020913566113308755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P18020913566113308755

namespace A142427

/-- `A000265(p?[A304205(n+1)+4])` -/
def P18020913566113308755.Spec : Prop :=
  ∀ n, P18020913566113308755.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P4398472667300755656

`A001414(p?[A304205(n+1)+4])`
-/

namespace A142427.P4398472667300755656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P4398472667300755656

namespace A142427

/-- `A001414(p?[A304205(n+1)+4])` -/
def P4398472667300755656.Spec : Prop :=
  ∀ n, P4398472667300755656.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P7444818067883882025

`A007947(p?[A304205(n+1)+4])`
-/

namespace A142427.P7444818067883882025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P7444818067883882025

namespace A142427

/-- `A007947(p?[A304205(n+1)+4])` -/
def P7444818067883882025.Spec : Prop :=
  ∀ n, P7444818067883882025.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P17619117005793491427

`A007947(p?[A158066(n+1)+15])`
-/

namespace A142427.P17619117005793491427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P17619117005793491427

namespace A142427

/-- `A007947(p?[A158066(n+1)+15])` -/
def P17619117005793491427.Spec : Prop :=
  ∀ n, P17619117005793491427.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P6516630745786130550

`record[A020639(A157947(n+1)+64)]`
-/

namespace A142427.P6516630745786130550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) + 64).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142427.P6516630745786130550

namespace A142427

/-- `record[A020639(A157947(n+1)+64)]` -/
def P6516630745786130550.Spec : Prop :=
  ∀ n, P6516630745786130550.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P17107990777912162422

`A000265(p?[A157947(n+1)+64])`
-/

namespace A142427.P17107990777912162422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P17107990777912162422

namespace A142427

/-- `A000265(p?[A157947(n+1)+64])` -/
def P17107990777912162422.Spec : Prop :=
  ∀ n, P17107990777912162422.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P11701436169277419804

`A000265(p?[A158066(n+1)+64])`
-/

namespace A142427.P11701436169277419804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P11701436169277419804

namespace A142427

/-- `A000265(p?[A158066(n+1)+64])` -/
def P11701436169277419804.Spec : Prop :=
  ∀ n, P11701436169277419804.a n = A142427 (n + 1)

end A142427

/-! ## A142427.P11612388548587103364

`∩[A045383(n+1), A056022(n+1)-2]`
-/

namespace A142427.P11612388548587103364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142427.P11612388548587103364

namespace A142427

/-- `∩[A045383(n+1), A056022(n+1)-2]` -/
def P11612388548587103364.Spec : Prop :=
  ∀ n, (P11612388548587103364.a n : ℤ) = A142427 (n + 1)

end A142427

/-! ## A142427.P10482002369546715508

`∩[A056022(2*(n+1))-2, A045392(n+2)]`
-/

namespace A142427.P10482002369546715508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142427.P10482002369546715508

namespace A142427

/-- `∩[A056022(2*(n+1))-2, A045392(n+2)]` -/
def P10482002369546715508.Spec : Prop :=
  ∀ n, (P10482002369546715508.a n : ℤ) = A142427 (n + 1)

end A142427

/-! ## A142427.P9404493817691844262

`∩[A056022(2*(n+1))-2, A140442(n+2)]`
-/

namespace A142427.P9404493817691844262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142427.P9404493817691844262

namespace A142427

/-- `∩[A056022(2*(n+1))-2, A140442(n+2)]` -/
def P9404493817691844262.Spec : Prop :=
  ∀ n, (P9404493817691844262.a n : ℤ) = A142427 (n + 1)

end A142427

/-! ## A142427.P17079111888858633192

`A125746(p?[A304205(n+1)+4])`
-/

namespace A142427.P17079111888858633192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142427.P17079111888858633192

namespace A142427

/-- `A125746(p?[A304205(n+1)+4])` -/
def P17079111888858633192.Spec : Prop :=
  ∀ n, P17079111888858633192.a n = A142427 (n + 1)

end A142427

/-!
# A142428: Primes congruent to 17 mod 49.

The programs for A142428, the canonical program `A142428.P11246402185100572239` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142428 has offset 1).

The definition of A142428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142428.P11246402185100572239

`p?[49*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142428

/-- `p?[49*n+17]` -/
def P11246402185100572239.Spec : Prop :=
  ∀ n, (P11246402185100572239.a n : ℤ) = A142428 (n + 1)

theorem P11246402185100572239.correct : P11246402185100572239.Spec := by
  intro n
  simp only [A142428, Nat.add_sub_cancel]

end A142428

/-! ## A142428.P17875812241225253124

`p?[A304205(n+1)+5]/(1-4/2)²`
-/

namespace A142428.P17875812241225253124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (1 - (4 : ℚ) / 2) ^ 2

end

end A142428.P17875812241225253124

namespace A142428

/-- `p?[A304205(n+1)+5]/(1-4/2)²` -/
def P17875812241225253124.Spec : Prop :=
  ∀ n, P17875812241225253124.a n = (A142428 (n + 1) : ℚ)

end A142428

/-! ## A142428.P13247136904284359698

`p?[A304205(n+1)+5]%A016972(n)`
-/

namespace A142428.P13247136904284359698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016972 n)

end

end A142428.P13247136904284359698

namespace A142428

/-- `p?[A304205(n+1)+5]%A016972(n)` -/
def P13247136904284359698.Spec : Prop :=
  ∀ n, P13247136904284359698.a n = A142428 (n + 1)

end A142428

/-! ## A142428.P18229764438937698409

`record[A020639(49*n+17)]`
-/

namespace A142428.P18229764438937698409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142428.P18229764438937698409

namespace A142428

/-- `record[A020639(49*n+17)]` -/
def P18229764438937698409.Spec : Prop :=
  ∀ n, P18229764438937698409.a n = A142428 (n + 1)

end A142428

/-! ## A142428.P5701790826765994451

`A000265(p?[A304205(n+1)+5])`
-/

namespace A142428.P5701790826765994451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142428.P5701790826765994451

namespace A142428

/-- `A000265(p?[A304205(n+1)+5])` -/
def P5701790826765994451.Spec : Prop :=
  ∀ n, P5701790826765994451.a n = A142428 (n + 1)

end A142428

/-! ## A142428.P1042397616349151455

`A007947(p?[A304205(n+1)+5])`
-/

namespace A142428.P1042397616349151455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142428.P1042397616349151455

namespace A142428

/-- `A007947(p?[A304205(n+1)+5])` -/
def P1042397616349151455.Spec : Prop :=
  ∀ n, P1042397616349151455.a n = A142428 (n + 1)

end A142428

/-!
# A142429: Primes congruent to 18 mod 49.

The programs for A142429, the canonical program `A142429.P13259812496142464532` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142429 has offset 1).

The definition of A142429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142429.P13259812496142464532

`p?[49*n+18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142429

/-- `p?[49*n+18]` -/
def P13259812496142464532.Spec : Prop :=
  ∀ n, (P13259812496142464532.a n : ℤ) = A142429 (n + 1)

theorem P13259812496142464532.correct : P13259812496142464532.Spec := by
  intro n
  simp only [A142429, Nat.add_sub_cancel]

end A142429

/-! ## A142429.P4654160297153059851

`∏{d}[p?[49*n-31], #]`
-/

namespace A142429.P4654160297153059851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 31

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142429.P4654160297153059851

namespace A142429

/-- `∏{d}[p?[49*n-31], #]` -/
def P4654160297153059851.Spec : Prop :=
  ∀ n, (P4654160297153059851.a n : ℤ) = A142429 (n + 1)

end A142429

/-! ## A142429.P4264137805952304764

`or(1, p?[A053741(abs(2-n))-n])`
-/

namespace A142429.P4264137805952304764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 |2 - (n : ℤ)|.toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142429.P4264137805952304764

namespace A142429

/-- `or(1, p?[A053741(abs(2-n))-n])` -/
def P4264137805952304764.Spec : Prop :=
  ∀ n, P4264137805952304764.a n = A142429 (n + 1)

end A142429

/-! ## A142429.P1782182720908279535

`record[A020639(A157947(n+1)-32)]`
-/

namespace A142429.P1782182720908279535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) - 32).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142429.P1782182720908279535

namespace A142429

/-- `record[A020639(A157947(n+1)-32)]` -/
def P1782182720908279535.Spec : Prop :=
  ∀ n, P1782182720908279535.a n = A142429 (n + 1)

end A142429

/-! ## A142429.P5000039750134505934

`record[A006530(A157330(2*(n+1))-A128473(n+2))]`
-/

namespace A142429.P5000039750134505934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157330 (2 * (n + 1)) - A128473 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142429.P5000039750134505934

namespace A142429

/-- `record[A006530(A157330(2*(n+1))-A128473(n+2))]` -/
def P5000039750134505934.Spec : Prop :=
  ∀ n, P5000039750134505934.a n = A142429 (n + 1)

end A142429

/-! ## A142429.P15929314782174683045

`record[A020639(A157330(2*(n+1))-A128473(n+2))]`
-/

namespace A142429.P15929314782174683045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157330 (2 * (n + 1)) - A128473 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142429.P15929314782174683045

namespace A142429

/-- `record[A020639(A157330(2*(n+1))-A128473(n+2))]` -/
def P15929314782174683045.Spec : Prop :=
  ∀ n, P15929314782174683045.a n = A142429 (n + 1)

end A142429

/-! ## A142429.P14543306685565976533

`record[A020639(A017029(A017005(n+1)))]`
-/

namespace A142429.P14543306685565976533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017029 (A017005 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142429.P14543306685565976533

namespace A142429

/-- `record[A020639(A017029(A017005(n+1)))]` -/
def P14543306685565976533.Spec : Prop :=
  ∀ n, P14543306685565976533.a n = A142429 (n + 1)

end A142429

/-!
# A142430: Primes congruent to 19 mod 49.

The programs for A142430, the canonical program `A142430.P1326271075177512410` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142430 has offset 1).

The definition of A142430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142430.P1326271075177512410

`p?[49*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142430

/-- `p?[49*n+19]` -/
def P1326271075177512410.Spec : Prop :=
  ∀ n, (P1326271075177512410.a n : ℤ) = A142430 (n + 1)

theorem P1326271075177512410.correct : P1326271075177512410.Spec := by
  intro n
  simp only [A142430, Nat.add_sub_cancel]

end A142430

/-! ## A142430.P6483107895604149289

`or(1, p?[A053741(abs(1-n))-n])`
-/

namespace A142430.P6483107895604149289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 |1 - (n : ℤ)|.toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142430.P6483107895604149289

namespace A142430

/-- `or(1, p?[A053741(abs(1-n))-n])` -/
def P6483107895604149289.Spec : Prop :=
  ∀ n, P6483107895604149289.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P9430706004229918988

`∩[A056022(2*n+1)+A056022(2*(n+1)), A045458(n+2)]`
-/

namespace A142430.P9430706004229918988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * n + 1) + A056022 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142430.P9430706004229918988

namespace A142430

/-- `∩[A056022(2*n+1)+A056022(2*(n+1)), A045458(n+2)]` -/
def P9430706004229918988.Spec : Prop :=
  ∀ n, (P9430706004229918988.a n : ℤ) = A142430 (n + 1)

end A142430

/-! ## A142430.P5259497968245087275

`∑{d}[p?[a(n-1)+49], A003958(#)]` with `a(0)=19`
-/

namespace A142430.P5259497968245087275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d

end

end A142430.P5259497968245087275

namespace A142430

/-- `∑{d}[p?[a(n-1)+49], A003958(#)]` -/
def P5259497968245087275.Spec : Prop :=
  ∀ n, P5259497968245087275.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P7269478245513773411

`record[A020639(A304205(n+1)+7)]`
-/

namespace A142430.P7269478245513773411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142430.P7269478245513773411

namespace A142430

/-- `record[A020639(A304205(n+1)+7)]` -/
def P7269478245513773411.Spec : Prop :=
  ∀ n, P7269478245513773411.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P64646105728785680

`record[A020639(A053741(n)-(n+1))]`
-/

namespace A142430.P64646105728785680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053741 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142430.P64646105728785680

namespace A142430

/-- `record[A020639(A053741(n)-(n+1))]` -/
def P64646105728785680.Spec : Prop :=
  ∀ n, P64646105728785680.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P12296998501053818495

`record[A020639(A161709(n)+A124388(n))]`
-/

namespace A142430.P12296998501053818495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161709 n + A124388 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142430.P12296998501053818495

namespace A142430

/-- `record[A020639(A161709(n)+A124388(n))]` -/
def P12296998501053818495.Spec : Prop :=
  ∀ n, P12296998501053818495.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P4962038545597257366

`record[A020639(A304158(n+1)-A017449(n))]`
-/

namespace A142430.P4962038545597257366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304158 (n + 1) - A017449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142430.P4962038545597257366

namespace A142430

/-- `record[A020639(A304158(n+1)-A017449(n))]` -/
def P4962038545597257366.Spec : Prop :=
  ∀ n, P4962038545597257366.a n = A142430 (n + 1)

end A142430

/-! ## A142430.P3557864151003240544

`∩[A045458(n+1), A056022(n+1)]`
-/

namespace A142430.P3557864151003240544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142430.P3557864151003240544

namespace A142430

/-- `∩[A045458(n+1), A056022(n+1)]` -/
def P3557864151003240544.Spec : Prop :=
  ∀ n, (P3557864151003240544.a n : ℤ) = A142430 (n + 1)

end A142430

/-! ## A142430.P13979838762861642491

`record[A020639(A017005(A017005(n))+3)]`
-/

namespace A142430.P13979838762861642491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017005 (A017005 n).toNat + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142430.P13979838762861642491

namespace A142430

/-- `record[A020639(A017005(A017005(n))+3)]` -/
def P13979838762861642491.Spec : Prop :=
  ∀ n, P13979838762861642491.a n = A142430 (n + 1)

end A142430

/-!
# A142431: Primes congruent to 20 mod 49.

The programs for A142431, the canonical program `A142431.P7787216754401770038` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142431 has offset 1).

The definition of A142431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142431.P7787216754401770038

`p?[49*n+20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142431

/-- `p?[49*n+20]` -/
def P7787216754401770038.Spec : Prop :=
  ∀ n, (P7787216754401770038.a n : ℤ) = A142431 (n + 1)

theorem P7787216754401770038.correct : P7787216754401770038.Spec := by
  intro n
  simp only [A142431, Nat.add_sub_cancel]

end A142431

/-! ## A142431.P15798576697474191052

`A000027(p?[A157924(n+1)-28])`
-/

namespace A142431.P15798576697474191052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142431.P15798576697474191052

namespace A142431

/-- `A000027(p?[A157924(n+1)-28])` -/
def P15798576697474191052.Spec : Prop :=
  ∀ n, P15798576697474191052.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P13547446638840573203

`∑{d}[p?[A053741(n)-n], #]-1`
-/

namespace A142431.P13547446638840573203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A142431.P13547446638840573203

namespace A142431

/-- `∑{d}[p?[A053741(n)-n], #]-1` -/
def P13547446638840573203.Spec : Prop :=
  ∀ n, P13547446638840573203.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P12636888394232939643

`root(p?[A158066(n+1)+19], 2)²`
-/

namespace A142431.P12636888394232939643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 19

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A142431.P12636888394232939643

namespace A142431

/-- `root(p?[A158066(n+1)+19], 2)²` -/
def P12636888394232939643.Spec : Prop :=
  ∀ n, P12636888394232939643.a n = (A142431 (n + 1) : ℝ)

end A142431

/-! ## A142431.P13930385713856104944

`A000027(p?[A304205(n+1)+8])`
-/

namespace A142431.P13930385713856104944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142431.P13930385713856104944

namespace A142431

/-- `A000027(p?[A304205(n+1)+8])` -/
def P13930385713856104944.Spec : Prop :=
  ∀ n, P13930385713856104944.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P9296925920650762493

`A000007(n+1)+p?[A158066(n+1)+19]`
-/

namespace A142431.P9296925920650762493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142431.P9296925920650762493

namespace A142431

/-- `A000007(n+1)+p?[A158066(n+1)+19]` -/
def P9296925920650762493.Spec : Prop :=
  ∀ n, P9296925920650762493.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P11963545793799594213

`char[A204791(n+1)]+p?[A158066(n+1)+19]`
-/

namespace A142431.P11963545793799594213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142431.P11963545793799594213

namespace A142431

/-- `char[A204791(n+1)]+p?[A158066(n+1)+19]` -/
def P11963545793799594213.Spec : Prop :=
  ∀ n, P11963545793799594213.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P8670755399042960126

`A105700(A014613(n+1))+p?[A304205(n+1)+8]`
-/

namespace A142431.P8670755399042960126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A014613 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142431.P8670755399042960126

namespace A142431

/-- `A105700(A014613(n+1))+p?[A304205(n+1)+8]` -/
def P8670755399042960126.Spec : Prop :=
  ∀ n, P8670755399042960126.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P12532441789701352456

`p?[A304205(n+1)+8]/A054576(A008578(n+1))`
-/

namespace A142431.P12532441789701352456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A054576 (A008578 (n + 1)).toNat : ℚ)

end

end A142431.P12532441789701352456

namespace A142431

/-- `p?[A304205(n+1)+8]/A054576(A008578(n+1))` -/
def P12532441789701352456.Spec : Prop :=
  ∀ n, P12532441789701352456.a n = (A142431 (n + 1) : ℚ)

end A142431

/-! ## A142431.P12275226207165936880

`p?[A304205(n+1)+8]/A001222(A106349(n+1))`
-/

namespace A142431.P12275226207165936880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001222 (A106349 (n + 1)).toNat : ℚ)

end

end A142431.P12275226207165936880

namespace A142431

/-- `p?[A304205(n+1)+8]/A001222(A106349(n+1))` -/
def P12275226207165936880.Spec : Prop :=
  ∀ n, P12275226207165936880.a n = (A142431 (n + 1) : ℚ)

end A142431

/-! ## A142431.P11663268665229530872

`∩[A156674(2*n+1)-A156674(n+2), A042990(n+1)]`
-/

namespace A142431.P11663268665229530872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142431.P11663268665229530872

namespace A142431

/-- `∩[A156674(2*n+1)-A156674(n+2), A042990(n+1)]` -/
def P11663268665229530872.Spec : Prop :=
  ∀ n, (P11663268665229530872.a n : ℤ) = A142431 (n + 1)

end A142431

/-! ## A142431.P8769703700741998776

`∩[A156674(2*n+1)-A156674(n+2), A045423(n+2)]`
-/

namespace A142431.P8769703700741998776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142431.P8769703700741998776

namespace A142431

/-- `∩[A156674(2*n+1)-A156674(n+2), A045423(n+2)]` -/
def P8769703700741998776.Spec : Prop :=
  ∀ n, (P8769703700741998776.a n : ℤ) = A142431 (n + 1)

end A142431

/-! ## A142431.P1112952430778310807

`∩[A156674(2*n+1)-A156674(n+2), A045460(n+2)]`
-/

namespace A142431.P1112952430778310807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142431.P1112952430778310807

namespace A142431

/-- `∩[A156674(2*n+1)-A156674(n+2), A045460(n+2)]` -/
def P1112952430778310807.Spec : Prop :=
  ∀ n, (P1112952430778310807.a n : ℤ) = A142431 (n + 1)

end A142431

/-! ## A142431.P6522876950667442995

`∩[A156674(2*n+1)-A156674(n+2), A045467(n+2)]`
-/

namespace A142431.P6522876950667442995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * n + 1) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142431.P6522876950667442995

namespace A142431

/-- `∩[A156674(2*n+1)-A156674(n+2), A045467(n+2)]` -/
def P6522876950667442995.Spec : Prop :=
  ∀ n, (P6522876950667442995.a n : ℤ) = A142431 (n + 1)

end A142431

/-! ## A142431.P11782659855491440650

`A007947(p?[A158066(n+1)+19])`
-/

namespace A142431.P11782659855491440650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142431.P11782659855491440650

namespace A142431

/-- `A007947(p?[A158066(n+1)+19])` -/
def P11782659855491440650.Spec : Prop :=
  ∀ n, P11782659855491440650.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P12307533470650464251

`A007947(p?[A157947(n+1)-30])`
-/

namespace A142431.P12307533470650464251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142431.P12307533470650464251

namespace A142431

/-- `A007947(p?[A157947(n+1)-30])` -/
def P12307533470650464251.Spec : Prop :=
  ∀ n, P12307533470650464251.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P4961535016879533441

`∑{d}[p?[A304205(n+1)+8], A000010(#)]`
-/

namespace A142431.P4961535016879533441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142431.P4961535016879533441

namespace A142431

/-- `∑{d}[p?[A304205(n+1)+8], A000010(#)]` -/
def P4961535016879533441.Spec : Prop :=
  ∀ n, P4961535016879533441.a n = A142431 (n + 1)

end A142431

/-! ## A142431.P14773591281375604961

`record[A020639(A157368(n+3)-A157368(n+2))]`
-/

namespace A142431.P14773591281375604961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157368 (n + 3) - A157368 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142431.P14773591281375604961

namespace A142431

/-- `record[A020639(A157368(n+3)-A157368(n+2))]` -/
def P14773591281375604961.Spec : Prop :=
  ∀ n, P14773591281375604961.a n = A142431 (n + 1)

end A142431

/-!
# A142432: Primes congruent to 22 mod 49.

The programs for A142432, the canonical program `A142432.P13033102776452484171` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142432 has offset 1).

The definition of A142432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142432.P13033102776452484171

`p?[49*n+22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142432

/-- `p?[49*n+22]` -/
def P13033102776452484171.Spec : Prop :=
  ∀ n, (P13033102776452484171.a n : ℤ) = A142432 (n + 1)

theorem P13033102776452484171.correct : P13033102776452484171.Spec := by
  intro n
  simp only [A142432, Nat.add_sub_cancel]

end A142432

/-! ## A142432.P1454395012695888555

`∏{p}[p?[a(n-1)+49], #]` with `a(0)=1, a(1)=22`
-/

namespace A142432.P1454395012695888555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n f2 =>
  f2 (n - 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142432.P1454395012695888555

namespace A142432

/-- `∏{p}[p?[a(n-1)+49], #]` -/
def P1454395012695888555.Spec : Prop :=
  ∀ n, (P1454395012695888555.a n : ℤ) = A142432 (n + 1)

end A142432

/-! ## A142432.P15557776637543650762

`A000027(p?[A304205(n+2)+10])`
-/

namespace A142432.P15557776637543650762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 2) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142432.P15557776637543650762

namespace A142432

/-- `A000027(p?[A304205(n+2)+10])` -/
def P15557776637543650762.Spec : Prop :=
  ∀ n, P15557776637543650762.a n = A142432 (n + 1)

end A142432

/-! ## A142432.P9155841530473953873

`record[A020639(A304205(n+2)+10)]`
-/

namespace A142432.P9155841530473953873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 2) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142432.P9155841530473953873

namespace A142432

/-- `record[A020639(A304205(n+2)+10)]` -/
def P9155841530473953873.Spec : Prop :=
  ∀ n, P9155841530473953873.a n = A142432 (n + 1)

end A142432

/-! ## A142432.P14179966295764375512

`A001414(p?[A304205(n+2)+10])`
-/

namespace A142432.P14179966295764375512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 2) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142432.P14179966295764375512

namespace A142432

/-- `A001414(p?[A304205(n+2)+10])` -/
def P14179966295764375512.Spec : Prop :=
  ∀ n, P14179966295764375512.a n = A142432 (n + 1)

end A142432

/-! ## A142432.P897380720414695641

`record[A020639(A157947(n+1)-28)]`
-/

namespace A142432.P897380720414695641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) - 28).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142432.P897380720414695641

namespace A142432

/-- `record[A020639(A157947(n+1)-28)]` -/
def P897380720414695641.Spec : Prop :=
  ∀ n, P897380720414695641.a n = A142432 (n + 1)

end A142432

/-! ## A142432.P3026840604473149098

`record[A020639(A016993(A017017(n+1)))]`
-/

namespace A142432.P3026840604473149098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016993 (A017017 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142432.P3026840604473149098

namespace A142432

/-- `record[A020639(A016993(A017017(n+1)))]` -/
def P3026840604473149098.Spec : Prop :=
  ∀ n, P3026840604473149098.a n = A142432 (n + 1)

end A142432

/-! ## A142432.P548507464473980104

`∩[A140444(n+1), A016993(A016993(n)+2)]`
-/

namespace A142432.P548507464473980104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142432.P548507464473980104

namespace A142432

/-- `∩[A140444(n+1), A016993(A016993(n)+2)]` -/
def P548507464473980104.Spec : Prop :=
  ∀ n, (P548507464473980104.a n : ℤ) = A142432 (n + 1)

end A142432

/-!
# A142433: Primes congruent to 23 mod 49.

The programs for A142433, the canonical program `A142433.P13028862557884119428` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142433 has offset 1).

The definition of A142433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142433.P13028862557884119428

`p?[98*n+23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142433

/-- `p?[98*n+23]` -/
def P13028862557884119428.Spec : Prop :=
  ∀ n, (P13028862557884119428.a n : ℤ) = A142433 (n + 1)

theorem P13028862557884119428.correct : P13028862557884119428.Spec := by
  intro n
  simp only [A142433, Nat.add_sub_cancel]

end A142433

/-! ## A142433.P7275240884913748347

`A000027(p?[A304205(n+1)+11])`
-/

namespace A142433.P7275240884913748347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142433.P7275240884913748347

namespace A142433

/-- `A000027(p?[A304205(n+1)+11])` -/
def P7275240884913748347.Spec : Prop :=
  ∀ n, P7275240884913748347.a n = A142433 (n + 1)

end A142433

/-! ## A142433.P8122052612923847482

`record[A020639(A304205(n+1)+11)]`
-/

namespace A142433.P8122052612923847482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142433.P8122052612923847482

namespace A142433

/-- `record[A020639(A304205(n+1)+11)]` -/
def P8122052612923847482.Spec : Prop :=
  ∀ n, P8122052612923847482.a n = A142433 (n + 1)

end A142433

/-! ## A142433.P2920154919289603422

`record[A020639(A183010(2*n+1)+n)]`
-/

namespace A142433.P2920154919289603422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A183010 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142433.P2920154919289603422

namespace A142433

/-- `record[A020639(A183010(2*n+1)+n)]` -/
def P2920154919289603422.Spec : Prop :=
  ∀ n, P2920154919289603422.a n = A142433 (n + 1)

end A142433

/-! ## A142433.P12806430044162539904

`record[A020639(A304158(n+1)-A017401(n))]`
-/

namespace A142433.P12806430044162539904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304158 (n + 1) - A017401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142433.P12806430044162539904

namespace A142433

/-- `record[A020639(A304158(n+1)-A017401(n))]` -/
def P12806430044162539904.Spec : Prop :=
  ∀ n, P12806430044162539904.a n = A142433 (n + 1)

end A142433

/-!
# A142434: Primes congruent to 24 mod 49.

The programs for A142434, the canonical program `A142434.P3630912060890464926` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142434 has offset 1).

The definition of A142434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142434.P3630912060890464926

`p?[49*n+24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142434

/-- `p?[49*n+24]` -/
def P3630912060890464926.Spec : Prop :=
  ∀ n, (P3630912060890464926.a n : ℤ) = A142434 (n + 1)

theorem P3630912060890464926.correct : P3630912060890464926.Spec := by
  intro n
  simp only [A142434, Nat.add_sub_cancel]

end A142434

/-! ## A142434.P876517424731140169

`A000027(p?[A157924(n+1)-24])`
-/

namespace A142434.P876517424731140169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142434.P876517424731140169

namespace A142434

/-- `A000027(p?[A157924(n+1)-24])` -/
def P876517424731140169.Spec : Prop :=
  ∀ n, P876517424731140169.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P8255792057013824523

`A000027(p?[A304205(n+1)+12])`
-/

namespace A142434.P8255792057013824523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142434.P8255792057013824523

namespace A142434

/-- `A000027(p?[A304205(n+1)+12])` -/
def P8255792057013824523.Spec : Prop :=
  ∀ n, P8255792057013824523.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P16641955704254865487

`A000027(p?[A053742(n)-(n+1)])`
-/

namespace A142434.P16641955704254865487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142434.P16641955704254865487

namespace A142434

/-- `A000027(p?[A053742(n)-(n+1)])` -/
def P16641955704254865487.Spec : Prop :=
  ∀ n, P16641955704254865487.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P1522901812126165530

`A000027(p?[A131738(n)+A053742(n)])`
-/

namespace A142434.P1522901812126165530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142434.P1522901812126165530

namespace A142434

/-- `A000027(p?[A131738(n)+A053742(n)])` -/
def P1522901812126165530.Spec : Prop :=
  ∀ n, P1522901812126165530.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P1585141318808189479

`record[A006530(49*(n+1)+24)]`
-/

namespace A142434.P1585141318808189479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (49 * (n + 1) + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142434.P1585141318808189479

namespace A142434

/-- `record[A006530(49*(n+1)+24)]` -/
def P1585141318808189479.Spec : Prop :=
  ∀ n, P1585141318808189479.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P13436659477708350194

`A000265(p?[A304205(n+1)+12])`
-/

namespace A142434.P13436659477708350194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142434.P13436659477708350194

namespace A142434

/-- `A000265(p?[A304205(n+1)+12])` -/
def P13436659477708350194.Spec : Prop :=
  ∀ n, P13436659477708350194.a n = A142434 (n + 1)

end A142434

/-! ## A142434.P2669740507845048012

`record[A020639(A304205(n+2)+12)]`
-/

namespace A142434.P2669740507845048012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 2) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142434.P2669740507845048012

namespace A142434

/-- `record[A020639(A304205(n+2)+12)]` -/
def P2669740507845048012.Spec : Prop :=
  ∀ n, P2669740507845048012.a n = A142434 (n + 1)

end A142434

/-!
# A142435: Primes congruent to 25 mod 49.

The programs for A142435, the canonical program `A142435.P11952639995427579839` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142435 has offset 1).

The definition of A142435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142435.P11952639995427579839

`p?[49*n-24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142435

/-- `p?[49*n-24]` -/
def P11952639995427579839.Spec : Prop :=
  ∀ n, P11952639995427579839.a n = A142435 (n + 1)

theorem P11952639995427579839.correct : P11952639995427579839.Spec := by
  intro n
  simp only [A142435, Nat.add_sub_cancel]

end A142435

/-! ## A142435.P16958890336403297139

`A000027(p?[A157947(n+1)+24])`
-/

namespace A142435.P16958890336403297139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P16958890336403297139

namespace A142435

/-- `A000027(p?[A157947(n+1)+24])` -/
def P16958890336403297139.Spec : Prop :=
  ∀ n, P16958890336403297139.a n = A142435 (n + 1)

end A142435

/-! ## A142435.P7848306888869373801

`A000027(p?[A304205(n+1)+13])`
-/

namespace A142435.P7848306888869373801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P7848306888869373801

namespace A142435

/-- `A000027(p?[A304205(n+1)+13])` -/
def P7848306888869373801.Spec : Prop :=
  ∀ n, P7848306888869373801.a n = A142435 (n + 1)

end A142435

/-! ## A142435.P1792220082214551019

`A000027(p?[A158066(n+1)+24])`
-/

namespace A142435.P1792220082214551019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P1792220082214551019

namespace A142435

/-- `A000027(p?[A158066(n+1)+24])` -/
def P1792220082214551019.Spec : Prop :=
  ∀ n, P1792220082214551019.a n = A142435 (n + 1)

end A142435

/-! ## A142435.P15195439459169437709

`A000027(p?[A183010(2*n+1)+n+2])`
-/

namespace A142435.P15195439459169437709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (2 * n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P15195439459169437709

namespace A142435

/-- `A000027(p?[A183010(2*n+1)+n+2])` -/
def P15195439459169437709.Spec : Prop :=
  ∀ n, P15195439459169437709.a n = A142435 (n + 1)

end A142435

/-! ## A142435.P9270698484162648093

`A000265(p?[A304205(n+1)+13])`
-/

namespace A142435.P9270698484162648093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P9270698484162648093

namespace A142435

/-- `A000265(p?[A304205(n+1)+13])` -/
def P9270698484162648093.Spec : Prop :=
  ∀ n, P9270698484162648093.a n = A142435 (n + 1)

end A142435

/-! ## A142435.P17539587994116937214

`A008472(p?[A304205(n+1)+62])`
-/

namespace A142435.P17539587994116937214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 62

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142435.P17539587994116937214

namespace A142435

/-- `A008472(p?[A304205(n+1)+62])` -/
def P17539587994116937214.Spec : Prop :=
  ∀ n, P17539587994116937214.a n = A142435 (n + 1)

end A142435

/-!
# A142436: Primes congruent to 26 mod 49.

The programs for A142436, the canonical program `A142436.P9981599043368276042` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142436 has offset 1).

The definition of A142436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142436.P9981599043368276042

`p?[49*n-23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142436

/-- `p?[49*n-23]` -/
def P9981599043368276042.Spec : Prop :=
  ∀ n, P9981599043368276042.a n = A142436 (n + 1)

theorem P9981599043368276042.correct : P9981599043368276042.Spec := by
  intro n
  simp only [A142436, Nat.add_sub_cancel]

end A142436

/-! ## A142436.P16041941113964934186

`A000027(p?[A053742(n)+1-n])`
-/

namespace A142436.P16041941113964934186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142436.P16041941113964934186

namespace A142436

/-- `A000027(p?[A053742(n)+1-n])` -/
def P16041941113964934186.Spec : Prop :=
  ∀ n, P16041941113964934186.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P6636577367831109806

`or(1, p?[A183010(n)+A052938(n)])`
-/

namespace A142436.P6636577367831109806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142436.P6636577367831109806

namespace A142436

/-- `or(1, p?[A183010(n)+A052938(n)])` -/
def P6636577367831109806.Spec : Prop :=
  ∀ n, P6636577367831109806.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P11612373513955380711

`A000035(4*n)+p?[A183010(n)+A052938(n)]`
-/

namespace A142436.P11612373513955380711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142436.P11612373513955380711

namespace A142436

/-- `A000035(4*n)+p?[A183010(n)+A052938(n)]` -/
def P11612373513955380711.Spec : Prop :=
  ∀ n, P11612373513955380711.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P17543324733429464649

`A007877(4*n)+p?[A183010(n)+A052938(n)]`
-/

namespace A142436.P17543324733429464649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (4 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142436.P17543324733429464649

namespace A142436

/-- `A007877(4*n)+p?[A183010(n)+A052938(n)]` -/
def P17543324733429464649.Spec : Prop :=
  ∀ n, P17543324733429464649.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P13485111631838478064

`A036987(2*(n+1))+p?[A183010(n)+A052938(n)]`
-/

namespace A142436.P13485111631838478064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142436.P13485111631838478064

namespace A142436

/-- `A036987(2*(n+1))+p?[A183010(n)+A052938(n)]` -/
def P13485111631838478064.Spec : Prop :=
  ∀ n, P13485111631838478064.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P3734801311890671597

`p?[A183010(n)+A052938(n)]*A001511(2*n+1)`
-/

namespace A142436.P3734801311890671597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001511 (2 * n + 1)

end

end A142436.P3734801311890671597

namespace A142436

/-- `p?[A183010(n)+A052938(n)]*A001511(2*n+1)` -/
def P3734801311890671597.Spec : Prop :=
  ∀ n, P3734801311890671597.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P12968299065050897079

`p?[A183010(n)+A052938(n)]*A035263(2*n+1)`
-/

namespace A142436.P12968299065050897079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A035263 (2 * n + 1)

end

end A142436.P12968299065050897079

namespace A142436

/-- `p?[A183010(n)+A052938(n)]*A035263(2*n+1)` -/
def P12968299065050897079.Spec : Prop :=
  ∀ n, P12968299065050897079.a n = A142436 (n + 1)

end A142436

/-! ## A142436.P11948718839207502136

`A000265(p?[A183010(n)+A052938(n)])`
-/

namespace A142436.P11948718839207502136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142436.P11948718839207502136

namespace A142436

/-- `A000265(p?[A183010(n)+A052938(n)])` -/
def P11948718839207502136.Spec : Prop :=
  ∀ n, P11948718839207502136.a n = A142436 (n + 1)

end A142436

/-!
# A142437: Primes congruent to 27 mod 49.

The programs for A142437, the canonical program `A142437.P9659196933488218483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142437 has offset 1).

The definition of A142437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142437.P9659196933488218483

`p?[49*n-22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142437

/-- `p?[49*n-22]` -/
def P9659196933488218483.Spec : Prop :=
  ∀ n, P9659196933488218483.a n = A142437 (n + 1)

theorem P9659196933488218483.correct : P9659196933488218483.Spec := by
  intro n
  simp only [A142437, Nat.add_sub_cancel]

end A142437

/-! ## A142437.P10641323303573276458

`A000027(p?[A157924(n+1)+28])`
-/

namespace A142437.P10641323303573276458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) + 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142437.P10641323303573276458

namespace A142437

/-- `A000027(p?[A157924(n+1)+28])` -/
def P10641323303573276458.Spec : Prop :=
  ∀ n, P10641323303573276458.a n = A142437 (n + 1)

end A142437

/-! ## A142437.P2838180769324019747

`A000027(p?[A304205(n+1)+15])`
-/

namespace A142437.P2838180769324019747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142437.P2838180769324019747

namespace A142437

/-- `A000027(p?[A304205(n+1)+15])` -/
def P2838180769324019747.Spec : Prop :=
  ∀ n, P2838180769324019747.a n = A142437 (n + 1)

end A142437

/-! ## A142437.P4999549334037681298

`A000027(p?[A158060(n+1)+A103214(n)])`
-/

namespace A142437.P4999549334037681298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142437.P4999549334037681298

namespace A142437

/-- `A000027(p?[A158060(n+1)+A103214(n)])` -/
def P4999549334037681298.Spec : Prop :=
  ∀ n, P4999549334037681298.a n = A142437 (n + 1)

end A142437

/-! ## A142437.P8475537368374816869

`A000027(p?[A183010(2*n+1)+n+4])`
-/

namespace A142437.P8475537368374816869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (2 * n + 1) + (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142437.P8475537368374816869

namespace A142437

/-- `A000027(p?[A183010(2*n+1)+n+4])` -/
def P8475537368374816869.Spec : Prop :=
  ∀ n, P8475537368374816869.a n = A142437 (n + 1)

end A142437

/-! ## A142437.P11415066742397490243

`A007913(p?[98*n+27])`
-/

namespace A142437.P11415066742397490243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98 * n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142437.P11415066742397490243

namespace A142437

/-- `A007913(p?[98*n+27])` -/
def P11415066742397490243.Spec : Prop :=
  ∀ n, P11415066742397490243.a n = A142437 (n + 1)

end A142437

/-!
# A142438: Primes congruent to 29 mod 49.

The programs for A142438, the canonical program `A142438.P10021709092188192094` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142438 has offset 1).

The definition of A142438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142438.P10021709092188192094

`p?[49*n+29]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142438

/-- `p?[49*n+29]` -/
def P10021709092188192094.Spec : Prop :=
  ∀ n, (P10021709092188192094.a n : ℤ) = A142438 (n + 1)

theorem P10021709092188192094.correct : P10021709092188192094.Spec := by
  intro n
  simp only [A142438, Nat.add_sub_cancel]

end A142438

/-! ## A142438.P13954255447427912508

`∑{p}[p?[A157947(n+1)-70], #]`
-/

namespace A142438.P13954255447427912508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 70

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142438.P13954255447427912508

namespace A142438

/-- `∑{p}[p?[A157947(n+1)-70], #]` -/
def P13954255447427912508.Spec : Prop :=
  ∀ n, (P13954255447427912508.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P14421732330468563973

`A000027(p?[A304205(n+1)-32])`
-/

namespace A142438.P14421732330468563973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142438.P14421732330468563973

namespace A142438

/-- `A000027(p?[A304205(n+1)-32])` -/
def P14421732330468563973.Spec : Prop :=
  ∀ n, P14421732330468563973.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P3037420693581905743

`or(p?[A304205(n+1)-32], A011738(n))`
-/

namespace A142438.P3037420693581905743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A011738 n)

end

end A142438.P3037420693581905743

namespace A142438

/-- `or(p?[A304205(n+1)-32], A011738(n))` -/
def P3037420693581905743.Spec : Prop :=
  ∀ n, P3037420693581905743.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P6443700440897424402

`A000007(n+1)+p?[A304205(n+1)+17]`
-/

namespace A142438.P6443700440897424402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142438.P6443700440897424402

namespace A142438

/-- `A000007(n+1)+p?[A304205(n+1)+17]` -/
def P6443700440897424402.Spec : Prop :=
  ∀ n, P6443700440897424402.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P3490734947606703027

`∩[A156674(2*(n+1))-A156674(n+2), A042990(n+1)]`
-/

namespace A142438.P3490734947606703027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142438.P3490734947606703027

namespace A142438

/-- `∩[A156674(2*(n+1))-A156674(n+2), A042990(n+1)]` -/
def P3490734947606703027.Spec : Prop :=
  ∀ n, (P3490734947606703027.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P17543376887435816388

`∩[A156674(2*(n+1))-A156674(n+2), A045346(n+2)]`
-/

namespace A142438.P17543376887435816388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142438.P17543376887435816388

namespace A142438

/-- `∩[A156674(2*(n+1))-A156674(n+2), A045346(n+2)]` -/
def P17543376887435816388.Spec : Prop :=
  ∀ n, (P17543376887435816388.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P11697877304124869670

`∩[A156674(2*(n+1))-A156674(n+2), A045436(n+2)]`
-/

namespace A142438.P11697877304124869670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142438.P11697877304124869670

namespace A142438

/-- `∩[A156674(2*(n+1))-A156674(n+2), A045436(n+2)]` -/
def P11697877304124869670.Spec : Prop :=
  ∀ n, (P11697877304124869670.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P4866183173766973618

`∩[A156674(2*(n+1))-A156674(n+2), A045461(n+2)]`
-/

namespace A142438.P4866183173766973618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142438.P4866183173766973618

namespace A142438

/-- `∩[A156674(2*(n+1))-A156674(n+2), A045461(n+2)]` -/
def P4866183173766973618.Spec : Prop :=
  ∀ n, (P4866183173766973618.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P8904152504427695928

`∩[A156674(2*(n+1))-A156674(n+2), A045469(n+2)]`
-/

namespace A142438.P8904152504427695928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - A156674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142438.P8904152504427695928

namespace A142438

/-- `∩[A156674(2*(n+1))-A156674(n+2), A045469(n+2)]` -/
def P8904152504427695928.Spec : Prop :=
  ∀ n, (P8904152504427695928.a n : ℤ) = A142438 (n + 1)

end A142438

/-! ## A142438.P13805180506580914571

`record[A020639(A158066(n+1)-21)]`
-/

namespace A142438.P13805180506580914571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) - 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142438.P13805180506580914571

namespace A142438

/-- `record[A020639(A158066(n+1)-21)]` -/
def P13805180506580914571.Spec : Prop :=
  ∀ n, P13805180506580914571.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P15002219686317116248

`A000265(p?[A304205(n+1)-32])`
-/

namespace A142438.P15002219686317116248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142438.P15002219686317116248

namespace A142438

/-- `A000265(p?[A304205(n+1)-32])` -/
def P15002219686317116248.Spec : Prop :=
  ∀ n, P15002219686317116248.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P13565050654230043748

`A001414(p?[A304205(n+1)-32])`
-/

namespace A142438.P13565050654230043748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142438.P13565050654230043748

namespace A142438

/-- `A001414(p?[A304205(n+1)-32])` -/
def P13565050654230043748.Spec : Prop :=
  ∀ n, P13565050654230043748.a n = A142438 (n + 1)

end A142438

/-! ## A142438.P9680953440917546310

`A008472(p?[A304205(n+1)-32])`
-/

namespace A142438.P9680953440917546310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142438.P9680953440917546310

namespace A142438

/-- `A008472(p?[A304205(n+1)-32])` -/
def P9680953440917546310.Spec : Prop :=
  ∀ n, P9680953440917546310.a n = A142438 (n + 1)

end A142438

/-!
# A142439: Primes congruent to 30 mod 49.

The programs for A142439, the canonical program `A142439.P10517324320887491304` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142439 has offset 1).

The definition of A142439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142439.P10517324320887491304

`p?[49*n-19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142439

/-- `p?[49*n-19]` -/
def P10517324320887491304.Spec : Prop :=
  ∀ n, P10517324320887491304.a n = A142439 (n + 1)

theorem P10517324320887491304.correct : P10517324320887491304.Spec := by
  intro n
  simp only [A142439, Nat.add_sub_cancel]

end A142439

/-! ## A142439.P12235508838752651295

`round(sqrt(p?[A033999(n)+49*n+31]²+1))`
-/

namespace A142439.P12235508838752651295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (49 * n + 31 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A142439.P12235508838752651295

namespace A142439

/-- `round(sqrt(p?[A033999(n)+49*n+31]²+1))` -/
def P12235508838752651295.Spec : Prop :=
  ∀ n, P12235508838752651295.a n = A142439 (n + 1)

end A142439

/-! ## A142439.P1901795910104537977

`∩[A056022(2*n+1)+A056022(2*(n+1)), A045383(n+2)]`
-/

namespace A142439.P1901795910104537977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * n + 1) + A056022 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P1901795910104537977

namespace A142439

/-- `∩[A056022(2*n+1)+A056022(2*(n+1)), A045383(n+2)]` -/
def P1901795910104537977.Spec : Prop :=
  ∀ n, (P1901795910104537977.a n : ℤ) = A142439 (n + 1)

end A142439

/-! ## A142439.P7107677350223882472

`∩[A056022(2*n+1)+A056022(2*(n+1)), A045392(n+2)]`
-/

namespace A142439.P7107677350223882472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * n + 1) + A056022 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P7107677350223882472

namespace A142439

/-- `∩[A056022(2*n+1)+A056022(2*(n+1)), A045392(n+2)]` -/
def P7107677350223882472.Spec : Prop :=
  ∀ n, (P7107677350223882472.a n : ℤ) = A142439 (n + 1)

end A142439

/-! ## A142439.P1164745258623155034

`∩[A056022(2*n+1)+A056022(2*(n+1)), A140442(n+2)]`
-/

namespace A142439.P1164745258623155034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (2 * n + 1) + A056022 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P1164745258623155034

namespace A142439

/-- `∩[A056022(2*n+1)+A056022(2*(n+1)), A140442(n+2)]` -/
def P1164745258623155034.Spec : Prop :=
  ∀ n, (P1164745258623155034.a n : ℤ) = A142439 (n + 1)

end A142439

/-! ## A142439.P11019675709206950681

`record[A006530(Δ[(6*n+n+2)²]+2)]`
-/

namespace A142439.P11019675709206950681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + (n + 2)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142439.P11019675709206950681

namespace A142439

/-- `record[A006530(Δ[(6*n+n+2)²]+2)]` -/
def P11019675709206950681.Spec : Prop :=
  ∀ n, P11019675709206950681.a n = A142439 (n + 1)

end A142439

/-! ## A142439.P14354733652357580299

`record[A020639(A158066(n+1)+29)]`
-/

namespace A142439.P14354733652357580299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142439.P14354733652357580299

namespace A142439

/-- `record[A020639(A158066(n+1)+29)]` -/
def P14354733652357580299.Spec : Prop :=
  ∀ n, P14354733652357580299.a n = A142439 (n + 1)

end A142439

/-! ## A142439.P761649073965579774

`record[A020639(A304158(2*(n+1))-A017449(2*n))]`
-/

namespace A142439.P761649073965579774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304158 (2 * (n + 1)) - A017449 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142439.P761649073965579774

namespace A142439

/-- `record[A020639(A304158(2*(n+1))-A017449(2*n))]` -/
def P761649073965579774.Spec : Prop :=
  ∀ n, P761649073965579774.a n = A142439 (n + 1)

end A142439

/-! ## A142439.P16598475559256816639

`∩[A045383(n+1), A056022(n+1)]`
-/

namespace A142439.P16598475559256816639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P16598475559256816639

namespace A142439

/-- `∩[A045383(n+1), A056022(n+1)]` -/
def P16598475559256816639.Spec : Prop :=
  ∀ n, (P16598475559256816639.a n : ℤ) = A142439 (n + 1)

end A142439

/-! ## A142439.P6200265139580837858

`∩[A045392(n+1), A056022(n+1)]`
-/

namespace A142439.P6200265139580837858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P6200265139580837858

namespace A142439

/-- `∩[A045392(n+1), A056022(n+1)]` -/
def P6200265139580837858.Spec : Prop :=
  ∀ n, (P6200265139580837858.a n : ℤ) = A142439 (n + 1)

end A142439

/-! ## A142439.P1174301375715214278

`∩[A056022(n+1), A140442(n+1)]`
-/

namespace A142439.P1174301375715214278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142439.P1174301375715214278

namespace A142439

/-- `∩[A056022(n+1), A140442(n+1)]` -/
def P1174301375715214278.Spec : Prop :=
  ∀ n, (P1174301375715214278.a n : ℤ) = A142439 (n + 1)

end A142439

/-!
# A142440: Primes congruent to 31 mod 49.

The programs for A142440, the canonical program `A142440.P830069249170132830` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142440 has offset 1).

The definition of A142440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142440.P830069249170132830

`p?[49*n-18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142440

/-- `p?[49*n-18]` -/
def P830069249170132830.Spec : Prop :=
  ∀ n, P830069249170132830.a n = A142440 (n + 1)

theorem P830069249170132830.correct : P830069249170132830.Spec := by
  intro n
  simp only [A142440, Nat.add_sub_cancel]

end A142440

/-! ## A142440.P10765134281396775936

`or(1, p?[49*n+31])`
-/

namespace A142440.P10765134281396775936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142440.P10765134281396775936

namespace A142440

/-- `or(1, p?[49*n+31])` -/
def P10765134281396775936.Spec : Prop :=
  ∀ n, (P10765134281396775936.a n : ℤ) = A142440 (n + 1)

end A142440

/-! ## A142440.P9051720418853836337

`∏{d}[p?[49*n+31], #]`
-/

namespace A142440.P9051720418853836337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142440.P9051720418853836337

namespace A142440

/-- `∏{d}[p?[49*n+31], #]` -/
def P9051720418853836337.Spec : Prop :=
  ∀ n, (P9051720418853836337.a n : ℤ) = A142440 (n + 1)

end A142440

/-! ## A142440.P277476711857101350

`p?[49*n+31]%p?[49*n+31]²`
-/

namespace A142440.P277476711857101350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

end

end A142440.P277476711857101350

namespace A142440

/-- `p?[49*n+31]%p?[49*n+31]²` -/
def P277476711857101350.Spec : Prop :=
  ∀ n, (P277476711857101350.a n : ℤ) = A142440 (n + 1)

end A142440

/-! ## A142440.P14204479484425005319

`A014963(A008458(n))*p?[49*n+31]`
-/

namespace A142440.P14204479484425005319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142440.P14204479484425005319

namespace A142440

/-- `A014963(A008458(n))*p?[49*n+31]` -/
def P14204479484425005319.Spec : Prop :=
  ∀ n, P14204479484425005319.a n = A142440 (n + 1)

end A142440

/-! ## A142440.P9615845029346105667

`record[A020639(A304205(n+1)+19)]`
-/

namespace A142440.P9615845029346105667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + 19).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142440.P9615845029346105667

namespace A142440

/-- `record[A020639(A304205(n+1)+19)]` -/
def P9615845029346105667.Spec : Prop :=
  ∀ n, P9615845029346105667.a n = A142440 (n + 1)

end A142440

/-! ## A142440.P13152672959410218306

`A007947(p?[A158066(n+1)-19])`
-/

namespace A142440.P13152672959410218306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142440.P13152672959410218306

namespace A142440

/-- `A007947(p?[A158066(n+1)-19])` -/
def P13152672959410218306.Spec : Prop :=
  ∀ n, P13152672959410218306.a n = A142440 (n + 1)

end A142440

/-! ## A142440.P16040186895625005632

`record[A020639(A135659(2*n+1)+n)]`
-/

namespace A142440.P16040186895625005632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135659 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142440.P16040186895625005632

namespace A142440

/-- `record[A020639(A135659(2*n+1)+n)]` -/
def P16040186895625005632.Spec : Prop :=
  ∀ n, P16040186895625005632.a n = A142440 (n + 1)

end A142440

/-! ## A142440.P2507672798460517718

`record[p?[A105452(A105452(n+1))+1]]`
-/

namespace A142440.P2507672798460517718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105452 (A105452 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142440.P2507672798460517718

namespace A142440

/-- `record[p?[A105452(A105452(n+1))+1]]` -/
def P2507672798460517718.Spec : Prop :=
  ∀ n, P2507672798460517718.a n = A142440 (n + 1)

end A142440

/-!
# A142441: Primes congruent to 32 mod 49.

The programs for A142441, the canonical program `A142441.P9075176759521242998` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142441 has offset 1).

The definition of A142441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142441.P9075176759521242998

`p?[49*n-17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142441

/-- `p?[49*n-17]` -/
def P9075176759521242998.Spec : Prop :=
  ∀ n, P9075176759521242998.a n = A142441 (n + 1)

theorem P9075176759521242998.correct : P9075176759521242998.Spec := by
  intro n
  simp only [A142441, Nat.add_sub_cancel]

end A142441

/-! ## A142441.P11106763862027366076

`or(1, p?[A157924(n+1)-16])`
-/

namespace A142441.P11106763862027366076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142441.P11106763862027366076

namespace A142441

/-- `or(1, p?[A157924(n+1)-16])` -/
def P11106763862027366076.Spec : Prop :=
  ∀ n, P11106763862027366076.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P1735057328692181261

`A000027(p?[A304205(n+1)-29])`
-/

namespace A142441.P1735057328692181261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P1735057328692181261

namespace A142441

/-- `A000027(p?[A304205(n+1)-29])` -/
def P1735057328692181261.Spec : Prop :=
  ∀ n, P1735057328692181261.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P1669920272829325054

`A000027(p?[A158066(n+1)+31])`
-/

namespace A142441.P1669920272829325054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P1669920272829325054

namespace A142441

/-- `A000027(p?[A158066(n+1)+31])` -/
def P1669920272829325054.Spec : Prop :=
  ∀ n, P1669920272829325054.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P15111886461695964432

`p?[A158066(n+1)+31]*char[A003188(n)]`
-/

namespace A142441.P15111886461695964432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A142441.P15111886461695964432

namespace A142441

/-- `p?[A158066(n+1)+31]*char[A003188(n)]` -/
def P15111886461695964432.Spec : Prop :=
  ∀ n, P15111886461695964432.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P6850321682558487728

`p?[A158066(n+1)-18]%A061346(n+1)²`
-/

namespace A142441.P6850321682558487728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A061346 (n + 1) ^ 2)

end

end A142441.P6850321682558487728

namespace A142441

/-- `p?[A158066(n+1)-18]%A061346(n+1)²` -/
def P6850321682558487728.Spec : Prop :=
  ∀ n, P6850321682558487728.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P6318084282518980184

`p?[A158066(n+1)+31]%(8*A208294(n+1))`
-/

namespace A142441.P6318084282518980184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (8 * A208294 (n + 1))

end

end A142441.P6318084282518980184

namespace A142441

/-- `p?[A158066(n+1)+31]%(8*A208294(n+1))` -/
def P6318084282518980184.Spec : Prop :=
  ∀ n, P6318084282518980184.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P10686931164467508073

`A000265(p?[A157924(n+1)-16])`
-/

namespace A142441.P10686931164467508073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P10686931164467508073

namespace A142441

/-- `A000265(p?[A157924(n+1)-16])` -/
def P10686931164467508073.Spec : Prop :=
  ∀ n, P10686931164467508073.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P4990087064492900754

`A007947(p?[A158066(n+1)-18])`
-/

namespace A142441.P4990087064492900754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P4990087064492900754

namespace A142441

/-- `A007947(p?[A158066(n+1)-18])` -/
def P4990087064492900754.Spec : Prop :=
  ∀ n, P4990087064492900754.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P1165553004859793082

`A000265(p?[A304205(n+1)-29])`
-/

namespace A142441.P1165553004859793082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P1165553004859793082

namespace A142441

/-- `A000265(p?[A304205(n+1)-29])` -/
def P1165553004859793082.Spec : Prop :=
  ∀ n, P1165553004859793082.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P10977279899466062183

`A000265(p?[A158066(n+1)+31])`
-/

namespace A142441.P10977279899466062183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P10977279899466062183

namespace A142441

/-- `A000265(p?[A158066(n+1)+31])` -/
def P10977279899466062183.Spec : Prop :=
  ∀ n, P10977279899466062183.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P14970903658508010849

`A007913(p?[A158066(n+1)+31])`
-/

namespace A142441.P14970903658508010849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P14970903658508010849

namespace A142441

/-- `A007913(p?[A158066(n+1)+31])` -/
def P14970903658508010849.Spec : Prop :=
  ∀ n, P14970903658508010849.a n = A142441 (n + 1)

end A142441

/-! ## A142441.P1282574815371827124

`A000265(p?[A017341(4*n+2)+9*n+6])`
-/

namespace A142441.P1282574815371827124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (4 * n + 2) + (9 * n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142441.P1282574815371827124

namespace A142441

/-- `A000265(p?[A017341(4*n+2)+9*n+6])` -/
def P1282574815371827124.Spec : Prop :=
  ∀ n, P1282574815371827124.a n = A142441 (n + 1)

end A142441

/-!
# A142442: Primes congruent to 33 mod 49.

The programs for A142442, the canonical program `A142442.P5986405944583897844` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142442 has offset 1).

The definition of A142442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142442.P5986405944583897844

`p?[49*n-16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142442

/-- `p?[49*n-16]` -/
def P5986405944583897844.Spec : Prop :=
  ∀ n, P5986405944583897844.a n = A142442 (n + 1)

theorem P5986405944583897844.correct : P5986405944583897844.Spec := by
  intro n
  simp only [A142442, Nat.add_sub_cancel]

end A142442

/-! ## A142442.P5226381611816658842

`∏{p}[p?[A157947(n+1)+32], #]`
-/

namespace A142442.P5226381611816658842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 32

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142442.P5226381611816658842

namespace A142442

/-- `∏{p}[p?[A157947(n+1)+32], #]` -/
def P5226381611816658842.Spec : Prop :=
  ∀ n, (P5226381611816658842.a n : ℤ) = A142442 (n + 1)

end A142442

/-! ## A142442.P6207407199453766324

`or(p?[A157947(n+1)+32], A000007(n))`
-/

namespace A142442.P6207407199453766324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142442.P6207407199453766324

namespace A142442

/-- `or(p?[A157947(n+1)+32], A000007(n))` -/
def P6207407199453766324.Spec : Prop :=
  ∀ n, P6207407199453766324.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P6868926966056359451

`p?[A157947(n+1)+32]%A006038(n+1)`
-/

namespace A142442.P6868926966056359451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A006038 (n + 1))

end

end A142442.P6868926966056359451

namespace A142442

/-- `p?[A157947(n+1)+32]%A006038(n+1)` -/
def P6868926966056359451.Spec : Prop :=
  ∀ n, P6868926966056359451.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P13881882338794846609

`or(1, p?[A019430(A019430(n))])`
-/

namespace A142442.P13881882338794846609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A019430 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142442.P13881882338794846609

namespace A142442

/-- `or(1, p?[A019430(A019430(n))])` -/
def P13881882338794846609.Spec : Prop :=
  ∀ n, P13881882338794846609.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P8882534987201273384

`record[A020639(A157947(n+1)+32)]`
-/

namespace A142442.P8882534987201273384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) + 32).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142442.P8882534987201273384

namespace A142442

/-- `record[A020639(A157947(n+1)+32)]` -/
def P8882534987201273384.Spec : Prop :=
  ∀ n, P8882534987201273384.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P10724894883115337322

`A000265(p?[16*A001281(n)+n])`
-/

namespace A142442.P10724894883115337322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142442.P10724894883115337322

namespace A142442

/-- `A000265(p?[16*A001281(n)+n])` -/
def P10724894883115337322.Spec : Prop :=
  ∀ n, P10724894883115337322.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P18053755209347285509

`record[A006530(A157947(3*n+4)/3)]`
-/

namespace A142442.P18053755209347285509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A157947 (3 * n + 4) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142442.P18053755209347285509

namespace A142442

/-- `record[A006530(A157947(3*n+4)/3)]` -/
def P18053755209347285509.Spec : Prop :=
  ∀ n, P18053755209347285509.a n = A142442 (n + 1)

end A142442

/-! ## A142442.P5820583237101429831

`∩[A045458(n+1), A056022(n+1)+2]`
-/

namespace A142442.P5820583237101429831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142442.P5820583237101429831

namespace A142442

/-- `∩[A045458(n+1), A056022(n+1)+2]` -/
def P5820583237101429831.Spec : Prop :=
  ∀ n, (P5820583237101429831.a n : ℤ) = A142442 (n + 1)

end A142442

/-! ## A142442.P15893941839330388933

`or(1, p?[A017041(A017041(n)-1)])`
-/

namespace A142442.P15893941839330388933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A017041 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142442.P15893941839330388933

namespace A142442

/-- `or(1, p?[A017041(A017041(n)-1)])` -/
def P15893941839330388933.Spec : Prop :=
  ∀ n, P15893941839330388933.a n = A142442 (n + 1)

end A142442

/-!
# A142443: Primes congruent to 34 mod 49.

The programs for A142443, the canonical program `A142443.P13821965067619815590` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142443 has offset 1).

The definition of A142443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142443.P13821965067619815590

`p?[49*n-15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142443

/-- `p?[49*n-15]` -/
def P13821965067619815590.Spec : Prop :=
  ∀ n, P13821965067619815590.a n = A142443 (n + 1)

theorem P13821965067619815590.correct : P13821965067619815590.Spec := by
  intro n
  simp only [A142443, Nat.add_sub_cancel]

end A142443

/-! ## A142443.P17623725766990318010

`abs(p?[a(n-1)+49]-n)+n` with `a(0)=1, a(1)=34`
-/

namespace A142443.P17623725766990318010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 34] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A142443.P17623725766990318010

namespace A142443

/-- `abs(p?[a(n-1)+49]-n)+n` -/
def P17623725766990318010.Spec : Prop :=
  ∀ n, P17623725766990318010.a n = A142443 (n + 1)

end A142443

/-! ## A142443.P9699383624105158738

`record[A020639(A157924(n+1)-14)]`
-/

namespace A142443.P9699383624105158738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157924 (n + 1) - 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142443.P9699383624105158738

namespace A142443

/-- `record[A020639(A157924(n+1)-14)]` -/
def P9699383624105158738.Spec : Prop :=
  ∀ n, P9699383624105158738.a n = A142443 (n + 1)

end A142443

/-! ## A142443.P14208864890154014368

`record[A020639(A157947(n+1)-16)]`
-/

namespace A142443.P14208864890154014368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157947 (n + 1) - 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142443.P14208864890154014368

namespace A142443

/-- `record[A020639(A157947(n+1)-16)]` -/
def P14208864890154014368.Spec : Prop :=
  ∀ n, P14208864890154014368.a n = A142443 (n + 1)

end A142443

/-! ## A142443.P12690915982207053324

`record[A020639(A158066(n+1)+33)]`
-/

namespace A142443.P12690915982207053324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) + 33).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142443.P12690915982207053324

namespace A142443

/-- `record[A020639(A158066(n+1)+33)]` -/
def P12690915982207053324.Spec : Prop :=
  ∀ n, P12690915982207053324.a n = A142443 (n + 1)

end A142443

/-!
# A142444: Primes congruent to 36 mod 49.

The programs for A142444, the canonical program `A142444.P12046304224913857930` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142444 has offset 1).

The definition of A142444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142444.P12046304224913857930

`p?[49*n-13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142444

/-- `p?[49*n-13]` -/
def P12046304224913857930.Spec : Prop :=
  ∀ n, P12046304224913857930.a n = A142444 (n + 1)

theorem P12046304224913857930.correct : P12046304224913857930.Spec := by
  intro n
  simp only [A142444, Nat.add_sub_cancel]

end A142444

/-! ## A142444.P5534456745774193578

`or(1, p?[A157924(n+1)-12])`
-/

namespace A142444.P5534456745774193578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142444.P5534456745774193578

namespace A142444

/-- `or(1, p?[A157924(n+1)-12])` -/
def P5534456745774193578.Spec : Prop :=
  ∀ n, P5534456745774193578.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P16526564597150980727

`p?[A157947(n+1)-14]%A002046(n+1)`
-/

namespace A142444.P16526564597150980727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002046 (n + 1))

end

end A142444.P16526564597150980727

namespace A142444

/-- `p?[A157947(n+1)-14]%A002046(n+1)` -/
def P16526564597150980727.Spec : Prop :=
  ∀ n, P16526564597150980727.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P6991330558481584954

`p?[A157947(n+1)-14]/A008683(gcd(n, n+1))`
-/

namespace A142444.P6991330558481584954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (Nat.gcd n (n + 1)) : ℚ)

end

end A142444.P6991330558481584954

namespace A142444

/-- `p?[A157947(n+1)-14]/A008683(gcd(n, n+1))` -/
def P6991330558481584954.Spec : Prop :=
  ∀ n, P6991330558481584954.a n = (A142444 (n + 1) : ℚ)

end A142444

/-! ## A142444.P17759268016099593822

`p?[A157947(n+1)-14]/A001222(A006512(n+1))`
-/

namespace A142444.P17759268016099593822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001222 (A006512 (n + 1)).toNat : ℚ)

end

end A142444.P17759268016099593822

namespace A142444

/-- `p?[A157947(n+1)-14]/A001222(A006512(n+1))` -/
def P17759268016099593822.Spec : Prop :=
  ∀ n, P17759268016099593822.a n = (A142444 (n + 1) : ℚ)

end A142444

/-! ## A142444.P3801008963574637752

`A000027(p?[A157947(n+1)-14])`
-/

namespace A142444.P3801008963574637752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P3801008963574637752

namespace A142444

/-- `A000027(p?[A157947(n+1)-14])` -/
def P3801008963574637752.Spec : Prop :=
  ∀ n, P3801008963574637752.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P12378826748700541497

`A000027(p?[A158066(n+1)-14])`
-/

namespace A142444.P12378826748700541497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P12378826748700541497

namespace A142444

/-- `A000027(p?[A158066(n+1)-14])` -/
def P12378826748700541497.Spec : Prop :=
  ∀ n, P12378826748700541497.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P13696602211491036394

`A000027(p?[A304205(n+1)+24])`
-/

namespace A142444.P13696602211491036394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P13696602211491036394

namespace A142444

/-- `A000027(p?[A304205(n+1)+24])` -/
def P13696602211491036394.Spec : Prop :=
  ∀ n, P13696602211491036394.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P7921992302703129822

`p?[A304205(n+1)+24]+xor(2*n, A005843(n))`
-/

namespace A142444.P7921992302703129822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.xor (2 * n : ℤ) (A005843 n)

end

end A142444.P7921992302703129822

namespace A142444

/-- `p?[A304205(n+1)+24]+xor(2*n, A005843(n))` -/
def P7921992302703129822.Spec : Prop :=
  ∀ n, P7921992302703129822.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P7111114706842406173

`p?[A304205(n+1)+24]+n+1+n+n-A016777(n)`
-/

namespace A142444.P7111114706842406173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ((n + 1 + n + n : ℤ) - A016777 n)

end

end A142444.P7111114706842406173

namespace A142444

/-- `p?[A304205(n+1)+24]+n+1+n+n-A016777(n)` -/
def P7111114706842406173.Spec : Prop :=
  ∀ n, P7111114706842406173.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P16938716158433999031

`A000265(p?[A157924(n+1)-12])`
-/

namespace A142444.P16938716158433999031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P16938716158433999031

namespace A142444

/-- `A000265(p?[A157924(n+1)-12])` -/
def P16938716158433999031.Spec : Prop :=
  ∀ n, P16938716158433999031.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P18101898331268497119

`A007947(p?[A157924(n+1)-12])`
-/

namespace A142444.P18101898331268497119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P18101898331268497119

namespace A142444

/-- `A007947(p?[A157924(n+1)-12])` -/
def P18101898331268497119.Spec : Prop :=
  ∀ n, P18101898331268497119.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P14576495281304129815

`A000265(p?[A157947(n+1)-14])`
-/

namespace A142444.P14576495281304129815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P14576495281304129815

namespace A142444

/-- `A000265(p?[A157947(n+1)-14])` -/
def P14576495281304129815.Spec : Prop :=
  ∀ n, P14576495281304129815.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P143380604364292686

`A007947(p?[A158066(n+1)-14])`
-/

namespace A142444.P143380604364292686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P143380604364292686

namespace A142444

/-- `A007947(p?[A158066(n+1)-14])` -/
def P143380604364292686.Spec : Prop :=
  ∀ n, P143380604364292686.a n = A142444 (n + 1)

end A142444

/-! ## A142444.P3296345125638624530

`A000027(p?[A113801(A113801(2*(n+1)))])`
-/

namespace A142444.P3296345125638624530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A113801 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142444.P3296345125638624530

namespace A142444

/-- `A000027(p?[A113801(A113801(2*(n+1)))])` -/
def P3296345125638624530.Spec : Prop :=
  ∀ n, P3296345125638624530.a n = A142444 (n + 1)

end A142444

/-!
# A142445: Primes congruent to 37 mod 49.

The programs for A142445, the canonical program `A142445.P12832947425063422088` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142445 has offset 1).

The definition of A142445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142445.P12832947425063422088

`p?[49*n-12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142445

/-- `p?[49*n-12]` -/
def P12832947425063422088.Spec : Prop :=
  ∀ n, P12832947425063422088.a n = A142445 (n + 1)

theorem P12832947425063422088.correct : P12832947425063422088.Spec := by
  intro n
  simp only [A142445, Nat.add_sub_cancel]

end A142445

/-! ## A142445.P6009773933484065621

`∩[A045333(n+1), A156674(n+1)-2]`
-/

namespace A142445.P6009773933484065621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P6009773933484065621

namespace A142445

/-- `∩[A045333(n+1), A156674(n+1)-2]` -/
def P6009773933484065621.Spec : Prop :=
  ∀ n, (P6009773933484065621.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P4964228838199374653

`∩[A045343(n+1), A156674(n+1)-2]`
-/

namespace A142445.P4964228838199374653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P4964228838199374653

namespace A142445

/-- `∩[A045343(n+1), A156674(n+1)-2]` -/
def P4964228838199374653.Spec : Prop :=
  ∀ n, (P4964228838199374653.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P4280125854313169699

`∩[A045374(n+1), A156674(n+1)-2]`
-/

namespace A142445.P4280125854313169699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P4280125854313169699

namespace A142445

/-- `∩[A045374(n+1), A156674(n+1)-2]` -/
def P4280125854313169699.Spec : Prop :=
  ∀ n, (P4280125854313169699.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P9887607626246758865

`∩[A045387(n+1), A156674(n+1)-2]`
-/

namespace A142445.P9887607626246758865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P9887607626246758865

namespace A142445

/-- `∩[A045387(n+1), A156674(n+1)-2]` -/
def P9887607626246758865.Spec : Prop :=
  ∀ n, (P9887607626246758865.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P10170659695185044802

`∩[A045347(n+1), A156674(n+1)-2]`
-/

namespace A142445.P10170659695185044802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P10170659695185044802

namespace A142445

/-- `∩[A045347(n+1), A156674(n+1)-2]` -/
def P10170659695185044802.Spec : Prop :=
  ∀ n, (P10170659695185044802.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P1054155090551617555

`∩[A156674(2*(n+1))-2, A045346(n+2)]`
-/

namespace A142445.P1054155090551617555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P1054155090551617555

namespace A142445

/-- `∩[A156674(2*(n+1))-2, A045346(n+2)]` -/
def P1054155090551617555.Spec : Prop :=
  ∀ n, (P1054155090551617555.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P6892773858030852357

`∩[A156674(2*(n+1))-2, A042990(n+1)]`
-/

namespace A142445.P6892773858030852357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142445.P6892773858030852357

namespace A142445

/-- `∩[A156674(2*(n+1))-2, A042990(n+1)]` -/
def P6892773858030852357.Spec : Prop :=
  ∀ n, (P6892773858030852357.a n : ℤ) = A142445 (n + 1)

end A142445

/-! ## A142445.P10163766806535496214

`record[A006530(Δ[(1-7*n)²]+2)]`
-/

namespace A142445.P10163766806535496214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (7 * n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142445.P10163766806535496214

namespace A142445

/-- `record[A006530(Δ[(1-7*n)²]+2)]` -/
def P10163766806535496214.Spec : Prop :=
  ∀ n, P10163766806535496214.a n = A142445 (n + 1)

end A142445

/-! ## A142445.P12050269061883961399

`record[A020639(A158066(n+1)-13)]`
-/

namespace A142445.P12050269061883961399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) - 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142445.P12050269061883961399

namespace A142445

/-- `record[A020639(A158066(n+1)-13)]` -/
def P12050269061883961399.Spec : Prop :=
  ∀ n, P12050269061883961399.a n = A142445 (n + 1)

end A142445

/-! ## A142445.P12729044625747455399

`record[A020639(A045809(2*(n+1))-n)]`
-/

namespace A142445.P12729044625747455399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045809 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142445.P12729044625747455399

namespace A142445

/-- `record[A020639(A045809(2*(n+1))-n)]` -/
def P12729044625747455399.Spec : Prop :=
  ∀ n, P12729044625747455399.a n = A142445 (n + 1)

end A142445

/-! ## A142445.P15434440447151590812

`∑{p}[p?[A017029(A017029(n))+5], #]`
-/

namespace A142445.P15434440447151590812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (A017029 n).toNat + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142445.P15434440447151590812

namespace A142445

/-- `∑{p}[p?[A017029(A017029(n))+5], #]` -/
def P15434440447151590812.Spec : Prop :=
  ∀ n, (P15434440447151590812.a n : ℤ) = A142445 (n + 1)

end A142445

/-!
# A142446: Primes congruent to 38 mod 49.

The programs for A142446, the canonical program `A142446.P15401058239902955193` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142446 has offset 1).

The definition of A142446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142446.P15401058239902955193

`p?[49*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142446

/-- `p?[49*n-11]` -/
def P15401058239902955193.Spec : Prop :=
  ∀ n, P15401058239902955193.a n = A142446 (n + 1)

theorem P15401058239902955193.correct : P15401058239902955193.Spec := by
  intro n
  simp only [A142446, Nat.add_sub_cancel]

end A142446

/-! ## A142446.P4996295692785886227

`or(1, p?[A157924(n+1)-10])`
-/

namespace A142446.P4996295692785886227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142446.P4996295692785886227

namespace A142446

/-- `or(1, p?[A157924(n+1)-10])` -/
def P4996295692785886227.Spec : Prop :=
  ∀ n, P4996295692785886227.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P16424535645197052255

`p?[A157947(n+1)-12]%A107969(n+6)`
-/

namespace A142446.P16424535645197052255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A107969 (n + 6))

end

end A142446.P16424535645197052255

namespace A142446

/-- `p?[A157947(n+1)-12]%A107969(n+6)` -/
def P16424535645197052255.Spec : Prop :=
  ∀ n, P16424535645197052255.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P16301742280848131500

`p?[A157947(n+1)-12]-A059841(A080903(n+1))`
-/

namespace A142446.P16301742280848131500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A059841 (A080903 (n + 1)).toNat

end

end A142446.P16301742280848131500

namespace A142446

/-- `p?[A157947(n+1)-12]-A059841(A080903(n+1))` -/
def P16301742280848131500.Spec : Prop :=
  ∀ n, P16301742280848131500.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P2046094990798390898

`p?[A157947(n+1)-12]/A208645(A080456(n+1))`
-/

namespace A142446.P2046094990798390898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A208645 (A080456 (n + 1)).toNat : ℚ)

end

end A142446.P2046094990798390898

namespace A142446

/-- `p?[A157947(n+1)-12]/A208645(A080456(n+1))` -/
def P2046094990798390898.Spec : Prop :=
  ∀ n, P2046094990798390898.a n = (A142446 (n + 1) : ℚ)

end A142446

/-! ## A142446.P16402941240804134004

`p?[A157947(n+1)-12]/A014963(A008458(n))`
-/

namespace A142446.P16402941240804134004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A142446.P16402941240804134004

namespace A142446

/-- `p?[A157947(n+1)-12]/A014963(A008458(n))` -/
def P16402941240804134004.Spec : Prop :=
  ∀ n, P16402941240804134004.a n = (A142446 (n + 1) : ℚ)

end A142446

/-! ## A142446.P8622905407586811436

`A000027(p?[A157947(n+1)-12])`
-/

namespace A142446.P8622905407586811436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P8622905407586811436

namespace A142446

/-- `A000027(p?[A157947(n+1)-12])` -/
def P8622905407586811436.Spec : Prop :=
  ∀ n, P8622905407586811436.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P2406305030943523806

`A000027(p?[A158066(n+1)-12])`
-/

namespace A142446.P2406305030943523806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P2406305030943523806

namespace A142446

/-- `A000027(p?[A158066(n+1)-12])` -/
def P2406305030943523806.Spec : Prop :=
  ∀ n, P2406305030943523806.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P9423100294060954868

`A000027(p?[A304205(n+1)+26])`
-/

namespace A142446.P9423100294060954868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P9423100294060954868

namespace A142446

/-- `A000027(p?[A304205(n+1)+26])` -/
def P9423100294060954868.Spec : Prop :=
  ∀ n, P9423100294060954868.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P10382100206064220696

`p?[A158066(n+1)-12]%A119740(n+1)`
-/

namespace A142446.P10382100206064220696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A119740 (n + 1))

end

end A142446.P10382100206064220696

namespace A142446

/-- `p?[A158066(n+1)-12]%A119740(n+1)` -/
def P10382100206064220696.Spec : Prop :=
  ∀ n, P10382100206064220696.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P8191183956878595169

`((-1)^A007318(n))²*p?[A304205(n+1)+26]`
-/

namespace A142446.P8191183956878595169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 26

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A142446.P8191183956878595169

namespace A142446

/-- `((-1)^A007318(n))²*p?[A304205(n+1)+26]` -/
def P8191183956878595169.Spec : Prop :=
  ∀ n, P8191183956878595169.a n = (A142446 (n + 1) : ℚ)

end A142446

/-! ## A142446.P16819479815899756590

`∩[A045401(n+1), A156674(n+1)-1]`
-/

namespace A142446.P16819479815899756590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P16819479815899756590

namespace A142446

/-- `∩[A045401(n+1), A156674(n+1)-1]` -/
def P16819479815899756590.Spec : Prop :=
  ∀ n, (P16819479815899756590.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P12202727672663582226

`∩[A045423(n+1), A156674(n+1)-1]`
-/

namespace A142446.P12202727672663582226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P12202727672663582226

namespace A142446

/-- `∩[A045423(n+1), A156674(n+1)-1]` -/
def P12202727672663582226.Spec : Prop :=
  ∀ n, (P12202727672663582226.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P6368775658178564546

`∩[A045425(n+1), A156674(n+1)-1]`
-/

namespace A142446.P6368775658178564546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P6368775658178564546

namespace A142446

/-- `∩[A045425(n+1), A156674(n+1)-1]` -/
def P6368775658178564546.Spec : Prop :=
  ∀ n, (P6368775658178564546.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P12788592081182486788

`∩[A045436(n+1), A156674(n+1)-1]`
-/

namespace A142446.P12788592081182486788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P12788592081182486788

namespace A142446

/-- `∩[A045436(n+1), A156674(n+1)-1]` -/
def P12788592081182486788.Spec : Prop :=
  ∀ n, (P12788592081182486788.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P8840897321269512039

`∩[A045437(n+1), A156674(n+1)-1]`
-/

namespace A142446.P8840897321269512039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P8840897321269512039

namespace A142446

/-- `∩[A045437(n+1), A156674(n+1)-1]` -/
def P8840897321269512039.Spec : Prop :=
  ∀ n, (P8840897321269512039.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P18007148845051597128

`∩[A156674(2*(n+1))-1, A045333(n+2)]`
-/

namespace A142446.P18007148845051597128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142446.P18007148845051597128

namespace A142446

/-- `∩[A156674(2*(n+1))-1, A045333(n+2)]` -/
def P18007148845051597128.Spec : Prop :=
  ∀ n, (P18007148845051597128.a n : ℤ) = A142446 (n + 1)

end A142446

/-! ## A142446.P4069705507330289007

`A000265(p?[A157924(n+1)-10])`
-/

namespace A142446.P4069705507330289007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P4069705507330289007

namespace A142446

/-- `A000265(p?[A157924(n+1)-10])` -/
def P4069705507330289007.Spec : Prop :=
  ∀ n, P4069705507330289007.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P5961008125771585529

`A007947(p?[A157924(n+1)-10])`
-/

namespace A142446.P5961008125771585529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P5961008125771585529

namespace A142446

/-- `A007947(p?[A157924(n+1)-10])` -/
def P5961008125771585529.Spec : Prop :=
  ∀ n, P5961008125771585529.a n = A142446 (n + 1)

end A142446

/-! ## A142446.P4299623997850925624

`A000265(p?[A157947(n+1)-12])`
-/

namespace A142446.P4299623997850925624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142446.P4299623997850925624

namespace A142446

/-- `A000265(p?[A157947(n+1)-12])` -/
def P4299623997850925624.Spec : Prop :=
  ∀ n, P4299623997850925624.a n = A142446 (n + 1)

end A142446

/-!
# A142447: Primes congruent to 39 mod 49.

The programs for A142447, the canonical program `A142447.P11000626731989421513` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142447 has offset 1).

The definition of A142447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142447.P11000626731989421513

`p?[49*n-10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142447

/-- `p?[49*n-10]` -/
def P11000626731989421513.Spec : Prop :=
  ∀ n, P11000626731989421513.a n = A142447 (n + 1)

theorem P11000626731989421513.correct : P11000626731989421513.Spec := by
  intro n
  simp only [A142447, Nat.add_sub_cancel]

end A142447

/-! ## A142447.P13953478639343152822

`∩[A045374(n+1), A156674(n+1)]`
-/

namespace A142447.P13953478639343152822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P13953478639343152822

namespace A142447

/-- `∩[A045374(n+1), A156674(n+1)]` -/
def P13953478639343152822.Spec : Prop :=
  ∀ n, (P13953478639343152822.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P15819894033420435812

`∩[A045387(n+1), A156674(n+1)]`
-/

namespace A142447.P15819894033420435812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P15819894033420435812

namespace A142447

/-- `∩[A045387(n+1), A156674(n+1)]` -/
def P15819894033420435812.Spec : Prop :=
  ∀ n, (P15819894033420435812.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P15839979291902079385

`∩[A045441(n+1), A156674(n+1)]`
-/

namespace A142447.P15839979291902079385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P15839979291902079385

namespace A142447

/-- `∩[A045441(n+1), A156674(n+1)]` -/
def P15839979291902079385.Spec : Prop :=
  ∀ n, (P15839979291902079385.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P4675013925756344347

`∩[A045452(n+1), A156674(n+1)]`
-/

namespace A142447.P4675013925756344347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P4675013925756344347

namespace A142447

/-- `∩[A045452(n+1), A156674(n+1)]` -/
def P4675013925756344347.Spec : Prop :=
  ∀ n, (P4675013925756344347.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P16503057820896449241

`∩[A045460(n+1), A156674(n+1)]`
-/

namespace A142447.P16503057820896449241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P16503057820896449241

namespace A142447

/-- `∩[A045460(n+1), A156674(n+1)]` -/
def P16503057820896449241.Spec : Prop :=
  ∀ n, (P16503057820896449241.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P14598453525618555083

`∩[A045461(n+1), A156674(n+1)]`
-/

namespace A142447.P14598453525618555083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P14598453525618555083

namespace A142447

/-- `∩[A045461(n+1), A156674(n+1)]` -/
def P14598453525618555083.Spec : Prop :=
  ∀ n, (P14598453525618555083.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P6378872878522589738

`∩[A045462(n+1), A156674(n+1)]`
-/

namespace A142447.P6378872878522589738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P6378872878522589738

namespace A142447

/-- `∩[A045462(n+1), A156674(n+1)]` -/
def P6378872878522589738.Spec : Prop :=
  ∀ n, (P6378872878522589738.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P792440679311153180

`∩[A045467(n+1), A156674(n+1)]`
-/

namespace A142447.P792440679311153180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P792440679311153180

namespace A142447

/-- `∩[A045467(n+1), A156674(n+1)]` -/
def P792440679311153180.Spec : Prop :=
  ∀ n, (P792440679311153180.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P3587642019640352559

`∩[A045469(n+1), A156674(n+1)]`
-/

namespace A142447.P3587642019640352559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P3587642019640352559

namespace A142447

/-- `∩[A045469(n+1), A156674(n+1)]` -/
def P3587642019640352559.Spec : Prop :=
  ∀ n, (P3587642019640352559.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P1134386547199469717

`∩[A045471(n+1), A156674(n+1)]`
-/

namespace A142447.P1134386547199469717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P1134386547199469717

namespace A142447

/-- `∩[A045471(n+1), A156674(n+1)]` -/
def P1134386547199469717.Spec : Prop :=
  ∀ n, (P1134386547199469717.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P3995053666784946676

`∩[A033207(n+1), A156674(n+1)]`
-/

namespace A142447.P3995053666784946676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P3995053666784946676

namespace A142447

/-- `∩[A033207(n+1), A156674(n+1)]` -/
def P3995053666784946676.Spec : Prop :=
  ∀ n, (P3995053666784946676.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P10239952558342520891

`∩[A045373(n+1), A156674(n+1)]`
-/

namespace A142447.P10239952558342520891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P10239952558342520891

namespace A142447

/-- `∩[A045373(n+1), A156674(n+1)]` -/
def P10239952558342520891.Spec : Prop :=
  ∀ n, (P10239952558342520891.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P8830126509992213295

`∩[A045385(n+1), A156674(n+1)]`
-/

namespace A142447.P8830126509992213295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P8830126509992213295

namespace A142447

/-- `∩[A045385(n+1), A156674(n+1)]` -/
def P8830126509992213295.Spec : Prop :=
  ∀ n, (P8830126509992213295.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P8441551620614920755

`∩[A045439(n+1), A156674(n+1)]`
-/

namespace A142447.P8441551620614920755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P8441551620614920755

namespace A142447

/-- `∩[A045439(n+1), A156674(n+1)]` -/
def P8441551620614920755.Spec : Prop :=
  ∀ n, (P8441551620614920755.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P2623966699766949916

`∩[A045369(n+1), A156674(n+1)]`
-/

namespace A142447.P2623966699766949916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P2623966699766949916

namespace A142447

/-- `∩[A045369(n+1), A156674(n+1)]` -/
def P2623966699766949916.Spec : Prop :=
  ∀ n, (P2623966699766949916.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P16665597302008108442

`∩[A045384(n+1), A156674(n+1)]`
-/

namespace A142447.P16665597302008108442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P16665597302008108442

namespace A142447

/-- `∩[A045384(n+1), A156674(n+1)]` -/
def P16665597302008108442.Spec : Prop :=
  ∀ n, (P16665597302008108442.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P8326990390067575821

`∩[A045347(n+1), A156674(n+1)]`
-/

namespace A142447.P8326990390067575821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P8326990390067575821

namespace A142447

/-- `∩[A045347(n+1), A156674(n+1)]` -/
def P8326990390067575821.Spec : Prop :=
  ∀ n, (P8326990390067575821.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P17968613865064224287

`∩[A045346(n+1), A156674(n+1)]`
-/

namespace A142447.P17968613865064224287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142447.P17968613865064224287

namespace A142447

/-- `∩[A045346(n+1), A156674(n+1)]` -/
def P17968613865064224287.Spec : Prop :=
  ∀ n, (P17968613865064224287.a n : ℤ) = A142447 (n + 1)

end A142447

/-! ## A142447.P8245354562776920568

`record[A020639(A158066(n+3)-11)]`
-/

namespace A142447.P8245354562776920568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 3) - 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142447.P8245354562776920568

namespace A142447

/-- `record[A020639(A158066(n+3)-11)]` -/
def P8245354562776920568.Spec : Prop :=
  ∀ n, P8245354562776920568.a n = A142447 (n + 1)

end A142447

/-!
# A142448: Primes congruent to 40 mod 49.

The programs for A142448, the canonical program `A142448.P17036428714241313504` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142448 has offset 1).

The definition of A142448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142448.P17036428714241313504

`p?[98*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142448

/-- `p?[98*n-9]` -/
def P17036428714241313504.Spec : Prop :=
  ∀ n, P17036428714241313504.a n = A142448 (n + 1)

theorem P17036428714241313504.correct : P17036428714241313504.Spec := by
  intro n
  simp only [A142448, Nat.add_sub_cancel]

end A142448

/-! ## A142448.P7009360445870934979

`or(p?[A157924(n+1)-8], A347523(n))`
-/

namespace A142448.P7009360445870934979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A347523 n)

end

end A142448.P7009360445870934979

namespace A142448

/-- `or(p?[A157924(n+1)-8], A347523(n))` -/
def P7009360445870934979.Spec : Prop :=
  ∀ n, P7009360445870934979.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P3879557167123644170

`∩[A045401(n+1), A156674(n+1)+1]`
-/

namespace A142448.P3879557167123644170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P3879557167123644170

namespace A142448

/-- `∩[A045401(n+1), A156674(n+1)+1]` -/
def P3879557167123644170.Spec : Prop :=
  ∀ n, (P3879557167123644170.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P8089439523536687555

`∩[A156674(2*(n+1))+1, A045441(n+2)]`
-/

namespace A142448.P8089439523536687555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P8089439523536687555

namespace A142448

/-- `∩[A156674(2*(n+1))+1, A045441(n+2)]` -/
def P8089439523536687555.Spec : Prop :=
  ∀ n, (P8089439523536687555.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P18304759829116964421

`∩[A156674(2*(n+1))+1, A045452(n+2)]`
-/

namespace A142448.P18304759829116964421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P18304759829116964421

namespace A142448

/-- `∩[A156674(2*(n+1))+1, A045452(n+2)]` -/
def P18304759829116964421.Spec : Prop :=
  ∀ n, (P18304759829116964421.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P10731539770694442527

`∩[A156674(2*(n+1))+1, A045346(n+2)]`
-/

namespace A142448.P10731539770694442527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P10731539770694442527

namespace A142448

/-- `∩[A156674(2*(n+1))+1, A045346(n+2)]` -/
def P10731539770694442527.Spec : Prop :=
  ∀ n, (P10731539770694442527.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P9061074659162287864

`∩[A156674(n+1)+1, A042990(n)]`
-/

namespace A142448.P9061074659162287864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P9061074659162287864

namespace A142448

/-- `∩[A156674(n+1)+1, A042990(n)]` -/
def P9061074659162287864.Spec : Prop :=
  ∀ n, (P9061074659162287864.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P5805460236386972829

`record[A006530(A157924(n+1)-8)]`
-/

namespace A142448.P5805460236386972829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157924 (n + 1) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142448.P5805460236386972829

namespace A142448

/-- `record[A006530(A157924(n+1)-8)]` -/
def P5805460236386972829.Spec : Prop :=
  ∀ n, P5805460236386972829.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P13233482281079842812

`record[A020639(A157924(n+1)-8)]`
-/

namespace A142448.P13233482281079842812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157924 (n + 1) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142448.P13233482281079842812

namespace A142448

/-- `record[A020639(A157924(n+1)-8)]` -/
def P13233482281079842812.Spec : Prop :=
  ∀ n, P13233482281079842812.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P14964589992810459863

`record[A020639(A242181(n+2)-n)]`
-/

namespace A142448.P14964589992810459863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242181 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142448.P14964589992810459863

namespace A142448

/-- `record[A020639(A242181(n+2)-n)]` -/
def P14964589992810459863.Spec : Prop :=
  ∀ n, P14964589992810459863.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P4450920517938341313

`record[A006530(2*(A158066(n+1)-7)+3)]`
-/

namespace A142448.P4450920517938341313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (A158066 (n + 1) - 7) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142448.P4450920517938341313

namespace A142448

/-- `record[A006530(2*(A158066(n+1)-7)+3)]` -/
def P4450920517938341313.Spec : Prop :=
  ∀ n, P4450920517938341313.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P3143690101882737077

`or(1, p?[A017041(A017041(n))])`
-/

namespace A142448.P3143690101882737077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142448.P3143690101882737077

namespace A142448

/-- `or(1, p?[A017041(A017041(n))])` -/
def P3143690101882737077.Spec : Prop :=
  ∀ n, P3143690101882737077.a n = A142448 (n + 1)

end A142448

/-! ## A142448.P10138535827796518109

`∩[A045447(n+1), A133897(n)-2]`
-/

namespace A142448.P10138535827796518109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133897 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142448.P10138535827796518109

namespace A142448

/-- `∩[A045447(n+1), A133897(n)-2]` -/
def P10138535827796518109.Spec : Prop :=
  ∀ n, (P10138535827796518109.a n : ℤ) = A142448 (n + 1)

end A142448

/-! ## A142448.P12382914831359461389

`record[A006530(A017041(A017041(2*n+1)))]`
-/

namespace A142448.P12382914831359461389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017041 (A017041 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142448.P12382914831359461389

namespace A142448

/-- `record[A006530(A017041(A017041(2*n+1)))]` -/
def P12382914831359461389.Spec : Prop :=
  ∀ n, P12382914831359461389.a n = A142448 (n + 1)

end A142448

/-!
# A142449: Primes congruent to 41 mod 49.

The programs for A142449, the canonical program `A142449.P15985166372383252766` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142449 has offset 1).

The definition of A142449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142449.P15985166372383252766

`p?[49*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142449

/-- `p?[49*n-8]` -/
def P15985166372383252766.Spec : Prop :=
  ∀ n, P15985166372383252766.a n = A142449 (n + 1)

theorem P15985166372383252766.correct : P15985166372383252766.Spec := by
  intro n
  simp only [A142449, Nat.add_sub_cancel]

end A142449

/-! ## A142449.P633730271557398315

`or(1, p?[a(n-1)+49])` with `a(0)=41`
-/

namespace A142449.P633730271557398315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [41] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142449.P633730271557398315

namespace A142449

/-- `or(1, p?[a(n-1)+49])` -/
def P633730271557398315.Spec : Prop :=
  ∀ n, (P633730271557398315.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P10152416351358494931

`or(p?[49*n+41], A130543(n))`
-/

namespace A142449.P10152416351358494931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A130543 n)

end

end A142449.P10152416351358494931

namespace A142449

/-- `or(p?[49*n+41], A130543(n))` -/
def P10152416351358494931.Spec : Prop :=
  ∀ n, P10152416351358494931.a n = A142449 (n + 1)

end A142449

/-! ## A142449.P2185486957670006015

`∩[A045423(n+1), A156674(n+1)+2]`
-/

namespace A142449.P2185486957670006015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P2185486957670006015

namespace A142449

/-- `∩[A045423(n+1), A156674(n+1)+2]` -/
def P2185486957670006015.Spec : Prop :=
  ∀ n, (P2185486957670006015.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P9947742938149799295

`∩[A045460(n+1), A156674(n+1)+2]`
-/

namespace A142449.P9947742938149799295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P9947742938149799295

namespace A142449

/-- `∩[A045460(n+1), A156674(n+1)+2]` -/
def P9947742938149799295.Spec : Prop :=
  ∀ n, (P9947742938149799295.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P4206293521624949517

`∩[A045467(n+1), A156674(n+1)+2]`
-/

namespace A142449.P4206293521624949517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P4206293521624949517

namespace A142449

/-- `∩[A045467(n+1), A156674(n+1)+2]` -/
def P4206293521624949517.Spec : Prop :=
  ∀ n, (P4206293521624949517.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P1844303678318487624

`∩[A045384(n+1), A156674(n+1)+2]`
-/

namespace A142449.P1844303678318487624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P1844303678318487624

namespace A142449

/-- `∩[A045384(n+1), A156674(n+1)+2]` -/
def P1844303678318487624.Spec : Prop :=
  ∀ n, (P1844303678318487624.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P885470295557286807

`∩[A045369(n+1), A156674(n+1)+2]`
-/

namespace A142449.P885470295557286807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P885470295557286807

namespace A142449

/-- `∩[A045369(n+1), A156674(n+1)+2]` -/
def P885470295557286807.Spec : Prop :=
  ∀ n, (P885470295557286807.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P727999199770980096

`∩[A156674(2*(n+1))+2, A042990(n+1)]`
-/

namespace A142449.P727999199770980096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P727999199770980096

namespace A142449

/-- `∩[A156674(2*(n+1))+2, A042990(n+1)]` -/
def P727999199770980096.Spec : Prop :=
  ∀ n, (P727999199770980096.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P15388201592327769461

`∩[A156674(2*(n+1))+2, A045346(n+2)]`
-/

namespace A142449.P15388201592327769461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142449.P15388201592327769461

namespace A142449

/-- `∩[A156674(2*(n+1))+2, A045346(n+2)]` -/
def P15388201592327769461.Spec : Prop :=
  ∀ n, (P15388201592327769461.a n : ℤ) = A142449 (n + 1)

end A142449

/-! ## A142449.P7841708555161830474

`record[A006530(49*n+41)]`
-/

namespace A142449.P7841708555161830474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (49 * n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142449.P7841708555161830474

namespace A142449

/-- `record[A006530(49*n+41)]` -/
def P7841708555161830474.Spec : Prop :=
  ∀ n, P7841708555161830474.a n = A142449 (n + 1)

end A142449

/-! ## A142449.P1397316265759121322

`record[A020639(49*n+41)]`
-/

namespace A142449.P1397316265759121322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142449.P1397316265759121322

namespace A142449

/-- `record[A020639(49*n+41)]` -/
def P1397316265759121322.Spec : Prop :=
  ∀ n, P1397316265759121322.a n = A142449 (n + 1)

end A142449

/-!
# A142450: Primes congruent to 43 mod 49.

The programs for A142450, the canonical program `A142450.P14669569743645078518` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142450 has offset 1).

The definition of A142450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142450.P14669569743645078518

`p?[49*n-6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142450

/-- `p?[49*n-6]` -/
def P14669569743645078518.Spec : Prop :=
  ∀ n, P14669569743645078518.a n = A142450 (n + 1)

theorem P14669569743645078518.correct : P14669569743645078518.Spec := by
  intro n
  simp only [A142450, Nat.add_sub_cancel]

end A142450

/-! ## A142450.P15627561806812802117

`p?[A158066(n+1)-7]%A059462(n+1)`
-/

namespace A142450.P15627561806812802117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A059462 (n + 1))

end

end A142450.P15627561806812802117

namespace A142450

/-- `p?[A158066(n+1)-7]%A059462(n+1)` -/
def P15627561806812802117.Spec : Prop :=
  ∀ n, P15627561806812802117.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P14431538852366591292

`record[A020639(A158066(n+1)-7)]`
-/

namespace A142450.P14431538852366591292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142450.P14431538852366591292

namespace A142450

/-- `record[A020639(A158066(n+1)-7)]` -/
def P14431538852366591292.Spec : Prop :=
  ∀ n, P14431538852366591292.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P7683023327519383368

`A000265(p?[A158066(n+1)-7])`
-/

namespace A142450.P7683023327519383368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142450.P7683023327519383368

namespace A142450

/-- `A000265(p?[A158066(n+1)-7])` -/
def P7683023327519383368.Spec : Prop :=
  ∀ n, P7683023327519383368.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P7013331970677713379

`A007947(p?[A158066(n+1)-7])`
-/

namespace A142450.P7013331970677713379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142450.P7013331970677713379

namespace A142450

/-- `A007947(p?[A158066(n+1)-7])` -/
def P7013331970677713379.Spec : Prop :=
  ∀ n, P7013331970677713379.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P10553223050539640264

`record[A020639(A304205(n+1)+31)]`
-/

namespace A142450.P10553223050539640264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142450.P10553223050539640264

namespace A142450

/-- `record[A020639(A304205(n+1)+31)]` -/
def P10553223050539640264.Spec : Prop :=
  ∀ n, P10553223050539640264.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P13725507719832616909

`record[A020639(A242181(n+1)+4-n)]`
-/

namespace A142450.P13725507719832616909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242181 (n + 1) + 4 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142450.P13725507719832616909

namespace A142450

/-- `record[A020639(A242181(n+1)+4-n)]` -/
def P13725507719832616909.Spec : Prop :=
  ∀ n, P13725507719832616909.a n = A142450 (n + 1)

end A142450

/-! ## A142450.P11594129853786522071

`record[A020639(A045800(2*n+3)-n)]`
-/

namespace A142450.P11594129853786522071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045800 (2 * n + 3) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142450.P11594129853786522071

namespace A142450

/-- `record[A020639(A045800(2*n+3)-n)]` -/
def P11594129853786522071.Spec : Prop :=
  ∀ n, P11594129853786522071.a n = A142450 (n + 1)

end A142450

/-!
# A142451: Primes congruent to 44 mod 49.

The programs for A142451, the canonical program `A142451.P16375668238435380372` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142451 has offset 1).

The definition of A142451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142451.P16375668238435380372

`p?[49*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142451

/-- `p?[49*n-5]` -/
def P16375668238435380372.Spec : Prop :=
  ∀ n, P16375668238435380372.a n = A142451 (n + 1)

theorem P16375668238435380372.correct : P16375668238435380372.Spec := by
  intro n
  simp only [A142451, Nat.add_sub_cancel]

end A142451

/-! ## A142451.P13773113377315024416

`A000027(p?[A157924(n+1)-4])`
-/

namespace A142451.P13773113377315024416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P13773113377315024416

namespace A142451

/-- `A000027(p?[A157924(n+1)-4])` -/
def P13773113377315024416.Spec : Prop :=
  ∀ n, P13773113377315024416.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P1636973806946555836

`A000027(p?[A157947(n+1)-6])`
-/

namespace A142451.P1636973806946555836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P1636973806946555836

namespace A142451

/-- `A000027(p?[A157947(n+1)-6])` -/
def P1636973806946555836.Spec : Prop :=
  ∀ n, P1636973806946555836.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P11016000969295423903

`A000027(p?[A158066(n+1)-6])`
-/

namespace A142451.P11016000969295423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P11016000969295423903

namespace A142451

/-- `A000027(p?[A158066(n+1)-6])` -/
def P11016000969295423903.Spec : Prop :=
  ∀ n, P11016000969295423903.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P17117902014724727122

`A000027(p?[A304205(n+1)+32])`
-/

namespace A142451.P17117902014724727122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P17117902014724727122

namespace A142451

/-- `A000027(p?[A304205(n+1)+32])` -/
def P17117902014724727122.Spec : Prop :=
  ∀ n, P17117902014724727122.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P1113653034225770999

`A000265(p?[A157924(n+1)-4])`
-/

namespace A142451.P1113653034225770999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P1113653034225770999

namespace A142451

/-- `A000265(p?[A157924(n+1)-4])` -/
def P1113653034225770999.Spec : Prop :=
  ∀ n, P1113653034225770999.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P5125362935346262560

`A007947(p?[A157924(n+1)-4])`
-/

namespace A142451.P5125362935346262560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P5125362935346262560

namespace A142451

/-- `A007947(p?[A157924(n+1)-4])` -/
def P5125362935346262560.Spec : Prop :=
  ∀ n, P5125362935346262560.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P14641198184380627883

`record[A020639(A157924(n+2)-4)]`
-/

namespace A142451.P14641198184380627883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157924 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142451.P14641198184380627883

namespace A142451

/-- `record[A020639(A157924(n+2)-4)]` -/
def P14641198184380627883.Spec : Prop :=
  ∀ n, P14641198184380627883.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P12566783570379423196

`A000265(p?[A158066(n+1)-6])`
-/

namespace A142451.P12566783570379423196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P12566783570379423196

namespace A142451

/-- `A000265(p?[A158066(n+1)-6])` -/
def P12566783570379423196.Spec : Prop :=
  ∀ n, P12566783570379423196.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P11087253199120342287

`A007947(p?[A158066(n+1)-6])`
-/

namespace A142451.P11087253199120342287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P11087253199120342287

namespace A142451

/-- `A007947(p?[A158066(n+1)-6])` -/
def P11087253199120342287.Spec : Prop :=
  ∀ n, P11087253199120342287.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P1333069333662919907

`A000265(p?[A304205(n+1)+32])`
-/

namespace A142451.P1333069333662919907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P1333069333662919907

namespace A142451

/-- `A000265(p?[A304205(n+1)+32])` -/
def P1333069333662919907.Spec : Prop :=
  ∀ n, P1333069333662919907.a n = A142451 (n + 1)

end A142451

/-! ## A142451.P5268925231745693076

`A034699(p?[A158066(n+1)-6])`
-/

namespace A142451.P5268925231745693076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142451.P5268925231745693076

namespace A142451

/-- `A034699(p?[A158066(n+1)-6])` -/
def P5268925231745693076.Spec : Prop :=
  ∀ n, P5268925231745693076.a n = A142451 (n + 1)

end A142451

/-!
# A142452: Primes congruent to 45 mod 49.

The programs for A142452, the canonical program `A142452.P16353487928396230098` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142452 has offset 1).

The definition of A142452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142452.P16353487928396230098

`p?[49*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142452

/-- `p?[49*n-4]` -/
def P16353487928396230098.Spec : Prop :=
  ∀ n, P16353487928396230098.a n = A142452 (n + 1)

theorem P16353487928396230098.correct : P16353487928396230098.Spec := by
  intro n
  simp only [A142452, Nat.add_sub_cancel]

end A142452

/-! ## A142452.P5941285377102739852

`A000027(p?[A053743(n)-A005843(n)])`
-/

namespace A142452.P5941285377102739852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P5941285377102739852

namespace A142452

/-- `A000027(p?[A053743(n)-A005843(n)])` -/
def P5941285377102739852.Spec : Prop :=
  ∀ n, P5941285377102739852.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P7048512754728213920

`A000027(p?[A102438(n)-A004273(n)])`
-/

namespace A142452.P7048512754728213920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P7048512754728213920

namespace A142452

/-- `A000027(p?[A102438(n)-A004273(n)])` -/
def P7048512754728213920.Spec : Prop :=
  ∀ n, P7048512754728213920.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P17833038261980920289

`A000027(p?[A158066(n+1)-5])`
-/

namespace A142452.P17833038261980920289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P17833038261980920289

namespace A142452

/-- `A000027(p?[A158066(n+1)-5])` -/
def P17833038261980920289.Spec : Prop :=
  ∀ n, P17833038261980920289.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P7014471525731098869

`A000027(p?[A304205(n+1)-16])`
-/

namespace A142452.P7014471525731098869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P7014471525731098869

namespace A142452

/-- `A000027(p?[A304205(n+1)-16])` -/
def P7014471525731098869.Spec : Prop :=
  ∀ n, P7014471525731098869.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P9302169140181845029

`or(p?[A158066(n+1)-5], A000007(n))`
-/

namespace A142452.P9302169140181845029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142452.P9302169140181845029

namespace A142452

/-- `or(p?[A158066(n+1)-5], A000007(n))` -/
def P9302169140181845029.Spec : Prop :=
  ∀ n, P9302169140181845029.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P4273924921218690288

`p?[A158066(n+1)-5]%Δ[A017331(n)]`
-/

namespace A142452.P4273924921218690288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (n + 1) - f2 n)

end

end A142452.P4273924921218690288

namespace A142452

/-- `p?[A158066(n+1)-5]%Δ[A017331(n)]` -/
def P4273924921218690288.Spec : Prop :=
  ∀ n, P4273924921218690288.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P2035091316345268221

`p?[A304205(n+1)-16]+A014206(n)%2`
-/

namespace A142452.P2035091316345268221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A014206 n) 2

end

end A142452.P2035091316345268221

namespace A142452

/-- `p?[A304205(n+1)-16]+A014206(n)%2` -/
def P2035091316345268221.Spec : Prop :=
  ∀ n, P2035091316345268221.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P17723697427500599954

`p?[A304205(n+1)-16]/A002061(n)%2`
-/

namespace A142452.P17723697427500599954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A002061 n) 2 : ℚ)

end

end A142452.P17723697427500599954

namespace A142452

/-- `p?[A304205(n+1)-16]/A002061(n)%2` -/
def P17723697427500599954.Spec : Prop :=
  ∀ n, P17723697427500599954.a n = (A142452 (n + 1) : ℚ)

end A142452

/-! ## A142452.P7976645424471058269

`p?[A158066(n+1)-5]+Δ[A109613(n)]%2`
-/

namespace A142452.P7976645424471058269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (f2 (n + 1) - f2 n) 2

end

end A142452.P7976645424471058269

namespace A142452

/-- `p?[A158066(n+1)-5]+Δ[A109613(n)]%2` -/
def P7976645424471058269.Spec : Prop :=
  ∀ n, P7976645424471058269.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P486801115737727353

`A000265(p?[A158066(n+1)-5])`
-/

namespace A142452.P486801115737727353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P486801115737727353

namespace A142452

/-- `A000265(p?[A158066(n+1)-5])` -/
def P486801115737727353.Spec : Prop :=
  ∀ n, P486801115737727353.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P8052097255678868751

`A007913(p?[A158066(n+1)-5])`
-/

namespace A142452.P8052097255678868751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P8052097255678868751

namespace A142452

/-- `A007913(p?[A158066(n+1)-5])` -/
def P8052097255678868751.Spec : Prop :=
  ∀ n, P8052097255678868751.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P7859098051397559610

`A007947(p?[A158066(n+1)-5])`
-/

namespace A142452.P7859098051397559610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P7859098051397559610

namespace A142452

/-- `A007947(p?[A158066(n+1)-5])` -/
def P7859098051397559610.Spec : Prop :=
  ∀ n, P7859098051397559610.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P8386822138255236578

`A008472(p?[A158066(n+1)-5])`
-/

namespace A142452.P8386822138255236578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P8386822138255236578

namespace A142452

/-- `A008472(p?[A158066(n+1)-5])` -/
def P8386822138255236578.Spec : Prop :=
  ∀ n, P8386822138255236578.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P3153629937672461902

`A008472(p?[A304205(n+1)-16])`
-/

namespace A142452.P3153629937672461902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P3153629937672461902

namespace A142452

/-- `A008472(p?[A304205(n+1)-16])` -/
def P3153629937672461902.Spec : Prop :=
  ∀ n, P3153629937672461902.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P12461212034976602530

`A000265(p?[A304205(n+1)+33])`
-/

namespace A142452.P12461212034976602530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P12461212034976602530

namespace A142452

/-- `A000265(p?[A304205(n+1)+33])` -/
def P12461212034976602530.Spec : Prop :=
  ∀ n, P12461212034976602530.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P12324743139027177912

`A000265(p?[A053743(n)-A005843(n)])`
-/

namespace A142452.P12324743139027177912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P12324743139027177912

namespace A142452

/-- `A000265(p?[A053743(n)-A005843(n)])` -/
def P12324743139027177912.Spec : Prop :=
  ∀ n, P12324743139027177912.a n = A142452 (n + 1)

end A142452

/-! ## A142452.P11464692324685235142

`A007947(p?[A053743(n)-A005843(n)])`
-/

namespace A142452.P11464692324685235142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142452.P11464692324685235142

namespace A142452

/-- `A007947(p?[A053743(n)-A005843(n)])` -/
def P11464692324685235142.Spec : Prop :=
  ∀ n, P11464692324685235142.a n = A142452 (n + 1)

end A142452

/-!
# A142453: Primes congruent to 46 mod 49.

The programs for A142453, the canonical program `A142453.P2282337085259382380` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142453 has offset 1).

The definition of A142453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142453.P2282337085259382380

`p?[49*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142453

/-- `p?[49*n-3]` -/
def P2282337085259382380.Spec : Prop :=
  ∀ n, P2282337085259382380.a n = A142453 (n + 1)

theorem P2282337085259382380.correct : P2282337085259382380.Spec := by
  intro n
  simp only [A142453, Nat.add_sub_cancel]

end A142453

/-! ## A142453.P13871994119592669741

`or(1, p?[A157947(n+1)-4])`
-/

namespace A142453.P13871994119592669741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142453.P13871994119592669741

namespace A142453

/-- `or(1, p?[A157947(n+1)-4])` -/
def P13871994119592669741.Spec : Prop :=
  ∀ n, P13871994119592669741.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P2184271791124019173

`or(1, p?[A158066(n+1)-4])`
-/

namespace A142453.P2184271791124019173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142453.P2184271791124019173

namespace A142453

/-- `or(1, p?[A158066(n+1)-4])` -/
def P2184271791124019173.Spec : Prop :=
  ∀ n, P2184271791124019173.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P15478322817730495473

`∩[A045460(n+1), A157924(n+1)-2]`
-/

namespace A142453.P15478322817730495473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142453.P15478322817730495473

namespace A142453

/-- `∩[A045460(n+1), A157924(n+1)-2]` -/
def P15478322817730495473.Spec : Prop :=
  ∀ n, (P15478322817730495473.a n : ℤ) = A142453 (n + 1)

end A142453

/-! ## A142453.P1489299092752277637

`∩[A045467(n+1), A157924(n+1)-2]`
-/

namespace A142453.P1489299092752277637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142453.P1489299092752277637

namespace A142453

/-- `∩[A045467(n+1), A157924(n+1)-2]` -/
def P1489299092752277637.Spec : Prop :=
  ∀ n, (P1489299092752277637.a n : ℤ) = A142453 (n + 1)

end A142453

/-! ## A142453.P4031051340845826653

`∩[A045459(n+1), A157924(n+1)-2]`
-/

namespace A142453.P4031051340845826653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142453.P4031051340845826653

namespace A142453

/-- `∩[A045459(n+1), A157924(n+1)-2]` -/
def P4031051340845826653.Spec : Prop :=
  ∀ n, (P4031051340845826653.a n : ℤ) = A142453 (n + 1)

end A142453

/-! ## A142453.P10235884300760724312

`∩[A045449(n+1), A157924(n+1)-2]`
-/

namespace A142453.P10235884300760724312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142453.P10235884300760724312

namespace A142453

/-- `∩[A045449(n+1), A157924(n+1)-2]` -/
def P10235884300760724312.Spec : Prop :=
  ∀ n, (P10235884300760724312.a n : ℤ) = A142453 (n + 1)

end A142453

/-! ## A142453.P5681802364926662808

`∩[A045322(n+1), A157924(n+1)-2]`
-/

namespace A142453.P5681802364926662808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142453.P5681802364926662808

namespace A142453

/-- `∩[A045322(n+1), A157924(n+1)-2]` -/
def P5681802364926662808.Spec : Prop :=
  ∀ n, (P5681802364926662808.a n : ℤ) = A142453 (n + 1)

end A142453

/-! ## A142453.P16080838477732005061

`record[A006530(A157924(n+2)-2)]`
-/

namespace A142453.P16080838477732005061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157924 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142453.P16080838477732005061

namespace A142453

/-- `record[A006530(A157924(n+2)-2)]` -/
def P16080838477732005061.Spec : Prop :=
  ∀ n, P16080838477732005061.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P15518475867715534295

`record[A020639(A157924(n+2)-2)]`
-/

namespace A142453.P15518475867715534295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157924 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142453.P15518475867715534295

namespace A142453

/-- `record[A020639(A157924(n+2)-2)]` -/
def P15518475867715534295.Spec : Prop :=
  ∀ n, P15518475867715534295.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P8311034074662407626

`A007947(p?[A158066(n+1)-4])`
-/

namespace A142453.P8311034074662407626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142453.P8311034074662407626

namespace A142453

/-- `A007947(p?[A158066(n+1)-4])` -/
def P8311034074662407626.Spec : Prop :=
  ∀ n, P8311034074662407626.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P17428396400631617340

`record[A006530(A304609(n+2)-A004771(2*n+1))]`
-/

namespace A142453.P17428396400631617340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 2) - A004771 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142453.P17428396400631617340

namespace A142453

/-- `record[A006530(A304609(n+2)-A004771(2*n+1))]` -/
def P17428396400631617340.Spec : Prop :=
  ∀ n, P17428396400631617340.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P9005078081903338875

`record[A020639(A304609(n+2)-A004771(2*n+1))]`
-/

namespace A142453.P9005078081903338875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304609 (n + 2) - A004771 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142453.P9005078081903338875

namespace A142453

/-- `record[A020639(A304609(n+2)-A004771(2*n+1))]` -/
def P9005078081903338875.Spec : Prop :=
  ∀ n, P9005078081903338875.a n = A142453 (n + 1)

end A142453

/-! ## A142453.P18179367160091787782

`record[A006530(Δ[(A016969(n+3)+n+1)²]+1)]`
-/

namespace A142453.P18179367160091787782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 (n + 3) + (n : ℤ) + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142453.P18179367160091787782

namespace A142453

/-- `record[A006530(Δ[(A016969(n+3)+n+1)²]+1)]` -/
def P18179367160091787782.Spec : Prop :=
  ∀ n, P18179367160091787782.a n = A142453 (n + 1)

end A142453

/-!
# A142454: Primes congruent to 47 mod 49.

The programs for A142454, the canonical program `A142454.P15248753937072255215` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142454 has offset 1).

The definition of A142454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142454.P15248753937072255215

`p?[49*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142454

/-- `p?[49*n-2]` -/
def P15248753937072255215.Spec : Prop :=
  ∀ n, P15248753937072255215.a n = A142454 (n + 1)

theorem P15248753937072255215.correct : P15248753937072255215.Spec := by
  intro n
  simp only [A142454, Nat.add_sub_cancel]

end A142454

/-! ## A142454.P1576653940925568171

`p?[A158066(n+1)-3]%A228268(n+1)`
-/

namespace A142454.P1576653940925568171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A228268 (n + 1))

end

end A142454.P1576653940925568171

namespace A142454

/-- `p?[A158066(n+1)-3]%A228268(n+1)` -/
def P1576653940925568171.Spec : Prop :=
  ∀ n, P1576653940925568171.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P2714920916904810318

`A209229(A017233(n))+p?[A019430(7*n)]`
-/

namespace A142454.P2714920916904810318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A017233 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142454.P2714920916904810318

namespace A142454

/-- `A209229(A017233(n))+p?[A019430(7*n)]` -/
def P2714920916904810318.Spec : Prop :=
  ∀ n, P2714920916904810318.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P13967861963362574743

`A209229(A004139(n+1))+p?[A019430(7*n)]`
-/

namespace A142454.P13967861963362574743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A004139 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142454.P13967861963362574743

namespace A142454

/-- `A209229(A004139(n+1))+p?[A019430(7*n)]` -/
def P13967861963362574743.Spec : Prop :=
  ∀ n, P13967861963362574743.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P6753625350598972666

`A209229((n+1)²+2)+p?[A019430(7*n)]`
-/

namespace A142454.P6753625350598972666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 ((n + 1) ^ 2 + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142454.P6753625350598972666

namespace A142454

/-- `A209229((n+1)²+2)+p?[A019430(7*n)]` -/
def P6753625350598972666.Spec : Prop :=
  ∀ n, P6753625350598972666.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P2396815012612599079

`record[A001414(98*n+47)]`
-/

namespace A142454.P2396815012612599079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (98 * n + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142454.P2396815012612599079

namespace A142454

/-- `record[A001414(98*n+47)]` -/
def P2396815012612599079.Spec : Prop :=
  ∀ n, P2396815012612599079.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P15238611146535658498

`record[A020639(49*(n+1)-2)]`
-/

namespace A142454.P15238611146535658498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (49 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142454.P15238611146535658498

namespace A142454

/-- `record[A020639(49*(n+1)-2)]` -/
def P15238611146535658498.Spec : Prop :=
  ∀ n, P15238611146535658498.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P5394450315701190724

`record[A006530(abs(2-Δ[(7*n)²]))]`
-/

namespace A142454.P5394450315701190724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142454.P5394450315701190724

namespace A142454

/-- `record[A006530(abs(2-Δ[(7*n)²]))]` -/
def P5394450315701190724.Spec : Prop :=
  ∀ n, P5394450315701190724.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P6638131713634756180

`A001414(p?[A019430(7*n)])`
-/

namespace A142454.P6638131713634756180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142454.P6638131713634756180

namespace A142454

/-- `A001414(p?[A019430(7*n)])` -/
def P6638131713634756180.Spec : Prop :=
  ∀ n, P6638131713634756180.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P206441446856079478

`A008472(p?[A019430(7*n)])`
-/

namespace A142454.P206441446856079478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142454.P206441446856079478

namespace A142454

/-- `A008472(p?[A019430(7*n)])` -/
def P206441446856079478.Spec : Prop :=
  ∀ n, P206441446856079478.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P14819554979844437902

`A007947(record[A020639(98*n+47)])`
-/

namespace A142454.P14819554979844437902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (98 * n + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A142454.P14819554979844437902

namespace A142454

/-- `A007947(record[A020639(98*n+47)])` -/
def P14819554979844437902.Spec : Prop :=
  ∀ n, P14819554979844437902.a n = A142454 (n + 1)

end A142454

/-! ## A142454.P15170379198885206301

`∩[A045458(n+1), A056022(n+1)-1]`
-/

namespace A142454.P15170379198885206301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056022 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142454.P15170379198885206301

namespace A142454

/-- `∩[A045458(n+1), A056022(n+1)-1]` -/
def P15170379198885206301.Spec : Prop :=
  ∀ n, (P15170379198885206301.a n : ℤ) = A142454 (n + 1)

end A142454

/-! ## A142454.P4890869463169189005

`∩[A045447(n+1), A133897(n)]`
-/

namespace A142454.P4890869463169189005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142454.P4890869463169189005

namespace A142454

/-- `∩[A045447(n+1), A133897(n)]` -/
def P4890869463169189005.Spec : Prop :=
  ∀ n, (P4890869463169189005.a n : ℤ) = A142454 (n + 1)

end A142454

/-!
# A142455: Primes congruent to 48 mod 49.

The programs for A142455, the canonical program `A142455.P9568799611182206456` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142455 has offset 1).

The definition of A142455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142455.P9568799611182206456

`p?[49*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142455

/-- `p?[49*n-1]` -/
def P9568799611182206456.Spec : Prop :=
  ∀ n, P9568799611182206456.a n = A142455 (n + 1)

theorem P9568799611182206456.correct : P9568799611182206456.Spec := by
  intro n
  simp only [A142455, Nat.add_sub_cancel]

end A142455

/-! ## A142455.P17151491076805262037

`or(1, p?[a(n-1)+49])` with `a(0)=48`
-/

namespace A142455.P17151491076805262037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [48] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142455.P17151491076805262037

namespace A142455

/-- `or(1, p?[a(n-1)+49])` -/
def P17151491076805262037.Spec : Prop :=
  ∀ n, (P17151491076805262037.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P15443298399234149203

`or(1, p?[A157924(n+1)])`
-/

namespace A142455.P15443298399234149203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142455.P15443298399234149203

namespace A142455

/-- `or(1, p?[A157924(n+1)])` -/
def P15443298399234149203.Spec : Prop :=
  ∀ n, P15443298399234149203.a n = A142455 (n + 1)

end A142455

/-! ## A142455.P2505513951733428072

`p?[A157924(n+1)]%A157915(n+1)`
-/

namespace A142455.P2505513951733428072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157915 (n + 1))

end

end A142455.P2505513951733428072

namespace A142455

/-- `p?[A157924(n+1)]%A157915(n+1)` -/
def P2505513951733428072.Spec : Prop :=
  ∀ n, P2505513951733428072.a n = A142455 (n + 1)

end A142455

/-! ## A142455.P14997635854871239616

`∩[A045473(n+1), A157924(n+1)]`
-/

namespace A142455.P14997635854871239616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P14997635854871239616

namespace A142455

/-- `∩[A045473(n+1), A157924(n+1)]` -/
def P14997635854871239616.Spec : Prop :=
  ∀ n, (P14997635854871239616.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P1302901576069874819

`∩[A045464(n+1), A157924(n+1)]`
-/

namespace A142455.P1302901576069874819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P1302901576069874819

namespace A142455

/-- `∩[A045464(n+1), A157924(n+1)]` -/
def P1302901576069874819.Spec : Prop :=
  ∀ n, (P1302901576069874819.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P14338539100216308990

`∩[A045377(n+1), A157924(n+1)]`
-/

namespace A142455.P14338539100216308990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P14338539100216308990

namespace A142455

/-- `∩[A045377(n+1), A157924(n+1)]` -/
def P14338539100216308990.Spec : Prop :=
  ∀ n, (P14338539100216308990.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P9692234287625205453

`∩[A045389(n+1), A157924(n+1)]`
-/

namespace A142455.P9692234287625205453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P9692234287625205453

namespace A142455

/-- `∩[A045389(n+1), A157924(n+1)]` -/
def P9692234287625205453.Spec : Prop :=
  ∀ n, (P9692234287625205453.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P7329121909482955794

`∩[A045463(n+1), A157924(n+1)]`
-/

namespace A142455.P7329121909482955794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P7329121909482955794

namespace A142455

/-- `∩[A045463(n+1), A157924(n+1)]` -/
def P7329121909482955794.Spec : Prop :=
  ∀ n, (P7329121909482955794.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P16397000264957847075

`∩[A045467(n+1), A157924(n+1)]`
-/

namespace A142455.P16397000264957847075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P16397000264957847075

namespace A142455

/-- `∩[A045467(n+1), A157924(n+1)]` -/
def P16397000264957847075.Spec : Prop :=
  ∀ n, (P16397000264957847075.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P3908996045239975404

`∩[A045472(n+1), A157924(n+1)]`
-/

namespace A142455.P3908996045239975404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P3908996045239975404

namespace A142455

/-- `∩[A045472(n+1), A157924(n+1)]` -/
def P3908996045239975404.Spec : Prop :=
  ∀ n, (P3908996045239975404.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P7211992005396645064

`∩[A045444(n+1), A157924(n+1)]`
-/

namespace A142455.P7211992005396645064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P7211992005396645064

namespace A142455

/-- `∩[A045444(n+1), A157924(n+1)]` -/
def P7211992005396645064.Spec : Prop :=
  ∀ n, (P7211992005396645064.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P3504446540378327853

`∩[A045455(n+1), A157924(n+1)]`
-/

namespace A142455.P3504446540378327853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P3504446540378327853

namespace A142455

/-- `∩[A045455(n+1), A157924(n+1)]` -/
def P3504446540378327853.Spec : Prop :=
  ∀ n, (P3504446540378327853.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P3285834847487300269

`∩[A045460(n+1), A157924(n+1)]`
-/

namespace A142455.P3285834847487300269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P3285834847487300269

namespace A142455

/-- `∩[A045460(n+1), A157924(n+1)]` -/
def P3285834847487300269.Spec : Prop :=
  ∀ n, (P3285834847487300269.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P6193544811918099566

`∩[A045423(n+1), A157924(n+1)]`
-/

namespace A142455.P6193544811918099566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P6193544811918099566

namespace A142455

/-- `∩[A045423(n+1), A157924(n+1)]` -/
def P6193544811918099566.Spec : Prop :=
  ∀ n, (P6193544811918099566.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P6261713985499123550

`∩[A045434(n+1), A157924(n+1)]`
-/

namespace A142455.P6261713985499123550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P6261713985499123550

namespace A142455

/-- `∩[A045434(n+1), A157924(n+1)]` -/
def P6261713985499123550.Spec : Prop :=
  ∀ n, (P6261713985499123550.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P9881422677404026578

`∩[A045329(n+1), A157924(n+1)]`
-/

namespace A142455.P9881422677404026578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P9881422677404026578

namespace A142455

/-- `∩[A045329(n+1), A157924(n+1)]` -/
def P9881422677404026578.Spec : Prop :=
  ∀ n, (P9881422677404026578.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P8443498648353399721

`∩[A045341(n+1), A157924(n+1)]`
-/

namespace A142455.P8443498648353399721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P8443498648353399721

namespace A142455

/-- `∩[A045341(n+1), A157924(n+1)]` -/
def P8443498648353399721.Spec : Prop :=
  ∀ n, (P8443498648353399721.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P17672501945666565932

`∩[A045459(n+1), A157924(n+1)]`
-/

namespace A142455.P17672501945666565932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P17672501945666565932

namespace A142455

/-- `∩[A045459(n+1), A157924(n+1)]` -/
def P17672501945666565932.Spec : Prop :=
  ∀ n, (P17672501945666565932.a n : ℤ) = A142455 (n + 1)

end A142455

/-! ## A142455.P4031496469882130759

`∩[A003625(n+1), A157924(n+1)]`
-/

namespace A142455.P4031496469882130759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142455.P4031496469882130759

namespace A142455

/-- `∩[A003625(n+1), A157924(n+1)]` -/
def P4031496469882130759.Spec : Prop :=
  ∀ n, (P4031496469882130759.a n : ℤ) = A142455 (n + 1)

end A142455

/-!
# A142456: Primes of the form (p(n)-2*n)/5, where p(n)=n-th prime.

The programs for A142456, there is no canonical definition to state claims against.
-/

/-! ## A142456.P11809527272701611907

`p?[A200777(p?[A104472(n+1)])]`
-/

namespace A142456.P11809527272701611907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200777 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142456.P11809527272701611907

/-! ## A142456.P17685389059468712181

`p?[A338331(2*n+1)-A014684(n+2)]`
-/

namespace A142456.P17685389059468712181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (2 * n + 1) - A014684 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142456.P17685389059468712181

/-!
# A142457: A triangular sequence "representation" of the modulo 11 Integer field: t(+)(n,m)=Mod[n + m, 11]; t(x)(n,m)=Mod[n*m, 11]; t(n,m)=Mod[t(=)(n,m)*t(X)(n,m),11].

The programs for A142457, there is no canonical definition to state claims against.
-/

/-! ## A142457.P16597970294259036080

`(A051162(n)*A079904(n))%11`
-/

namespace A142457.P16597970294259036080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051162 n * A079904 n) 11

end

end A142457.P16597970294259036080

/-!
# A142458: Triangle T(n,k) read by rows: T(n,k) = 1 if k=1 or k=n, otherwise T(n,k) = (3*n-3*k+1)*T(n-1,k-1) + (3*k-2)*T(n-1,k).

The programs for A142458, there is no canonical definition to state claims against.
-/

/-! ## A142458.P17818360104868709699

`A008292(n+1)/A155467(n)*A155491(n)`
-/

namespace A142458.P17818360104868709699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A155467 n : ℚ) * (A155491 n : ℚ)

end

end A142458.P17818360104868709699

/-! ## A142458.P74805129864685216

`A257616(n)/A137688(n)`
-/

namespace A142458.P74805129864685216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257616 n : ℚ) / (A137688 n : ℚ)

end

end A142458.P74805129864685216

/-! ## A142458.P4638330804797070679

`A257616(n)/Δ[A007664(n)]`
-/

namespace A142458.P4638330804797070679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257616 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A142458.P4638330804797070679

/-! ## A142458.P15462551936000523618

`2/A140513(n)*A257616(n)`
-/

namespace A142458.P15462551936000523618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A140513 n : ℚ) * (A257616 n : ℚ)

end

end A142458.P15462551936000523618

/-! ## A142458.P12568013437061305088

`A257616(n)/A000079(A003056(n))`
-/

namespace A142458.P12568013437061305088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257616 n : ℚ) / (A000079 (A003056 n).toNat : ℚ)

end

end A142458.P12568013437061305088

/-! ## A142458.P17620587966827544420

`A257616(n)/A004175(A057944(n))`
-/

namespace A142458.P17620587966827544420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257616 n : ℚ) / (A004175 (A057944 n).toNat : ℚ)

end

end A142458.P17620587966827544420

/-! ## A142458.P4145223769158631647

`A008292(n+1)/A257609(n)*A257616(n)`
-/

namespace A142458.P4145223769158631647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A257609 n : ℚ) * (A257616 n : ℚ)

end

end A142458.P4145223769158631647

/-! ## A142458.P4351548826039348310

`A142459(n+1)/A155493(n)*A155491(n)`
-/

namespace A142458.P4351548826039348310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A155493 n : ℚ) * (A155491 n : ℚ)

end

end A142458.P4351548826039348310

/-! ## A142458.P3661859957804365416

`A257616(n)/A000010(A140513(n))`
-/

namespace A142458.P3661859957804365416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257616 n : ℚ) / (A000010 (A140513 n).toNat : ℚ)

end

end A142458.P3661859957804365416

/-!
# A142459: Triangle read by rows: T(n,k) = (4n-4k+1) * T(n-1,k-1) + (4k-3) * T(n-1,k).

The programs for A142459, there is no canonical definition to state claims against.
-/

/-! ## A142459.P4836164111816308465

`A155493(n)/A155497(n)*A155495(n)`
-/

namespace A142459.P4836164111816308465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155493 n : ℚ) / (A155497 n : ℚ) * (A155495 n : ℚ)

end

end A142459.P4836164111816308465

/-! ## A142459.P8652761927076137211

`A002260(n+1)/A074909(n)*A155493(n)`
-/

namespace A142459.P8652761927076137211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A074909 n : ℚ) * (A155493 n : ℚ)

end

end A142459.P8652761927076137211

/-! ## A142459.P3106037914045032924

`A008292(n+1)/A155467(n)*A155493(n)`
-/

namespace A142459.P3106037914045032924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A155467 n : ℚ) * (A155493 n : ℚ)

end

end A142459.P3106037914045032924

/-! ## A142459.P2741848588187737926

`A142458(n+1)/A155491(n)*A155493(n)`
-/

namespace A142459.P2741848588187737926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A155491 n : ℚ) * (A155493 n : ℚ)

end

end A142459.P2741848588187737926

/-! ## A142459.P3664191317290167441

`A257618(n)/A137688(n)`
-/

namespace A142459.P3664191317290167441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257618 n : ℚ) / (A137688 n : ℚ)

end

end A142459.P3664191317290167441

/-! ## A142459.P9989054723002407554

`A257618(n)/Δ[A007664(n)]`
-/

namespace A142459.P9989054723002407554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257618 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A142459.P9989054723002407554

/-! ## A142459.P764829307363653246

`A007318(n)/A038208(n)*A257618(n)`
-/

namespace A142459.P764829307363653246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A038208 n : ℚ) * (A257618 n : ℚ)

end

end A142459.P764829307363653246

/-!
# A142460: Triangle read by rows: T(n,k) (1<=k<=n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 5.

The programs for A142460, there is no canonical definition to state claims against.
-/

/-! ## A142460.P10697067750428303635

`A130994(A342891(n))`
-/

namespace A142460.P10697067750428303635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130994 (A342891 n).toNat

end

end A142460.P10697067750428303635

/-! ## A142460.P3030177109071478908

`A054895(10*A022170(n))`
-/

namespace A142460.P3030177109071478908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (10 * A022170 n).toNat

end

end A142460.P3030177109071478908

/-! ## A142460.P7924988677168311653

`A054895(lcm(10, A022170(n)))`
-/

namespace A142460.P7924988677168311653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (Int.lcm 10 (A022170 n))

end

end A142460.P7924988677168311653

/-! ## A142460.P3426194748834290492

`A271910(A022167(n))+A082447(A168517(n)²)`
-/

namespace A142460.P3426194748834290492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A022167 n).toNat + A082447 (A168517 n ^ 2).toNat

end

end A142460.P3426194748834290492

/-!
# A142461: Triangle read by rows: T(n,k) (1 <= k <= n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 6.

The programs for A142461, there is no canonical definition to state claims against.
-/

/-! ## A142461.P14916888593307555845

`A054861(4*A022171(n))`
-/

namespace A142461.P14916888593307555845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (4 * A022171 n).toNat

end

end A142461.P14916888593307555845

/-! ## A142461.P13672556503812315397

`A090619(4*A022171(n))`
-/

namespace A142461.P13672556503812315397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090619 (4 * A022171 n).toNat

end

end A142461.P13672556503812315397

/-! ## A142461.P4154289947001021426

`A129235(7^A265080(n))`
-/

namespace A142461.P4154289947001021426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A265080 n : ℤ))).toNat

end

end A142461.P4154289947001021426

/-! ## A142461.P2124032003344512844

`A134478(42^A338756(n+1))`
-/

namespace A142461.P2124032003344512844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.roundAway ((42 : ℚ) ^ (A338756 (n + 1) : ℤ))).toNat

end

end A142461.P2124032003344512844

/-! ## A142461.P15712880632929238411

`A260712(A005897(n))+A022174(n)`
-/

namespace A142461.P15712880632929238411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260712 (A005897 n).toNat + A022174 n

end

end A142461.P15712880632929238411

/-!
# A142462: Triangle read by rows: T(n,k) (1<=k<=n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 7.

The programs for A142462, there is no canonical definition to state claims against.
-/

/-! ## A142462.P16475879564622834694

`A011371(A022172(n)*A056608(2*(n+1)))`
-/

namespace A142462.P16475879564622834694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A022172 n * A056608 (2 * (n + 1))).toNat

end

end A142462.P16475879564622834694

/-! ## A142462.P16048763696715898299

`A194417(A276777(n)^4)`
-/

namespace A142462.P16048763696715898299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A276777 n ^ 4).toNat

end

end A142462.P16048763696715898299

/-! ## A142462.P18282365186684536526

`A194417(A276777(n)²²)`
-/

namespace A142462.P18282365186684536526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 ((A276777 n ^ 2) ^ 2).toNat

end

end A142462.P18282365186684536526

/-! ## A142462.P10863144272204390825

`A108612(A174036(n)+A056492(n+1))`
-/

namespace A142462.P10863144272204390825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108612 (A174036 n + A056492 (n + 1)).toNat

end

end A142462.P10863144272204390825

/-! ## A142462.P10183538753369532846

`A143480(A212801(n+1)%A289425(n+2))`
-/

namespace A142462.P10183538753369532846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143480 (Int.tmod (A212801 (n + 1)) (A289425 (n + 2))).toNat

end

end A142462.P10183538753369532846

/-!
# A142463: a(n) = 2*n^2 + 2*n - 1.

The programs for A142463, the canonical program `A142463.P2232194029249576848` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142463 has offset 0).

The definition of A142463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+2*n-1` (program `A142463.P2232194029249576848`, by `A142463.P2232194029249576848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142463.P12127840689201409448

`4*C(n+1, 2)-1`
-/

namespace A142463.P12127840689201409448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 1) 2 : ℤ) - 1

end

end A142463.P12127840689201409448

namespace A142463

/-- `4*C(n+1, 2)-1` -/
def P12127840689201409448.Spec : Prop :=
  ∀ n, P12127840689201409448.a n = A142463 n

end A142463

/-! ## A142463.P13177777370897744162

`a(n-1)+4*n` with `a(0)=-1`
-/

namespace A142463.P13177777370897744162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (4 * n : ℤ)

end

end A142463.P13177777370897744162

namespace A142463

/-- `a(n-1)+4*n` -/
def P13177777370897744162.Spec : Prop :=
  ∀ n, P13177777370897744162.a n = A142463 n

theorem P13177777370897744162.correct : P13177777370897744162.Spec := by
  intro n
  induction n with
  | zero => simp [A142463, A142463.P13177777370897744162.a, A142463.P2232194029249576848.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A142463, Nat.add_sub_cancel, A142463.P13177777370897744162.a, A142463.P2232194029249576848.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A142463

/-! ## A142463.P2232194029249576848

`2*n²+2*n-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142463

/-- `2*n²+2*n-1` -/
def P2232194029249576848.Spec : Prop :=
  ∀ n, P2232194029249576848.a n = A142463 n

theorem P2232194029249576848.correct : P2232194029249576848.Spec := by
  intro n
  simp only [A142463]

end A142463

/-! ## A142463.P14669923269173537283

`(A005408(n)²-3)/2`
-/

namespace A142463.P14669923269173537283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n ^ 2 - 3 : ℚ) / 2

end

end A142463.P14669923269173537283

namespace A142463

/-- `(A005408(n)²-3)/2` -/
def P14669923269173537283.Spec : Prop :=
  ∀ n, P14669923269173537283.a n = (A142463 n : ℚ)

end A142463

/-! ## A142463.P14427025482630696216

`-A188653(2*n+1)`
-/

namespace A142463.P14427025482630696216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188653 (2 * n + 1)

end

end A142463.P14427025482630696216

namespace A142463

/-- `-A188653(2*n+1)` -/
def P14427025482630696216.Spec : Prop :=
  ∀ n, P14427025482630696216.a n = A142463 n

end A142463

/-! ## A142463.P6000406022152933071

`xor(∑[-(4*n)], -1)`
-/

namespace A142463.P6000406022152933071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A142463.P6000406022152933071

namespace A142463

/-- `xor(∑[-(4*n)], -1)` -/
def P6000406022152933071.Spec : Prop :=
  ∀ n, P6000406022152933071.a n = A142463 n

end A142463

/-! ## A142463.P5519000264926635693

`-or(1, ∑[-(4*n)])`
-/

namespace A142463.P5519000264926635693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A142463.P5519000264926635693

namespace A142463

/-- `-or(1, ∑[-(4*n)])` -/
def P5519000264926635693.Spec : Prop :=
  ∀ n, P5519000264926635693.a n = A142463 n

end A142463

/-! ## A142463.P219505058877162790

`(record[xor(1, n)²]-3)/2`
-/

namespace A142463.P219505058877162790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 3 : ℚ) / 2

end

end A142463.P219505058877162790

namespace A142463

/-- `(record[xor(1, n)²]-3)/2` -/
def P219505058877162790.Spec : Prop :=
  ∀ n, P219505058877162790.a n = (A142463 n : ℚ)

end A142463

/-! ## A142463.P16708719841271800409

`∑[record[xor(3, n+1)-3]]`
-/

namespace A142463.P16708719841271800409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (n + 1) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142463.P16708719841271800409

namespace A142463

/-- `∑[record[xor(3, n+1)-3]]` -/
def P16708719841271800409.Spec : Prop :=
  ∀ n, P16708719841271800409.a n = A142463 n

end A142463

/-! ## A142463.P8342739730897308949

`∑[a(n-1)+4]` with `a(0)=-1, a(1)=4`
-/

namespace A142463.P8342739730897308949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142463.P8342739730897308949

namespace A142463

/-- `∑[a(n-1)+4]` -/
def P8342739730897308949.Spec : Prop :=
  ∀ n, P8342739730897308949.a n = A142463 n

end A142463

/-! ## A142463.P11599640066149050052

`ogf((1-6x+x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A142463.P11599640066149050052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, -1] [1, -3, 3, -1] n

end

end A142463.P11599640066149050052

namespace A142463

/-- `ogf((1-6x+x^2)/(-1+3x-3x^2+x^3))` -/
def P11599640066149050052.Spec : Prop :=
  ∀ n, P11599640066149050052.a n = A142463 n

end A142463

/-! ## A142463.P12065033227823218551

`(or(1, 2*n)²-3)/2`
-/

namespace A142463.P12065033227823218551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) ^ 2 : ℤ) - 3 : ℚ) / 2

end

end A142463.P12065033227823218551

namespace A142463

/-- `(or(1, 2*n)²-3)/2` -/
def P12065033227823218551.Spec : Prop :=
  ∀ n, P12065033227823218551.a n = (A142463 n : ℚ)

end A142463

/-! ## A142463.P1021193466142436982

`(xor(1, 2*n)²-3)/2`
-/

namespace A142463.P1021193466142436982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) ^ 2 : ℤ) - 3 : ℚ) / 2

end

end A142463.P1021193466142436982

namespace A142463

/-- `(xor(1, 2*n)²-3)/2` -/
def P1021193466142436982.Spec : Prop :=
  ∀ n, P1021193466142436982.a n = (A142463 n : ℚ)

end A142463

/-! ## A142463.P5876275745155486321

`2*(lcm(n, n+1)-1/2)`
-/

namespace A142463.P5876275745155486321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm n (n + 1) : ℚ) - (1 : ℚ) / 2)

end

end A142463.P5876275745155486321

namespace A142463

/-- `2*(lcm(n, n+1)-1/2)` -/
def P5876275745155486321.Spec : Prop :=
  ∀ n, P5876275745155486321.a n = (A142463 n : ℚ)

end A142463

/-! ## A142463.P16926966013473208689

`floor(n-∑[a(n-1)-4])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A142463.P16926966013473208689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142463.P16926966013473208689

namespace A142463

/-- `floor(n-∑[a(n-1)-4])` -/
def P16926966013473208689.Spec : Prop :=
  ∀ n, P16926966013473208689.a n = A142463 n

end A142463

/-! ## A142463.P4673846287601338058

`ceil((n+1)*(2*n-acot(n)))`
-/

namespace A142463.P4673846287601338058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * ((2 * n : ℝ) - SequenceMachineLib.acot (n : ℝ))⌉

end

end A142463.P4673846287601338058

namespace A142463

/-- `ceil((n+1)*(2*n-acot(n)))` -/
def P4673846287601338058.Spec : Prop :=
  ∀ n, P4673846287601338058.a n = A142463 n

end A142463

/-! ## A142463.P11063831457543531816

`round((n+1)/acot(2*n)-ϕ)`
-/

namespace A142463.P11063831457543531816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - Real.goldenRatio)

end

end A142463.P11063831457543531816

namespace A142463

/-- `round((n+1)/acot(2*n)-ϕ)` -/
def P11063831457543531816.Spec : Prop :=
  ∀ n, P11063831457543531816.a n = A142463 n

end A142463

/-! ## A142463.P6775468434280168934

`ceil((n+1)*2*n-atan(n+2))`
-/

namespace A142463.P6775468434280168934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (2 * n) : ℝ) - Real.arctan (n + 2 : ℝ)⌉

end

end A142463.P6775468434280168934

namespace A142463

/-- `ceil((n+1)*2*n-atan(n+2))` -/
def P6775468434280168934.Spec : Prop :=
  ∀ n, P6775468434280168934.a n = A142463 n

end A142463

/-! ## A142463.P10436021944345928597

`floor((n+1)*(2*n-acot(n+1)))`
-/

namespace A142463.P10436021944345928597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((2 * n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A142463.P10436021944345928597

namespace A142463

/-- `floor((n+1)*(2*n-acot(n+1)))` -/
def P10436021944345928597.Spec : Prop :=
  ∀ n, P10436021944345928597.a n = A142463 n

end A142463

/-! ## A142463.P15171506765645758590

`round((n+1)*(2*n-acot(n+1)))`
-/

namespace A142463.P15171506765645758590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * ((2 * n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A142463.P15171506765645758590

namespace A142463

/-- `round((n+1)*(2*n-acot(n+1)))` -/
def P15171506765645758590.Spec : Prop :=
  ∀ n, P15171506765645758590.a n = A142463 n

end A142463

/-!
# A142464: Decimal expansion of 13/36.

The programs for A142464, the canonical program `A142464.P18179716683046878993` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142464 has offset 0).

The definition of A142464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142464.P18179716683046878993

`a(n-1)` with `a(0)=3, a(1)=6, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142464

/-- `a(n-1)` -/
def P18179716683046878993.Spec : Prop :=
  ∀ n, (P18179716683046878993.a n : ℤ) = A142464 n

theorem P18179716683046878993.correct : P18179716683046878993.Spec := by
  intro n
  simp only [A142464]

end A142464

/-!
# A142465: Triangle T(n,m) read by rows: T(n,m) = Product_{i=0..5} binomial(n+i,m)/binomial(m+i,m).

The programs for A142465, there is no canonical definition to state claims against.
-/

/-! ## A142465.P3119178368081900545

`A067398(A001263(n+1)%A268799(3*n+1))`
-/

namespace A142465.P3119178368081900545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067398 (Int.tmod (A001263 (n + 1)) (A268799 (3 * n + 1))).toNat

end

end A142465.P3119178368081900545

/-! ## A142465.P9673964152807399771

`A067398(A001263(n+1)^A331023(n+3))`
-/

namespace A142465.P9673964152807399771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067398 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) ^ (A331023 (n + 3) : ℤ))).toNat

end

end A142465.P9673964152807399771

/-! ## A142465.P11271299648121145119

`A067398(A001263(n+1))%A188524(3*n+4)`
-/

namespace A142465.P11271299648121145119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067398 (A001263 (n + 1)).toNat) (A188524 (3 * n + 4))

end

end A142465.P11271299648121145119

/-! ## A142465.P12779580130976759502

`A073363(A167040(n))`
-/

namespace A142465.P12779580130976759502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073363 (A167040 n).toNat

end

end A142465.P12779580130976759502

/-! ## A142465.P13850551803143865843

`A111217(A156581(n))`
-/

namespace A142465.P13850551803143865843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111217 (A156581 n).toNat

end

end A142465.P13850551803143865843

/-!
# A142466: Primes congruent to 27 mod 50.

The programs for A142466, there is no canonical definition to state claims against.
-/

/-! ## A142466.P10124616252345990947

`A141928(n+2)`
-/

namespace A142466.P10124616252345990947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 2)

end

end A142466.P10124616252345990947

/-! ## A142466.P18126845726906371896

`p?[50*n+27]`
-/

namespace A142466.P18126845726906371896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142466.P18126845726906371896

/-! ## A142466.P4846288654586110477

`A000027(p?[A053742(n)+2])`
-/

namespace A142466.P4846288654586110477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142466.P4846288654586110477

/-! ## A142466.P11629601753342451761

`∑{p}[p?[A008607(n+4)+2], #]`
-/

namespace A142466.P11629601753342451761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (n + 4) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142466.P11629601753342451761

/-! ## A142466.P14086725057004976716

`∩[A045349(n+1), A158060(n+1)+1]`
-/

namespace A142466.P14086725057004976716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142466.P14086725057004976716

/-! ## A142466.P11654559333475956417

`∩[A045372(n+1), A158060(n+1)+1]`
-/

namespace A142466.P11654559333475956417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142466.P11654559333475956417

/-! ## A142466.P9360504617419627854

`∩[A008856(n+2)+2, A045356(n+2)]`
-/

namespace A142466.P9360504617419627854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142466.P9360504617419627854

/-! ## A142466.P3682595895020841221

`∩[A008856(n+2)+2, A045378(n+2)]`
-/

namespace A142466.P3682595895020841221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142466.P3682595895020841221

/-! ## A142466.P12964388251350564812

`∑{p}[p?[A008592(A016873(n))+7], #]`
-/

namespace A142466.P12964388251350564812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A016873 n).toNat + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142466.P12964388251350564812

/-! ## A142466.P16906910473202397352

`or(1, p?[A016897(A016897(n))+3])`
-/

namespace A142466.P16906910473202397352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A016897 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142466.P16906910473202397352

/-! ## A142466.P8126420373599303257

`∑{p}[p?[A016873(A016873(n)+3)], #]`
-/

namespace A142466.P8126420373599303257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A016873 n + 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142466.P8126420373599303257

/-! ## A142466.P10210692861592960260

`or(1, p?[A008706(A008706(n+1))+2])`
-/

namespace A142466.P10210692861592960260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142466.P10210692861592960260

/-! ## A142466.P15136857447448525104

`∩[A045380(n+1), A132359(n+1)+2]`
-/

namespace A142466.P15136857447448525104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132359 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142466.P15136857447448525104

/-!
# A142467: Triangle T(n,m) read by rows: T(n,m) = Product_{i=0..6} binomial(n+i,m)/binomial(m+i,m).

The programs for A142467, there is no canonical definition to state claims against.
-/

/-! ## A142467.P13727446161920395575

`A111436(A108558(n))`
-/

namespace A142467.P13727446161920395575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111436 (A108558 n).toNat

end

end A142467.P13727446161920395575

/-! ## A142467.P15618051669478893276

`A087347(A157221(n))`
-/

namespace A142467.P15618051669478893276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087347 (A157221 n).toNat

end

end A142467.P15618051669478893276

/-! ## A142467.P5645080329011861710

`A087347(A174036(n))`
-/

namespace A142467.P5645080329011861710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087347 (A174036 n).toNat

end

end A142467.P5645080329011861710

/-! ## A142467.P12334939021629310384

`A111218(A156581(n))`
-/

namespace A142467.P12334939021629310384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111218 (A156581 n).toNat

end

end A142467.P12334939021629310384

/-! ## A142467.P7695673031019035588

`A129121(A154653(n))`
-/

namespace A142467.P7695673031019035588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129121 (A154653 n).toNat

end

end A142467.P7695673031019035588

/-!
# A142468: An eight-products triangle sequence of coefficients: T(n,k) = binomial(n,k) * Product_{j=1..7} j!*(n+j)!/((k+j)!*(n-k+j)!).

The programs for A142468, there is no canonical definition to state claims against.
-/

/-! ## A142468.P3081318974775611699

`A132330(A081579(n))`
-/

namespace A142468.P3081318974775611699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132330 (A081579 n).toNat

end

end A142468.P3081318974775611699

/-! ## A142468.P10022561948969780271

`A111219(A156581(n))`
-/

namespace A142468.P10022561948969780271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111219 (A156581 n).toNat

end

end A142468.P10022561948969780271

/-! ## A142468.P17684249721790176976

`A320634(A022167(n))`
-/

namespace A142468.P17684249721790176976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (A022167 n).toNat

end

end A142468.P17684249721790176976

/-! ## A142468.P16048645708045750718

`A225086(A168290(n))`
-/

namespace A142468.P16048645708045750718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A168290 n).toNat

end

end A142468.P16048645708045750718

/-! ## A142468.P1187447241188958173

`A007078(A388426(n))`
-/

namespace A142468.P1187447241188958173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A388426 n).toNat

end

end A142468.P1187447241188958173

/-!
# A142470: Triangle T(n, k) = ( (k+2)/(2*binomial(k+2, 2)^2) )*binomial(n, k)^2*binomial(n+1, k)*binomial(n+2, k), read by rows.

The programs for A142470, there is no canonical definition to state claims against.
-/

/-! ## A142470.P16257169103622256339

`A007318(n)*A056939(n)`
-/

namespace A142470.P16257169103622256339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056939 n

end

end A142470.P16257169103622256339

/-! ## A142470.P2806971235902711336

`abs(A056939(n)*A130595(n))`
-/

namespace A142470.P2806971235902711336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056939 n * A130595 n|

end

end A142470.P2806971235902711336

/-! ## A142470.P18084807115067215761

`sqrt(A008459(n))*A056939(n)`
-/

namespace A142470.P18084807115067215761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A056939 n : ℝ)

end

end A142470.P18084807115067215761

/-! ## A142470.P12383265877819772500

`Δ[A102363(n)]*A056939(n)`
-/

namespace A142470.P12383265877819772500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056939 n

end

end A142470.P12383265877819772500

/-! ## A142470.P13434338865921936778

`(A014473(n)+1)*A056939(n)`
-/

namespace A142470.P13434338865921936778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A056939 n

end

end A142470.P13434338865921936778

/-! ## A142470.P17553143103761641097

`A028326(n)/2*A056939(n)`
-/

namespace A142470.P17553143103761641097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A056939 n : ℚ)

end

end A142470.P17553143103761641097

/-! ## A142470.P8056285603403741066

`A007318(n)²/A156584(n)*A156764(n)`
-/

namespace A142470.P8056285603403741066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 : ℚ) / (A156584 n : ℚ) * (A156764 n : ℚ)

end

end A142470.P8056285603403741066

/-! ## A142470.P5016304542710653623

`A004526(A028326(n))*A056939(n)`
-/

namespace A142470.P5016304542710653623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat * A056939 n

end

end A142470.P5016304542710653623

/-!
# A142471: a(0) = a(1) = 0; thereafter a(n) = a(n-1)*a(n-2) + 2.

The programs for A142471, the canonical program `A142471.P6742548806369173739` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142471 has offset 0).

The definition of A142471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+2` (program `A142471.P6742548806369173739`, by `A142471.P6742548806369173739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142471.P6742548806369173739

`a(n-1)*a(n-2)+2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142471

/-- `a(n-1)*a(n-2)+2` -/
def P6742548806369173739.Spec : Prop :=
  ∀ n, (P6742548806369173739.a n : ℤ) = A142471 n

theorem P6742548806369173739.correct : P6742548806369173739.Spec := by
  intro n
  simp only [A142471]

end A142471

/-! ## A142471.P6226696958819151531

`or(2, a(n-1)*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A142471.P6226696958819151531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor 2 (a (n - 1) * a (n - 2))

end

end A142471.P6226696958819151531

namespace A142471

/-- `or(2, a(n-1)*a(n-2))` -/
def P6226696958819151531.Spec : Prop :=
  ∀ n, (P6226696958819151531.a n : ℤ) = A142471 n

end A142471

/-! ## A142471.P11995987730807476719

`xor(2, a(n-1)*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A142471.P11995987730807476719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor 2 (a (n - 1) * a (n - 2))

end

end A142471.P11995987730807476719

namespace A142471

/-- `xor(2, a(n-1)*a(n-2))` -/
def P11995987730807476719.Spec : Prop :=
  ∀ n, (P11995987730807476719.a n : ℤ) = A142471 n

end A142471

/-! ## A142471.P17207581030013780122

`a(n-2)/a(n-1)^(-1)+2` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A142471.P17207581030013780122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 2) / a (n - 1) ^ (-1 : ℤ) + 2

end

end A142471.P17207581030013780122

namespace A142471

/-- `a(n-2)/a(n-1)^(-1)+2` -/
def P17207581030013780122.Spec : Prop :=
  ∀ n, P17207581030013780122.a n = (A142471 n : ℚ)

end A142471

/-! ## A142471.P11659155631511259339

`4-(4/2-a(n-1)*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A142471.P11659155631511259339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) * a (n - 2))

end

end A142471.P11659155631511259339

namespace A142471

/-- `4-(4/2-a(n-1)*a(n-2))` -/
def P11659155631511259339.Spec : Prop :=
  ∀ n, P11659155631511259339.a n = (A142471 n : ℚ)

end A142471

/-!
# A142472: Triangle T(n, k) = binomial(n, k) * Sum_{j=k..n} StirlingS1(n, j)*StirlingS1(j, k), read by rows.

The programs for A142472, there is no canonical definition to state claims against.
-/

/-! ## A142472.P4384387454201907788

`A039814(n+1)*A135278(n)`
-/

namespace A142472.P4384387454201907788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039814 (n + 1) * A135278 n

end

end A142472.P4384387454201907788

/-! ## A142472.P14380275458044293929

`A039814(n+1)*A074909(n+1)`
-/

namespace A142472.P14380275458044293929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039814 (n + 1) * A074909 (n + 1)

end

end A142472.P14380275458044293929

/-! ## A142472.P654370969865509981

`A135278(n)*A325872(∑[A035214(n)])`
-/

namespace A142472.P654370969865509981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A325872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A142472.P654370969865509981

/-! ## A142472.P11200734749812250493

`A135278(n)*A325872(A014132(n+1))`
-/

namespace A142472.P11200734749812250493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A325872 (A014132 (n + 1)).toNat

end

end A142472.P11200734749812250493

/-! ## A142472.P7140547926819179215

`A007318(∑[A035214(n)])*A039814(n+1)`
-/

namespace A142472.P7140547926819179215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A039814 (n + 1)

end

end A142472.P7140547926819179215

/-! ## A142472.P9385547452078419711

`A007318(A014132(n+1))*A039814(n+1)`
-/

namespace A142472.P9385547452078419711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A039814 (n + 1)

end

end A142472.P9385547452078419711

/-!
# A142473: Triangle T(n, k) = n! * StirlingS1(n, k)/binomial(n, k), read by rows.

The programs for A142473, there is no canonical definition to state claims against.
-/

/-! ## A142473.P13182929022172930197

`A048594(n+1)*A119502(n)`
-/

namespace A142473.P13182929022172930197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (n + 1) * A119502 n

end

end A142473.P13182929022172930197

/-! ## A142473.P11267340612982950161

`A025581(n)!*A048594(n+1)`
-/

namespace A142473.P11267340612982950161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A048594 (n + 1)

end

end A142473.P11267340612982950161

/-! ## A142473.P6442644641844804897

`A048594(n+1)*A081123(A099375(n))`
-/

namespace A142473.P6442644641844804897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (n + 1) * A081123 (A099375 n).toNat

end

end A142473.P6442644641844804897

/-! ## A142473.P5594952274430916901

`A048594(n+1)*A233543(A061579(n))`
-/

namespace A142473.P5594952274430916901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (n + 1) * A233543 (A061579 n).toNat

end

end A142473.P5594952274430916901

/-! ## A142473.P10857953251758510334

`A028421(n)*A097807(n)*A098361(n)`
-/

namespace A142473.P10857953251758510334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 n * A097807 n * A098361 n

end

end A142473.P10857953251758510334

/-! ## A142473.P14775850406884021336

`A008275(n+1)*A098361(A014132(n+1))`
-/

namespace A142473.P14775850406884021336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A098361 (A014132 (n + 1)).toNat

end

end A142473.P14775850406884021336

/-! ## A142473.P13711961526800279373

`A098361(n)*A140756(n+1)*A130534(n)`
-/

namespace A142473.P13711961526800279373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A140756 (n + 1) * A130534 n

end

end A142473.P13711961526800279373

/-! ## A142473.P1162150288731036065

`A048594(n+1)*A206497(A130321(n))`
-/

namespace A142473.P1162150288731036065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (n + 1) * A206497 (A130321 n).toNat

end

end A142473.P1162150288731036065

/-!
# A142474: 1 followed by A141015.

The programs for A142474, the canonical program `A142474.P8689998743258440537` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142474 has offset 1).

The definition of A142474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142474.P8689998743258440537

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142474

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P8689998743258440537.Spec : Prop :=
  ∀ n, (P8689998743258440537.a n : ℤ) = A142474 (n + 1)

theorem P8689998743258440537.correct : P8689998743258440537.Spec := by
  intro n
  simp only [A142474, Nat.add_sub_cancel]

end A142474

/-! ## A142474.P10954786380893426742

`ogf((-1+x+x^2)/(-1+x+2x^2+x^3))`
-/

namespace A142474.P10954786380893426742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -2, -1] n

end

end A142474.P10954786380893426742

namespace A142474

/-- `ogf((-1+x+x^2)/(-1+x+2x^2+x^3))` -/
def P10954786380893426742.Spec : Prop :=
  ∀ n, P10954786380893426742.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P5161249179545617142

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A142474.P5161249179545617142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A142474.P5161249179545617142

namespace A142474

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P5161249179545617142.Spec : Prop :=
  ∀ n, (P5161249179545617142.a n : ℤ) = A142474 (n + 1)

theorem P5161249179545617142.correct : P5161249179545617142.Spec := by
  intro n
  simp only [A142474, Nat.add_sub_cancel, A142474.P5161249179545617142.a, A142474.P8689998743258440537.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A142474

/-! ## A142474.P11766273321389979637

`A078012(2*n)`
-/

namespace A142474.P11766273321389979637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n)

end

end A142474.P11766273321389979637

namespace A142474

/-- `A078012(2*n)` -/
def P11766273321389979637.Spec : Prop :=
  ∀ n, P11766273321389979637.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P3176688099402105144

`A141015(abs(1-n))`
-/

namespace A142474.P3176688099402105144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 |1 - (n : ℤ)|.toNat

end

end A142474.P3176688099402105144

namespace A142474

/-- `A141015(abs(1-n))` -/
def P3176688099402105144.Spec : Prop :=
  ∀ n, P3176688099402105144.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P1821697839719935205

`A135851(2*(n+1))`
-/

namespace A142474.P1821697839719935205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * (n + 1))

end

end A142474.P1821697839719935205

namespace A142474

/-- `A135851(2*(n+1))` -/
def P1821697839719935205.Spec : Prop :=
  ∀ n, P1821697839719935205.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P13629188163173611081

`A107458(2*n+1)+A107458(2*n)`
-/

namespace A142474.P13629188163173611081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * n + 1) + A107458 (2 * n)

end

end A142474.P13629188163173611081

namespace A142474

/-- `A107458(2*n+1)+A107458(2*n)` -/
def P13629188163173611081.Spec : Prop :=
  ∀ n, P13629188163173611081.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P3391915447908802920

`Δ[A262735(n)]`
-/

namespace A142474.P3391915447908802920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142474.P3391915447908802920

namespace A142474

/-- `Δ[A262735(n)]` -/
def P3391915447908802920.Spec : Prop :=
  ∀ n, P3391915447908802920.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P1965573766548589353

`Δ[A107458(2*(n+1))]`
-/

namespace A142474.P1965573766548589353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142474.P1965573766548589353

namespace A142474

/-- `Δ[A107458(2*(n+1))]` -/
def P1965573766548589353.Spec : Prop :=
  ∀ n, P1965573766548589353.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P12054078548484564896

`A002478(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A142474.P12054078548484564896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002478 (n - 1) - a (n - 1)

end

end A142474.P12054078548484564896

namespace A142474

/-- `A002478(n-1)-a(n-1)` -/
def P12054078548484564896.Spec : Prop :=
  ∀ n, P12054078548484564896.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P15769332895624707043

`A262735(n+1)-A262735(n)`
-/

namespace A142474.P15769332895624707043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262735 (n + 1) - A262735 n

end

end A142474.P15769332895624707043

namespace A142474

/-- `A262735(n+1)-A262735(n)` -/
def P15769332895624707043.Spec : Prop :=
  ∀ n, P15769332895624707043.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P6165357990588681726

`A013979(2*n)-A262735(n)`
-/

namespace A142474.P6165357990588681726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n) - A262735 n

end

end A142474.P6165357990588681726

namespace A142474

/-- `A013979(2*n)-A262735(n)` -/
def P6165357990588681726.Spec : Prop :=
  ∀ n, P6165357990588681726.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P2718520067995104228

`A306276(2*n)-A277252(2*n)`
-/

namespace A142474.P2718520067995104228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (2 * n) - A277252 (2 * n)

end

end A142474.P2718520067995104228

namespace A142474

/-- `A306276(2*n)-A277252(2*n)` -/
def P2718520067995104228.Spec : Prop :=
  ∀ n, P2718520067995104228.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P11770853346634445133

`A013979(2*n)-A013979(A004271(n+1))`
-/

namespace A142474.P11770853346634445133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n) - A013979 (A004271 (n + 1)).toNat

end

end A142474.P11770853346634445133

namespace A142474

/-- `A013979(2*n)-A013979(A004271(n+1))` -/
def P11770853346634445133.Spec : Prop :=
  ∀ n, P11770853346634445133.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P4917071983257700340

`A002478(n)-A141015(n)`
-/

namespace A142474.P4917071983257700340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A141015 n

end

end A142474.P4917071983257700340

namespace A142474

/-- `A002478(n)-A141015(n)` -/
def P4917071983257700340.Spec : Prop :=
  ∀ n, P4917071983257700340.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P8179854211808423521

`A000930(2*n)-A141015(n)`
-/

namespace A142474.P8179854211808423521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) - A141015 n

end

end A142474.P8179854211808423521

namespace A142474

/-- `A000930(2*n)-A141015(n)` -/
def P8179854211808423521.Spec : Prop :=
  ∀ n, P8179854211808423521.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P6042977975718731857

`A101399(n)-2*A141015(n)`
-/

namespace A142474.P6042977975718731857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101399 n - 2 * A141015 n

end

end A142474.P6042977975718731857

namespace A142474

/-- `A101399(n)-2*A141015(n)` -/
def P6042977975718731857.Spec : Prop :=
  ∀ n, P6042977975718731857.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P13967033680633657857

`A000930(2*n+1)-A078007(n+1)`
-/

namespace A142474.P13967033680633657857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) - A078007 (n + 1)

end

end A142474.P13967033680633657857

namespace A142474

/-- `A000930(2*n+1)-A078007(n+1)` -/
def P13967033680633657857.Spec : Prop :=
  ∀ n, P13967033680633657857.a n = A142474 (n + 1)

end A142474

/-! ## A142474.P12433711638108138642

`Δ[A013979(2*n+1)-A013979(2*n)]`
-/

namespace A142474.P12433711638108138642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n + 1) - A013979 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142474.P12433711638108138642

namespace A142474

/-- `Δ[A013979(2*n+1)-A013979(2*n)]` -/
def P12433711638108138642.Spec : Prop :=
  ∀ n, P12433711638108138642.a n = A142474 (n + 1)

end A142474

/-!
# A142475: Triangle T(n, k) = coefficients of (1 + x)/(1 + x + x^(k+2)), read by rows.

The programs for A142475, there is no canonical definition to state claims against.
-/

/-! ## A142475.P2934026530254269662

`A008683(A073247(n+1)*A226398(n+4))`
-/

namespace A142475.P2934026530254269662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073247 (n + 1) * A226398 (n + 4)).toNat

end

end A142475.P2934026530254269662

/-! ## A142475.P2364184351327144089

`A173591(A053097(n+2))%2`
-/

namespace A142475.P2364184351327144089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173591 (A053097 (n + 2)).toNat) 2

end

end A142475.P2364184351327144089

/-! ## A142475.P10173175026336329852

`A008683(A202264(n+1)+61)`
-/

namespace A142475.P10173175026336329852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A202264 (n + 1) + 61).toNat

end

end A142475.P10173175026336329852

/-! ## A142475.P9109485407087868556

`A056594(A347448(2*n)+A109341(n))`
-/

namespace A142475.P9109485407087868556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A347448 (2 * n) + A109341 n).toNat

end

end A142475.P9109485407087868556

/-! ## A142475.P12102927343813299556

`A188578(A259561(n+1))`
-/

namespace A142475.P12102927343813299556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188578 (A259561 (n + 1)).toNat

end

end A142475.P12102927343813299556

/-!
# A142476: Primes congruent to 1 mod 51.

The programs for A142476, the canonical program `A142476.P16180172496305768413` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142476 has offset 1).

The definition of A142476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142476.P16180172496305768413

`p?[51*n+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142476

/-- `p?[51*n+1]` -/
def P16180172496305768413.Spec : Prop :=
  ∀ n, (P16180172496305768413.a n : ℤ) = A142476 (n + 1)

theorem P16180172496305768413.correct : P16180172496305768413.Spec := by
  intro n
  simp only [A142476, Nat.add_sub_cancel]

end A142476

/-! ## A142476.P13021664699646150393

`or(1, p?[or(1, 51*n)])`
-/

namespace A142476.P13021664699646150393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (51 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142476.P13021664699646150393

namespace A142476

/-- `or(1, p?[or(1, 51*n)])` -/
def P13021664699646150393.Spec : Prop :=
  ∀ n, (P13021664699646150393.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P4977707893142661043

`∩[A106904(n+1), A129484(n+1)]`
-/

namespace A142476.P4977707893142661043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P4977707893142661043

namespace A142476

/-- `∩[A106904(n+1), A129484(n+1)]` -/
def P4977707893142661043.Spec : Prop :=
  ∀ n, (P4977707893142661043.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P2421778529643696592

`∩[A002476(n+1), A129484(n+1)]`
-/

namespace A142476.P2421778529643696592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P2421778529643696592

namespace A142476

/-- `∩[A002476(n+1), A129484(n+1)]` -/
def P2421778529643696592.Spec : Prop :=
  ∀ n, (P2421778529643696592.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P518507297663786143

`∩[A007645(n+1), A129484(n+1)]`
-/

namespace A142476.P518507297663786143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P518507297663786143

namespace A142476

/-- `∩[A007645(n+1), A129484(n+1)]` -/
def P518507297663786143.Spec : Prop :=
  ∀ n, (P518507297663786143.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P6160837258636981872

`∩[A045331(n+1), A129484(n+1)]`
-/

namespace A142476.P6160837258636981872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P6160837258636981872

namespace A142476

/-- `∩[A045331(n+1), A129484(n+1)]` -/
def P6160837258636981872.Spec : Prop :=
  ∀ n, (P6160837258636981872.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P15909988263543383863

`∩[A045375(n+1), A129484(n+1)]`
-/

namespace A142476.P15909988263543383863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P15909988263543383863

namespace A142476

/-- `∩[A045375(n+1), A129484(n+1)]` -/
def P15909988263543383863.Spec : Prop :=
  ∀ n, (P15909988263543383863.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P14715913154228428440

`∩[A123365(n+1), A129484(n+1)]`
-/

namespace A142476.P14715913154228428440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P14715913154228428440

namespace A142476

/-- `∩[A123365(n+1), A129484(n+1)]` -/
def P14715913154228428440.Spec : Prop :=
  ∀ n, (P14715913154228428440.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P9960715913302608708

`∩[A129484(n+1), A191034(n+1)]`
-/

namespace A142476.P9960715913302608708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P9960715913302608708

namespace A142476

/-- `∩[A129484(n+1), A191034(n+1)]` -/
def P9960715913302608708.Spec : Prop :=
  ∀ n, (P9960715913302608708.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P13607483590929621577

`∩[A129484(n+1), A279815(n+1)]`
-/

namespace A142476.P13607483590929621577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P13607483590929621577

namespace A142476

/-- `∩[A129484(n+1), A279815(n+1)]` -/
def P13607483590929621577.Spec : Prop :=
  ∀ n, (P13607483590929621577.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P1691328395232940841

`∩[A055664(n+1), A129484(n+1)]`
-/

namespace A142476.P1691328395232940841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P1691328395232940841

namespace A142476

/-- `∩[A055664(n+1), A129484(n+1)]` -/
def P1691328395232940841.Spec : Prop :=
  ∀ n, (P1691328395232940841.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P14909336559758706376

`∩[A129484(n+1), A133290(n+1)]`
-/

namespace A142476.P14909336559758706376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P14909336559758706376

namespace A142476

/-- `∩[A129484(n+1), A133290(n+1)]` -/
def P14909336559758706376.Spec : Prop :=
  ∀ n, (P14909336559758706376.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P9365207367882213274

`∩[A129484(n+1), A137827(n+1)]`
-/

namespace A142476.P9365207367882213274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P9365207367882213274

namespace A142476

/-- `∩[A129484(n+1), A137827(n+1)]` -/
def P9365207367882213274.Spec : Prop :=
  ∀ n, (P9365207367882213274.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P8101488672750173442

`∩[A002476(n+1), A215137(n)]`
-/

namespace A142476.P8101488672750173442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P8101488672750173442

namespace A142476

/-- `∩[A002476(n+1), A215137(n)]` -/
def P8101488672750173442.Spec : Prop :=
  ∀ n, (P8101488672750173442.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P8561789817412156171

`∩[A007645(n+1), A215137(n)]`
-/

namespace A142476.P8561789817412156171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P8561789817412156171

namespace A142476

/-- `∩[A007645(n+1), A215137(n)]` -/
def P8561789817412156171.Spec : Prop :=
  ∀ n, (P8561789817412156171.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P7739211448372980482

`∩[A045331(n+1), A215137(n)]`
-/

namespace A142476.P7739211448372980482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P7739211448372980482

namespace A142476

/-- `∩[A045331(n+1), A215137(n)]` -/
def P7739211448372980482.Spec : Prop :=
  ∀ n, (P7739211448372980482.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P9803682064231939950

`∩[A045375(n+1), A215137(n)]`
-/

namespace A142476.P9803682064231939950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P9803682064231939950

namespace A142476

/-- `∩[A045375(n+1), A215137(n)]` -/
def P9803682064231939950.Spec : Prop :=
  ∀ n, (P9803682064231939950.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P9290817186752880460

`∩[A106904(n+1), A215137(n)]`
-/

namespace A142476.P9290817186752880460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P9290817186752880460

namespace A142476

/-- `∩[A106904(n+1), A215137(n)]` -/
def P9290817186752880460.Spec : Prop :=
  ∀ n, (P9290817186752880460.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P2255476349295555030

`∩[A191034(n+1), A215137(n)]`
-/

namespace A142476.P2255476349295555030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P2255476349295555030

namespace A142476

/-- `∩[A191034(n+1), A215137(n)]` -/
def P2255476349295555030.Spec : Prop :=
  ∀ n, (P2255476349295555030.a n : ℤ) = A142476 (n + 1)

end A142476

/-! ## A142476.P10493461102536410169

`∩[A002476(n+1), A161705(n)-n]`
-/

namespace A142476.P10493461102536410169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142476.P10493461102536410169

namespace A142476

/-- `∩[A002476(n+1), A161705(n)-n]` -/
def P10493461102536410169.Spec : Prop :=
  ∀ n, (P10493461102536410169.a n : ℤ) = A142476 (n + 1)

end A142476

/-!
# A142477: Primes congruent to 2 mod 51.

The programs for A142477, the canonical program `A142477.P16501934418740501259` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142477 has offset 1).

The definition of A142477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142477.P16501934418740501259

`p?[51*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142477

/-- `p?[51*n+2]` -/
def P16501934418740501259.Spec : Prop :=
  ∀ n, (P16501934418740501259.a n : ℤ) = A142477 (n + 1)

theorem P16501934418740501259.correct : P16501934418740501259.Spec := by
  intro n
  simp only [A142477, Nat.add_sub_cancel]

end A142477

/-! ## A142477.P17229252164456439025

`∩[A140544(n+1), A191073(n+1)]`
-/

namespace A142477.P17229252164456439025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P17229252164456439025

namespace A142477

/-- `∩[A140544(n+1), A191073(n+1)]` -/
def P17229252164456439025.Spec : Prop :=
  ∀ n, (P17229252164456439025.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P14522536461157025989

`∩[A003627(n+1), A140544(n+1)]`
-/

namespace A142477.P14522536461157025989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P14522536461157025989

namespace A142477

/-- `∩[A003627(n+1), A140544(n+1)]` -/
def P14522536461157025989.Spec : Prop :=
  ∀ n, (P14522536461157025989.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P6643708306087792714

`∩[A045309(n+1), A140544(n+1)]`
-/

namespace A142477.P6643708306087792714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P6643708306087792714

namespace A142477

/-- `∩[A045309(n+1), A140544(n+1)]` -/
def P6643708306087792714.Spec : Prop :=
  ∀ n, (P6643708306087792714.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P4523791967074478215

`∩[A003627(n+1), A215137(n)+1]`
-/

namespace A142477.P4523791967074478215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P4523791967074478215

namespace A142477

/-- `∩[A003627(n+1), A215137(n)+1]` -/
def P4523791967074478215.Spec : Prop :=
  ∀ n, (P4523791967074478215.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P14689987183962669379

`∩[A045309(n+1), A215137(n)+1]`
-/

namespace A142477.P14689987183962669379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P14689987183962669379

namespace A142477

/-- `∩[A045309(n+1), A215137(n)+1]` -/
def P14689987183962669379.Spec : Prop :=
  ∀ n, (P14689987183962669379.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P6277312994526814242

`∩[A191073(n+1), A215137(n)+1]`
-/

namespace A142477.P6277312994526814242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P6277312994526814242

namespace A142477

/-- `∩[A191073(n+1), A215137(n)+1]` -/
def P6277312994526814242.Spec : Prop :=
  ∀ n, (P6277312994526814242.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P10102028359486309566

`record[p?[A014682(A161705(n)-n)]]`
-/

namespace A142477.P10102028359486309566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A161705 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142477.P10102028359486309566

namespace A142477

/-- `record[p?[A014682(A161705(n)-n)]]` -/
def P10102028359486309566.Spec : Prop :=
  ∀ n, P10102028359486309566.a n = A142477 (n + 1)

end A142477

/-! ## A142477.P7181427647403863588

`∩[A066501(n+1), A140544(n+1)]`
-/

namespace A142477.P7181427647403863588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P7181427647403863588

namespace A142477

/-- `∩[A066501(n+1), A140544(n+1)]` -/
def P7181427647403863588.Spec : Prop :=
  ∀ n, (P7181427647403863588.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P3790747265765641880

`∩[A214890(n+1), A137935(n)+2]`
-/

namespace A142477.P3790747265765641880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P3790747265765641880

namespace A142477

/-- `∩[A214890(n+1), A137935(n)+2]` -/
def P3790747265765641880.Spec : Prop :=
  ∀ n, (P3790747265765641880.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P7055764611623837479

`∩[A215153(n+1), A137935(n)+2]`
-/

namespace A142477.P7055764611623837479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P7055764611623837479

namespace A142477

/-- `∩[A215153(n+1), A137935(n)+2]` -/
def P7055764611623837479.Spec : Prop :=
  ∀ n, (P7055764611623837479.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P12495641939970698179

`∩[A215281(n+1), A137935(n)+2]`
-/

namespace A142477.P12495641939970698179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P12495641939970698179

namespace A142477

/-- `∩[A215281(n+1), A137935(n)+2]` -/
def P12495641939970698179.Spec : Prop :=
  ∀ n, (P12495641939970698179.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P9800820773998271135

`∩[A215304(n+1), A137935(n)+2]`
-/

namespace A142477.P9800820773998271135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P9800820773998271135

namespace A142477

/-- `∩[A215304(n+1), A137935(n)+2]` -/
def P9800820773998271135.Spec : Prop :=
  ∀ n, (P9800820773998271135.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P16569505673445843366

`∩[A215324(n+1), A137935(n)+2]`
-/

namespace A142477.P16569505673445843366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P16569505673445843366

namespace A142477

/-- `∩[A215324(n+1), A137935(n)+2]` -/
def P16569505673445843366.Spec : Prop :=
  ∀ n, (P16569505673445843366.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P10292673237044863004

`record[A020639(51*n+2)]`
-/

namespace A142477.P10292673237044863004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (51 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142477.P10292673237044863004

namespace A142477

/-- `record[A020639(51*n+2)]` -/
def P10292673237044863004.Spec : Prop :=
  ∀ n, P10292673237044863004.a n = A142477 (n + 1)

end A142477

/-! ## A142477.P3469022661650592312

`∩[A082406(n+1), A140544(n+1)]`
-/

namespace A142477.P3469022661650592312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P3469022661650592312

namespace A142477

/-- `∩[A082406(n+1), A140544(n+1)]` -/
def P3469022661650592312.Spec : Prop :=
  ∀ n, (P3469022661650592312.a n : ℤ) = A142477 (n + 1)

end A142477

/-! ## A142477.P17395682091709604239

`filter[A168672(3*n+1), A010051(#)]`
-/

namespace A142477.P17395682091709604239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168672 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142477.P17395682091709604239

namespace A142477

/-- `filter[A168672(3*n+1), A010051(#)]` -/
def P17395682091709604239.Spec : Prop :=
  ∀ n, P17395682091709604239.a n = A142477 (n + 1)

end A142477

/-! ## A142477.P13562477268855817878

`∩[A140544(n+1), A167409(n+1)]`
-/

namespace A142477.P13562477268855817878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142477.P13562477268855817878

namespace A142477

/-- `∩[A140544(n+1), A167409(n+1)]` -/
def P13562477268855817878.Spec : Prop :=
  ∀ n, (P13562477268855817878.a n : ℤ) = A142477 (n + 1)

end A142477

/-!
# A142478: Primes congruent to 4 mod 51.

The programs for A142478, there is no canonical definition to state claims against.
-/

/-! ## A142478.P679412539014991723

`A094657(eq[1, A094657(n+1)%3]+1)`
-/

namespace A142478.P679412539014991723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094657 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142478.P679412539014991723

/-! ## A142478.P1210095415902831876

`p?[51*n+4]`
-/

namespace A142478.P1210095415902831876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142478.P1210095415902831876

/-! ## A142478.P2683264920710750496

`or(1, p?[A215146(n)+A139222(n+1)])`
-/

namespace A142478.P2683264920710750496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142478.P2683264920710750496

/-! ## A142478.P16990995871814457251

`A000027(p?[A215146(n)+A139222(n+1)])`
-/

namespace A142478.P16990995871814457251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142478.P16990995871814457251

/-! ## A142478.P13537670617122096266

`∩[A094657(n+1), A106904(n+1)]`
-/

namespace A142478.P13537670617122096266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P13537670617122096266

/-! ## A142478.P1063346558240991526

`∩[A094657(n+1), A138686(n+1)]`
-/

namespace A142478.P1063346558240991526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P1063346558240991526

/-! ## A142478.P8612490361592730674

`∩[A002476(n+1), A094657(n+1)]`
-/

namespace A142478.P8612490361592730674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P8612490361592730674

/-! ## A142478.P15816106532856900855

`∩[A007645(n+1), A094657(n+1)]`
-/

namespace A142478.P15816106532856900855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P15816106532856900855

/-! ## A142478.P10911481541254974330

`∩[A045331(n+1), A094657(n+1)]`
-/

namespace A142478.P10911481541254974330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P10911481541254974330

/-! ## A142478.P677659564258397508

`∩[A045375(n+1), A094657(n+1)]`
-/

namespace A142478.P677659564258397508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P677659564258397508

/-! ## A142478.P10895993654793395402

`∩[A094657(n+1), A123365(n+1)]`
-/

namespace A142478.P10895993654793395402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P10895993654793395402

/-! ## A142478.P13445992346331327347

`∩[A094657(n+1), A191034(n+1)]`
-/

namespace A142478.P13445992346331327347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P13445992346331327347

/-! ## A142478.P15477151661424512695

`∩[A094657(n+1), A279815(n+1)]`
-/

namespace A142478.P15477151661424512695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P15477151661424512695

/-! ## A142478.P11899329827026633297

`∩[A055664(n+1), A094657(n+1)]`
-/

namespace A142478.P11899329827026633297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P11899329827026633297

/-! ## A142478.P14767925669952827497

`∩[A094657(n+1), A133290(n+1)]`
-/

namespace A142478.P14767925669952827497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P14767925669952827497

/-! ## A142478.P8581596080764129624

`∩[A094657(n+1), A137827(n+1)]`
-/

namespace A142478.P8581596080764129624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P8581596080764129624

/-! ## A142478.P999442356762866791

`filter[A094657(n+1), A070563(#)]`
-/

namespace A142478.P999442356762866791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142478.P999442356762866791

/-! ## A142478.P1252212364960938192

`∩[A094657(n+1), A107925(n+1)]`
-/

namespace A142478.P1252212364960938192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P1252212364960938192

/-! ## A142478.P15128245514516334507

`∩[A094657(n+1), A129904(n+1)]`
-/

namespace A142478.P15128245514516334507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P15128245514516334507

/-! ## A142478.P15719438483530581252

`∩[A004611(n+1), A094657(n+1)]`
-/

namespace A142478.P15719438483530581252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142478.P15719438483530581252

/-!
# A142479: Primes congruent to 5 mod 51.

The programs for A142479, the canonical program `A142479.P9040338625487133999` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142479 has offset 1).

The definition of A142479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142479.P9040338625487133999

`p?[51*n+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142479

/-- `p?[51*n+5]` -/
def P9040338625487133999.Spec : Prop :=
  ∀ n, (P9040338625487133999.a n : ℤ) = A142479 (n + 1)

theorem P9040338625487133999.correct : P9040338625487133999.Spec := by
  intro n
  simp only [A142479, Nat.add_sub_cancel]

end A142479

/-! ## A142479.P12570522045100996585

`abs(p?[A249674(n)+A139607(n)-2]-n)+n`
-/

namespace A142479.P12570522045100996585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A139607 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)

end

end A142479.P12570522045100996585

namespace A142479

/-- `abs(p?[A249674(n)+A139607(n)-2]-n)+n` -/
def P12570522045100996585.Spec : Prop :=
  ∀ n, P12570522045100996585.a n = A142479 (n + 1)

end A142479

/-! ## A142479.P10256284319935225925

`∩[A106902(n+1), A138623(n+1)]`
-/

namespace A142479.P10256284319935225925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P10256284319935225925

namespace A142479

/-- `∩[A106902(n+1), A138623(n+1)]` -/
def P10256284319935225925.Spec : Prop :=
  ∀ n, (P10256284319935225925.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P15811647139604303744

`∩[A106902(n+1), A215169(n+1)]`
-/

namespace A142479.P15811647139604303744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P15811647139604303744

namespace A142479

/-- `∩[A106902(n+1), A215169(n+1)]` -/
def P15811647139604303744.Spec : Prop :=
  ∀ n, (P15811647139604303744.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P2836368662313535991

`A000027(p?[A304205(n+1)-A164135(n+1)])`
-/

namespace A142479.P2836368662313535991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A164135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142479.P2836368662313535991

namespace A142479

/-- `A000027(p?[A304205(n+1)-A164135(n+1)])` -/
def P2836368662313535991.Spec : Prop :=
  ∀ n, P2836368662313535991.a n = A142479 (n + 1)

end A142479

/-! ## A142479.P7274904472340793548

`∩[A138623(n+1), A191034(n+1)]`
-/

namespace A142479.P7274904472340793548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P7274904472340793548

namespace A142479

/-- `∩[A138623(n+1), A191034(n+1)]` -/
def P7274904472340793548.Spec : Prop :=
  ∀ n, (P7274904472340793548.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P2000868298493738081

`∩[A003627(n+1), A138623(n+1)]`
-/

namespace A142479.P2000868298493738081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P2000868298493738081

namespace A142479

/-- `∩[A003627(n+1), A138623(n+1)]` -/
def P2000868298493738081.Spec : Prop :=
  ∀ n, (P2000868298493738081.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P8481545768858361122

`∩[A007528(n+1), A138623(n+1)]`
-/

namespace A142479.P8481545768858361122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P8481545768858361122

namespace A142479

/-- `∩[A007528(n+1), A138623(n+1)]` -/
def P8481545768858361122.Spec : Prop :=
  ∀ n, (P8481545768858361122.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P11095376039172384811

`∩[A045410(n+1), A138623(n+1)]`
-/

namespace A142479.P11095376039172384811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P11095376039172384811

namespace A142479

/-- `∩[A045410(n+1), A138623(n+1)]` -/
def P11095376039172384811.Spec : Prop :=
  ∀ n, (P11095376039172384811.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P12683450040674714306

`∩[A056955(n+1), A138623(n+1)]`
-/

namespace A142479.P12683450040674714306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P12683450040674714306

namespace A142479

/-- `∩[A056955(n+1), A138623(n+1)]` -/
def P12683450040674714306.Spec : Prop :=
  ∀ n, (P12683450040674714306.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P6035785532328169966

`∩[A045309(n+1), A138623(n+1)]`
-/

namespace A142479.P6035785532328169966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P6035785532328169966

namespace A142479

/-- `∩[A045309(n+1), A138623(n+1)]` -/
def P6035785532328169966.Spec : Prop :=
  ∀ n, (P6035785532328169966.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P3717294578551287354

`∩[A003627(n+1), A154612(n)-2]`
-/

namespace A142479.P3717294578551287354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P3717294578551287354

namespace A142479

/-- `∩[A003627(n+1), A154612(n)-2]` -/
def P3717294578551287354.Spec : Prop :=
  ∀ n, (P3717294578551287354.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P5272130471243228214

`∩[A007528(n+1), A154612(n)-2]`
-/

namespace A142479.P5272130471243228214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P5272130471243228214

namespace A142479

/-- `∩[A007528(n+1), A154612(n)-2]` -/
def P5272130471243228214.Spec : Prop :=
  ∀ n, (P5272130471243228214.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P13310902565097357778

`∩[A045309(n+1), A154612(n)-2]`
-/

namespace A142479.P13310902565097357778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P13310902565097357778

namespace A142479

/-- `∩[A045309(n+1), A154612(n)-2]` -/
def P13310902565097357778.Spec : Prop :=
  ∀ n, (P13310902565097357778.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P10866893220550287120

`∩[A045410(n+1), A154612(n)-2]`
-/

namespace A142479.P10866893220550287120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P10866893220550287120

namespace A142479

/-- `∩[A045410(n+1), A154612(n)-2]` -/
def P10866893220550287120.Spec : Prop :=
  ∀ n, (P10866893220550287120.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P1918687114605705983

`∩[A056955(n+1), A154612(n)-2]`
-/

namespace A142479.P1918687114605705983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P1918687114605705983

namespace A142479

/-- `∩[A056955(n+1), A154612(n)-2]` -/
def P1918687114605705983.Spec : Prop :=
  ∀ n, (P1918687114605705983.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P12116186718823560334

`∩[A106902(n+1), A154612(n)-2]`
-/

namespace A142479.P12116186718823560334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P12116186718823560334

namespace A142479

/-- `∩[A106902(n+1), A154612(n)-2]` -/
def P12116186718823560334.Spec : Prop :=
  ∀ n, (P12116186718823560334.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P18032947964007266475

`∩[A191034(n+1), A154612(n)-2]`
-/

namespace A142479.P18032947964007266475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P18032947964007266475

namespace A142479

/-- `∩[A191034(n+1), A154612(n)-2]` -/
def P18032947964007266475.Spec : Prop :=
  ∀ n, (P18032947964007266475.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P16383007057475367251

`∩[A007528(n+1), A242215(n)-n]`
-/

namespace A142479.P16383007057475367251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P16383007057475367251

namespace A142479

/-- `∩[A007528(n+1), A242215(n)-n]` -/
def P16383007057475367251.Spec : Prop :=
  ∀ n, (P16383007057475367251.a n : ℤ) = A142479 (n + 1)

end A142479

/-! ## A142479.P11340382869372509149

`∩[A066501(n+1), A138623(n+1)]`
-/

namespace A142479.P11340382869372509149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142479.P11340382869372509149

namespace A142479

/-- `∩[A066501(n+1), A138623(n+1)]` -/
def P11340382869372509149.Spec : Prop :=
  ∀ n, (P11340382869372509149.a n : ℤ) = A142479 (n + 1)

end A142479

/-!
# A142480: Primes congruent to 7 mod 51.

The programs for A142480, the canonical program `A142480.P5226708681425799937` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142480 has offset 1).

The definition of A142480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142480.P5226708681425799937

`p?[51*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142480

/-- `p?[51*n+7]` -/
def P5226708681425799937.Spec : Prop :=
  ∀ n, (P5226708681425799937.a n : ℤ) = A142480 (n + 1)

theorem P5226708681425799937.correct : P5226708681425799937.Spec := by
  intro n
  simp only [A142480, Nat.add_sub_cancel]

end A142480

/-! ## A142480.P14875407728888273689

`A000027(p?[A249674(n)+A139607(n)])`
-/

namespace A142480.P14875407728888273689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142480.P14875407728888273689

namespace A142480

/-- `A000027(p?[A249674(n)+A139607(n)])` -/
def P14875407728888273689.Spec : Prop :=
  ∀ n, P14875407728888273689.a n = A142480 (n + 1)

end A142480

/-! ## A142480.P17854457612963199521

`∩[A002476(n+1), A138629(n+1)]`
-/

namespace A142480.P17854457612963199521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P17854457612963199521

namespace A142480

/-- `∩[A002476(n+1), A138629(n+1)]` -/
def P17854457612963199521.Spec : Prop :=
  ∀ n, (P17854457612963199521.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P930283269480414873

`∩[A007645(n+1), A138629(n+1)]`
-/

namespace A142480.P930283269480414873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P930283269480414873

namespace A142480

/-- `∩[A007645(n+1), A138629(n+1)]` -/
def P930283269480414873.Spec : Prop :=
  ∀ n, (P930283269480414873.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P5521470221567208518

`∩[A045331(n+1), A138629(n+1)]`
-/

namespace A142480.P5521470221567208518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P5521470221567208518

namespace A142480

/-- `∩[A045331(n+1), A138629(n+1)]` -/
def P5521470221567208518.Spec : Prop :=
  ∀ n, (P5521470221567208518.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P16418329944403287971

`∩[A045375(n+1), A138629(n+1)]`
-/

namespace A142480.P16418329944403287971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P16418329944403287971

namespace A142480

/-- `∩[A045375(n+1), A138629(n+1)]` -/
def P16418329944403287971.Spec : Prop :=
  ∀ n, (P16418329944403287971.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P3173598475705775146

`∩[A123365(n+1), A138629(n+1)]`
-/

namespace A142480.P3173598475705775146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P3173598475705775146

namespace A142480

/-- `∩[A123365(n+1), A138629(n+1)]` -/
def P3173598475705775146.Spec : Prop :=
  ∀ n, (P3173598475705775146.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P14144926811323008842

`∩[A138629(n+1), A279815(n+1)]`
-/

namespace A142480.P14144926811323008842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P14144926811323008842

namespace A142480

/-- `∩[A138629(n+1), A279815(n+1)]` -/
def P14144926811323008842.Spec : Prop :=
  ∀ n, (P14144926811323008842.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P17260531378453305003

`∩[A138629(n+1), A191073(n+1)]`
-/

namespace A142480.P17260531378453305003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P17260531378453305003

namespace A142480

/-- `∩[A138629(n+1), A191073(n+1)]` -/
def P17260531378453305003.Spec : Prop :=
  ∀ n, (P17260531378453305003.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P10161049015832182080

`∩[A055664(n+1), A138629(n+1)]`
-/

namespace A142480.P10161049015832182080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P10161049015832182080

namespace A142480

/-- `∩[A055664(n+1), A138629(n+1)]` -/
def P10161049015832182080.Spec : Prop :=
  ∀ n, (P10161049015832182080.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P10708169768397521998

`∩[A133290(n+1), A138629(n+1)]`
-/

namespace A142480.P10708169768397521998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P10708169768397521998

namespace A142480

/-- `∩[A133290(n+1), A138629(n+1)]` -/
def P10708169768397521998.Spec : Prop :=
  ∀ n, (P10708169768397521998.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P16211908122039817812

`∩[A137827(n+1), A138629(n+1)]`
-/

namespace A142480.P16211908122039817812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P16211908122039817812

namespace A142480

/-- `∩[A137827(n+1), A138629(n+1)]` -/
def P16211908122039817812.Spec : Prop :=
  ∀ n, (P16211908122039817812.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P13500192769911139954

`∩[A002476(n+1), A154612(n)]`
-/

namespace A142480.P13500192769911139954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P13500192769911139954

namespace A142480

/-- `∩[A002476(n+1), A154612(n)]` -/
def P13500192769911139954.Spec : Prop :=
  ∀ n, (P13500192769911139954.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P9115550083954332117

`∩[A007645(n+1), A154612(n)]`
-/

namespace A142480.P9115550083954332117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P9115550083954332117

namespace A142480

/-- `∩[A007645(n+1), A154612(n)]` -/
def P9115550083954332117.Spec : Prop :=
  ∀ n, (P9115550083954332117.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P9403731860893728508

`∩[A045331(n+1), A154612(n)]`
-/

namespace A142480.P9403731860893728508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P9403731860893728508

namespace A142480

/-- `∩[A045331(n+1), A154612(n)]` -/
def P9403731860893728508.Spec : Prop :=
  ∀ n, (P9403731860893728508.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P5691706140202579363

`∩[A045375(n+1), A154612(n)]`
-/

namespace A142480.P5691706140202579363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P5691706140202579363

namespace A142480

/-- `∩[A045375(n+1), A154612(n)]` -/
def P5691706140202579363.Spec : Prop :=
  ∀ n, (P5691706140202579363.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P9655201472660667431

`∩[A055664(n+1), A154612(n)]`
-/

namespace A142480.P9655201472660667431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P9655201472660667431

namespace A142480

/-- `∩[A055664(n+1), A154612(n)]` -/
def P9655201472660667431.Spec : Prop :=
  ∀ n, (P9655201472660667431.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P10473868427166348575

`∩[A123365(n+1), A154612(n)]`
-/

namespace A142480.P10473868427166348575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P10473868427166348575

namespace A142480

/-- `∩[A123365(n+1), A154612(n)]` -/
def P10473868427166348575.Spec : Prop :=
  ∀ n, (P10473868427166348575.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P15607610454435945144

`∩[A191073(n+1), A154612(n)]`
-/

namespace A142480.P15607610454435945144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P15607610454435945144

namespace A142480

/-- `∩[A191073(n+1), A154612(n)]` -/
def P15607610454435945144.Spec : Prop :=
  ∀ n, (P15607610454435945144.a n : ℤ) = A142480 (n + 1)

end A142480

/-! ## A142480.P2892423228811695705

`∩[A279815(n+1), A154612(n)]`
-/

namespace A142480.P2892423228811695705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142480.P2892423228811695705

namespace A142480

/-- `∩[A279815(n+1), A154612(n)]` -/
def P2892423228811695705.Spec : Prop :=
  ∀ n, (P2892423228811695705.a n : ℤ) = A142480 (n + 1)

end A142480

/-!
# A142481: Primes congruent to 8 mod 51.

The programs for A142481, the canonical program `A142481.P4873203718547970786` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142481 has offset 1).

The definition of A142481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142481.P4873203718547970786

`p?[51*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142481

/-- `p?[51*n+8]` -/
def P4873203718547970786.Spec : Prop :=
  ∀ n, (P4873203718547970786.a n : ℤ) = A142481 (n + 1)

theorem P4873203718547970786.correct : P4873203718547970786.Spec := by
  intro n
  simp only [A142481, Nat.add_sub_cancel]

end A142481

/-! ## A142481.P39747693413391113

`A000027(p?[A174312(n)+A144619(n)])`
-/

namespace A142481.P39747693413391113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A144619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142481.P39747693413391113

namespace A142481

/-- `A000027(p?[A174312(n)+A144619(n)])` -/
def P39747693413391113.Spec : Prop :=
  ∀ n, P39747693413391113.a n = A142481 (n + 1)

end A142481

/-! ## A142481.P6425933259050516057

`∩[A138633(n+1), A275770(n+1)]`
-/

namespace A142481.P6425933259050516057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P6425933259050516057

namespace A142481

/-- `∩[A138633(n+1), A275770(n+1)]` -/
def P6425933259050516057.Spec : Prop :=
  ∀ n, (P6425933259050516057.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P6244208831236928295

`∩[A003627(n+1), A138633(n+1)]`
-/

namespace A142481.P6244208831236928295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P6244208831236928295

namespace A142481

/-- `∩[A003627(n+1), A138633(n+1)]` -/
def P6244208831236928295.Spec : Prop :=
  ∀ n, (P6244208831236928295.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P13167421736283956242

`∩[A007528(n+1), A138633(n+1)]`
-/

namespace A142481.P13167421736283956242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P13167421736283956242

namespace A142481

/-- `∩[A007528(n+1), A138633(n+1)]` -/
def P13167421736283956242.Spec : Prop :=
  ∀ n, (P13167421736283956242.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P2309141266107030579

`∩[A045309(n+1), A138633(n+1)]`
-/

namespace A142481.P2309141266107030579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P2309141266107030579

namespace A142481

/-- `∩[A045309(n+1), A138633(n+1)]` -/
def P2309141266107030579.Spec : Prop :=
  ∀ n, (P2309141266107030579.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P13742073289036159870

`∩[A045410(n+1), A138633(n+1)]`
-/

namespace A142481.P13742073289036159870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P13742073289036159870

namespace A142481

/-- `∩[A045410(n+1), A138633(n+1)]` -/
def P13742073289036159870.Spec : Prop :=
  ∀ n, (P13742073289036159870.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P13027243696650278453

`∩[A056955(n+1), A138633(n+1)]`
-/

namespace A142481.P13027243696650278453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P13027243696650278453

namespace A142481

/-- `∩[A056955(n+1), A138633(n+1)]` -/
def P13027243696650278453.Spec : Prop :=
  ∀ n, (P13027243696650278453.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P2592125227363619607

`∩[A138633(n+1), A191073(n+1)]`
-/

namespace A142481.P2592125227363619607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P2592125227363619607

namespace A142481

/-- `∩[A138633(n+1), A191073(n+1)]` -/
def P2592125227363619607.Spec : Prop :=
  ∀ n, (P2592125227363619607.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P5272719253882617672

`∩[A003627(n+1), A154612(n)+1]`
-/

namespace A142481.P5272719253882617672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P5272719253882617672

namespace A142481

/-- `∩[A003627(n+1), A154612(n)+1]` -/
def P5272719253882617672.Spec : Prop :=
  ∀ n, (P5272719253882617672.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P12728546661942634219

`∩[A007528(n+1), A154612(n)+1]`
-/

namespace A142481.P12728546661942634219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P12728546661942634219

namespace A142481

/-- `∩[A007528(n+1), A154612(n)+1]` -/
def P12728546661942634219.Spec : Prop :=
  ∀ n, (P12728546661942634219.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P8932944582051426745

`∩[A045309(n+1), A154612(n)+1]`
-/

namespace A142481.P8932944582051426745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P8932944582051426745

namespace A142481

/-- `∩[A045309(n+1), A154612(n)+1]` -/
def P8932944582051426745.Spec : Prop :=
  ∀ n, (P8932944582051426745.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P771359562040081846

`∩[A045410(n+1), A154612(n)+1]`
-/

namespace A142481.P771359562040081846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P771359562040081846

namespace A142481

/-- `∩[A045410(n+1), A154612(n)+1]` -/
def P771359562040081846.Spec : Prop :=
  ∀ n, (P771359562040081846.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P15683962268740544174

`∩[A191073(n+1), A154612(n)+1]`
-/

namespace A142481.P15683962268740544174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P15683962268740544174

namespace A142481

/-- `∩[A191073(n+1), A154612(n)+1]` -/
def P15683962268740544174.Spec : Prop :=
  ∀ n, (P15683962268740544174.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P206125116715826369

`∩[A154612(n+1)+1, A056955(n+2)]`
-/

namespace A142481.P206125116715826369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P206125116715826369

namespace A142481

/-- `∩[A154612(n+1)+1, A056955(n+2)]` -/
def P206125116715826369.Spec : Prop :=
  ∀ n, (P206125116715826369.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P6921765066109876744

`∩[A066501(n+1), A138633(n+1)]`
-/

namespace A142481.P6921765066109876744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P6921765066109876744

namespace A142481

/-- `∩[A066501(n+1), A138633(n+1)]` -/
def P6921765066109876744.Spec : Prop :=
  ∀ n, (P6921765066109876744.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P5635014821434648341

`∩[A138633(n+1), A259548(n+1)]`
-/

namespace A142481.P5635014821434648341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P5635014821434648341

namespace A142481

/-- `∩[A138633(n+1), A259548(n+1)]` -/
def P5635014821434648341.Spec : Prop :=
  ∀ n, (P5635014821434648341.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P3718243030783899315

`∩[A082406(n+1), A138633(n+1)]`
-/

namespace A142481.P3718243030783899315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142481.P3718243030783899315

namespace A142481

/-- `∩[A082406(n+1), A138633(n+1)]` -/
def P3718243030783899315.Spec : Prop :=
  ∀ n, (P3718243030783899315.a n : ℤ) = A142481 (n + 1)

end A142481

/-! ## A142481.P4200346328621261452

`A000265(p?[A139607(n)+A128470(n)])`
-/

namespace A142481.P4200346328621261452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142481.P4200346328621261452

namespace A142481

/-- `A000265(p?[A139607(n)+A128470(n)])` -/
def P4200346328621261452.Spec : Prop :=
  ∀ n, P4200346328621261452.a n = A142481 (n + 1)

end A142481

/-! ## A142481.P3833511512367727181

`A001414(p?[A139607(n)+A128470(n)])`
-/

namespace A142481.P3833511512367727181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142481.P3833511512367727181

namespace A142481

/-- `A001414(p?[A139607(n)+A128470(n)])` -/
def P3833511512367727181.Spec : Prop :=
  ∀ n, P3833511512367727181.a n = A142481 (n + 1)

end A142481

/-!
# A142482: Primes congruent to 10 mod 51.

The programs for A142482, the canonical program `A142482.P9448669777898470811` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142482 has offset 1).

The definition of A142482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142482.P9448669777898470811

`p?[51*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142482

/-- `p?[51*n+10]` -/
def P9448669777898470811.Spec : Prop :=
  ∀ n, (P9448669777898470811.a n : ℤ) = A142482 (n + 1)

theorem P9448669777898470811.correct : P9448669777898470811.Spec := by
  intro n
  simp only [A142482, Nat.add_sub_cancel]

end A142482

/-! ## A142482.P3339087949350759566

`A000027(p?[A169610(n+1)+A017041(n)])`
-/

namespace A142482.P3339087949350759566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142482.P3339087949350759566

namespace A142482

/-- `A000027(p?[A169610(n+1)+A017041(n)])` -/
def P3339087949350759566.Spec : Prop :=
  ∀ n, P3339087949350759566.a n = A142482 (n + 1)

end A142482

/-! ## A142482.P3294694960434888341

`A000027(p?[A159754(n+1)+A029579(n)])`
-/

namespace A142482.P3294694960434888341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142482.P3294694960434888341

namespace A142482

/-- `A000027(p?[A159754(n+1)+A029579(n)])` -/
def P3294694960434888341.Spec : Prop :=
  ∀ n, P3294694960434888341.a n = A142482 (n + 1)

end A142482

/-! ## A142482.P6649580529425770954

`∩[A002476(n+1), A138627(n+1)]`
-/

namespace A142482.P6649580529425770954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P6649580529425770954

namespace A142482

/-- `∩[A002476(n+1), A138627(n+1)]` -/
def P6649580529425770954.Spec : Prop :=
  ∀ n, (P6649580529425770954.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P9098811568946895247

`∩[A007645(n+1), A138627(n+1)]`
-/

namespace A142482.P9098811568946895247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P9098811568946895247

namespace A142482

/-- `∩[A007645(n+1), A138627(n+1)]` -/
def P9098811568946895247.Spec : Prop :=
  ∀ n, (P9098811568946895247.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P16936029405125917300

`∩[A045331(n+1), A138627(n+1)]`
-/

namespace A142482.P16936029405125917300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P16936029405125917300

namespace A142482

/-- `∩[A045331(n+1), A138627(n+1)]` -/
def P16936029405125917300.Spec : Prop :=
  ∀ n, (P16936029405125917300.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P1195307808481592898

`∩[A045375(n+1), A138627(n+1)]`
-/

namespace A142482.P1195307808481592898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P1195307808481592898

namespace A142482

/-- `∩[A045375(n+1), A138627(n+1)]` -/
def P1195307808481592898.Spec : Prop :=
  ∀ n, (P1195307808481592898.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P9176002932291331115

`∩[A123365(n+1), A138627(n+1)]`
-/

namespace A142482.P9176002932291331115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P9176002932291331115

namespace A142482

/-- `∩[A123365(n+1), A138627(n+1)]` -/
def P9176002932291331115.Spec : Prop :=
  ∀ n, (P9176002932291331115.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P9206195372878665691

`∩[A138627(n+1), A279815(n+1)]`
-/

namespace A142482.P9206195372878665691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P9206195372878665691

namespace A142482

/-- `∩[A138627(n+1), A279815(n+1)]` -/
def P9206195372878665691.Spec : Prop :=
  ∀ n, (P9206195372878665691.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P16921738133974674748

`∩[A055664(n+1), A138627(n+1)]`
-/

namespace A142482.P16921738133974674748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P16921738133974674748

namespace A142482

/-- `∩[A055664(n+1), A138627(n+1)]` -/
def P16921738133974674748.Spec : Prop :=
  ∀ n, (P16921738133974674748.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P6644095434752929242

`∩[A133290(n+1), A138627(n+1)]`
-/

namespace A142482.P6644095434752929242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P6644095434752929242

namespace A142482

/-- `∩[A133290(n+1), A138627(n+1)]` -/
def P6644095434752929242.Spec : Prop :=
  ∀ n, (P6644095434752929242.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P7714993188172435343

`∩[A138627(n+1), A191073(n+1)]`
-/

namespace A142482.P7714993188172435343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P7714993188172435343

namespace A142482

/-- `∩[A138627(n+1), A191073(n+1)]` -/
def P7714993188172435343.Spec : Prop :=
  ∀ n, (P7714993188172435343.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P14898657961926808955

`∩[A137827(n+1), A138627(n+1)]`
-/

namespace A142482.P14898657961926808955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P14898657961926808955

namespace A142482

/-- `∩[A137827(n+1), A138627(n+1)]` -/
def P14898657961926808955.Spec : Prop :=
  ∀ n, (P14898657961926808955.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P5907926777762094644

`∩[A138627(n+1), A374135(n+1)]`
-/

namespace A142482.P5907926777762094644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P5907926777762094644

namespace A142482

/-- `∩[A138627(n+1), A374135(n+1)]` -/
def P5907926777762094644.Spec : Prop :=
  ∀ n, (P5907926777762094644.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P14745604988498570136

`filter[A138627(n+1), A070563(#)]`
-/

namespace A142482.P14745604988498570136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142482.P14745604988498570136

namespace A142482

/-- `filter[A138627(n+1), A070563(#)]` -/
def P14745604988498570136.Spec : Prop :=
  ∀ n, P14745604988498570136.a n = A142482 (n + 1)

end A142482

/-! ## A142482.P10890177992647798950

`∩[A107925(n+1), A138627(n+1)]`
-/

namespace A142482.P10890177992647798950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P10890177992647798950

namespace A142482

/-- `∩[A107925(n+1), A138627(n+1)]` -/
def P10890177992647798950.Spec : Prop :=
  ∀ n, (P10890177992647798950.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P5059988076709056619

`∩[A004611(n+1), A138627(n+1)]`
-/

namespace A142482.P5059988076709056619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P5059988076709056619

namespace A142482

/-- `∩[A004611(n+1), A138627(n+1)]` -/
def P5059988076709056619.Spec : Prop :=
  ∀ n, (P5059988076709056619.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P9983524775541828150

`∩[A129904(n+1), A138627(n+1)]`
-/

namespace A142482.P9983524775541828150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P9983524775541828150

namespace A142482

/-- `∩[A129904(n+1), A138627(n+1)]` -/
def P9983524775541828150.Spec : Prop :=
  ∀ n, (P9983524775541828150.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P7530661734912613235

`∩[A138627(n+1), A348932(n+1)]`
-/

namespace A142482.P7530661734912613235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P7530661734912613235

namespace A142482

/-- `∩[A138627(n+1), A348932(n+1)]` -/
def P7530661734912613235.Spec : Prop :=
  ∀ n, (P7530661734912613235.a n : ℤ) = A142482 (n + 1)

end A142482

/-! ## A142482.P8465797023017393935

`∩[A138627(n+1), A260682(n+1)]`
-/

namespace A142482.P8465797023017393935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142482.P8465797023017393935

namespace A142482

/-- `∩[A138627(n+1), A260682(n+1)]` -/
def P8465797023017393935.Spec : Prop :=
  ∀ n, (P8465797023017393935.a n : ℤ) = A142482 (n + 1)

end A142482

/-!
# A142483: Primes congruent to 11 mod 51.

The programs for A142483, the canonical program `A142483.P5445031079991533009` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142483 has offset 1).

The definition of A142483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142483.P5445031079991533009

`p?[51*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142483

/-- `p?[51*n+11]` -/
def P5445031079991533009.Spec : Prop :=
  ∀ n, (P5445031079991533009.a n : ℤ) = A142483 (n + 1)

theorem P5445031079991533009.correct : P5445031079991533009.Spec := by
  intro n
  simp only [A142483, Nat.add_sub_cancel]

end A142483

/-! ## A142483.P4067019583320516352

`∩[A106902(n+1), A140542(n+1)]`
-/

namespace A142483.P4067019583320516352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P4067019583320516352

namespace A142483

/-- `∩[A106902(n+1), A140542(n+1)]` -/
def P4067019583320516352.Spec : Prop :=
  ∀ n, (P4067019583320516352.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P15514232174642464780

`∩[A140542(n+1), A191034(n+1)]`
-/

namespace A142483.P15514232174642464780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P15514232174642464780

namespace A142483

/-- `∩[A140542(n+1), A191034(n+1)]` -/
def P15514232174642464780.Spec : Prop :=
  ∀ n, (P15514232174642464780.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P15343290491145638272

`∩[A007528(n+1), A140542(n+1)]`
-/

namespace A142483.P15343290491145638272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P15343290491145638272

namespace A142483

/-- `∩[A007528(n+1), A140542(n+1)]` -/
def P15343290491145638272.Spec : Prop :=
  ∀ n, (P15343290491145638272.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P2466490880124569555

`∩[A003627(n+1), A140542(n+1)]`
-/

namespace A142483.P2466490880124569555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P2466490880124569555

namespace A142483

/-- `∩[A003627(n+1), A140542(n+1)]` -/
def P2466490880124569555.Spec : Prop :=
  ∀ n, (P2466490880124569555.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P8237093527060353460

`∩[A045309(n+1), A140542(n+1)]`
-/

namespace A142483.P8237093527060353460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P8237093527060353460

namespace A142483

/-- `∩[A045309(n+1), A140542(n+1)]` -/
def P8237093527060353460.Spec : Prop :=
  ∀ n, (P8237093527060353460.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P17472099351279515359

`∩[A045410(n+1), A140542(n+1)]`
-/

namespace A142483.P17472099351279515359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P17472099351279515359

namespace A142483

/-- `∩[A045410(n+1), A140542(n+1)]` -/
def P17472099351279515359.Spec : Prop :=
  ∀ n, (P17472099351279515359.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P1321243070439012821

`∩[A056955(n+1), A140542(n+1)]`
-/

namespace A142483.P1321243070439012821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P1321243070439012821

namespace A142483

/-- `∩[A056955(n+1), A140542(n+1)]` -/
def P1321243070439012821.Spec : Prop :=
  ∀ n, (P1321243070439012821.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P1993935783678627838

`∩[A066501(n+1), A140542(n+1)]`
-/

namespace A142483.P1993935783678627838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P1993935783678627838

namespace A142483

/-- `∩[A066501(n+1), A140542(n+1)]` -/
def P1993935783678627838.Spec : Prop :=
  ∀ n, (P1993935783678627838.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P12804328241628211889

`∩[A140542(n+1), A259548(n+1)]`
-/

namespace A142483.P12804328241628211889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P12804328241628211889

namespace A142483

/-- `∩[A140542(n+1), A259548(n+1)]` -/
def P12804328241628211889.Spec : Prop :=
  ∀ n, (P12804328241628211889.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P5478704185845834047

`record[A020639(A139611(n)-4*n)]`
-/

namespace A142483.P5478704185845834047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n - (4 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142483.P5478704185845834047

namespace A142483

/-- `record[A020639(A139611(n)-4*n)]` -/
def P5478704185845834047.Spec : Prop :=
  ∀ n, P5478704185845834047.a n = A142483 (n + 1)

end A142483

/-! ## A142483.P16686425372001830410

`∩[A082406(n+1), A140542(n+1)]`
-/

namespace A142483.P16686425372001830410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P16686425372001830410

namespace A142483

/-- `∩[A082406(n+1), A140542(n+1)]` -/
def P16686425372001830410.Spec : Prop :=
  ∀ n, (P16686425372001830410.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P15081643668015618952

`record[A006530(A102439(n)+A020742(n))]`
-/

namespace A142483.P15081643668015618952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102439 n + A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142483.P15081643668015618952

namespace A142483

/-- `record[A006530(A102439(n)+A020742(n))]` -/
def P15081643668015618952.Spec : Prop :=
  ∀ n, P15081643668015618952.a n = A142483 (n + 1)

end A142483

/-! ## A142483.P5134884098310897160

`record[A020639(A102439(n)+A020742(n))]`
-/

namespace A142483.P5134884098310897160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102439 n + A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142483.P5134884098310897160

namespace A142483

/-- `record[A020639(A102439(n)+A020742(n))]` -/
def P5134884098310897160.Spec : Prop :=
  ∀ n, P5134884098310897160.a n = A142483 (n + 1)

end A142483

/-! ## A142483.P6392037080440285658

`∩[A140542(n+1), A167409(n+1)]`
-/

namespace A142483.P6392037080440285658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P6392037080440285658

namespace A142483

/-- `∩[A140542(n+1), A167409(n+1)]` -/
def P6392037080440285658.Spec : Prop :=
  ∀ n, (P6392037080440285658.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P6151558276971542357

`∩[A140542(n+1), A016969(n)]`
-/

namespace A142483.P6151558276971542357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P6151558276971542357

namespace A142483

/-- `∩[A140542(n+1), A016969(n)]` -/
def P6151558276971542357.Spec : Prop :=
  ∀ n, (P6151558276971542357.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P17946170774138231276

`∩[A140542(n+1), A101328(n+2)]`
-/

namespace A142483.P17946170774138231276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P17946170774138231276

namespace A142483

/-- `∩[A140542(n+1), A101328(n+2)]` -/
def P17946170774138231276.Spec : Prop :=
  ∀ n, (P17946170774138231276.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P10262904035811798659

`∩[A140542(n+1), A277571(n+1)]`
-/

namespace A142483.P10262904035811798659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P10262904035811798659

namespace A142483

/-- `∩[A140542(n+1), A277571(n+1)]` -/
def P10262904035811798659.Spec : Prop :=
  ∀ n, (P10262904035811798659.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P9896351257284644665

`∩[A074243(n+1), A140542(n+1)]`
-/

namespace A142483.P9896351257284644665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P9896351257284644665

namespace A142483

/-- `∩[A074243(n+1), A140542(n+1)]` -/
def P9896351257284644665.Spec : Prop :=
  ∀ n, (P9896351257284644665.a n : ℤ) = A142483 (n + 1)

end A142483

/-! ## A142483.P10748980678869293610

`∩[A140542(n+1), A348934(n+1)]`
-/

namespace A142483.P10748980678869293610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142483.P10748980678869293610

namespace A142483

/-- `∩[A140542(n+1), A348934(n+1)]` -/
def P10748980678869293610.Spec : Prop :=
  ∀ n, (P10748980678869293610.a n : ℤ) = A142483 (n + 1)

end A142483

/-!
# A142484: Primes congruent to 13 mod 51.

The programs for A142484, the canonical program `A142484.P6216944653823223941` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142484 has offset 1).

The definition of A142484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142484.P6216944653823223941

`p?[51*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142484

/-- `p?[51*n+13]` -/
def P6216944653823223941.Spec : Prop :=
  ∀ n, (P6216944653823223941.a n : ℤ) = A142484 (n + 1)

theorem P6216944653823223941.correct : P6216944653823223941.Spec := by
  intro n
  simp only [A142484, Nat.add_sub_cancel]

end A142484

/-! ## A142484.P11118093772653199136

`∩[A106904(n+1), A141865(n+1)]`
-/

namespace A142484.P11118093772653199136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P11118093772653199136

namespace A142484

/-- `∩[A106904(n+1), A141865(n+1)]` -/
def P11118093772653199136.Spec : Prop :=
  ∀ n, (P11118093772653199136.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P4138081974830631900

`∩[A002476(n+1), A141865(n+1)]`
-/

namespace A142484.P4138081974830631900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P4138081974830631900

namespace A142484

/-- `∩[A002476(n+1), A141865(n+1)]` -/
def P4138081974830631900.Spec : Prop :=
  ∀ n, (P4138081974830631900.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P7721898512829280046

`∩[A007645(n+1), A141865(n+1)]`
-/

namespace A142484.P7721898512829280046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P7721898512829280046

namespace A142484

/-- `∩[A007645(n+1), A141865(n+1)]` -/
def P7721898512829280046.Spec : Prop :=
  ∀ n, (P7721898512829280046.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P429215551105319478

`∩[A045331(n+1), A141865(n+1)]`
-/

namespace A142484.P429215551105319478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P429215551105319478

namespace A142484

/-- `∩[A045331(n+1), A141865(n+1)]` -/
def P429215551105319478.Spec : Prop :=
  ∀ n, (P429215551105319478.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P4028533911205533663

`∩[A045375(n+1), A141865(n+1)]`
-/

namespace A142484.P4028533911205533663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P4028533911205533663

namespace A142484

/-- `∩[A045375(n+1), A141865(n+1)]` -/
def P4028533911205533663.Spec : Prop :=
  ∀ n, (P4028533911205533663.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P9948019809267076792

`∩[A123365(n+1), A141865(n+1)]`
-/

namespace A142484.P9948019809267076792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P9948019809267076792

namespace A142484

/-- `∩[A123365(n+1), A141865(n+1)]` -/
def P9948019809267076792.Spec : Prop :=
  ∀ n, (P9948019809267076792.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P4208431856716571690

`∩[A141865(n+1), A191034(n+1)]`
-/

namespace A142484.P4208431856716571690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P4208431856716571690

namespace A142484

/-- `∩[A141865(n+1), A191034(n+1)]` -/
def P4208431856716571690.Spec : Prop :=
  ∀ n, (P4208431856716571690.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P8311123519986497341

`∩[A141865(n+1), A279815(n+1)]`
-/

namespace A142484.P8311123519986497341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P8311123519986497341

namespace A142484

/-- `∩[A141865(n+1), A279815(n+1)]` -/
def P8311123519986497341.Spec : Prop :=
  ∀ n, (P8311123519986497341.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P7910131445206837457

`∩[A055664(n+1), A141865(n+1)]`
-/

namespace A142484.P7910131445206837457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P7910131445206837457

namespace A142484

/-- `∩[A055664(n+1), A141865(n+1)]` -/
def P7910131445206837457.Spec : Prop :=
  ∀ n, (P7910131445206837457.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P15657700480486599986

`∩[A133290(n+1), A141865(n+1)]`
-/

namespace A142484.P15657700480486599986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P15657700480486599986

namespace A142484

/-- `∩[A133290(n+1), A141865(n+1)]` -/
def P15657700480486599986.Spec : Prop :=
  ∀ n, (P15657700480486599986.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P9323768384660415201

`∩[A137827(n+1), A141865(n+1)]`
-/

namespace A142484.P9323768384660415201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P9323768384660415201

namespace A142484

/-- `∩[A137827(n+1), A141865(n+1)]` -/
def P9323768384660415201.Spec : Prop :=
  ∀ n, (P9323768384660415201.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P15920123831272698839

`∩[A141865(n+1), A374135(n+1)]`
-/

namespace A142484.P15920123831272698839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P15920123831272698839

namespace A142484

/-- `∩[A141865(n+1), A374135(n+1)]` -/
def P15920123831272698839.Spec : Prop :=
  ∀ n, (P15920123831272698839.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P4504714231034895665

`filter[A141865(n+1), A070563(#)]`
-/

namespace A142484.P4504714231034895665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142484.P4504714231034895665

namespace A142484

/-- `filter[A141865(n+1), A070563(#)]` -/
def P4504714231034895665.Spec : Prop :=
  ∀ n, P4504714231034895665.a n = A142484 (n + 1)

end A142484

/-! ## A142484.P8836932891533361526

`∩[A107925(n+1), A141865(n+1)]`
-/

namespace A142484.P8836932891533361526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P8836932891533361526

namespace A142484

/-- `∩[A107925(n+1), A141865(n+1)]` -/
def P8836932891533361526.Spec : Prop :=
  ∀ n, (P8836932891533361526.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P7923705555809419600

`∩[A004611(n+1), A141865(n+1)]`
-/

namespace A142484.P7923705555809419600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P7923705555809419600

namespace A142484

/-- `∩[A004611(n+1), A141865(n+1)]` -/
def P7923705555809419600.Spec : Prop :=
  ∀ n, (P7923705555809419600.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P4557332382856679773

`∩[A129904(n+1), A141865(n+1)]`
-/

namespace A142484.P4557332382856679773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P4557332382856679773

namespace A142484

/-- `∩[A129904(n+1), A141865(n+1)]` -/
def P4557332382856679773.Spec : Prop :=
  ∀ n, (P4557332382856679773.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P3915186594438662837

`∩[A141865(n+1), A348932(n+1)]`
-/

namespace A142484.P3915186594438662837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P3915186594438662837

namespace A142484

/-- `∩[A141865(n+1), A348932(n+1)]` -/
def P3915186594438662837.Spec : Prop :=
  ∀ n, (P3915186594438662837.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P107768578484848766

`∩[A141865(n+1), A260682(n+1)]`
-/

namespace A142484.P107768578484848766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142484.P107768578484848766

namespace A142484

/-- `∩[A141865(n+1), A260682(n+1)]` -/
def P107768578484848766.Spec : Prop :=
  ∀ n, (P107768578484848766.a n : ℤ) = A142484 (n + 1)

end A142484

/-! ## A142484.P3107916914652957170

`filter[A141865(n+1), A353815(#)]`
-/

namespace A142484.P3107916914652957170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A142484.P3107916914652957170

namespace A142484

/-- `filter[A141865(n+1), A353815(#)]` -/
def P3107916914652957170.Spec : Prop :=
  ∀ n, P3107916914652957170.a n = A142484 (n + 1)

end A142484

/-!
# A142485: Primes congruent to 14 mod 51.

The programs for A142485, there is no canonical definition to state claims against.
-/

/-! ## A142485.P16168758930151686243

`A140540(eq[2, A140540(n+1)%3]+1)`
-/

namespace A142485.P16168758930151686243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140540 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142485.P16168758930151686243

/-! ## A142485.P14956173243274973280

`p?[a(n-1)+51]` with `a(0)=14`
-/

namespace A142485.P14956173243274973280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) + 51

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142485.P14956173243274973280

/-! ## A142485.P15729643710900653395

`p?[50*(n-13)+n+1]`
-/

namespace A142485.P15729643710900653395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * ((n : ℤ) - 13) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142485.P15729643710900653395

/-! ## A142485.P1365991233933229375

`or(1, p?[A139610(n)+A016957(n)])`
-/

namespace A142485.P1365991233933229375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A016957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142485.P1365991233933229375

/-! ## A142485.P10146584121327754859

`∩[A106902(n+1), A140540(n+1)]`
-/

namespace A142485.P10146584121327754859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P10146584121327754859

/-! ## A142485.P8557503282385617376

`∩[A140540(n+1), A191034(n+1)]`
-/

namespace A142485.P8557503282385617376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P8557503282385617376

/-! ## A142485.P5147021184887361461

`∩[A003627(n+1), A140540(n+1)]`
-/

namespace A142485.P5147021184887361461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P5147021184887361461

/-! ## A142485.P3190000595126917057

`∩[A007528(n+1), A140540(n+1)]`
-/

namespace A142485.P3190000595126917057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P3190000595126917057

/-! ## A142485.P13216910974213021294

`∩[A045309(n+1), A140540(n+1)]`
-/

namespace A142485.P13216910974213021294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P13216910974213021294

/-! ## A142485.P12779364361558927593

`∩[A045410(n+1), A140540(n+1)]`
-/

namespace A142485.P12779364361558927593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P12779364361558927593

/-! ## A142485.P9549579962231752349

`∩[A056955(n+1), A140540(n+1)]`
-/

namespace A142485.P9549579962231752349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P9549579962231752349

/-! ## A142485.P1230614700189356944

`∩[A003627(n+1), A361692(n+1)-2]`
-/

namespace A142485.P1230614700189356944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P1230614700189356944

/-! ## A142485.P1712787298930479279

`∩[A007528(n+1), A361692(n+1)-2]`
-/

namespace A142485.P1712787298930479279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P1712787298930479279

/-! ## A142485.P6102204767517137349

`∩[A045309(n+1), A361692(n+1)-2]`
-/

namespace A142485.P6102204767517137349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P6102204767517137349

/-! ## A142485.P17916541555237833475

`∩[A045410(n+1), A361692(n+1)-2]`
-/

namespace A142485.P17916541555237833475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P17916541555237833475

/-! ## A142485.P6959130508657039489

`∩[A056955(n+1), A361692(n+1)-2]`
-/

namespace A142485.P6959130508657039489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P6959130508657039489

/-! ## A142485.P5471025247046959377

`∩[A084547(n+1), A140540(n+1)]`
-/

namespace A142485.P5471025247046959377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P5471025247046959377

/-! ## A142485.P2524449034184742198

`∩[A066501(n+1), A140540(n+1)]`
-/

namespace A142485.P2524449034184742198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P2524449034184742198

/-! ## A142485.P11221475342946133599

`∩[A140540(n+1), A259548(n+1)]`
-/

namespace A142485.P11221475342946133599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P11221475342946133599

/-! ## A142485.P11479883118177023316

`∩[A082406(n+1), A140540(n+1)]`
-/

namespace A142485.P11479883118177023316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142485.P11479883118177023316

/-!
# A142486: Primes congruent to 16 mod 51.

The programs for A142486, the canonical program `A142486.P4779644728905971772` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142486 has offset 1).

The definition of A142486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142486.P4779644728905971772

`p?[51*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142486

/-- `p?[51*n+16]` -/
def P4779644728905971772.Spec : Prop :=
  ∀ n, (P4779644728905971772.a n : ℤ) = A142486 (n + 1)

theorem P4779644728905971772.correct : P4779644728905971772.Spec := by
  intro n
  simp only [A142486, Nat.add_sub_cancel]

end A142486

/-! ## A142486.P18111060719451353023

`or(1, p?[51*n-35])`
-/

namespace A142486.P18111060719451353023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142486.P18111060719451353023

namespace A142486

/-- `or(1, p?[51*n-35])` -/
def P18111060719451353023.Spec : Prop :=
  ∀ n, P18111060719451353023.a n = A142486 (n + 1)

end A142486

/-! ## A142486.P7162861452625488348

`∏{p}[p?[51*n-35], #]`
-/

namespace A142486.P7162861452625488348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 35

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142486.P7162861452625488348

namespace A142486

/-- `∏{p}[p?[51*n-35], #]` -/
def P7162861452625488348.Spec : Prop :=
  ∀ n, (P7162861452625488348.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P8011851632128217365

`p?[51*n-35]-n%-1`
-/

namespace A142486.P8011851632128217365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.tmod (n : ℤ) (-1)

end

end A142486.P8011851632128217365

namespace A142486

/-- `p?[51*n-35]-n%-1` -/
def P8011851632128217365.Spec : Prop :=
  ∀ n, P8011851632128217365.a n = A142486 (n + 1)

end A142486

/-! ## A142486.P17202840019802657931

`p?[A154267(n)+A103214(n)]%A002046(n+1)`
-/

namespace A142486.P17202840019802657931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002046 (n + 1))

end

end A142486.P17202840019802657931

namespace A142486

/-- `p?[A154267(n)+A103214(n)]%A002046(n+1)` -/
def P17202840019802657931.Spec : Prop :=
  ∀ n, P17202840019802657931.a n = A142486 (n + 1)

end A142486

/-! ## A142486.P17053134785673732636

`A000027(p?[A154267(n)+A103214(n)])`
-/

namespace A142486.P17053134785673732636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142486.P17053134785673732636

namespace A142486

/-- `A000027(p?[A154267(n)+A103214(n)])` -/
def P17053134785673732636.Spec : Prop :=
  ∀ n, P17053134785673732636.a n = A142486 (n + 1)

end A142486

/-! ## A142486.P15179906918115135889

`A000027(p?[A139279(n+1)+A017485(n)])`
-/

namespace A142486.P15179906918115135889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + A017485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142486.P15179906918115135889

namespace A142486

/-- `A000027(p?[A139279(n+1)+A017485(n)])` -/
def P15179906918115135889.Spec : Prop :=
  ∀ n, P15179906918115135889.a n = A142486 (n + 1)

end A142486

/-! ## A142486.P3952765538772490

`∩[A106904(n+1), A140541(n+1)]`
-/

namespace A142486.P3952765538772490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P3952765538772490

namespace A142486

/-- `∩[A106904(n+1), A140541(n+1)]` -/
def P3952765538772490.Spec : Prop :=
  ∀ n, (P3952765538772490.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P1416173242562695284

`∩[A002476(n+1), A140541(n+1)]`
-/

namespace A142486.P1416173242562695284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P1416173242562695284

namespace A142486

/-- `∩[A002476(n+1), A140541(n+1)]` -/
def P1416173242562695284.Spec : Prop :=
  ∀ n, (P1416173242562695284.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P1882918844600076070

`∩[A007645(n+1), A140541(n+1)]`
-/

namespace A142486.P1882918844600076070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P1882918844600076070

namespace A142486

/-- `∩[A007645(n+1), A140541(n+1)]` -/
def P1882918844600076070.Spec : Prop :=
  ∀ n, (P1882918844600076070.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P17896887701094468964

`∩[A045331(n+1), A140541(n+1)]`
-/

namespace A142486.P17896887701094468964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P17896887701094468964

namespace A142486

/-- `∩[A045331(n+1), A140541(n+1)]` -/
def P17896887701094468964.Spec : Prop :=
  ∀ n, (P17896887701094468964.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P10995924638308034919

`∩[A045375(n+1), A140541(n+1)]`
-/

namespace A142486.P10995924638308034919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P10995924638308034919

namespace A142486

/-- `∩[A045375(n+1), A140541(n+1)]` -/
def P10995924638308034919.Spec : Prop :=
  ∀ n, (P10995924638308034919.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P3654635447399702614

`∩[A123365(n+1), A140541(n+1)]`
-/

namespace A142486.P3654635447399702614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P3654635447399702614

namespace A142486

/-- `∩[A123365(n+1), A140541(n+1)]` -/
def P3654635447399702614.Spec : Prop :=
  ∀ n, (P3654635447399702614.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P10411079092970323931

`∩[A140541(n+1), A191034(n+1)]`
-/

namespace A142486.P10411079092970323931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P10411079092970323931

namespace A142486

/-- `∩[A140541(n+1), A191034(n+1)]` -/
def P10411079092970323931.Spec : Prop :=
  ∀ n, (P10411079092970323931.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P6324781658538590154

`∩[A140541(n+1), A279815(n+1)]`
-/

namespace A142486.P6324781658538590154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P6324781658538590154

namespace A142486

/-- `∩[A140541(n+1), A279815(n+1)]` -/
def P6324781658538590154.Spec : Prop :=
  ∀ n, (P6324781658538590154.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P15673194026637659106

`∩[A055664(n+1), A140541(n+1)]`
-/

namespace A142486.P15673194026637659106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P15673194026637659106

namespace A142486

/-- `∩[A055664(n+1), A140541(n+1)]` -/
def P15673194026637659106.Spec : Prop :=
  ∀ n, (P15673194026637659106.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P13800629467238147490

`∩[A133290(n+1), A140541(n+1)]`
-/

namespace A142486.P13800629467238147490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P13800629467238147490

namespace A142486

/-- `∩[A133290(n+1), A140541(n+1)]` -/
def P13800629467238147490.Spec : Prop :=
  ∀ n, (P13800629467238147490.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P9386903585727690766

`∩[A137827(n+1), A140541(n+1)]`
-/

namespace A142486.P9386903585727690766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P9386903585727690766

namespace A142486

/-- `∩[A137827(n+1), A140541(n+1)]` -/
def P9386903585727690766.Spec : Prop :=
  ∀ n, (P9386903585727690766.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P9143148755781172378

`∩[A002476(n+1), A361692(n+1)]`
-/

namespace A142486.P9143148755781172378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P9143148755781172378

namespace A142486

/-- `∩[A002476(n+1), A361692(n+1)]` -/
def P9143148755781172378.Spec : Prop :=
  ∀ n, (P9143148755781172378.a n : ℤ) = A142486 (n + 1)

end A142486

/-! ## A142486.P11357060907539945418

`∩[A007645(n+1), A361692(n+1)]`
-/

namespace A142486.P11357060907539945418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142486.P11357060907539945418

namespace A142486

/-- `∩[A007645(n+1), A361692(n+1)]` -/
def P11357060907539945418.Spec : Prop :=
  ∀ n, (P11357060907539945418.a n : ℤ) = A142486 (n + 1)

end A142486

/-!
# A142487: Primes congruent to 19 mod 51.

The programs for A142487, the canonical program `A142487.P12567645392230628047` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142487 has offset 1).

The definition of A142487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142487.P12567645392230628047

`p?[51*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142487

/-- `p?[51*n+19]` -/
def P12567645392230628047.Spec : Prop :=
  ∀ n, (P12567645392230628047.a n : ℤ) = A142487 (n + 1)

theorem P12567645392230628047.correct : P12567645392230628047.Spec := by
  intro n
  simp only [A142487, Nat.add_sub_cancel]

end A142487

/-! ## A142487.P2760016528922956620

`∩[A106904(n+1), A140544(n+1)]`
-/

namespace A142487.P2760016528922956620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P2760016528922956620

namespace A142487

/-- `∩[A106904(n+1), A140544(n+1)]` -/
def P2760016528922956620.Spec : Prop :=
  ∀ n, (P2760016528922956620.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P10818629171021460728

`∩[A106904(n+1), A142072(n+1)]`
-/

namespace A142487.P10818629171021460728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P10818629171021460728

namespace A142487

/-- `∩[A106904(n+1), A142072(n+1)]` -/
def P10818629171021460728.Spec : Prop :=
  ∀ n, (P10818629171021460728.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P12520919612505688284

`∩[A106904(n+1), A214890(n+1)]`
-/

namespace A142487.P12520919612505688284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P12520919612505688284

namespace A142487

/-- `∩[A106904(n+1), A214890(n+1)]` -/
def P12520919612505688284.Spec : Prop :=
  ∀ n, (P12520919612505688284.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P13851595057220073568

`∩[A106904(n+1), A215104(n+1)]`
-/

namespace A142487.P13851595057220073568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P13851595057220073568

namespace A142487

/-- `∩[A106904(n+1), A215104(n+1)]` -/
def P13851595057220073568.Spec : Prop :=
  ∀ n, (P13851595057220073568.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P4694483115810938056

`∩[A106904(n+1), A215169(n+1)]`
-/

namespace A142487.P4694483115810938056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P4694483115810938056

namespace A142487

/-- `∩[A106904(n+1), A215169(n+1)]` -/
def P4694483115810938056.Spec : Prop :=
  ∀ n, (P4694483115810938056.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P13324866406905411624

`∩[A106904(n+1), A215208(n+1)]`
-/

namespace A142487.P13324866406905411624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P13324866406905411624

namespace A142487

/-- `∩[A106904(n+1), A215208(n+1)]` -/
def P13324866406905411624.Spec : Prop :=
  ∀ n, (P13324866406905411624.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P14758339815489486445

`∩[A106904(n+1), A215212(n+1)]`
-/

namespace A142487.P14758339815489486445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P14758339815489486445

namespace A142487

/-- `∩[A106904(n+1), A215212(n+1)]` -/
def P14758339815489486445.Spec : Prop :=
  ∀ n, (P14758339815489486445.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P16850826726560880967

`∩[A106904(n+1), A215376(n+1)]`
-/

namespace A142487.P16850826726560880967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P16850826726560880967

namespace A142487

/-- `∩[A106904(n+1), A215376(n+1)]` -/
def P16850826726560880967.Spec : Prop :=
  ∀ n, (P16850826726560880967.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P12920407003375833123

`∩[A106904(n+1), A215388(n+1)]`
-/

namespace A142487.P12920407003375833123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P12920407003375833123

namespace A142487

/-- `∩[A106904(n+1), A215388(n+1)]` -/
def P12920407003375833123.Spec : Prop :=
  ∀ n, (P12920407003375833123.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P11837888862516652920

`∩[A106904(n+1), A215156(n+1)]`
-/

namespace A142487.P11837888862516652920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P11837888862516652920

namespace A142487

/-- `∩[A106904(n+1), A215156(n+1)]` -/
def P11837888862516652920.Spec : Prop :=
  ∀ n, (P11837888862516652920.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P15629799314141736462

`∩[A106904(n+1), A215372(n+1)]`
-/

namespace A142487.P15629799314141736462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P15629799314141736462

namespace A142487

/-- `∩[A106904(n+1), A215372(n+1)]` -/
def P15629799314141736462.Spec : Prop :=
  ∀ n, (P15629799314141736462.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P12946943569205724728

`∩[A106904(n+1), A215161(n+1)]`
-/

namespace A142487.P12946943569205724728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P12946943569205724728

namespace A142487

/-- `∩[A106904(n+1), A215161(n+1)]` -/
def P12946943569205724728.Spec : Prop :=
  ∀ n, (P12946943569205724728.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P14530798960782093409

`∩[A215137(2*n)+A215137(n+1), A215153(n+2)]`
-/

namespace A142487.P14530798960782093409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n) + A215137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P14530798960782093409

namespace A142487

/-- `∩[A215137(2*n)+A215137(n+1), A215153(n+2)]` -/
def P14530798960782093409.Spec : Prop :=
  ∀ n, (P14530798960782093409.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P5753158556278016331

`∩[A215137(2*n)+A215137(n+1), A215273(n+2)]`
-/

namespace A142487.P5753158556278016331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n) + A215137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P5753158556278016331

namespace A142487

/-- `∩[A215137(2*n)+A215137(n+1), A215273(n+2)]` -/
def P5753158556278016331.Spec : Prop :=
  ∀ n, (P5753158556278016331.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P7172766032781617237

`∩[A215137(2*n)+A215137(n+1), A215304(n+2)]`
-/

namespace A142487.P7172766032781617237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n) + A215137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P7172766032781617237

namespace A142487

/-- `∩[A215137(2*n)+A215137(n+1), A215304(n+2)]` -/
def P7172766032781617237.Spec : Prop :=
  ∀ n, (P7172766032781617237.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P17889085841985406895

`∩[A215137(2*n)+A215137(n+1), A215308(n+2)]`
-/

namespace A142487.P17889085841985406895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n) + A215137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P17889085841985406895

namespace A142487

/-- `∩[A215137(2*n)+A215137(n+1), A215308(n+2)]` -/
def P17889085841985406895.Spec : Prop :=
  ∀ n, (P17889085841985406895.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P16560024642743369077

`∩[A215137(2*n)+A215137(n+1), A215380(n+2)]`
-/

namespace A142487.P16560024642743369077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n) + A215137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P16560024642743369077

namespace A142487

/-- `∩[A215137(2*n)+A215137(n+1), A215380(n+2)]` -/
def P16560024642743369077.Spec : Prop :=
  ∀ n, (P16560024642743369077.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P14968840710832898295

`∩[A002476(n+1), A140544(n+1)]`
-/

namespace A142487.P14968840710832898295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P14968840710832898295

namespace A142487

/-- `∩[A002476(n+1), A140544(n+1)]` -/
def P14968840710832898295.Spec : Prop :=
  ∀ n, (P14968840710832898295.a n : ℤ) = A142487 (n + 1)

end A142487

/-! ## A142487.P691478051884631879

`∩[A002476(n+1), A142072(n+1)]`
-/

namespace A142487.P691478051884631879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142487.P691478051884631879

namespace A142487

/-- `∩[A002476(n+1), A142072(n+1)]` -/
def P691478051884631879.Spec : Prop :=
  ∀ n, (P691478051884631879.a n : ℤ) = A142487 (n + 1)

end A142487

/-!
# A142488: Primes congruent to 20 mod 51.

The programs for A142488, the canonical program `A142488.P5347374661696826231` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142488 has offset 1).

The definition of A142488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142488.P5347374661696826231

`p?[51*n+20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142488

/-- `p?[51*n+20]` -/
def P5347374661696826231.Spec : Prop :=
  ∀ n, (P5347374661696826231.a n : ℤ) = A142488 (n + 1)

theorem P5347374661696826231.correct : P5347374661696826231.Spec := by
  intro n
  simp only [A142488, Nat.add_sub_cancel]

end A142488

/-! ## A142488.P4291792794028603456

`A000027(p?[A053741(n)+n])`
-/

namespace A142488.P4291792794028603456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142488.P4291792794028603456

namespace A142488

/-- `A000027(p?[A053741(n)+n])` -/
def P4291792794028603456.Spec : Prop :=
  ∀ n, P4291792794028603456.a n = A142488 (n + 1)

end A142488

/-! ## A142488.P8325669557534233622

`∩[A003627(n+1), A092074(n+1)]`
-/

namespace A142488.P8325669557534233622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P8325669557534233622

namespace A142488

/-- `∩[A003627(n+1), A092074(n+1)]` -/
def P8325669557534233622.Spec : Prop :=
  ∀ n, (P8325669557534233622.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P17413024270733283107

`∩[A007528(n+1), A092074(n+1)]`
-/

namespace A142488.P17413024270733283107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P17413024270733283107

namespace A142488

/-- `∩[A007528(n+1), A092074(n+1)]` -/
def P17413024270733283107.Spec : Prop :=
  ∀ n, (P17413024270733283107.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P4531476186101464684

`∩[A056955(n+1), A092074(n+1)]`
-/

namespace A142488.P4531476186101464684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P4531476186101464684

namespace A142488

/-- `∩[A056955(n+1), A092074(n+1)]` -/
def P4531476186101464684.Spec : Prop :=
  ∀ n, (P4531476186101464684.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P3675279942872112768

`∩[A092074(n+1), A191034(n+1)]`
-/

namespace A142488.P3675279942872112768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P3675279942872112768

namespace A142488

/-- `∩[A092074(n+1), A191034(n+1)]` -/
def P3675279942872112768.Spec : Prop :=
  ∀ n, (P3675279942872112768.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P11081721041553465275

`∩[A003627(n+1), A215137(n)+2]`
-/

namespace A142488.P11081721041553465275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P11081721041553465275

namespace A142488

/-- `∩[A003627(n+1), A215137(n)+2]` -/
def P11081721041553465275.Spec : Prop :=
  ∀ n, (P11081721041553465275.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P11047496800145847116

`∩[A007528(n+1), A215137(n)+2]`
-/

namespace A142488.P11047496800145847116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P11047496800145847116

namespace A142488

/-- `∩[A007528(n+1), A215137(n)+2]` -/
def P11047496800145847116.Spec : Prop :=
  ∀ n, (P11047496800145847116.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P3538429573042847173

`∩[A056955(n+1), A215137(n)+2]`
-/

namespace A142488.P3538429573042847173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P3538429573042847173

namespace A142488

/-- `∩[A056955(n+1), A215137(n)+2]` -/
def P3538429573042847173.Spec : Prop :=
  ∀ n, (P3538429573042847173.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P16166868252535326881

`∩[A191034(n+1), A215137(n)+2]`
-/

namespace A142488.P16166868252535326881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P16166868252535326881

namespace A142488

/-- `∩[A191034(n+1), A215137(n)+2]` -/
def P16166868252535326881.Spec : Prop :=
  ∀ n, (P16166868252535326881.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P13897865701607381543

`∩[A215137(n+1)+2, A045309(n+2)]`
-/

namespace A142488.P13897865701607381543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P13897865701607381543

namespace A142488

/-- `∩[A215137(n+1)+2, A045309(n+2)]` -/
def P13897865701607381543.Spec : Prop :=
  ∀ n, (P13897865701607381543.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P2078660442613932585

`∩[A215137(n+1)+2, A045410(n+2)]`
-/

namespace A142488.P2078660442613932585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P2078660442613932585

namespace A142488

/-- `∩[A215137(n+1)+2, A045410(n+2)]` -/
def P2078660442613932585.Spec : Prop :=
  ∀ n, (P2078660442613932585.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P18072359452239739603

`∩[A212161(2*n+1)+A212161(n+1), A215132(n+2)]`
-/

namespace A142488.P18072359452239739603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P18072359452239739603

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215132(n+2)]` -/
def P18072359452239739603.Spec : Prop :=
  ∀ n, (P18072359452239739603.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P3458535755419440367

`∩[A212161(2*n+1)+A212161(n+1), A215320(n+2)]`
-/

namespace A142488.P3458535755419440367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P3458535755419440367

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215320(n+2)]` -/
def P3458535755419440367.Spec : Prop :=
  ∀ n, (P3458535755419440367.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P11749168361769207716

`∩[A212161(2*n+1)+A212161(n+1), A215324(n+2)]`
-/

namespace A142488.P11749168361769207716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P11749168361769207716

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215324(n+2)]` -/
def P11749168361769207716.Spec : Prop :=
  ∀ n, (P11749168361769207716.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P4502952651988268510

`∩[A212161(2*n+1)+A212161(n+1), A215352(n+2)]`
-/

namespace A142488.P4502952651988268510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P4502952651988268510

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215352(n+2)]` -/
def P4502952651988268510.Spec : Prop :=
  ∀ n, (P4502952651988268510.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P376625186878248221

`∩[A212161(2*n+1)+A212161(n+1), A215372(n+2)]`
-/

namespace A142488.P376625186878248221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P376625186878248221

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215372(n+2)]` -/
def P376625186878248221.Spec : Prop :=
  ∀ n, (P376625186878248221.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P959767926141757044

`∩[A212161(2*n+1)+A212161(n+1), A215384(n+2)]`
-/

namespace A142488.P959767926141757044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P959767926141757044

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215384(n+2)]` -/
def P959767926141757044.Spec : Prop :=
  ∀ n, (P959767926141757044.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P4798555300173413992

`∩[A212161(2*n+1)+A212161(n+1), A215388(n+2)]`
-/

namespace A142488.P4798555300173413992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 (2 * n + 1) + A212161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P4798555300173413992

namespace A142488

/-- `∩[A212161(2*n+1)+A212161(n+1), A215388(n+2)]` -/
def P4798555300173413992.Spec : Prop :=
  ∀ n, (P4798555300173413992.a n : ℤ) = A142488 (n + 1)

end A142488

/-! ## A142488.P9428186290209026945

`∩[A092074(n+1), A259548(n+1)]`
-/

namespace A142488.P9428186290209026945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142488.P9428186290209026945

namespace A142488

/-- `∩[A092074(n+1), A259548(n+1)]` -/
def P9428186290209026945.Spec : Prop :=
  ∀ n, (P9428186290209026945.a n : ℤ) = A142488 (n + 1)

end A142488

/-!
# A142489: Primes congruent to 22 mod 51.

The programs for A142489, the canonical program `A142489.P7445239063544031094` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142489 has offset 1).

The definition of A142489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142489.P7445239063544031094

`p?[51*n+22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142489

/-- `p?[51*n+22]` -/
def P7445239063544031094.Spec : Prop :=
  ∀ n, (P7445239063544031094.a n : ℤ) = A142489 (n + 1)

theorem P7445239063544031094.correct : P7445239063544031094.Spec := by
  intro n
  simp only [A142489, Nat.add_sub_cancel]

end A142489

/-! ## A142489.P14480865901893965934

`A000027(p?[A053741(n)+2+n])`
-/

namespace A142489.P14480865901893965934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142489.P14480865901893965934

namespace A142489

/-- `A000027(p?[A053741(n)+2+n])` -/
def P14480865901893965934.Spec : Prop :=
  ∀ n, P14480865901893965934.a n = A142489 (n + 1)

end A142489

/-! ## A142489.P5863735580897281161

`∩[A002476(n+1), A138623(n+1)]`
-/

namespace A142489.P5863735580897281161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P5863735580897281161

namespace A142489

/-- `∩[A002476(n+1), A138623(n+1)]` -/
def P5863735580897281161.Spec : Prop :=
  ∀ n, (P5863735580897281161.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P2206061670934377285

`∩[A007645(n+1), A138623(n+1)]`
-/

namespace A142489.P2206061670934377285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P2206061670934377285

namespace A142489

/-- `∩[A007645(n+1), A138623(n+1)]` -/
def P2206061670934377285.Spec : Prop :=
  ∀ n, (P2206061670934377285.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P9388736275714062695

`∩[A045331(n+1), A138623(n+1)]`
-/

namespace A142489.P9388736275714062695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P9388736275714062695

namespace A142489

/-- `∩[A045331(n+1), A138623(n+1)]` -/
def P9388736275714062695.Spec : Prop :=
  ∀ n, (P9388736275714062695.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P11331613874005359810

`∩[A045375(n+1), A138623(n+1)]`
-/

namespace A142489.P11331613874005359810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P11331613874005359810

namespace A142489

/-- `∩[A045375(n+1), A138623(n+1)]` -/
def P11331613874005359810.Spec : Prop :=
  ∀ n, (P11331613874005359810.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P12661681060118923555

`∩[A123365(n+1), A138623(n+1)]`
-/

namespace A142489.P12661681060118923555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P12661681060118923555

namespace A142489

/-- `∩[A123365(n+1), A138623(n+1)]` -/
def P12661681060118923555.Spec : Prop :=
  ∀ n, (P12661681060118923555.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P4649995161667695733

`∩[A138623(n+1), A279815(n+1)]`
-/

namespace A142489.P4649995161667695733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P4649995161667695733

namespace A142489

/-- `∩[A138623(n+1), A279815(n+1)]` -/
def P4649995161667695733.Spec : Prop :=
  ∀ n, (P4649995161667695733.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P11141018695480943819

`∩[A055664(n+1), A138623(n+1)]`
-/

namespace A142489.P11141018695480943819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P11141018695480943819

namespace A142489

/-- `∩[A055664(n+1), A138623(n+1)]` -/
def P11141018695480943819.Spec : Prop :=
  ∀ n, (P11141018695480943819.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P11400142305748995478

`∩[A138623(n+1), A191073(n+1)]`
-/

namespace A142489.P11400142305748995478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P11400142305748995478

namespace A142489

/-- `∩[A138623(n+1), A191073(n+1)]` -/
def P11400142305748995478.Spec : Prop :=
  ∀ n, (P11400142305748995478.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P8929968036371479096

`∩[A133290(n+1), A138623(n+1)]`
-/

namespace A142489.P8929968036371479096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P8929968036371479096

namespace A142489

/-- `∩[A133290(n+1), A138623(n+1)]` -/
def P8929968036371479096.Spec : Prop :=
  ∀ n, (P8929968036371479096.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P2668044800545929935

`∩[A137827(n+1), A138623(n+1)]`
-/

namespace A142489.P2668044800545929935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P2668044800545929935

namespace A142489

/-- `∩[A137827(n+1), A138623(n+1)]` -/
def P2668044800545929935.Spec : Prop :=
  ∀ n, (P2668044800545929935.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P13277935910590562525

`∩[A002476(n+1), A154612(n)-2]`
-/

namespace A142489.P13277935910590562525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P13277935910590562525

namespace A142489

/-- `∩[A002476(n+1), A154612(n)-2]` -/
def P13277935910590562525.Spec : Prop :=
  ∀ n, (P13277935910590562525.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P15946930849453577883

`∩[A007645(n+1), A154612(n)-2]`
-/

namespace A142489.P15946930849453577883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P15946930849453577883

namespace A142489

/-- `∩[A007645(n+1), A154612(n)-2]` -/
def P15946930849453577883.Spec : Prop :=
  ∀ n, (P15946930849453577883.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P1632937249563975716

`∩[A045331(n+1), A154612(n)-2]`
-/

namespace A142489.P1632937249563975716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P1632937249563975716

namespace A142489

/-- `∩[A045331(n+1), A154612(n)-2]` -/
def P1632937249563975716.Spec : Prop :=
  ∀ n, (P1632937249563975716.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P9187298698302699822

`∩[A045375(n+1), A154612(n)-2]`
-/

namespace A142489.P9187298698302699822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P9187298698302699822

namespace A142489

/-- `∩[A045375(n+1), A154612(n)-2]` -/
def P9187298698302699822.Spec : Prop :=
  ∀ n, (P9187298698302699822.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P6176027444349436190

`∩[A055664(n+1), A154612(n)-2]`
-/

namespace A142489.P6176027444349436190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P6176027444349436190

namespace A142489

/-- `∩[A055664(n+1), A154612(n)-2]` -/
def P6176027444349436190.Spec : Prop :=
  ∀ n, (P6176027444349436190.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P1943085217646306500

`∩[A123365(n+1), A154612(n)-2]`
-/

namespace A142489.P1943085217646306500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P1943085217646306500

namespace A142489

/-- `∩[A123365(n+1), A154612(n)-2]` -/
def P1943085217646306500.Spec : Prop :=
  ∀ n, (P1943085217646306500.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P3953960183620506779

`∩[A191073(n+1), A154612(n)-2]`
-/

namespace A142489.P3953960183620506779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P3953960183620506779

namespace A142489

/-- `∩[A191073(n+1), A154612(n)-2]` -/
def P3953960183620506779.Spec : Prop :=
  ∀ n, (P3953960183620506779.a n : ℤ) = A142489 (n + 1)

end A142489

/-! ## A142489.P7763726042034528661

`∩[A279815(n+1), A154612(n)-2]`
-/

namespace A142489.P7763726042034528661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142489.P7763726042034528661

namespace A142489

/-- `∩[A279815(n+1), A154612(n)-2]` -/
def P7763726042034528661.Spec : Prop :=
  ∀ n, (P7763726042034528661.a n : ℤ) = A142489 (n + 1)

end A142489

/-!
# A142490: Primes congruent to 23 mod 51.

The programs for A142490, the canonical program `A142490.P13538752229405891440` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142490 has offset 1).

The definition of A142490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142490.P13538752229405891440

`p?[51*n+23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142490

/-- `p?[51*n+23]` -/
def P13538752229405891440.Spec : Prop :=
  ∀ n, (P13538752229405891440.a n : ℤ) = A142490 (n + 1)

theorem P13538752229405891440.correct : P13538752229405891440.Spec := by
  intro n
  simp only [A142490, Nat.add_sub_cancel]

end A142490

/-! ## A142490.P9629540248816301833

`∩[A106902(n+1), A140545(n+1)]`
-/

namespace A142490.P9629540248816301833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P9629540248816301833

namespace A142490

/-- `∩[A106902(n+1), A140545(n+1)]` -/
def P9629540248816301833.Spec : Prop :=
  ∀ n, (P9629540248816301833.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P3252673329395732761

`∩[A140545(n+1), A191034(n+1)]`
-/

namespace A142490.P3252673329395732761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P3252673329395732761

namespace A142490

/-- `∩[A140545(n+1), A191034(n+1)]` -/
def P3252673329395732761.Spec : Prop :=
  ∀ n, (P3252673329395732761.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P10482332317013513572

`∩[A003627(n+1), A140545(n+1)]`
-/

namespace A142490.P10482332317013513572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P10482332317013513572

namespace A142490

/-- `∩[A003627(n+1), A140545(n+1)]` -/
def P10482332317013513572.Spec : Prop :=
  ∀ n, (P10482332317013513572.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P5537779836353176345

`∩[A007528(n+1), A140545(n+1)]`
-/

namespace A142490.P5537779836353176345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P5537779836353176345

namespace A142490

/-- `∩[A007528(n+1), A140545(n+1)]` -/
def P5537779836353176345.Spec : Prop :=
  ∀ n, (P5537779836353176345.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P16709186842633452907

`∩[A045309(n+1), A140545(n+1)]`
-/

namespace A142490.P16709186842633452907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P16709186842633452907

namespace A142490

/-- `∩[A045309(n+1), A140545(n+1)]` -/
def P16709186842633452907.Spec : Prop :=
  ∀ n, (P16709186842633452907.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P4529775275334673458

`∩[A045410(n+1), A140545(n+1)]`
-/

namespace A142490.P4529775275334673458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P4529775275334673458

namespace A142490

/-- `∩[A045410(n+1), A140545(n+1)]` -/
def P4529775275334673458.Spec : Prop :=
  ∀ n, (P4529775275334673458.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P12329533832920959938

`∩[A056955(n+1), A140545(n+1)]`
-/

namespace A142490.P12329533832920959938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P12329533832920959938

namespace A142490

/-- `∩[A056955(n+1), A140545(n+1)]` -/
def P12329533832920959938.Spec : Prop :=
  ∀ n, (P12329533832920959938.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P4402014515874810662

`∩[A003627(n+1), A154612(n)-1]`
-/

namespace A142490.P4402014515874810662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P4402014515874810662

namespace A142490

/-- `∩[A003627(n+1), A154612(n)-1]` -/
def P4402014515874810662.Spec : Prop :=
  ∀ n, (P4402014515874810662.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P6408208777638539159

`∩[A007528(n+1), A154612(n)-1]`
-/

namespace A142490.P6408208777638539159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P6408208777638539159

namespace A142490

/-- `∩[A007528(n+1), A154612(n)-1]` -/
def P6408208777638539159.Spec : Prop :=
  ∀ n, (P6408208777638539159.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P10789527757309928307

`∩[A045309(n+1), A154612(n)-1]`
-/

namespace A142490.P10789527757309928307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P10789527757309928307

namespace A142490

/-- `∩[A045309(n+1), A154612(n)-1]` -/
def P10789527757309928307.Spec : Prop :=
  ∀ n, (P10789527757309928307.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P1416184971049170068

`∩[A045410(n+1), A154612(n)-1]`
-/

namespace A142490.P1416184971049170068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P1416184971049170068

namespace A142490

/-- `∩[A045410(n+1), A154612(n)-1]` -/
def P1416184971049170068.Spec : Prop :=
  ∀ n, (P1416184971049170068.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P2802327269292880815

`∩[A056955(n+1), A154612(n)-1]`
-/

namespace A142490.P2802327269292880815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P2802327269292880815

namespace A142490

/-- `∩[A056955(n+1), A154612(n)-1]` -/
def P2802327269292880815.Spec : Prop :=
  ∀ n, (P2802327269292880815.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P3320817333421375559

`∩[A106902(n+1), A154612(n)-1]`
-/

namespace A142490.P3320817333421375559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P3320817333421375559

namespace A142490

/-- `∩[A106902(n+1), A154612(n)-1]` -/
def P3320817333421375559.Spec : Prop :=
  ∀ n, (P3320817333421375559.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P12830752426354386522

`∩[A191034(n+1), A154612(n)-1]`
-/

namespace A142490.P12830752426354386522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P12830752426354386522

namespace A142490

/-- `∩[A191034(n+1), A154612(n)-1]` -/
def P12830752426354386522.Spec : Prop :=
  ∀ n, (P12830752426354386522.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P2004192096825174446

`∩[A170837(n+1)+n, A003627(n+2)]`
-/

namespace A142490.P2004192096825174446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P2004192096825174446

namespace A142490

/-- `∩[A170837(n+1)+n, A003627(n+2)]` -/
def P2004192096825174446.Spec : Prop :=
  ∀ n, (P2004192096825174446.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P5211425173218777587

`∩[A066501(n+1), A140545(n+1)]`
-/

namespace A142490.P5211425173218777587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P5211425173218777587

namespace A142490

/-- `∩[A066501(n+1), A140545(n+1)]` -/
def P5211425173218777587.Spec : Prop :=
  ∀ n, (P5211425173218777587.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P17594465071671858453

`∩[A140545(n+1), A259548(n+1)]`
-/

namespace A142490.P17594465071671858453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P17594465071671858453

namespace A142490

/-- `∩[A140545(n+1), A259548(n+1)]` -/
def P17594465071671858453.Spec : Prop :=
  ∀ n, (P17594465071671858453.a n : ℤ) = A142490 (n + 1)

end A142490

/-! ## A142490.P961126242635413800

`record[A020639(51*n+23)]`
-/

namespace A142490.P961126242635413800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (51 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142490.P961126242635413800

namespace A142490

/-- `record[A020639(51*n+23)]` -/
def P961126242635413800.Spec : Prop :=
  ∀ n, P961126242635413800.a n = A142490 (n + 1)

end A142490

/-! ## A142490.P758041513930555743

`∩[A082406(n+1), A140545(n+1)]`
-/

namespace A142490.P758041513930555743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142490.P758041513930555743

namespace A142490

/-- `∩[A082406(n+1), A140545(n+1)]` -/
def P758041513930555743.Spec : Prop :=
  ∀ n, (P758041513930555743.a n : ℤ) = A142490 (n + 1)

end A142490

/-!
# A142491: Primes congruent to 25 mod 51.

The programs for A142491, the canonical program `A142491.P9692789456208390047` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142491 has offset 1).

The definition of A142491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142491.P9692789456208390047

`p?[51*n+25]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142491

/-- `p?[51*n+25]` -/
def P9692789456208390047.Spec : Prop :=
  ∀ n, (P9692789456208390047.a n : ℤ) = A142491 (n + 1)

theorem P9692789456208390047.correct : P9692789456208390047.Spec := by
  intro n
  simp only [A142491, Nat.add_sub_cancel]

end A142491

/-! ## A142491.P1660447668847400042

`A000027(p?[A053742(n)+n])`
-/

namespace A142491.P1660447668847400042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142491.P1660447668847400042

namespace A142491

/-- `A000027(p?[A053742(n)+n])` -/
def P1660447668847400042.Spec : Prop :=
  ∀ n, P1660447668847400042.a n = A142491 (n + 1)

end A142491

/-! ## A142491.P2022786410442154019

`A000027(p?[A158123(n+1)-A139249(n+1)])`
-/

namespace A142491.P2022786410442154019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) - A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142491.P2022786410442154019

namespace A142491

/-- `A000027(p?[A158123(n+1)-A139249(n+1)])` -/
def P2022786410442154019.Spec : Prop :=
  ∀ n, P2022786410442154019.a n = A142491 (n + 1)

end A142491

/-! ## A142491.P6069380225738411106

`∩[A106904(n+1), A138633(n+1)]`
-/

namespace A142491.P6069380225738411106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P6069380225738411106

namespace A142491

/-- `∩[A106904(n+1), A138633(n+1)]` -/
def P6069380225738411106.Spec : Prop :=
  ∀ n, (P6069380225738411106.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P6128323559225293197

`A000027(p?[A032766(n)+A008606(n)])`
-/

namespace A142491.P6128323559225293197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142491.P6128323559225293197

namespace A142491

/-- `A000027(p?[A032766(n)+A008606(n)])` -/
def P6128323559225293197.Spec : Prop :=
  ∀ n, P6128323559225293197.a n = A142491 (n + 1)

end A142491

/-! ## A142491.P11364009645261015426

`∩[A002476(n+1), A138633(n+1)]`
-/

namespace A142491.P11364009645261015426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P11364009645261015426

namespace A142491

/-- `∩[A002476(n+1), A138633(n+1)]` -/
def P11364009645261015426.Spec : Prop :=
  ∀ n, (P11364009645261015426.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P3957165769589787043

`∩[A007645(n+1), A138633(n+1)]`
-/

namespace A142491.P3957165769589787043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P3957165769589787043

namespace A142491

/-- `∩[A007645(n+1), A138633(n+1)]` -/
def P3957165769589787043.Spec : Prop :=
  ∀ n, (P3957165769589787043.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P5388552089867166856

`∩[A045331(n+1), A138633(n+1)]`
-/

namespace A142491.P5388552089867166856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P5388552089867166856

namespace A142491

/-- `∩[A045331(n+1), A138633(n+1)]` -/
def P5388552089867166856.Spec : Prop :=
  ∀ n, (P5388552089867166856.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P7189150571442497898

`∩[A045375(n+1), A138633(n+1)]`
-/

namespace A142491.P7189150571442497898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P7189150571442497898

namespace A142491

/-- `∩[A045375(n+1), A138633(n+1)]` -/
def P7189150571442497898.Spec : Prop :=
  ∀ n, (P7189150571442497898.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P18301262676025473548

`∩[A123365(n+1), A138633(n+1)]`
-/

namespace A142491.P18301262676025473548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P18301262676025473548

namespace A142491

/-- `∩[A123365(n+1), A138633(n+1)]` -/
def P18301262676025473548.Spec : Prop :=
  ∀ n, (P18301262676025473548.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P17362644226168644082

`∩[A138633(n+1), A191034(n+1)]`
-/

namespace A142491.P17362644226168644082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P17362644226168644082

namespace A142491

/-- `∩[A138633(n+1), A191034(n+1)]` -/
def P17362644226168644082.Spec : Prop :=
  ∀ n, (P17362644226168644082.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P15626587060918393879

`∩[A138633(n+1), A279815(n+1)]`
-/

namespace A142491.P15626587060918393879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P15626587060918393879

namespace A142491

/-- `∩[A138633(n+1), A279815(n+1)]` -/
def P15626587060918393879.Spec : Prop :=
  ∀ n, (P15626587060918393879.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P16922561743536810438

`∩[A055664(n+1), A138633(n+1)]`
-/

namespace A142491.P16922561743536810438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P16922561743536810438

namespace A142491

/-- `∩[A055664(n+1), A138633(n+1)]` -/
def P16922561743536810438.Spec : Prop :=
  ∀ n, (P16922561743536810438.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P13233658836583692669

`∩[A133290(n+1), A138633(n+1)]`
-/

namespace A142491.P13233658836583692669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P13233658836583692669

namespace A142491

/-- `∩[A133290(n+1), A138633(n+1)]` -/
def P13233658836583692669.Spec : Prop :=
  ∀ n, (P13233658836583692669.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P16118737608209790723

`∩[A137827(n+1), A138633(n+1)]`
-/

namespace A142491.P16118737608209790723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P16118737608209790723

namespace A142491

/-- `∩[A137827(n+1), A138633(n+1)]` -/
def P16118737608209790723.Spec : Prop :=
  ∀ n, (P16118737608209790723.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P11979183378616812769

`∩[A002476(n+1), A154612(n)+1]`
-/

namespace A142491.P11979183378616812769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P11979183378616812769

namespace A142491

/-- `∩[A002476(n+1), A154612(n)+1]` -/
def P11979183378616812769.Spec : Prop :=
  ∀ n, (P11979183378616812769.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P10377944973197660458

`∩[A007645(n+1), A154612(n)+1]`
-/

namespace A142491.P10377944973197660458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P10377944973197660458

namespace A142491

/-- `∩[A007645(n+1), A154612(n)+1]` -/
def P10377944973197660458.Spec : Prop :=
  ∀ n, (P10377944973197660458.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P11016319771756417172

`∩[A045331(n+1), A154612(n)+1]`
-/

namespace A142491.P11016319771756417172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P11016319771756417172

namespace A142491

/-- `∩[A045331(n+1), A154612(n)+1]` -/
def P11016319771756417172.Spec : Prop :=
  ∀ n, (P11016319771756417172.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P16325479888165122901

`∩[A045375(n+1), A154612(n)+1]`
-/

namespace A142491.P16325479888165122901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P16325479888165122901

namespace A142491

/-- `∩[A045375(n+1), A154612(n)+1]` -/
def P16325479888165122901.Spec : Prop :=
  ∀ n, (P16325479888165122901.a n : ℤ) = A142491 (n + 1)

end A142491

/-! ## A142491.P7384669811831808927

`∩[A123365(n+1), A154612(n)+1]`
-/

namespace A142491.P7384669811831808927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142491.P7384669811831808927

namespace A142491

/-- `∩[A123365(n+1), A154612(n)+1]` -/
def P7384669811831808927.Spec : Prop :=
  ∀ n, (P7384669811831808927.a n : ℤ) = A142491 (n + 1)

end A142491

/-!
# A142492: Primes congruent to 26 mod 51.

The programs for A142492, the canonical program `A142492.P9048498068907421437` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142492 has offset 1).

The definition of A142492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142492.P9048498068907421437

`p?[51*n-25]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142492

/-- `p?[51*n-25]` -/
def P9048498068907421437.Spec : Prop :=
  ∀ n, P9048498068907421437.a n = A142492 (n + 1)

theorem P9048498068907421437.correct : P9048498068907421437.Spec := by
  intro n
  simp only [A142492, Nat.add_sub_cancel]

end A142492

/-! ## A142492.P3735828946272389871

`or(1, p?[5*(10*n+5)+n+1])`
-/

namespace A142492.P3735828946272389871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (10 * n + 5) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142492.P3735828946272389871

namespace A142492

/-- `or(1, p?[5*(10*n+5)+n+1])` -/
def P3735828946272389871.Spec : Prop :=
  ∀ n, (P3735828946272389871.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P13711132036789987171

`A000027(p?[A053742(n)+1+n])`
-/

namespace A142492.P13711132036789987171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142492.P13711132036789987171

namespace A142492

/-- `A000027(p?[A053742(n)+1+n])` -/
def P13711132036789987171.Spec : Prop :=
  ∀ n, P13711132036789987171.a n = A142492 (n + 1)

end A142492

/-! ## A142492.P17270150798806958975

`∩[A003627(n+1), A138631(n+1)]`
-/

namespace A142492.P17270150798806958975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P17270150798806958975

namespace A142492

/-- `∩[A003627(n+1), A138631(n+1)]` -/
def P17270150798806958975.Spec : Prop :=
  ∀ n, (P17270150798806958975.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P10879104731947879555

`∩[A007528(n+1), A138631(n+1)]`
-/

namespace A142492.P10879104731947879555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P10879104731947879555

namespace A142492

/-- `∩[A007528(n+1), A138631(n+1)]` -/
def P10879104731947879555.Spec : Prop :=
  ∀ n, (P10879104731947879555.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P651942305448873619

`∩[A045309(n+1), A138631(n+1)]`
-/

namespace A142492.P651942305448873619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P651942305448873619

namespace A142492

/-- `∩[A045309(n+1), A138631(n+1)]` -/
def P651942305448873619.Spec : Prop :=
  ∀ n, (P651942305448873619.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P8627995278934357703

`∩[A045410(n+1), A138631(n+1)]`
-/

namespace A142492.P8627995278934357703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P8627995278934357703

namespace A142492

/-- `∩[A045410(n+1), A138631(n+1)]` -/
def P8627995278934357703.Spec : Prop :=
  ∀ n, (P8627995278934357703.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P16054193729467612445

`∩[A056955(n+1), A138631(n+1)]`
-/

namespace A142492.P16054193729467612445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P16054193729467612445

namespace A142492

/-- `∩[A056955(n+1), A138631(n+1)]` -/
def P16054193729467612445.Spec : Prop :=
  ∀ n, (P16054193729467612445.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P13528407786931888957

`∩[A138631(n+1), A191073(n+1)]`
-/

namespace A142492.P13528407786931888957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P13528407786931888957

namespace A142492

/-- `∩[A138631(n+1), A191073(n+1)]` -/
def P13528407786931888957.Spec : Prop :=
  ∀ n, (P13528407786931888957.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P2793090044157609448

`∩[A003627(n+1), A154612(n)+2]`
-/

namespace A142492.P2793090044157609448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P2793090044157609448

namespace A142492

/-- `∩[A003627(n+1), A154612(n)+2]` -/
def P2793090044157609448.Spec : Prop :=
  ∀ n, (P2793090044157609448.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P11190624879963869667

`∩[A007528(n+1), A154612(n)+2]`
-/

namespace A142492.P11190624879963869667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P11190624879963869667

namespace A142492

/-- `∩[A007528(n+1), A154612(n)+2]` -/
def P11190624879963869667.Spec : Prop :=
  ∀ n, (P11190624879963869667.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P16021619816783053973

`∩[A045309(n+1), A154612(n)+2]`
-/

namespace A142492.P16021619816783053973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P16021619816783053973

namespace A142492

/-- `∩[A045309(n+1), A154612(n)+2]` -/
def P16021619816783053973.Spec : Prop :=
  ∀ n, (P16021619816783053973.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P11477655504162074843

`∩[A045410(n+1), A154612(n)+2]`
-/

namespace A142492.P11477655504162074843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P11477655504162074843

namespace A142492

/-- `∩[A045410(n+1), A154612(n)+2]` -/
def P11477655504162074843.Spec : Prop :=
  ∀ n, (P11477655504162074843.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P11801314294214088973

`∩[A056955(n+1), A154612(n)+2]`
-/

namespace A142492.P11801314294214088973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P11801314294214088973

namespace A142492

/-- `∩[A056955(n+1), A154612(n)+2]` -/
def P11801314294214088973.Spec : Prop :=
  ∀ n, (P11801314294214088973.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P9614716546455610647

`∩[A191073(n+1), A154612(n)+2]`
-/

namespace A142492.P9614716546455610647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P9614716546455610647

namespace A142492

/-- `∩[A191073(n+1), A154612(n)+2]` -/
def P9614716546455610647.Spec : Prop :=
  ∀ n, (P9614716546455610647.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P15518902130305442154

`∩[A084547(n+1), A138631(n+1)]`
-/

namespace A142492.P15518902130305442154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P15518902130305442154

namespace A142492

/-- `∩[A084547(n+1), A138631(n+1)]` -/
def P15518902130305442154.Spec : Prop :=
  ∀ n, (P15518902130305442154.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P7812344739825442337

`∩[A066501(n+1), A138631(n+1)]`
-/

namespace A142492.P7812344739825442337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P7812344739825442337

namespace A142492

/-- `∩[A066501(n+1), A138631(n+1)]` -/
def P7812344739825442337.Spec : Prop :=
  ∀ n, (P7812344739825442337.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P9626568887049372531

`∩[A138631(n+1), A259548(n+1)]`
-/

namespace A142492.P9626568887049372531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P9626568887049372531

namespace A142492

/-- `∩[A138631(n+1), A259548(n+1)]` -/
def P9626568887049372531.Spec : Prop :=
  ∀ n, (P9626568887049372531.a n : ℤ) = A142492 (n + 1)

end A142492

/-! ## A142492.P4730554841554476911

`A007947(p?[A053742(n)+1+n])`
-/

namespace A142492.P4730554841554476911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142492.P4730554841554476911

namespace A142492

/-- `A007947(p?[A053742(n)+1+n])` -/
def P4730554841554476911.Spec : Prop :=
  ∀ n, P4730554841554476911.a n = A142492 (n + 1)

end A142492

/-! ## A142492.P53364861298466388

`∩[A082406(n+1), A138631(n+1)]`
-/

namespace A142492.P53364861298466388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142492.P53364861298466388

namespace A142492

/-- `∩[A082406(n+1), A138631(n+1)]` -/
def P53364861298466388.Spec : Prop :=
  ∀ n, (P53364861298466388.a n : ℤ) = A142492 (n + 1)

end A142492

/-!
# A142493: Primes congruent to 28 mod 51.

The programs for A142493, the canonical program `A142493.P4438798063706308318` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142493 has offset 1).

The definition of A142493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142493.P4438798063706308318

`p?[51*n-23]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142493

/-- `p?[51*n-23]` -/
def P4438798063706308318.Spec : Prop :=
  ∀ n, P4438798063706308318.a n = A142493 (n + 1)

theorem P4438798063706308318.correct : P4438798063706308318.Spec := by
  intro n
  simp only [A142493, Nat.add_sub_cancel]

end A142493

/-! ## A142493.P17542948578977815007

`p?[A250024(n+1)+A017497(n)]%A231628(n+1)`
-/

namespace A142493.P17542948578977815007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A231628 (n + 1))

end

end A142493.P17542948578977815007

namespace A142493

/-- `p?[A250024(n+1)+A017497(n)]%A231628(n+1)` -/
def P17542948578977815007.Spec : Prop :=
  ∀ n, P17542948578977815007.a n = A142493 (n + 1)

end A142493

/-! ## A142493.P14580977870611902842

`lcm(A008683(A062584(n)), p?[51*(n+1)+28])`
-/

namespace A142493.P14580977870611902842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * (n + 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A062584 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142493.P14580977870611902842

namespace A142493

/-- `lcm(A008683(A062584(n)), p?[51*(n+1)+28])` -/
def P14580977870611902842.Spec : Prop :=
  ∀ n, (P14580977870611902842.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P3030907464436994761

`∩[A002476(n+1), A140542(n+1)]`
-/

namespace A142493.P3030907464436994761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P3030907464436994761

namespace A142493

/-- `∩[A002476(n+1), A140542(n+1)]` -/
def P3030907464436994761.Spec : Prop :=
  ∀ n, (P3030907464436994761.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P17947815482859851691

`∩[A007645(n+1), A140542(n+1)]`
-/

namespace A142493.P17947815482859851691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P17947815482859851691

namespace A142493

/-- `∩[A007645(n+1), A140542(n+1)]` -/
def P17947815482859851691.Spec : Prop :=
  ∀ n, (P17947815482859851691.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P5631201796896432172

`∩[A045331(n+1), A140542(n+1)]`
-/

namespace A142493.P5631201796896432172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P5631201796896432172

namespace A142493

/-- `∩[A045331(n+1), A140542(n+1)]` -/
def P5631201796896432172.Spec : Prop :=
  ∀ n, (P5631201796896432172.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P17321083919403023834

`∩[A045375(n+1), A140542(n+1)]`
-/

namespace A142493.P17321083919403023834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P17321083919403023834

namespace A142493

/-- `∩[A045375(n+1), A140542(n+1)]` -/
def P17321083919403023834.Spec : Prop :=
  ∀ n, (P17321083919403023834.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P10439795603888369948

`∩[A123365(n+1), A140542(n+1)]`
-/

namespace A142493.P10439795603888369948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P10439795603888369948

namespace A142493

/-- `∩[A123365(n+1), A140542(n+1)]` -/
def P10439795603888369948.Spec : Prop :=
  ∀ n, (P10439795603888369948.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P14766247500524254375

`∩[A140542(n+1), A279815(n+1)]`
-/

namespace A142493.P14766247500524254375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P14766247500524254375

namespace A142493

/-- `∩[A140542(n+1), A279815(n+1)]` -/
def P14766247500524254375.Spec : Prop :=
  ∀ n, (P14766247500524254375.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P3399321205777287740

`∩[A140542(n+1), A191073(n+1)]`
-/

namespace A142493.P3399321205777287740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P3399321205777287740

namespace A142493

/-- `∩[A140542(n+1), A191073(n+1)]` -/
def P3399321205777287740.Spec : Prop :=
  ∀ n, (P3399321205777287740.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P14898064826955686644

`∩[A055664(n+1), A140542(n+1)]`
-/

namespace A142493.P14898064826955686644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P14898064826955686644

namespace A142493

/-- `∩[A055664(n+1), A140542(n+1)]` -/
def P14898064826955686644.Spec : Prop :=
  ∀ n, (P14898064826955686644.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P3724561233239765638

`∩[A133290(n+1), A140542(n+1)]`
-/

namespace A142493.P3724561233239765638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P3724561233239765638

namespace A142493

/-- `∩[A133290(n+1), A140542(n+1)]` -/
def P3724561233239765638.Spec : Prop :=
  ∀ n, (P3724561233239765638.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P6268640654888280006

`∩[A137827(n+1), A140542(n+1)]`
-/

namespace A142493.P6268640654888280006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P6268640654888280006

namespace A142493

/-- `∩[A137827(n+1), A140542(n+1)]` -/
def P6268640654888280006.Spec : Prop :=
  ∀ n, (P6268640654888280006.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P260969642855272029

`∩[A140542(n+1), A374135(n+1)]`
-/

namespace A142493.P260969642855272029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P260969642855272029

namespace A142493

/-- `∩[A140542(n+1), A374135(n+1)]` -/
def P260969642855272029.Spec : Prop :=
  ∀ n, (P260969642855272029.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P15028785877455811181

`filter[A140542(n+1), A070563(#)]`
-/

namespace A142493.P15028785877455811181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142493.P15028785877455811181

namespace A142493

/-- `filter[A140542(n+1), A070563(#)]` -/
def P15028785877455811181.Spec : Prop :=
  ∀ n, P15028785877455811181.a n = A142493 (n + 1)

end A142493

/-! ## A142493.P11591029250106061558

`∩[A107925(n+1), A140542(n+1)]`
-/

namespace A142493.P11591029250106061558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P11591029250106061558

namespace A142493

/-- `∩[A107925(n+1), A140542(n+1)]` -/
def P11591029250106061558.Spec : Prop :=
  ∀ n, (P11591029250106061558.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P12493552936319979405

`∩[A004611(n+1), A140542(n+1)]`
-/

namespace A142493.P12493552936319979405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P12493552936319979405

namespace A142493

/-- `∩[A004611(n+1), A140542(n+1)]` -/
def P12493552936319979405.Spec : Prop :=
  ∀ n, (P12493552936319979405.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P17009086363363774748

`∩[A129904(n+1), A140542(n+1)]`
-/

namespace A142493.P17009086363363774748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P17009086363363774748

namespace A142493

/-- `∩[A129904(n+1), A140542(n+1)]` -/
def P17009086363363774748.Spec : Prop :=
  ∀ n, (P17009086363363774748.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P4118502738543483145

`∩[A140542(n+1), A348932(n+1)]`
-/

namespace A142493.P4118502738543483145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P4118502738543483145

namespace A142493

/-- `∩[A140542(n+1), A348932(n+1)]` -/
def P4118502738543483145.Spec : Prop :=
  ∀ n, (P4118502738543483145.a n : ℤ) = A142493 (n + 1)

end A142493

/-! ## A142493.P10244039846688015379

`∩[A140542(n+1), A260682(n+1)]`
-/

namespace A142493.P10244039846688015379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142493.P10244039846688015379

namespace A142493

/-- `∩[A140542(n+1), A260682(n+1)]` -/
def P10244039846688015379.Spec : Prop :=
  ∀ n, (P10244039846688015379.a n : ℤ) = A142493 (n + 1)

end A142493

/-!
# A142494: Primes congruent to 29 mod 51.

The programs for A142494, the canonical program `A142494.P9913982677588388870` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142494 has offset 1).

The definition of A142494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142494.P9913982677588388870

`p?[51*n-22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142494

/-- `p?[51*n-22]` -/
def P9913982677588388870.Spec : Prop :=
  ∀ n, P9913982677588388870.a n = A142494 (n + 1)

theorem P9913982677588388870.correct : P9913982677588388870.Spec := by
  intro n
  simp only [A142494, Nat.add_sub_cancel]

end A142494

/-! ## A142494.P11410026154695162053

`∩[A106902(n+1), A138625(n+1)]`
-/

namespace A142494.P11410026154695162053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P11410026154695162053

namespace A142494

/-- `∩[A106902(n+1), A138625(n+1)]` -/
def P11410026154695162053.Spec : Prop :=
  ∀ n, (P11410026154695162053.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P2895562407920316838

`A000027(p?[A215148(n)+A166598(n+1)])`
-/

namespace A142494.P2895562407920316838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A166598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142494.P2895562407920316838

namespace A142494

/-- `A000027(p?[A215148(n)+A166598(n+1)])` -/
def P2895562407920316838.Spec : Prop :=
  ∀ n, P2895562407920316838.a n = A142494 (n + 1)

end A142494

/-! ## A142494.P7967652074427767771

`∩[A138625(n+1), A191034(n+1)]`
-/

namespace A142494.P7967652074427767771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P7967652074427767771

namespace A142494

/-- `∩[A138625(n+1), A191034(n+1)]` -/
def P7967652074427767771.Spec : Prop :=
  ∀ n, (P7967652074427767771.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P7415434624454959834

`∩[A003627(n+1), A138625(n+1)]`
-/

namespace A142494.P7415434624454959834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P7415434624454959834

namespace A142494

/-- `∩[A003627(n+1), A138625(n+1)]` -/
def P7415434624454959834.Spec : Prop :=
  ∀ n, (P7415434624454959834.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P14175960536636747288

`∩[A007528(n+1), A138625(n+1)]`
-/

namespace A142494.P14175960536636747288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P14175960536636747288

namespace A142494

/-- `∩[A007528(n+1), A138625(n+1)]` -/
def P14175960536636747288.Spec : Prop :=
  ∀ n, (P14175960536636747288.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P16095155142020932529

`∩[A045309(n+1), A138625(n+1)]`
-/

namespace A142494.P16095155142020932529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P16095155142020932529

namespace A142494

/-- `∩[A045309(n+1), A138625(n+1)]` -/
def P16095155142020932529.Spec : Prop :=
  ∀ n, (P16095155142020932529.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P12516018225914630096

`∩[A045410(n+1), A138625(n+1)]`
-/

namespace A142494.P12516018225914630096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P12516018225914630096

namespace A142494

/-- `∩[A045410(n+1), A138625(n+1)]` -/
def P12516018225914630096.Spec : Prop :=
  ∀ n, (P12516018225914630096.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P9611301430720601636

`∩[A056955(n+1), A138625(n+1)]`
-/

namespace A142494.P9611301430720601636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P9611301430720601636

namespace A142494

/-- `∩[A056955(n+1), A138625(n+1)]` -/
def P9611301430720601636.Spec : Prop :=
  ∀ n, (P9611301430720601636.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P13163278586950661974

`∩[A082285(n+1)+n, A003627(n+2)]`
-/

namespace A142494.P13163278586950661974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P13163278586950661974

namespace A142494

/-- `∩[A082285(n+1)+n, A003627(n+2)]` -/
def P13163278586950661974.Spec : Prop :=
  ∀ n, (P13163278586950661974.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P7123588782365732523

`∩[A066501(n+1), A138625(n+1)]`
-/

namespace A142494.P7123588782365732523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P7123588782365732523

namespace A142494

/-- `∩[A066501(n+1), A138625(n+1)]` -/
def P7123588782365732523.Spec : Prop :=
  ∀ n, (P7123588782365732523.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P14514700038956534151

`∩[A138625(n+1), A259548(n+1)]`
-/

namespace A142494.P14514700038956534151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P14514700038956534151

namespace A142494

/-- `∩[A138625(n+1), A259548(n+1)]` -/
def P14514700038956534151.Spec : Prop :=
  ∀ n, (P14514700038956534151.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P14284983729993748335

`∩[A082406(n+1), A138625(n+1)]`
-/

namespace A142494.P14284983729993748335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142494.P14284983729993748335

namespace A142494

/-- `∩[A082406(n+1), A138625(n+1)]` -/
def P14284983729993748335.Spec : Prop :=
  ∀ n, (P14284983729993748335.a n : ℤ) = A142494 (n + 1)

end A142494

/-! ## A142494.P10852438744805568766

`record[A020639(A017365(5*n+2)+n+1)]`
-/

namespace A142494.P10852438744805568766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017365 (5 * n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142494.P10852438744805568766

namespace A142494

/-- `record[A020639(A017365(5*n+2)+n+1)]` -/
def P10852438744805568766.Spec : Prop :=
  ∀ n, P10852438744805568766.a n = A142494 (n + 1)

end A142494

/-! ## A142494.P11471482215722770616

`record[A020639(A158803(2*(n+1))+10*n+5)]`
-/

namespace A142494.P11471482215722770616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158803 (2 * (n + 1)) + (10 * n + 5 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142494.P11471482215722770616

namespace A142494

/-- `record[A020639(A158803(2*(n+1))+10*n+5)]` -/
def P11471482215722770616.Spec : Prop :=
  ∀ n, P11471482215722770616.a n = A142494 (n + 1)

end A142494

/-! ## A142494.P11598322420155489544

`record[A006530(A154267(n)+A142241(n))]`
-/

namespace A142494.P11598322420155489544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154267 n + A142241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142494.P11598322420155489544

namespace A142494

/-- `record[A006530(A154267(n)+A142241(n))]` -/
def P11598322420155489544.Spec : Prop :=
  ∀ n, P11598322420155489544.a n = A142494 (n + 1)

end A142494

/-! ## A142494.P17525562827716139760

`record[A020639(A154267(n)+A142241(n))]`
-/

namespace A142494.P17525562827716139760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154267 n + A142241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142494.P17525562827716139760

namespace A142494

/-- `record[A020639(A154267(n)+A142241(n))]` -/
def P17525562827716139760.Spec : Prop :=
  ∀ n, P17525562827716139760.a n = A142494 (n + 1)

end A142494

/-! ## A142494.P7489977159777377156

`A000265(p?[A156795(n+1)+A139607(n)])`
-/

namespace A142494.P7489977159777377156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 1) + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142494.P7489977159777377156

namespace A142494

/-- `A000265(p?[A156795(n+1)+A139607(n)])` -/
def P7489977159777377156.Spec : Prop :=
  ∀ n, P7489977159777377156.a n = A142494 (n + 1)

end A142494

/-!
# A142495: Primes congruent to 31 mod 51.

The programs for A142495, there is no canonical definition to state claims against.
-/

/-! ## A142495.P4363706803880819159

`A140540(eq[1, A140540(n+1)%3]+1)`
-/

namespace A142495.P4363706803880819159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140540 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142495.P4363706803880819159

/-! ## A142495.P10224929882772621498

`p?[51*n-20]`
-/

namespace A142495.P10224929882772621498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142495.P10224929882772621498

/-! ## A142495.P902656467528798747

`∏{p}[p?[A053742(n)+A038608(n+6)], #]`
-/

namespace A142495.P902656467528798747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A038608 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142495.P902656467528798747

/-! ## A142495.P17791943948015680750

`p?[A053742(n)+A038608(n+6)]%A076338(2*n+1)`
-/

namespace A142495.P17791943948015680750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A038608 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A076338 (2 * n + 1))

end

end A142495.P17791943948015680750

/-! ## A142495.P4248194558104584314

`∩[A002476(n+1), A140540(n+1)]`
-/

namespace A142495.P4248194558104584314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P4248194558104584314

/-! ## A142495.P17430571853295960783

`∩[A007645(n+1), A140540(n+1)]`
-/

namespace A142495.P17430571853295960783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P17430571853295960783

/-! ## A142495.P2678476298750299795

`∩[A045331(n+1), A140540(n+1)]`
-/

namespace A142495.P2678476298750299795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P2678476298750299795

/-! ## A142495.P2977885478969825310

`∩[A045375(n+1), A140540(n+1)]`
-/

namespace A142495.P2977885478969825310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P2977885478969825310

/-! ## A142495.P13239362253545262407

`∩[A123365(n+1), A140540(n+1)]`
-/

namespace A142495.P13239362253545262407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P13239362253545262407

/-! ## A142495.P9149519294761696074

`∩[A140540(n+1), A279815(n+1)]`
-/

namespace A142495.P9149519294761696074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P9149519294761696074

/-! ## A142495.P13307675137844656422

`∩[A055664(n+1), A140540(n+1)]`
-/

namespace A142495.P13307675137844656422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P13307675137844656422

/-! ## A142495.P5007516007167923304

`∩[A133290(n+1), A140540(n+1)]`
-/

namespace A142495.P5007516007167923304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P5007516007167923304

/-! ## A142495.P1587735124724979820

`∩[A140540(n+1), A191073(n+1)]`
-/

namespace A142495.P1587735124724979820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P1587735124724979820

/-! ## A142495.P3998876763304805429

`∩[A137827(n+1), A140540(n+1)]`
-/

namespace A142495.P3998876763304805429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P3998876763304805429

/-! ## A142495.P4162675845570411832

`∩[A002476(n+1), A361692(n+1)-2]`
-/

namespace A142495.P4162675845570411832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P4162675845570411832

/-! ## A142495.P8634417675292519271

`∩[A007645(n+1), A361692(n+1)-2]`
-/

namespace A142495.P8634417675292519271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P8634417675292519271

/-! ## A142495.P801248013648519585

`∩[A191073(n+1), A361692(n+1)-2]`
-/

namespace A142495.P801248013648519585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P801248013648519585

/-! ## A142495.P918804504519953537

`∩[A140540(n+1), A374135(n+1)]`
-/

namespace A142495.P918804504519953537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P918804504519953537

/-! ## A142495.P10654377485946825568

`filter[A140540(n+1), A070563(#)]`
-/

namespace A142495.P10654377485946825568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142495.P10654377485946825568

/-! ## A142495.P18085769875094173121

`∩[A107925(n+1), A140540(n+1)]`
-/

namespace A142495.P18085769875094173121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142495.P18085769875094173121

/-!
# A142496: Primes congruent to 32 mod 51.

The programs for A142496, the canonical program `A142496.P11677570639286626683` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142496 has offset 1).

The definition of A142496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142496.P11677570639286626683

`p?[51*n-19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142496

/-- `p?[51*n-19]` -/
def P11677570639286626683.Spec : Prop :=
  ∀ n, P11677570639286626683.a n = A142496 (n + 1)

theorem P11677570639286626683.correct : P11677570639286626683.Spec := by
  intro n
  simp only [A142496, Nat.add_sub_cancel]

end A142496

/-! ## A142496.P9025136054575756012

`∩[A121762(n+1), A140543(n+1)]`
-/

namespace A142496.P9025136054575756012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P9025136054575756012

namespace A142496

/-- `∩[A121762(n+1), A140543(n+1)]` -/
def P9025136054575756012.Spec : Prop :=
  ∀ n, (P9025136054575756012.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P3654840886494475534

`∩[A003627(n+1), A140543(n+1)]`
-/

namespace A142496.P3654840886494475534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P3654840886494475534

namespace A142496

/-- `∩[A003627(n+1), A140543(n+1)]` -/
def P3654840886494475534.Spec : Prop :=
  ∀ n, (P3654840886494475534.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P60845205400926432

`∩[A007528(n+1), A140543(n+1)]`
-/

namespace A142496.P60845205400926432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P60845205400926432

namespace A142496

/-- `∩[A007528(n+1), A140543(n+1)]` -/
def P60845205400926432.Spec : Prop :=
  ∀ n, (P60845205400926432.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P17085705041637335986

`∩[A045309(n+1), A140543(n+1)]`
-/

namespace A142496.P17085705041637335986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P17085705041637335986

namespace A142496

/-- `∩[A045309(n+1), A140543(n+1)]` -/
def P17085705041637335986.Spec : Prop :=
  ∀ n, (P17085705041637335986.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P10471643069810766800

`∩[A045410(n+1), A140543(n+1)]`
-/

namespace A142496.P10471643069810766800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P10471643069810766800

namespace A142496

/-- `∩[A045410(n+1), A140543(n+1)]` -/
def P10471643069810766800.Spec : Prop :=
  ∀ n, (P10471643069810766800.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P8516556487394917966

`∩[A056955(n+1), A140543(n+1)]`
-/

namespace A142496.P8516556487394917966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P8516556487394917966

namespace A142496

/-- `∩[A056955(n+1), A140543(n+1)]` -/
def P8516556487394917966.Spec : Prop :=
  ∀ n, (P8516556487394917966.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P3551483986848530216

`∩[A140543(n+1), A191073(n+1)]`
-/

namespace A142496.P3551483986848530216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P3551483986848530216

namespace A142496

/-- `∩[A140543(n+1), A191073(n+1)]` -/
def P3551483986848530216.Spec : Prop :=
  ∀ n, (P3551483986848530216.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P16405936615446022224

`∩[A003627(n+1), A361692(n+1)-1]`
-/

namespace A142496.P16405936615446022224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P16405936615446022224

namespace A142496

/-- `∩[A003627(n+1), A361692(n+1)-1]` -/
def P16405936615446022224.Spec : Prop :=
  ∀ n, (P16405936615446022224.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P6286013492941604477

`∩[A007528(n+1), A361692(n+1)-1]`
-/

namespace A142496.P6286013492941604477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P6286013492941604477

namespace A142496

/-- `∩[A007528(n+1), A361692(n+1)-1]` -/
def P6286013492941604477.Spec : Prop :=
  ∀ n, (P6286013492941604477.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P9680834128202425118

`∩[A045309(n+1), A361692(n+1)-1]`
-/

namespace A142496.P9680834128202425118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P9680834128202425118

namespace A142496

/-- `∩[A045309(n+1), A361692(n+1)-1]` -/
def P9680834128202425118.Spec : Prop :=
  ∀ n, (P9680834128202425118.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P5082269042877271072

`∩[A045410(n+1), A361692(n+1)-1]`
-/

namespace A142496.P5082269042877271072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P5082269042877271072

namespace A142496

/-- `∩[A045410(n+1), A361692(n+1)-1]` -/
def P5082269042877271072.Spec : Prop :=
  ∀ n, (P5082269042877271072.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P4854121476837534734

`∩[A056955(n+1), A361692(n+1)-1]`
-/

namespace A142496.P4854121476837534734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P4854121476837534734

namespace A142496

/-- `∩[A056955(n+1), A361692(n+1)-1]` -/
def P4854121476837534734.Spec : Prop :=
  ∀ n, (P4854121476837534734.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P5660776943393622083

`∩[A191073(n+1), A361692(n+1)-1]`
-/

namespace A142496.P5660776943393622083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P5660776943393622083

namespace A142496

/-- `∩[A191073(n+1), A361692(n+1)-1]` -/
def P5660776943393622083.Spec : Prop :=
  ∀ n, (P5660776943393622083.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P9679703980958904269

`∩[A066501(n+1), A140543(n+1)]`
-/

namespace A142496.P9679703980958904269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P9679703980958904269

namespace A142496

/-- `∩[A066501(n+1), A140543(n+1)]` -/
def P9679703980958904269.Spec : Prop :=
  ∀ n, (P9679703980958904269.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P18425900743440475738

`∩[A140543(n+1), A259548(n+1)]`
-/

namespace A142496.P18425900743440475738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P18425900743440475738

namespace A142496

/-- `∩[A140543(n+1), A259548(n+1)]` -/
def P18425900743440475738.Spec : Prop :=
  ∀ n, (P18425900743440475738.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P12617205059799856901

`∩[A082406(n+1), A140543(n+1)]`
-/

namespace A142496.P12617205059799856901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142496.P12617205059799856901

namespace A142496

/-- `∩[A082406(n+1), A140543(n+1)]` -/
def P12617205059799856901.Spec : Prop :=
  ∀ n, (P12617205059799856901.a n : ℤ) = A142496 (n + 1)

end A142496

/-! ## A142496.P1535488248808024379

`A007913(p?[A142241(n)+A124388(n)])`
-/

namespace A142496.P1535488248808024379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142496.P1535488248808024379

namespace A142496

/-- `A007913(p?[A142241(n)+A124388(n)])` -/
def P1535488248808024379.Spec : Prop :=
  ∀ n, P1535488248808024379.a n = A142496 (n + 1)

end A142496

/-! ## A142496.P12885030500598175985

`A000265(p?[A078787(n)-A053741(n)])`
-/

namespace A142496.P12885030500598175985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n - A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142496.P12885030500598175985

namespace A142496

/-- `A000265(p?[A078787(n)-A053741(n)])` -/
def P12885030500598175985.Spec : Prop :=
  ∀ n, P12885030500598175985.a n = A142496 (n + 1)

end A142496

/-! ## A142496.P17159904608168234108

`A007947(p?[A078787(n)-A053741(n)])`
-/

namespace A142496.P17159904608168234108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078787 n - A053741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142496.P17159904608168234108

namespace A142496

/-- `A007947(p?[A078787(n)-A053741(n)])` -/
def P17159904608168234108.Spec : Prop :=
  ∀ n, P17159904608168234108.a n = A142496 (n + 1)

end A142496

/-!
# A142497: Primes congruent to 35 mod 51.

The programs for A142497, the canonical program `A142497.P13727909841269271743` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142497 has offset 1).

The definition of A142497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142497.P13727909841269271743

`p?[51*n-16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142497

/-- `p?[51*n-16]` -/
def P13727909841269271743.Spec : Prop :=
  ∀ n, P13727909841269271743.a n = A142497 (n + 1)

theorem P13727909841269271743.correct : P13727909841269271743.Spec := by
  intro n
  simp only [A142497, Nat.add_sub_cancel]

end A142497

/-! ## A142497.P16201600114334265432

`∏{p}[p?[51*n+35], #]`
-/

namespace A142497.P16201600114334265432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 35

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142497.P16201600114334265432

namespace A142497

/-- `∏{p}[p?[51*n+35], #]` -/
def P16201600114334265432.Spec : Prop :=
  ∀ n, (P16201600114334265432.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P10198788607229461670

`lcm(p?[5*A017353(n)+n], A158388(n))`
-/

namespace A142497.P10198788607229461670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158388 n)

end

end A142497.P10198788607229461670

namespace A142497

/-- `lcm(p?[5*A017353(n)+n], A158388(n))` -/
def P10198788607229461670.Spec : Prop :=
  ∀ n, (P10198788607229461670.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P15501194409236018741

`or(p?[5*A017353(n)+n], A000007(n))`
-/

namespace A142497.P15501194409236018741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142497.P15501194409236018741

namespace A142497

/-- `or(p?[5*A017353(n)+n], A000007(n))` -/
def P15501194409236018741.Spec : Prop :=
  ∀ n, P15501194409236018741.a n = A142497 (n + 1)

end A142497

/-! ## A142497.P3496540665111080543

`or(p?[5*A017353(n)+n], A323152(n+1))`
-/

namespace A142497.P3496540665111080543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A323152 (n + 1))

end

end A142497.P3496540665111080543

namespace A142497

/-- `or(p?[5*A017353(n)+n], A323152(n+1))` -/
def P3496540665111080543.Spec : Prop :=
  ∀ n, P3496540665111080543.a n = A142497 (n + 1)

end A142497

/-! ## A142497.P12345304014030921492

`A001222(A002476(n+1))*p?[5*A017353(n)+n]`
-/

namespace A142497.P12345304014030921492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142497.P12345304014030921492

namespace A142497

/-- `A001222(A002476(n+1))*p?[5*A017353(n)+n]` -/
def P12345304014030921492.Spec : Prop :=
  ∀ n, P12345304014030921492.a n = A142497 (n + 1)

end A142497

/-! ## A142497.P14933450718069936096

`A001222(A040177(n+1))*p?[5*A017353(n)+n]`
-/

namespace A142497.P14933450718069936096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040177 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142497.P14933450718069936096

namespace A142497

/-- `A001222(A040177(n+1))*p?[5*A017353(n)+n]` -/
def P14933450718069936096.Spec : Prop :=
  ∀ n, P14933450718069936096.a n = A142497 (n + 1)

end A142497

/-! ## A142497.P4772481966357089224

`A001222(A067829(n+2))*p?[5*A017353(n)+n]`
-/

namespace A142497.P4772481966357089224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067829 (n + 2)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142497.P4772481966357089224

namespace A142497

/-- `A001222(A067829(n+2))*p?[5*A017353(n)+n]` -/
def P4772481966357089224.Spec : Prop :=
  ∀ n, P4772481966357089224.a n = A142497 (n + 1)

end A142497

/-! ## A142497.P3379059125205770406

`∩[A003627(n+1), A129484(n+1)]`
-/

namespace A142497.P3379059125205770406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P3379059125205770406

namespace A142497

/-- `∩[A003627(n+1), A129484(n+1)]` -/
def P3379059125205770406.Spec : Prop :=
  ∀ n, (P3379059125205770406.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P15835081762432135595

`∩[A007528(n+1), A129484(n+1)]`
-/

namespace A142497.P15835081762432135595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P15835081762432135595

namespace A142497

/-- `∩[A007528(n+1), A129484(n+1)]` -/
def P15835081762432135595.Spec : Prop :=
  ∀ n, (P15835081762432135595.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P5034178171778796804

`∩[A045309(n+1), A129484(n+1)]`
-/

namespace A142497.P5034178171778796804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P5034178171778796804

namespace A142497

/-- `∩[A045309(n+1), A129484(n+1)]` -/
def P5034178171778796804.Spec : Prop :=
  ∀ n, (P5034178171778796804.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P13093420367636760392

`∩[A045410(n+1), A129484(n+1)]`
-/

namespace A142497.P13093420367636760392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P13093420367636760392

namespace A142497

/-- `∩[A045410(n+1), A129484(n+1)]` -/
def P13093420367636760392.Spec : Prop :=
  ∀ n, (P13093420367636760392.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P6520666159588281244

`∩[A056955(n+1), A129484(n+1)]`
-/

namespace A142497.P6520666159588281244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P6520666159588281244

namespace A142497

/-- `∩[A056955(n+1), A129484(n+1)]` -/
def P6520666159588281244.Spec : Prop :=
  ∀ n, (P6520666159588281244.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P11711115722476162394

`∩[A129484(n+1), A191073(n+1)]`
-/

namespace A142497.P11711115722476162394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P11711115722476162394

namespace A142497

/-- `∩[A129484(n+1), A191073(n+1)]` -/
def P11711115722476162394.Spec : Prop :=
  ∀ n, (P11711115722476162394.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P5024897452300923668

`∩[A003627(n+1), A215137(n)]`
-/

namespace A142497.P5024897452300923668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P5024897452300923668

namespace A142497

/-- `∩[A003627(n+1), A215137(n)]` -/
def P5024897452300923668.Spec : Prop :=
  ∀ n, (P5024897452300923668.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P4103409754919243368

`∩[A007528(n+1), A215137(n)]`
-/

namespace A142497.P4103409754919243368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P4103409754919243368

namespace A142497

/-- `∩[A007528(n+1), A215137(n)]` -/
def P4103409754919243368.Spec : Prop :=
  ∀ n, (P4103409754919243368.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P3186498052647372632

`∩[A045309(n+1), A215137(n)]`
-/

namespace A142497.P3186498052647372632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P3186498052647372632

namespace A142497

/-- `∩[A045309(n+1), A215137(n)]` -/
def P3186498052647372632.Spec : Prop :=
  ∀ n, (P3186498052647372632.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P15038673909922486226

`∩[A045410(n+1), A215137(n)]`
-/

namespace A142497.P15038673909922486226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P15038673909922486226

namespace A142497

/-- `∩[A045410(n+1), A215137(n)]` -/
def P15038673909922486226.Spec : Prop :=
  ∀ n, (P15038673909922486226.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P1522884777149641303

`∩[A056955(n+1), A215137(n)]`
-/

namespace A142497.P1522884777149641303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P1522884777149641303

namespace A142497

/-- `∩[A056955(n+1), A215137(n)]` -/
def P1522884777149641303.Spec : Prop :=
  ∀ n, (P1522884777149641303.a n : ℤ) = A142497 (n + 1)

end A142497

/-! ## A142497.P2280530945210000207

`∩[A191073(n+1), A215137(n)]`
-/

namespace A142497.P2280530945210000207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142497.P2280530945210000207

namespace A142497

/-- `∩[A191073(n+1), A215137(n)]` -/
def P2280530945210000207.Spec : Prop :=
  ∀ n, (P2280530945210000207.a n : ℤ) = A142497 (n + 1)

end A142497

/-!
# A142498: Primes congruent to 37 mod 51.

The programs for A142498, the canonical program `A142498.P11279174544589885965` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142498 has offset 1).

The definition of A142498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142498.P11279174544589885965

`p?[3*17*n+37]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142498

/-- `p?[3*17*n+37]` -/
def P11279174544589885965.Spec : Prop :=
  ∀ n, (P11279174544589885965.a n : ℤ) = A142498 (n + 1)

theorem P11279174544589885965.correct : P11279174544589885965.Spec := by
  intro n
  simp only [A142498, Nat.add_sub_cancel]

end A142498

/-! ## A142498.P11167395988488421538

`∑{p}[p?[A249674(n+1)+A139607(n)], #]`
-/

namespace A142498.P11167395988488421538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 1) + A139607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142498.P11167395988488421538

namespace A142498

/-- `∑{p}[p?[A249674(n+1)+A139607(n)], #]` -/
def P11167395988488421538.Spec : Prop :=
  ∀ n, (P11167395988488421538.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P17810376744112865038

`∩[A002476(n+1), A092074(n+1)]`
-/

namespace A142498.P17810376744112865038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P17810376744112865038

namespace A142498

/-- `∩[A002476(n+1), A092074(n+1)]` -/
def P17810376744112865038.Spec : Prop :=
  ∀ n, (P17810376744112865038.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P6735105186237994637

`∩[A045375(n+1), A092074(n+1)]`
-/

namespace A142498.P6735105186237994637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P6735105186237994637

namespace A142498

/-- `∩[A045375(n+1), A092074(n+1)]` -/
def P6735105186237994637.Spec : Prop :=
  ∀ n, (P6735105186237994637.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P4591133541282929953

`∩[A092074(n+1), A123365(n+1)]`
-/

namespace A142498.P4591133541282929953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P4591133541282929953

namespace A142498

/-- `∩[A092074(n+1), A123365(n+1)]` -/
def P4591133541282929953.Spec : Prop :=
  ∀ n, (P4591133541282929953.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P10018205262291562843

`∩[A092074(n+1), A191073(n+1)]`
-/

namespace A142498.P10018205262291562843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P10018205262291562843

namespace A142498

/-- `∩[A092074(n+1), A191073(n+1)]` -/
def P10018205262291562843.Spec : Prop :=
  ∀ n, (P10018205262291562843.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P11877159058104046848

`∩[A092074(n+1), A133290(n+1)]`
-/

namespace A142498.P11877159058104046848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P11877159058104046848

namespace A142498

/-- `∩[A092074(n+1), A133290(n+1)]` -/
def P11877159058104046848.Spec : Prop :=
  ∀ n, (P11877159058104046848.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P2594521757688391707

`∩[A092074(n+1), A137827(n+1)]`
-/

namespace A142498.P2594521757688391707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P2594521757688391707

namespace A142498

/-- `∩[A092074(n+1), A137827(n+1)]` -/
def P2594521757688391707.Spec : Prop :=
  ∀ n, (P2594521757688391707.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P10202035264931473571

`∩[A002476(n+1), A215137(n)+2]`
-/

namespace A142498.P10202035264931473571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P10202035264931473571

namespace A142498

/-- `∩[A002476(n+1), A215137(n)+2]` -/
def P10202035264931473571.Spec : Prop :=
  ∀ n, (P10202035264931473571.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P16649938273832211823

`∩[A045375(n+1), A215137(n)+2]`
-/

namespace A142498.P16649938273832211823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P16649938273832211823

namespace A142498

/-- `∩[A045375(n+1), A215137(n)+2]` -/
def P16649938273832211823.Spec : Prop :=
  ∀ n, (P16649938273832211823.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P8374651516255280276

`∩[A191073(n+1), A215137(n)+2]`
-/

namespace A142498.P8374651516255280276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P8374651516255280276

namespace A142498

/-- `∩[A191073(n+1), A215137(n)+2]` -/
def P8374651516255280276.Spec : Prop :=
  ∀ n, (P8374651516255280276.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P7490593710606583257

`∩[A215137(n+1)+2, A007645(n+2)]`
-/

namespace A142498.P7490593710606583257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P7490593710606583257

namespace A142498

/-- `∩[A215137(n+1)+2, A007645(n+2)]` -/
def P7490593710606583257.Spec : Prop :=
  ∀ n, (P7490593710606583257.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P14184214242212140300

`∩[A215137(n+1)+2, A045331(n+2)]`
-/

namespace A142498.P14184214242212140300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P14184214242212140300

namespace A142498

/-- `∩[A215137(n+1)+2, A045331(n+2)]` -/
def P14184214242212140300.Spec : Prop :=
  ∀ n, (P14184214242212140300.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P7076003342689521653

`∩[A092074(n+1), A374135(n+1)]`
-/

namespace A142498.P7076003342689521653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P7076003342689521653

namespace A142498

/-- `∩[A092074(n+1), A374135(n+1)]` -/
def P7076003342689521653.Spec : Prop :=
  ∀ n, (P7076003342689521653.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P12562495824587743066

`filter[A092074(n+1), A070563(#)]`
-/

namespace A142498.P12562495824587743066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142498.P12562495824587743066

namespace A142498

/-- `filter[A092074(n+1), A070563(#)]` -/
def P12562495824587743066.Spec : Prop :=
  ∀ n, P12562495824587743066.a n = A142498 (n + 1)

end A142498

/-! ## A142498.P3184799566207582915

`∩[A092074(n+1), A107925(n+1)]`
-/

namespace A142498.P3184799566207582915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P3184799566207582915

namespace A142498

/-- `∩[A092074(n+1), A107925(n+1)]` -/
def P3184799566207582915.Spec : Prop :=
  ∀ n, (P3184799566207582915.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P3593842466176747365

`∩[A004611(n+1), A092074(n+1)]`
-/

namespace A142498.P3593842466176747365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P3593842466176747365

namespace A142498

/-- `∩[A004611(n+1), A092074(n+1)]` -/
def P3593842466176747365.Spec : Prop :=
  ∀ n, (P3593842466176747365.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P10613434527850120251

`∩[A092074(n+1), A129904(n+1)]`
-/

namespace A142498.P10613434527850120251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P10613434527850120251

namespace A142498

/-- `∩[A092074(n+1), A129904(n+1)]` -/
def P10613434527850120251.Spec : Prop :=
  ∀ n, (P10613434527850120251.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P10124726479847797500

`∩[A092074(n+1), A348932(n+1)]`
-/

namespace A142498.P10124726479847797500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P10124726479847797500

namespace A142498

/-- `∩[A092074(n+1), A348932(n+1)]` -/
def P10124726479847797500.Spec : Prop :=
  ∀ n, (P10124726479847797500.a n : ℤ) = A142498 (n + 1)

end A142498

/-! ## A142498.P4592768336588938039

`∩[A092074(n+1), A260682(n+1)]`
-/

namespace A142498.P4592768336588938039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142498.P4592768336588938039

namespace A142498

/-- `∩[A092074(n+1), A260682(n+1)]` -/
def P4592768336588938039.Spec : Prop :=
  ∀ n, (P4592768336588938039.a n : ℤ) = A142498 (n + 1)

end A142498

/-!
# A142499: Primes congruent to 38 mod 51.

The programs for A142499, there is no canonical definition to state claims against.
-/

/-! ## A142499.P523181333793961933

`A094657(eq[2, A094657(n+1)%3]+1)`
-/

namespace A142499.P523181333793961933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094657 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142499.P523181333793961933

/-! ## A142499.P8086372721998538128

`p?[51*n-13]`
-/

namespace A142499.P8086372721998538128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142499.P8086372721998538128

/-! ## A142499.P15454476771130949401

`∩[A003627(n+1), A094657(n+1)]`
-/

namespace A142499.P15454476771130949401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P15454476771130949401

/-! ## A142499.P16773985975596931815

`∩[A007528(n+1), A094657(n+1)]`
-/

namespace A142499.P16773985975596931815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P16773985975596931815

/-! ## A142499.P11936657366296615309

`∩[A045309(n+1), A094657(n+1)]`
-/

namespace A142499.P11936657366296615309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P11936657366296615309

/-! ## A142499.P1135219803383565424

`∩[A045410(n+1), A094657(n+1)]`
-/

namespace A142499.P1135219803383565424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P1135219803383565424

/-! ## A142499.P15389126097204490707

`∩[A056955(n+1), A094657(n+1)]`
-/

namespace A142499.P15389126097204490707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P15389126097204490707

/-! ## A142499.P5480992235966513431

`∩[A094657(n+1), A191073(n+1)]`
-/

namespace A142499.P5480992235966513431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P5480992235966513431

/-! ## A142499.P2488109509976038971

`∩[A066501(n+1), A094657(n+1)]`
-/

namespace A142499.P2488109509976038971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P2488109509976038971

/-! ## A142499.P17256566678891507514

`∩[A094657(n+1), A259548(n+1)]`
-/

namespace A142499.P17256566678891507514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P17256566678891507514

/-! ## A142499.P8648665132590890360

`record[A006530(A242181(n+2)+n)]`
-/

namespace A142499.P8648665132590890360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242181 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142499.P8648665132590890360

/-! ## A142499.P15737355512370191178

`record[A020639(A242181(n+2)+n)]`
-/

namespace A142499.P15737355512370191178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242181 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142499.P15737355512370191178

/-! ## A142499.P15143654340321356826

`∩[A082406(n+1), A094657(n+1)]`
-/

namespace A142499.P15143654340321356826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P15143654340321356826

/-! ## A142499.P16901720783300236419

`record[A006530(A158128(n+1)-A304205(n+1))]`
-/

namespace A142499.P16901720783300236419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158128 (n + 1) - A304205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142499.P16901720783300236419

/-! ## A142499.P6765693462173417925

`record[A020639(A158128(n+1)-A304205(n+1))]`
-/

namespace A142499.P6765693462173417925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158128 (n + 1) - A304205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142499.P6765693462173417925

/-! ## A142499.P15571428649534024591

`A000265(p?[A158128(n+1)-A304205(n+1)])`
-/

namespace A142499.P15571428649534024591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142499.P15571428649534024591

/-! ## A142499.P2284142119101176250

`∩[A094657(n+1), A016969(n)]`
-/

namespace A142499.P2284142119101176250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P2284142119101176250

/-! ## A142499.P3476843340157060842

`∩[A094657(n+1), A348934(n+1)]`
-/

namespace A142499.P3476843340157060842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P3476843340157060842

/-! ## A142499.P15495999575766125106

`∩[A094657(n+1), A016789(n)]`
-/

namespace A142499.P15495999575766125106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142499.P15495999575766125106

/-! ## A142499.P17550704920193001582

`record[A006530(A017233(2*A017233(n+1)-(n+1)))]`
-/

namespace A142499.P17550704920193001582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017233 (2 * A017233 (n + 1) - (n + 1 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142499.P17550704920193001582

