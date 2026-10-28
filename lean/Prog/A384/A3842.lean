import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C017
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
# A384200: Expansion of e.g.f. -log(1 - 3*x)/(3 * (1 - x)).

The programs for A384200, the canonical program `A384200.P16319949504910010664` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384200 has offset 0).

The definition of A384200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384200.P1212660929046625541

`n*a(n-1)+3^(n-1)*(n-1)!` with `a(0)=0`
-/

namespace A384200.P1212660929046625541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial ((n : ℤ) - 1).toNat : ℚ)

end

end A384200.P1212660929046625541

namespace A384200

/-- `n*a(n-1)+3^(n-1)*(n-1)!` -/
def P1212660929046625541.Spec : Prop :=
  ∀ n, P1212660929046625541.a n = (A384200 n : ℚ)

end A384200

/-! ## A384200.P16319949504910010664

`(4*n-3)*a(n-1)-3*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384200

/-- `(4*n-3)*a(n-1)-3*(n-1)²*a(n-2)` -/
def P16319949504910010664.Spec : Prop :=
  ∀ n, P16319949504910010664.a n = A384200 n

theorem P16319949504910010664.correct : P16319949504910010664.Spec := by
  intro n
  simp only [A384200]

end A384200

/-! ## A384200.P12330716639534065797

`n!*∑{#}[n-1, 3^(n-1-#)/(n-#)]`
-/

namespace A384200.P12330716639534065797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (3 : ℚ) ^ ((n : ℤ) - 1 - (k : ℤ) : ℤ) / ((n : ℤ) - (k : ℤ) : ℚ))

end

end A384200.P12330716639534065797

namespace A384200

/-- `n!*∑{#}[n-1, 3^(n-1-#)/(n-#)]` -/
def P12330716639534065797.Spec : Prop :=
  ∀ n, P12330716639534065797.a n = (A384200 n : ℚ)

end A384200

/-!
# A384201: Expansion of e.g.f. -log(1 - 2*x)/(2 * (1 + x)).

The programs for A384201, the canonical program `A384201.P4797087417940245729` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384201 has offset 0).

The definition of A384201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384201.P4797087417940245729

`(n-2)*a(n-1)+2*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384201

/-- `(n-2)*a(n-1)+2*(n-1)²*a(n-2)` -/
def P4797087417940245729.Spec : Prop :=
  ∀ n, P4797087417940245729.a n = A384201 n

theorem P4797087417940245729.correct : P4797087417940245729.Spec := by
  intro n
  simp only [A384201]

end A384201

/-! ## A384201.P4315841760424093480

`A159695(n)%A364550(A000079(n))`
-/

namespace A384201.P4315841760424093480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159695 n) (A364550 (A000079 n).toNat)

end

end A384201.P4315841760424093480

namespace A384201

/-- `A159695(n)%A364550(A000079(n))` -/
def P4315841760424093480.Spec : Prop :=
  ∀ n, P4315841760424093480.a n = A384201 n

end A384201

/-!
# A384202: Expansion of e.g.f. -log(1 - 3*x)/(3 * (1 + x)).

The programs for A384202, the canonical program `A384202.P16716347843254804951` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384202 has offset 0).

The definition of A384202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384202.P16716347843254804951

`(2*n-3)*a(n-1)+3*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384202

/-- `(2*n-3)*a(n-1)+3*(n-1)²*a(n-2)` -/
def P16716347843254804951.Spec : Prop :=
  ∀ n, P16716347843254804951.a n = A384202 n

theorem P16716347843254804951.correct : P16716347843254804951.Spec := by
  intro n
  simp only [A384202]

end A384202

/-!
# A384203: Population of elementary triangular automaton rule 250 at generation n, starting from a lone 1 cell at generation 0.

The programs for A384203, there is no canonical definition to state claims against.
-/

/-! ## A384203.P14997457412426641012

`∩[A050687(n+1), A161644(n)]`
-/

namespace A384203.P14997457412426641012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384203.P14997457412426641012

/-! ## A384203.P7712581419068690769

`∩[A093513(n+1), A161644(n)]`
-/

namespace A384203.P7712581419068690769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384203.P7712581419068690769

/-! ## A384203.P13258698939428870700

`∩[A100417(n+1), A161644(n)]`
-/

namespace A384203.P13258698939428870700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384203.P13258698939428870700

/-! ## A384203.P17232677917163713907

`∩[A114149(n+1), A161644(n)]`
-/

namespace A384203.P17232677917163713907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384203.P17232677917163713907

/-! ## A384203.P2948406107547140266

`∩[A176845(n+1), A161644(n)]`
-/

namespace A384203.P2948406107547140266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384203.P2948406107547140266

/-!
# A384204: a(n) is the number of palindromic permutations of the prime factors of n (counted with multiplicity).

The programs for A384204, there is no canonical definition to state claims against.
-/

/-! ## A384204.P14344973329680822459

`and(A008480(n+1), A040741(A256692(n+1)))`
-/

namespace A384204.P14344973329680822459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008480 (n + 1)) (A040741 (A256692 (n + 1)).toNat)

end

end A384204.P14344973329680822459

/-! ## A384204.P6008272406607419327

`A335489(A335489(n+1)+A008480(n+1))`
-/

namespace A384204.P6008272406607419327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A335489 (n + 1) + A008480 (n + 1)).toNat

end

end A384204.P6008272406607419327

/-! ## A384204.P10688684820797517675

`gcd(A097974(A316978(n+1)), A119842(n+1))`
-/

namespace A384204.P10688684820797517675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097974 (A316978 (n + 1)).toNat) (A119842 (n + 1))

end

end A384204.P10688684820797517675

/-! ## A384204.P5022724951616363025

`A124765(A119842(n+1)*A296774(n+4))`
-/

namespace A384204.P5022724951616363025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A119842 (n + 1) * A296774 (n + 4)).toNat

end

end A384204.P5022724951616363025

/-! ## A384204.P14691830649381705664

`A358957(A285572(n+1))%3`
-/

namespace A384204.P14691830649381705664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358957 (A285572 (n + 1)).toNat) 3

end

end A384204.P14691830649381705664

/-!
# A384210: Number of numbers <= n of the form p * m^2, where p is a prime and m is an integer >= 1.

The programs for A384210, the canonical program `A384210.P3902417993717518449` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384210 has offset 1).

The definition of A384210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384210.P3902417993717518449

