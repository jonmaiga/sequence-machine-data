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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
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
# A135500: Generating function for Viswanath's constant, using the golden string.

The programs for A135500, the canonical program `A135500.P16863113817817893017` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135500 has offset 0).

The definition of A135500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135500.P17504615200213872076

`floor((n+1)/(9-ϕ))%2`
-/

namespace A135500.P17504615200213872076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) / (9 - Real.goldenRatio)⌋ 2

end

end A135500.P17504615200213872076

namespace A135500

/-- `floor((n+1)/(9-ϕ))%2` -/
def P17504615200213872076.Spec : Prop :=
  ∀ n, P17504615200213872076.a n = A135500 n

end A135500

/-! ## A135500.P11386434552670474816

`and(1, floor((n+1)/(9-ϕ)))`
-/

namespace A135500.P11386434552670474816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) / (9 - Real.goldenRatio)⌋

end

end A135500.P11386434552670474816

namespace A135500

/-- `and(1, floor((n+1)/(9-ϕ)))` -/
def P11386434552670474816.Spec : Prop :=
  ∀ n, P11386434552670474816.a n = A135500 n

end A135500

/-! ## A135500.P13439445433358846286

`2-gcd(2, floor((n+1)/(9-ϕ)))`
-/

namespace A135500.P13439445433358846286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 ⌊(n + 1 : ℝ) / (9 - Real.goldenRatio)⌋ : ℤ)

end

end A135500.P13439445433358846286

namespace A135500

/-- `2-gcd(2, floor((n+1)/(9-ϕ)))` -/
def P13439445433358846286.Spec : Prop :=
  ∀ n, P13439445433358846286.a n = A135500 n

end A135500

/-! ## A135500.P16863113817817893017

`(A198265(7*n+13)%2)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135500

/-- `(A198265(7*n+13)%2)²` -/
def P16863113817817893017.Spec : Prop :=
  ∀ n, P16863113817817893017.a n = A135500 n

theorem P16863113817817893017.correct : P16863113817817893017.Spec := by
  intro n
  simp only [A135500]

end A135500

/-! ## A135500.P10651160053375750483

`A000035(floor((n+1)/(9-ϕ)))`
-/

namespace A135500.P10651160053375750483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(n + 1 : ℝ) / (9 - Real.goldenRatio)⌋.toNat

end

end A135500.P10651160053375750483

namespace A135500

/-- `A000035(floor((n+1)/(9-ϕ)))` -/
def P10651160053375750483.Spec : Prop :=
  ∀ n, P10651160053375750483.a n = A135500 n

end A135500

/-! ## A135500.P2369962517118625935

`(floor(A059545(n+1)/17)%2)²`
-/

namespace A135500.P2369962517118625935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A059545 (n + 1) : ℚ) / 17⌋ 2 ^ 2

end

end A135500.P2369962517118625935

namespace A135500

/-- `(floor(A059545(n+1)/17)%2)²` -/
def P2369962517118625935.Spec : Prop :=
  ∀ n, P2369962517118625935.a n = A135500 n

end A135500

/-! ## A135500.P10583383908231851636

`A083035(17*A288374(n+1))`
-/

namespace A135500.P10583383908231851636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (17 * A288374 (n + 1)).toNat

end

end A135500.P10583383908231851636

namespace A135500

/-- `A083035(17*A288374(n+1))` -/
def P10583383908231851636.Spec : Prop :=
  ∀ n, P10583383908231851636.a n = A135500 n

end A135500

/-! ## A135500.P7944743812449230120

`A007814(A020639(ceil((n+1)/(9-ϕ))))`
-/

namespace A135500.P7944743812449230120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A020639 ⌈(n + 1 : ℝ) / (9 - Real.goldenRatio)⌉.toNat).toNat

end

end A135500.P7944743812449230120

namespace A135500

/-- `A007814(A020639(ceil((n+1)/(9-ϕ))))` -/
def P7944743812449230120.Spec : Prop :=
  ∀ n, P7944743812449230120.a n = A135500 n

end A135500

/-! ## A135500.P274812155991709978

`A010060(A078010(ceil((n+1)/(9-ϕ))))`
-/

namespace A135500.P274812155991709978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A078010 ⌈(n + 1 : ℝ) / (9 - Real.goldenRatio)⌉.toNat).toNat

end

end A135500.P274812155991709978

namespace A135500

/-- `A010060(A078010(ceil((n+1)/(9-ϕ))))` -/
def P274812155991709978.Spec : Prop :=
  ∀ n, P274812155991709978.a n = A135500 n

end A135500

/-! ## A135500.P8616274120175367518

`A286627(A286640(ceil((n+1)/(9-ϕ))))`
-/

namespace A135500.P8616274120175367518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A286640 ⌈(n + 1 : ℝ) / (9 - Real.goldenRatio)⌉.toNat).toNat

end

end A135500.P8616274120175367518

namespace A135500

/-- `A286627(A286640(ceil((n+1)/(9-ϕ))))` -/
def P8616274120175367518.Spec : Prop :=
  ∀ n, P8616274120175367518.a n = A135500 n

end A135500

/-!
# A135501: Number of closed lambda-terms of size n with size 1 for the variables.

The programs for A135501, there is no canonical definition to state claims against.
-/

/-! ## A135501.P4876990210944148220

`A364678(A279558(n))`
-/

namespace A135501.P4876990210944148220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364678 (A279558 n).toNat

end

end A135501.P4876990210944148220

/-! ## A135501.P3346855160083227796

`A241092(∑[A278039(n)])`
-/

namespace A135501.P3346855160083227796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135501.P3346855160083227796

/-! ## A135501.P3972207524271439900

`A241092(A087149(n+2))`
-/

namespace A135501.P3972207524271439900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A087149 (n + 2)).toNat

end

end A135501.P3972207524271439900

/-! ## A135501.P1984951411817088588

`A221586(n)-A000035(A005802(n))`
-/

namespace A135501.P1984951411817088588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221586 n - A000035 (A005802 n).toNat

end

end A135501.P1984951411817088588

/-!
# A135502: Admirable numbers in the middle of twin primes.

The programs for A135502, there is no canonical definition to state claims against.
-/

/-! ## A135502.P10732033916821485162

`∩[A014574(n+1), A111592(n+1)]`
-/

namespace A135502.P10732033916821485162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P10732033916821485162

/-! ## A135502.P6953239080442138026

`∩[A001359(n+1)+1, A111592(n+1)]`
-/

namespace A135502.P6953239080442138026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P6953239080442138026

/-! ## A135502.P5768028316756527282

`∩[A006512(n+1)-1, A111592(n+1)]`
-/

namespace A135502.P5768028316756527282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P5768028316756527282

/-! ## A135502.P2461646212154280071

`∩[A111592(n+1), A167706(n+1)]`
-/

namespace A135502.P2461646212154280071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P2461646212154280071

/-! ## A135502.P12431652041909432792

`∩[A111592(n+1), A174219(n+1)]`
-/

namespace A135502.P12431652041909432792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P12431652041909432792

/-! ## A135502.P5521017912640139539

`∩[A000203(A001359(n+1)), A111592(n+1)]`
-/

namespace A135502.P5521017912640139539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P5521017912640139539

/-! ## A135502.P12474089521537491898

`∩[A000010(A006512(n+1)), A111592(n+1)]`
-/

namespace A135502.P12474089521537491898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P12474089521537491898

/-! ## A135502.P17783812166492023468

`∩[A111592(n+1), A129297(n+1)]`
-/

namespace A135502.P17783812166492023468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135502.P17783812166492023468

/-!
# A135503: a(n) = n*(n^2 - 1)/2.

The programs for A135503, the canonical program `A135503.P12126158469696378449` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135503 has offset 0).

The definition of A135503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135503.P14862830699353082612

`n*(n²-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135503.P14862830699353082612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 2 : ℤ) - 1 : ℚ) / 2)

end

end A135503.P14862830699353082612

namespace A135503

/-- `n*(n²-1)/2` -/
def P14862830699353082612.Spec : Prop :=
  ∀ n, P14862830699353082612.a n = (A135503 n : ℚ)

end A135503

/-! ## A135503.P12126158469696378449

`A002411(n)-A000217(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135503

/-- `A002411(n)-A000217(n)` -/
def P12126158469696378449.Spec : Prop :=
  ∀ n, P12126158469696378449.a n = A135503 n

theorem P12126158469696378449.correct : P12126158469696378449.Spec := by
  intro n
  simp only [A135503]

end A135503

/-! ## A135503.P5189652792903839752

`A004188(n)-A000578(n)`
-/

namespace A135503.P5189652792903839752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n - A000578 n

end

end A135503.P5189652792903839752

namespace A135503

/-- `A004188(n)-A000578(n)` -/
def P5189652792903839752.Spec : Prop :=
  ∀ n, P5189652792903839752.a n = A135503 n

end A135503

/-! ## A135503.P18022743040021710409

`A000578(n)-A006003(n)`
-/

namespace A135503.P18022743040021710409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A006003 n

end

end A135503.P18022743040021710409

namespace A135503

/-- `A000578(n)-A006003(n)` -/
def P18022743040021710409.Spec : Prop :=
  ∀ n, P18022743040021710409.a n = A135503 n

end A135503

/-! ## A135503.P8604018046198169385

`A007588(n)-A004188(n)`
-/

namespace A135503.P8604018046198169385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n - A004188 n

end

end A135503.P8604018046198169385

namespace A135503

/-- `A007588(n)-A004188(n)` -/
def P8604018046198169385.Spec : Prop :=
  ∀ n, P8604018046198169385.a n = A135503 n

end A135503

/-! ## A135503.P2148859813558652730

`A007531(n+1)/2`
-/

namespace A135503.P2148859813558652730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 1) : ℚ) / 2

end

end A135503.P2148859813558652730

namespace A135503

/-- `A007531(n+1)/2` -/
def P2148859813558652730.Spec : Prop :=
  ∀ n, P2148859813558652730.a n = (A135503 n : ℚ)

end A135503

/-! ## A135503.P1763160465397846185

`A006003(n+1)-A000326(n+1)`
-/

namespace A135503.P1763160465397846185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) - A000326 (n + 1)

end

end A135503.P1763160465397846185

namespace A135503

/-- `A006003(n+1)-A000326(n+1)` -/
def P1763160465397846185.Spec : Prop :=
  ∀ n, P1763160465397846185.a n = A135503 n

end A135503

/-! ## A135503.P13450489988036929998

`∑[3*C(n, 2)]`
-/

namespace A135503.P13450489988036929998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135503.P13450489988036929998

namespace A135503

/-- `∑[3*C(n, 2)]` -/
def P13450489988036929998.Spec : Prop :=
  ∀ n, (P13450489988036929998.a n : ℤ) = A135503 n

end A135503

/-! ## A135503.P1414073515860443717

`Δ[C(C(n, 2), 2)]`
-/

namespace A135503.P1414073515860443717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135503.P1414073515860443717

namespace A135503

/-- `Δ[C(C(n, 2), 2)]` -/
def P1414073515860443717.Spec : Prop :=
  ∀ n, P1414073515860443717.a n = A135503 n

end A135503

/-! ## A135503.P5924399316816976089

`lcm(n, 1-n²)/2`
-/

namespace A135503.P5924399316816976089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - (n ^ 2 : ℤ)) : ℚ) / 2

end

end A135503.P5924399316816976089

namespace A135503

/-- `lcm(n, 1-n²)/2` -/
def P5924399316816976089.Spec : Prop :=
  ∀ n, P5924399316816976089.a n = (A135503 n : ℚ)

end A135503

/-! ## A135503.P11136364671669600892

`abs(C(n, 2)*xor(n, -1))`
-/

namespace A135503.P11136364671669600892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A135503.P11136364671669600892

namespace A135503

/-- `abs(C(n, 2)*xor(n, -1))` -/
def P11136364671669600892.Spec : Prop :=
  ∀ n, P11136364671669600892.a n = A135503 n

end A135503

/-! ## A135503.P4922689819817193359

`-C(n, 2)*xor(n, -1)`
-/

namespace A135503.P4922689819817193359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.choose n 2 : ℤ) * Int.xor (n : ℤ) (-1))

end

end A135503.P4922689819817193359

namespace A135503

/-- `-C(n, 2)*xor(n, -1)` -/
def P4922689819817193359.Spec : Prop :=
  ∀ n, P4922689819817193359.a n = A135503 n

end A135503

/-! ## A135503.P7944707396197371824

`6*C(n+1, 3)/2`
-/

namespace A135503.P7944707396197371824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 1) 3 : ℚ) / 2

end

end A135503.P7944707396197371824

namespace A135503

/-- `6*C(n+1, 3)/2` -/
def P7944707396197371824.Spec : Prop :=
  ∀ n, P7944707396197371824.a n = (A135503 n : ℚ)

end A135503

/-! ## A135503.P16210380909835240624

`lcm(3, 3*C(n+1, 3))`
-/

namespace A135503.P16210380909835240624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (3 * Nat.choose (n + 1) 3)

end

end A135503.P16210380909835240624

namespace A135503

/-- `lcm(3, 3*C(n+1, 3))` -/
def P16210380909835240624.Spec : Prop :=
  ∀ n, (P16210380909835240624.a n : ℤ) = A135503 n

end A135503

/-! ## A135503.P686529975607497354

`sqrt(9*C(n+1, 3)²)`
-/

namespace A135503.P686529975607497354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (9 * Nat.choose (n + 1) 3 ^ 2 : ℝ)

end

end A135503.P686529975607497354

namespace A135503

/-- `sqrt(9*C(n+1, 3)²)` -/
def P686529975607497354.Spec : Prop :=
  ∀ n, P686529975607497354.a n = (A135503 n : ℝ)

end A135503

/-! ## A135503.P13453709907182718121

`C(n, 2)+n*C(n, 2)`
-/

namespace A135503.P13453709907182718121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n * Nat.choose n 2

end

end A135503.P13453709907182718121

namespace A135503

/-- `C(n, 2)+n*C(n, 2)` -/
def P13453709907182718121.Spec : Prop :=
  ∀ n, (P13453709907182718121.a n : ℤ) = A135503 n

end A135503

/-! ## A135503.P12494508863696109707

`∑[C(n, 2)+n²-n]`
-/

namespace A135503.P12494508863696109707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135503.P12494508863696109707

namespace A135503

/-- `∑[C(n, 2)+n²-n]` -/
def P12494508863696109707.Spec : Prop :=
  ∀ n, P12494508863696109707.a n = A135503 n

end A135503

/-! ## A135503.P4174951752438334402

`∑[n²-(n-C(n, 2))]`
-/

namespace A135503.P4174951752438334402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135503.P4174951752438334402

namespace A135503

/-- `∑[n²-(n-C(n, 2))]` -/
def P4174951752438334402.Spec : Prop :=
  ∀ n, P4174951752438334402.a n = A135503 n

end A135503

/-! ## A135503.P2451414403203716023

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=0`
-/

namespace A135503.P2451414403203716023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135503.P2451414403203716023

namespace A135503

/-- `∑[∑[a(n-1)+3]]` -/
def P2451414403203716023.Spec : Prop :=
  ∀ n, (P2451414403203716023.a n : ℤ) = A135503 n

end A135503

/-! ## A135503.P15781036692051090651

`C(n, 2)/(n+1)^-1`
-/

namespace A135503.P15781036692051090651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A135503.P15781036692051090651

namespace A135503

/-- `C(n, 2)/(n+1)^-1` -/
def P15781036692051090651.Spec : Prop :=
  ∀ n, P15781036692051090651.a n = (A135503 n : ℚ)

end A135503

/-!
# A135504: a(1)=1; for n>1, a(n) = a(n-1) + lcm(a(n-1),n).

The programs for A135504, the canonical program `A135504.P17958387882342758701` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135504 has offset 1).

The definition of A135504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135504.P17958387882342758701

`a(n-1)+lcm(n+1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135504

/-- `a(n-1)+lcm(n+1, a(n-1))` -/
def P17958387882342758701.Spec : Prop :=
  ∀ n, (P17958387882342758701.a n : ℤ) = A135504 (n + 1)

theorem P17958387882342758701.correct : P17958387882342758701.Spec := by
  intro n
  simp only [A135504, Nat.add_sub_cancel]

end A135504

/-! ## A135504.P15142939078025241743

`((n+1)/gcd(n+1, a(n-1))+1)*a(n-1)` with `a(0)=1`
-/

namespace A135504.P15142939078025241743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 1) * a (n - 1)

end

end A135504.P15142939078025241743

namespace A135504

/-- `((n+1)/gcd(n+1, a(n-1))+1)*a(n-1)` -/
def P15142939078025241743.Spec : Prop :=
  ∀ n, P15142939078025241743.a n = (A135504 (n + 1) : ℚ)

end A135504

/-! ## A135504.P14400847619004878040

`a(n-1)-Δ[a(n-1)-lcm(n, -a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A135504.P14400847619004878040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - (Int.lcm (n : ℤ) (-f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A135504.P14400847619004878040

namespace A135504

/-- `a(n-1)-Δ[a(n-1)-lcm(n, -a(n-1))]` -/
def P14400847619004878040.Spec : Prop :=
  ∀ n, P14400847619004878040.a n = A135504 (n + 1)

end A135504

/-! ## A135504.P3018972552914223940

`∑[A074179(n+1)]`
-/

namespace A135504.P3018972552914223940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135504.P3018972552914223940

namespace A135504

/-- `∑[A074179(n+1)]` -/
def P3018972552914223940.Spec : Prop :=
  ∀ n, P3018972552914223940.a n = A135504 (n + 1)

end A135504

/-! ## A135504.P8991085362136490830

`(A135506(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A135504.P8991085362136490830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A135506 n + 1) * a (n - 1)

end

end A135504.P8991085362136490830

namespace A135504

/-- `(A135506(n)+1)*a(n-1)` -/
def P8991085362136490830.Spec : Prop :=
  ∀ n, P8991085362136490830.a n = A135504 (n + 1)

end A135504

/-! ## A135504.P15302497385866970351

`A074179(n+2)/A135506(n+1)`
-/

namespace A135504.P15302497385866970351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074179 (n + 2) : ℚ) / (A135506 (n + 1) : ℚ)

end

end A135504.P15302497385866970351

namespace A135504

/-- `A074179(n+2)/A135506(n+1)` -/
def P15302497385866970351.Spec : Prop :=
  ∀ n, P15302497385866970351.a n = (A135504 (n + 1) : ℚ)

end A135504

/-! ## A135504.P4577515772985962150

`∑[record[A074179(A125051(n))]]`
-/

namespace A135504.P4577515772985962150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074179 (A125051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135504.P4577515772985962150

namespace A135504

/-- `∑[record[A074179(A125051(n))]]` -/
def P4577515772985962150.Spec : Prop :=
  ∀ n, P4577515772985962150.a n = A135504 (n + 1)

end A135504

/-!
# A135505: a(0) = 1; a(n) = [product_(i = 1..n) prime(i)^i] - 1, where prime(i) is i-th prime.

The programs for A135505, there is no canonical definition to state claims against.
-/

/-! ## A135505.P17256823658879898109

`or(1, A076954(n)-1)`
-/

namespace A135505.P17256823658879898109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076954 n - 1)

end

end A135505.P17256823658879898109

/-! ## A135505.P13268764317623385804

`A076954(round(sqrt(n²+1)))-1`
-/

namespace A135505.P13268764317623385804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076954 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A135505.P13268764317623385804

/-! ## A135505.P16363020449735595224

`A344530(2^n-1)-ceil(sin(n)²)`
-/

namespace A135505.P16363020449735595224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344530 (2 ^ n - 1) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A135505.P16363020449735595224

/-!
# A135506: a(n) = x(n+1)/x(n) - 1 where x(1)=1 and x(k) = x(k-1) + lcm(x(k-1),k). Here x(n) = A135504(n).

The programs for A135506, the canonical program `A135506.P8225812204699964301` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135506 has offset 1).

The definition of A135506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135506.P2179170027364723857

`(n+2)/A361470(n+1)`
-/

namespace A135506.P2179170027364723857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A361470 (n + 1) : ℚ)

end

end A135506.P2179170027364723857

namespace A135506

/-- `(n+2)/A361470(n+1)` -/
def P2179170027364723857.Spec : Prop :=
  ∀ n, P2179170027364723857.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P8225812204699964301

`A135504(n+2)/A135504(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135506

/-- `A135504(n+2)/A135504(n+1)-1` -/
def P8225812204699964301.Spec : Prop :=
  ∀ n, P8225812204699964301.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P17362964628059189180

`A007913((n+2)*A361470(n+1))`
-/

namespace A135506.P17362964628059189180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2 : ℤ) * A361470 (n + 1)).toNat

end

end A135506.P17362964628059189180

namespace A135506

/-- `A007913((n+2)*A361470(n+1))` -/
def P17362964628059189180.Spec : Prop :=
  ∀ n, P17362964628059189180.a n = A135506 (n + 1)

end A135506

/-! ## A135506.P17101134988658818045

`ratio[a(n-1)+lcm(n+1, a(n-1))]-1` with `a(0)=1`
-/

namespace A135506.P17101134988658818045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Nat.lcm (n + 1) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1

end

end A135506.P17101134988658818045

namespace A135506

/-- `ratio[a(n-1)+lcm(n+1, a(n-1))]-1` -/
def P17101134988658818045.Spec : Prop :=
  ∀ n, P17101134988658818045.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P12419360449157157484

`ratio[A135504(n+1)]-1`
-/

namespace A135506.P12419360449157157484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1

end

end A135506.P12419360449157157484

namespace A135506

/-- `ratio[A135504(n+1)]-1` -/
def P12419360449157157484.Spec : Prop :=
  ∀ n, P12419360449157157484.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P5025010565524781645

`ratio[∑[A074179(n+1)]]-1`
-/

namespace A135506.P5025010565524781645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074179 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1

end

end A135506.P5025010565524781645

namespace A135506

/-- `ratio[∑[A074179(n+1)]]-1` -/
def P5025010565524781645.Spec : Prop :=
  ∀ n, P5025010565524781645.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P8978430465531260868

`A074179(n+2)/A135504(n+1)`
-/

namespace A135506.P8978430465531260868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074179 (n + 2) : ℚ) / (A135504 (n + 1) : ℚ)

end

end A135506.P8978430465531260868

namespace A135506

/-- `A074179(n+2)/A135504(n+1)` -/
def P8978430465531260868.Spec : Prop :=
  ∀ n, P8978430465531260868.a n = (A135506 (n + 1) : ℚ)

end A135506

/-! ## A135506.P177488728528638007

`A006530(Δ[A135504(n+1)]/A135504(n+1))`
-/

namespace A135506.P177488728528638007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A135504 (n + 1) : ℚ))).toNat

end

end A135506.P177488728528638007

namespace A135506

/-- `A006530(Δ[A135504(n+1)]/A135504(n+1))` -/
def P177488728528638007.Spec : Prop :=
  ∀ n, P177488728528638007.a n = A135506 (n + 1)

end A135506

/-! ## A135506.P15074851197039286487

`A014963(Δ[A135504(n+1)]/A135504(n+1))`
-/

namespace A135506.P15074851197039286487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A135504 (n + 1) : ℚ))).toNat

end

end A135506.P15074851197039286487

namespace A135506

/-- `A014963(Δ[A135504(n+1)]/A135504(n+1))` -/
def P15074851197039286487.Spec : Prop :=
  ∀ n, P15074851197039286487.a n = A135506 (n + 1)

end A135506

/-! ## A135506.P14608879020333822532

`A146970(n)-a(n-1)` with `a(0)=2`
-/

namespace A135506.P14608879020333822532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A146970 n - a (n - 1)

end

end A135506.P14608879020333822532

namespace A135506

/-- `A146970(n)-a(n-1)` -/
def P14608879020333822532.Spec : Prop :=
  ∀ n, P14608879020333822532.a n = A135506 (n + 1)

end A135506

/-!
# A135507: a(1) = 1; for n > 1, a(n) = 2*a(n-1) + lcm(a(n-1),n).

The programs for A135507, the canonical program `A135507.P4043168507967501697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135507 has offset 1).

The definition of A135507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135507.P4043168507967501697

`lcm(n+1, a(n-1))+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135507

/-- `lcm(n+1, a(n-1))+2*a(n-1)` -/
def P4043168507967501697.Spec : Prop :=
  ∀ n, (P4043168507967501697.a n : ℤ) = A135507 (n + 1)

theorem P4043168507967501697.correct : P4043168507967501697.Spec := by
  intro n
  simp only [A135507, Nat.add_sub_cancel]

end A135507

/-! ## A135507.P228961988191385609

`((n+1)/gcd(n+1, a(n-1))+2)*a(n-1)` with `a(0)=1`
-/

namespace A135507.P228961988191385609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 2) * a (n - 1)

end

end A135507.P228961988191385609

namespace A135507

/-- `((n+1)/gcd(n+1, a(n-1))+2)*a(n-1)` -/
def P228961988191385609.Spec : Prop :=
  ∀ n, P228961988191385609.a n = (A135507 (n + 1) : ℚ)

end A135507

/-! ## A135507.P13830051469884275707

`∏[A370634(n+1)]`
-/

namespace A135507.P13830051469884275707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135507.P13830051469884275707

namespace A135507

/-- `∏[A370634(n+1)]` -/
def P13830051469884275707.Spec : Prop :=
  ∀ n, P13830051469884275707.a n = A135507 (n + 1)

end A135507

/-! ## A135507.P2528138147581667451

`(A135508(n)+2)*a(n-1)` with `a(0)=1`
-/

namespace A135507.P2528138147581667451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A135508 n + 2) * a (n - 1)

end

end A135507.P2528138147581667451

namespace A135507

/-- `(A135508(n)+2)*a(n-1)` -/
def P2528138147581667451.Spec : Prop :=
  ∀ n, P2528138147581667451.a n = A135507 (n + 1)

end A135507

/-!
# A135508: a(n) = x(n+1)/x(n) - 2 where x(1)=1 and x(n) = 2*x(n-1) + lcm(x(n-1),n).

The programs for A135508, the canonical program `A135508.P13264437964193426359` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135508 has offset 1).

The definition of A135508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135508.P13264437964193426359

`A370634(n+2)-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135508

/-- `A370634(n+2)-2` -/
def P13264437964193426359.Spec : Prop :=
  ∀ n, P13264437964193426359.a n = A135508 (n + 1)

theorem P13264437964193426359.correct : P13264437964193426359.Spec := by
  intro n
  simp only [A135508, Nat.add_sub_cancel]

end A135508

/-! ## A135508.P3828960969047214582

`A023444(A370634(n+2))`
-/

namespace A135508.P3828960969047214582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A370634 (n + 2)).toNat

end

end A135508.P3828960969047214582

namespace A135508

/-- `A023444(A370634(n+2))` -/
def P3828960969047214582.Spec : Prop :=
  ∀ n, P3828960969047214582.a n = A135508 (n + 1)

end A135508

/-! ## A135508.P3816723209866638447

`ratio[lcm(n+1, a(n-1))+2*a(n-1)]-2` with `a(0)=1`
-/

namespace A135508.P3816723209866638447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (n + 1) (f1 (n - 1)) + 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 2

end

end A135508.P3816723209866638447

namespace A135508

/-- `ratio[lcm(n+1, a(n-1))+2*a(n-1)]-2` -/
def P3816723209866638447.Spec : Prop :=
  ∀ n, P3816723209866638447.a n = (A135508 (n + 1) : ℚ)

end A135508

/-! ## A135508.P13949257376713258286

`ratio[A135507(n+1)]-2`
-/

namespace A135508.P13949257376713258286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 2

end

end A135508.P13949257376713258286

namespace A135508

/-- `ratio[A135507(n+1)]-2` -/
def P13949257376713258286.Spec : Prop :=
  ∀ n, P13949257376713258286.a n = (A135508 (n + 1) : ℚ)

end A135508

/-! ## A135508.P4187016653460385839

`gcd(ratio[A135507(n+1)]+n, A163457(n+2))`
-/

namespace A135508.P4187016653460385839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ))) (A163457 (n + 2))

end

end A135508.P4187016653460385839

namespace A135508

/-- `gcd(ratio[A135507(n+1)]+n, A163457(n+2))` -/
def P4187016653460385839.Spec : Prop :=
  ∀ n, (P4187016653460385839.a n : ℤ) = A135508 (n + 1)

end A135508

/-! ## A135508.P16790475357000713911

`A002262(A052905(ratio[A135507(n+1)]))`
-/

namespace A135508.P16790475357000713911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A052905 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat).toNat

end

end A135508.P16790475357000713911

namespace A135508

/-- `A002262(A052905(ratio[A135507(n+1)]))` -/
def P16790475357000713911.Spec : Prop :=
  ∀ n, P16790475357000713911.a n = A135508 (n + 1)

end A135508

/-! ## A135508.P12639056898307681068

`A007427(A001359(n+1))+ratio[A135507(n+1)]`
-/

namespace A135508.P12639056898307681068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (A001359 (n + 1)).toNat : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A135508.P12639056898307681068

namespace A135508

/-- `A007427(A001359(n+1))+ratio[A135507(n+1)]` -/
def P12639056898307681068.Spec : Prop :=
  ∀ n, P12639056898307681068.a n = (A135508 (n + 1) : ℚ)

end A135508

/-! ## A135508.P2326954503630053211

`A007427(A002476(n+1))+ratio[A135507(n+1)]`
-/

namespace A135508.P2326954503630053211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (A002476 (n + 1)).toNat : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A135508.P2326954503630053211

namespace A135508

/-- `A007427(A002476(n+1))+ratio[A135507(n+1)]` -/
def P2326954503630053211.Spec : Prop :=
  ∀ n, P2326954503630053211.a n = (A135508 (n + 1) : ℚ)

end A135508

/-! ## A135508.P12778222273237741718

`A007427(A006512(n+1))+ratio[A135507(n+1)]`
-/

namespace A135508.P12778222273237741718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (A006512 (n + 1)).toNat : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A135508.P12778222273237741718

namespace A135508

/-- `A007427(A006512(n+1))+ratio[A135507(n+1)]` -/
def P12778222273237741718.Spec : Prop :=
  ∀ n, P12778222273237741718.a n = (A135508 (n + 1) : ℚ)

end A135508

/-! ## A135508.P8434383831598164021

`A007427(A015913(n+1))+ratio[A135507(n+1)]`
-/

namespace A135508.P8434383831598164021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (A015913 (n + 1)).toNat : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A135508.P8434383831598164021

namespace A135508

/-- `A007427(A015913(n+1))+ratio[A135507(n+1)]` -/
def P8434383831598164021.Spec : Prop :=
  ∀ n, P8434383831598164021.a n = (A135508 (n + 1) : ℚ)

end A135508

/-!
# A135509: Nonnegative integers c such that there are nonnegative integers a and b that satisfy a^(1/2) + b^(1/2) = c^(1/2) and a^2 + b = c.

The programs for A135509, the canonical program `A135509.P7872450546571693998` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135509 has offset 0).

The definition of A135509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135509.P4202834226877223542

`(n+n^3)²/4`
-/

namespace A135509.P4202834226877223542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + n ^ 3) ^ 2 : ℚ) / 4

end

end A135509.P4202834226877223542

namespace A135509

/-- `(n+n^3)²/4` -/
def P4202834226877223542.Spec : Prop :=
  ∀ n, P4202834226877223542.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P7872450546571693998

`A006003(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135509

/-- `A006003(n)²` -/
def P7872450546571693998.Spec : Prop :=
  ∀ n, P7872450546571693998.a n = A135509 n

theorem P7872450546571693998.correct : P7872450546571693998.Spec := by
  intro n
  simp only [A135509]

end A135509

/-! ## A135509.P9782102469662792409

`∑[∑[a(n-1)+3]]²` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A135509.P9782102469662792409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135509.P9782102469662792409

namespace A135509

/-- `∑[∑[a(n-1)+3]]²` -/
def P9782102469662792409.Spec : Prop :=
  ∀ n, (P9782102469662792409.a n : ℤ) = A135509 n

end A135509

/-! ## A135509.P1499769867617716833

`(A034262(n)/2)²`
-/

namespace A135509.P1499769867617716833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034262 n : ℚ) / 2) ^ 2

end

end A135509.P1499769867617716833

namespace A135509

/-- `(A034262(n)/2)²` -/
def P1499769867617716833.Spec : Prop :=
  ∀ n, P1499769867617716833.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P6305258314436658995

`(A135503(n)+n)²`
-/

namespace A135509.P6305258314436658995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135503 n + (n : ℤ)) ^ 2

end

end A135509.P6305258314436658995

namespace A135509

/-- `(A135503(n)+n)²` -/
def P6305258314436658995.Spec : Prop :=
  ∀ n, P6305258314436658995.a n = A135509 n

end A135509

/-! ## A135509.P1755153386624813250

`(n-A229183(n))²`
-/

namespace A135509.P1755153386624813250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A229183 n) ^ 2

end

end A135509.P1755153386624813250

namespace A135509

/-- `(n-A229183(n))²` -/
def P1755153386624813250.Spec : Prop :=
  ∀ n, P1755153386624813250.a n = A135509 n

end A135509

/-! ## A135509.P7333267453812621845

`(1-Δ[A101357(n)])²`
-/

namespace A135509.P7333267453812621845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A135509.P7333267453812621845

namespace A135509

/-- `(1-Δ[A101357(n)])²` -/
def P7333267453812621845.Spec : Prop :=
  ∀ n, P7333267453812621845.a n = A135509 n

end A135509

/-! ## A135509.P14759630468987773765

`(n²-A006002(n))²`
-/

namespace A135509.P14759630468987773765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A006002 n) ^ 2

end

end A135509.P14759630468987773765

namespace A135509

/-- `(n²-A006002(n))²` -/
def P14759630468987773765.Spec : Prop :=
  ∀ n, P14759630468987773765.a n = A135509 n

end A135509

/-! ## A135509.P10833920377506799997

`(Δ[A050534(n)]+n)²`
-/

namespace A135509.P10833920377506799997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A135509.P10833920377506799997

namespace A135509

