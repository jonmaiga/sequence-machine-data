import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C014
import Seq.B000.C021
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B002.C008
import Seq.B005.C002
import Seq.B011.C000
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A388530: Coefficient of x^n in the expansion of ( (1+x)^4 + x^2 )^n.

The programs for A388530, the canonical program `A388530.P12933794410217080014` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388530 has offset 0).

The definition of A388530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388530.P12933794410217080014

`∑{#}[floor(n/2), C(n, #)*C(4*n-4*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388530

/-- `∑{#}[floor(n/2), C(n, #)*C(4*n-4*#, n-2*#)]` -/
def P12933794410217080014.Spec : Prop :=
  ∀ n, (P12933794410217080014.a n : ℤ) = A388530 n

theorem P12933794410217080014.correct : P12933794410217080014.Spec := by
  intro n
  simp only [A388530]

end A388530

/-!
# A388531: Coefficient of x^n in the expansion of ( (1+x)^5 + x^2 )^n.

The programs for A388531, the canonical program `A388531.P8864470441809735150` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388531 has offset 0).

The definition of A388531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388531.P8864470441809735150

`∑{#}[floor(n/2), C(n, #)*C(5*n-5*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388531

/-- `∑{#}[floor(n/2), C(n, #)*C(5*n-5*#, n-2*#)]` -/
def P8864470441809735150.Spec : Prop :=
  ∀ n, (P8864470441809735150.a n : ℤ) = A388531 n

theorem P8864470441809735150.correct : P8864470441809735150.Spec := by
  intro n
  simp only [A388531]

end A388531

/-!
# A388532: Expansion of (1/x) * Series_Reversion( x / ((1+x)^5 + x^2) ).

The programs for A388532, the canonical program `A388532.P15481920780188038477` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388532 has offset 0).