`∑{#}[floor(sqrt(n+1))-1, A000720(floor((n+1)/(#+1)²))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A384210

/-- `∑{#}[floor(sqrt(n+1))-1, A000720(floor((n+1)/(#+1)²))]` -/
def P3902417993717518449.Spec : Prop :=
  ∀ n, P3902417993717518449.a n = A384210 (n + 1)

theorem P3902417993717518449.correct : P3902417993717518449.Spec := by
  intro n
  simp only [A384210, Nat.add_sub_cancel]

end A384210

/-! ## A384210.P2985145954331281123

`∑{#}[A000720(n+1)-1, floor(sqrt((n+1)/A000040(#+1)))]`
-/

namespace A384210.P2985145954331281123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊Real.sqrt ((n + 1 : ℚ) / (A000040 (k + 1) : ℚ) : ℝ)⌋

end

end A384210.P2985145954331281123

namespace A384210

/-- `∑{#}[A000720(n+1)-1, floor(sqrt((n+1)/A000040(#+1)))]` -/
def P2985145954331281123.Spec : Prop :=
  ∀ n, P2985145954331281123.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P7475918543024359279

`∑{#}[n, A392285(#+1)*floor((n+1)/(#+1))]`
-/

namespace A384210.P7475918543024359279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A392285 (k + 1) * ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋

end

end A384210.P7475918543024359279

namespace A384210

/-- `∑{#}[n, A392285(#+1)*floor((n+1)/(#+1))]` -/
def P7475918543024359279.Spec : Prop :=
  ∀ n, P7475918543024359279.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P9000503329095324649

`∑[A358769(n+1)]`
-/

namespace A384210.P9000503329095324649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P9000503329095324649

namespace A384210

/-- `∑[A358769(n+1)]` -/
def P9000503329095324649.Spec : Prop :=
  ∀ n, P9000503329095324649.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P4499072815773410018

`∑[A062799(n+1)%2]`
-/

namespace A384210.P4499072815773410018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062799 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P4499072815773410018

namespace A384210

/-- `∑[A062799(n+1)%2]` -/
def P4499072815773410018.Spec : Prop :=
  ∀ n, P4499072815773410018.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P7312629423516349788

`∑[char[A229125(n+1)-1]]`
-/

namespace A384210.P7312629423516349788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P7312629423516349788

namespace A384210

/-- `∑[char[A229125(n+1)-1]]` -/
def P7312629423516349788.Spec : Prop :=
  ∀ n, (P7312629423516349788.a n : ℤ) = A384210 (n + 1)

end A384210

/-! ## A384210.P6489842019286239755

`∑[A302777(Δ[A069891(n)])]`
-/

namespace A384210.P6489842019286239755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P6489842019286239755

namespace A384210

/-- `∑[A302777(Δ[A069891(n)])]` -/
def P6489842019286239755.Spec : Prop :=
  ∀ n, P6489842019286239755.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P18002773148236651736

`∑[A010051(A007913(n+1))]`
-/

namespace A384210.P18002773148236651736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P18002773148236651736

namespace A384210

/-- `∑[A010051(A007913(n+1))]` -/
def P18002773148236651736.Spec : Prop :=
  ∀ n, P18002773148236651736.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P10732319772868865284

`∑[A185012(A055076(n+1))]`
-/

namespace A384210.P10732319772868865284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A055076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P10732319772868865284

namespace A384210

/-- `∑[A185012(A055076(n+1))]` -/
def P10732319772868865284.Spec : Prop :=
  ∀ n, P10732319772868865284.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P4484742936793314245

`∑[A010051(A335423(n+1))]`
-/

namespace A384210.P4484742936793314245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A335423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P4484742936793314245

namespace A384210

/-- `∑[A010051(A335423(n+1))]` -/
def P4484742936793314245.Spec : Prop :=
  ∀ n, P4484742936793314245.a n = A384210 (n + 1)

end A384210

/-! ## A384210.P17886000228639094562

`∑[A358770(A003961(n+1))]`
-/

namespace A384210.P17886000228639094562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P17886000228639094562

namespace A384210

/-- `∑[A358770(A003961(n+1))]` -/
def P17886000228639094562.Spec : Prop :=
  ∀ n, P17886000228639094562.a n = A384210 (n + 1)

end A384210

/-!
# A384211: a(n) is the number of distinct ways of representing n in any integer base >= 2 using only prime digits.

The programs for A384211, there is no canonical definition to state claims against.
-/

/-! ## A384211.P2476606317124495314

`A362333(A362333(3*(n+1))+A354600(n))`
-/

namespace A384211.P2476606317124495314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362333 (A362333 (3 * (n + 1)) + A354600 n).toNat

end

end A384211.P2476606317124495314

/-! ## A384211.P6427230514911762798

`A072612(A032233(n))`
-/

namespace A384211.P6427230514911762798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072612 (A032233 n).toNat

end

end A384211.P6427230514911762798

/-! ## A384211.P2673866201204495453

`A327051(A040049(n+1))`
-/

namespace A384211.P2673866201204495453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A040049 (n + 1)).toNat

end

end A384211.P2673866201204495453

/-! ## A384211.P5622205277273452729

`A327051(A040085(n+1))`
-/

namespace A384211.P5622205277273452729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A040085 (n + 1)).toNat

end

end A384211.P5622205277273452729

/-! ## A384211.P6751839673111931150

`A327051(A049587(n+1))`
-/

namespace A384211.P6751839673111931150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A049587 (n + 1)).toNat

end

end A384211.P6751839673111931150

/-!
# A384212: a(n) is the number of bases >= 2 in which the alternating sum of digits of n is equal to 0.

The programs for A384212, there is no canonical definition to state claims against.
-/

/-! ## A384212.P10326797089768857199

`A239707(n+1)-A000035(n)`
-/

namespace A384212.P10326797089768857199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239707 (n + 1) - A000035 n

end

end A384212.P10326797089768857199

/-! ## A384212.P4387455640875120919

`A239707(n+1)-log2(A000034(n))`
-/

namespace A384212.P4387455640875120919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239707 (n + 1) : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A384212.P4387455640875120919

/-! ## A384212.P3052002640198074907

`A239707(n+1)-log2(A040001(n+1))`
-/

namespace A384212.P3052002640198074907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239707 (n + 1) : ℝ) - Real.logb 2 (A040001 (n + 1) : ℝ)

end

end A384212.P3052002640198074907

/-! ## A384212.P17598807872266156629

`A239707(n+1)-A369465(A020639(n+2))`
-/

namespace A384212.P17598807872266156629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239707 (n + 1) - A369465 (A020639 (n + 2)).toNat

end

end A384212.P17598807872266156629

/-! ## A384212.P10553992378048227969

`A239707(n+1)-A053445(A075019(3*n+5))`
-/

namespace A384212.P10553992378048227969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239707 (n + 1) - A053445 (A075019 (3 * n + 5)).toNat

end

end A384212.P10553992378048227969

/-!
# A384218: Numbers k such that the concatenations of k and 123456789 in both orders are prime.

The programs for A384218, there is no canonical definition to state claims against.
-/

/-! ## A384218.P1662220862618453914

`∩[A232725(n+1), A232727(n+1)]`
-/

namespace A384218.P1662220862618453914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384218.P1662220862618453914

/-!
# A384219: Areas of triangles whose three vertices are consecutive ordered pairs of consecutive odd Fibonacci numbers such that an ordered pair's y-value is the next ordered pair's x-value.

The programs for A384219, the canonical program `A384219.P8391712576364821811` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384219 has offset 1).

The definition of A384219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384219.P8391712576364821811