/-- `(Δ[A050534(n)]+n)²` -/
def P10833920377506799997.Spec : Prop :=
  ∀ n, P10833920377506799997.a n = A135509 n

end A135509

/-! ## A135509.P3403572357869736660

`(A071237(n)/(n+1))²`
-/

namespace A135509.P3403572357869736660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A071237 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A135509.P3403572357869736660

namespace A135509

/-- `(A071237(n)/(n+1))²` -/
def P3403572357869736660.Spec : Prop :=
  ∀ n, P3403572357869736660.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P17229599690739865043

`(n/2)²*A082044(n)`
-/

namespace A135509.P17229599690739865043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A082044 n : ℚ)

end

end A135509.P17229599690739865043

namespace A135509

/-- `(n/2)²*A082044(n)` -/
def P17229599690739865043.Spec : Prop :=
  ∀ n, P17229599690739865043.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P14388866109009278968

`∑[1-A139482(n+1)]²`
-/

namespace A135509.P14388866109009278968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135509.P14388866109009278968

namespace A135509

/-- `∑[1-A139482(n+1)]²` -/
def P14388866109009278968.Spec : Prop :=
  ∀ n, P14388866109009278968.a n = A135509 n

end A135509

/-! ## A135509.P16945158840274308458

`(n/2)²*A002522(n)²`
-/

namespace A135509.P16945158840274308458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A002522 n ^ 2 : ℚ)

end

end A135509.P16945158840274308458

namespace A135509

/-- `(n/2)²*A002522(n)²` -/
def P16945158840274308458.Spec : Prop :=
  ∀ n, P16945158840274308458.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P11225224300124571394

`(∑[n+1]-A006004(n+1))²`
-/

namespace A135509.P11225224300124571394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006004 (n + 1)) ^ 2

end

end A135509.P11225224300124571394

namespace A135509

/-- `(∑[n+1]-A006004(n+1))²` -/
def P11225224300124571394.Spec : Prop :=
  ∀ n, P11225224300124571394.a n = A135509 n

end A135509

/-! ## A135509.P17228067806059817707

`((n^3+n)/2)^A020639(A062383(n))`
-/

namespace A135509.P17228067806059817707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 + n : ℚ) / 2) ^ (A020639 (A062383 n).toNat : ℤ)

end

end A135509.P17228067806059817707

namespace A135509

/-- `((n^3+n)/2)^A020639(A062383(n))` -/
def P17228067806059817707.Spec : Prop :=
  ∀ n, P17228067806059817707.a n = (A135509 n : ℚ)

end A135509

/-! ## A135509.P9894800477280758094

`Δ[C(∑[n-1]+2, 2)]²`
-/

namespace A135509.P9894800477280758094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A135509.P9894800477280758094

namespace A135509

/-- `Δ[C(∑[n-1]+2, 2)]²` -/
def P9894800477280758094.Spec : Prop :=
  ∀ n, P9894800477280758094.a n = A135509 n

end A135509

/-! ## A135509.P3996180719324475078

`(1-A060354(n+1))²`
-/

namespace A135509.P3996180719324475078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A060354 (n + 1)) ^ 2

end

end A135509.P3996180719324475078

namespace A135509

/-- `(1-A060354(n+1))²` -/
def P3996180719324475078.Spec : Prop :=
  ∀ n, P3996180719324475078.a n = A135509 n

end A135509

/-! ## A135509.P291379065338457850

`(n+1-Δ[A037255(n)])²`
-/

namespace A135509.P291379065338457850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (f1 (n + 1) - f1 n)) ^ 2

end

end A135509.P291379065338457850

namespace A135509

/-- `(n+1-Δ[A037255(n)])²` -/
def P291379065338457850.Spec : Prop :=
  ∀ n, P291379065338457850.a n = A135509 n

end A135509

/-! ## A135509.P504281930505169840

`A341103(∑[n+1]+2)²`
-/

namespace A135509.P504281930505169840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341103 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A135509.P504281930505169840

namespace A135509

/-- `A341103(∑[n+1]+2)²` -/
def P504281930505169840.Spec : Prop :=
  ∀ n, P504281930505169840.a n = A135509 n

end A135509

/-! ## A135509.P5180715744162563208

`A168077(n²+1)*A168077(n)`
-/

namespace A135509.P5180715744162563208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n ^ 2 + 1) * A168077 n

end

end A135509.P5180715744162563208

namespace A135509

/-- `A168077(n²+1)*A168077(n)` -/
def P5180715744162563208.Spec : Prop :=
  ∀ n, P5180715744162563208.a n = A135509 n

end A135509

/-!
# A135511: Number of Pierce-Engel hybrid expansions of 3/b, b>=3.

The programs for A135511, the canonical program `A135511.P6304543818579281915` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135511 has offset 3).

The definition of A135511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135511.P6304543818579281915

`ceil(abs(tan(gcd(6, n))))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135511

/-- `ceil(abs(tan(gcd(6, n))))` -/
def P6304543818579281915.Spec : Prop :=
  ∀ n, P6304543818579281915.a n = A135511 (n + 3)

theorem P6304543818579281915.correct : P6304543818579281915.Spec := by
  intro n
  simp only [A135511, Nat.add_sub_cancel]

end A135511

/-!
# A135512: Number A(Bn,K) of all D-invariant ideals of the algebra NBn(K) of classical type over a field K if 2K=0.

The programs for A135512, the canonical program `A135512.P3370857288940514799` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135512 has offset 1).

The definition of A135512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135512.P3370857288940514799

`Δ[A000302(n)]-A126223(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135512

/-- `Δ[A000302(n)]-A126223(n+1)` -/
def P3370857288940514799.Spec : Prop :=
  ∀ n, P3370857288940514799.a n = A135512 (n + 1)

theorem P3370857288940514799.correct : P3370857288940514799.Spec := by
  intro n
  simp only [A135512, Nat.add_sub_cancel]

end A135512

/-! ## A135512.P13180866659504779155

`A117186(2*n+1)+Δ[A120304(n)]`
-/

namespace A135512.P13180866659504779155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P13180866659504779155

namespace A135512

/-- `A117186(2*n+1)+Δ[A120304(n)]` -/
def P13180866659504779155.Spec : Prop :=
  ∀ n, P13180866659504779155.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P14807989643493761074

`A117186(2*n+1)+Δ[abs(A168491(n))]`
-/

namespace A135512.P14807989643493761074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P14807989643493761074

namespace A135512

/-- `A117186(2*n+1)+Δ[abs(A168491(n))]` -/
def P14807989643493761074.Spec : Prop :=
  ∀ n, P14807989643493761074.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P7227548602771415888

`A117186(2*n+1)+Δ[A120588(n+1)]`
-/

namespace A135512.P7227548602771415888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P7227548602771415888

namespace A135512

/-- `A117186(2*n+1)+Δ[A120588(n+1)]` -/
def P7227548602771415888.Spec : Prop :=
  ∀ n, P7227548602771415888.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P12922571238391306923

`A117186(2*n+1)-Δ[A115140(n+1)]`
-/

namespace A135512.P12922571238391306923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A135512.P12922571238391306923

namespace A135512

/-- `A117186(2*n+1)-Δ[A115140(n+1)]` -/
def P12922571238391306923.Spec : Prop :=
  ∀ n, P12922571238391306923.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P216032300509442256

`A117186(2*n+1)+Δ[A028303(2*n)]`
-/

namespace A135512.P216032300509442256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P216032300509442256

namespace A135512

/-- `A117186(2*n+1)+Δ[A028303(2*n)]` -/
def P216032300509442256.Spec : Prop :=
  ∀ n, P216032300509442256.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P12155599215042760312

`A117186(2*n+1)+Δ[A126120(2*n)]`
-/

namespace A135512.P12155599215042760312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P12155599215042760312

namespace A135512

/-- `A117186(2*n+1)+Δ[A126120(2*n)]` -/
def P12155599215042760312.Spec : Prop :=
  ∀ n, P12155599215042760312.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P7577463683178066015

`A117186(2*n+1)+Δ[A126324(2*n)]`
-/

namespace A135512.P7577463683178066015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P7577463683178066015

namespace A135512

/-- `A117186(2*n+1)+Δ[A126324(2*n)]` -/
def P7577463683178066015.Spec : Prop :=
  ∀ n, P7577463683178066015.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P4278602408373374817

`A117186(2*n+1)+Δ[A329687(3*n)]`
-/

namespace A135512.P4278602408373374817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P4278602408373374817

namespace A135512

/-- `A117186(2*n+1)+Δ[A329687(3*n)]` -/
def P4278602408373374817.Spec : Prop :=
  ∀ n, P4278602408373374817.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P9802028611303886905

`A117186(2*n+1)+Δ[abs(A090192(2*n+1))]`
-/

namespace A135512.P9802028611303886905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P9802028611303886905

namespace A135512

/-- `A117186(2*n+1)+Δ[abs(A090192(2*n+1))]` -/
def P9802028611303886905.Spec : Prop :=
  ∀ n, P9802028611303886905.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P1692313401516809165

`A000245(n)+A000346(n)+A000302(n)`
-/

namespace A135512.P1692313401516809165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + (A000346 n + A000302 n)

end

end A135512.P1692313401516809165

namespace A135512

/-- `A000245(n)+A000346(n)+A000302(n)` -/
def P1692313401516809165.Spec : Prop :=
  ∀ n, P1692313401516809165.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P6320421921241062700

`Δ[A000108(n)]+A000346(n)+A000302(n)`
-/

namespace A135512.P6320421921241062700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000346 n + A000302 n)

end

end A135512.P6320421921241062700

namespace A135512

/-- `Δ[A000108(n)]+A000346(n)+A000302(n)` -/
def P6320421921241062700.Spec : Prop :=
  ∀ n, P6320421921241062700.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P9142762222208090940

`A001791(n)+Δ[A008549(n)+A000984(n)]`
-/

namespace A135512.P9142762222208090940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n + A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + (f1 (n + 1) - f1 n)

end

end A135512.P9142762222208090940

namespace A135512

/-- `A001791(n)+Δ[A008549(n)+A000984(n)]` -/
def P9142762222208090940.Spec : Prop :=
  ∀ n, P9142762222208090940.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P701426292561664815

`Δ[A000302(n)+A000108(n)]-A001700(n)`
-/

namespace A135512.P701426292561664815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001700 n

end

end A135512.P701426292561664815

namespace A135512

/-- `Δ[A000302(n)+A000108(n)]-A001700(n)` -/
def P701426292561664815.Spec : Prop :=
  ∀ n, P701426292561664815.a n = A135512 (n + 1)

end A135512

/-! ## A135512.P7766472062395311337

`Δ[A000302(n)-A126223(n)]-A126223(n)`
-/

namespace A135512.P7766472062395311337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A126223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126223 n

end

end A135512.P7766472062395311337

namespace A135512

/-- `Δ[A000302(n)-A126223(n)]-A126223(n)` -/
def P7766472062395311337.Spec : Prop :=
  ∀ n, P7766472062395311337.a n = A135512 (n + 1)

theorem P7766472062395311337.correct : P7766472062395311337.Spec := by
  intro n
  simp only [A135512, Nat.add_sub_cancel, A135512.P7766472062395311337.f1, A135512.P7766472062395311337.a, A135512.P3370857288940514799.f1, A135512.P3370857288940514799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135512

/-! ## A135512.P8476963729478416956

`A117186(2*n+1)+Δ[A263986(n)+A000045(n)]`
-/

namespace A135512.P8476963729478416956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A135512.P8476963729478416956

namespace A135512

/-- `A117186(2*n+1)+Δ[A263986(n)+A000045(n)]` -/
def P8476963729478416956.Spec : Prop :=
  ∀ n, P8476963729478416956.a n = A135512 (n + 1)

end A135512

/-!
# A135513: Number of Pierce-Engel hybrid expansions of 4/b, b>=4.

The programs for A135513, the canonical program `A135513.P5409543790649782187` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135513 has offset 4).

The definition of A135513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135513.P5409543790649782187

`ceil(4/gcd(4, n))/(C(n%6, 5)+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135513

/-- `ceil(4/gcd(4, n))/(C(n%6, 5)+1)` -/
def P5409543790649782187.Spec : Prop :=
  ∀ n, P5409543790649782187.a n = (A135513 (n + 4) : ℚ)

end A135513

/-!
# A135515: Number of inequivalent drawings of the complete graph Kn on n vertices that attain the corresponding rectilinear crossing number (A014540).

The programs for A135515, there is no canonical definition to state claims against.
-/

/-! ## A135515.P13382283803830673377

`A071274(n^(n%2)*∑[char[4*n]])`
-/

namespace A135515.P13382283803830673377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071274 (n ^ (n % 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A135515.P13382283803830673377

/-! ## A135515.P10500848551781105943

`∏{p}[A137153(A085136(n)), #]`
-/

namespace A135515.P10500848551781105943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (A085136 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A135515.P10500848551781105943

/-! ## A135515.P5800314223632469334

`∏{p}[A066840(A344036(n)), #]`
-/

namespace A135515.P5800314223632469334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (A344036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A135515.P5800314223632469334

/-! ## A135515.P8221250987924240092

`A238279(A292258(n+1)-1)`
-/

namespace A135515.P8221250987924240092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (A292258 (n + 1) - 1).toNat

end

end A135515.P8221250987924240092

/-!
# A135516: a(0)=1; a(n) = (Product_{i=1..n} prime(i)^2) - 1, where prime(i) is the i-th prime.

The programs for A135516, there is no canonical definition to state claims against.
-/

/-! ## A135516.P3302644030229514312

`lcm(2, A002110(n)²)-1`
-/

namespace A135516.P3302644030229514312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002110 n ^ 2) : ℤ) - 1

end

end A135516.P3302644030229514312

/-! ## A135516.P2018212920856694059

`A061742(n)-ceil(abs(sin(n)))`
-/

namespace A135516.P2018212920856694059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A135516.P2018212920856694059

/-! ## A135516.P2294358333494657432

`A002110(n)²-A057427(n)`
-/

namespace A135516.P2294358333494657432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ 2 - A057427 n

end

end A135516.P2294358333494657432

/-! ## A135516.P16213241751867589061

`A002110(n)²-A178334(n)`
-/

namespace A135516.P16213241751867589061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ 2 - A178334 n

end

end A135516.P16213241751867589061

/-! ## A135516.P6708926565563478658

`∏[record[A006530(n+1)²]]-A057427(n)`
-/

namespace A135516.P6708926565563478658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A135516.P6708926565563478658

/-!
# A135517: a(n) = 2^(A091090(n)-1).

The programs for A135517, the canonical program `A135517.P346222672956229891` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135517 has offset 0).

The definition of A135517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135517.P346222672956229891

`2^(A091090(n)-1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135517

/-- `2^(A091090(n)-1)` -/
def P346222672956229891.Spec : Prop :=
  ∀ n, P346222672956229891.a n = (A135517 n : ℚ)

end A135517

/-! ## A135517.P18067373125580400875

`gcd(n+1, 2*a(floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A135517.P18067373125580400875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (n + 1) (2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A135517.P18067373125580400875

namespace A135517

/-- `gcd(n+1, 2*a(floor(n/2)))` -/
def P18067373125580400875.Spec : Prop :=
  ∀ n, (P18067373125580400875.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P10555079288299068892

`gcd((n+1)*∏{p}[n+1, #-1/#], 2^val(n+1, 2))`
-/

namespace A135517.P10555079288299068892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))))) (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A135517.P10555079288299068892

namespace A135517

/-- `gcd((n+1)*∏{p}[n+1, #-1/#], 2^val(n+1, 2))` -/
def P10555079288299068892.Spec : Prop :=
  ∀ n, (P10555079288299068892.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P2611476487542316205

`gcd(n+1, A053644(n))`
-/

namespace A135517.P2611476487542316205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053644 n)

end

end A135517.P2611476487542316205

namespace A135517

/-- `gcd(n+1, A053644(n))` -/
def P2611476487542316205.Spec : Prop :=
  ∀ n, (P2611476487542316205.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P12378752174302317103

`gcd((n+1)², A359506(n))`
-/

namespace A135517.P12378752174302317103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A359506 n)

end

end A135517.P12378752174302317103

namespace A135517

/-- `gcd((n+1)², A359506(n))` -/
def P12378752174302317103.Spec : Prop :=
  ∀ n, (P12378752174302317103.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P13835400000611020265

`gcd(2^val(n+1, 2), A105321(n))`
-/

namespace A135517.P13835400000611020265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A105321 n)

end

end A135517.P13835400000611020265

namespace A135517

/-- `gcd(2^val(n+1, 2), A105321(n))` -/
def P13835400000611020265.Spec : Prop :=
  ∀ n, (P13835400000611020265.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P11470620159997998451

`gcd(∑[(1-n)²+n], A060632(n))`
-/

namespace A135517.P11470620159997998451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A060632 n)

end

end A135517.P11470620159997998451

namespace A135517

/-- `gcd(∑[(1-n)²+n], A060632(n))` -/
def P11470620159997998451.Spec : Prop :=
  ∀ n, (P11470620159997998451.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P2946011259936249943

`2^val((n+1)/A006530(n+1), 2)`
-/

namespace A135517.P2946011259936249943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat 2

end

end A135517.P2946011259936249943

namespace A135517

/-- `2^val((n+1)/A006530(n+1), 2)` -/
def P2946011259936249943.Spec : Prop :=
  ∀ n, (P2946011259936249943.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P8654353000166534565

`2^val((n+1)/A014963(n+1), 2)`
-/

namespace A135517.P8654353000166534565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat 2

end

end A135517.P8654353000166534565

namespace A135517

/-- `2^val((n+1)/A014963(n+1), 2)` -/
def P8654353000166534565.Spec : Prop :=
  ∀ n, (P8654353000166534565.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P16783056369652121731

`gcd(and(n+1, -(n+1)), A000010(n+1))`
-/

namespace A135517.P16783056369652121731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) (A000010 (n + 1))

end

end A135517.P16783056369652121731

namespace A135517

/-- `gcd(and(n+1, -(n+1)), A000010(n+1))` -/
def P16783056369652121731.Spec : Prop :=
  ∀ n, (P16783056369652121731.a n : ℤ) = A135517 n

end A135517

/-! ## A135517.P2211607785178297015

`A214546(A006257(n))`
-/

namespace A135517.P2211607785178297015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 (A006257 n).toNat

end

end A135517.P2211607785178297015

namespace A135517

/-- `A214546(A006257(n))` -/
def P2211607785178297015.Spec : Prop :=
  ∀ n, P2211607785178297015.a n = A135517 n

end A135517

/-! ## A135517.P1244587344618631770

`A006519(A009195(n+1))`
-/

namespace A135517.P1244587344618631770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A009195 (n + 1)).toNat

end

end A135517.P1244587344618631770

namespace A135517

/-- `A006519(A009195(n+1))` -/
def P1244587344618631770.Spec : Prop :=
  ∀ n, P1244587344618631770.a n = A135517 n

end A135517

/-! ## A135517.P17277399056159927823

`A006519(A048671(n+1))`
-/

namespace A135517.P17277399056159927823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A048671 (n + 1)).toNat

end

end A135517.P17277399056159927823

namespace A135517

/-- `A006519(A048671(n+1))` -/
def P17277399056159927823.Spec : Prop :=
  ∀ n, P17277399056159927823.a n = A135517 n

end A135517

/-! ## A135517.P5378486530357478351

`A006519(A052126(n+1))`
-/

namespace A135517.P5378486530357478351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A052126 (n + 1)).toNat

end

end A135517.P5378486530357478351

namespace A135517

/-- `A006519(A052126(n+1))` -/
def P5378486530357478351.Spec : Prop :=
  ∀ n, P5378486530357478351.a n = A135517 n

end A135517

/-! ## A135517.P1877809339395205565

`A160467(A130065(n+1))`
-/

namespace A135517.P1877809339395205565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A130065 (n + 1)).toNat

end

end A135517.P1877809339395205565

namespace A135517

/-- `A160467(A130065(n+1))` -/
def P1877809339395205565.Spec : Prop :=
  ∀ n, P1877809339395205565.a n = A135517 n

end A135517

/-! ## A135517.P4563983501249231372

`A006519(A306695(n+1))`
-/

namespace A135517.P4563983501249231372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A306695 (n + 1)).toNat

end

end A135517.P4563983501249231372

namespace A135517

/-- `A006519(A306695(n+1))` -/
def P4563983501249231372.Spec : Prop :=
  ∀ n, P4563983501249231372.a n = A135517 n

end A135517

/-! ## A135517.P13831576857236995727

`A006519(A325567(n+1))`
-/

namespace A135517.P13831576857236995727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A325567 (n + 1)).toNat

end

end A135517.P13831576857236995727

namespace A135517

/-- `A006519(A325567(n+1))` -/
def P13831576857236995727.Spec : Prop :=
  ∀ n, P13831576857236995727.a n = A135517 n

end A135517

/-! ## A135517.P6356621386243016241

`A006519(A364254(n+1))`
-/

namespace A135517.P6356621386243016241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A364254 (n + 1)).toNat

end

end A135517.P6356621386243016241

namespace A135517

/-- `A006519(A364254(n+1))` -/
def P6356621386243016241.Spec : Prop :=
  ∀ n, P6356621386243016241.a n = A135517 n

end A135517

/-! ## A135517.P1539081715541063526

`A006519(A364256(n+1))`
-/

namespace A135517.P1539081715541063526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A364256 (n + 1)).toNat

end

end A135517.P1539081715541063526

namespace A135517

/-- `A006519(A364256(n+1))` -/
def P1539081715541063526.Spec : Prop :=
  ∀ n, P1539081715541063526.a n = A135517 n

end A135517

/-! ## A135517.P5984323031883838798

`A325567(A283165(n+1))`
-/

namespace A135517.P5984323031883838798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A283165 (n + 1)).toNat

end

end A135517.P5984323031883838798

namespace A135517

/-- `A325567(A283165(n+1))` -/
def P5984323031883838798.Spec : Prop :=
  ∀ n, P5984323031883838798.a n = A135517 n

end A135517

/-!
# A135518: Generalized repunits in base 15.

The programs for A135518, the canonical program `A135518.P2132915257929064057` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135518 has offset 1).

The definition of A135518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135518.P2132915257929064057

`15*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135518

/-- `15*a(n-1)+1` -/
def P2132915257929064057.Spec : Prop :=
  ∀ n, (P2132915257929064057.a n : ℤ) = A135518 (n + 1)

theorem P2132915257929064057.correct : P2132915257929064057.Spec := by
  intro n
  simp only [A135518, Nat.add_sub_cancel]

end A135518

/-! ## A135518.P12927018797179575638

`(15^(n+1)-1)/14`
-/

namespace A135518.P12927018797179575638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ (n + 1) : ℤ) - 1 : ℚ) / 14

end

end A135518.P12927018797179575638

namespace A135518

/-- `(15^(n+1)-1)/14` -/
def P12927018797179575638.Spec : Prop :=
  ∀ n, P12927018797179575638.a n = (A135518 (n + 1) : ℚ)

theorem P12927018797179575638.correct : P12927018797179575638.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A135518, Nat.add_sub_cancel, A135518.P12927018797179575638.a, A135518.P2132915257929064057.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A135518, Nat.add_sub_cancel, A135518.P12927018797179575638.a, A135518.P2132915257929064057.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135518

/-! ## A135518.P1913729579917981370

`lcm(15, a(n-1))+1` with `a(0)=1`
-/

namespace A135518.P1913729579917981370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 15 (a (n - 1)) + 1

end

end A135518.P1913729579917981370

namespace A135518

/-- `lcm(15, a(n-1))+1` -/
def P1913729579917981370.Spec : Prop :=
  ∀ n, (P1913729579917981370.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P4582507006386806519

`15^n+a(n-1)` with `a(0)=1`
-/

namespace A135518.P4582507006386806519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  15 ^ n + a (n - 1)

end

end A135518.P4582507006386806519

namespace A135518

/-- `15^n+a(n-1)` -/
def P4582507006386806519.Spec : Prop :=
  ∀ n, (P4582507006386806519.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P7120795749896440557

`abs(∑[15*a(n-1)])` with `a(0)=1`
-/

namespace A135518.P7120795749896440557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  15 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135518.P7120795749896440557

namespace A135518

/-- `abs(∑[15*a(n-1)])` -/
def P7120795749896440557.Spec : Prop :=
  ∀ n, (P7120795749896440557.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P3030102233901847971

`floor(∑[15*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135518.P3030102233901847971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  15 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135518.P3030102233901847971

namespace A135518

/-- `floor(∑[15*a(n-1)])` -/
def P3030102233901847971.Spec : Prop :=
  ∀ n, (P3030102233901847971.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P3679465960347023848

`ceil(∑[15*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A135518.P3679465960347023848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  15 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135518.P3679465960347023848

namespace A135518

/-- `ceil(∑[15*a(n-1)])` -/
def P3679465960347023848.Spec : Prop :=
  ∀ n, (P3679465960347023848.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P7201962566714046661

`round(∑[15*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A135518.P7201962566714046661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  15 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135518.P7201962566714046661

namespace A135518

/-- `round(∑[15*a(n-1)])` -/
def P7201962566714046661.Spec : Prop :=
  ∀ n, (P7201962566714046661.a n : ℤ) = A135518 (n + 1)

end A135518

/-! ## A135518.P12045693218177174231

`4-3*(1-5*a(n-1))` with `a(0)=1`
-/

namespace A135518.P12045693218177174231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - 3 * (1 - 5 * a (n - 1))

end

end A135518.P12045693218177174231

namespace A135518

/-- `4-3*(1-5*a(n-1))` -/
def P12045693218177174231.Spec : Prop :=
  ∀ n, P12045693218177174231.a n = A135518 (n + 1)

end A135518

/-!
# A135519: Generalized repunits in base 14.

The programs for A135519, the canonical program `A135519.P3294554345052010031` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135519 has offset 1).

The definition of A135519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135519.P3294554345052010031

`14*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135519

/-- `14*a(n-1)+1` -/
def P3294554345052010031.Spec : Prop :=
  ∀ n, (P3294554345052010031.a n : ℤ) = A135519 (n + 1)

theorem P3294554345052010031.correct : P3294554345052010031.Spec := by
  intro n
  simp only [A135519, Nat.add_sub_cancel]

end A135519

/-! ## A135519.P4329601975797501365

`(14^(n+1)-1)/13`
-/

namespace A135519.P4329601975797501365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 ^ (n + 1) : ℤ) - 1 : ℚ) / 13

end

end A135519.P4329601975797501365

namespace A135519

/-- `(14^(n+1)-1)/13` -/
def P4329601975797501365.Spec : Prop :=
  ∀ n, P4329601975797501365.a n = (A135519 (n + 1) : ℚ)

theorem P4329601975797501365.correct : P4329601975797501365.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A135519, Nat.add_sub_cancel, A135519.P4329601975797501365.a, A135519.P3294554345052010031.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A135519, Nat.add_sub_cancel, A135519.P4329601975797501365.a, A135519.P3294554345052010031.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135519

/-! ## A135519.P12294498061806737891

`lcm(14, a(n-1))+1` with `a(0)=1`
-/

namespace A135519.P12294498061806737891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 14 (a (n - 1)) + 1

end

end A135519.P12294498061806737891

namespace A135519

/-- `lcm(14, a(n-1))+1` -/
def P12294498061806737891.Spec : Prop :=
  ∀ n, (P12294498061806737891.a n : ℤ) = A135519 (n + 1)

end A135519

/-! ## A135519.P5541912309373945518

`or(1, 14*a(n-1))` with `a(0)=1`
-/

namespace A135519.P5541912309373945518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (14 * a (n - 1))

end

end A135519.P5541912309373945518

namespace A135519

/-- `or(1, 14*a(n-1))` -/
def P5541912309373945518.Spec : Prop :=
  ∀ n, (P5541912309373945518.a n : ℤ) = A135519 (n + 1)

end A135519

/-! ## A135519.P16478292039118219382

`xor(1, 14*a(n-1))` with `a(0)=1`
-/

namespace A135519.P16478292039118219382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (14 * a (n - 1))

end

end A135519.P16478292039118219382

namespace A135519

/-- `xor(1, 14*a(n-1))` -/
def P16478292039118219382.Spec : Prop :=
  ∀ n, (P16478292039118219382.a n : ℤ) = A135519 (n + 1)

end A135519

/-! ## A135519.P13402965940431604260

`14^n+a(n-1)` with `a(0)=1`
-/

namespace A135519.P13402965940431604260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  14 ^ n + a (n - 1)

end

end A135519.P13402965940431604260

namespace A135519

/-- `14^n+a(n-1)` -/
def P13402965940431604260.Spec : Prop :=
  ∀ n, (P13402965940431604260.a n : ℤ) = A135519 (n + 1)

end A135519

/-! ## A135519.P14829013545166028521

`floor(∑[14*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135519.P14829013545166028521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  14 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135519.P14829013545166028521

namespace A135519

/-- `floor(∑[14*a(n-1)])` -/
def P14829013545166028521.Spec : Prop :=
  ∀ n, (P14829013545166028521.a n : ℤ) = A135519 (n + 1)

end A135519

/-! ## A135519.P568849459603284265

`1-(a(n-1)-15*a(n-1))` with `a(0)=1`
-/

namespace A135519.P568849459603284265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 15 * a (n - 1))

end

end A135519.P568849459603284265

namespace A135519

/-- `1-(a(n-1)-15*a(n-1))` -/
def P568849459603284265.Spec : Prop :=
  ∀ n, P568849459603284265.a n = A135519 (n + 1)

end A135519

/-!
# A135520: a(n) = 4*a(n-2).

The programs for A135520, the canonical program `A135520.P11734287193580949509` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135520 has offset 0).

The definition of A135520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)` (program `A135520.P11734287193580949509`, by `A135520.P11734287193580949509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135520.P11734287193580949509

`4*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135520

/-- `4*a(n-2)` -/
def P11734287193580949509.Spec : Prop :=
  ∀ n, (P11734287193580949509.a n : ℤ) = A135520 n

theorem P11734287193580949509.correct : P11734287193580949509.Spec := by
  intro n
  simp only [A135520]

end A135520

/-! ## A135520.P2763001538639676742

`2^(n+(-1)^n)`
-/

namespace A135520.P2763001538639676742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) + (-1) ^ n : ℤ)

end

end A135520.P2763001538639676742

namespace A135520

/-- `2^(n+(-1)^n)` -/
def P2763001538639676742.Spec : Prop :=
  ∀ n, P2763001538639676742.a n = (A135520 n : ℚ)

end A135520

/-! ## A135520.P12628600925191865028

`2^n/ratio[gcd(2, n)]`
-/

namespace A135520.P12628600925191865028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A135520.P12628600925191865028

namespace A135520

/-- `2^n/ratio[gcd(2, n)]` -/
def P12628600925191865028.Spec : Prop :=
  ∀ n, P12628600925191865028.a n = (A135520 n : ℚ)

end A135520

/-! ## A135520.P11852396295573800665

`a(n-2)/(1/2)²` with `a(0)=2, a(1)=1`
-/

namespace A135520.P11852396295573800665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A135520.P11852396295573800665

namespace A135520

/-- `a(n-2)/(1/2)²` -/
def P11852396295573800665.Spec : Prop :=
  ∀ n, P11852396295573800665.a n = (A135520 n : ℚ)

end A135520

/-! ## A135520.P13560981929013985176

`2^(n+1)/gcd(4, (n+1)²)`
-/

namespace A135520.P13560981929013985176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (Nat.gcd 4 ((n + 1) ^ 2) : ℚ)

end

end A135520.P13560981929013985176

namespace A135520

/-- `2^(n+1)/gcd(4, (n+1)²)` -/
def P13560981929013985176.Spec : Prop :=
  ∀ n, P13560981929013985176.a n = (A135520 n : ℚ)

end A135520

/-! ## A135520.P4578496294495813056

`floor(2^(n+1-2*and(1, n)))`
-/

namespace A135520.P4578496294495813056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n + 1 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℤ)⌋

end

end A135520.P4578496294495813056

namespace A135520

/-- `floor(2^(n+1-2*and(1, n)))` -/
def P4578496294495813056.Spec : Prop :=
  ∀ n, P4578496294495813056.a n = A135520 n

end A135520

/-! ## A135520.P7931010871925707784

`floor(2^(2*or(1, n)-(n+1)))`
-/

namespace A135520.P7931010871925707784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ) : ℤ)⌋

end

end A135520.P7931010871925707784

namespace A135520

/-- `floor(2^(2*or(1, n)-(n+1)))` -/
def P7931010871925707784.Spec : Prop :=
  ∀ n, P7931010871925707784.a n = A135520 n

end A135520

/-! ## A135520.P10305081905781791658

`ceil(2^(n+1-2*and(1, n)))`
-/

namespace A135520.P10305081905781791658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n + 1 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℤ)⌉

end

end A135520.P10305081905781791658

namespace A135520

/-- `ceil(2^(n+1-2*and(1, n)))` -/
def P10305081905781791658.Spec : Prop :=
  ∀ n, P10305081905781791658.a n = A135520 n

end A135520

/-! ## A135520.P8551908644679933374

`ceil(2^(2*or(1, n)-(n+1)))`
-/

namespace A135520.P8551908644679933374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ) : ℤ)⌉

end

end A135520.P8551908644679933374

namespace A135520

/-- `ceil(2^(2*or(1, n)-(n+1)))` -/
def P8551908644679933374.Spec : Prop :=
  ∀ n, P8551908644679933374.a n = A135520 n

end A135520

/-! ## A135520.P12878563103391267209

`round(2^(n+1-2*and(1, n)))`
-/

namespace A135520.P12878563103391267209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 1 : ℤ) - (2 * Nat.land 1 n : ℤ) : ℤ))

end

end A135520.P12878563103391267209

namespace A135520

/-- `round(2^(n+1-2*and(1, n)))` -/
def P12878563103391267209.Spec : Prop :=
  ∀ n, P12878563103391267209.a n = A135520 n

end A135520

/-! ## A135520.P13284378970301494930

`round(2^(2*or(1, n)-(n+1)))`
-/

namespace A135520.P13284378970301494930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ) : ℤ))

end

end A135520.P13284378970301494930

namespace A135520

/-- `round(2^(2*or(1, n)-(n+1)))` -/
def P13284378970301494930.Spec : Prop :=
  ∀ n, P13284378970301494930.a n = A135520 n

end A135520

/-! ## A135520.P15638620411655442607

`floor(2^∑[2-a(n-1)])` with `a(0)=1, a(1)=-1`
-/

namespace A135520.P15638620411655442607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A135520.P15638620411655442607

namespace A135520

/-- `floor(2^∑[2-a(n-1)])` -/
def P15638620411655442607.Spec : Prop :=
  ∀ n, P15638620411655442607.a n = A135520 n

end A135520

/-! ## A135520.P14830180823611005334

`floor(a(n-2)/(1-3/4))` with `a(0)=2, a(1)=1`
-/

namespace A135520.P14830180823611005334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A135520.P14830180823611005334

namespace A135520

/-- `floor(a(n-2)/(1-3/4))` -/
def P14830180823611005334.Spec : Prop :=
  ∀ n, P14830180823611005334.a n = A135520 n

end A135520

/-! ## A135520.P18189784298431346605

`a(n-2)+lcm(3, a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A135520.P18189784298431346605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A135520.P18189784298431346605

namespace A135520

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P18189784298431346605.Spec : Prop :=
  ∀ n, (P18189784298431346605.a n : ℤ) = A135520 n

end A135520

/-! ## A135520.P13627822440740655166

`a(n-2)+a(n-2)/(1-2/3)` with `a(0)=2, a(1)=1`
-/

namespace A135520.P13627822440740655166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A135520.P13627822440740655166

namespace A135520

/-- `a(n-2)+a(n-2)/(1-2/3)` -/
def P13627822440740655166.Spec : Prop :=
  ∀ n, P13627822440740655166.a n = (A135520 n : ℚ)

end A135520

/-! ## A135520.P4452567452826668998

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A135520.P4452567452826668998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A135520.P4452567452826668998

namespace A135520

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P4452567452826668998.Spec : Prop :=
  ∀ n, (P4452567452826668998.a n : ℤ) = A135520 n

theorem P4452567452826668998.correct : P4452567452826668998.Spec := by
  intro n
  simp only [A135520, Nat.add_sub_cancel, A135520.P4452567452826668998.a, A135520.P11734287193580949509.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135520

/-! ## A135520.P15645776611365403042

`Δ[A084221(n)]`
-/

namespace A135520.P15645776611365403042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135520.P15645776611365403042

namespace A135520

/-- `Δ[A084221(n)]` -/
def P15645776611365403042.Spec : Prop :=
  ∀ n, P15645776611365403042.a n = A135520 n

end A135520

/-! ## A135520.P8363366759651127903

`A140590(n)-1`
-/

namespace A135520.P8363366759651127903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140590 n - 1

end

end A135520.P8363366759651127903

namespace A135520

/-- `A140590(n)-1` -/
def P8363366759651127903.Spec : Prop :=
  ∀ n, P8363366759651127903.a n = A135520 n

end A135520

/-! ## A135520.P15121614364207759571

`A000079(xor(1, n))`
-/

namespace A135520.P15121614364207759571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.xor 1 n)

end

end A135520.P15121614364207759571

namespace A135520

/-- `A000079(xor(1, n))` -/
def P15121614364207759571.Spec : Prop :=
  ∀ n, P15121614364207759571.a n = A135520 n

end A135520

/-!
# A135521: a(n) = 2^(A091090(n)) - 1.

The programs for A135521, the canonical program `A135521.P8154613990211312420` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135521 has offset 1).

The definition of A135521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135521.P8154613990211312420

`2^A091090(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135521

/-- `2^A091090(n+1)-1` -/
def P8154613990211312420.Spec : Prop :=
  ∀ n, P8154613990211312420.a n = (A135521 (n + 1) : ℚ)

end A135521

/-! ## A135521.P11978989050620147791

`xor(n+1, n+2)%(n+2)`
-/

namespace A135521.P11978989050620147791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 2) % (n + 2)

end

end A135521.P11978989050620147791

namespace A135521

/-- `xor(n+1, n+2)%(n+2)` -/
def P11978989050620147791.Spec : Prop :=
  ∀ n, (P11978989050620147791.a n : ℤ) = A135521 (n + 1)

end A135521

/-! ## A135521.P15801087002061139652

`Δ[2*a(floor((n-1)/2))+n]` with `a(0)=0`
-/

namespace A135521.P15801087002061139652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135521.P15801087002061139652

namespace A135521

/-- `Δ[2*a(floor((n-1)/2))+n]` -/
def P15801087002061139652.Spec : Prop :=
  ∀ n, P15801087002061139652.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P4230489850993988007

`∑{d}[A135517(n+1), #]`
-/

namespace A135521.P4230489850993988007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A135521.P4230489850993988007

namespace A135521

/-- `∑{d}[A135517(n+1), #]` -/
def P4230489850993988007.Spec : Prop :=
  ∀ n, (P4230489850993988007.a n : ℤ) = A135521 (n + 1)

end A135521

/-! ## A135521.P5221321781367690470

`A000203(and(n+2, -(n+2)))%(n+2)`
-/

namespace A135521.P5221321781367690470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (Int.land (n + 2 : ℤ) (-(n + 2 : ℤ))).toNat) (n + 2 : ℤ)

end

end A135521.P5221321781367690470

namespace A135521

/-- `A000203(and(n+2, -(n+2)))%(n+2)` -/
def P5221321781367690470.Spec : Prop :=
  ∀ n, P5221321781367690470.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P15744251967597697282

`A000225(A091090(n+1))`
-/

namespace A135521.P15744251967597697282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A091090 (n + 1)).toNat

end

end A135521.P15744251967597697282

namespace A135521

/-- `A000225(A091090(n+1))` -/
def P15744251967597697282.Spec : Prop :=
  ∀ n, P15744251967597697282.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P10042837259194081102

`A038712(A062050(n+1))`
-/

namespace A135521.P10042837259194081102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A062050 (n + 1)).toNat

end

end A135521.P10042837259194081102

namespace A135521

/-- `A038712(A062050(n+1))` -/
def P10042837259194081102.Spec : Prop :=
  ∀ n, P10042837259194081102.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P8070440231388808663

`A000203(A135517(n+1))`
-/

namespace A135521.P8070440231388808663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A135517 (n + 1)).toNat