The definition of A388532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388532.P15481920780188038477

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(5*n-5*#+5, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388532

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(5*n-5*#+5, n-2*#)]` -/
def P15481920780188038477.Spec : Prop :=
  ∀ n, P15481920780188038477.a n = (A388532 n : ℚ)

end A388532

/-!
# A388533: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+2*k,k).

The programs for A388533, the canonical program `A388533.P1954287718574483506` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388533 has offset 0).

The definition of A388533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n+2*#, #)]` (program `A388533.P1954287718574483506`, by `A388533.P1954287718574483506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388533.P3092345809575404088

`∑{#}[n, C(n, #)*A370286(#)]`
-/

namespace A388533.P3092345809575404088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A370286 k

end

end A388533.P3092345809575404088

namespace A388533

/-- `∑{#}[n, C(n, #)*A370286(#)]` -/
def P3092345809575404088.Spec : Prop :=
  ∀ n, P3092345809575404088.a n = A388533 n

end A388533

/-! ## A388533.P1954287718574483506

`∑{#}[n, C(n, #)*C(n+2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388533

/-- `∑{#}[n, C(n, #)*C(n+2*#, #)]` -/
def P1954287718574483506.Spec : Prop :=
  ∀ n, (P1954287718574483506.a n : ℤ) = A388533 n

theorem P1954287718574483506.correct : P1954287718574483506.Spec := by
  intro n
  simp only [A388533]

end A388533

/-!
# A388534: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+3*k,k).

The programs for A388534, the canonical program `A388534.P16837120721537700589` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388534 has offset 0).

The definition of A388534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n+3*#, #)]` (program `A388534.P16837120721537700589`, by `A388534.P16837120721537700589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388534.P4219400307093185560

`∑{#}[n, C(n, #)*A388530(#)]`
-/

namespace A388534.P4219400307093185560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A388530 k

end

end A388534.P4219400307093185560

namespace A388534

/-- `∑{#}[n, C(n, #)*A388530(#)]` -/
def P4219400307093185560.Spec : Prop :=
  ∀ n, P4219400307093185560.a n = A388534 n

end A388534

/-! ## A388534.P16837120721537700589

`∑{#}[n, C(n, #)*C(n+3*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388534

/-- `∑{#}[n, C(n, #)*C(n+3*#, #)]` -/
def P16837120721537700589.Spec : Prop :=
  ∀ n, (P16837120721537700589.a n : ℤ) = A388534 n

theorem P16837120721537700589.correct : P16837120721537700589.Spec := by
  intro n
  simp only [A388534]

end A388534

/-!
# A388535: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+4*k,k).

The programs for A388535, the canonical program `A388535.P13915212600155579187` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388535 has offset 0).

The definition of A388535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n+4*#, #)]` (program `A388535.P13915212600155579187`, by `A388535.P13915212600155579187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388535.P12553032799823673761

`∑{#}[n, C(n, #)*A388531(#)]`
-/

namespace A388535.P12553032799823673761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A388531 k

end

end A388535.P12553032799823673761

namespace A388535

/-- `∑{#}[n, C(n, #)*A388531(#)]` -/
def P12553032799823673761.Spec : Prop :=
  ∀ n, P12553032799823673761.a n = A388535 n

end A388535

/-! ## A388535.P13915212600155579187

`∑{#}[n, C(n, #)*C(n+4*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388535

/-- `∑{#}[n, C(n, #)*C(n+4*#, #)]` -/
def P13915212600155579187.Spec : Prop :=
  ∀ n, (P13915212600155579187.a n : ℤ) = A388535 n

theorem P13915212600155579187.correct : P13915212600155579187.Spec := by
  intro n
  simp only [A388535]

end A388535

/-!
# A388536: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+5*k,k).

The programs for A388536, the canonical program `A388536.P1962655736874982154` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388536 has offset 0).

The definition of A388536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n+5*#, #)]` (program `A388536.P1962655736874982154`, by `A388536.P1962655736874982154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388536.P10957927061311521048

`∑{#}[n, C(n, #)*A388537(#)]`
-/

namespace A388536.P10957927061311521048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A388537 k

end

end A388536.P10957927061311521048

namespace A388536

/-- `∑{#}[n, C(n, #)*A388537(#)]` -/
def P10957927061311521048.Spec : Prop :=
  ∀ n, P10957927061311521048.a n = A388536 n

end A388536

/-! ## A388536.P1962655736874982154

`∑{#}[n, C(n, #)*C(n+5*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388536

/-- `∑{#}[n, C(n, #)*C(n+5*#, #)]` -/
def P1962655736874982154.Spec : Prop :=
  ∀ n, (P1962655736874982154.a n : ℤ) = A388536 n

theorem P1962655736874982154.correct : P1962655736874982154.Spec := by
  intro n
  simp only [A388536]

end A388536

/-!
# A388537: Coefficient of x^n in the expansion of ( (1+x)^6 + x^2 )^n.

The programs for A388537, the canonical program `A388537.P16906086100863994821` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388537 has offset 0).

The definition of A388537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388537.P16906086100863994821

`∑{#}[floor(n/2), C(n, #)*C(6*n-6*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388537

/-- `∑{#}[floor(n/2), C(n, #)*C(6*n-6*#, n-2*#)]` -/
def P16906086100863994821.Spec : Prop :=
  ∀ n, (P16906086100863994821.a n : ℤ) = A388537 n

theorem P16906086100863994821.correct : P16906086100863994821.Spec := by
  intro n
  simp only [A388537]

end A388537

/-!
# A388538: Expansion of (1/x) * Series_Reversion( x / ((1+x)^6 + x^2) ).

The programs for A388538, the canonical program `A388538.P12740701057450729102` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388538 has offset 0).

The definition of A388538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388538.P12740701057450729102

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(6*n-6*#+6, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388538

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(6*n-6*#+6, n-2*#)]` -/
def P12740701057450729102.Spec : Prop :=
  ∀ n, P12740701057450729102.a n = (A388538 n : ℚ)

end A388538

/-!
# A388539: Sum of decimal digits of Fibonacci(n)^2.

The programs for A388539, the canonical program `A388539.P17116264068590608702` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388539 has offset 0).

The definition of A388539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388539.P17116264068590608702

`A007953(A007598(n))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A388539

/-- `A007953(A007598(n))` -/
def P17116264068590608702.Spec : Prop :=
  ∀ n, P17116264068590608702.a n = A388539 n

theorem P17116264068590608702.correct : P17116264068590608702.Spec := by
  intro n
  simp only [A388539]

end A388539

/-! ## A388539.P18057091371219045020

`A007953(A000045(n)²)`
-/

namespace A388539.P18057091371219045020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000045 n ^ 2).toNat

end

end A388539.P18057091371219045020

namespace A388539

/-- `A007953(A000045(n)²)` -/
def P18057091371219045020.Spec : Prop :=
  ∀ n, P18057091371219045020.a n = A388539 n

end A388539

/-! ## A388539.P16286870519422796087

`∑{digits}[A007598(n), #]`
-/

namespace A388539.P16286870519422796087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A388539.P16286870519422796087

namespace A388539

/-- `∑{digits}[A007598(n), #]` -/
def P16286870519422796087.Spec : Prop :=
  ∀ n, (P16286870519422796087.a n : ℤ) = A388539 n

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