`ogf((2-2x)/(1-4x-4x^3-x^4))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384219

/-- `ogf((2-2x)/(1-4x-4x^3-x^4))` -/
def P8391712576364821811.Spec : Prop :=
  ∀ n, P8391712576364821811.a n = A384219 (n + 1)

theorem P8391712576364821811.correct : P8391712576364821811.Spec := by
  intro n
  simp only [A384219, Nat.add_sub_cancel]

end A384219

/-! ## A384219.P9210733678085374232

`A070550(3*n+1)`
-/

namespace A384219.P9210733678085374232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (3 * n + 1)

end

end A384219.P9210733678085374232

namespace A384219

/-- `A070550(3*n+1)` -/
def P9210733678085374232.Spec : Prop :=
  ∀ n, P9210733678085374232.a n = A384219 (n + 1)

end A384219

/-! ## A384219.P15186853409728426432

`∑[A295680(3*(n+1))]`
-/

namespace A384219.P15186853409728426432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384219.P15186853409728426432

namespace A384219

/-- `∑[A295680(3*(n+1))]` -/
def P15186853409728426432.Spec : Prop :=
  ∀ n, P15186853409728426432.a n = A384219 (n + 1)

end A384219

/-! ## A384219.P11417402337917887635

`∑[2*A006498(3*n)]`
-/

namespace A384219.P11417402337917887635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006498 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384219.P11417402337917887635

namespace A384219

/-- `∑[2*A006498(3*n)]` -/
def P11417402337917887635.Spec : Prop :=
  ∀ n, P11417402337917887635.a n = A384219 (n + 1)

end A384219

/-! ## A384219.P10596277647337355093

`A264018(n+1)+A057077(n)`
-/

namespace A384219.P10596277647337355093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264018 (n + 1) + A057077 n

end

end A384219.P10596277647337355093

namespace A384219

/-- `A264018(n+1)+A057077(n)` -/
def P10596277647337355093.Spec : Prop :=
  ∀ n, P10596277647337355093.a n = A384219 (n + 1)

end A384219

/-! ## A384219.P14469080416364667234

`A014445(n+1)-A117647(n+1)*A117647(n)`
-/

namespace A384219.P14469080416364667234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) - A117647 (n + 1) * A117647 n

end

end A384219.P14469080416364667234

namespace A384219

/-- `A014445(n+1)-A117647(n+1)*A117647(n)` -/
def P14469080416364667234.Spec : Prop :=
  ∀ n, P14469080416364667234.a n = A384219 (n + 1)

end A384219

/-!
# A384222: Irregular triangle read by rows: T(n,k) is the length of the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A384222, there is no canonical definition to state claims against.
-/

/-! ## A384222.P4382293349482200915

`A386604(n+1)+A384225(n+1)`
-/

namespace A384222.P4382293349482200915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386604 (n + 1) + A384225 (n + 1)

end

end A384222.P4382293349482200915

/-! ## A384222.P2182646982089559280

`A387030(n+1)+A386992(n+1)`
-/

namespace A384222.P2182646982089559280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387030 (n + 1) + A386992 (n + 1)

end

end A384222.P2182646982089559280

/-! ## A384222.P7734820592758380379

`A389762(n+1)+A389761(n+1)`
-/

namespace A384222.P7734820592758380379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389762 (n + 1) + A389761 (n + 1)

end

end A384222.P7734820592758380379

/-! ## A384222.P6667683524905581006

`A181317(A109886(n))`
-/

namespace A384222.P6667683524905581006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (A109886 n).toNat

end

end A384222.P6667683524905581006

/-! ## A384222.P2765038963496677195

`gcd(A003356(n+1), A050436(A060477(n+1)))`
-/

namespace A384222.P2765038963496677195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003356 (n + 1)) (A050436 (A060477 (n + 1)).toNat)

end

end A384222.P2765038963496677195

/-!
# A384224: Irregular triangle read by rows: T(n,k) is the number of divisors in the k-th sublist of the divisors of n formed by the k-th odd divisor and the next even divisors that are less than the next odd divisor of n, with n >= 1, k >= 1.

The programs for A384224, there is no canonical definition to state claims against.
-/

/-! ## A384224.P3371026476981261627

`Δ[lt[A279634(A027750(n+1)), 3]]`
-/

namespace A384224.P3371026476981261627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 (A027750 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A384224.P3371026476981261627

/-!
# A384225: Irregular triangle read by rows: T(n,k) is the number of odd numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A384225, there is no canonical definition to state claims against.
-/

/-! ## A384225.P7162888880921933835

`A384222(n+1)-A386604(n+1)`
-/

namespace A384225.P7162888880921933835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A386604 (n + 1)

end

end A384225.P7162888880921933835

/-! ## A384225.P11933641771030478756

`A280940(n+1)`
-/

namespace A384225.P11933641771030478756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280940 (n + 1)

end

end A384225.P11933641771030478756

/-! ## A384225.P5129953021505215727

`gcd(A002865(n+4), A281013(A034253(n+1)))`
-/

namespace A384225.P5129953021505215727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002865 (n + 4)) (A281013 (A034253 (n + 1)).toNat)

end

end A384225.P5129953021505215727

/-! ## A384225.P13853355116732365196

`A374997(gcd(A208452(n), A267338(n+1)))`
-/

namespace A384225.P13853355116732365196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374997 (Int.gcd (A208452 n) (A267338 (n + 1)))

end

end A384225.P13853355116732365196

/-! ## A384225.P1781377419662307981

`gcd(A122934(n+1), A293943(n))`
-/

namespace A384225.P1781377419662307981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122934 (n + 1)) (A293943 n)

end

end A384225.P1781377419662307981

/-!
# A384226: Irregular triangle read by rows: T(n,k) is the sum of odd divisors in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A384226, there is no canonical definition to state claims against.
-/

/-! ## A384226.P9812013656715679574

`A384149(n+1)-A390443(n+1)`
-/

namespace A384226.P9812013656715679574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A390443 (n + 1)

end

end A384226.P9812013656715679574

/-! ## A384226.P6047523862815116864

`xor(A326152(A048004(3*(n+1))), A379288(n+1))`
-/

namespace A384226.P6047523862815116864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326152 (A048004 (3 * (n + 1))).toNat) (A379288 (n + 1))

end

end A384226.P6047523862815116864

/-!
# A384227: Smaller members p of sexy prime pairs (p,p+6) such that both p and p+6 are emirps.

The programs for A384227, there is no canonical definition to state claims against.
-/

/-! ## A384227.P4247177191269853544

`∩[A006567(n+2)-6, A006567(n+2)]`
-/

namespace A384227.P4247177191269853544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 2) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384227.P4247177191269853544

/-!
# A384229: Numerators of the expected number of steps to hit the opposite corner by simple random walk on the n-cube.

The programs for A384229, there is no canonical definition to state claims against.
-/

/-! ## A384229.P13651954803300837249

`A108866(n+1)*(n+1)/(2*gcd(n+1, A229726(floor((n+1)/2))))`
-/

namespace A384229.P13651954803300837249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108866 (n + 1) * (n + 1 : ℤ) : ℚ) / (2 * Int.gcd (n + 1 : ℤ) (A229726 ⌊(n + 1 : ℚ) / 2⌋.toNat) : ℚ)

end

end A384229.P13651954803300837249

/-!
# A384230: Number of subparts in the central part of the symmetric representation of sigma(n).

The programs for A384230, there is no canonical definition to state claims against.
-/

/-! ## A384230.P14431376586087632854

`A347950(n+1)*A400195(n+1)`
-/

namespace A384230.P14431376586087632854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1) * A400195 (n + 1)

end

end A384230.P14431376586087632854

/-! ## A384230.P2530487014048602942

`lcm(A067742(n+1), A400195(n+1))`
-/

namespace A384230.P2530487014048602942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067742 (n + 1)) (A400195 (n + 1))

end

end A384230.P2530487014048602942

/-! ## A384230.P16519057510731541537

`and(A368945(n+1), A400195(n+1))`
-/

namespace A384230.P16519057510731541537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368945 (n + 1)) (A400195 (n + 1))

end

end A384230.P16519057510731541537

/-! ## A384230.P16748549784337233261

`A003989(A016116(n))*A067742(n+1)`
-/

namespace A384230.P16748549784337233261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A016116 n).toNat * A067742 (n + 1)

end

end A384230.P16748549784337233261

/-! ## A384230.P2143159371014366711

`A349797(A054513(n+5))+A067742(n+1)`
-/

namespace A384230.P2143159371014366711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A054513 (n + 5)).toNat + A067742 (n + 1)

end

end A384230.P2143159371014366711

/-!
# A384231: Index of the largest odd noncomposite divisor in the list of divisors of n.

The programs for A384231, the canonical program `A384231.P10287591200021798730` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384231 has offset 1).

The definition of A384231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384231.P10287591200021798730

`gcd(A062878(n), A087133(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A384231

/-- `gcd(A062878(n), A087133(n+1))` -/
def P10287591200021798730.Spec : Prop :=
  ∀ n, (P10287591200021798730.a n : ℤ) = A384231 (n + 1)

theorem P10287591200021798730.correct : P10287591200021798730.Spec := by
  intro n
  simp only [A384231, Nat.add_sub_cancel]

end A384231

/-! ## A384231.P3582646131004506102

`A087133(n+1)-A007814(A014963(n+1))`
-/

namespace A384231.P3582646131004506102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1) - A007814 (A014963 (n + 1)).toNat

end

end A384231.P3582646131004506102

namespace A384231

/-- `A087133(n+1)-A007814(A014963(n+1))` -/
def P3582646131004506102.Spec : Prop :=
  ∀ n, P3582646131004506102.a n = A384231 (n + 1)

end A384231

/-! ## A384231.P5214658157382424835

`A284388(A084571(n+1))+A008480(n+1)`
-/

namespace A384231.P5214658157382424835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (A084571 (n + 1)).toNat + A008480 (n + 1)

end

end A384231.P5214658157382424835

namespace A384231

/-- `A284388(A084571(n+1))+A008480(n+1)` -/
def P5214658157382424835.Spec : Prop :=
  ∀ n, P5214658157382424835.a n = A384231 (n + 1)

end A384231

/-! ## A384231.P11035248681725099408

`gcd(A083399(n+1), A259729(3*n+1))`
-/

namespace A384231.P11035248681725099408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083399 (n + 1)) (A259729 (3 * n + 1))

end

end A384231.P11035248681725099408

namespace A384231

/-- `gcd(A083399(n+1), A259729(3*n+1))` -/
def P11035248681725099408.Spec : Prop :=
  ∀ n, (P11035248681725099408.a n : ℤ) = A384231 (n + 1)

end A384231

/-! ## A384231.P6452304512255700673

`A356172(Δ[2*n*lcm(n+2, (n+1)²)]-(n+1))+A309307(n+1)`
-/

namespace A384231.P6452304512255700673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.lcm (n + 2) ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)).toNat + A309307 (n + 1)

end

end A384231.P6452304512255700673

namespace A384231

/-- `A356172(Δ[2*n*lcm(n+2, (n+1)²)]-(n+1))+A309307(n+1)` -/
def P6452304512255700673.Spec : Prop :=
  ∀ n, P6452304512255700673.a n = A384231 (n + 1)

end A384231

/-!
# A384232: Smallest number whose largest odd noncomposite divisor is its n-th divisor.

The programs for A384232, there is no canonical definition to state claims against.
-/

/-! ## A384232.P7904628088855109527

`A087134(n+1)+char[1]`
-/

namespace A384232.P7904628088855109527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087134 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A384232.P7904628088855109527

/-! ## A384232.P12220847812230167985