end

end A135521.P8070440231388808663

namespace A135521

/-- `A000203(A135517(n+1))` -/
def P8070440231388808663.Spec : Prop :=
  ∀ n, P8070440231388808663.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P9007974707750670269

`A038712(A162751(n+1))`
-/

namespace A135521.P9007974707750670269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A162751 (n + 1)).toNat

end

end A135521.P9007974707750670269

namespace A135521

/-- `A038712(A162751(n+1))` -/
def P9007974707750670269.Spec : Prop :=
  ∀ n, P9007974707750670269.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P3098385308504899864

`A038712(A364254(n+2))`
-/

namespace A135521.P3098385308504899864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A364254 (n + 2)).toNat

end

end A135521.P3098385308504899864

namespace A135521

/-- `A038712(A364254(n+2))` -/
def P3098385308504899864.Spec : Prop :=
  ∀ n, P3098385308504899864.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P12510295107860014466

`A038712(A053645(n+1)+1)`
-/

namespace A135521.P12510295107860014466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A053645 (n + 1) + 1).toNat

end

end A135521.P12510295107860014466

namespace A135521

/-- `A038712(A053645(n+1)+1)` -/
def P12510295107860014466.Spec : Prop :=
  ∀ n, P12510295107860014466.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P16430965245511860332

`A005408(A135517(n+1)-1)`
-/

namespace A135521.P16430965245511860332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A135517 (n + 1) - 1).toNat

end

end A135521.P16430965245511860332

namespace A135521

/-- `A005408(A135517(n+1)-1)` -/
def P16430965245511860332.Spec : Prop :=
  ∀ n, P16430965245511860332.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P7541885901914733147

`A014681(2*A135517(n+1))`
-/

namespace A135521.P7541885901914733147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A135517 (n + 1)).toNat

end

end A135521.P7541885901914733147

namespace A135521

/-- `A014681(2*A135517(n+1))` -/
def P7541885901914733147.Spec : Prop :=
  ∀ n, P7541885901914733147.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P713577017199139332

`A035327(2*A135517(n+1))`
-/

namespace A135521.P713577017199139332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (2 * A135517 (n + 1)).toNat

end

end A135521.P713577017199139332

namespace A135521

/-- `A035327(2*A135517(n+1))` -/
def P713577017199139332.Spec : Prop :=
  ∀ n, P713577017199139332.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P17470882304952559593

`A048967(2*A135517(n+1))`
-/

namespace A135521.P17470882304952559593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (2 * A135517 (n + 1)).toNat

end

end A135521.P17470882304952559593

namespace A135521

/-- `A048967(2*A135517(n+1))` -/
def P17470882304952559593.Spec : Prop :=
  ∀ n, P17470882304952559593.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P7871788719892486813

`A086099(2*A135517(n+1))`
-/

namespace A135521.P7871788719892486813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (2 * A135517 (n + 1)).toNat

end

end A135521.P7871788719892486813

namespace A135521

/-- `A086099(2*A135517(n+1))` -/
def P7871788719892486813.Spec : Prop :=
  ∀ n, P7871788719892486813.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P6958904690677741129

`A135481(2*A053645(n+1)+1)`
-/

namespace A135521.P6958904690677741129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (2 * A053645 (n + 1) + 1).toNat

end

end A135521.P6958904690677741129

namespace A135521

/-- `A135481(2*A053645(n+1)+1)` -/
def P6958904690677741129.Spec : Prop :=
  ∀ n, P6958904690677741129.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P9341029307066125005

`A342410(n+1-A035327(n+1))`
-/

namespace A135521.P9341029307066125005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 ((n + 1 : ℤ) - A035327 (n + 1)).toNat

end

end A135521.P9341029307066125005

namespace A135521

/-- `A342410(n+1-A035327(n+1))` -/
def P9341029307066125005.Spec : Prop :=
  ∀ n, P9341029307066125005.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P15570290316074518931

`A038712(A135517(2*n+1-n))`
-/

namespace A135521.P15570290316074518931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A135517 (2 * n + 1 - n)).toNat

end

end A135521.P15570290316074518931

namespace A135521

/-- `A038712(A135517(2*n+1-n))` -/
def P15570290316074518931.Spec : Prop :=
  ∀ n, P15570290316074518931.a n = A135521 (n + 1)

end A135521

/-! ## A135521.P16549345231893935272

`A038712((n+2)/A379120(n+2))`
-/

namespace A135521.P16549345231893935272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A379120 (n + 2) : ℚ))).toNat

end

end A135521.P16549345231893935272

namespace A135521

/-- `A038712((n+2)/A379120(n+2))` -/
def P16549345231893935272.Spec : Prop :=
  ∀ n, P16549345231893935272.a n = A135521 (n + 1)

end A135521

/-!
# A135522: a(n) = 2*a(n-1) + 3*a(n-2), with a(0) = 2 and a(1) = 3.

The programs for A135522, the canonical program `A135522.P7897882657442926473` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135522 has offset 0).

The definition of A135522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A135522.P7897882657442926473`, by `A135522.P7897882657442926473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135522.P7897882657442926473

`2*a(n-1)+3*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135522

/-- `2*a(n-1)+3*a(n-2)` -/
def P7897882657442926473.Spec : Prop :=
  ∀ n, (P7897882657442926473.a n : ℤ) = A135522 n

theorem P7897882657442926473.correct : P7897882657442926473.Spec := by
  intro n
  simp only [A135522]

end A135522

/-! ## A135522.P9760630538086967296

`(5*3^n+3*(-1)^n)/4`
-/

namespace A135522.P9760630538086967296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) + 3 * (-1) ^ n : ℚ) / 4

end

end A135522.P9760630538086967296

namespace A135522

/-- `(5*3^n+3*(-1)^n)/4` -/
def P9760630538086967296.Spec : Prop :=
  ∀ n, P9760630538086967296.a n = (A135522 n : ℚ)

theorem P9760630538086967296.correct : P9760630538086967296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A135522, Nat.add_sub_cancel, A135522.P9760630538086967296.a, A135522.P7897882657442926473.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A135522, Nat.add_sub_cancel, A135522.P9760630538086967296.a, A135522.P7897882657442926473.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135522

/-! ## A135522.P15029199928840075819

`lcm(3, xor(1, -a(n-1)))` with `a(0)=2`
-/

namespace A135522.P15029199928840075819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 3 (Int.xor 1 (-(a (n - 1) : ℤ)))

end

end A135522.P15029199928840075819

namespace A135522

/-- `lcm(3, xor(1, -a(n-1)))` -/
def P15029199928840075819.Spec : Prop :=
  ∀ n, (P15029199928840075819.a n : ℤ) = A135522 n

end A135522

/-! ## A135522.P5939026293575297837

`abs(3*xor(1, -a(n-1)))` with `a(0)=2`
-/

namespace A135522.P5939026293575297837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |3 * Int.xor 1 (-a (n - 1))|

end

end A135522.P5939026293575297837

namespace A135522

/-- `abs(3*xor(1, -a(n-1)))` -/
def P5939026293575297837.Spec : Prop :=
  ∀ n, P5939026293575297837.a n = A135522 n

end A135522

/-! ## A135522.P16321404193653112518

`-3*xor(1, -a(n-1))` with `a(0)=2`
-/

namespace A135522.P16321404193653112518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -(3 * Int.xor 1 (-a (n - 1)))

end

end A135522.P16321404193653112518

namespace A135522

/-- `-3*xor(1, -a(n-1))` -/
def P16321404193653112518.Spec : Prop :=
  ∀ n, P16321404193653112518.a n = A135522 n

end A135522

/-! ## A135522.P10134395614397723

`3*(a(n-1)+(-1)^n)` with `a(0)=2`
-/

namespace A135522.P10134395614397723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (a (n - 1) + (-1) ^ n)

end

end A135522.P10134395614397723

namespace A135522

/-- `3*(a(n-1)+(-1)^n)` -/
def P10134395614397723.Spec : Prop :=
  ∀ n, P10134395614397723.a n = A135522 n

end A135522

/-! ## A135522.P15401402184808050446

`5*3^(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A135522.P15401402184808050446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  5 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A135522.P15401402184808050446

namespace A135522

/-- `5*3^(n-1)-a(n-1)` -/
def P15401402184808050446.Spec : Prop :=
  ∀ n, P15401402184808050446.a n = (A135522 n : ℚ)

end A135522

/-! ## A135522.P11134661735660507595

`Δ[3*(a(n-1)-char[2*n])]` with `a(0)=1`
-/

namespace A135522.P11134661735660507595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (f1 (n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135522.P11134661735660507595

namespace A135522

/-- `Δ[3*(a(n-1)-char[2*n])]` -/
def P11134661735660507595.Spec : Prop :=
  ∀ n, P11134661735660507595.a n = A135522 n

end A135522

/-! ## A135522.P8217196094240840448

`3*a(n-1)-(a(n-1)-3*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A135522.P8217196094240840448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 3 * a (n - 2))

end

end A135522.P8217196094240840448

namespace A135522

/-- `3*a(n-1)-(a(n-1)-3*a(n-2))` -/
def P8217196094240840448.Spec : Prop :=
  ∀ n, P8217196094240840448.a n = A135522 n

end A135522

/-! ## A135522.P18383988290889179986

`a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A135522.P18383988290889179986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A135522.P18383988290889179986

namespace A135522

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P18383988290889179986.Spec : Prop :=
  ∀ n, (P18383988290889179986.a n : ℤ) = A135522 n

theorem P18383988290889179986.correct : P18383988290889179986.Spec := by
  intro n
  simp only [A135522, Nat.add_sub_cancel, A135522.P18383988290889179986.a, A135522.P7897882657442926473.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135522

/-! ## A135522.P7565695052303192601

`A054878(n)+3^n`
-/

namespace A135522.P7565695052303192601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 n + (3 ^ n : ℤ)

end

end A135522.P7565695052303192601

namespace A135522

/-- `A054878(n)+3^n` -/
def P7565695052303192601.Spec : Prop :=
  ∀ n, P7565695052303192601.a n = A135522 n

end A135522

/-! ## A135522.P1464689446557146946

`abs(5*A084567(n)-3)`
-/

namespace A135522.P1464689446557146946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A084567 n - 3|

end

end A135522.P1464689446557146946

namespace A135522

/-- `abs(5*A084567(n)-3)` -/
def P1464689446557146946.Spec : Prop :=
  ∀ n, P1464689446557146946.a n = A135522 n

end A135522

/-! ## A135522.P12535412637131688029

`A060925(n)+A033999(n)`
-/

namespace A135522.P12535412637131688029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 n + A033999 n

end

end A135522.P12535412637131688029

namespace A135522

/-- `A060925(n)+A033999(n)` -/
def P12535412637131688029.Spec : Prop :=
  ∀ n, P12535412637131688029.a n = A135522 n

end A135522

/-! ## A135522.P13529127588203036072

`A102345(n)+A015518(n)`
-/

namespace A135522.P13529127588203036072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n + A015518 n

end

end A135522.P13529127588203036072

namespace A135522

/-- `A102345(n)+A015518(n)` -/
def P13529127588203036072.Spec : Prop :=
  ∀ n, P13529127588203036072.a n = A135522 n

end A135522

/-! ## A135522.P5913843874576471172

`A081250(n)+A059841(n)`
-/

namespace A135522.P5913843874576471172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 n + A059841 n

end

end A135522.P5913843874576471172

namespace A135522

/-- `A081250(n)+A059841(n)` -/
def P5913843874576471172.Spec : Prop :=
  ∀ n, P5913843874576471172.a n = A135522 n

end A135522

/-! ## A135522.P3298665852642142470

`A244762(n)+A028242(n)`
-/

namespace A135522.P3298665852642142470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 n + A028242 n

end

end A135522.P3298665852642142470

namespace A135522

/-- `A244762(n)+A028242(n)` -/
def P3298665852642142470.Spec : Prop :=
  ∀ n, P3298665852642142470.a n = A135522 n

end A135522

/-! ## A135522.P11884730107955605941

`A046717(n)+∑[A046717(n)]`
-/

namespace A135522.P11884730107955605941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135522.P11884730107955605941

namespace A135522

/-- `A046717(n)+∑[A046717(n)]` -/
def P11884730107955605941.Spec : Prop :=
  ∀ n, P11884730107955605941.a n = A135522 n

end A135522

/-! ## A135522.P16848622021940018190

`A046717(n)+A015518(n+1)`
-/

namespace A135522.P16848622021940018190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n + A015518 (n + 1)

end

end A135522.P16848622021940018190

namespace A135522

/-- `A046717(n)+A015518(n+1)` -/
def P16848622021940018190.Spec : Prop :=
  ∀ n, P16848622021940018190.a n = A135522 n

end A135522

/-! ## A135522.P3667278570803527591

`A024023(n)+A054878(n)+1`
-/

namespace A135522.P3667278570803527591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + (A054878 n + 1)

end

end A135522.P3667278570803527591

namespace A135522

/-- `A024023(n)+A054878(n)+1` -/
def P3667278570803527591.Spec : Prop :=
  ∀ n, P3667278570803527591.a n = A135522 n

end A135522

/-!
# A135523: a(n) = A007814(n) + A209229(n).

The programs for A135523, the canonical program `A135523.P14903418965496847472` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135523 has offset 1).

The definition of A135523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135523.P14903418965496847472

`A135560(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A135523

/-- `A135560(n+1)-1` -/
def P14903418965496847472.Spec : Prop :=
  ∀ n, P14903418965496847472.a n = A135523 (n + 1)

theorem P14903418965496847472.correct : P14903418965496847472.Spec := by
  intro n
  simp only [A135523, Nat.add_sub_cancel]

end A135523

/-! ## A135523.P3405375624304222684

`A007814(n+1)+A209229(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135523.P3405375624304222684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A209229 (n + 1)

end

end A135523.P3405375624304222684

namespace A135523

/-- `A007814(n+1)+A209229(n+1)` -/
def P3405375624304222684.Spec : Prop :=
  ∀ n, P3405375624304222684.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P7880314359143832565

`val(lt[n, xor(n, floor(n/2))], 2)`
-/

namespace A135523.P7880314359143832565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2

end

end A135523.P7880314359143832565

namespace A135523

/-- `val(lt[n, xor(n, floor(n/2))], 2)` -/
def P7880314359143832565.Spec : Prop :=
  ∀ n, (P7880314359143832565.a n : ℤ) = A135523 (n + 1)

end A135523

/-! ## A135523.P18294660680481980755

`(a(floor(n/2))+1)*n%2` with `a(0)=1`
-/

namespace A135523.P18294660680481980755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + 1) * (n % 2)

end

end A135523.P18294660680481980755

namespace A135523

/-- `(a(floor(n/2))+1)*n%2` -/
def P18294660680481980755.Spec : Prop :=
  ∀ n, (P18294660680481980755.a n : ℤ) = A135523 (n + 1)

end A135523

/-! ## A135523.P3651944111524321762

`char[2^n-1]+val(n+1, 2)`
-/

namespace A135523.P3651944111524321762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + SequenceMachineLib.valuation (n + 1) 2

end

end A135523.P3651944111524321762

namespace A135523

/-- `char[2^n-1]+val(n+1, 2)` -/
def P3651944111524321762.Spec : Prop :=
  ∀ n, (P3651944111524321762.a n : ℤ) = A135523 (n + 1)

end A135523

/-! ## A135523.P16402911629729675410

`val(2^floor(log2(n+1))+n+1, 2)`
-/

namespace A135523.P16402911629729675410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ Nat.log 2 (n + 1) + (n + 1)) 2

end

end A135523.P16402911629729675410

namespace A135523

/-- `val(2^floor(log2(n+1))+n+1, 2)` -/
def P16402911629729675410.Spec : Prop :=
  ∀ n, (P16402911629729675410.a n : ℤ) = A135523 (n + 1)

end A135523

/-! ## A135523.P10731786956519930332

`Δ[a(floor(n/2))+n+1]-1` with `a(0)=0`
-/

namespace A135523.P10731786956519930332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A135523.P10731786956519930332

namespace A135523

/-- `Δ[a(floor(n/2))+n+1]-1` -/
def P10731786956519930332.Spec : Prop :=
  ∀ n, P10731786956519930332.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P11328381988569579346

`Δ[floor(n/2+a(floor(n/2))+1)]` with `a(0)=1`
-/

namespace A135523.P11328381988569579346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / 2 + (f1 ⌊(n : ℚ) / 2⌋.toNat + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135523.P11328381988569579346

namespace A135523

/-- `Δ[floor(n/2+a(floor(n/2))+1)]` -/
def P11328381988569579346.Spec : Prop :=
  ∀ n, P11328381988569579346.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P7170382222643385190

`a(floor((n-1)/2))+1-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A135523.P7170382222643385190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (1 - a (n - 1))

end

end A135523.P7170382222643385190

namespace A135523

/-- `a(floor((n-1)/2))+1-a(n-1)` -/
def P7170382222643385190.Spec : Prop :=
  ∀ n, P7170382222643385190.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P4249726541718615423

`1-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=2`
-/

namespace A135523.P4249726541718615423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A135523.P4249726541718615423

namespace A135523

/-- `1-(a(n-1)-a(floor((n-1)/2)))` -/
def P4249726541718615423.Spec : Prop :=
  ∀ n, P4249726541718615423.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P5880492992173756021

`Δ[A080791(n)]+1`
-/

namespace A135523.P5880492992173756021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A135523.P5880492992173756021

namespace A135523

/-- `Δ[A080791(n)]+1` -/
def P5880492992173756021.Spec : Prop :=
  ∀ n, P5880492992173756021.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P14403570667425268522

`A089263(n+1)+1`
-/

namespace A135523.P14403570667425268522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (n + 1) + 1

end

end A135523.P14403570667425268522

namespace A135523

/-- `A089263(n+1)+1` -/
def P14403570667425268522.Spec : Prop :=
  ∀ n, P14403570667425268522.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P5627362752660723305

`floor(log2(A135561(n+1)))`
-/

namespace A135523.P5627362752660723305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A135561 (n + 1)).toNat

end

end A135523.P5627362752660723305

namespace A135523

/-- `floor(log2(A135561(n+1)))` -/
def P5627362752660723305.Spec : Prop :=
  ∀ n, (P5627362752660723305.a n : ℤ) = A135523 (n + 1)

end A135523

/-! ## A135523.P10687125649810554631

`floor(ratio[A294442(n+1)])`
-/

namespace A135523.P10687125649810554631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A135523.P10687125649810554631

namespace A135523

/-- `floor(ratio[A294442(n+1)])` -/
def P10687125649810554631.Spec : Prop :=
  ∀ n, P10687125649810554631.a n = A135523 (n + 1)

end A135523

/-! ## A135523.P6988748345531376349

`val(A319953(n)², 2)/2`
-/

namespace A135523.P6988748345531376349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A319953 n ^ 2).toNat 2 : ℚ) / 2

end

end A135523.P6988748345531376349

namespace A135523

/-- `val(A319953(n)², 2)/2` -/
def P6988748345531376349.Spec : Prop :=
  ∀ n, P6988748345531376349.a n = (A135523 (n + 1) : ℚ)

end A135523

/-! ## A135523.P5836419926330004159

`val(A004754(n+1)², 2)/2`
-/

namespace A135523.P5836419926330004159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A004754 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A135523.P5836419926330004159

namespace A135523

/-- `val(A004754(n+1)², 2)/2` -/
def P5836419926330004159.Spec : Prop :=
  ∀ n, P5836419926330004159.a n = (A135523 (n + 1) : ℚ)

end A135523

/-! ## A135523.P3975719270140918535

`val(A004758(n+1)², 2)/2`
-/

namespace A135523.P3975719270140918535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A004758 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A135523.P3975719270140918535

namespace A135523

/-- `val(A004758(n+1)², 2)/2` -/
def P3975719270140918535.Spec : Prop :=
  ∀ n, P3975719270140918535.a n = (A135523 (n + 1) : ℚ)

end A135523

/-! ## A135523.P17621523003573055884

`val(A129598(n+1)², 2)/2`
-/

namespace A135523.P17621523003573055884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A129598 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A135523.P17621523003573055884

namespace A135523

/-- `val(A129598(n+1)², 2)/2` -/
def P17621523003573055884.Spec : Prop :=
  ∀ n, P17621523003573055884.a n = (A135523 (n + 1) : ℚ)

end A135523

/-! ## A135523.P9272624130330972540

`val(A256017(n+1)², 2)/2`
-/

namespace A135523.P9272624130330972540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A256017 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A135523.P9272624130330972540

namespace A135523

/-- `val(A256017(n+1)², 2)/2` -/
def P9272624130330972540.Spec : Prop :=
  ∀ n, P9272624130330972540.a n = (A135523 (n + 1) : ℚ)

end A135523

/-! ## A135523.P8068461540979088800

`A089263(A004277(n+1))`
-/

namespace A135523.P8068461540979088800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A004277 (n + 1)).toNat

end

end A135523.P8068461540979088800

namespace A135523

/-- `A089263(A004277(n+1))` -/
def P8068461540979088800.Spec : Prop :=
  ∀ n, P8068461540979088800.a n = A135523 (n + 1)

end A135523

/-!
# A135524: Row sums of A137152.

The programs for A135524, there is no canonical definition to state claims against.
-/

/-! ## A135524.P5560392780066693585

`∑[A085730(n+1)]+n`
-/

namespace A135524.P5560392780066693585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A135524.P5560392780066693585

/-! ## A135524.P17068245417472086432

`∑[A055653(A000961(n+1))]`
-/

namespace A135524.P17068245417472086432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P17068245417472086432

/-! ## A135524.P10395886290106601323

`∑[A055653(A036116(n+1))]`
-/

namespace A135524.P10395886290106601323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A036116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P10395886290106601323

/-! ## A135524.P12694213481639147764

`∑[A055653(sqrt(A056798(n+1)))]`
-/

namespace A135524.P12694213481639147764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P12694213481639147764

/-! ## A135524.P4228383804584482186

`∑[A055653(record[A028233(n+1)])]`
-/

namespace A135524.P4228383804584482186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P4228383804584482186

/-! ## A135524.P11232294517564335470

`∑[A055653(record[A034699(n+1)])]`
-/

namespace A135524.P11232294517564335470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P11232294517564335470

/-! ## A135524.P10257704195699071713

`∑[A055653(record[A053585(n+1)])]`
-/

namespace A135524.P10257704195699071713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P10257704195699071713

/-! ## A135524.P10441417695514984600

`∑[A055653(record[A130065(n+1)])]`
-/

namespace A135524.P10441417695514984600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135524.P10441417695514984600

/-! ## A135524.P3449062001045232803

`∑[A000010(sqrt(A056798(n+1)))]+n`
-/

namespace A135524.P3449062001045232803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A135524.P3449062001045232803

/-! ## A135524.P6889239942346691120

`∑[A000010(record[A028233(n+1)])]+n`
-/

namespace A135524.P6889239942346691120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A135524.P6889239942346691120

/-!
# A135525: Row sums of terms > 1 in A137152.

The programs for A135525, there is no canonical definition to state claims against.
-/

/-! ## A135525.P8482673378834843454

`∑[A053139(A000961(n+1))]`
-/

namespace A135525.P8482673378834843454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P8482673378834843454

/-! ## A135525.P9755624747502160985

`∑[A053139(A036116(n+1))]`
-/

namespace A135525.P9755624747502160985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A036116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P9755624747502160985

/-! ## A135525.P3073899211286796467

`∑[A053139(sqrt(A056798(n+1)))]`
-/

namespace A135525.P3073899211286796467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P3073899211286796467

/-! ## A135525.P16147284730480295102

`∑[A092509(sqrt(A056798(n+1)))]`
-/

namespace A135525.P16147284730480295102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P16147284730480295102

/-! ## A135525.P8209873849992297220

`∑[A053139(record[A028233(n+1)])]`
-/

namespace A135525.P8209873849992297220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P8209873849992297220

/-! ## A135525.P13093101332780608875

`∑[A053139(record[A034684(n+1)])]`
-/

namespace A135525.P13093101332780608875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P13093101332780608875

/-! ## A135525.P5197022640727109901

`∑[A053139(lt[A001221(n+1), 2]+1)]`
-/

namespace A135525.P5197022640727109901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P5197022640727109901

/-! ## A135525.P5833610452754539164

`∑[A092509(lt[A001221(n+1), 2]+1)]`
-/

namespace A135525.P5833610452754539164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P5833610452754539164

/-! ## A135525.P17259707925301361108

`∑[A053139(record[(n+1)/A001221(n+1)!])]`
-/

namespace A135525.P17259707925301361108
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P17259707925301361108

/-! ## A135525.P2432621397665990056

`∑[A092509(record[(n+1)/A001221(n+1)!])]`
-/

namespace A135525.P2432621397665990056
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135525.P2432621397665990056

/-!
# A135526: Number of sums payable using exactly n banknotes of denominations 1, 5, 10, 20, 50, 100 (change allowable).

The programs for A135526, the canonical program `A135526.P1836972825123643707` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135526 has offset 0).

The definition of A135526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135526.P1836972825123643707

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6, a(2)=33, a(3)=95, a(4)=188, a(5)=288`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135526

/-- `2*a(n-1)-a(n-2)` -/
def P1836972825123643707.Spec : Prop :=
  ∀ n, P1836972825123643707.a n = A135526 n

theorem P1836972825123643707.correct : P1836972825123643707.Spec := by
  intro n
  simp only [A135526]

end A135526

/-!
# A135527: Number of polyenes with 2n carbon atoms.

The programs for A135527, there is no canonical definition to state claims against.
-/

/-! ## A135527.P9475025820322234839

`A108954(or(3, A149953(n)))`
-/

namespace A135527.P9475025820322234839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor 3 (A149953 n)).toNat

end

end A135527.P9475025820322234839

/-! ## A135527.P18040943897301248829

`A157271(A307496(n)+A212804(n))`
-/

namespace A135527.P18040943897301248829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A307496 n + A212804 n).toNat

end

end A135527.P18040943897301248829

/-!
# A135528: 1, then repeat 1,0.

The programs for A135528, the canonical program `A135528.P4460288723425439175` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135528 has offset 1).

The definition of A135528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135528.P4460288723425439175

`(n%2)^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135528

/-- `(n%2)^n` -/
def P4460288723425439175.Spec : Prop :=
  ∀ n, (P4460288723425439175.a n : ℤ) = A135528 (n + 1)

theorem P4460288723425439175.correct : P4460288723425439175.Spec := by
  intro n
  simp only [A135528, Nat.add_sub_cancel]

end A135528

/-!
# A135529: Guy Steele's sequence GS(4,5) (see A135416).

The programs for A135529, the canonical program `A135529.P1818459647299819142` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135529 has offset 1).

The definition of A135529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135533, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135529.P1818459647299819142

`A135533(n+1)+1-2^(A000120(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135529

/-- `A135533(n+1)+1-2^(A000120(n+1)-1)` -/
def P1818459647299819142.Spec : Prop :=
  ∀ n, P1818459647299819142.a n = (A135529 (n + 1) : ℚ)

end A135529

/-! ## A135529.P13746962283783276401

`gcd(2, n)*a(floor((n+1)/2)-1)+1-A059841(n)` with `a(0)=1`
-/

namespace A135529.P13746962283783276401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 n : ℤ) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1 - A059841 n

end

end A135529.P13746962283783276401

namespace A135529

/-- `gcd(2, n)*a(floor((n+1)/2)-1)+1-A059841(n)` -/
def P13746962283783276401.Spec : Prop :=
  ∀ n, P13746962283783276401.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P7725121937445039423

`A082560(n+1)-A071055(n)`
-/

namespace A135529.P7725121937445039423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082560 (n + 1) - A071055 n

end

end A135529.P7725121937445039423

namespace A135529

/-- `A082560(n+1)-A071055(n)` -/
def P7725121937445039423.Spec : Prop :=
  ∀ n, P7725121937445039423.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P6299044852527061812

`A135533(n+1)-A038573(A025480(n))`
-/

namespace A135529.P6299044852527061812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (n + 1) - A038573 (A025480 n).toNat

end

end A135529.P6299044852527061812

namespace A135529

/-- `A135533(n+1)-A038573(A025480(n))` -/
def P6299044852527061812.Spec : Prop :=
  ∀ n, P6299044852527061812.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P8724070787040102910

`A082560(n+1)+2-A000079(A000120(n+1))`
-/

namespace A135529.P8724070787040102910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082560 (n + 1) + (2 - A000079 (A000120 (n + 1)).toNat)

end

end A135529.P8724070787040102910

namespace A135529

/-- `A082560(n+1)+2-A000079(A000120(n+1))` -/
def P8724070787040102910.Spec : Prop :=
  ∀ n, P8724070787040102910.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P10631733085811143281

`A087808(A054429(n+1))`
-/

namespace A135529.P10631733085811143281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A054429 (n + 1)).toNat

