import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C011
import Seq.B000.C017
import Seq.B001.C003
import Seq.B002.C006
import Seq.B003.C002
import Seq.B005.C002
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A388530: Coefficient of x^n in the expansion of ( (1+x)^4 + x^2 )^n.

The programs for A388530, there is no canonical definition to state claims against.
-/

/-! ## A388530.P13469446324910438031

`(n+1)*A379381((n+1)^(n+1))`
-/

namespace A388530.P13469446324910438031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379381 ((n + 1) ^ (n + 1))

end

end A388530.P13469446324910438031

/-!
# A388531: Coefficient of x^n in the expansion of ( (1+x)^5 + x^2 )^n.

The programs for A388531, there is no canonical definition to state claims against.
-/

/-! ## A388531.P9374708772473995137

`A369023(n)+A133620(A072034(n))`
-/

namespace A388531.P9374708772473995137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369023 n + A133620 (A072034 n).toNat

end

end A388531.P9374708772473995137

/-!
# A388533: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+2*k,k).

The programs for A388533, there is no canonical definition to state claims against.
-/

/-! ## A388533.P5156146038510954976

`Δ[A090617(Δ[A094198(n+1)])]`
-/

namespace A388533.P5156146038510954976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094198 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090617 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A388533.P5156146038510954976

/-!
# A388539: Sum of decimal digits of Fibonacci(n)^2.

The programs for A388539, the canonical program `A388539.P17116264068590608702` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388539 has offset 0).

The definition of A388539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388539.P17116264068590608702

`A007953(A007598(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A388539

/-- `A007953(A007598(n))` -/
def P17116264068590608702.Spec : Prop :=
  ∀ n, P17116264068590608702.a n = A388539 n

theorem P17116264068590608702.correct : P17116264068590608702.Spec := by
  intro n
  simp only [A388539]

end A388539

/-! ## A388539.P17085724409366822242

`∑{digits}[A000045(n)², #]`
-/

namespace A388539.P17085724409366822242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A388539.P17085724409366822242

namespace A388539

/-- `∑{digits}[A000045(n)², #]` -/
def P17085724409366822242.Spec : Prop :=
  ∀ n, (P17085724409366822242.a n : ℤ) = A388539 n

end A388539

/-! ## A388539.P12566635563608862334

`∑{digits}[A007598(n), A010785(#)]`
-/

namespace A388539.P12566635563608862334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010785 x).sum

end

end A388539.P12566635563608862334

namespace A388539

/-- `∑{digits}[A007598(n), A010785(#)]` -/
def P12566635563608862334.Spec : Prop :=
  ∀ n, P12566635563608862334.a n = A388539 n

end A388539

/-! ## A388539.P12870024756248349094

`∑{digits}[A007598(n), A010888(#)]`
-/

namespace A388539.P12870024756248349094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010888 x).sum

end

end A388539.P12870024756248349094

namespace A388539

/-- `∑{digits}[A007598(n), A010888(#)]` -/
def P12870024756248349094.Spec : Prop :=
  ∀ n, P12870024756248349094.a n = A388539 n

end A388539

/-! ## A388539.P4604155222024768438

`∑{digits}[A000045(n)^A020639(2*(n+2)), #]`
-/

namespace A388539.P4604155222024768438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A388539.P4604155222024768438

namespace A388539

/-- `∑{digits}[A000045(n)^A020639(2*(n+2)), #]` -/
def P4604155222024768438.Spec : Prop :=
  ∀ n, (P4604155222024768438.a n : ℤ) = A388539 n

end A388539

/-!
# A388547: Triangle read by rows: T(n,k) is the number of length n binary words which are not all zero in which 1's occur in blocks of at least k.

The programs for A388547, there is no canonical definition to state claims against.
-/

/-! ## A388547.P8360548949172308970

`A130330(n)-A079978(A041051(n))`
-/

namespace A388547.P8360548949172308970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n - A079978 (A041051 n).toNat

end

end A388547.P8360548949172308970