`A178333(n)+A087134(n+1)`
-/

namespace A384232.P12220847812230167985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A087134 (n + 1)

end

end A384232.P12220847812230167985

/-! ## A384232.P2471497532615908371

`A326168(n)+A087134(n+1)`
-/

namespace A384232.P2471497532615908371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326168 n + A087134 (n + 1)

end

end A384232.P2471497532615908371

/-! ## A384232.P2299035953039073718

`xor(A063524(n), A087134(n+1))`
-/

namespace A384232.P2299035953039073718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A087134 (n + 1))

end

end A384232.P2299035953039073718

/-! ## A384232.P5349291229735495878

`A084928(n+1)+A087134(n+1)`
-/

namespace A384232.P5349291229735495878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (n + 1) + A087134 (n + 1)

end

end A384232.P5349291229735495878

/-!
# A384234: Irregular triangle read by rows: T(n,k) is the index of the k-th odd noncomposite divisor in the list of divisors of n, with n >=1, k >= 1.

The programs for A384234, there is no canonical definition to state claims against.
-/

/-! ## A384234.P12724926893316255836

`A078734(A284069(n+1))`
-/

namespace A384234.P12724926893316255836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A284069 (n + 1)).toNat

end

end A384234.P12724926893316255836

/-! ## A384234.P16310630323085005660

`A358390(gcd(A000009(n), A134438(n)))`
-/

namespace A384234.P16310630323085005660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358390 (Int.gcd (A000009 n) (A134438 n))

end

end A384234.P16310630323085005660

/-! ## A384234.P15903525494417895274

`A001511(lt[A374515(n), A375125(3*n)])`
-/

namespace A384234.P15903525494417895274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384234.P15903525494417895274

/-! ## A384234.P10424244127605143750

`A001511(A138591(n+1)*A335279(n+2))`
-/

namespace A384234.P10424244127605143750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A138591 (n + 1) * A335279 (n + 2)).toNat

end

end A384234.P10424244127605143750

/-! ## A384234.P6963625828507944340

`A001511(A029710(n+3)*A138591(n+1))`
-/

namespace A384234.P6963625828507944340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A029710 (n + 3) * A138591 (n + 1)).toNat

end

end A384234.P6963625828507944340

/-!
# A384237: The number of divisors d of n such that d^d == d (mod n).

The programs for A384237, there is no canonical definition to state claims against.
-/

/-! ## A384237.P1788061711774026482

`A384834(n+1)+A384854(n+1)-A385392(n+1)`
-/

namespace A384237.P1788061711774026482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384834 (n + 1) + (A384854 (n + 1) - A385392 (n + 1))

end

end A384237.P1788061711774026482

/-! ## A384237.P6370723411950567747

`A091887(A186368(n))+A001221(n+1)`
-/

namespace A384237.P6370723411950567747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (A186368 n).toNat + A001221 (n + 1)

end

end A384237.P6370723411950567747

/-! ## A384237.P15554540781961147426

`A083230(A173090(n+1))+A001221(n+1)`
-/

namespace A384237.P15554540781961147426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083230 (A173090 (n + 1)).toNat + A001221 (n + 1)

end

end A384237.P15554540781961147426

/-! ## A384237.P3422384176398653986

`A300820(A096891(2*n+1))+A001221(n+1)`
-/

namespace A384237.P3422384176398653986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (A096891 (2 * n + 1)).toNat + A001221 (n + 1)

end

end A384237.P3422384176398653986

/-!
# A384242: a(n) = Product_{k=0..n-1} (4*n-5*k).

The programs for A384242, there is no canonical definition to state claims against.
-/

/-! ## A384242.P4867757835703882846

`A033634(A113077(n))`
-/

namespace A384242.P4867757835703882846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A113077 n).toNat

end

end A384242.P4867757835703882846

/-!
# A384243: a(n) = 2^(n-6)*n*(n^3 - 6*n^2 + 19*n - 14).

The programs for A384243, the canonical program `A384243.P11691361283380830276` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384243 has offset 0).

The definition of A384243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384243.P11691361283380830276

`2^(n-6)*n*(n-1)*(n*(n-5)+14)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384243

/-- `2^(n-6)*n*(n-1)*(n*(n-5)+14)` -/
def P11691361283380830276.Spec : Prop :=
  ∀ n, P11691361283380830276.a n = (A384243 n : ℚ)

end A384243

/-! ## A384243.P16440509388836196396

`2^(n-6)*n*(n^3-6*n²+19*n-14)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384243.P16440509388836196396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ) * (n : ℚ) * ((n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (19 * n : ℤ) - 14 : ℚ)

end

end A384243.P16440509388836196396

namespace A384243

/-- `2^(n-6)*n*(n^3-6*n²+19*n-14)` -/
def P16440509388836196396.Spec : Prop :=
  ∀ n, P16440509388836196396.a n = (A384243 n : ℚ)

end A384243

/-! ## A384243.P12090780920167604984

`ogf((x^2-4x^3+10x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))`
-/

namespace A384243.P12090780920167604984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -4, 10] [1, -10, 40, -80, 80, -32] n

end

end A384243.P12090780920167604984

namespace A384243