end

end A135529.P10631733085811143281

namespace A135529

/-- `A087808(A054429(n+1))` -/
def P10631733085811143281.Spec : Prop :=
  ∀ n, P10631733085811143281.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P1460652393780455220

`A087808(A115304(n+1))`
-/

namespace A135529.P1460652393780455220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A115304 (n + 1)).toNat

end

end A135529.P1460652393780455220

namespace A135529

/-- `A087808(A115304(n+1))` -/
def P1460652393780455220.Spec : Prop :=
  ∀ n, P1460652393780455220.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P14446416041199407393

`A087808(A117120(n+1))`
-/

namespace A135529.P14446416041199407393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A117120 (n + 1)).toNat

end

end A135529.P14446416041199407393

namespace A135529

/-- `A087808(A117120(n+1))` -/
def P14446416041199407393.Spec : Prop :=
  ∀ n, P14446416041199407393.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P14869231034868438564

`A048675(A097246(A163511(n+1)))`
-/

namespace A135529.P14869231034868438564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A097246 (A163511 (n + 1)).toNat).toNat

end

end A135529.P14869231034868438564

namespace A135529

/-- `A048675(A097246(A163511(n+1)))` -/
def P14869231034868438564.Spec : Prop :=
  ∀ n, P14869231034868438564.a n = A135529 (n + 1)

end A135529

/-! ## A135529.P3270150020684283821

`A048675(A163511(n+1))`
-/

namespace A135529.P3270150020684283821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A163511 (n + 1)).toNat

end

end A135529.P3270150020684283821

namespace A135529

/-- `A048675(A163511(n+1))` -/
def P3270150020684283821.Spec : Prop :=
  ∀ n, P3270150020684283821.a n = A135529 (n + 1)

end A135529

/-!
# A135530: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3), with a(0)=2, a(1)=1.

The programs for A135530, the canonical program `A135530.P18265954216865428694` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135530 has offset 0).

The definition of A135530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A135530.P18265954216865428694`, by `A135530.P18265954216865428694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135530.P18265954216865428694

`2*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135530

/-- `2*a(n-2)` -/
def P18265954216865428694.Spec : Prop :=
  ∀ n, (P18265954216865428694.a n : ℤ) = A135530 n

theorem P18265954216865428694.correct : P18265954216865428694.Spec := by
  intro n
  simp only [A135530]

end A135530

/-! ## A135530.P13326330243764965563

`A076736(n+4)`
-/

namespace A135530.P13326330243764965563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 4)

end

end A135530.P13326330243764965563

namespace A135530

/-- `A076736(n+4)` -/
def P13326330243764965563.Spec : Prop :=
  ∀ n, P13326330243764965563.a n = A135530 n

end A135530

/-! ## A135530.P910494614113934222

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=1, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135530.P910494614113934222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A135530.P910494614113934222

namespace A135530

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P910494614113934222.Spec : Prop :=
  ∀ n, P910494614113934222.a n = A135530 n

end A135530

/-! ## A135530.P18080561144504225288

`2^ceil(xor(1, n)/2)`
-/

namespace A135530.P18080561144504225288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(Nat.xor 1 n : ℚ) / 2⌉ : ℤ)

end

end A135530.P18080561144504225288

namespace A135530

/-- `2^ceil(xor(1, n)/2)` -/
def P18080561144504225288.Spec : Prop :=
  ∀ n, P18080561144504225288.a n = (A135530 n : ℚ)

end A135530

/-! ## A135530.P6635711913301681867

`2^round(xor(1, n)/2)`
-/

namespace A135530.P6635711913301681867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) : ℤ)

end

end A135530.P6635711913301681867

namespace A135530

/-- `2^round(xor(1, n)/2)` -/
def P6635711913301681867.Spec : Prop :=
  ∀ n, P6635711913301681867.a n = (A135530 n : ℚ)

end A135530

/-! ## A135530.P4643568264836483156

`2^Δ[ceil((n/2)²)]`
-/

namespace A135530.P4643568264836483156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A135530.P4643568264836483156

namespace A135530

/-- `2^Δ[ceil((n/2)²)]` -/
def P4643568264836483156.Spec : Prop :=
  ∀ n, P4643568264836483156.a n = (A135530 n : ℚ)

end A135530

/-! ## A135530.P3268946996909839424

`∏[gcd(2, n)]/gcd(2, n+1)`
-/

namespace A135530.P3268946996909839424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A135530.P3268946996909839424

namespace A135530

/-- `∏[gcd(2, n)]/gcd(2, n+1)` -/
def P3268946996909839424.Spec : Prop :=
  ∀ n, P3268946996909839424.a n = (A135530 n : ℚ)

end A135530

/-! ## A135530.P10147241704656655307

`a(n-2)/sqrt(1/4)` with `a(0)=2, a(1)=1`
-/

namespace A135530.P10147241704656655307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A135530.P10147241704656655307

namespace A135530

/-- `a(n-2)/sqrt(1/4)` -/
def P10147241704656655307.Spec : Prop :=
  ∀ n, P10147241704656655307.a n = (A135530 n : ℝ)

end A135530

/-! ## A135530.P15031481479597699615

`a(n-2)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A135530.P15031481479597699615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A135530.P15031481479597699615

namespace A135530

/-- `a(n-2)+a(n-2)` -/
def P15031481479597699615.Spec : Prop :=
  ∀ n, (P15031481479597699615.a n : ℤ) = A135530 n

theorem P15031481479597699615.correct : P15031481479597699615.Spec := by
  intro n
  simp only [A135530, Nat.add_sub_cancel, A135530.P15031481479597699615.a, A135530.P18265954216865428694.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135530

/-! ## A135530.P8357073664033555247

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135530.P8357073664033555247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A135530.P8357073664033555247

namespace A135530

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P8357073664033555247.Spec : Prop :=
  ∀ n, P8357073664033555247.a n = A135530 n

end A135530

/-! ## A135530.P11906389292776037622

`a(n-2)-(C(n-1, n)-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A135530.P11906389292776037622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) - ((Nat.choose ((n : ℤ) - 1).toNat n : ℤ) - a (n - 2))

end

end A135530.P11906389292776037622

namespace A135530

/-- `a(n-2)-(C(n-1, n)-a(n-2))` -/
def P11906389292776037622.Spec : Prop :=
  ∀ n, P11906389292776037622.a n = A135530 n

end A135530

/-! ## A135530.P12183682267229430068

`A316742(n)+1`
-/

namespace A135530.P12183682267229430068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n + 1

end

end A135530.P12183682267229430068

namespace A135530

/-- `A316742(n)+1` -/
def P12183682267229430068.Spec : Prop :=
  ∀ n, P12183682267229430068.a n = A135530 n

end A135530

/-! ## A135530.P7415060934279700815

`A060546(xor(1, n))`
-/

namespace A135530.P7415060934279700815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (Nat.xor 1 n)

end

end A135530.P7415060934279700815

namespace A135530

/-- `A060546(xor(1, n))` -/
def P7415060934279700815.Spec : Prop :=
  ∀ n, P7415060934279700815.a n = A135530 n

end A135530

/-! ## A135530.P9216328944147675594

`abs(A137206(n+1))`
-/

namespace A135530.P9216328944147675594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137206 (n + 1)|

end

end A135530.P9216328944147675594

namespace A135530

/-- `abs(A137206(n+1))` -/
def P9216328944147675594.Spec : Prop :=
  ∀ n, P9216328944147675594.a n = A135530 n

end A135530

/-! ## A135530.P7517161451268165115

`A016116(xor(1, n)+1)`
-/

namespace A135530.P7517161451268165115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Nat.xor 1 n + 1)

end

end A135530.P7517161451268165115

namespace A135530

/-- `A016116(xor(1, n)+1)` -/
def P7517161451268165115.Spec : Prop :=
  ∀ n, P7517161451268165115.a n = A135530 n

end A135530

/-! ## A135530.P13949925439807273390

`A131572(xor(1, n)+1)`
-/

namespace A135530.P13949925439807273390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (Nat.xor 1 n + 1)

end

end A135530.P13949925439807273390

namespace A135530

/-- `A131572(xor(1, n)+1)` -/
def P13949925439807273390.Spec : Prop :=
  ∀ n, P13949925439807273390.a n = A135530 n

end A135530

/-! ## A135530.P13288967546489896977

`gcd(2, n)*A016116(n)`
-/

namespace A135530.P13288967546489896977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A016116 n

end

end A135530.P13288967546489896977

namespace A135530

/-- `gcd(2, n)*A016116(n)` -/
def P13288967546489896977.Spec : Prop :=
  ∀ n, P13288967546489896977.a n = A135530 n

end A135530

/-! ## A135530.P10159561465230598747

`abs(Δ[A117575(n+1)])`
-/

namespace A135530.P10159561465230598747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A135530.P10159561465230598747

namespace A135530

/-- `abs(Δ[A117575(n+1)])` -/
def P10159561465230598747.Spec : Prop :=
  ∀ n, P10159561465230598747.a n = A135530 n

end A135530

/-!
# A135532: a(n) = 2*a(n-1) + a(n-2), with a(0)= -1, a(1)= 3.

The programs for A135532, the canonical program `A135532.P12657360719891866015` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135532 has offset 0).

The definition of A135532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A135532.P12657360719891866015`, by `A135532.P12657360719891866015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135532.P12657360719891866015

`2*a(n-1)+a(n-2)` with `a(0)=-1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135532

/-- `2*a(n-1)+a(n-2)` -/
def P12657360719891866015.Spec : Prop :=
  ∀ n, P12657360719891866015.a n = A135532 n

theorem P12657360719891866015.correct : P12657360719891866015.Spec := by
  intro n
  simp only [A135532]

end A135532

/-! ## A135532.P5875810642373204808

`5*A000129(n)-A000129(n+1)`
-/

namespace A135532.P5875810642373204808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000129 n - A000129 (n + 1)

end

end A135532.P5875810642373204808

namespace A135532

/-- `5*A000129(n)-A000129(n+1)` -/
def P5875810642373204808.Spec : Prop :=
  ∀ n, P5875810642373204808.a n = A135532 n

end A135532

/-! ## A135532.P15055822918109966667

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-1, a(1)=3`
-/

namespace A135532.P15055822918109966667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A135532.P15055822918109966667

namespace A135532

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P15055822918109966667.Spec : Prop :=
  ∀ n, P15055822918109966667.a n = A135532 n

theorem P15055822918109966667.correct : P15055822918109966667.Spec := by
  intro n
  simp only [A135532, Nat.add_sub_cancel, A135532.P15055822918109966667.a, A135532.P12657360719891866015.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135532

/-! ## A135532.P10394917817666771470

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=-1, a(1)=3`
-/

namespace A135532.P10394917817666771470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A135532.P10394917817666771470

namespace A135532

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P10394917817666771470.Spec : Prop :=
  ∀ n, P10394917817666771470.a n = A135532 n

theorem P10394917817666771470.correct : P10394917817666771470.Spec := by
  intro n
  simp only [A135532, Nat.add_sub_cancel, A135532.P10394917817666771470.a, A135532.P12657360719891866015.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135532

/-! ## A135532.P6327677252989645931

`A266505(2*n)`
-/

namespace A135532.P6327677252989645931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n)

end

end A135532.P6327677252989645931

namespace A135532

/-- `A266505(2*n)` -/
def P6327677252989645931.Spec : Prop :=
  ∀ n, P6327677252989645931.a n = A135532 n

end A135532

/-! ## A135532.P17179593060416583503

`2*A353580(n)-1`
-/

namespace A135532.P17179593060416583503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353580 n - 1

end

end A135532.P17179593060416583503

namespace A135532

/-- `2*A353580(n)-1` -/
def P17179593060416583503.Spec : Prop :=
  ∀ n, P17179593060416583503.a n = A135532 n

end A135532

/-! ## A135532.P10146095658914097595

`A266506(3*n+n+1)`
-/

namespace A135532.P10146095658914097595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (3 * n + (n + 1))

end

end A135532.P10146095658914097595

namespace A135532

/-- `A266506(3*n+n+1)` -/
def P10146095658914097595.Spec : Prop :=
  ∀ n, P10146095658914097595.a n = A135532 n

end A135532

/-! ## A135532.P7273395331549496609

`A078343(n)+A000129(n)`
-/

namespace A135532.P7273395331549496609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A000129 n

end

end A135532.P7273395331549496609

namespace A135532

/-- `A078343(n)+A000129(n)` -/
def P7273395331549496609.Spec : Prop :=
  ∀ n, P7273395331549496609.a n = A135532 n

end A135532

/-! ## A135532.P18261948892672889065

`A078343(n)+A174191(n)-1`
-/

namespace A135532.P18261948892672889065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A174191 n - 1)

end

end A135532.P18261948892672889065

namespace A135532

/-- `A078343(n)+A174191(n)-1` -/
def P18261948892672889065.Spec : Prop :=
  ∀ n, P18261948892672889065.a n = A135532 n

end A135532

/-! ## A135532.P15057326702996344516

`A078343(n)+A002965(2*n)`
-/

namespace A135532.P15057326702996344516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A002965 (2 * n)

end

end A135532.P15057326702996344516

namespace A135532

/-- `A078343(n)+A002965(2*n)` -/
def P15057326702996344516.Spec : Prop :=
  ∀ n, P15057326702996344516.a n = A135532 n

end A135532

/-! ## A135532.P9449779864490466664

`A001333(n)+A221172(n)-A000129(n)`
-/

namespace A135532.P9449779864490466664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A221172 n - A000129 n)

end

end A135532.P9449779864490466664

namespace A135532

/-- `A001333(n)+A221172(n)-A000129(n)` -/
def P9449779864490466664.Spec : Prop :=
  ∀ n, P9449779864490466664.a n = A135532 n

end A135532

/-! ## A135532.P8702283641629205476

`A001333(n)+A221173(n)-A078343(n)`
-/

namespace A135532.P8702283641629205476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A221173 n - A078343 n)

end

end A135532.P8702283641629205476

namespace A135532

/-- `A001333(n)+A221173(n)-A078343(n)` -/
def P8702283641629205476.Spec : Prop :=
  ∀ n, P8702283641629205476.a n = A135532 n

end A135532

/-! ## A135532.P5179658919676226189

`A001333(n)+A221174(n)-A221172(n)`
-/

namespace A135532.P5179658919676226189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A221174 n - A221172 n)

end

end A135532.P5179658919676226189

namespace A135532

/-- `A001333(n)+A221174(n)-A221172(n)` -/
def P5179658919676226189.Spec : Prop :=
  ∀ n, P5179658919676226189.a n = A135532 n

end A135532

/-! ## A135532.P2618590793581682699

`A111954(n+1)+A111955(n)-A001333(n)`
-/

namespace A135532.P2618590793581682699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (n + 1) + (A111955 n - A001333 n)

end

end A135532.P2618590793581682699

namespace A135532

/-- `A111954(n+1)+A111955(n)-A001333(n)` -/
def P2618590793581682699.Spec : Prop :=
  ∀ n, P2618590793581682699.a n = A135532 n

end A135532

/-! ## A135532.P12219798603912768511

`A001333(n+1)+A137199(n+1)-A051927(n)`
-/

namespace A135532.P12219798603912768511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A137199 (n + 1) - A051927 n)

end

end A135532.P12219798603912768511

namespace A135532

/-- `A001333(n+1)+A137199(n+1)-A051927(n)` -/
def P12219798603912768511.Spec : Prop :=
  ∀ n, P12219798603912768511.a n = A135532 n

end A135532

/-! ## A135532.P8037903039059762268

`A163271(n+1)+A163271(n+1)-A001333(n)`
-/

namespace A135532.P8037903039059762268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + (A163271 (n + 1) - A001333 n)

end

end A135532.P8037903039059762268

namespace A135532

/-- `A163271(n+1)+A163271(n+1)-A001333(n)` -/
def P8037903039059762268.Spec : Prop :=
  ∀ n, P8037903039059762268.a n = A135532 n

end A135532

/-! ## A135532.P12760931232236160768

`A097075(n+1)+A097075(n+1)-A137199(n)`
-/

namespace A135532.P12760931232236160768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + (A097075 (n + 1) - A137199 n)

end

end A135532.P12760931232236160768

namespace A135532

/-- `A097075(n+1)+A097075(n+1)-A137199(n)` -/
def P12760931232236160768.Spec : Prop :=
  ∀ n, P12760931232236160768.a n = A135532 n

end A135532

/-! ## A135532.P12213275486535630696

`Δ[Δ[A353580(n)]]`
-/

namespace A135532.P12213275486535630696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135532.P12213275486535630696

namespace A135532

/-- `Δ[Δ[A353580(n)]]` -/
def P12213275486535630696.Spec : Prop :=
  ∀ n, P12213275486535630696.a n = A135532 n

end A135532

/-! ## A135532.P1847167948561027561

`Δ[A266504(2*n)]`
-/

namespace A135532.P1847167948561027561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135532.P1847167948561027561

namespace A135532

/-- `Δ[A266504(2*n)]` -/
def P1847167948561027561.Spec : Prop :=
  ∀ n, P1847167948561027561.a n = A135532 n

end A135532

/-!
# A135533: Guy Steele's sequence GS(4,6) (see A135416).

The programs for A135533, the canonical program `A135533.P809849591234612162` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135533 has offset 1).

The definition of A135533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135533.P809849591234612162

`gcd(2, n)*a(floor((n+1)/2)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135533

/-- `gcd(2, n)*a(floor((n+1)/2)-1)+1` -/
def P809849591234612162.Spec : Prop :=
  ∀ n, (P809849591234612162.a n : ℤ) = A135533 (n + 1)

theorem P809849591234612162.correct : P809849591234612162.Spec := by
  intro n
  simp only [A135533, Nat.add_sub_cancel]

end A135533

/-! ## A135533.P893253493597422931

`A135529(n+1)+A048896(n)-1`
-/

namespace A135533.P893253493597422931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) + (A048896 n - 1)

end

end A135533.P893253493597422931

namespace A135533

/-- `A135529(n+1)+A048896(n)-1` -/
def P893253493597422931.Spec : Prop :=
  ∀ n, P893253493597422931.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P18207946923287070729

`A135529(n+1)+A071055(n)/2`
-/

namespace A135533.P18207946923287070729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135529 (n + 1) : ℚ) + (A071055 n : ℚ) / 2

end

end A135533.P18207946923287070729

namespace A135533

/-- `A135529(n+1)+A071055(n)/2` -/
def P18207946923287070729.Spec : Prop :=
  ∀ n, P18207946923287070729.a n = (A135533 (n + 1) : ℚ)

end A135533

/-! ## A135533.P16669261853584313654

`A082560(n+1)-A071055(n)/2`
-/

namespace A135533.P16669261853584313654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082560 (n + 1) : ℚ) - (A071055 n : ℚ) / 2

end

end A135533.P16669261853584313654

namespace A135533

/-- `A082560(n+1)-A071055(n)/2` -/
def P16669261853584313654.Spec : Prop :=
  ∀ n, P16669261853584313654.a n = (A135533 (n + 1) : ℚ)

end A135533

/-! ## A135533.P10525158458474968871

`A048896(n)+a(A162751(n)-1)` with `a(0)=1`
-/

namespace A135533.P10525158458474968871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048896 n + a (A162751 n - 1).toNat

end

end A135533.P10525158458474968871

namespace A135533

/-- `A048896(n)+a(A162751(n)-1)` -/
def P10525158458474968871.Spec : Prop :=
  ∀ n, P10525158458474968871.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P2827827272929885672

`A135529(n+1)+A049773(A071055(n)+1)-1`
-/

namespace A135533.P2827827272929885672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) + (A049773 (A071055 n + 1).toNat - 1)

end

end A135533.P2827827272929885672

namespace A135533

/-- `A135529(n+1)+A049773(A071055(n)+1)-1` -/
def P2827827272929885672.Spec : Prop :=
  ∀ n, P2827827272929885672.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P15508377356654247289

`A135529(n+1)+A038573(A038573(n+1)-1)`
-/

namespace A135533.P15508377356654247289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) + A038573 (A038573 (n + 1) - 1).toNat

end

end A135533.P15508377356654247289

namespace A135533

/-- `A135529(n+1)+A038573(A038573(n+1)-1)` -/
def P15508377356654247289.Spec : Prop :=
  ∀ n, P15508377356654247289.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P5447472199081799022

`A135542(A054429(n+1))`
-/

namespace A135533.P5447472199081799022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (A054429 (n + 1)).toNat

end

end A135533.P5447472199081799022

namespace A135533

/-- `A135542(A054429(n+1))` -/
def P5447472199081799022.Spec : Prop :=
  ∀ n, P5447472199081799022.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P4260550057573050284

`A087808(A010078(n+2))-1`
-/

namespace A135533.P4260550057573050284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A010078 (n + 2)).toNat - 1

end

end A135533.P4260550057573050284

namespace A135533

/-- `A087808(A010078(n+2))-1` -/
def P4260550057573050284.Spec : Prop :=
  ∀ n, P4260550057573050284.a n = A135533 (n + 1)

end A135533

/-! ## A135533.P2637873821504765164

`A087808(A370762(n))`
-/

namespace A135533.P2637873821504765164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A370762 n).toNat

end

end A135533.P2637873821504765164

namespace A135533

/-- `A087808(A370762(n))` -/
def P2637873821504765164.Spec : Prop :=
  ∀ n, P2637873821504765164.a n = A135533 (n + 1)

end A135533

/-!
# A135534: a(1) = 1; for n>=1, a(2n) = A135561(n), a(2n+1) = 0.

The programs for A135534, the canonical program `A135534.P11420511208218966614` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135534 has offset 1).

The definition of A135534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135534.P10604754727343041800

`Δ[2^ceil(log2(n+1))]+and(n, -(n+2))`
-/

namespace A135534.P10604754727343041800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Int.land (n : ℤ) (-(n + 2 : ℤ)) : ℚ)

end

end A135534.P10604754727343041800

namespace A135534

/-- `Δ[2^ceil(log2(n+1))]+and(n, -(n+2))` -/
def P10604754727343041800.Spec : Prop :=
  ∀ n, P10604754727343041800.a n = (A135534 (n + 1) : ℚ)

end A135534

/-! ## A135534.P11420511208218966614

`or((a(floor(n/2))+1)*n%2, and(n, -(n+2)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135534

/-- `or((a(floor(n/2))+1)*n%2, and(n, -(n+2)))` -/
def P11420511208218966614.Spec : Prop :=
  ∀ n, P11420511208218966614.a n = A135534 (n + 1)

theorem P11420511208218966614.correct : P11420511208218966614.Spec := by
  intro n
  simp only [A135534, Nat.add_sub_cancel]

end A135534

/-! ## A135534.P3968173770632420120

`floor(A135561(n+1)/2)`
-/

namespace A135534.P3968173770632420120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135561 (n + 1) : ℚ) / 2⌋

end

end A135534.P3968173770632420120

namespace A135534

/-- `floor(A135561(n+1)/2)` -/
def P3968173770632420120.Spec : Prop :=
  ∀ n, P3968173770632420120.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P8821353775583351643

`2^A135523(n+1)-1`
-/

namespace A135534.P8821353775583351643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A135523 (n + 1) : ℤ) - 1

end

end A135534.P8821353775583351643

namespace A135534

/-- `2^A135523(n+1)-1` -/
def P8821353775583351643.Spec : Prop :=
  ∀ n, P8821353775583351643.a n = (A135534 (n + 1) : ℚ)

end A135534

/-! ## A135534.P1239793759122084061

`A054429(n+1)%(xor(n, n+1)+1)`
-/

namespace A135534.P1239793759122084061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054429 (n + 1)) (Nat.xor n (n + 1) + 1 : ℤ)

end

end A135534.P1239793759122084061

namespace A135534

/-- `A054429(n+1)%(xor(n, n+1)+1)` -/
def P1239793759122084061.Spec : Prop :=
  ∀ n, P1239793759122084061.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P14970226463397321598

`A000225(char[2^n-1]+val(n+1, 2))`
-/

namespace A135534.P14970226463397321598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + SequenceMachineLib.valuation (n + 1) 2)

end

end A135534.P14970226463397321598

namespace A135534

/-- `A000225(char[2^n-1]+val(n+1, 2))` -/
def P14970226463397321598.Spec : Prop :=
  ∀ n, P14970226463397321598.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P7426980059465777327

`A000203(2^val(n+1, 2))-(2^val(n+1, 2))%(n+1)`
-/

namespace A135534.P7426980059465777327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ SequenceMachineLib.valuation (n + 1) 2) - ((2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1) : ℕ) : ℤ)

end

end A135534.P7426980059465777327

namespace A135534

/-- `A000203(2^val(n+1, 2))-(2^val(n+1, 2))%(n+1)` -/
def P7426980059465777327.Spec : Prop :=
  ∀ n, P7426980059465777327.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P17129918612727511135

`A135481(A209639(n))`
-/

namespace A135534.P17129918612727511135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A209639 n).toNat

end

end A135534.P17129918612727511135

namespace A135534

/-- `A135481(A209639(n))` -/
def P17129918612727511135.Spec : Prop :=
  ∀ n, P17129918612727511135.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P7856327452769319632

`A000225(A135523(n+1))`
-/

namespace A135534.P7856327452769319632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A135523 (n + 1)).toNat

end

end A135534.P7856327452769319632

namespace A135534

/-- `A000225(A135523(n+1))` -/
def P7856327452769319632.Spec : Prop :=
  ∀ n, P7856327452769319632.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P5202418095998371224

`A135481(A054429(n+1))`
-/

namespace A135534.P5202418095998371224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A054429 (n + 1)).toNat

end

end A135534.P5202418095998371224

namespace A135534

/-- `A135481(A054429(n+1))` -/
def P5202418095998371224.Spec : Prop :=
  ∀ n, P5202418095998371224.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P15217912331026269909

`A135481(A001316(n)+n)`
-/

namespace A135534.P15217912331026269909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A001316 n + (n : ℤ)).toNat

end

end A135534.P15217912331026269909

namespace A135534

/-- `A135481(A001316(n)+n)` -/
def P15217912331026269909.Spec : Prop :=
  ∀ n, P15217912331026269909.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P4971659400660103585

`A135481(A099894(n)+n)`
-/

namespace A135534.P4971659400660103585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A099894 n + (n : ℤ)).toNat

end

end A135534.P4971659400660103585

namespace A135534

/-- `A135481(A099894(n)+n)` -/
def P4971659400660103585.Spec : Prop :=
  ∀ n, P4971659400660103585.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P11641114023472924791

`A135481(xor(n, A099894(n)))`
-/

namespace A135534.P11641114023472924791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (Int.xor (n : ℤ) (A099894 n)).toNat

end

end A135534.P11641114023472924791

namespace A135534

/-- `A135481(xor(n, A099894(n)))` -/
def P11641114023472924791.Spec : Prop :=
  ∀ n, P11641114023472924791.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P5007879602038142233

`A000225(A089263(n+1)+1)`
-/

namespace A135534.P5007879602038142233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A089263 (n + 1) + 1).toNat

end

end A135534.P5007879602038142233

namespace A135534

/-- `A000225(A089263(n+1)+1)` -/
def P5007879602038142233.Spec : Prop :=
  ∀ n, P5007879602038142233.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P7354561718451861072

`A000225(A135560(n+1)-1)`
-/

namespace A135534.P7354561718451861072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A135560 (n + 1) - 1).toNat

end

end A135534.P7354561718451861072

namespace A135534

/-- `A000225(A135560(n+1)-1)` -/
def P7354561718451861072.Spec : Prop :=
  ∀ n, P7354561718451861072.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P7252195667271412316

`A209639(n)%A171977(n+1)`
-/

namespace A135534.P7252195667271412316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209639 n) (A171977 (n + 1))

end

end A135534.P7252195667271412316

namespace A135534

/-- `A209639(n)%A171977(n+1)` -/
def P7252195667271412316.Spec : Prop :=
  ∀ n, P7252195667271412316.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P606002846096519514

`and(A038712(n+1), A209639(n))`
-/

namespace A135534.P606002846096519514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038712 (n + 1)) (A209639 n)

end

end A135534.P606002846096519514

namespace A135534

/-- `and(A038712(n+1), A209639(n))` -/
def P606002846096519514.Spec : Prop :=
  ∀ n, P606002846096519514.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P5992572449863463413

`and(A135561(n+1), A209639(n))`
-/

namespace A135534.P5992572449863463413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135561 (n + 1)) (A209639 n)

end

end A135534.P5992572449863463413

namespace A135534

/-- `and(A135561(n+1), A209639(n))` -/
def P5992572449863463413.Spec : Prop :=
  ∀ n, P5992572449863463413.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P13921170120749058535

`A000010(A135561(n+1)+1)-1`
-/

namespace A135534.P13921170120749058535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A135561 (n + 1) + 1).toNat - 1

end

end A135534.P13921170120749058535

namespace A135534

/-- `A000010(A135561(n+1)+1)-1` -/
def P13921170120749058535.Spec : Prop :=
  ∀ n, P13921170120749058535.a n = A135534 (n + 1)

end A135534

/-! ## A135534.P9883350470244854429

`A000079(A135560(n+1)-1)-1`
-/

namespace A135534.P9883350470244854429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A135560 (n + 1) - 1).toNat - 1

end

end A135534.P9883350470244854429

namespace A135534

/-- `A000079(A135560(n+1)-1)-1` -/
def P9883350470244854429.Spec : Prop :=
  ∀ n, P9883350470244854429.a n = A135534 (n + 1)

end A135534

/-!
# A135535: Primes of the form 4^k - 3.

The programs for A135535, there is no canonical definition to state claims against.
-/

/-! ## A135535.P1777028652136340264

`4^A059266(n+1)-3`
-/

namespace A135535.P1777028652136340264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A059266 (n + 1) : ℤ) - 3

end

end A135535.P1777028652136340264

/-! ## A135535.P1955430623636223098

`A104089(A059266(n+1))`
-/

namespace A135535.P1955430623636223098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104089 (A059266 (n + 1)).toNat

end

end A135535.P1955430623636223098

/-! ## A135535.P15005086276261240239

`∩[A057674(n), A101622(n)]`
-/

namespace A135535.P15005086276261240239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135535.P15005086276261240239

/-! ## A135535.P5401941349639829633

`A036563(2*A059266(n+1))`
-/

namespace A135535.P5401941349639829633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (2 * A059266 (n + 1)).toNat

end

end A135535.P5401941349639829633

/-! ## A135535.P4594634950220148544

`A093810(2*A059266(n+1))`
-/

namespace A135535.P4594634950220148544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093810 (2 * A059266 (n + 1)).toNat

end

end A135535.P4594634950220148544

/-!
# A135536: a(n) = 8*a(n-2), with a(0) = 7, a(1) = 14.

The programs for A135536, the canonical program `A135536.P7223577628417355186` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135536 has offset 0).

The definition of A135536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A135536.P7223577628417355186`, by `A135536.P7223577628417355186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135536.P7223577628417355186