/-!
# A388548: Triangle read by rows: T(n,k) is the number of length n binary palindromic words which are not all zero in which 1's occur in blocks of at least k.

The programs for A388548, there is no canonical definition to state claims against.
-/

/-! ## A388548.P11585232931370910000

`A097966(A168216(n+1))`
-/

namespace A388548.P11585232931370910000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097966 (A168216 (n + 1)).toNat

end

end A388548.P11585232931370910000

/-! ## A388548.P8336180186289520556

`A104484(A281350(n+1))`
-/

namespace A388548.P8336180186289520556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (A281350 (n + 1)).toNat

end

end A388548.P8336180186289520556

/-! ## A388548.P5161090339709027786

`A138960(A350783(n+1))`
-/

namespace A388548.P5161090339709027786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (A350783 (n + 1)).toNat

end

end A388548.P5161090339709027786

/-! ## A388548.P14970470443108025635

`A296132(A388717(n+1))`
-/

namespace A388548.P14970470443108025635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296132 (A388717 (n + 1)).toNat

end

end A388548.P14970470443108025635

/-! ## A388548.P17379303086546614575

`A341041(A350772(n+1))`
-/

namespace A388548.P17379303086546614575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341041 (A350772 (n + 1)).toNat

end

end A388548.P17379303086546614575

/-!
# A388549: Perfect powers k^m, m > 2, of nonsquarefree numbers k that are not squareful.

The programs for A388549, there is no canonical definition to state claims against.
-/

/-! ## A388549.P639408722275183691

`∪[A390381(n+1), A392564(n+1)]`
-/

namespace A388549.P639408722275183691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P639408722275183691

/-! ## A388549.P9897371830193905750

`∩[A076467(n+1), A392098(n+1)]`
-/

namespace A388549.P9897371830193905750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P9897371830193905750

/-! ## A388549.P6344841838021346066

`∩[A387255(n+1), A392098(n+1)]`
-/

namespace A388549.P6344841838021346066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P6344841838021346066

/-! ## A388549.P16718670495600829747

`∩[A387257(n+1), A392098(n+1)]`
-/

namespace A388549.P16718670495600829747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P16718670495600829747

/-! ## A388549.P4044839126997682194

`∩[A389551(n+1), A392098(n+1)]`
-/

namespace A388549.P4044839126997682194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P4044839126997682194

/-! ## A388549.P5734990715938213759

`∩[A372695(n+1), A392098(n+1)]`
-/

namespace A388549.P5734990715938213759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P5734990715938213759

/-! ## A388549.P8432200723684762809

`∩[A036966(n+1), A392098(n+1)]`
-/

namespace A388549.P8432200723684762809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P8432200723684762809

/-! ## A388549.P14528511843247450417

`∩[A036966(n+1), A386762(n+1)]`
-/

namespace A388549.P14528511843247450417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P14528511843247450417

/-! ## A388549.P2179115060211340841

`∩[A076467(n+1), A386762(n+1)]`
-/

namespace A388549.P2179115060211340841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P2179115060211340841

/-! ## A388549.P10692974714467447087

`∩[A372695(n+1), A386762(n+1)]`
-/

namespace A388549.P10692974714467447087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P10692974714467447087

/-! ## A388549.P4747821709907952939

`∩[A386762(n+1), A387255(n+1)]`
-/

namespace A388549.P4747821709907952939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P4747821709907952939

/-! ## A388549.P13084620440805423301

`∩[A386762(n+1), A387257(n+1)]`
-/

namespace A388549.P13084620440805423301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P13084620440805423301

/-! ## A388549.P1122892218657383067

`∩[A386762(n+1), A389551(n+1)]`
-/

namespace A388549.P1122892218657383067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P1122892218657383067

/-! ## A388549.P7266490815289162854

`∩[A387257(n+1), A390823(n+1)]`
-/

namespace A388549.P7266490815289162854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P7266490815289162854

/-! ## A388549.P13569419493262473535

`∩[A389551(n+1), A390823(n+1)]`
-/

namespace A388549.P13569419493262473535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388549.P13569419493262473535