/-- `ogf((x^2-4x^3+10x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P12090780920167604984.Spec : Prop :=
  ∀ n, P12090780920167604984.a n = A384243 n

end A384243

/-! ## A384243.P2903768852661271217

`A383868(n)-A081908(n)`
-/

namespace A384243.P2903768852661271217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383868 n - A081908 n

end

end A384243.P2903768852661271217

namespace A384243

/-- `A383868(n)-A081908(n)` -/
def P2903768852661271217.Spec : Prop :=
  ∀ n, P2903768852661271217.a n = A384243 n

end A384243

/-!
# A384244: Triangle in which the n-th row gives the numbers k from 1 to n such that the greatest common unitary divisor of k and n is 1.

The programs for A384244, there is no canonical definition to state claims against.
-/

/-! ## A384244.P18218188407235177

`A064379(gcd(n, A059802(n+1))+n)`
-/

namespace A384244.P18218188407235177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064379 (Int.gcd (n : ℤ) (A059802 (n + 1)) + n)

end

end A384244.P18218188407235177

/-!
# A384245: Triangle read by rows: T(n, k) for 1 <= k <= n is the largest divisor of k that is an infinitary divisor of n.

The programs for A384245, there is no canonical definition to state claims against.
-/

/-! ## A384245.P8105551050166379548

`gcd(A050873(n+1), A351961(A069208(n+1)))`
-/

namespace A384245.P8105551050166379548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050873 (n + 1)) (A351961 (A069208 (n + 1)).toNat)

end

end A384245.P8105551050166379548

/-! ## A384245.P3904478519421144621

`gcd(A050873(n+1), A186747(n))`
-/

namespace A384245.P3904478519421144621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050873 (n + 1)) (A186747 n)

end

end A384245.P3904478519421144621

/-! ## A384245.P15298703570068667247

`A050873(n+1)^A056594(A287285(n+1))`
-/

namespace A384245.P15298703570068667247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) : ℚ) ^ (A056594 (A287285 (n + 1)).toNat : ℤ)

end

end A384245.P15298703570068667247

/-! ## A384245.P13536755883564378649

`A050873(n+1)-A088517(A175085(3*n+2))`
-/

namespace A384245.P13536755883564378649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) - A088517 (A175085 (3 * n + 2)).toNat

end

end A384245.P13536755883564378649

/-!
# A384246: Triangle in which the n-th row gives the numbers from 1 to n whose largest divisor that is an infinitary divisor of n is 1.

The programs for A384246, there is no canonical definition to state claims against.
-/

/-! ## A384246.P14143332773336997974

`or(A025435(A348612(3*(n+1))), A384046(n+1))`
-/

namespace A384246.P14143332773336997974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025435 (A348612 (3 * (n + 1))).toNat) (A384046 (n + 1))

end

end A384246.P14143332773336997974

/-!
# A384247: The number of integers from 1 to n whose largest divisor that is an infinitary divisor of n is 1.

The programs for A384247, there is no canonical definition to state claims against.
-/

/-! ## A384247.P17260534743139352158

`A047994(n+1)/A333576(n+1)*A384248(n+1)`
-/

namespace A384247.P17260534743139352158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A333576 (n + 1) : ℚ) * (A384248 (n + 1) : ℚ)

end

end A384247.P17260534743139352158

/-! ## A384247.P9476458244833636822

`Δ[eq[1, A384246(n+1)]]`
-/

namespace A384247.P9476458244833636822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384246 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A384247.P9476458244833636822

/-! ## A384247.P13193181478497039349

`A091732(n+1)+A063524(A075206(n+1))`
-/

namespace A384247.P13193181478497039349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1) + A063524 (A075206 (n + 1)).toNat

end

end A384247.P13193181478497039349

/-! ## A384247.P13179556225833653246

`A353482(A362560(2*(n+1)))+A091732(n+1)`
-/

namespace A384247.P13179556225833653246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (A362560 (2 * (n + 1))).toNat + A091732 (n + 1)

end

end A384247.P13179556225833653246

/-! ## A384247.P12963867283181554167

`A091732(n+1)+A010054(A138563(n+1))`
-/

namespace A384247.P12963867283181554167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1) + A010054 (A138563 (n + 1)).toNat

end

end A384247.P12963867283181554167

/-!
# A384248: The sum of the integers from 1 to n whose largest divisor that is an infinitary divisor of n is 1.

The programs for A384248, there is no canonical definition to state claims against.
-/

/-! ## A384248.P9611698456568651962

`A026741((n+1)*A384247(n+1))`
-/

namespace A384248.P9611698456568651962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 1 : ℤ) * A384247 (n + 1)).toNat

end

end A384248.P9611698456568651962

/-!
# A384249: The number of integers k from 1 to n such that the greatest divisor of k that is an infinitary divisor of n is squarefree.

The programs for A384249, there is no canonical definition to state claims against.
-/

/-! ## A384249.P13230466501295282678

`A384048(n+1)+A240467(A032308(n+3))`
-/

namespace A384249.P13230466501295282678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (n + 1) + A240467 (A032308 (n + 3)).toNat

end

end A384249.P13230466501295282678

/-! ## A384249.P16065209769332993794

`A384048(n+1)-A045698(A241638(2*n))`
-/

namespace A384249.P16065209769332993794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (n + 1) - A045698 (A241638 (2 * n)).toNat

end

end A384249.P16065209769332993794

/-! ## A384249.P14728380216350590633

`xor(A063659(n+1), A335446(A325548(n)))`
-/

namespace A384249.P14728380216350590633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063659 (n + 1)) (A335446 (A325548 n).toNat)

end

end A384249.P14728380216350590633

/-! ## A384249.P8896797440330363853

`A384048(n+1)+A106346(A000041(2*n+1))`
-/

namespace A384249.P8896797440330363853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (n + 1) + A106346 (A000041 (2 * n + 1)).toNat

end

end A384249.P8896797440330363853

/-!
# A384250: The number of integers k from 1 to n such that the greatest divisor of k that is an infinitary divisor of n is a powerful number.

The programs for A384250, there is no canonical definition to state claims against.
-/

/-! ## A384250.P4278935057775586483

`A384052(n+1)+A121373(A018827(n+5))`
-/

namespace A384250.P4278935057775586483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1) + A121373 (A018827 (n + 5)).toNat

end

end A384250.P4278935057775586483

/-! ## A384250.P10903290728563626053

`A384052(n+1)-A070109(A258700(n+4))`
-/

namespace A384250.P10903290728563626053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1) - A070109 (A258700 (n + 4)).toNat

end

end A384250.P10903290728563626053

/-! ## A384250.P16076898369844948588

`A384052(n+1)-A010815(A090167(n+2))`
-/

namespace A384250.P16076898369844948588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1) - A010815 (A090167 (n + 2)).toNat

end

end A384250.P16076898369844948588

/-! ## A384250.P12512166148989055772

`A384052(n+1)+A121373(A096506(n+3))`
-/

namespace A384250.P12512166148989055772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1) + A121373 (A096506 (n + 3)).toNat

end

end A384250.P12512166148989055772

/-! ## A384250.P10500779289510609512

`A384052(n+1)-A010054(A353834(3*(n+1)))`
-/

namespace A384250.P10500779289510609512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (n + 1) - A010054 (A353834 (3 * (n + 1))).toNat

end

end A384250.P10500779289510609512

/-!
# A384251: The number of integers k from 1 to n such that the greatest divisor of k that is an infinitary divisor of n is odd.

The programs for A384251, there is no canonical definition to state claims against.
-/

/-! ## A384251.P10022440903306172665

`A173636(A075594(3*n+5))+floor(n/(n%2+1))`
-/

namespace A384251.P10022440903306172665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A075594 (3 * n + 5)).toNat + ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A384251.P10022440903306172665

/-! ## A384251.P8451297232128416670

`A000265(n+1)*A001511(A108412(n))`
-/

namespace A384251.P8451297232128416670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001511 (A108412 n).toNat

end

end A384251.P8451297232128416670

/-! ## A384251.P9102608879417006253

`A335115(n+1)-A010054(A335116(3*n+2))`
-/

namespace A384251.P9102608879417006253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335115 (n + 1) - A010054 (A335116 (3 * n + 2)).toNat

end

end A384251.P9102608879417006253

/-!
# A384253: a(n) = 1 + ((1+(-1)^(n-1))*(n-1)!)/(n+1).

The programs for A384253, the canonical program `A384253.P4958860455693630655` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384253 has offset 1).

The definition of A384253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384253.P4958860455693630655

`1+(1+(-1)^n)*n!/(n+2)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384253

/-- `1+(1+(-1)^n)*n!/(n+2)` -/
def P4958860455693630655.Spec : Prop :=
  ∀ n, P4958860455693630655.a n = (A384253 (n + 1) : ℚ)

end A384253

/-! ## A384253.P6350160962027899778

`A164652(∑[n])+1`
-/

namespace A384253.P6350160962027899778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A384253.P6350160962027899778

namespace A384253

/-- `A164652(∑[n])+1` -/
def P6350160962027899778.Spec : Prop :=
  ∀ n, P6350160962027899778.a n = A384253 (n + 1)

end A384253

/-! ## A384253.P8169520240454474797

`A000035(n+1)*A090586(n+1)+1`
-/

namespace A384253.P8169520240454474797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A090586 (n + 1) + 1

end

end A384253.P8169520240454474797

namespace A384253

/-- `A000035(n+1)*A090586(n+1)+1` -/
def P8169520240454474797.Spec : Prop :=
  ∀ n, P8169520240454474797.a n = A384253 (n + 1)

end A384253

/-! ## A384253.P17849221280010250111

`A005359(n)/(n/(xor(n, n+1)+1)+1)+1`
-/

namespace A384253.P17849221280010250111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005359 n : ℚ) / ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + 1) + 1

end

end A384253.P17849221280010250111

namespace A384253

/-- `A005359(n)/(n/(xor(n, n+1)+1)+1)+1` -/
def P17849221280010250111.Spec : Prop :=
  ∀ n, P17849221280010250111.a n = (A384253 (n + 1) : ℚ)

end A384253

/-! ## A384253.P18288829154338419396

`A208529(n+2)+1-A256881(n+1)`
-/

namespace A384253.P18288829154338419396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208529 (n + 2) + 1 - A256881 (n + 1)

end

end A384253.P18288829154338419396

namespace A384253

/-- `A208529(n+2)+1-A256881(n+1)` -/
def P18288829154338419396.Spec : Prop :=
  ∀ n, P18288829154338419396.a n = A384253 (n + 1)

end A384253

/-!
# A384254: Number of connected components of n polyhedra in the rectified cubic honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A384254, there is no canonical definition to state claims against.
-/

/-! ## A384254.P12639826178545756180

`A233776(A074035(n+1))`
-/

namespace A384254.P12639826178545756180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233776 (A074035 (n + 1)).toNat

end

end A384254.P12639826178545756180

/-!
# A384255: Integers k such that there exists an integer 0<m<k such that sigma(m)^2 + sigma(k)^2 = 2*(m^2+k^2).

The programs for A384255, there is no canonical definition to state claims against.
-/

/-! ## A384255.P535389169941494272

`A130101(A130100(n+1))-A053644(n+1)`
-/

namespace A384255.P535389169941494272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130101 (A130100 (n + 1)).toNat - A053644 (n + 1)

end

end A384255.P535389169941494272

/-!
# A384256: a(n) = Product_{k=0..n-1} (n+3*k+1).

The programs for A384256, there is no canonical definition to state claims against.
-/

/-! ## A384256.P9336126571660980175

`(n+1)*A394492(n)`
-/

namespace A384256.P9336126571660980175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A394492 n

end

end A384256.P9336126571660980175

/-! ## A384256.P12428230733969649678

`A371077(2*(n+1)²)`
-/

namespace A384256.P12428230733969649678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (2 * (n + 1) ^ 2)

end

end A384256.P12428230733969649678