`8*a(n-2)` with `a(0)=7, a(1)=14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135536

/-- `8*a(n-2)` -/
def P7223577628417355186.Spec : Prop :=
  ∀ n, (P7223577628417355186.a n : ℤ) = A135536 n

theorem P7223577628417355186.correct : P7223577628417355186.Spec := by
  intro n
  simp only [A135536]

end A135536

/-! ## A135536.P8207789653802745883

`7*abs(A094014(n))`
-/

namespace A135536.P8207789653802745883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * |A094014 n|

end

end A135536.P8207789653802745883

namespace A135536

/-- `7*abs(A094014(n))` -/
def P8207789653802745883.Spec : Prop :=
  ∀ n, P8207789653802745883.a n = A135536 n

end A135536

/-! ## A135536.P10947921685520234140

`∏[6-a(n-1)]` with `a(0)=7, a(1)=2`
-/

namespace A135536.P10947921685520234140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P10947921685520234140

namespace A135536

/-- `∏[6-a(n-1)]` -/
def P10947921685520234140.Spec : Prop :=
  ∀ n, P10947921685520234140.a n = A135536 n

end A135536

/-! ## A135536.P2002729697752046920

`7*2^floor(3*n/2)`
-/

namespace A135536.P2002729697752046920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (2 : ℚ) ^ (⌊3 * ((n : ℚ) / 2)⌋ : ℤ)

end

end A135536.P2002729697752046920

namespace A135536

/-- `7*2^floor(3*n/2)` -/
def P2002729697752046920.Spec : Prop :=
  ∀ n, P2002729697752046920.a n = (A135536 n : ℚ)

end A135536

/-! ## A135536.P6607501058935118324

`lcm(7, -∏[-2*gcd(2, n)]/4)`
-/

namespace A135536.P6607501058935118324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Nat.gcd 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (SequenceMachineLib.roundAway (-(((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)))

end

end A135536.P6607501058935118324

namespace A135536

/-- `lcm(7, -∏[-2*gcd(2, n)]/4)` -/
def P6607501058935118324.Spec : Prop :=
  ∀ n, (P6607501058935118324.a n : ℤ) = A135536 n

end A135536

/-! ## A135536.P4343054671688942785

`lcm(7, A094014(n))`
-/

namespace A135536.P4343054671688942785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A094014 n)

end

end A135536.P4343054671688942785

namespace A135536

/-- `lcm(7, A094014(n))` -/
def P4343054671688942785.Spec : Prop :=
  ∀ n, (P4343054671688942785.a n : ℤ) = A135536 n

end A135536

/-! ## A135536.P231703148522324060

`∏[A001178(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P231703148522324060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A001178 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P231703148522324060

namespace A135536

/-- `∏[A001178(a(n-1))]` -/
def P231703148522324060.Spec : Prop :=
  ∀ n, P231703148522324060.a n = A135536 n

end A135536

/-! ## A135536.P4670418463066953016

`∏[A004551(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P4670418463066953016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A004551 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P4670418463066953016

namespace A135536

/-- `∏[A004551(a(n-1))]` -/
def P4670418463066953016.Spec : Prop :=
  ∀ n, P4670418463066953016.a n = A135536 n

end A135536

/-! ## A135536.P17372203060927336879

`∏[A005681(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P17372203060927336879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A005681 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P17372203060927336879

namespace A135536

/-- `∏[A005681(a(n-1))]` -/
def P17372203060927336879.Spec : Prop :=
  ∀ n, P17372203060927336879.a n = A135536 n

end A135536

/-! ## A135536.P886424713862284592

`∏[A010252(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P886424713862284592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A010252 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P886424713862284592

namespace A135536

/-- `∏[A010252(a(n-1))]` -/
def P886424713862284592.Spec : Prop :=
  ∀ n, P886424713862284592.a n = A135536 n

end A135536

/-! ## A135536.P453807866069572670

`∏[A031351(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P453807866069572670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A031351 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P453807866069572670

namespace A135536

/-- `∏[A031351(a(n-1))]` -/
def P453807866069572670.Spec : Prop :=
  ∀ n, P453807866069572670.a n = A135536 n

end A135536

/-! ## A135536.P288478188164682784

`∏[A040335(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P288478188164682784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A040335 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P288478188164682784

namespace A135536

/-- `∏[A040335(a(n-1))]` -/
def P288478188164682784.Spec : Prop :=
  ∀ n, P288478188164682784.a n = A135536 n

end A135536

/-! ## A135536.P2306402196431144553

`∏[A057607(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P2306402196431144553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A057607 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P2306402196431144553

namespace A135536

/-- `∏[A057607(a(n-1))]` -/
def P2306402196431144553.Spec : Prop :=
  ∀ n, P2306402196431144553.a n = A135536 n

end A135536

/-! ## A135536.P1552133414954267639

`∏[A058990(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P1552133414954267639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A058990 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P1552133414954267639

namespace A135536

/-- `∏[A058990(a(n-1))]` -/
def P1552133414954267639.Spec : Prop :=
  ∀ n, P1552133414954267639.a n = A135536 n

end A135536

/-! ## A135536.P11920636910362669893

`∏[A059215(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P11920636910362669893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A059215 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P11920636910362669893

namespace A135536

/-- `∏[A059215(a(n-1))]` -/
def P11920636910362669893.Spec : Prop :=
  ∀ n, P11920636910362669893.a n = A135536 n

end A135536

/-! ## A135536.P13001798764165263567

`∏[A060684(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P13001798764165263567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A060684 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P13001798764165263567

namespace A135536

/-- `∏[A060684(a(n-1))]` -/
def P13001798764165263567.Spec : Prop :=
  ∀ n, P13001798764165263567.a n = A135536 n

end A135536

/-! ## A135536.P15991910648715393401

`∏[A064897(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P15991910648715393401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A064897 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P15991910648715393401

namespace A135536

/-- `∏[A064897(a(n-1))]` -/
def P15991910648715393401.Spec : Prop :=
  ∀ n, P15991910648715393401.a n = A135536 n

end A135536

/-! ## A135536.P2940380086302780281

`∏[A069705(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P2940380086302780281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A069705 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P2940380086302780281

namespace A135536

/-- `∏[A069705(a(n-1))]` -/
def P2940380086302780281.Spec : Prop :=
  ∀ n, P2940380086302780281.a n = A135536 n

end A135536

/-! ## A135536.P3805479494746419133

`∏[A071294(a(n-1))]` with `a(0)=7`
-/

namespace A135536.P3805479494746419133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A071294 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135536.P3805479494746419133

namespace A135536

/-- `∏[A071294(a(n-1))]` -/
def P3805479494746419133.Spec : Prop :=
  ∀ n, P3805479494746419133.a n = A135536 n

end A135536

/-!
# A135537: Period 4: repeat [7, 5, 2, 4].

The programs for A135537, the canonical program `A135537.P6478647680454806989` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135537 has offset 0).

The definition of A135537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135537.P6478647680454806989

`a(n-4)` with `a(0)=7, a(1)=5, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135537

/-- `a(n-4)` -/
def P6478647680454806989.Spec : Prop :=
  ∀ n, (P6478647680454806989.a n : ℤ) = A135537 n

theorem P6478647680454806989.correct : P6478647680454806989.Spec := by
  intro n
  simp only [A135537]

end A135537

/-!
# A135538: Number of triples in all permutations of order n that are collinear modulo n.

The programs for A135538, there is no canonical definition to state claims against.
-/

/-! ## A135538.P11953267217336210026

`n*A096397(A054726(n))`
-/

namespace A135538.P11953267217336210026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096397 (A054726 n).toNat

end

end A135538.P11953267217336210026

/-! ## A135538.P7329406310084857612

`A004526(ceil(2^(n-1))*A338439(n))`
-/

namespace A135538.P7329406310084857612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A338439 n).toNat

end

end A135538.P7329406310084857612

/-! ## A135538.P2804603040094990623

`A004518(A004524(n)*A129724(n))`
-/

namespace A135538.P2804603040094990623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004518 (A004524 n * A129724 n).toNat

end

end A135538.P2804603040094990623

/-!
# A135539: Triangle read by rows: T(n,k) = number of divisors of n that are >= k.

The programs for A135539, there is no canonical definition to state claims against.
-/

/-! ## A135539.P3726516386000400504

`A143594(n+1)/(2-char[∑[n]])`
-/

namespace A135539.P3726516386000400504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143594 (n + 1) : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A135539.P3726516386000400504

/-! ## A135539.P5694676033682815866

`A134544(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A135539.P5694676033682815866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134544 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A135539.P5694676033682815866

/-! ## A135539.P4814341231416879496

`A134544(n+1)/A002260(n+1)`
-/

namespace A135539.P4814341231416879496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134544 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A135539.P4814341231416879496

/-! ## A135539.P7005402688542785929

`A143308(n+1)/A002024(n+1)`
-/

namespace A135539.P7005402688542785929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143308 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A135539.P7005402688542785929

/-! ## A135539.P12365372938556082726

`A072528(A056537(n+1))`
-/

namespace A135539.P12365372938556082726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072528 (A056537 (n + 1)).toNat

end

end A135539.P12365372938556082726

/-! ## A135539.P10413430347368880904

`A128186(A185870(n+1))`
-/

namespace A135539.P10413430347368880904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128186 (A185870 (n + 1)).toNat

end

end A135539.P10413430347368880904

/-! ## A135539.P13075367327844713049

`A002024(A134699(n+1))`
-/

namespace A135539.P13075367327844713049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A134699 (n + 1)).toNat

end

end A135539.P13075367327844713049

/-! ## A135539.P6996518633077933301

`round(sqrt(A140704(n+1)))`
-/

namespace A135539.P6996518633077933301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A140704 (n + 1) : ℝ))

end

end A135539.P6996518633077933301

/-! ## A135539.P16074724479136016193

`A000194(A140704(n+1))`
-/

namespace A135539.P16074724479136016193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A140704 (n + 1)).toNat

end

end A135539.P16074724479136016193

/-! ## A135539.P16751889025181301016

`A220104(2*A140704(n+1))`
-/

namespace A135539.P16751889025181301016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (2 * A140704 (n + 1)).toNat

end

end A135539.P16751889025181301016

/-!
# A135540: a(n) = 2^(A000523(n) - A000120(n) + 2) - 1.

The programs for A135540, the canonical program `A135540.P6682804189538680421` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135540 has offset 1).

The definition of A135540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135540.P6682804189538680421

`2^(A000523(n+1)-A000120(n+1)+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135540

/-- `2^(A000523(n+1)-A000120(n+1)+2)-1` -/
def P6682804189538680421.Spec : Prop :=
  ∀ n, P6682804189538680421.a n = (A135540 (n + 1) : ℚ)

end A135540

/-! ## A135540.P7409155911211788944

`A267584(n+1)-1`
-/

namespace A135540.P7409155911211788944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (n + 1) - 1

end

end A135540.P7409155911211788944

namespace A135540

/-- `A267584(n+1)-1` -/
def P7409155911211788944.Spec : Prop :=
  ∀ n, P7409155911211788944.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P492062144835941257

`2^A290251(n+1)-1`
-/

namespace A135540.P492062144835941257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A290251 (n + 1) : ℤ) - 1

end

end A135540.P492062144835941257

namespace A135540

/-- `2^A290251(n+1)-1` -/
def P492062144835941257.Spec : Prop :=
  ∀ n, P492062144835941257.a n = (A135540 (n + 1) : ℚ)

end A135540

/-! ## A135540.P12815782177197821913

`A126646(A023416(n+1))`
-/

namespace A135540.P12815782177197821913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A023416 (n + 1)).toNat

end

end A135540.P12815782177197821913

namespace A135540

/-- `A126646(A023416(n+1))` -/
def P12815782177197821913.Spec : Prop :=
  ∀ n, P12815782177197821913.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P14399067506219636767

`A037988(A115378(n+1))`
-/

namespace A135540.P14399067506219636767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037988 (A115378 (n + 1)).toNat

end

end A135540.P14399067506219636767

namespace A135540

/-- `A037988(A115378(n+1))` -/
def P14399067506219636767.Spec : Prop :=
  ∀ n, P14399067506219636767.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P3279373507000560208

`A126646(A080791(n+1))`
-/

namespace A135540.P3279373507000560208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A080791 (n + 1)).toNat

end

end A135540.P3279373507000560208

namespace A135540

/-- `A126646(A080791(n+1))` -/
def P3279373507000560208.Spec : Prop :=
  ∀ n, P3279373507000560208.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P6741249516297775980

`A000225(A290251(n+1))`
-/

namespace A135540.P6741249516297775980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A290251 (n + 1)).toNat

end

end A135540.P6741249516297775980

namespace A135540

/-- `A000225(A290251(n+1))` -/
def P6741249516297775980.Spec : Prop :=
  ∀ n, P6741249516297775980.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P8386821637533084514

`A000225(A023416(n+1)+1)`
-/

namespace A135540.P8386821637533084514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023416 (n + 1) + 1).toNat

end

end A135540.P8386821637533084514

namespace A135540

/-- `A000225(A023416(n+1)+1)` -/
def P8386821637533084514.Spec : Prop :=
  ∀ n, P8386821637533084514.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P6300009250189938297

`A000225(A080791(n+1)+1)`
-/

namespace A135540.P6300009250189938297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A080791 (n + 1) + 1).toNat

end

end A135540.P6300009250189938297

namespace A135540

/-- `A000225(A080791(n+1)+1)` -/
def P6300009250189938297.Spec : Prop :=
  ∀ n, P6300009250189938297.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P4126259127167759895

`A086799(A115378(n+1)+1)`
-/

namespace A135540.P4126259127167759895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A115378 (n + 1) + 1).toNat

end

end A135540.P4126259127167759895

namespace A135540

/-- `A086799(A115378(n+1)+1)` -/
def P4126259127167759895.Spec : Prop :=
  ∀ n, P4126259127167759895.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P17142918968104043015

`A001316(A054429(n+1))-1`
-/

namespace A135540.P17142918968104043015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A054429 (n + 1)).toNat - 1

end

end A135540.P17142918968104043015

namespace A135540

/-- `A001316(A054429(n+1))-1` -/
def P17142918968104043015.Spec : Prop :=
  ∀ n, P17142918968104043015.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P12321355828891357057

`A131136(A080079(n+1))-1`
-/

namespace A135540.P12321355828891357057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (A080079 (n + 1)).toNat - 1

end

end A135540.P12321355828891357057

namespace A135540

/-- `A131136(A080079(n+1))-1` -/
def P12321355828891357057.Spec : Prop :=
  ∀ n, P12321355828891357057.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P2104935370491256581

`A278531(A073137(n+1))-1`
-/

namespace A135540.P2104935370491256581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A073137 (n + 1)).toNat - 1

end

end A135540.P2104935370491256581

namespace A135540

/-- `A278531(A073137(n+1))-1` -/
def P2104935370491256581.Spec : Prop :=
  ∀ n, P2104935370491256581.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P9815102761983164538

`A000203(A267584(n+1)/2)`
-/

namespace A135540.P9815102761983164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A267584 (n + 1) : ℚ) / 2)).toNat

end

end A135540.P9815102761983164538

namespace A135540

/-- `A000203(A267584(n+1)/2)` -/
def P9815102761983164538.Spec : Prop :=
  ∀ n, P9815102761983164538.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P2389270212819983165

`A000203(2^A023416(n+1))`
-/

namespace A135540.P2389270212819983165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023416 (n + 1) : ℤ))).toNat

end

end A135540.P2389270212819983165

namespace A135540

/-- `A000203(2^A023416(n+1))` -/
def P2389270212819983165.Spec : Prop :=
  ∀ n, P2389270212819983165.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P4563020906420531076

`A000203(2^A080791(n+1))`
-/

namespace A135540.P4563020906420531076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A080791 (n + 1) : ℤ))).toNat

end

end A135540.P4563020906420531076

namespace A135540

/-- `A000203(2^A080791(n+1))` -/
def P4563020906420531076.Spec : Prop :=
  ∀ n, P4563020906420531076.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P1587214765829507451

`∑{d}[A080100(n+1), #]`
-/

namespace A135540.P1587214765829507451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A135540.P1587214765829507451

namespace A135540

/-- `∑{d}[A080100(n+1), #]` -/
def P1587214765829507451.Spec : Prop :=
  ∀ n, (P1587214765829507451.a n : ℤ) = A135540 (n + 1)

end A135540

/-! ## A135540.P4300625979956685022

`Δ[A064194(n+1)]-1`
-/

namespace A135540.P4300625979956685022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135540.P4300625979956685022

namespace A135540

/-- `Δ[A064194(n+1)]-1` -/
def P4300625979956685022.Spec : Prop :=
  ∀ n, P4300625979956685022.a n = A135540 (n + 1)

end A135540

/-! ## A135540.P2766925848027250489

`2^A008687(n+2)-1`
-/

namespace A135540.P2766925848027250489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008687 (n + 2) : ℤ) - 1

end

end A135540.P2766925848027250489

namespace A135540

/-- `2^A008687(n+2)-1` -/
def P2766925848027250489.Spec : Prop :=
  ∀ n, P2766925848027250489.a n = (A135540 (n + 1) : ℚ)

end A135540

/-! ## A135540.P3308443139947422354

`A000203(A080100(n+1))`
-/

namespace A135540.P3308443139947422354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A080100 (n + 1)).toNat

end

end A135540.P3308443139947422354

namespace A135540

/-- `A000203(A080100(n+1))` -/
def P3308443139947422354.Spec : Prop :=
  ∀ n, P3308443139947422354.a n = A135540 (n + 1)

end A135540

/-!
# A135541: a(n) = 2*a(n-1) - a(n-2) + 2*a(n-3), with a(0) = 2, a(1) = 2.

The programs for A135541, the canonical program `A135541.P4717046441647572375` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135541 has offset 0).

The definition of A135541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+2*a(n-3)` (program `A135541.P4717046441647572375`, by `A135541.P4717046441647572375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135541.P4717046441647572375

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135541

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P4717046441647572375.Spec : Prop :=
  ∀ n, P4717046441647572375.a n = A135541 n

theorem P4717046441647572375.correct : P4717046441647572375.Spec := by
  intro n
  simp only [A135541]

end A135541

/-! ## A135541.P15297700429592911663

`2*(a(n-1)+a(n-3))-a(n-2)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A135541.P15297700429592911663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  2 * (a (n - 1) + a (n - 3)) - a (n - 2)

end

end A135541.P15297700429592911663

namespace A135541

/-- `2*(a(n-1)+a(n-3))-a(n-2)` -/
def P15297700429592911663.Spec : Prop :=
  ∀ n, P15297700429592911663.a n = A135541 n

end A135541

/-! ## A135541.P12902175964379368858

`1-(a(n-2)-A267604(n))` with `a(0)=0, a(1)=2`
-/

namespace A135541.P12902175964379368858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - A267604 n)

end

end A135541.P12902175964379368858

namespace A135541

/-- `1-(a(n-2)-A267604(n))` -/
def P12902175964379368858.Spec : Prop :=
  ∀ n, P12902175964379368858.a n = A135541 n

end A135541

/-! ## A135541.P5061410196899566990

`2-(a(n-2)-A026622(n))` with `a(0)=0, a(1)=2`
-/

namespace A135541.P5061410196899566990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (a (n - 2) - A026622 n)

end

end A135541.P5061410196899566990

namespace A135541

/-- `2-(a(n-2)-A026622(n))` -/
def P5061410196899566990.Spec : Prop :=
  ∀ n, P5061410196899566990.a n = A135541 n

end A135541

/-! ## A135541.P18060692459213957731

`A007679(n+2)-A100088(n)`
-/

namespace A135541.P18060692459213957731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 2) - A100088 n

end

end A135541.P18060692459213957731

namespace A135541

/-- `A007679(n+2)-A100088(n)` -/
def P18060692459213957731.Spec : Prop :=
  ∀ n, P18060692459213957731.a n = A135541 n

end A135541

/-! ## A135541.P15749536044683752876

`A139814(n+1)+A139814(n)-A007910(n)`
-/

namespace A135541.P15749536044683752876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139814 (n + 1) + (A139814 n - A007910 n)

end

end A135541.P15749536044683752876

namespace A135541

/-- `A139814(n+1)+A139814(n)-A007910(n)` -/
def P15749536044683752876.Spec : Prop :=
  ∀ n, P15749536044683752876.a n = A135541 n

end A135541

/-! ## A135541.P7967587341434900677

`A007679(n+1)+A007909(n)-A084099(n+1)`
-/

namespace A135541.P7967587341434900677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A007909 n - A084099 (n + 1))

end

end A135541.P7967587341434900677

namespace A135541

/-- `A007679(n+1)+A007909(n)-A084099(n+1)` -/
def P7967587341434900677.Spec : Prop :=
  ∀ n, P7967587341434900677.a n = A135541 n

end A135541

/-! ## A135541.P7123234148962687502

`A007679(n+1)+A007679(n+2)-A007910(n+1)`
-/

namespace A135541.P7123234148962687502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A007679 (n + 2) - A007910 (n + 1))

end

end A135541.P7123234148962687502

namespace A135541

/-- `A007679(n+1)+A007679(n+2)-A007910(n+1)` -/
def P7123234148962687502.Spec : Prop :=
  ∀ n, P7123234148962687502.a n = A135541 n

end A135541

/-!
# A135542: Guy Steele's sequence GS(6,4) (see A135416).

The programs for A135542, the canonical program `A135542.P16485540137991458943` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135542 has offset 1).

The definition of A135542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135542.P2632049855022501873

`A115378(n+1)+A087808(n+1)`
-/

namespace A135542.P2632049855022501873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115378 (n + 1) + A087808 (n + 1)

end

end A135542.P2632049855022501873

namespace A135542

/-- `A115378(n+1)+A087808(n+1)` -/
def P2632049855022501873.Spec : Prop :=
  ∀ n, P2632049855022501873.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P17708160725475065026

`A080100(n+1)+A087808(n+1)-1`
-/

namespace A135542.P17708160725475065026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (n + 1) + (A087808 (n + 1) - 1)

end

end A135542.P17708160725475065026

namespace A135542

/-- `A080100(n+1)+A087808(n+1)-1` -/
def P17708160725475065026.Spec : Prop :=
  ∀ n, P17708160725475065026.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P14688259683526374662

`A087808(n+1)+A000225(val(A080100(n+1), 2))`
-/

namespace A135542.P14688259683526374662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (n + 1) + A000225 (SequenceMachineLib.valuation (A080100 (n + 1)).toNat 2)

end

end A135542.P14688259683526374662

namespace A135542

/-- `A087808(n+1)+A000225(val(A080100(n+1), 2))` -/
def P14688259683526374662.Spec : Prop :=
  ∀ n, P14688259683526374662.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P16485540137991458943

`A135533(A054429(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135542

/-- `A135533(A054429(n+1))` -/
def P16485540137991458943.Spec : Prop :=
  ∀ n, P16485540137991458943.a n = A135542 (n + 1)

theorem P16485540137991458943.correct : P16485540137991458943.Spec := by
  intro n
  simp only [A135542, Nat.add_sub_cancel]

end A135542

/-! ## A135542.P17171402325107749324

`A260812(A059894(n+1))/2`
-/

namespace A135542.P17171402325107749324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260812 (A059894 (n + 1)).toNat : ℚ) / 2

end

end A135542.P17171402325107749324

namespace A135542

/-- `A260812(A059894(n+1))/2` -/
def P17171402325107749324.Spec : Prop :=
  ∀ n, P17171402325107749324.a n = (A135542 (n + 1) : ℚ)

end A135542

/-! ## A135542.P8189479804376074174

`A087808(A004754(n+1))-1`
-/

namespace A135542.P8189479804376074174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A004754 (n + 1)).toNat - 1

end

end A135542.P8189479804376074174

namespace A135542

/-- `A087808(A004754(n+1))-1` -/
def P8189479804376074174.Spec : Prop :=
  ∀ n, P8189479804376074174.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P3354472520161777384

`A087808(A004755(n+1))-1`
-/

namespace A135542.P3354472520161777384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A004755 (n + 1)).toNat - 1

end

end A135542.P3354472520161777384

namespace A135542

/-- `A087808(A004755(n+1))-1` -/
def P3354472520161777384.Spec : Prop :=
  ∀ n, P3354472520161777384.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P3979513599216013790

`A135529(A010078(n+2))-1`
-/

namespace A135542.P3979513599216013790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A010078 (n + 2)).toNat - 1

end

end A135542.P3979513599216013790

namespace A135542

/-- `A135529(A010078(n+2))-1` -/
def P3979513599216013790.Spec : Prop :=
  ∀ n, P3979513599216013790.a n = A135542 (n + 1)

end A135542

/-! ## A135542.P13377323358478775815

`A087808(A171763(n+1))-2`
-/

namespace A135542.P13377323358478775815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A171763 (n + 1)).toNat - 2

end

end A135542.P13377323358478775815

namespace A135542

/-- `A087808(A171763(n+1))-2` -/
def P13377323358478775815.Spec : Prop :=
  ∀ n, P13377323358478775815.a n = A135542 (n + 1)

end A135542

/-!
# A135543: Record number of steps under iterations of "map n to n - (largest prime <= n)" (A064722) until reaching the limiting value 0 or 1. Also, places where A121561 reaches a new record.

The programs for A135543, there is no canonical definition to state claims against.
-/

/-! ## A135543.P15006827181422779650

`A104138(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A135543.P15006827181422779650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A104138 (a (n - 1)).toNat + a (n - 1)

end

end A135543.P15006827181422779650

/-!
# A135545: a(n) = the largest proper divisor k of n where (k-1) and/or (k+1) divides (n+1).

The programs for A135545, there is no canonical definition to state claims against.
-/

/-! ## A135545.P10665483613288795778

`gcd(n+3, A001223(A338244(n+1)))`
-/

namespace A135545.P10665483613288795778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A001223 (A338244 (n + 1)).toNat)

end

end A135545.P10665483613288795778

/-! ## A135545.P6762295262558890106

`gcd(A060648(n+1), A060659(A060642(n+2)))`
-/

namespace A135545.P6762295262558890106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060648 (n + 1)) (A060659 (A060642 (n + 2)).toNat)

end

end A135545.P6762295262558890106

/-! ## A135545.P13477733579353465882

`A325975(or(A258996(n+1), A325944(3*n+4)))`
-/

namespace A135545.P13477733579353465882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325975 (Int.lor (A258996 (n + 1)) (A325944 (3 * n + 4))).toNat

end

end A135545.P13477733579353465882

/-! ## A135545.P1427332044794504790

`gcd(A060648(n+1), A255066(A239519(n)))`
-/

namespace A135545.P1427332044794504790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060648 (n + 1)) (A255066 (A239519 n).toNat)

end

end A135545.P1427332044794504790

/-! ## A135545.P5011415294006260422

`gcd(A030307(n+1), A359495(A257623(n)))`
-/

namespace A135545.P5011415294006260422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030307 (n + 1)) (A359495 (A257623 n).toNat)

end

end A135545.P5011415294006260422

/-!
# A135546: Let p be the n-th prime and let g be the order of 2 mod p (see A014664). Then if g is even, a(n) = p*(2^(g/2) - 1), otherwise a(n) = 2^g - 1.

The programs for A135546, there is no canonical definition to state claims against.
-/

/-! ## A135546.P16255209433254253581

`A038553(A182231(n+2))`
-/

namespace A135546.P16255209433254253581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (A182231 (n + 2)).toNat

end

end A135546.P16255209433254253581

/-! ## A135546.P4761338835636240217

`A038553(p?[Δ[A288515(n)]])`
-/

namespace A135546.P4761338835636240217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135546.P4761338835636240217

/-! ## A135546.P13500511390229048433

`A038553(A122111(2^(n+2)))`
-/

namespace A135546.P13500511390229048433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (A122111 (2 ^ (n + 2))).toNat

end

end A135546.P13500511390229048433

/-! ## A135546.P10405662435823186258

`A038553(A065091(n+1)%A109299(3*n+4))`
-/

namespace A135546.P10405662435823186258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (Int.tmod (A065091 (n + 1)) (A109299 (3 * n + 4))).toNat

end

end A135546.P10405662435823186258

/-! ## A135546.P8596206484115279299

`A038553(lt[A025629(3*n+4), A272681(n)])`
-/

namespace A135546.P8596206484115279299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025629 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135546.P8596206484115279299

/-!
# A135548: Numbers in A134651 which are the sum of two terms from A001043 in a unique way.

The programs for A135548, there is no canonical definition to state claims against.
-/

/-! ## A135548.P7572089023298078345

`A134651(A322847(n+1)%A113875(n+1))`
-/

namespace A135548.P7572089023298078345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (Int.tmod (A322847 (n + 1)) (A113875 (n + 1))).toNat

end

end A135548.P7572089023298078345

/-! ## A135548.P6154896835930981742

`A134651(A178864(n+1)%A278693(n+1))`
-/

namespace A135548.P6154896835930981742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (Int.tmod (A178864 (n + 1)) (A278693 (n + 1))).toNat

end

end A135548.P6154896835930981742

/-! ## A135548.P11820557014746532509

`A134651(A302492(n+1)%A072642(n+2))`
-/

namespace A135548.P11820557014746532509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (Int.tmod (A302492 (n + 1)) (A072642 (n + 2))).toNat

end

end A135548.P11820557014746532509

/-!
# A135549: Number of bases b, 1 < b < n-1, in which n is a palindrome.

The programs for A135549, there is no canonical definition to state claims against.
-/

/-! ## A135549.P3398682892095883281

`A028310(A135551(n))-1`
-/

namespace A135549.P3398682892095883281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A135551 n).toNat - 1

end

end A135549.P3398682892095883281

/-! ## A135549.P1832632487975997720

`A000194(A135551(n)²-A135551(n))`
-/

namespace A135549.P1832632487975997720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A135551 n ^ 2 - A135551 n).toNat

end

end A135549.P1832632487975997720

/-! ## A135549.P3063696511913672711

`A135551(n)-A057427(A135551(n)²)`
-/

namespace A135549.P3063696511913672711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A057427 (A135551 n ^ 2).toNat

end

end A135549.P3063696511913672711

/-! ## A135549.P815502037130186262

`A135551(n)-A157928(A135551(n)+1)`
-/

namespace A135549.P815502037130186262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A157928 (A135551 n + 1).toNat

end

end A135549.P815502037130186262

/-! ## A135549.P2241302111505389473

`A135551(n)-A323022(A135551(n)+1)`
-/

namespace A135549.P2241302111505389473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A323022 (A135551 n + 1).toNat

end

end A135549.P2241302111505389473

/-! ## A135549.P16332652039483388480

`A000194((A135551(n)-1)*A135551(n))`
-/

namespace A135549.P16332652039483388480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A135551 n - 1) * A135551 n).toNat

end

end A135549.P16332652039483388480

/-! ## A135549.P15709766216797290248

`A135551(n)-A057427(2*A135551(n))`
-/

namespace A135549.P15709766216797290248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A057427 (2 * A135551 n).toNat

end

end A135549.P15709766216797290248

/-! ## A135549.P14817389789825171588

`A135551(n)-A157928(2*A135551(n))`
-/

namespace A135549.P14817389789825171588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A157928 (2 * A135551 n).toNat

end

end A135549.P14817389789825171588

/-! ## A135549.P7394701174762559326

`A135551(n)-A157928(n-A157928(n))`
-/

namespace A135549.P7394701174762559326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A157928 ((n : ℤ) - A157928 n).toNat

end

end A135549.P7394701174762559326

/-! ## A135549.P16559732113746976302

`floor(A135551(n)-A135551(n)/A249735(n+1))`
-/

namespace A135549.P16559732113746976302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135551 n : ℚ) - (A135551 n : ℚ) / (A249735 (n + 1) : ℚ)⌋

end

end A135549.P16559732113746976302

/-! ## A135549.P2230320738383611529

`(A135551(n)-1)%A106609(A008574(n))`
-/

namespace A135549.P2230320738383611529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135551 n - 1) (A106609 (A008574 n).toNat)

end

end A135549.P2230320738383611529

/-! ## A135549.P6090518464053409927

`A135551(n)-A135551(A016038(n+1))`
-/

namespace A135549.P6090518464053409927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A135551 (A016038 (n + 1)).toNat

end

end A135549.P6090518464053409927

/-! ## A135549.P14535077983312504654

`A135551(n)-A157928(A135551(n²))`
-/

namespace A135549.P14535077983312504654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n - A157928 (A135551 (n ^ 2)).toNat

end

end A135549.P14535077983312504654

/-!
# A135550: Number of bases b, 1 < b < n-1, in which n is a palindrome, allowing leading zeros when testing if a number is a palindrome.

The programs for A135550, there is no canonical definition to state claims against.
-/

/-! ## A135550.P12104636340571162860

`(2*n-1)%A000120(A081406(n))`
-/

namespace A135550.P12104636340571162860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - 1) (A000120 (A081406 n).toNat)

end

end A135550.P12104636340571162860

/-! ## A135550.P6844551849886422656

`(A092210(n+1)*A092211(3*n+2))%(floor(n/(n%2+2))+1)`
-/

namespace A135550.P6844551849886422656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092210 (n + 1) * A092211 (3 * n + 2)) (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1)

end

end A135550.P6844551849886422656

/-! ## A135550.P3628114155506201199

`A379672(A003415(n)*A350883(n))`
-/

namespace A135550.P3628114155506201199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A003415 n * A350883 n).toNat

end

end A135550.P3628114155506201199

/-! ## A135550.P9692692390631430886

`A331991(n+1)-A106594(A042593(n))`
-/

namespace A135550.P9692692390631430886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1) - A106594 (A042593 n).toNat

end

end A135550.P9692692390631430886

/-! ## A135550.P9470905415774957752

`A007953(A000975(n))%A289436(n+2)`
-/

namespace A135550.P9470905415774957752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A000975 n).toNat) (A289436 (n + 2))

end

end A135550.P9470905415774957752

/-!
# A135551: Number of bases b, 1 < b < n, in which n is a palindrome.

The programs for A135551, there is no canonical definition to state claims against.
-/

/-! ## A135551.P14106244740346974095

`(A135549(n)+1)%A004525(n+1)`
-/

namespace A135551.P14106244740346974095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135549 n + 1) (A004525 (n + 1))

end

end A135551.P14106244740346974095

/-! ## A135551.P16750285307207802921

`A157928(A000194(n))+A135549(n)`
-/

namespace A135551.P16750285307207802921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A000194 n).toNat + A135549 n

end

end A135551.P16750285307207802921

/-! ## A135551.P14401809678532512904

`A135549(n)+2-A054977(A002264(n))`
-/

namespace A135551.P14401809678532512904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n + (2 - A054977 (A002264 n).toNat)

end

end A135551.P14401809678532512904

/-! ## A135551.P11225861250100691888

`A157928(n-A157928(n))+A135549(n)`
-/

namespace A135551.P11225861250100691888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 ((n : ℤ) - A157928 n).toNat + A135549 n

end

end A135551.P11225861250100691888

/-! ## A135551.P14946605464361336982

`A126071(abs(1-n)+1)-1`
-/

namespace A135551.P14946605464361336982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A135551.P14946605464361336982

/-! ## A135551.P10973034028077198881

`A065531(A233583(n+1))`
-/

namespace A135551.P10973034028077198881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (A233583 (n + 1)).toNat

end

end A135551.P10973034028077198881

/-! ## A135551.P7253639815462519873

`∑{e}[A016038(A016038(n+1)+1), A065531(n-#+1)]`
-/

namespace A135551.P7253639815462519873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016038 (A016038 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A065531 ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ) + 1).toNat

end

end A135551.P7253639815462519873

/-!
# A135552: Riordan array (1/((1-2x)(1-x)^2), -x/(1-x)^2).

The programs for A135552, there is no canonical definition to state claims against.
-/

/-! ## A135552.P804695202083773681

`A033999(A002262(n))*A131250(A014132(n+1))`
-/

namespace A135552.P804695202083773681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A131250 (A014132 (n + 1)).toNat

end

end A135552.P804695202083773681

/-! ## A135552.P364734364678650184

`A097807(A061579(n))*A131250(A014132(n+1))`
-/

namespace A135552.P364734364678650184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A131250 (A014132 (n + 1)).toNat

end

end A135552.P364734364678650184

/-! ## A135552.P2358000885649645162

`A097807(A114327(n)+n)*A131250(A014132(n+1))`
-/

namespace A135552.P2358000885649645162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A114327 n + (n : ℤ)).toNat * A131250 (A014132 (n + 1)).toNat