/-!
# A384257: a(n) = Product_{k=0..n-1} (n+3*k+2).

The programs for A384257, there is no canonical definition to state claims against.
-/

/-! ## A384257.P10170514922036085558

`A371077(A001844(n+1))`
-/

namespace A384257.P10170514922036085558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (A001844 (n + 1)).toNat

end

end A384257.P10170514922036085558

/-! ## A384257.P6343080054993409398

`A371077(A099776(n+1))`
-/

namespace A384257.P6343080054993409398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (A099776 (n + 1)).toNat

end

end A384257.P6343080054993409398

/-! ## A384257.P5086740050747369036

`A371077(A014106(n+1)-n)`
-/

namespace A384257.P5086740050747369036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (A014106 (n + 1) - (n : ℤ)).toNat

end

end A384257.P5086740050747369036

/-! ## A384257.P14029480000620992343

`A371077(record[A263728(3*n+2)+1])`
-/

namespace A384257.P14029480000620992343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A384257.P14029480000620992343

/-!
# A384258: a(n) = Product_{k=0..n-1} (n+4*k+1).

The programs for A384258, there is no canonical definition to state claims against.
-/

/-! ## A384258.P5246080478858191058

`(n+1)*A394494(n)`
-/

namespace A384258.P5246080478858191058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A394494 n

end

end A384258.P5246080478858191058

/-! ## A384258.P15377074305838309569

`A370915(2*(n+1)²)`
-/

namespace A384258.P15377074305838309569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370915 (2 * (n + 1) ^ 2)

end

end A384258.P15377074305838309569

/-!
# A384259: a(n) = Product_{k=0..n-1} (n+4*k+3).

The programs for A384259, the canonical program `A384259.P12381055702116771946` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384259 has offset 0).

The definition of A384259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384259.P12381055702116771946

`5*(5*n-9)*(5*n-13)*(5*n-1)*(5*n-17)*a(n-4)` with `a(0)=1, a(1)=4, a(2)=45, a(3)=840`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384259

/-- `5*(5*n-9)*(5*n-13)*(5*n-1)*(5*n-17)*a(n-4)` -/
def P12381055702116771946.Spec : Prop :=
  ∀ n, P12381055702116771946.a n = A384259 n

theorem P12381055702116771946.correct : P12381055702116771946.Spec := by
  intro n
  simp only [A384259]

end A384259

/-! ## A384259.P12893938701847604443

`A370915(A056220(n+2)+2)`
-/

namespace A384259.P12893938701847604443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370915 (A056220 (n + 2) + 2).toNat

end

end A384259.P12893938701847604443

namespace A384259

/-- `A370915(A056220(n+2)+2)` -/
def P12893938701847604443.Spec : Prop :=
  ∀ n, P12893938701847604443.a n = A384259 n

end A384259

/-!
# A384261: a(n) = Product_{k=0..n-1} (2*n+k-1).

The programs for A384261, there is no canonical definition to state claims against.
-/

/-! ## A384261.P4215338784304338732

`A344391(A033991(n))`
-/

namespace A384261.P4215338784304338732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344391 (A033991 n).toNat

end

end A384261.P4215338784304338732

/-! ## A384261.P7542660086942721652

`A242653(A195241(n+1))`
-/

namespace A384261.P7542660086942721652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242653 (A195241 (n + 1)).toNat

end

end A384261.P7542660086942721652

/-! ## A384261.P15646245400102241308

`A124320(2*n²)`
-/

namespace A384261.P15646245400102241308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (2 * n ^ 2)

end

end A384261.P15646245400102241308

/-! ## A384261.P644191215038793240

`A008279(∑[2*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A384261.P644191215038793240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384261.P644191215038793240

/-! ## A384261.P6415409950008951343

`A008279(A117625(n))`
-/

namespace A384261.P6415409950008951343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A117625 n).toNat

end

end A384261.P6415409950008951343

/-!
# A384262: a(n) = Product_{k=0..n-1} (3*n+k-2).

The programs for A384262, there is no canonical definition to state claims against.
-/

/-! ## A384262.P8604691918160613467

`A094587(A051870(n))`
-/

namespace A384262.P8604691918160613467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A051870 n).toNat

end

end A384262.P8604691918160613467

/-! ## A384262.P5153682350181420357

`A265609(A383464(n))`
-/

namespace A384262.P5153682350181420357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A383464 n).toNat

end

end A384262.P5153682350181420357

/-! ## A384262.P1661444257342974432

`A124320(A051682(n)+1)`
-/

namespace A384262.P1661444257342974432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A051682 n + 1).toNat

end

end A384262.P1661444257342974432

/-! ## A384262.P10376872391762660999

`A159623(A360416(n))`
-/

namespace A384262.P10376872391762660999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (A360416 n).toNat

end

end A384262.P10376872391762660999

/-!
# A384263: a(n) = Product_{k=0..n-1} (3*n+k-1).

The programs for A384263, there is no canonical definition to state claims against.
-/

/-! ## A384263.P13471516377822185604

`A124320(A022266(n))`
-/

namespace A384263.P13471516377822185604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A022266 n).toNat

end

end A384263.P13471516377822185604

/-! ## A384263.P16553056591878912915

`A008279(A383464(n))`
-/

namespace A384263.P16553056591878912915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A383464 n).toNat

end

end A384263.P16553056591878912915

/-! ## A384263.P2207679993013948802

`A265609(A139274(n))`
-/

namespace A384263.P2207679993013948802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A139274 n).toNat

end

end A384263.P2207679993013948802

/-! ## A384263.P15185451293285996738

`A008279(A080856(n)-n)`
-/

namespace A384263.P15185451293285996738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A080856 n - (n : ℤ)).toNat

end

end A384263.P15185451293285996738

/-! ## A384263.P9819474887288882315

`A008279(A085250(n)+1-n)`
-/

namespace A384263.P9819474887288882315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A085250 n + 1 - (n : ℤ)).toNat

end

end A384263.P9819474887288882315

/-!
# A384264: G.f. A(x) satisfies a(n) = [x^n] ( A(x)^(n-1) - 2*A(x)^n + A(x)^(n+1) ) for n > 1, with a(0) = a(1) = 1.

The programs for A384264, there is no canonical definition to state claims against.
-/

/-! ## A384264.P10673909110102493925

`A367224(ceil(n!/2))`
-/

namespace A384264.P10673909110102493925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 ⌈(Nat.factorial n : ℚ) / 2⌉.toNat

end

end A384264.P10673909110102493925

/-! ## A384264.P14535613735107501744

`A247835(floor(2^n/(n+1))²)`
-/

namespace A384264.P14535613735107501744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247835 (⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋ ^ 2).toNat

end

end A384264.P14535613735107501744

/-!
# A384265: G.f. A(x) satisfies A( x/A(x)^2 + x^2 ) = 1 + x*A(x)^2.

The programs for A384265, there is no canonical definition to state claims against.
-/

/-! ## A384265.P12413690754114136674

`or(A011371(A376439(n)), A355718(n))`
-/

namespace A384265.P12413690754114136674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011371 (A376439 n).toNat) (A355718 n)

end

end A384265.P12413690754114136674

/-! ## A384265.P11995266528057082580

`A232741(A001147(n)-A065855(n+1))`
-/

namespace A384265.P11995266528057082580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (A001147 n - A065855 (n + 1)).toNat

end

end A384265.P11995266528057082580

/-!
# A384266: G.f. A(x) = (3*sqrt(1 - 8*x) - (1 - 4*x)) / (2*(1 - 8*x - 2*x^2)).

The programs for A384266, there is no canonical definition to state claims against.
-/

/-! ## A384266.P16231339647699752889

`A156250(∑[∑[A098663(n)]])`
-/

namespace A384266.P16231339647699752889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098663 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384266.P16231339647699752889

/-!
# A384269: G.f. A(x) satisfies x = Product_{n>=1} (1 - x^n*A(x)) * (1 - x^(n-1)/A(x)) * (1 + x^n).

The programs for A384269, there is no canonical definition to state claims against.
-/

/-! ## A384269.P2287068177831811082

`A023193(A150091(n))`
-/

namespace A384269.P2287068177831811082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150091 n).toNat

end

end A384269.P2287068177831811082

/-! ## A384269.P2436122692867098848

`A371587(A071751(n))`
-/

namespace A384269.P2436122692867098848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A071751 n).toNat

end

end A384269.P2436122692867098848

/-! ## A384269.P10285725561557968151

`A172471(A305986(n))`
-/

namespace A384269.P10285725561557968151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A305986 n).toNat

end

end A384269.P10285725561557968151

/-!
# A384270: G.f. satisfies A(x) = A(x^4 + 4*x*A(x)^4) / A(x^3 + 3*x*A(x)^3).

The programs for A384270, there is no canonical definition to state claims against.
-/

/-! ## A384270.P92885673750403183

`A004525(A213282(n)+A000142(n))`
-/

namespace A384270.P92885673750403183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213282 n + A000142 n).toNat

end

end A384270.P92885673750403183

/-! ## A384270.P11508280850059899469

`A026741(A213282(n)+A000142(n))`
-/

namespace A384270.P11508280850059899469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213282 n + A000142 n).toNat

end

end A384270.P11508280850059899469

/-!
# A384272: G.f. A(x) satisfies -2*x = Product_{n>=1} (1 - x^n/A(x)) * (1 - x^(n-1)*A(x)) * (1 + x^n).

The programs for A384272, there is no canonical definition to state claims against.
-/

/-! ## A384272.P12625521786297743627

`A397205(A049868(n))`
-/

namespace A384272.P12625521786297743627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397205 (A049868 n).toNat

end

end A384272.P12625521786297743627

/-! ## A384272.P16237420727584385886

`A340606(A153970(n))`
-/

namespace A384272.P16237420727584385886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340606 (A153970 n).toNat

end

end A384272.P16237420727584385886

/-! ## A384272.P9582625224433859854

`A000188(A000272(n))*A292258(n+1)`
-/

namespace A384272.P9582625224433859854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000272 n).toNat * A292258 (n + 1)

end

end A384272.P9582625224433859854

/-!
# A384273: G.f. A(x) satisfies -3*x = Product_{n>=1} (1 - x^n/A(x)) * (1 - x^(n-1)*A(x)) * (1 + x^n).

The programs for A384273, there is no canonical definition to state claims against.
-/

/-! ## A384273.P15535427120057498114

`A237270(A351015(n)+A289608(n))`
-/

namespace A384273.P15535427120057498114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A351015 n + A289608 n).toNat

end

end A384273.P15535427120057498114

/-! ## A384273.P14752965818247035998

`A274640(A000420(n))-A284318(n+1)`
-/

namespace A384273.P14752965818247035998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A000420 n).toNat - A284318 (n + 1)

end

end A384273.P14752965818247035998

/-!
# A384274: Number of connected components of polyhedra in the quarter cubic honeycomb up to translation, rotation, and reflection of the honeycomb.

The programs for A384274, there is no canonical definition to state claims against.
-/

/-! ## A384274.P13777653242962616503

`A035250(A072092(n)+A054687(n))`
-/

namespace A384274.P13777653242962616503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A072092 n + A054687 n).toNat

end

end A384274.P13777653242962616503

/-!
# A384282: a(n) is the n-th q-Catalan number for q=n.

The programs for A384282, there is no canonical definition to state claims against.
-/

/-! ## A384282.P17792947765048543874

`A384437(∑[4*n])`
-/

namespace A384282.P17792947765048543874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384437 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384282.P17792947765048543874

/-!
# A384288: Length of the long leg in the unique primitive Pythagorean triple whose inradius is A002378(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A384288, the canonical program `A384288.P14524936850200947228` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384288 has offset 0).

The definition of A384288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384288.P10542095218191347293

`ogf((12x+24x^2+12x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A384288.P10542095218191347293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 24, 12] [1, -5, 10, -10, 5, -1] n

end

end A384288.P10542095218191347293

namespace A384288

/-- `ogf((12x+24x^2+12x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10542095218191347293.Spec : Prop :=
  ∀ n, P10542095218191347293.a n = A384288 n

end A384288

/-! ## A384288.P14524936850200947228

`2*n*(n+1)*(n²+n+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384288

/-- `2*n*(n+1)*(n²+n+1)` -/
def P14524936850200947228.Spec : Prop :=
  ∀ n, (P14524936850200947228.a n : ℤ) = A384288 n

theorem P14524936850200947228.correct : P14524936850200947228.Spec := by
  intro n
  simp only [A384288]

end A384288

/-! ## A384288.P5773488788368511175

`4*C(∑[2*n]+1, 2)`
-/

namespace A384288.P5773488788368511175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A384288.P5773488788368511175

namespace A384288

/-- `4*C(∑[2*n]+1, 2)` -/
def P5773488788368511175.Spec : Prop :=
  ∀ n, (P5773488788368511175.a n : ℤ) = A384288 n

end A384288

/-! ## A384288.P2316433787426219091

`∑[2*n*or(2, (2*n)²)]`
-/

namespace A384288.P2316433787426219091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.lor 2 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384288.P2316433787426219091

namespace A384288

/-- `∑[2*n*or(2, (2*n)²)]` -/
def P2316433787426219091.Spec : Prop :=
  ∀ n, (P2316433787426219091.a n : ℤ) = A384288 n

end A384288

/-! ## A384288.P583713353767382761

`∑[2*n*xor(2, (2*n)²)]`
-/

namespace A384288.P583713353767382761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.xor 2 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384288.P583713353767382761

namespace A384288

/-- `∑[2*n*xor(2, (2*n)²)]` -/
def P583713353767382761.Spec : Prop :=
  ∀ n, (P583713353767382761.a n : ℤ) = A384288 n

end A384288

/-! ## A384288.P6013526773151922242

`floor(∑[a(n-1)+4]²/2)` with `a(0)=1, a(1)=4`
-/

namespace A384288.P6013526773151922242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌋

end

end A384288.P6013526773151922242

namespace A384288

/-- `floor(∑[a(n-1)+4]²/2)` -/
def P6013526773151922242.Spec : Prop :=
  ∀ n, P6013526773151922242.a n = A384288 n

end A384288

/-! ## A384288.P13637458521011218496

`lcm(2, ∑[((2*n)²+2)*2*n])`
-/

namespace A384288.P13637458521011218496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 2) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384288.P13637458521011218496

namespace A384288

/-- `lcm(2, ∑[((2*n)²+2)*2*n])` -/
def P13637458521011218496.Spec : Prop :=
  ∀ n, (P13637458521011218496.a n : ℤ) = A384288 n

end A384288

/-! ## A384288.P15047072254878188949

`2*lcm(∑[2*n]+1, ∑[2*n])`
-/

namespace A384288.P15047072254878188949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A384288.P15047072254878188949

namespace A384288

/-- `2*lcm(∑[2*n]+1, ∑[2*n])` -/
def P15047072254878188949.Spec : Prop :=
  ∀ n, (P15047072254878188949.a n : ℤ) = A384288 n

end A384288

/-! ## A384288.P7627270087292737869

`A288486(n)/2`
-/

namespace A384288.P7627270087292737869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288486 n : ℚ) / 2

end

end A384288.P7627270087292737869

namespace A384288

/-- `A288486(n)/2` -/
def P7627270087292737869.Spec : Prop :=
  ∀ n, P7627270087292737869.a n = (A384288 n : ℚ)

theorem P7627270087292737869.correct : P7627270087292737869.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P7627270087292737869.a, A384288.P14524936850200947228.a, A288486, A288486.P17561168282274558050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P4806015075533009261

`∑[2*A061804(n)]`
-/

namespace A384288.P4806015075533009261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384288.P4806015075533009261

namespace A384288

/-- `∑[2*A061804(n)]` -/
def P4806015075533009261.Spec : Prop :=
  ∀ n, P4806015075533009261.a n = A384288 n

end A384288

/-! ## A384288.P7826855519981327363

`∑[4*A061317(n)]`
-/

namespace A384288.P7826855519981327363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384288.P7826855519981327363

namespace A384288

/-- `∑[4*A061317(n)]` -/
def P7826855519981327363.Spec : Prop :=
  ∀ n, P7826855519981327363.a n = A384288 n

end A384288

/-! ## A384288.P11207562529617356065

`(A007204(n)-1)/2`
-/

namespace A384288.P11207562529617356065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007204 n - 1 : ℚ) / 2

end

end A384288.P11207562529617356065

namespace A384288

/-- `(A007204(n)-1)/2` -/
def P11207562529617356065.Spec : Prop :=
  ∀ n, P11207562529617356065.a n = (A384288 n : ℚ)

theorem P11207562529617356065.correct : P11207562529617356065.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P11207562529617356065.a, A384288.P14524936850200947228.a, A007204, A007204.P4435489401006619676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P6827911949060089669

`(A248698(n)+n)/2`
-/

namespace A384288.P6827911949060089669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248698 n + (n : ℤ) : ℚ) / 2

end

end A384288.P6827911949060089669