end

end A135552.P2358000885649645162

/-! ## A135552.P5550103062242944571

`A097807(A292564(n))*A131250(A014132(n+1))`
-/

namespace A135552.P5550103062242944571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A292564 n).toNat * A131250 (A014132 (n + 1)).toNat

end

end A135552.P5550103062242944571

/-!
# A135553: Divisors of 11025.

The programs for A135553, there is no canonical definition to state claims against.
-/

/-! ## A135553.P6373702993532868909

`filter[A108347(n+1), A212793(#)]`
-/

namespace A135553.P6373702993532868909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A135553.P6373702993532868909

/-! ## A135553.P8244880735275217060

`∩[A004709(n+1), A108347(n+1)]`
-/

namespace A135553.P8244880735275217060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135553.P8244880735275217060

/-! ## A135553.P1223331721491642982

`∩[A002473(n+1), A381822(n+1)]`
-/

namespace A135553.P1223331721491642982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135553.P1223331721491642982

/-! ## A135553.P11226805346645080775

`∩[A108347(n+1), A381822(n+1)]`
-/

namespace A135553.P11226805346645080775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135553.P11226805346645080775

/-! ## A135553.P3836946377147339697

`∩[A342950(n+1), A381822(n+1)]`
-/

namespace A135553.P3836946377147339697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135553.P3836946377147339697

/-!
# A135554: Numbers k such that k is the fourth power of an integer and the sum of digits of k is prime.

The programs for A135554, the canonical program `A135554.P16521209771622638480` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135554 has offset 1).

The definition of A135554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135554.P16521209771622638480

`eq[1, A032741(A055565(n))]²²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135554

/-- `eq[1, A032741(A055565(n))]²²` -/
def P16521209771622638480.Spec : Prop :=
  ∀ n, (P16521209771622638480.a n : ℤ) = A135554 (n + 1)

theorem P16521209771622638480.correct : P16521209771622638480.Spec := by
  intro n
  simp only [A135554, Nat.add_sub_cancel]

end A135554

/-! ## A135554.P11285399344574622278

`(eq[1, A032741(A055565(n))]*A057427(n+2))^4`
-/

namespace A135554.P11285399344574622278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A057427 (n + 2)) ^ 4

end

end A135554.P11285399344574622278

namespace A135554

/-- `(eq[1, A032741(A055565(n))]*A057427(n+2))^4` -/
def P11285399344574622278.Spec : Prop :=
  ∀ n, P11285399344574622278.a n = A135554 (n + 1)

end A135554

/-! ## A135554.P4209187659760840840

`∩[A065408(n+1), n²²]`
-/

namespace A135554.P4209187659760840840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065408 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A135554.P4209187659760840840

namespace A135554

/-- `∩[A065408(n+1), n²²]` -/
def P4209187659760840840.Spec : Prop :=
  ∀ n, (P4209187659760840840.a n : ℤ) = A135554 (n + 1)

end A135554

/-! ## A135554.P3582882008249937796

`∩[A107289(n+1), n²]²`
-/

namespace A135554.P3582882008249937796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n ^ 2

end

end A135554.P3582882008249937796

namespace A135554

/-- `∩[A107289(n+1), n²]²` -/
def P3582882008249937796.Spec : Prop :=
  ∀ n, (P3582882008249937796.a n : ℤ) = A135554 (n + 1)

end A135554

/-! ## A135554.P8408896674102983162

`∩[A004831(n+1), A065408(n+1)]`
-/

namespace A135554.P8408896674102983162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135554.P8408896674102983162

namespace A135554

/-- `∩[A004831(n+1), A065408(n+1)]` -/
def P8408896674102983162.Spec : Prop :=
  ∀ n, (P8408896674102983162.a n : ℤ) = A135554 (n + 1)

end A135554

/-!
# A135555: Prime sums of digits of the terms in A135554.

The programs for A135555, there is no canonical definition to state claims against.
-/

/-! ## A135555.P7935582175509403576

`p?[∑{digits}[n^4, #]]`
-/

namespace A135555.P7935582175509403576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135555.P7935582175509403576

/-! ## A135555.P17500778976721693011

`p?[A055565(n)]`
-/

namespace A135555.P17500778976721693011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135555.P17500778976721693011

/-! ## A135555.P10201708132743760056

`∑{digits}[A135554(n+1), #]`
-/

namespace A135555.P10201708132743760056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A135555.P10201708132743760056

/-! ## A135555.P7626863849189464170

`p?[Δ[A099358(n+1)]]`
-/

namespace A135555.P7626863849189464170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135555.P7626863849189464170

/-! ## A135555.P13528535725072653462

`A055565(root(A135554(n+1), 4))`
-/

namespace A135555.P13528535725072653462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (SequenceMachineLib.roundAway ((A135554 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A135555.P13528535725072653462

/-! ## A135555.P8113477702443936001

`filter[A055565(n+1), A010051(#)]`
-/

namespace A135555.P8113477702443936001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A135555.P8113477702443936001

/-! ## A135555.P15554689388052627606

`filter[A055565(n+1), A171387(#)]`
-/

namespace A135555.P15554689388052627606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A135555.P15554689388052627606

/-! ## A135555.P6148677816938717200

`filter[A055565(n+1), A252233(#)]`
-/

namespace A135555.P6148677816938717200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A135555.P6148677816938717200

/-! ## A135555.P14572723006977133396

`filter[A055565(n+1), A257531(#)]`
-/

namespace A135555.P14572723006977133396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A135555.P14572723006977133396

/-! ## A135555.P14063032518740129412

`filter[A055565(n+1), A353499(#)]`
-/

namespace A135555.P14063032518740129412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A135555.P14063032518740129412

/-!
# A135556: Squares of numbers not divisible by 3: a(n) = A001651(n)^2.

The programs for A135556, the canonical program `A135556.P14501241796162923884` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135556 has offset 1).

The definition of A135556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135556.P14501241796162923884

`A001651(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135556

/-- `A001651(n+1)²` -/
def P14501241796162923884.Spec : Prop :=
  ∀ n, P14501241796162923884.a n = A135556 (n + 1)

theorem P14501241796162923884.correct : P14501241796162923884.Spec := by
  intro n
  simp only [A135556, Nat.add_sub_cancel]

end A135556

/-! ## A135556.P3018635199934289984

`comp[3*n]²`
-/

namespace A135556.P3018635199934289984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A135556.P3018635199934289984

namespace A135556

/-- `comp[3*n]²` -/
def P3018635199934289984.Spec : Prop :=
  ∀ n, (P3018635199934289984.a n : ℤ) = A135556 (n + 1)

end A135556

/-! ## A135556.P5346075593368139588

`record[n^(3-gcd(3, n))]`
-/

namespace A135556.P5346075593368139588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (3 - (Nat.gcd 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135556.P5346075593368139588

namespace A135556

/-- `record[n^(3-gcd(3, n))]` -/
def P5346075593368139588.Spec : Prop :=
  ∀ n, P5346075593368139588.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P11034458212138363845

`record[(n^(n²%3))²]`
-/

namespace A135556.P11034458212138363845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ (n ^ 2 % 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135556.P11034458212138363845

namespace A135556

/-- `record[(n^(n²%3))²]` -/
def P11034458212138363845.Spec : Prop :=
  ∀ n, (P11034458212138363845.a n : ℤ) = A135556 (n + 1)

end A135556

/-! ## A135556.P6392186096737010666

`record[lcm(3, (n+1)²)/3]`
-/

namespace A135556.P6392186096737010666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((n + 1) ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135556.P6392186096737010666

namespace A135556

/-- `record[lcm(3, (n+1)²)/3]` -/
def P6392186096737010666.Spec : Prop :=
  ∀ n, P6392186096737010666.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P6396952762790396415

`record[lcm(9, (1-n)²)]/9`
-/

namespace A135556.P6396952762790396415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9

end

end A135556.P6396952762790396415

namespace A135556

/-- `record[lcm(9, (1-n)²)]/9` -/
def P6396952762790396415.Spec : Prop :=
  ∀ n, P6396952762790396415.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P4170498987984556619

`record[(val(n+3, 3)-n)²]`
-/

namespace A135556.P4170498987984556619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 3) 3 : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135556.P4170498987984556619

namespace A135556

/-- `record[(val(n+3, 3)-n)²]` -/
def P4170498987984556619.Spec : Prop :=
  ∀ n, P4170498987984556619.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P4082036905295579353

`record[(round((n-2)/2)+n)²]`
-/

namespace A135556.P4082036905295579353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 2) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135556.P4082036905295579353

namespace A135556

/-- `record[(round((n-2)/2)+n)²]` -/
def P4082036905295579353.Spec : Prop :=
  ∀ n, P4082036905295579353.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P16536906524915685601

`∑[3-a(n-1)]^2` with `a(0)=1, a(1)=1`
-/

namespace A135556.P16536906524915685601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135556.P16536906524915685601

namespace A135556

/-- `∑[3-a(n-1)]^2` -/
def P16536906524915685601.Spec : Prop :=
  ∀ n, P16536906524915685601.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P2749436726132258504

`floor(∑[3-a(n-1)]²)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135556.P2749436726132258504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135556.P2749436726132258504

namespace A135556

/-- `floor(∑[3-a(n-1)]²)` -/
def P2749436726132258504.Spec : Prop :=
  ∀ n, P2749436726132258504.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P11337417163553721403

`ceil(∑[3-a(n-1)]²)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A135556.P11337417163553721403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135556.P11337417163553721403

namespace A135556

/-- `ceil(∑[3-a(n-1)]²)` -/
def P11337417163553721403.Spec : Prop :=
  ∀ n, P11337417163553721403.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P17514570537821327136

`round(∑[3-a(n-1)]²)` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A135556.P17514570537821327136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A135556.P17514570537821327136

namespace A135556

/-- `round(∑[3-a(n-1)]²)` -/
def P17514570537821327136.Spec : Prop :=
  ∀ n, P17514570537821327136.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P4856213211273500155

`∑[6-a(n-1)]²/4` with `a(0)=2, a(1)=2`
-/

namespace A135556.P4856213211273500155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A135556.P4856213211273500155

namespace A135556

/-- `∑[6-a(n-1)]²/4` -/
def P4856213211273500155.Spec : Prop :=
  ∀ n, P4856213211273500155.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P500458319352132678

`(or(1, n)+2*n+1)²/4`
-/

namespace A135556.P500458319352132678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + (2 * n + 1)) ^ 2 : ℚ) / 4

end

end A135556.P500458319352132678

namespace A135556

/-- `(or(1, n)+2*n+1)²/4` -/
def P500458319352132678.Spec : Prop :=
  ∀ n, P500458319352132678.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P16016977472680171474

`3*∑[n*a(n%2)]-5` with `a(0)=2, a(1)=1`
-/

namespace A135556.P16016977472680171474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  n * f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 5

end

end A135556.P16016977472680171474

namespace A135556

/-- `3*∑[n*a(n%2)]-5` -/
def P16016977472680171474.Spec : Prop :=
  ∀ n, P16016977472680171474.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P4415960626008079104

`∑[A298028(n)]`
-/

namespace A135556.P4415960626008079104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135556.P4415960626008079104

namespace A135556

/-- `∑[A298028(n)]` -/
def P4415960626008079104.Spec : Prop :=
  ∀ n, P4415960626008079104.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P13433978111599120339

`∑[A165988(n)]+1`
-/

namespace A135556.P13433978111599120339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135556.P13433978111599120339

namespace A135556

/-- `∑[A165988(n)]+1` -/
def P13433978111599120339.Spec : Prop :=
  ∀ n, P13433978111599120339.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P18327713886939035207

`A057780(n+1)+1`
-/

namespace A135556.P18327713886939035207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057780 (n + 1) + 1

end

end A135556.P18327713886939035207

namespace A135556

/-- `A057780(n+1)+1` -/
def P18327713886939035207.Spec : Prop :=
  ∀ n, P18327713886939035207.a n = A135556 (n + 1)

end A135556

/-! ## A135556.P6640287207239419211

`(A298039(n)+1)/2`
-/

namespace A135556.P6640287207239419211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298039 n + 1 : ℚ) / 2

end

end A135556.P6640287207239419211

namespace A135556

/-- `(A298039(n)+1)/2` -/
def P6640287207239419211.Spec : Prop :=
  ∀ n, P6640287207239419211.a n = (A135556 (n + 1) : ℚ)

end A135556

/-! ## A135556.P18234188542582719770

`3*A257083(n)-2`
-/

namespace A135556.P18234188542582719770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A257083 n - 2

end

end A135556.P18234188542582719770

namespace A135556

/-- `3*A257083(n)-2` -/
def P18234188542582719770.Spec : Prop :=
  ∀ n, P18234188542582719770.a n = A135556 (n + 1)

end A135556

/-!
# A135557: Consider the primes which are congruent to 2 or 3 modulo 5. List the sum of any consecutive pair if that sum is congruent to 0 modulo 10.

The programs for A135557, there is no canonical definition to state claims against.
-/

/-! ## A135557.P5084162128196512196

`∩[10*n, A309304(n+1)]`
-/

namespace A135557.P5084162128196512196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135557.P5084162128196512196

/-! ## A135557.P12871124955905229638

`∩[A309304(n+1), A008592(n)]`
-/

namespace A135557.P12871124955905229638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135557.P12871124955905229638

/-! ## A135557.P18259989221518861564

`∩[A309304(n+1), A315211(n)]`
-/

namespace A135557.P18259989221518861564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315211 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135557.P18259989221518861564

/-! ## A135557.P1137820950849919472

`∩[A309304(n+1), A328783(n+1)]`
-/

namespace A135557.P1137820950849919472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135557.P1137820950849919472

/-! ## A135557.P2746301085186016532

`∩[A309304(n+1), A370532(n+1)]`
-/

namespace A135557.P2746301085186016532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135557.P2746301085186016532

/-!
# A135558: Sums of three distinct nonzero Fibonacci numbers.

The programs for A135558, there is no canonical definition to state claims against.
-/

/-! ## A135558.P14088981692386926916

`lt[char[A135709(n+1)], n/A290863(n)]`
-/

namespace A135558.P14088981692386926916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135709 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A290863 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A135558.P14088981692386926916

/-! ## A135558.P3131565976252741804

`lt[char[A135709(n+1)], n/A087433(n)]`
-/

namespace A135558.P3131565976252741804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135709 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A087433 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A135558.P3131565976252741804

/-! ## A135558.P465536760413429571

`lt[A359537(n), A359538(n)]`
-/

namespace A135558.P465536760413429571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135558.P465536760413429571

/-! ## A135558.P8296175516856687607

`lt[C(A008439(n), n²), A359512(n)]`
-/

namespace A135558.P8296175516856687607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008439 n).toNat (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135558.P8296175516856687607

/-! ## A135558.P4699779277684364967

`eq[char[A135709(n+1)], A151933(n)]`
-/

namespace A135558.P4699779277684364967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135709 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A135558.P4699779277684364967

/-!
# A135559: Atomic numbers in the 32-column Mendeleyev periodic table, beginning with the first term in each column and read down columns. If the number is > 118 then skip to the next column.

The programs for A135559, there is no canonical definition to state claims against.
-/

/-! ## A135559.P7347976788245119214

`∑[gcd(floor(n/4), A073162(n+1))]`
-/

namespace A135559.P7347976788245119214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 4⌋ (A073162 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135559.P7347976788245119214

/-! ## A135559.P8615645288349154047

`∑[gcd(A073162(n+1), A303909(n))]`
-/

namespace A135559.P8615645288349154047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073162 (n + 1)) (A303909 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135559.P8615645288349154047

/-! ## A135559.P7355556994620963565

`∑[gcd(A119253(3*n+2), A119259(n))]`
-/

namespace A135559.P7355556994620963565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119253 (3 * n + 2)) (A119259 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135559.P7355556994620963565

/-! ## A135559.P4176224578308949992

`∑[A073162(n+1)^C(4, A316942(2*(n+2)))]`
-/

namespace A135559.P4176224578308949992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073162 (n + 1) ^ Nat.choose 4 (A316942 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135559.P4176224578308949992

/-! ## A135559.P13855286780271154840

`∑[A014963(3*A052937(n)-A182629(n+1))]`
-/

namespace A135559.P13855286780271154840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * A052937 n - A182629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135559.P13855286780271154840

/-!
# A135560: a(n) = A007814(n) + A036987(n-1) + 1.

The programs for A135560, the canonical program `A135560.P7118035102855316106` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135560 has offset 1).

The definition of A135560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135560.P7118035102855316106

`A007814(n+1)+A036987(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A135560

/-- `A007814(n+1)+A036987(n)+1` -/
def P7118035102855316106.Spec : Prop :=
  ∀ n, P7118035102855316106.a n = A135560 (n + 1)

theorem P7118035102855316106.correct : P7118035102855316106.Spec := by
  intro n
  simp only [A135560, Nat.add_sub_cancel]

end A135560

/-! ## A135560.P8042106446936760861

`Δ[a(floor(n/2))+n+1]` with `a(0)=0`
-/

namespace A135560.P8042106446936760861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135560.P8042106446936760861

namespace A135560

/-- `Δ[a(floor(n/2))+n+1]` -/
def P8042106446936760861.Spec : Prop :=
  ∀ n, P8042106446936760861.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P9551843113405677831

`n%2*a(floor(n/2))+1` with `a(0)=2`
-/

namespace A135560.P9551843113405677831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A135560.P9551843113405677831

namespace A135560

/-- `n%2*a(floor(n/2))+1` -/
def P9551843113405677831.Spec : Prop :=
  ∀ n, (P9551843113405677831.a n : ℤ) = A135560 (n + 1)

end A135560

/-! ## A135560.P3257867232439551477

`val(lt[n, xor(n, floor(n/2))], 2)+1`
-/

namespace A135560.P3257867232439551477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2 + 1

end

end A135560.P3257867232439551477

namespace A135560

/-- `val(lt[n, xor(n, floor(n/2))], 2)+1` -/
def P3257867232439551477.Spec : Prop :=
  ∀ n, (P3257867232439551477.a n : ℤ) = A135560 (n + 1)

end A135560

/-! ## A135560.P17881132792791081467

`char[2^n-1]+val(n+1, 2)+1`
-/

namespace A135560.P17881132792791081467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A135560.P17881132792791081467

namespace A135560

/-- `char[2^n-1]+val(n+1, 2)+1` -/
def P17881132792791081467.Spec : Prop :=
  ∀ n, (P17881132792791081467.a n : ℤ) = A135560 (n + 1)

end A135560

/-! ## A135560.P7714561789034812720

`val(2^floor(log2(n+1))+n+1, 2)+1`
-/

namespace A135560.P7714561789034812720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ Nat.log 2 (n + 1) + (n + 1)) 2 + 1

end

end A135560.P7714561789034812720

namespace A135560

/-- `val(2^floor(log2(n+1))+n+1, 2)+1` -/
def P7714561789034812720.Spec : Prop :=
  ∀ n, (P7714561789034812720.a n : ℤ) = A135560 (n + 1)

end A135560

/-! ## A135560.P14498258172702181989

`Δ[A080791(n)]+2`
-/

namespace A135560.P14498258172702181989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A135560.P14498258172702181989

namespace A135560

/-- `Δ[A080791(n)]+2` -/
def P14498258172702181989.Spec : Prop :=
  ∀ n, P14498258172702181989.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P9981463112067171548

`A135523(n+1)+1`
-/

namespace A135560.P9981463112067171548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + 1

end

end A135560.P9981463112067171548

namespace A135560

/-- `A135523(n+1)+1` -/
def P9981463112067171548.Spec : Prop :=
  ∀ n, P9981463112067171548.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P17815649382450744203

`A089263(n+1)+2`
-/

namespace A135560.P17815649382450744203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (n + 1) + 2

end

end A135560.P17815649382450744203

namespace A135560

/-- `A089263(n+1)+2` -/
def P17815649382450744203.Spec : Prop :=
  ∀ n, P17815649382450744203.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P14794399112109607030

`log2(A135561(n+1)+1)`
-/

namespace A135560.P14794399112109607030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A135561 (n + 1) + 1 : ℝ)

end

end A135560.P14794399112109607030

namespace A135560

/-- `log2(A135561(n+1)+1)` -/
def P14794399112109607030.Spec : Prop :=
  ∀ n, P14794399112109607030.a n = (A135560 (n + 1) : ℝ)

end A135560

/-! ## A135560.P14013050034151106890

`val(A319953(2*n+1), 2)`
-/

namespace A135560.P14013050034151106890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319953 (2 * n + 1)).toNat 2

end

end A135560.P14013050034151106890

namespace A135560

/-- `val(A319953(2*n+1), 2)` -/
def P14013050034151106890.Spec : Prop :=
  ∀ n, (P14013050034151106890.a n : ℤ) = A135560 (n + 1)

end A135560

/-! ## A135560.P1386413915463464167

`Δ[A290251(2*n+1)]+2`
-/

namespace A135560.P1386413915463464167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A135560.P1386413915463464167

namespace A135560

/-- `Δ[A290251(2*n+1)]+2` -/
def P1386413915463464167.Spec : Prop :=
  ∀ n, P1386413915463464167.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P2945918956636602099

`A241235(n+1)^a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A135560.P2945918956636602099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n a =>
  (A241235 (n + 1) : ℝ) ^ (a (n - 1))

end

end A135560.P2945918956636602099

namespace A135560

/-- `A241235(n+1)^a(n-1)` -/
def P2945918956636602099.Spec : Prop :=
  ∀ n, P2945918956636602099.a n = (A135560 (n + 1) : ℝ)

end A135560

/-! ## A135560.P12219533878730460642

`A089263(A004767(n)+1)`
-/

namespace A135560.P12219533878730460642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A004767 n + 1).toNat

end

end A135560.P12219533878730460642

namespace A135560

/-- `A089263(A004767(n)+1)` -/
def P12219533878730460642.Spec : Prop :=
  ∀ n, P12219533878730460642.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P2834625025604548870

`A135523(A004277(n+1))`
-/

namespace A135560.P2834625025604548870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A004277 (n + 1)).toNat

end

end A135560.P2834625025604548870

namespace A135560

/-- `A135523(A004277(n+1))` -/
def P2834625025604548870.Spec : Prop :=
  ∀ n, P2834625025604548870.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P7536990133681288016

`A005496(A135523(n+1))`
-/

namespace A135560.P7536990133681288016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A135523 (n + 1)).toNat

end

end A135560.P7536990133681288016

namespace A135560

/-- `A005496(A135523(n+1))` -/
def P7536990133681288016.Spec : Prop :=
  ∀ n, P7536990133681288016.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P17034851949117636349

`A135523(A005843(n+1))`
-/

namespace A135560.P17034851949117636349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A005843 (n + 1)).toNat

end

end A135560.P17034851949117636349

namespace A135560

/-- `A135523(A005843(n+1))` -/
def P17034851949117636349.Spec : Prop :=
  ∀ n, P17034851949117636349.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P13009982427717169535

`A085058(n)-A043545(n)`
-/

namespace A135560.P13009982427717169535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - A043545 n

end

end A135560.P13009982427717169535

namespace A135560

/-- `A085058(n)-A043545(n)` -/
def P13009982427717169535.Spec : Prop :=
  ∀ n, P13009982427717169535.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P12878249151231261469

`A000005(A135534(n+1)+1)`
-/

namespace A135560.P12878249151231261469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135534 (n + 1) + 1).toNat

end

end A135560.P12878249151231261469

namespace A135560

/-- `A000005(A135534(n+1)+1)` -/
def P12878249151231261469.Spec : Prop :=
  ∀ n, P12878249151231261469.a n = A135560 (n + 1)

end A135560

/-! ## A135560.P10240899393120597427

`A001222(A135561(n+1)+1)`
-/

namespace A135560.P10240899393120597427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A135561 (n + 1) + 1).toNat

end

end A135560.P10240899393120597427

namespace A135560

/-- `A001222(A135561(n+1)+1)` -/
def P10240899393120597427.Spec : Prop :=
  ∀ n, P10240899393120597427.a n = A135560 (n + 1)

end A135560

/-!
# A135561: a(n) = 2^A135560(n) - 1.

The programs for A135561, the canonical program `A135561.P11630210511762814417` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135561 has offset 1).

The definition of A135561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135561.P11630210511762814417

`2^A135560(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A135561

/-- `2^A135560(n+1)-1` -/
def P11630210511762814417.Spec : Prop :=
  ∀ n, P11630210511762814417.a n = (A135561 (n + 1) : ℚ)

end A135561

/-! ## A135561.P15962571232438023221

`2*n%2*a(floor(n/2))+1` with `a(0)=3`
-/

namespace A135561.P15962571232438023221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * (n % 2 * a ⌊(n : ℚ) / 2⌋.toNat) + 1

end

end A135561.P15962571232438023221

namespace A135561

/-- `2*n%2*a(floor(n/2))+1` -/
def P15962571232438023221.Spec : Prop :=
  ∀ n, (P15962571232438023221.a n : ℤ) = A135561 (n + 1)

end A135561

/-! ## A135561.P5132924771920300361

`A135534(2*(n+1))`
-/

namespace A135561.P5132924771920300361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (2 * (n + 1))

end

end A135561.P5132924771920300361

namespace A135561

/-- `A135534(2*(n+1))` -/
def P5132924771920300361.Spec : Prop :=
  ∀ n, P5132924771920300361.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P12566800582736066379

`lcm(2, A135534(n+1))+1`
-/

namespace A135561.P12566800582736066379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A135534 (n + 1)) + 1

end

end A135561.P12566800582736066379

namespace A135561

/-- `lcm(2, A135534(n+1))+1` -/
def P12566800582736066379.Spec : Prop :=
  ∀ n, (P12566800582736066379.a n : ℤ) = A135561 (n + 1)

end A135561

/-! ## A135561.P4066147841681713625

`xor(n, lcm(n+1, A006530(3*(n+1))))`
-/

namespace A135561.P4066147841681713625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Int.lcm (n + 1 : ℤ) (A006530 (3 * (n + 1))))

end

end A135561.P4066147841681713625

namespace A135561

/-- `xor(n, lcm(n+1, A006530(3*(n+1))))` -/
def P4066147841681713625.Spec : Prop :=
  ∀ n, (P4066147841681713625.a n : ℤ) = A135561 (n + 1)

end A135561

/-! ## A135561.P4336404694329880127

`A000203(n%2*a(floor(n/2))+1)` with `a(0)=3`
-/

namespace A135561.P4336404694329880127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000203 (((n % 2 : ℕ) : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat + 1).toNat

end

end A135561.P4336404694329880127

namespace A135561

/-- `A000203(n%2*a(floor(n/2))+1)` -/
def P4336404694329880127.Spec : Prop :=
  ∀ n, P4336404694329880127.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P15791065444020059067

`A000225(char[2^n-1]+val(n+1, 2)+1)`
-/

namespace A135561.P15791065444020059067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A135561.P15791065444020059067

namespace A135561

/-- `A000225(char[2^n-1]+val(n+1, 2)+1)` -/
def P15791065444020059067.Spec : Prop :=
  ∀ n, P15791065444020059067.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P7955850580145387630

`A000225(A135560(n+1))`
-/

namespace A135561.P7955850580145387630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A135560 (n + 1)).toNat

end

end A135561.P7955850580145387630

namespace A135561

/-- `A000225(A135560(n+1))` -/
def P7955850580145387630.Spec : Prop :=
  ∀ n, P7955850580145387630.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P5426934668790426160

`A059010(A135534(n+1))`
-/

namespace A135561.P5426934668790426160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A135534 (n + 1)).toNat

end

end A135561.P5426934668790426160

namespace A135561

/-- `A059010(A135534(n+1))` -/
def P5426934668790426160.Spec : Prop :=
  ∀ n, P5426934668790426160.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P17618112120797177885

`A126646(A135523(n+1))`
-/

namespace A135561.P17618112120797177885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A135523 (n + 1)).toNat

end

end A135561.P17618112120797177885

namespace A135561

/-- `A126646(A135523(n+1))` -/
def P17618112120797177885.Spec : Prop :=
  ∀ n, P17618112120797177885.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P3462701403218564271

`A000203(A135534(n+1)+1)`
-/

namespace A135561.P3462701403218564271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A135534 (n + 1) + 1).toNat

end

end A135561.P3462701403218564271

namespace A135561

/-- `A000203(A135534(n+1)+1)` -/
def P3462701403218564271.Spec : Prop :=
  ∀ n, P3462701403218564271.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P7116698980333806234

`A000225(A135523(n+1)+1)`
-/

namespace A135561.P7116698980333806234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A135523 (n + 1) + 1).toNat

end

end A135561.P7116698980333806234

namespace A135561

/-- `A000225(A135523(n+1)+1)` -/
def P7116698980333806234.Spec : Prop :=
  ∀ n, P7116698980333806234.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P9595759609825258706

`A000225(A089263(n+1)+2)`
-/

namespace A135561.P9595759609825258706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A089263 (n + 1) + 2).toNat

end

end A135561.P9595759609825258706

namespace A135561

/-- `A000225(A089263(n+1)+2)` -/
def P9595759609825258706.Spec : Prop :=
  ∀ n, P9595759609825258706.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P14081026684617944925

`A000203(2^A135523(n+1))`
-/

namespace A135561.P14081026684617944925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A135523 (n + 1) : ℤ))).toNat

end

end A135561.P14081026684617944925

namespace A135561

/-- `A000203(2^A135523(n+1))` -/
def P14081026684617944925.Spec : Prop :=
  ∀ n, P14081026684617944925.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P8213646682249592704

`A000079(A135523(n+1)+1)-1`
-/

namespace A135561.P8213646682249592704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A135523 (n + 1) + 1).toNat - 1

end

end A135561.P8213646682249592704

namespace A135561

/-- `A000079(A135523(n+1)+1)-1` -/
def P8213646682249592704.Spec : Prop :=
  ∀ n, P8213646682249592704.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P2452539119164011447

`A324184(n+1)/A324186(n+1)`
-/

namespace A135561.P2452539119164011447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324184 (n + 1) : ℚ) / (A324186 (n + 1) : ℚ)

end

end A135561.P2452539119164011447

namespace A135561

/-- `A324184(n+1)/A324186(n+1)` -/
def P2452539119164011447.Spec : Prop :=
  ∀ n, P2452539119164011447.a n = (A135561 (n + 1) : ℚ)

end A135561

/-! ## A135561.P6902054680674064756

`A080565(n+1)%A059159(n+1)`
-/

namespace A135561.P6902054680674064756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080565 (n + 1)) (A059159 (n + 1))

end

end A135561.P6902054680674064756

namespace A135561

/-- `A080565(n+1)%A059159(n+1)` -/
def P6902054680674064756.Spec : Prop :=
  ∀ n, P6902054680674064756.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P12346419324492571047

`and(A080565(n+1), A088837(n+1))`
-/

namespace A135561.P12346419324492571047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080565 (n + 1)) (A088837 (n + 1))

end

end A135561.P12346419324492571047

namespace A135561

/-- `and(A080565(n+1), A088837(n+1))` -/
def P12346419324492571047.Spec : Prop :=
  ∀ n, P12346419324492571047.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P17162566915841465954

`xor(A004754(n+1), A092754(n+1))`
-/

namespace A135561.P17162566915841465954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004754 (n + 1)) (A092754 (n + 1))

end

end A135561.P17162566915841465954

namespace A135561

/-- `xor(A004754(n+1), A092754(n+1))` -/
def P17162566915841465954.Spec : Prop :=
  ∀ n, P17162566915841465954.a n = A135561 (n + 1)

end A135561

/-! ## A135561.P9879846607179362334

`xor(A054429(n+1)+1, A054429(n+1))`
-/

namespace A135561.P9879846607179362334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054429 (n + 1) + 1) (A054429 (n + 1))

end

end A135561.P9879846607179362334

namespace A135561

/-- `xor(A054429(n+1)+1, A054429(n+1))` -/
def P9879846607179362334.Spec : Prop :=
  ∀ n, P9879846607179362334.a n = A135561 (n + 1)

end A135561

/-!
# A135562: Last member of largest n-digit prime quadruplet.

The programs for A135562, there is no canonical definition to state claims against.
-/

/-! ## A135562.P10621300210051190528

`A090258(A050258(n+2))`
-/

namespace A135562.P10621300210051190528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (A050258 (n + 2)).toNat

end

end A135562.P10621300210051190528

/-! ## A135562.P15414522290809852569

`A090258(A055738(n+2)-1)`
-/

namespace A135562.P15414522290809852569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (A055738 (n + 2) - 1).toNat

end

end A135562.P15414522290809852569

/-! ## A135562.P4615519028679655055

`A090258(∑[A120120(n+2)]+1)`
-/

namespace A135562.P4615519028679655055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120120 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A135562.P4615519028679655055

/-!
# A135563: First member of smallest n-digit prime quadruplet.

The programs for A135563, there is no canonical definition to state claims against.
-/

/-! ## A135563.P11844802618745532223

`10*A097638(n+1)+1`
-/

namespace A135563.P11844802618745532223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A097638 (n + 1) + 1

end

end A135563.P11844802618745532223

/-! ## A135563.P4097205789643850355

`A007530(ceil(A050258(n+1)+acot(n)))`
-/

namespace A135563.P4097205789643850355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 ⌈(A050258 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A135563.P4097205789643850355

/-! ## A135563.P6024279519551723136

`A007530(A055738(n+1)+A000038(n))`
-/

namespace A135563.P6024279519551723136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (A055738 (n + 1) + A000038 n).toNat

end

end A135563.P6024279519551723136

/-! ## A135563.P5588608324105347238

`A007530(A054977(n)+A050258(n+1))`
-/

namespace A135563.P5588608324105347238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (A054977 n + A050258 (n + 1)).toNat

end

end A135563.P5588608324105347238

/-!
# A135565: Number of line segments (or edges) in regular n-gon with all diagonals drawn.

The programs for A135565, there is no canonical definition to state claims against.
-/

/-! ## A135565.P16641770377655237122

`A007569(n+1)+A007678(n+1)-1`
-/

namespace A135565.P16641770377655237122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007569 (n + 1) + A007678 (n + 1) - 1

end

end A135565.P16641770377655237122

/-! ## A135565.P10928072599228973294

`A006533(n+1)+A006561(n+1)-1`
-/

namespace A135565.P10928072599228973294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 1) + (A006561 (n + 1) - 1)

end

end A135565.P10928072599228973294

/-! ## A135565.P1782545217280431323

`A006561(n+1)+A007678(n+1)+n`
-/

namespace A135565.P1782545217280431323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + (A007678 (n + 1) + (n : ℤ))

end

end A135565.P1782545217280431323

/-! ## A135565.P14802242433657483877

`A006533(n+1)+A007569(n+1)-(n+2)`
-/

namespace A135565.P14802242433657483877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 1) + (A007569 (n + 1) - (n + 2 : ℤ))

end

end A135565.P14802242433657483877

/-! ## A135565.P14302520805579131364

`A006561(n+1)+A006533(n+1)%A007569(n+1)+A006561(n+1)+n`
-/

namespace A135565.P14302520805579131364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + Int.tmod (A006533 (n + 1)) (A007569 (n + 1)) + (A006561 (n + 1) + (n : ℤ))

end

end A135565.P14302520805579131364

/-!
# A135568: a(n) = floor( Product_{i=1..n} prime(i)/i ).

The programs for A135568, the canonical program `A135568.P17812801388373794726` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135568 has offset 0).

The definition of A135568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135568.P15746098377430896157

`floor(A002110(n)/A000142(n))`
-/

namespace A135568.P15746098377430896157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002110 n : ℚ) / (A000142 n : ℚ)⌋

end

end A135568.P15746098377430896157

namespace A135568

/-- `floor(A002110(n)/A000142(n))` -/
def P15746098377430896157.Spec : Prop :=
  ∀ n, P15746098377430896157.a n = A135568 n

end A135568

/-! ## A135568.P17812801388373794726

`floor((n+1)*∏[A158611(n+2)/(n+1)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135568

/-- `floor((n+1)*∏[A158611(n+2)/(n+1)])` -/
def P17812801388373794726.Spec : Prop :=
  ∀ n, P17812801388373794726.a n = A135568 n

theorem P17812801388373794726.correct : P17812801388373794726.Spec := by
  intro n
  simp only [A135568]

end A135568

/-! ## A135568.P10021883491014314085

`floor(∏[A008578(n+1)/A028310(n)])`
-/

namespace A135568.P10021883491014314085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A135568.P10021883491014314085

namespace A135568

/-- `floor(∏[A008578(n+1)/A028310(n)])` -/
def P10021883491014314085.Spec : Prop :=
  ∀ n, P10021883491014314085.a n = A135568 n

end A135568

/-! ## A135568.P9656297416255318638

`floor(A096334(∑[n])/n!)`
-/

namespace A135568.P9656297416255318638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096334 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P9656297416255318638

namespace A135568

/-- `floor(A096334(∑[n])/n!)` -/
def P9656297416255318638.Spec : Prop :=
  ∀ n, P9656297416255318638.a n = A135568 n

end A135568

/-! ## A135568.P10086092088244862775

`floor(record[A108951(n+1)]/n!)`
-/

namespace A135568.P10086092088244862775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P10086092088244862775

namespace A135568

/-- `floor(record[A108951(n+1)]/n!)` -/
def P10086092088244862775.Spec : Prop :=
  ∀ n, P10086092088244862775.a n = A135568 n

end A135568

/-! ## A135568.P16516905320578350182

`floor(record[A181811(n+1)]/n!)`
-/

namespace A135568.P16516905320578350182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P16516905320578350182

namespace A135568

/-- `floor(record[A181811(n+1)]/n!)` -/
def P16516905320578350182.Spec : Prop :=
  ∀ n, P16516905320578350182.a n = A135568 n

end A135568

/-! ## A135568.P17771837280195099081

`floor(∏[record[A006530(n+1)]]/n!)`
-/

namespace A135568.P17771837280195099081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P17771837280195099081

namespace A135568

/-- `floor(∏[record[A006530(n+1)]]/n!)` -/
def P17771837280195099081.Spec : Prop :=
  ∀ n, P17771837280195099081.a n = A135568 n

end A135568

/-! ## A135568.P4618905841647065463

`floor(∏[record[A014963(n+1)]]/n!)`
-/

namespace A135568.P4618905841647065463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P4618905841647065463

namespace A135568

/-- `floor(∏[record[A014963(n+1)]]/n!)` -/
def P4618905841647065463.Spec : Prop :=
  ∀ n, P4618905841647065463.a n = A135568 n

end A135568

/-! ## A135568.P2294655534811729949

`floor(∏[record[A020639(n+1)]]/n!)`
-/

namespace A135568.P2294655534811729949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A135568.P2294655534811729949

namespace A135568

/-- `floor(∏[record[A020639(n+1)]]/n!)` -/
def P2294655534811729949.Spec : Prop :=
  ∀ n, P2294655534811729949.a n = A135568 n

end A135568

/-! ## A135568.P18123830037197139599

`(A002110(n)-A182254(n))/A000142(n)`
-/

namespace A135568.P18123830037197139599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n - A182254 n : ℚ) / (A000142 n : ℚ)

end

end A135568.P18123830037197139599

namespace A135568

/-- `(A002110(n)-A182254(n))/A000142(n)` -/
def P18123830037197139599.Spec : Prop :=
  ∀ n, P18123830037197139599.a n = (A135568 n : ℚ)

end A135568

/-!
# A135569: a(n) = S2(n)*2^n; where S2(n) is digit sum of n, n in binary notation.

The programs for A135569, the canonical program `A135569.P11530090348024496574` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135569 has offset 0).

The definition of A135569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135569.P11530090348024496574

`A000120(n)*2^n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135569

/-- `A000120(n)*2^n` -/
def P11530090348024496574.Spec : Prop :=
  ∀ n, P11530090348024496574.a n = A135569 n

theorem P11530090348024496574.correct : P11530090348024496574.Spec := by
  intro n
  simp only [A135569]

end A135569

/-! ## A135569.P13534006694322251618

`A000079(n)*A000120(n)`
-/

namespace A135569.P13534006694322251618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000120 n

end

end A135569.P13534006694322251618

namespace A135569

/-- `A000079(n)*A000120(n)` -/
def P13534006694322251618.Spec : Prop :=
  ∀ n, P13534006694322251618.a n = A135569 n

end A135569

/-! ## A135569.P14745352135243912220

`dr(A007088(n))*A000079(n)`
-/

namespace A135569.P14745352135243912220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) * A000079 n

end

end A135569.P14745352135243912220

namespace A135569

/-- `dr(A007088(n))*A000079(n)` -/
def P14745352135243912220.Spec : Prop :=
  ∀ n, P14745352135243912220.a n = A135569 n

end A135569

/-! ## A135569.P16037396559476241537

`2*A000120(n)*A011782(n)`
-/

namespace A135569.P16037396559476241537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000120 n * A011782 n)

end

end A135569.P16037396559476241537

namespace A135569

/-- `2*A000120(n)*A011782(n)` -/
def P16037396559476241537.Spec : Prop :=
  ∀ n, P16037396559476241537.a n = A135569 n

end A135569

/-! ## A135569.P1310162649124350825

`A000079(n)*A048881(2*n)`
-/

namespace A135569.P1310162649124350825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A048881 (2 * n)

end

end A135569.P1310162649124350825

namespace A135569

/-- `A000079(n)*A048881(2*n)` -/
def P1310162649124350825.Spec : Prop :=
  ∀ n, P1310162649124350825.a n = A135569 n

end A135569

/-! ## A135569.P8739604465692081446

`2*A000120(n)*A131577(n)`
-/

namespace A135569.P8739604465692081446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000120 n * A131577 n)

end

end A135569.P8739604465692081446

namespace A135569

/-- `2*A000120(n)*A131577(n)` -/
def P8739604465692081446.Spec : Prop :=
  ∀ n, P8739604465692081446.a n = A135569 n

end A135569

/-! ## A135569.P6970964293854503118

`A011782(n+1)*A048881(2*n)`
-/

namespace A135569.P6970964293854503118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A048881 (2 * n)

end

end A135569.P6970964293854503118

namespace A135569

/-- `A011782(n+1)*A048881(2*n)` -/
def P6970964293854503118.Spec : Prop :=
  ∀ n, P6970964293854503118.a n = A135569 n

end A135569

/-! ## A135569.P459652174460539454

`A048881(2*n)*A131577(n+1)`
-/

namespace A135569.P459652174460539454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) * A131577 (n + 1)

end

end A135569.P459652174460539454

namespace A135569

/-- `A048881(2*n)*A131577(n+1)` -/
def P459652174460539454.Spec : Prop :=
  ∀ n, P459652174460539454.a n = A135569 n

end A135569

/-! ## A135569.P8801253326316302432

`A000120(n)+A000120(n)*A000225(n)`
-/

namespace A135569.P8801253326316302432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A000120 n * A000225 n

end

end A135569.P8801253326316302432

namespace A135569

/-- `A000120(n)+A000120(n)*A000225(n)` -/
def P8801253326316302432.Spec : Prop :=
  ∀ n, P8801253326316302432.a n = A135569 n

end A135569

/-! ## A135569.P9766405247454535298

`(A285104(n)+A285103(n))*A000120(n)`
-/

namespace A135569.P9766405247454535298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285104 n + A285103 n) * A000120 n

end

end A135569.P9766405247454535298

namespace A135569

/-- `(A285104(n)+A285103(n))*A000120(n)` -/
def P9766405247454535298.Spec : Prop :=
  ∀ n, P9766405247454535298.a n = A135569 n

end A135569

/-! ## A135569.P17545499810914281782

`A000051(n)*A000120(n)-A000120(n)`
-/

namespace A135569.P17545499810914281782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000120 n - A000120 n

end

end A135569.P17545499810914281782

namespace A135569

/-- `A000051(n)*A000120(n)-A000120(n)` -/
def P17545499810914281782.Spec : Prop :=
  ∀ n, P17545499810914281782.a n = A135569 n

end A135569

/-! ## A135569.P14287760124488047520

`A011782(n+1)*A053735(A005836(n+1))`
-/

namespace A135569.P14287760124488047520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A053735 (A005836 (n + 1)).toNat

end

end A135569.P14287760124488047520

namespace A135569

/-- `A011782(n+1)*A053735(A005836(n+1))` -/
def P14287760124488047520.Spec : Prop :=
  ∀ n, P14287760124488047520.a n = A135569 n

end A135569

/-! ## A135569.P2541816569782905033

`A053735(A005836(n+1))*A131577(n+1)`
-/

namespace A135569.P2541816569782905033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A005836 (n + 1)).toNat * A131577 (n + 1)

end

end A135569.P2541816569782905033

namespace A135569

/-- `A053735(A005836(n+1))*A131577(n+1)` -/
def P2541816569782905033.Spec : Prop :=
  ∀ n, P2541816569782905033.a n = A135569 n

end A135569

/-! ## A135569.P11075782879178802763

`(A001045(n+1)+A001045(n))*A000120(n)`
-/

namespace A135569.P11075782879178802763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) + A001045 n) * A000120 n

end

end A135569.P11075782879178802763

namespace A135569

/-- `(A001045(n+1)+A001045(n))*A000120(n)` -/
def P11075782879178802763.Spec : Prop :=
  ∀ n, P11075782879178802763.a n = A135569 n

end A135569

/-! ## A135569.P6852986332185455161

`(A078008(n+1)+A078008(n))*A000120(n)`
-/

namespace A135569.P6852986332185455161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 (n + 1) + A078008 n) * A000120 n

end

end A135569.P6852986332185455161

namespace A135569

/-- `(A078008(n+1)+A078008(n))*A000120(n)` -/
def P6852986332185455161.Spec : Prop :=
  ∀ n, P6852986332185455161.a n = A135569 n

end A135569

/-! ## A135569.P15601301965626283850

`(A000918(n+1)-A000918(n))*A000120(n)`
-/

namespace A135569.P15601301965626283850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) - A000918 n) * A000120 n

end

end A135569.P15601301965626283850

namespace A135569

/-- `(A000918(n+1)-A000918(n))*A000120(n)` -/
def P15601301965626283850.Spec : Prop :=
  ∀ n, P15601301965626283850.a n = A135569 n

end A135569

/-! ## A135569.P1834553297163619162

`A000079(n)*A023416(A196168(n))`
-/

namespace A135569.P1834553297163619162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A023416 (A196168 n).toNat

end

end A135569.P1834553297163619162

namespace A135569

/-- `A000079(n)*A023416(A196168(n))` -/
def P1834553297163619162.Spec : Prop :=
  ∀ n, P1834553297163619162.a n = A135569 n

end A135569

/-! ## A135569.P14818380179064606718

`(A124767(n)+A124762(n))*A011782(n+1)`
-/

namespace A135569.P14818380179064606718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124767 n + A124762 n) * A011782 (n + 1)

end

end A135569.P14818380179064606718

namespace A135569

/-- `(A124767(n)+A124762(n))*A011782(n+1)` -/
def P14818380179064606718.Spec : Prop :=
  ∀ n, P14818380179064606718.a n = A135569 n

end A135569

/-!
# A135570: a(n) = 1 + Sum_{i=1..n} S2(i)*2^i, where S2(n) is digit sum of n, n in binary notation.

The programs for A135570, the canonical program `A135570.P7925513415246481314` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135570 has offset 0).

The definition of A135570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135570.P7925513415246481314

`∑[A135569(n)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135570

/-- `∑[A135569(n)]+1` -/
def P7925513415246481314.Spec : Prop :=
  ∀ n, P7925513415246481314.a n = A135570 n

theorem P7925513415246481314.correct : P7925513415246481314.Spec := by
  intro n
  simp only [A135570]

end A135570

/-! ## A135570.P11070603616830190346

`∑[2^n*A000120(n)]+1`
-/

namespace A135570.P11070603616830190346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P11070603616830190346

namespace A135570

/-- `∑[2^n*A000120(n)]+1` -/
def P11070603616830190346.Spec : Prop :=
  ∀ n, P11070603616830190346.a n = A135570 n

end A135570

/-! ## A135570.P1012155323444174048

`∑[(2*n-A005187(n))*2^n]+1`
-/

namespace A135570.P1012155323444174048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A005187 n) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P1012155323444174048

namespace A135570

/-- `∑[(2*n-A005187(n))*2^n]+1` -/
def P1012155323444174048.Spec : Prop :=
  ∀ n, P1012155323444174048.a n = A135570 n

end A135570

/-! ## A135570.P1826709478395470639

`∑[A000120(n)*A155559(n)]+1`
-/

namespace A135570.P1826709478395470639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P1826709478395470639

namespace A135570

/-- `∑[A000120(n)*A155559(n)]+1` -/
def P1826709478395470639.Spec : Prop :=
  ∀ n, P1826709478395470639.a n = A135570 n

end A135570

/-! ## A135570.P11857778274886485848

`∑[2^n*A000120(A008574(n))]`
-/

namespace A135570.P11857778274886485848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000120 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135570.P11857778274886485848

namespace A135570

/-- `∑[2^n*A000120(A008574(n))]` -/
def P11857778274886485848.Spec : Prop :=
  ∀ n, P11857778274886485848.a n = A135570 n

end A135570

/-! ## A135570.P5056222881124868732

`∑[∏{e}[A001316(n), #*A000079(n)]]`
-/

namespace A135570.P5056222881124868732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135570.P5056222881124868732

namespace A135570

/-- `∑[∏{e}[A001316(n), #*A000079(n)]]` -/
def P5056222881124868732.Spec : Prop :=
  ∀ n, P5056222881124868732.a n = A135570 n

end A135570

/-! ## A135570.P3902851815540415934

`∑[dr(A007088(n))*A000079(n)]+1`
-/

namespace A135570.P3902851815540415934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P3902851815540415934

namespace A135570

/-- `∑[dr(A007088(n))*A000079(n)]+1` -/
def P3902851815540415934.Spec : Prop :=
  ∀ n, P3902851815540415934.a n = A135570 n

end A135570

/-! ## A135570.P490635106437269664

`∑[A000120(n)*A131577(n+1)]+1`
-/

namespace A135570.P490635106437269664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P490635106437269664

namespace A135570

/-- `∑[A000120(n)*A131577(n+1)]+1` -/
def P490635106437269664.Spec : Prop :=
  ∀ n, P490635106437269664.a n = A135570 n

end A135570

/-! ## A135570.P2517573718146052470

`∑[(A160385(n)+A160383(n))*2^n]+1`
-/

namespace A135570.P2517573718146052470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160385 n + A160383 n) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P2517573718146052470

namespace A135570

/-- `∑[(A160385(n)+A160383(n))*2^n]+1` -/
def P2517573718146052470.Spec : Prop :=
  ∀ n, P2517573718146052470.a n = A135570 n

end A135570

/-! ## A135570.P9278910492340718481

`a(n-1)+A000120(n)*A011782(n+1)` with `a(0)=1`
-/

namespace A135570.P9278910492340718481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000120 n * A011782 (n + 1)

end

end A135570.P9278910492340718481

namespace A135570

/-- `a(n-1)+A000120(n)*A011782(n+1)` -/
def P9278910492340718481.Spec : Prop :=
  ∀ n, P9278910492340718481.a n = A135570 n

end A135570

/-!
# A135571: Positive integers that are the difference of two positive triangular numbers in an odd number of ways.

The programs for A135571, there is no canonical definition to state claims against.
-/

/-! ## A135571.P11780697312624691671

`eq[A005614(A004018(n)), A010054(n)]`
-/

namespace A135571.P11780697312624691671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A004018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P11780697312624691671

/-! ## A135571.P15355449817420606296

`eq[A000035(A039653(n)), A010054(n)]`
-/

namespace A135571.P15355449817420606296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P15355449817420606296

/-! ## A135571.P10224305809397038617

`eq[A014675(A004018(n)), A035214(n)]`
-/

namespace A135571.P10224305809397038617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A004018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P10224305809397038617

/-! ## A135571.P1778464469611980490

`eq[A010054(n), A025868(A033715(n))]`
-/

namespace A135571.P1778464469611980490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P1778464469611980490

/-! ## A135571.P2976461938494452028

`eq[A000034(A039653(n)), A035214(n)]`
-/

namespace A135571.P2976461938494452028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P2976461938494452028

/-! ## A135571.P17754337643454448426

`eq[A000035(A069283(n)), A010054(n)]`
-/

namespace A135571.P17754337643454448426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069283 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P17754337643454448426

/-! ## A135571.P4921330781759466508

`eq[A000034(A069283(n)), A035214(n)]`
-/

namespace A135571.P4921330781759466508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A069283 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P4921330781759466508

/-! ## A135571.P8043242427947890390

`eq[A057427(A002262(n)), A093709(n)]`
-/

namespace A135571.P8043242427947890390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002262 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135571.P8043242427947890390

/-!
# A135572: Numbers k such that the largest prime-power dividing k is a square.

The programs for A135572, there is no canonical definition to state claims against.
-/

/-! ## A135572.P3540473270408065090

`record[(n+1)/A007913(A034699(n+1))]`
-/

namespace A135572.P3540473270408065090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (A034699 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135572.P3540473270408065090

/-! ## A135572.P11013694646931381349

`eq[1, A269910(A088388(n+1))]+1`
-/

namespace A135572.P11013694646931381349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 (A088388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135572.P11013694646931381349

/-! ## A135572.P1285460633161753633

`record[lcm(A008833(n+1), A284600(n+1))]`
-/

namespace A135572.P1285460633161753633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008833 (n + 1)) (A284600 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135572.P1285460633161753633

/-! ## A135572.P6657689900725793977

`record[A103517(n)/A158522(A034699(n+1))]`
-/

namespace A135572.P6657689900725793977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A158522 (A034699 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135572.P6657689900725793977

/-! ## A135572.P10199721710732997213

`lt[A269910(A088388(n+1)), A010702(n)]+1`
-/

namespace A135572.P10199721710732997213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269910 (A088388 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A135572.P10199721710732997213

/-!
# A135573: Array T(n,m) of super ballot numbers read along ascending antidiagonals.

The programs for A135573, the canonical program `A135573.P6360191770483409668` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135573 has offset 0).

The definition of A135573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135573.P7339215009852672158

`A078817(n)/A007318(n)`
-/

namespace A135573.P7339215009852672158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078817 n : ℚ) / (A007318 n : ℚ)

end

end A135573.P7339215009852672158

namespace A135573

/-- `A078817(n)/A007318(n)` -/
def P7339215009852672158.Spec : Prop :=
  ∀ n, P7339215009852672158.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P7207762315223559827

`abs(A078817(n)/A117440(n))`
-/

namespace A135573.P7207762315223559827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078817 n : ℚ) / (A117440 n : ℚ)|

end

end A135573.P7207762315223559827

namespace A135573

/-- `abs(A078817(n)/A117440(n))` -/
def P7207762315223559827.Spec : Prop :=
  ∀ n, P7207762315223559827.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P9432486565948485426

`abs(A078817(n)/A130595(n))`
-/

namespace A135573.P9432486565948485426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078817 n : ℚ) / (A130595 n : ℚ)|

end

end A135573.P9432486565948485426

namespace A135573

/-- `abs(A078817(n)/A130595(n))` -/
def P9432486565948485426.Spec : Prop :=
  ∀ n, P9432486565948485426.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P15864258597474555337

`A078817(n)/sqrt(A008459(n))`
-/

namespace A135573.P15864258597474555337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078817 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A135573.P15864258597474555337

namespace A135573

/-- `A078817(n)/sqrt(A008459(n))` -/
def P15864258597474555337.Spec : Prop :=
  ∀ n, P15864258597474555337.a n = (A135573 n : ℝ)

end A135573

/-! ## A135573.P8662473359264116377

`A078817(n)/Δ[A102363(n)]`
-/

namespace A135573.P8662473359264116377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078817 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A135573.P8662473359264116377

namespace A135573

/-- `A078817(n)/Δ[A102363(n)]` -/
def P8662473359264116377.Spec : Prop :=
  ∀ n, P8662473359264116377.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P6360191770483409668

`A068555(A007401(n+1))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135573

/-- `A068555(A007401(n+1))/2` -/
def P6360191770483409668.Spec : Prop :=
  ∀ n, P6360191770483409668.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P3230545445825859300

`2/A028326(n)*A078817(n)`
-/

namespace A135573.P3230545445825859300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A078817 n : ℚ)

end

end A135573.P3230545445825859300

namespace A135573

/-- `2/A028326(n)*A078817(n)` -/
def P3230545445825859300.Spec : Prop :=
  ∀ n, P3230545445825859300.a n = (A135573 n : ℚ)

end A135573

/-! ## A135573.P4578179210956028427

`A078817(n)/A014682(A028326(n))`
-/

namespace A135573.P4578179210956028427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078817 n : ℚ) / (A014682 (A028326 n).toNat : ℚ)

end

end A135573.P4578179210956028427

namespace A135573

/-- `A078817(n)/A014682(A028326(n))` -/
def P4578179210956028427.Spec : Prop :=
  ∀ n, P4578179210956028427.a n = (A135573 n : ℚ)

end A135573

/-!
# A135574: A024495 but with terms swapped in pairs.

The programs for A135574, the canonical program `A135574.P16543601751761677595` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135574 has offset 0).

The definition of A135574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135574.P16543601751761677595

`3*a(n-2)+3*a(n-4)+4*a(n-6)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=11, a(5)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135574

/-- `3*a(n-2)+3*a(n-4)+4*a(n-6)` -/
def P16543601751761677595.Spec : Prop :=
  ∀ n, (P16543601751761677595.a n : ℤ) = A135574 n

theorem P16543601751761677595.correct : P16543601751761677595.Spec := by
  intro n
  simp only [A135574]

end A135574

/-! ## A135574.P1508045249649598515

`A024495(xor(1, n))`
-/

namespace A135574.P1508045249649598515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (Nat.xor 1 n)

end

end A135574.P1508045249649598515

namespace A135574

/-- `A024495(xor(1, n))` -/
def P1508045249649598515.Spec : Prop :=
  ∀ n, P1508045249649598515.a n = A135574 n

end A135574

/-! ## A135574.P11343113682471641513

`A024495((-1)^n+n)`
-/

namespace A135574.P11343113682471641513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 ((-1) ^ n + (n : ℤ)).toNat

end

end A135574.P11343113682471641513

namespace A135574

/-- `A024495((-1)^n+n)` -/
def P11343113682471641513.Spec : Prop :=
  ∀ n, P11343113682471641513.a n = A135574 n

end A135574

/-! ## A135574.P7937345136704627812

`A094359(n)-A131720(n)`
-/

namespace A135574.P7937345136704627812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n - A131720 n

end

end A135574.P7937345136704627812

namespace A135574

/-- `A094359(n)-A131720(n)` -/
def P7937345136704627812.Spec : Prop :=
  ∀ n, P7937345136704627812.a n = A135574 n

end A135574

/-! ## A135574.P7715866790830816552

`A191272(A002265(2*n))-A024495(n)`
-/

namespace A135574.P7715866790830816552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191272 (A002265 (2 * n)).toNat - A024495 n

end

end A135574.P7715866790830816552

namespace A135574

/-- `A191272(A002265(2*n))-A024495(n)` -/
def P7715866790830816552.Spec : Prop :=
  ∀ n, P7715866790830816552.a n = A135574 n

end A135574

/-! ## A135574.P10400384148844577979

`A131720(A131720(n)+n)+A094359(n)`
-/

namespace A135574.P10400384148844577979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131720 (A131720 n + (n : ℤ)).toNat + A094359 n

end

end A135574.P10400384148844577979

namespace A135574

/-- `A131720(A131720(n)+n)+A094359(n)` -/
def P10400384148844577979.Spec : Prop :=
  ∀ n, P10400384148844577979.a n = A135574 n

end A135574

/-! ## A135574.P16073904298657889290

`A024495(A004442(n))%A219316(n+6)`
-/

namespace A135574.P16073904298657889290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024495 (A004442 n).toNat) (A219316 (n + 6))

end

end A135574.P16073904298657889290

namespace A135574

/-- `A024495(A004442(n))%A219316(n+6)` -/
def P16073904298657889290.Spec : Prop :=
  ∀ n, P16073904298657889290.a n = A135574 n

end A135574

/-!
# A135575: a(n) = A135574(n+1) - 2*A135574(n).

The programs for A135575, the canonical program `A135575.P6885642071124699221` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135575 has offset 0).

The definition of A135575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135575.P6885642071124699221

`A135574(n+1)-2*A135574(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135575

/-- `A135574(n+1)-2*A135574(n)` -/
def P6885642071124699221.Spec : Prop :=
  ∀ n, P6885642071124699221.a n = A135575 n

theorem P6885642071124699221.correct : P6885642071124699221.Spec := by
  intro n
  simp only [A135575]

end A135575

/-! ## A135575.P10826038274926869538

`Δ[A135574(n)]-A135574(n)`
-/

namespace A135575.P10826038274926869538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135574 n

end

end A135575.P10826038274926869538

namespace A135575

/-- `Δ[A135574(n)]-A135574(n)` -/
def P10826038274926869538.Spec : Prop :=
  ∀ n, P10826038274926869538.a n = A135575 n

theorem P10826038274926869538.correct : P10826038274926869538.Spec := by
  intro n
  simp only [A135575, Nat.add_sub_cancel, A135575.P10826038274926869538.f1, A135575.P10826038274926869538.a, A135575.P6885642071124699221.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135575

/-! ## A135575.P11261195422034794542

`(A135694(n)-A000079(n))*A033999(n)`
-/

namespace A135575.P11261195422034794542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135694 n - A000079 n) * A033999 n

end

end A135575.P11261195422034794542

namespace A135575

/-- `(A135694(n)-A000079(n))*A033999(n)` -/
def P11261195422034794542.Spec : Prop :=
  ∀ n, P11261195422034794542.a n = A135575 n

end A135575

/-! ## A135575.P8515063663521077624

`(A135694(n)-A000079(n))*A056594(2*n)`
-/

namespace A135575.P8515063663521077624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135694 n - A000079 n) * A056594 (2 * n)

end

end A135575.P8515063663521077624

namespace A135575

/-- `(A135694(n)-A000079(n))*A056594(2*n)` -/
def P8515063663521077624.Spec : Prop :=
  ∀ n, P8515063663521077624.a n = A135575 n

end A135575

/-! ## A135575.P3526466867422209071

`(A135694(n)-A000079(n))*A135694(3*n)`
-/

namespace A135575.P3526466867422209071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135694 n - A000079 n) * A135694 (3 * n)

end

end A135575.P3526466867422209071

namespace A135575

/-- `(A135694(n)-A000079(n))*A135694(3*n)` -/
def P3526466867422209071.Spec : Prop :=
  ∀ n, P3526466867422209071.a n = A135575 n

end A135575

/-!
# A135576: Numbers whose binary expansion has only the digit "1" as first, central and final digit.

The programs for A135576, the canonical program `A135576.P2831809822028254911` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135576 has offset 1).

The definition of A135576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135576.P2831809822028254911

`xor(1, 2^n)+4^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135576

/-- `xor(1, 2^n)+4^n` -/
def P2831809822028254911.Spec : Prop :=
  ∀ n, (P2831809822028254911.a n : ℤ) = A135576 (n + 1)

theorem P2831809822028254911.correct : P2831809822028254911.Spec := by
  intro n
  simp only [A135576, Nat.add_sub_cancel]

end A135576

/-! ## A135576.P16778006069055935323

`or(1, or(2^n, 4^n))`
-/

namespace A135576.P16778006069055935323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor (2 ^ n) (4 ^ n))

end

end A135576.P16778006069055935323

namespace A135576

/-- `or(1, or(2^n, 4^n))` -/
def P16778006069055935323.Spec : Prop :=
  ∀ n, (P16778006069055935323.a n : ℤ) = A135576 (n + 1)

end A135576

/-! ## A135576.P16763199763362341236

`xor(1, xor(2^n, 4^n))`
-/

namespace A135576.P16763199763362341236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor (2 ^ n) (4 ^ n))

end

end A135576.P16763199763362341236

namespace A135576

/-- `xor(1, xor(2^n, 4^n))` -/
def P16763199763362341236.Spec : Prop :=
  ∀ n, (P16763199763362341236.a n : ℤ) = A135576 (n + 1)

end A135576

/-! ## A135576.P7575722093798548198

`∑{d}[-a(n-1), #^n]` with `a(0)=1, a(1)=4`
-/

namespace A135576.P7575722093798548198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A135576.P7575722093798548198

namespace A135576

/-- `∑{d}[-a(n-1), #^n]` -/
def P7575722093798548198.Spec : Prop :=
  ∀ n, (P7575722093798548198.a n : ℤ) = A135576 (n + 1)

end A135576

/-! ## A135576.P7427073160490864809

`2^n+4^n-(abs(1-n)-n)`
-/

namespace A135576.P7427073160490864809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((4 ^ n : ℤ) - (|1 - (n : ℤ)| - (n : ℤ)))

end

end A135576.P7427073160490864809

namespace A135576

/-- `2^n+4^n-(abs(1-n)-n)` -/
def P7427073160490864809.Spec : Prop :=
  ∀ n, P7427073160490864809.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P1867274424452461059

`(2^n+4^n+1)^ceil(sin(n)²)`
-/

namespace A135576.P1867274424452461059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n + 1 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A135576.P1867274424452461059

namespace A135576

/-- `(2^n+4^n+1)^ceil(sin(n)²)` -/
def P1867274424452461059.Spec : Prop :=
  ∀ n, P1867274424452461059.a n = (A135576 (n + 1) : ℚ)

end A135576

/-! ## A135576.P8876850211023339611

`or(4^n, A083318(n))`
-/

namespace A135576.P8876850211023339611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A083318 n)

end

end A135576.P8876850211023339611

namespace A135576

/-- `or(4^n, A083318(n))` -/
def P8876850211023339611.Spec : Prop :=
  ∀ n, P8876850211023339611.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P9750258057957976082

`or(A171449(n)+1, 4^n)`
-/

namespace A135576.P9750258057957976082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171449 n + 1) (4 ^ n : ℤ)

end

end A135576.P9750258057957976082

namespace A135576

/-- `or(A171449(n)+1, 4^n)` -/
def P9750258057957976082.Spec : Prop :=
  ∀ n, P9750258057957976082.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P5763636667070914647

`or(1, A005418(A103517(n)))`
-/

namespace A135576.P5763636667070914647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005418 (A103517 n).toNat)

end

end A135576.P5763636667070914647

namespace A135576

/-- `or(1, A005418(A103517(n)))` -/
def P5763636667070914647.Spec : Prop :=
  ∀ n, P5763636667070914647.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P6063578578655430076

`gcd(A000038(n), A001576(n))`
-/

namespace A135576.P6063578578655430076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001576 n)

end

end A135576.P6063578578655430076

namespace A135576

/-- `gcd(A000038(n), A001576(n))` -/
def P6063578578655430076.Spec : Prop :=
  ∀ n, (P6063578578655430076.a n : ℤ) = A135576 (n + 1)

end A135576

/-! ## A135576.P5038335844782729631

`and(A001576(n), A165747(n))`
-/

namespace A135576.P5038335844782729631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A165747 n)

end

end A135576.P5038335844782729631

namespace A135576

/-- `and(A001576(n), A165747(n))` -/
def P5038335844782729631.Spec : Prop :=
  ∀ n, P5038335844782729631.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P10687582685549216696

`xor(A052539(n), A171559(n))`
-/

namespace A135576.P10687582685549216696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052539 n) (A171559 n)

end

end A135576.P10687582685549216696

namespace A135576

/-- `xor(A052539(n), A171559(n))` -/
def P10687582685549216696.Spec : Prop :=
  ∀ n, P10687582685549216696.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P4387451286924794085