namespace A384288

/-- `(A248698(n)+n)/2` -/
def P6827911949060089669.Spec : Prop :=
  ∀ n, P6827911949060089669.a n = (A384288 n : ℚ)

theorem P6827911949060089669.correct : P6827911949060089669.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P6827911949060089669.a, A384288.P14524936850200947228.a, A248698, A248698.P17768782674993239299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P15300330276442731881

`(A365206(n+1)-1)/4`
-/

namespace A384288.P15300330276442731881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365206 (n + 1) - 1 : ℚ) / 4

end

end A384288.P15300330276442731881

namespace A384288

/-- `(A365206(n+1)-1)/4` -/
def P15300330276442731881.Spec : Prop :=
  ∀ n, P15300330276442731881.a n = (A384288 n : ℚ)

theorem P15300330276442731881.correct : P15300330276442731881.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P15300330276442731881.a, A384288.P14524936850200947228.a, A365206, A365206.P12264015237008943708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P4504229618437815340

`A085540(n)+A027445(n)`
-/

namespace A384288.P4504229618437815340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n + A027445 n

end

end A384288.P4504229618437815340

namespace A384288

/-- `A085540(n)+A027445(n)` -/
def P4504229618437815340.Spec : Prop :=
  ∀ n, P4504229618437815340.a n = A384288 n

theorem P4504229618437815340.correct : P4504229618437815340.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P4504229618437815340.a, A384288.P14524936850200947228.a, A027445, A027445.P2062535294747488403.a, A085540, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P7839893763256515535

`A142463(n)+A096129(n)`
-/

namespace A384288.P7839893763256515535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n + A096129 n

end

end A384288.P7839893763256515535

namespace A384288

/-- `A142463(n)+A096129(n)` -/
def P7839893763256515535.Spec : Prop :=
  ∀ n, P7839893763256515535.a n = A384288 n

theorem P7839893763256515535.correct : P7839893763256515535.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P7839893763256515535.a, A384288.P14524936850200947228.a, A096129, A096129.P18432375319604949998.a, A142463, A142463.P2232194029249576848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P5701940712581741736

`A185065(n)+A099761(n)`
-/

namespace A384288.P5701940712581741736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185065 n + A099761 n

end

end A384288.P5701940712581741736

namespace A384288

/-- `A185065(n)+A099761(n)` -/
def P5701940712581741736.Spec : Prop :=
  ∀ n, P5701940712581741736.a n = A384288 n

theorem P5701940712581741736.correct : P5701940712581741736.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P5701940712581741736.a, A384288.P14524936850200947228.a, A099761, A099761.P12819074216923447249.a, A185065, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P10313336881925012940

`A254371(n)+A046092(n)`
-/

namespace A384288.P10313336881925012940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n + A046092 n

end

end A384288.P10313336881925012940

namespace A384288

/-- `A254371(n)+A046092(n)` -/
def P10313336881925012940.Spec : Prop :=
  ∀ n, P10313336881925012940.a n = A384288 n

theorem P10313336881925012940.correct : P10313336881925012940.Spec := by
  intro n
  simp only [A384288, Nat.add_sub_cancel, A384288.P10313336881925012940.a, A384288.P14524936850200947228.a, A046092, A046092.P16411658895297056450.a, A254371, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A384288

/-! ## A384288.P964113208755947064

`A339483(n)+A045943(n)`
-/

namespace A384288.P964113208755947064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n + A045943 n

end

end A384288.P964113208755947064

namespace A384288

/-- `A339483(n)+A045943(n)` -/
def P964113208755947064.Spec : Prop :=
  ∀ n, P964113208755947064.a n = A384288 n

end A384288

/-! ## A384288.P14916924987609280389

`A247112(n)+A147656(n)`
-/

namespace A384288.P14916924987609280389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247112 n + A147656 n

end

end A384288.P14916924987609280389

namespace A384288

/-- `A247112(n)+A147656(n)` -/
def P14916924987609280389.Spec : Prop :=
  ∀ n, P14916924987609280389.a n = A384288 n

end A384288

/-!
# A384294: The number of Hamiltonian cycles in the concentric ring graph of order n.

The programs for A384294, the canonical program `A384294.P6736319823924816108` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384294 has offset 3).

The definition of A384294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384294.P6736319823924816108

`ogf((6+6x+12x^2-20x^3-20x^4-6x^5+8x^6+8x^7)/(1-x-x^2-2x^3+2x^4+2x^5+x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A384294

/-- `ogf((6+6x+12x^2-20x^3-20x^4-6x^5+8x^6+8x^7)/(1-x-x^2-2x^3+2x^4+2x^5+x^6-x^7-x^8))` -/
def P6736319823924816108.Spec : Prop :=
  ∀ n, P6736319823924816108.a n = A384294 (n + 3)

theorem P6736319823924816108.correct : P6736319823924816108.Spec := by
  intro n
  simp only [A384294, Nat.add_sub_cancel]

end A384294

/-! ## A384294.P12565809812523537426

`A195197(2*(n+3))`
-/

namespace A384294.P12565809812523537426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195197 (2 * (n + 3))

end

end A384294.P12565809812523537426

namespace A384294

/-- `A195197(2*(n+3))` -/
def P12565809812523537426.Spec : Prop :=
  ∀ n, P12565809812523537426.a n = A384294 (n + 3)

end A384294

/-!
# A384296: Square numbers whose iterative sums of digits are squares.

The programs for A384296, there is no canonical definition to state claims against.
-/

/-! ## A384296.P9398180645416514767

`∩[A053057(n+1), A214068(n)]`
-/

namespace A384296.P9398180645416514767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384296.P9398180645416514767

/-! ## A384296.P15532802077165451678

`∩[A053057(n+1), A272574(n)]`
-/

namespace A384296.P15532802077165451678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384296.P15532802077165451678

/-! ## A384296.P11860996582547926969

`∩[A053057(n+1), A117756(n)]`
-/

namespace A384296.P11860996582547926969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117756 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384296.P11860996582547926969

/-! ## A384296.P4571633486520626097

`∩[A117756(n), A298639(n+1)]`
-/

namespace A384296.P4571633486520626097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384296.P4571633486520626097

/-! ## A384296.P14410067567573192396

`filter[A053057(n+1), A130630(#)]`
-/

namespace A384296.P14410067567573192396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A384296.P14410067567573192396

/-!
# A384298: Primes p such that p + 4, p + 12 and p + 16 are also primes.

The programs for A384298, there is no canonical definition to state claims against.
-/

/-! ## A384298.P2233638191356320914

`∩[A046137(n+1), A049492(n+1)]`
-/

namespace A384298.P2233638191356320914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P2233638191356320914

/-! ## A384298.P1629314652181495195

`∩[A046137(n+1), A049488(n+1)]`
-/

namespace A384298.P1629314652181495195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P1629314652181495195

/-! ## A384298.P6069271676775426911

`∩[A049492(n+1), A086136(n+1)]`
-/

namespace A384298.P6069271676775426911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P6069271676775426911

/-! ## A384298.P609769984217886684

`∩[A015917(n+1), A049492(n+1)]`
-/

namespace A384298.P609769984217886684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P609769984217886684

/-! ## A384298.P13804096917925530726

`∩[A046133(n+1), A049492(n+1)]`
-/

namespace A384298.P13804096917925530726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P13804096917925530726

/-! ## A384298.P8283108831824785848

`∩[A049492(n+1), A056775(n+1)]`
-/

namespace A384298.P8283108831824785848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384298.P8283108831824785848

/-!
# A384299: Primes p such that p + 8, p + 12 and p + 20 are also primes.

The programs for A384299, there is no canonical definition to state claims against.
-/

/-! ## A384299.P5864040108876467556

`∩[A046141(n+1), A153419(n+1)]`
-/

namespace A384299.P5864040108876467556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384299.P5864040108876467556

/-! ## A384299.P432892366279449194

`∩[A015917(n+1), A128928(n+1)]`
-/

namespace A384299.P432892366279449194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384299.P432892366279449194

/-! ## A384299.P12130956289851813740

`∩[A046133(n+1), A128928(n+1)]`
-/

namespace A384299.P12130956289851813740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384299.P12130956289851813740

/-! ## A384299.P13278185851741331245

`∩[A046141(n+1), A128928(n+1)]`
-/

namespace A384299.P13278185851741331245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384299.P13278185851741331245

/-! ## A384299.P10392149766991527406

`∩[A056775(n+1), A128928(n+1)]`
-/

namespace A384299.P10392149766991527406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384299.P10392149766991527406