`and(A001576(n), A153881(n+1))`
-/

namespace A135576.P4387451286924794085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A153881 (n + 1))

end

end A135576.P4387451286924794085

namespace A135576

/-- `and(A001576(n), A153881(n+1))` -/
def P4387451286924794085.Spec : Prop :=
  ∀ n, P4387451286924794085.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P18163804409534440472

`or(1, A001576(n)-A304273(n+1))`
-/

namespace A135576.P18163804409534440472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001576 n - A304273 (n + 1))

end

end A135576.P18163804409534440472

namespace A135576

/-- `or(1, A001576(n)-A304273(n+1))` -/
def P18163804409534440472.Spec : Prop :=
  ∀ n, P18163804409534440472.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P18393776606320104653

`or(1, A131572(2*n)+A000079(n)²)`
-/

namespace A135576.P18393776606320104653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131572 (2 * n) + A000079 n ^ 2)

end

end A135576.P18393776606320104653

namespace A135576

/-- `or(1, A131572(2*n)+A000079(n)²)` -/
def P18393776606320104653.Spec : Prop :=
  ∀ n, P18393776606320104653.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P4401283671397534037

`or(A127904(2*n+1), A127904(n+1))`
-/

namespace A135576.P4401283671397534037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127904 (2 * n + 1)) (A127904 (n + 1))

end

end A135576.P4401283671397534037

namespace A135576

/-- `or(A127904(2*n+1), A127904(n+1))` -/
def P4401283671397534037.Spec : Prop :=
  ∀ n, P4401283671397534037.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P5339008663964124866

`or(1, A131572(2*n)+A000079(2*n))`
-/

namespace A135576.P5339008663964124866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131572 (2 * n) + A000079 (2 * n))

end

end A135576.P5339008663964124866

namespace A135576

/-- `or(1, A131572(2*n)+A000079(2*n))` -/
def P5339008663964124866.Spec : Prop :=
  ∀ n, P5339008663964124866.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P9891730380240114425

`A001576(n)%A004171(n)`
-/

namespace A135576.P9891730380240114425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001576 n) (A004171 n)

end

end A135576.P9891730380240114425

namespace A135576

/-- `A001576(n)%A004171(n)` -/
def P9891730380240114425.Spec : Prop :=
  ∀ n, P9891730380240114425.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P16056988698218950692

`and(A001576(n), A038184(n))`
-/

namespace A135576.P16056988698218950692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A038184 n)

end

end A135576.P16056988698218950692

namespace A135576

/-- `and(A001576(n), A038184(n))` -/
def P16056988698218950692.Spec : Prop :=
  ∀ n, P16056988698218950692.a n = A135576 (n + 1)

end A135576

/-! ## A135576.P12516746400961551650

`and(A001576(n), A083420(n))`
-/

namespace A135576.P12516746400961551650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A083420 n)

end

end A135576.P12516746400961551650

namespace A135576

/-- `and(A001576(n), A083420(n))` -/
def P12516746400961551650.Spec : Prop :=
  ∀ n, P12516746400961551650.a n = A135576 (n + 1)

end A135576

/-!
# A135577: Numbers that have only the digit "1" as first, central and final digit. For numbers with 5 or more digits the rest of digits are "0".

The programs for A135577, there is no canonical definition to state claims against.
-/

/-! ## A135577.P13814189681548081998

`or(1, 10^n)+and((10^n)², -2)`
-/

namespace A135577.P13814189681548081998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) : ℤ) + Int.land ((10 ^ n) ^ 2 : ℤ) (-2)

end

end A135577.P13814189681548081998

/-! ## A135577.P2772132234139796923

`or(1, 10^n)²-and(10^n, -2)`
-/

namespace A135577.P2772132234139796923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) ^ 2 : ℤ) - Int.land (10 ^ n : ℤ) (-2)

end

end A135577.P2772132234139796923

/-! ## A135577.P15451947597999188701

`lcm(and(-2, 10^n), or(1, 10^n))+1`
-/

namespace A135577.P15451947597999188701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.land (-2) (10 ^ n : ℤ)) (Nat.lor 1 (10 ^ n) : ℤ) + 1

end

end A135577.P15451947597999188701

/-! ## A135577.P7086909547298849815

`record[or(1, (-10)^n)]+and(-2, 10^n)`
-/

namespace A135577.P7086909547298849815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.land (-2) (10 ^ n : ℤ)

end

end A135577.P7086909547298849815

/-! ## A135577.P8509739743901738527

`(and(-2, 10^n)+1)²-and(-2, 10^n)`
-/

namespace A135577.P8509739743901738527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) + 1) ^ 2 - Int.land (-2) (10 ^ n : ℤ)

end

end A135577.P8509739743901738527

/-! ## A135577.P2732417935479476275

`(10^n+(10^n)²+1)*a(floor(acot(n)))` with `a(0)=1`
-/

namespace A135577.P2732417935479476275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 ^ n + ((10 ^ n) ^ 2 + 1)) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A135577.P2732417935479476275

/-! ## A135577.P9917398504834595755

`gcd(floor(acot(n)), A066138(n))`
-/

namespace A135577.P9917398504834595755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A066138 n)

end

end A135577.P9917398504834595755

/-! ## A135577.P5285827753870465335

`or(1, 10^n)+A178500(n)²`
-/

namespace A135577.P5285827753870465335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) : ℤ) + A178500 n ^ 2

end

end A135577.P5285827753870465335

/-! ## A135577.P10144688567293511539

`A000533(n)+and(-2, 10^n)²`
-/

namespace A135577.P10144688567293511539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n + Int.land (-2) (10 ^ n : ℤ) ^ 2

end

end A135577.P10144688567293511539

/-! ## A135577.P7153762893074239104

`A066138(n)-A000038(n)`
-/

namespace A135577.P7153762893074239104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066138 n - A000038 n

end

end A135577.P7153762893074239104

/-!
# A135578: Numbers that are not the sum of three distinct perfect powers (assuming 1, but not 0, is a perfect power).

The programs for A135578, there is no canonical definition to state claims against.
-/

/-! ## A135578.P2757849062780213072

`eq[A000007(n), A362425(n)]`
-/

namespace A135578.P2757849062780213072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135578.P2757849062780213072

/-! ## A135578.P1455579292260243437

`eq[A000038(n), A362425(n)]`
-/

namespace A135578.P1455579292260243437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135578.P1455579292260243437

/-! ## A135578.P11166069446392895083

`eq[A020761(n), A362425(n)]`
-/

namespace A135578.P11166069446392895083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135578.P11166069446392895083

/-! ## A135578.P13747796976511785266

`eq[A023933(n), A362425(n)]`
-/

namespace A135578.P13747796976511785266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135578.P13747796976511785266

/-! ## A135578.P17919113073569395307

`eq[A067158(n), A362425(n)]`
-/

namespace A135578.P17919113073569395307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067158 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135578.P17919113073569395307

/-!
# A135579: Not the sum of three distinct perfect powers > 1.

The programs for A135579, there is no canonical definition to state claims against.
-/

/-! ## A135579.P1533394638164133749

`lt[A130595(A321472(n+1)), A185019(n)]`
-/

namespace A135579.P1533394638164133749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A321472 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135579.P1533394638164133749

/-! ## A135579.P6682617993351209468

`lt[A268919(A029747(n+1)), A365665(n)]`
-/

namespace A135579.P6682617993351209468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268919 (A029747 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365665 (n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135579.P6682617993351209468

/-! ## A135579.P7239626698316043802

`lt[A052415(A343397(n+4)), A273368(n)]`
-/

namespace A135579.P7239626698316043802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052415 (A343397 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135579.P7239626698316043802

/-! ## A135579.P459645945489333427

`lt[A010893(A064413(n+1)), A056239(n+1)]`
-/

namespace A135579.P459645945489333427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A064413 (n + 1)).toNat + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135579.P459645945489333427

/-! ## A135579.P5177887631847794899

`lt[A134458(A008620(2*n+1)), A014105(n)]`
-/

namespace A135579.P5177887631847794899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (A008620 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135579.P5177887631847794899

/-!
# A135580: Largest prime visible as a substring of 10n+3.

The programs for A135580, there is no canonical definition to state claims against.
-/

/-! ## A135580.P15075072144831868967

`A047814(A017305(n))`
-/

namespace A135580.P15075072144831868967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A017305 n).toNat

end

end A135580.P15075072144831868967

/-! ## A135580.P7510877726289195474

`A047814(10*n+3)`
-/

namespace A135580.P7510877726289195474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (10 * n + 3)

end

end A135580.P7510877726289195474

/-! ## A135580.P16597244430349119736

`p?[A047814(n)*A071284(n)]`
-/

namespace A135580.P16597244430349119736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n * A071284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135580.P16597244430349119736

/-! ## A135580.P6513113414826371029

`p?[A047814(n)*A144468(n)]`
-/

namespace A135580.P6513113414826371029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n * A144468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135580.P6513113414826371029

/-! ## A135580.P11424488246168565420

`p?[A047814(Δ[A147874(n+1)])]`
-/

namespace A135580.P11424488246168565420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135580.P11424488246168565420

/-!
# A135582: Expansion of 1/((1-x^2*c(x))(1-x-2x^2)) where c(x) is the g.f. of A000108.

The programs for A135582, there is no canonical definition to state claims against.
-/

/-! ## A135582.P2605650897317765333

`A262689(A027282(n)+A026593(n+1))`
-/

namespace A135582.P2605650897317765333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A027282 n + A026593 (n + 1)).toNat

end

end A135582.P2605650897317765333

/-! ## A135582.P3622942082112850822

`A262689(A026593(n+1)+A026585(2*n))`
-/

namespace A135582.P3622942082112850822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A026593 (n + 1) + A026585 (2 * n)).toNat

end

end A135582.P3622942082112850822

/-! ## A135582.P16163800732673424543

`A262689(A027282(n)+A026595(2*n+1))`
-/

namespace A135582.P16163800732673424543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A027282 n + A026595 (2 * n + 1)).toNat

end

end A135582.P16163800732673424543

/-! ## A135582.P4205041612158691037

`A262689(A027282(n)+A026584((2*n+1)²+n+1))`
-/

namespace A135582.P4205041612158691037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A027282 n + A026584 ((2 * n + 1) ^ 2 + (n + 1))).toNat

end

end A135582.P4205041612158691037

/-!
# A135583: a(n) = 4*a(n-1) - 4 for n>0, a(0)=3.

The programs for A135583, the canonical program `A135583.P5233325972027640022` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135583 has offset 0).

The definition of A135583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4` (program `A135583.P5233325972027640022`, by `A135583.P5233325972027640022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135583.P5233325972027640022

`4*a(n-1)-4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135583

/-- `4*a(n-1)-4` -/
def P5233325972027640022.Spec : Prop :=
  ∀ n, P5233325972027640022.a n = A135583 n

theorem P5233325972027640022.correct : P5233325972027640022.Spec := by
  intro n
  simp only [A135583]

end A135583

/-! ## A135583.P2138326975120037622

`(4+5*4^n)/3`
-/

namespace A135583.P2138326975120037622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 + 5 * 4 ^ n : ℚ) / 3

end

end A135583.P2138326975120037622

namespace A135583

/-- `(4+5*4^n)/3` -/
def P2138326975120037622.Spec : Prop :=
  ∀ n, P2138326975120037622.a n = (A135583 n : ℚ)

theorem P2138326975120037622.correct : P2138326975120037622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A135583, Nat.add_sub_cancel, A135583.P2138326975120037622.a, A135583.P5233325972027640022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A135583, Nat.add_sub_cancel, A135583.P2138326975120037622.a, A135583.P5233325972027640022.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135583

/-! ## A135583.P18326317150930110756

`lcm(4, 1-a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A135583.P18326317150930110756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  Int.lcm 4 (1 - (a (n - 1) : ℤ))

end

end A135583.P18326317150930110756

namespace A135583

/-- `lcm(4, 1-a(n-1))` -/
def P18326317150930110756.Spec : Prop :=
  ∀ n, (P18326317150930110756.a n : ℤ) = A135583 n

end A135583

/-! ## A135583.P1053486505957202578

`record[4-a(n-1)-a(n-1)]` with `a(0)=3`
-/

namespace A135583.P1053486505957202578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135583.P1053486505957202578

namespace A135583

/-- `record[4-a(n-1)-a(n-1)]` -/
def P1053486505957202578.Spec : Prop :=
  ∀ n, P1053486505957202578.a n = A135583 n

end A135583

/-! ## A135583.P10497115439427790078

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-4` with `a(0)=3`
-/

namespace A135583.P10497115439427790078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 4)))

end

end A135583.P10497115439427790078

namespace A135583

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-4` -/
def P10497115439427790078.Spec : Prop :=
  ∀ n, P10497115439427790078.a n = A135583 n

theorem P10497115439427790078.correct : P10497115439427790078.Spec := by
  intro n
  simp only [A135583, Nat.add_sub_cancel, A135583.P10497115439427790078.a, A135583.P5233325972027640022.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135583

/-! ## A135583.P13586047543033400204

`a(n-1)-(4-a(n-1)-a(n-1)-a(n-1))` with `a(0)=3`
-/

namespace A135583.P13586047543033400204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (4 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A135583.P13586047543033400204

namespace A135583

/-- `a(n-1)-(4-a(n-1)-a(n-1)-a(n-1))` -/
def P13586047543033400204.Spec : Prop :=
  ∀ n, P13586047543033400204.a n = A135583 n

theorem P13586047543033400204.correct : P13586047543033400204.Spec := by
  intro n
  simp only [A135583, Nat.add_sub_cancel, A135583.P13586047543033400204.a, A135583.P5233325972027640022.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135583

/-! ## A135583.P8877887774159220849

`A136412(n)+1`
-/

namespace A135583.P8877887774159220849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n + 1

end

end A135583.P8877887774159220849

namespace A135583

/-- `A136412(n)+1` -/
def P8877887774159220849.Spec : Prop :=
  ∀ n, P8877887774159220849.a n = A135583 n

end A135583

/-! ## A135583.P17230117215891339774

`A020989(n)+2`
-/

namespace A135583.P17230117215891339774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 n + 2

end

end A135583.P17230117215891339774

namespace A135583

/-- `A020989(n)+2` -/
def P17230117215891339774.Spec : Prop :=
  ∀ n, P17230117215891339774.a n = A135583 n

end A135583

/-! ## A135583.P10246429153748175715

`4-A165752(n)`
-/

namespace A135583.P10246429153748175715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A165752 n

end

end A135583.P10246429153748175715

namespace A135583

/-- `4-A165752(n)` -/
def P10246429153748175715.Spec : Prop :=
  ∀ n, P10246429153748175715.a n = A135583 n

end A135583

/-! ## A135583.P12317958384075513489

`∑[A003947(n)]+2`
-/

namespace A135583.P12317958384075513489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A135583.P12317958384075513489

namespace A135583

/-- `∑[A003947(n)]+2` -/
def P12317958384075513489.Spec : Prop :=
  ∀ n, P12317958384075513489.a n = A135583 n

end A135583

/-! ## A135583.P17163027208396834405

`Δ[A164044(n)]+1`
-/

namespace A135583.P17163027208396834405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A135583.P17163027208396834405

namespace A135583

/-- `Δ[A164044(n)]+1` -/
def P17163027208396834405.Spec : Prop :=
  ∀ n, P17163027208396834405.a n = A135583 n

end A135583

/-! ## A135583.P1582437282611327189

`Δ[A141291(n)]+2`
-/

namespace A135583.P1582437282611327189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A135583.P1582437282611327189

namespace A135583

/-- `Δ[A141291(n)]+2` -/
def P1582437282611327189.Spec : Prop :=
  ∀ n, P1582437282611327189.a n = A135583 n

end A135583

/-! ## A135583.P17086877444425273900

`record[A255138(n)+1]`
-/

namespace A135583.P17086877444425273900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135583.P17086877444425273900

namespace A135583

/-- `record[A255138(n)+1]` -/
def P17086877444425273900.Spec : Prop :=
  ∀ n, P17086877444425273900.a n = A135583 n

end A135583

/-! ## A135583.P18385914648277689458

`Δ[A068018(Δ[n²])]`
-/

namespace A135583.P18385914648277689458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068018 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135583.P18385914648277689458

namespace A135583

/-- `Δ[A068018(Δ[n²])]` -/
def P18385914648277689458.Spec : Prop :=
  ∀ n, P18385914648277689458.a n = A135583 n

end A135583

/-! ## A135583.P685205234453511673

`A048573(2*n)+1`
-/

namespace A135583.P685205234453511673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (2 * n) + 1

end

end A135583.P685205234453511673

namespace A135583

/-- `A048573(2*n)+1` -/
def P685205234453511673.Spec : Prop :=
  ∀ n, P685205234453511673.a n = A135583 n

end A135583

/-! ## A135583.P9624853674367443253

`A171231(2*n)+1`
-/

namespace A135583.P9624853674367443253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 (2 * n) + 1

end

end A135583.P9624853674367443253

namespace A135583

/-- `A171231(2*n)+1` -/
def P9624853674367443253.Spec : Prop :=
  ∀ n, P9624853674367443253.a n = A135583 n

end A135583

/-! ## A135583.P16886668041229983946

`A255138(2*n)+1`
-/

namespace A135583.P16886668041229983946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 (2 * n) + 1

end

end A135583.P16886668041229983946

namespace A135583

/-- `A255138(2*n)+1` -/
def P16886668041229983946.Spec : Prop :=
  ∀ n, P16886668041229983946.a n = A135583 n

end A135583

/-! ## A135583.P5692614570148589058

`A084170(2*n)+2`
-/

namespace A135583.P5692614570148589058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 (2 * n) + 2

end

end A135583.P5692614570148589058

namespace A135583

/-- `A084170(2*n)+2` -/
def P5692614570148589058.Spec : Prop :=
  ∀ n, P5692614570148589058.a n = A135583 n

end A135583

/-!
# A135585: a(n) = Sum_{i=1..n} (floor(S2(i)/3) mod 2), where S2(i) = A000120(i).

The programs for A135585, the canonical program `A135585.P10586276068203702289` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135585 has offset 0).

The definition of A135585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135585.P10586276068203702289

`∑[A135133(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135585

/-- `∑[A135133(n)]` -/
def P10586276068203702289.Spec : Prop :=
  ∀ n, P10586276068203702289.a n = A135585 n

theorem P10586276068203702289.correct : P10586276068203702289.Spec := by
  intro n
  simp only [A135585]

end A135585

/-! ## A135585.P8324604508222839414

`∑[and(1, val(A001316(n), 8))]`
-/

namespace A135585.P8324604508222839414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (A001316 n).toNat 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P8324604508222839414

namespace A135585

/-- `∑[and(1, val(A001316(n), 8))]` -/
def P8324604508222839414.Spec : Prop :=
  ∀ n, (P8324604508222839414.a n : ℤ) = A135585 n

end A135585

/-! ## A135585.P12860132733192652771

`∑[floor(A000120(n)/3)%2]`
-/

namespace A135585.P12860132733192652771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000120 n : ℚ) / 3⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P12860132733192652771

namespace A135585

/-- `∑[floor(A000120(n)/3)%2]` -/
def P12860132733192652771.Spec : Prop :=
  ∀ n, P12860132733192652771.a n = A135585 n

end A135585

/-! ## A135585.P5046981919220657986

`∑[A011670(A038573(n))]`
-/

namespace A135585.P5046981919220657986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011670 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P5046981919220657986

namespace A135585

/-- `∑[A011670(A038573(n))]` -/
def P5046981919220657986.Spec : Prop :=
  ∀ n, P5046981919220657986.a n = A135585 n

end A135585

/-! ## A135585.P410945575099646175

`∑[A151899((1-A000120(n))²)]`
-/

namespace A135585.P410945575099646175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 ((1 - A000120 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P410945575099646175

namespace A135585

/-- `∑[A151899((1-A000120(n))²)]` -/
def P410945575099646175.Spec : Prop :=
  ∀ n, P410945575099646175.a n = A135585 n

end A135585

/-! ## A135585.P5383823038900560607

`∑[and(1, A002264(A000120(n+n)))]`
-/

namespace A135585.P5383823038900560607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002264 (A000120 (n + n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P5383823038900560607

namespace A135585

/-- `∑[and(1, A002264(A000120(n+n)))]` -/
def P5383823038900560607.Spec : Prop :=
  ∀ n, P5383823038900560607.a n = A135585 n

end A135585

/-! ## A135585.P13613908129677804304

`∑[A170968(A088512(n)+2)]`
-/

namespace A135585.P13613908129677804304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170968 (A088512 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P13613908129677804304

namespace A135585

/-- `∑[A170968(A088512(n)+2)]` -/
def P13613908129677804304.Spec : Prop :=
  ∀ n, P13613908129677804304.a n = A135585 n

end A135585

/-!
# A135586: a(1)=0; for n >= 1, a(2n)=a(n)+2^A000120(n)-1, a(2n+1)=2a(2n).

The programs for A135586, there is no canonical definition to state claims against.
-/

/-! ## A135586.P11703978228871779658

`A135587(n+1)-Δ[A267700(n)]`
-/

namespace A135586.P11703978228871779658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135587 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135586.P11703978228871779658

/-! ## A135586.P3670091576249619993

`A135587(n+1)-A038573(n+1)`
-/

namespace A135586.P3670091576249619993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135587 (n + 1) - A038573 (n + 1)

end

end A135586.P3670091576249619993

/-! ## A135586.P10877143901340218655

`A135587(n+1)+1-A001316(n+1)`
-/

namespace A135586.P10877143901340218655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135587 (n + 1) + (1 - A001316 (n + 1))

end

end A135586.P10877143901340218655

/-! ## A135586.P3515609981012167358

`A135587(n+1)-A000203(A048896(n))`
-/

namespace A135586.P3515609981012167358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135587 (n + 1) - A000203 (A048896 n).toNat

end

end A135586.P3515609981012167358

/-! ## A135586.P12574787803337755722

`(A135587(n+1)+A135587(n+1))%A135587(2*(n+1))`
-/

namespace A135586.P12574787803337755722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135587 (n + 1) + A135587 (n + 1)) (A135587 (2 * (n + 1)))

end

end A135586.P12574787803337755722

/-! ## A135586.P10185337673196607885

`∑{d}[A019565(n+1), A252735(#)]`
-/

namespace A135586.P10185337673196607885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252735 d

end

end A135586.P10185337673196607885

/-! ## A135586.P3027542902715684148

`∑{d}[A019565(n+1), A297167(#)]`
-/

namespace A135586.P3027542902715684148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297167 d

end

end A135586.P3027542902715684148

/-!
# A135587: a(n) = A135586(2n).

The programs for A135587, there is no canonical definition to state claims against.
-/

/-! ## A135587.P6063941113149820386

`A135586(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135587.P6063941113149820386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135586 (2 * (n + 1))

end

end A135587.P6063941113149820386

/-! ## A135587.P14293911749257297577

`A135586(n+2+n)-log2(1/2)-1`
-/

namespace A135587.P14293911749257297577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135586 (n + 2 + n) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A135587.P14293911749257297577

/-! ## A135587.P9096471750254863

`A135586(n+1)+A038573(n+1)`
-/

namespace A135587.P9096471750254863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135586 (n + 1) + A038573 (n + 1)

end

end A135587.P9096471750254863

/-! ## A135587.P8494545728055227677

`or(A000007(n), A135586(n+2+n))`
-/

namespace A135587.P8494545728055227677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135586 (n + 2 + n))

end

end A135587.P8494545728055227677

/-! ## A135587.P13561902866310172533

`A001316(n+1)+A135586(n+1)-1`
-/

namespace A135587.P13561902866310172533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) + (A135586 (n + 1) - 1)

end

end A135587.P13561902866310172533

/-! ## A135587.P7397756936846773663

`A135586(A103517(n))+A000007(n)`
-/

namespace A135587.P7397756936846773663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135586 (A103517 n).toNat + A000007 n

end

end A135587.P7397756936846773663

/-! ## A135587.P13132977701722023226

`A135586(n+1)+A000203(A048896(n))`
-/

namespace A135587.P13132977701722023226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135586 (n + 1) + A000203 (A048896 n).toNat

end

end A135587.P13132977701722023226

/-! ## A135587.P15276926426547494162

`A135586(n+3+n)/2`
-/

namespace A135587.P15276926426547494162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135586 (n + 3 + n) : ℚ) / 2

end

end A135587.P15276926426547494162

/-! ## A135587.P11925583209713818151

`A004526(A135586(Δ[(n+1)²]))`
-/

namespace A135587.P11925583209713818151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A135586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A135587.P11925583209713818151

/-!
# A135588: Number of symmetric (0,1)-matrices with exactly n entries equal to 1 and no zero rows or columns.

The programs for A135588, there is no canonical definition to state claims against.
-/

/-! ## A135588.P5860353511153458098

`A344009(A217664(n))`
-/

namespace A135588.P5860353511153458098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (A217664 n).toNat

end

end A135588.P5860353511153458098

/-! ## A135588.P2566258403556724848

`A352226(A191277(n))+1`
-/

namespace A135588.P2566258403556724848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A191277 n).toNat + 1

end

end A135588.P2566258403556724848

/-! ## A135588.P729793942623877976

`A080635(n)+A052146(A007840(n))`
-/

namespace A135588.P729793942623877976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080635 n + A052146 (A007840 n).toNat

end

end A135588.P729793942623877976

/-!
# A135589: Triangle T(n,k) read by rows: number of k X k symmetric (0,1)-matrices with exactly n entries equal to 1 and no zero rows or columns.

The programs for A135589, there is no canonical definition to state claims against.
-/

/-! ## A135589.P7638037224942488907

`xor(A003056(A185213(n)), A343649(n+1))`
-/

namespace A135589.P7638037224942488907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A185213 n).toNat) (A343649 (n + 1))

end

end A135589.P7638037224942488907

/-! ## A135589.P10725231668146207292

`A360675(record[A265255(n)])`
-/

namespace A135589.P10725231668146207292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135589.P10725231668146207292

/-! ## A135589.P17649221589602921943

`A287820(2^A277536(n))`
-/

namespace A135589.P17649221589602921943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287820 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A277536 n : ℤ))).toNat

end

end A135589.P17649221589602921943

/-! ## A135589.P4297351930689472386

`A083895(A028419(n+2)+n)`
-/

namespace A135589.P4297351930689472386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A028419 (n + 2) + (n : ℤ)).toNat

end

end A135589.P4297351930689472386

/-! ## A135589.P11025497887480053608

`val(A007605(A212343(2*n+3)+1), 2)`
-/

namespace A135589.P11025497887480053608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007605 (A212343 (2 * n + 3) + 1).toNat).toNat 2

end

end A135589.P11025497887480053608

/-!
# A135591: a(1)=1; for n > 1, a(n) is number of earlier terms equal to number of proper divisors of n.

The programs for A135591, there is no canonical definition to state claims against.
-/

/-! ## A135591.P4003060210630205166

`A114897(n+1)^A296336(A061142(n+1))`
-/

namespace A135591.P4003060210630205166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114897 (n + 1) : ℚ) ^ (A296336 (A061142 (n + 1)).toNat : ℤ)

end

end A135591.P4003060210630205166

/-! ## A135591.P5776533266060063345

`A114897(A100994(n+1))%A004736(A100988(n+1))`
-/

namespace A135591.P5776533266060063345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114897 (A100994 (n + 1)).toNat) (A004736 (A100988 (n + 1)).toNat)

end

end A135591.P5776533266060063345

/-!
# A135593: Number of n X n symmetric (0,1)-matrices with exactly n+1 entries equal to 1 and no zero rows or columns.

The programs for A135593, the canonical program `A135593.P15696147614674031841` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135593 has offset 2).

The definition of A135593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135593.P5616505496029771199

`(n+2)*A189940(n+1)`
-/

namespace A135593.P5616505496029771199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189940 (n + 1)

end

end A135593.P5616505496029771199

namespace A135593

/-- `(n+2)*A189940(n+1)` -/
def P5616505496029771199.Spec : Prop :=
  ∀ n, P5616505496029771199.a n = A135593 (n + 2)

end A135593

/-! ## A135593.P15034406160465987126

`Δ[A189940(n+2)]-A000085(n+3)`
-/

namespace A135593.P15034406160465987126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000085 (n + 3)

end

end A135593.P15034406160465987126

namespace A135593

/-- `Δ[A189940(n+2)]-A000085(n+3)` -/
def P15034406160465987126.Spec : Prop :=
  ∀ n, P15034406160465987126.a n = A135593 (n + 2)

end A135593

/-! ## A135593.P665413901417968467

`(n+2)*(A162970(n+1)+A013989(n))`
-/

namespace A135593.P665413901417968467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A162970 (n + 1) + A013989 n)

end

end A135593.P665413901417968467

namespace A135593

/-- `(n+2)*(A162970(n+1)+A013989(n))` -/
def P665413901417968467.Spec : Prop :=
  ∀ n, P665413901417968467.a n = A135593 (n + 2)

end A135593

/-! ## A135593.P15696147614674031841

`A000085(n+2)+n*A001475(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135593

/-- `A000085(n+2)+n*A001475(n+2)` -/
def P15696147614674031841.Spec : Prop :=
  ∀ n, P15696147614674031841.a n = A135593 (n + 2)

theorem P15696147614674031841.correct : P15696147614674031841.Spec := by
  intro n
  simp only [A135593, Nat.add_sub_cancel]

end A135593

/-! ## A135593.P7992005355979273557

`(A000085(n+1)+A000085(n))*∑[n+1]`
-/

namespace A135593.P7992005355979273557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000085 (n + 1) + A000085 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135593.P7992005355979273557

namespace A135593

/-- `(A000085(n+1)+A000085(n))*∑[n+1]` -/
def P7992005355979273557.Spec : Prop :=
  ∀ n, P7992005355979273557.a n = A135593 (n + 2)

end A135593

/-!
# A135594: a(n) = (1/2^n) * Sum_{i=0..n} (-1)^(n-i) * binomial(n,i) * A000364(i).

The programs for A135594, there is no canonical definition to state claims against.
-/

/-! ## A135594.P6645163840418653591

`A265228(A339418(n²))`
-/

namespace A135594.P6645163840418653591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265228 (A339418 (n ^ 2)).toNat

end

end A135594.P6645163840418653591

/-! ## A135594.P9618870126148127624

`A192543(A308356(n)+A219541(n))`
-/

namespace A135594.P9618870126148127624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A308356 n + A219541 n).toNat

end

end A135594.P9618870126148127624

/-!
# A135596: Number of positive solutions of the Diophantine x*p+y*q=p^3+q^3, where p=n-th prime, q=(n+1)-th prime.

The programs for A135596, there is no canonical definition to state claims against.
-/

/-! ## A135596.P4675072972905479301

`A100484(n+2)-A160381(A214198(n+2))`
-/

namespace A135596.P4675072972905479301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - A160381 (A214198 (n + 2)).toNat

end

end A135596.P4675072972905479301

/-! ## A135596.P13551416119163638533

`A100484(n+2)-A108738(A148399(n)+1)%A008619(n)`
-/

namespace A135596.P13551416119163638533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) - Int.tmod (A108738 (A148399 n + 1).toNat) (A008619 n)

end

end A135596.P13551416119163638533

/-!
# A135597: Square array read by antidiagonals: row m (m >= 1) satisfies b(0) = b(1) = 1; b(n) = m*b(n-1) + b(n-2).

The programs for A135597, there is no canonical definition to state claims against.
-/

/-! ## A135597.P3525407163628041103

`A073133(n+1)-A025581(n)*A172236(n+1)`
-/

namespace A135597.P3525407163628041103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (n + 1) - A025581 n * A172236 (n + 1)

end

end A135597.P3525407163628041103

/-! ## A135597.P1495017922910100393

`A020650(A360965(n+1))`
-/

namespace A135597.P1495017922910100393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A360965 (n + 1)).toNat

end

end A135597.P1495017922910100393

/-! ## A135597.P1181540424763902360

`A196169(A086810(n)+1)`
-/

namespace A135597.P1181540424763902360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A086810 n + 1).toNat

end

end A135597.P1181540424763902360

/-! ## A135597.P5856068988895261306

`A225644(A085838(n)+1)`
-/

namespace A135597.P5856068988895261306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A085838 n + 1).toNat

end

end A135597.P5856068988895261306

/-! ## A135597.P4710526800013644728

`A196169(or(1, A086810(n)))`
-/

namespace A135597.P4710526800013644728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (Int.lor 1 (A086810 n)).toNat

end

end A135597.P4710526800013644728

/-!
# A135599: Word obtained from axiom 2 using the morphism 1-> 267, 2-> 13467, 3-> 247, 4-> 23567, 5-> 467, 6-> 12457, 7-> 123456.

The programs for A135599, there is no canonical definition to state claims against.
-/

/-! ## A135599.P3838048113307182111

`A059559(n+1)%A040012(A000083(n))`
-/

namespace A135599.P3838048113307182111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059559 (n + 1)) (A040012 (A000083 n).toNat)

end

end A135599.P3838048113307182111

/-! ## A135599.P17970153494247037747

`A286323(n+1)%A040012(A000083(n))`
-/

namespace A135599.P17970153494247037747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286323 (n + 1)) (A040012 (A000083 n).toNat)

end

end A135599.P17970153494247037747

/-! ## A135599.P309723182161221413

`A329847(n+1)%A040012(A000083(n))`
-/

namespace A135599.P309723182161221413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329847 (n + 1)) (A040012 (A000083 n).toNat)

end

end A135599.P309723182161221413

/-! ## A135599.P6215439820928714126

`and(A038573(A181565(n)), A059559(n+1))`
-/

namespace A135599.P6215439820928714126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038573 (A181565 n).toNat) (A059559 (n + 1))

end

end A135599.P6215439820928714126

/-! ## A135599.P14529967121330001701

`and(A059559(n+1), A284341(A020707(n)))`
-/

namespace A135599.P14529967121330001701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059559 (n + 1)) (A284341 (A020707 n).toNat)

end

end A135599.P14529967121330001701

