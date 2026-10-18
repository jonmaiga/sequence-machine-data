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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061300: Least number whose number of divisors is n!.

The programs for A061300, there is no canonical definition to state claims against.
-/

/-! ## A061300.P338330659737783648

`A005179(n!)`
-/

namespace A061300.P338330659737783648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (Nat.factorial n)

end

end A061300.P338330659737783648

/-! ## A061300.P12240916863355236747

`∏[A357582(n)]/A357582(n)`
-/

namespace A061300.P12240916863355236747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357582 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A357582 n : ℚ)

end

end A061300.P12240916863355236747

/-! ## A061300.P13489245840439928626

`A061799(n!)`
-/

namespace A061300.P13489245840439928626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Nat.factorial n)

end

end A061300.P13489245840439928626

/-! ## A061300.P1422424635635415161

`A061799(∏[round(1/acot(n))])`
-/

namespace A061300.P1422424635635415161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061300.P1422424635635415161

/-!
# A061301: a(n) = 2^(n*2^(n-1)).

The programs for A061301, the canonical program `A061301.P18044951887470478455` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061301 has offset 0).

The definition of A061301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061301.P18044951887470478455

`2^(2^(n-1)*n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061301

/-- `2^(2^(n-1)*n)` -/
def P18044951887470478455.Spec : Prop :=
  ∀ n, P18044951887470478455.a n = (A061301 n : ℝ)

end A061301

/-! ## A061301.P10682840133657949532

`2^(n*2^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061301.P10682840133657949532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A061301.P10682840133657949532

namespace A061301

/-- `2^(n*2^(n-1))` -/
def P10682840133657949532.Spec : Prop :=
  ∀ n, P10682840133657949532.a n = (A061301 n : ℝ)

end A061301

/-! ## A061301.P12205393472294620508

`record[(2*n)^and(n, -n)]`
-/

namespace A061301.P12205393472294620508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (Int.land (n : ℤ) (-(n : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061301.P12205393472294620508

namespace A061301

/-- `record[(2*n)^and(n, -n)]` -/
def P12205393472294620508.Spec : Prop :=
  ∀ n, P12205393472294620508.a n = (A061301 n : ℚ)

end A061301

/-!
# A061303: Given a prime p, let s(p,0)=p and let s(p,n+1) be the smallest prime == 1 (mod s(p,n)). Let S(p) be the sequence {s(p,n): n=0,1,...}. Let a(0)=2 and let a(n+1) be the smallest prime not in any of the sequences S(a(0)), ..., S(a(n)).

The programs for A061303, the canonical program `A061303.P10070890560532717022` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061303 has offset 0).

The definition of A061303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061303.P17806406966266160973

`p?[comp[A035095(n+1)]]`
-/

namespace A061303.P17806406966266160973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061303.P17806406966266160973

namespace A061303

/-- `p?[comp[A035095(n+1)]]` -/
def P17806406966266160973.Spec : Prop :=
  ∀ n, (P17806406966266160973.a n : ℤ) = A061303 n

end A061303

/-! ## A061303.P10070890560532717022

`p?[A145190(n+1)+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A061303

/-- `p?[A145190(n+1)+1]` -/
def P10070890560532717022.Spec : Prop :=
  ∀ n, P10070890560532717022.a n = A061303 n

theorem P10070890560532717022.correct : P10070890560532717022.Spec := by
  intro n
  simp only [A061303]

end A061303

/-! ## A061303.P14999423724259058229

`p?[comp[A034694(A151800(n))]]`
-/

namespace A061303.P14999423724259058229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A151800 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061303.P14999423724259058229

namespace A061303

/-- `p?[comp[A034694(A151800(n))]]` -/
def P14999423724259058229.Spec : Prop :=
  ∀ n, (P14999423724259058229.a n : ℤ) = A061303 n

end A061303

/-! ## A061303.P2079025984941876839

`p?[comp[A034694(A000040(n+1))]]`
-/

namespace A061303.P2079025984941876839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061303.P2079025984941876839

namespace A061303

/-- `p?[comp[A034694(A000040(n+1))]]` -/
def P2079025984941876839.Spec : Prop :=
  ∀ n, (P2079025984941876839.a n : ℤ) = A061303 n

end A061303

/-! ## A061303.P6348268675130699881

`p?[comp[A000040(A307805(n+1))]]`
-/

namespace A061303.P6348268675130699881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A307805 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061303.P6348268675130699881

namespace A061303

/-- `p?[comp[A000040(A307805(n+1))]]` -/
def P6348268675130699881.Spec : Prop :=
  ∀ n, (P6348268675130699881.a n : ℤ) = A061303 n

end A061303

/-! ## A061303.P14684755775375323624

`A000040(comp[A307805(n+1)-1]+1)`
-/

namespace A061303.P14684755775375323624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307805 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A061303.P14684755775375323624

namespace A061303

/-- `A000040(comp[A307805(n+1)-1]+1)` -/
def P14684755775375323624.Spec : Prop :=
  ∀ n, P14684755775375323624.a n = A061303 n

end A061303

/-! ## A061303.P8492320586266814239

`p?[A010051(A132948(n+1))+A000040(n+1)]`
-/

namespace A061303.P8492320586266814239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A132948 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061303.P8492320586266814239

namespace A061303

/-- `p?[A010051(A132948(n+1))+A000040(n+1)]` -/
def P8492320586266814239.Spec : Prop :=
  ∀ n, P8492320586266814239.a n = A061303 n

end A061303

/-! ## A061303.P8470646521868627107

`record[Δ[A007504(n)-A058250(n)]]`
-/

namespace A061303.P8470646521868627107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A058250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061303.P8470646521868627107

namespace A061303

/-- `record[Δ[A007504(n)-A058250(n)]]` -/
def P8470646521868627107.Spec : Prop :=
  ∀ n, P8470646521868627107.a n = A061303 n

end A061303

/-!
# A061304: Squarefree triangular numbers.

The programs for A061304, the canonical program `A061304.P10532715459546115728` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061304 has offset 1).

The definition of A061304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061304.P10532715459546115728

`A000217(A215726(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A061304

/-- `A000217(A215726(n+1))` -/
def P10532715459546115728.Spec : Prop :=
  ∀ n, P10532715459546115728.a n = A061304 (n + 1)

theorem P10532715459546115728.correct : P10532715459546115728.Spec := by
  intro n
  simp only [A061304, Nat.add_sub_cancel]

end A061304

/-! ## A061304.P16147464811208763301

`A000096(A215726(n+1)-1)+1`
-/

namespace A061304.P16147464811208763301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A215726 (n + 1) - 1).toNat + 1

end

end A061304.P16147464811208763301

namespace A061304

/-- `A000096(A215726(n+1)-1)+1` -/
def P16147464811208763301.Spec : Prop :=
  ∀ n, P16147464811208763301.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P9774966744515023981

`record[A139131(n+1)]`
-/

namespace A061304.P9774966744515023981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P9774966744515023981

namespace A061304

/-- `record[A139131(n+1)]` -/
def P9774966744515023981.Spec : Prop :=
  ∀ n, P9774966744515023981.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P11641147178617876659

`record[A361670(n+1)]`
-/

namespace A061304.P11641147178617876659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P11641147178617876659

namespace A061304

/-- `record[A361670(n+1)]` -/
def P11641147178617876659.Spec : Prop :=
  ∀ n, P11641147178617876659.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P14899348971972902370

`record[sqrt(A085037(n+1))]`
-/

namespace A061304.P14899348971972902370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085037 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P14899348971972902370

namespace A061304

/-- `record[sqrt(A085037(n+1))]` -/
def P14899348971972902370.Spec : Prop :=
  ∀ n, P14899348971972902370.a n = (A061304 (n + 1) : ℝ)

end A061304

/-! ## A061304.P8585539430218410503

`A161680(A215726(n+1)+1)`
-/

namespace A061304.P8585539430218410503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A215726 (n + 1) + 1).toNat

end

end A061304.P8585539430218410503

namespace A061304

/-- `A161680(A215726(n+1)+1)` -/
def P8585539430218410503.Spec : Prop :=
  ∀ n, P8585539430218410503.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P17201474190097202970

`record[∏{p}[∑[n], #]]`
-/

namespace A061304.P17201474190097202970
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P17201474190097202970

namespace A061304

/-- `record[∏{p}[∑[n], #]]` -/
def P17201474190097202970.Spec : Prop :=
  ∀ n, (P17201474190097202970.a n : ℤ) = A061304 (n + 1)

end A061304

/-! ## A061304.P9544223697833575918

`record[A007913(∑[n+1])]`
-/

namespace A061304.P9544223697833575918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P9544223697833575918

namespace A061304

/-- `record[A007913(∑[n+1])]` -/
def P9544223697833575918.Spec : Prop :=
  ∀ n, P9544223697833575918.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P2216974114885217290

`record[A007947(∑[n+1])]`
-/

namespace A061304.P2216974114885217290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P2216974114885217290

namespace A061304

/-- `record[A007947(∑[n+1])]` -/
def P2216974114885217290.Spec : Prop :=
  ∀ n, P2216974114885217290.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P1617507782943976357

`record[A008683(∑[n+1])²*∑[n+1]]`
-/

namespace A061304.P1617507782943976357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061304.P1617507782943976357

namespace A061304

/-- `record[A008683(∑[n+1])²*∑[n+1]]` -/
def P1617507782943976357.Spec : Prop :=
  ∀ n, P1617507782943976357.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P7560930106913788643

`filter[A000217(n+1), A008966(#)]`
-/

namespace A061304.P7560930106913788643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P7560930106913788643

namespace A061304

/-- `filter[A000217(n+1), A008966(#)]` -/
def P7560930106913788643.Spec : Prop :=
  ∀ n, P7560930106913788643.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P9074034799627639028

`filter[A005214(n+1), A008966(#)]`
-/

namespace A061304.P9074034799627639028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P9074034799627639028

namespace A061304

/-- `filter[A005214(n+1), A008966(#)]` -/
def P9074034799627639028.Spec : Prop :=
  ∀ n, P9074034799627639028.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P10759459277362809733

`filter[A375999(n+1), A008966(#)]`
-/

namespace A061304.P10759459277362809733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P10759459277362809733

namespace A061304

/-- `filter[A375999(n+1), A008966(#)]` -/
def P10759459277362809733.Spec : Prop :=
  ∀ n, P10759459277362809733.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P6727274516440761820

`filter[A390807(n+1), A008966(#)]`
-/

namespace A061304.P6727274516440761820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P6727274516440761820

namespace A061304

/-- `filter[A390807(n+1), A008966(#)]` -/
def P6727274516440761820.Spec : Prop :=
  ∀ n, P6727274516440761820.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P8537603541245667488

`filter[A117520(n+2), A008966(#)]`
-/

namespace A061304.P8537603541245667488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P8537603541245667488

namespace A061304

/-- `filter[A117520(n+2), A008966(#)]` -/
def P8537603541245667488.Spec : Prop :=
  ∀ n, P8537603541245667488.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P5287821567605954471

`filter[A161680(n+2), A008966(#)]`
-/

namespace A061304.P5287821567605954471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P5287821567605954471

namespace A061304

/-- `filter[A161680(n+2), A008966(#)]` -/
def P5287821567605954471.Spec : Prop :=
  ∀ n, P5287821567605954471.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P10978751661624768548

`filter[A179865(n+2), A008966(#)]`
-/

namespace A061304.P10978751661624768548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P10978751661624768548

namespace A061304

/-- `filter[A179865(n+2), A008966(#)]` -/
def P10978751661624768548.Spec : Prop :=
  ∀ n, P10978751661624768548.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P3919495896629248856

`filter[A334129(n+2), A008966(#)]`
-/

namespace A061304.P3919495896629248856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P3919495896629248856

namespace A061304

/-- `filter[A334129(n+2), A008966(#)]` -/
def P3919495896629248856.Spec : Prop :=
  ∀ n, P3919495896629248856.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P16241986061154807751

`filter[A001972(2*n), A008966(#)]`
-/

namespace A061304.P16241986061154807751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P16241986061154807751

namespace A061304

/-- `filter[A001972(2*n), A008966(#)]` -/
def P16241986061154807751.Spec : Prop :=
  ∀ n, P16241986061154807751.a n = A061304 (n + 1)

end A061304

/-! ## A061304.P16134006975932252246

`filter[A008795(2*n), A008966(#)]`
-/

namespace A061304.P16134006975932252246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A061304.P16134006975932252246

namespace A061304

/-- `filter[A008795(2*n), A008966(#)]` -/
def P16134006975932252246.Spec : Prop :=
  ∀ n, P16134006975932252246.a n = A061304 (n + 1)

end A061304

/-!
# A061305: Squarefree Fibonacci numbers.

The programs for A061305, there is no canonical definition to state claims against.
-/

/-! ## A061305.P15133519490295530476

`A000045(A037918(n+1))`
-/

namespace A061305.P15133519490295530476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037918 (n + 1)).toNat

end

end A061305.P15133519490295530476

/-! ## A061305.P2234072799183346106

`A212804(A037918(n+1)+1)`
-/

namespace A061305.P2234072799183346106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A037918 (n + 1) + 1).toNat

end

end A061305.P2234072799183346106

/-! ## A061305.P17575807333886562234

`A000045(∑[A107038(abs(1-n))])`
-/

namespace A061305.P17575807333886562234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061305.P17575807333886562234

/-! ## A061305.P7539946484752794830

`A000045(eq[A104714(n), A109009(n)])`
-/

namespace A061305.P7539946484752794830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061305.P7539946484752794830

/-! ## A061305.P11349446665905613922

`A000045(eq[A022307(n+1), A038575(n+1)]+1)`
-/

namespace A061305.P11349446665905613922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A061305.P11349446665905613922

/-! ## A061305.P10558939749686159230

`A118658(A037918(n+1)+1)/2`
-/

namespace A061305.P10558939749686159230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A037918 (n + 1) + 1).toNat : ℚ) / 2

end

end A061305.P10558939749686159230

/-!
# A061306: a(n) = B(B(n)), where B() are the Bell numbers, A000110.

The programs for A061306, there is no canonical definition to state claims against.
-/

/-! ## A061306.P7561811342933031655

`A000110(A000110(n))`
-/

namespace A061306.P7561811342933031655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A000110 n).toNat

end

end A061306.P7561811342933031655

/-!
# A061308: Smaller of two consecutive primes whose sum is a cube.

The programs for A061308, there is no canonical definition to state claims against.
-/

/-! ## A061308.P376262276047616117

`A001748(A071220(n+1))/3`
-/

namespace A061308.P376262276047616117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A071220 (n + 1)).toNat : ℚ) / 3

end

end A061308.P376262276047616117

/-!
# A061312: Triangle T[n,m]: T[n,-1] = 0; T[0,0] = 0; T[n,0] = n*n!; T[n,m] = T[n,m-1] - T[n-1,m-1].

The programs for A061312, there is no canonical definition to state claims against.
-/

/-! ## A061312.P17100146358334955489

`A047920(comp[∑[n]])`
-/

namespace A061312.P17100146358334955489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A061312.P17100146358334955489

/-! ## A061312.P7609549127155711339

`(C(comp[∑[n]]-n, 2)-(n+1))!*A076731(n+1)`
-/

namespace A061312.P7609549127155711339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A076731 (n + 1)

end

end A061312.P7609549127155711339

/-! ## A061312.P8380019189578069149

`A076731(n+1)*A119502(n)`
-/

namespace A061312.P8380019189578069149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076731 (n + 1) * A119502 n

end

end A061312.P8380019189578069149

/-! ## A061312.P14639586426892862052

`A130493(n+1)-A061018(n+1)`
-/

namespace A061312.P14639586426892862052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) - A061018 (n + 1)

end

end A061312.P14639586426892862052

/-! ## A061312.P8913914461774213962

`A068106(n+1+2*A025581(n))`
-/

namespace A061312.P8913914461774213962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 ((n + 1 : ℤ) + 2 * A025581 n).toNat

end

end A061312.P8913914461774213962

/-! ## A061312.P11558647000770458599

`A068106(A061579(n)+A002024(n+1))`
-/

namespace A061312.P11558647000770458599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A061579 n + A002024 (n + 1)).toNat

end

end A061312.P11558647000770458599

/-! ## A061312.P18268731503037797085

`A047920(A007401(n+1))-A047920(n)`
-/

namespace A061312.P18268731503037797085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A007401 (n + 1)).toNat - A047920 n

end

end A061312.P18268731503037797085

/-! ## A061312.P5342906658432390663

`A060475(A014132(n+1))*A119502(n)`
-/

namespace A061312.P5342906658432390663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A014132 (n + 1)).toNat * A119502 n

end

end A061312.P5342906658432390663

/-! ## A061312.P9846673340105021056

`A047920(A014132(n+1)-1)-A047920(n)`
-/

namespace A061312.P9846673340105021056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A014132 (n + 1) - 1).toNat - A047920 n

end

end A061312.P9846673340105021056

/-! ## A061312.P16766506278713781146

`A068106(n+1+A025581(n)+A025581(n))`
-/

namespace A061312.P16766506278713781146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 ((n + 1 : ℤ) + (A025581 n + A025581 n)).toNat

end

end A061312.P16766506278713781146

/-! ## A061312.P16616176771493202591

`A047920(A002024(n+1)+n)-A047920(n)`
-/

namespace A061312.P16616176771493202591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A002024 (n + 1) + (n : ℤ)).toNat - A047920 n

end

end A061312.P16616176771493202591

/-!
# A061313: Minimal number of steps to get from 1 to n by (a) subtracting 1 or (b) multiplying by 2.

The programs for A061313, the canonical program `A061313.P9812291804371352980` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061313 has offset 1).

The definition of A061313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061313.P12230308838684774778

`A119477(n+1)-1`
-/

namespace A061313.P12230308838684774778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) - 1

end

end A061313.P12230308838684774778

namespace A061313

/-- `A119477(n+1)-1` -/
def P12230308838684774778.Spec : Prop :=
  ∀ n, P12230308838684774778.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P9812291804371352980

`A080791(n)+A029837(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A061313

/-- `A080791(n)+A029837(n+1)` -/
def P9812291804371352980.Spec : Prop :=
  ∀ n, P9812291804371352980.a n = A061313 (n + 1)

theorem P9812291804371352980.correct : P9812291804371352980.Spec := by
  intro n
  simp only [A061313, Nat.add_sub_cancel]

end A061313

/-! ## A061313.P12663903847962599543

`a(floor(n/2))+gcd(2, n)` with `a(0)=0`
-/

namespace A061313.P12663903847962599543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.gcd 2 n

end

end A061313.P12663903847962599543

namespace A061313

/-- `a(floor(n/2))+gcd(2, n)` -/
def P12663903847962599543.Spec : Prop :=
  ∀ n, (P12663903847962599543.a n : ℤ) = A061313 (n + 1)

end A061313

/-! ## A061313.P8061771368688319455

`a(floor(n/2))+2-n%2` with `a(0)=0`
-/

namespace A061313.P8061771368688319455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (2 - ((n % 2 : ℕ) : ℤ))

end

end A061313.P8061771368688319455

namespace A061313

/-- `a(floor(n/2))+2-n%2` -/
def P8061771368688319455.Spec : Prop :=
  ∀ n, P8061771368688319455.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P10330071748386956596

`a(floor(n/2))+(n+1)%2+1` with `a(0)=0`
-/

namespace A061313.P10330071748386956596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2 + 1

end

end A061313.P10330071748386956596

namespace A061313

/-- `a(floor(n/2))+(n+1)%2+1` -/
def P10330071748386956596.Spec : Prop :=
  ∀ n, (P10330071748386956596.a n : ℤ) = A061313 (n + 1)

end A061313

/-! ## A061313.P5484413936129598693

`a(floor(n/2))+and(1, n+1)+1` with `a(0)=0`
-/

namespace A061313.P5484413936129598693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (n + 1) + 1

end

end A061313.P5484413936129598693

namespace A061313

/-- `a(floor(n/2))+and(1, n+1)+1` -/
def P5484413936129598693.Spec : Prop :=
  ∀ n, (P5484413936129598693.a n : ℤ) = A061313 (n + 1)

end A061313

/-! ## A061313.P6991172136679674299

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A061313.P6991172136679674299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061313.P6991172136679674299

namespace A061313

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P6991172136679674299.Spec : Prop :=
  ∀ n, P6991172136679674299.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P11298717545034476300

`a(floor(n/2))+val(n²+2, 2)+1` with `a(0)=0`
-/

namespace A061313.P11298717545034476300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.valuation (n ^ 2 + 2) 2 + 1

end

end A061313.P11298717545034476300

namespace A061313

/-- `a(floor(n/2))+val(n²+2, 2)+1` -/
def P11298717545034476300.Spec : Prop :=
  ∀ n, (P11298717545034476300.a n : ℤ) = A061313 (n + 1)

end A061313

/-! ## A061313.P13959485149671496663

`A120512(n+1)-Δ[n²]`
-/

namespace A061313.P13959485149671496663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120512 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A061313.P13959485149671496663

namespace A061313

/-- `A120512(n+1)-Δ[n²]` -/
def P13959485149671496663.Spec : Prop :=
  ∀ n, P13959485149671496663.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P9603062368267177243

`A326730(A073137(n))`
-/

namespace A061313.P9603062368267177243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A073137 n).toNat

end

end A061313.P9603062368267177243

namespace A061313

/-- `A326730(A073137(n))` -/
def P9603062368267177243.Spec : Prop :=
  ∀ n, P9603062368267177243.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P4306476505553087864

`A271479(n+1)-A080791(n)`
-/

namespace A061313.P4306476505553087864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (n + 1) - A080791 n

end

end A061313.P4306476505553087864

namespace A061313

/-- `A271479(n+1)-A080791(n)` -/
def P4306476505553087864.Spec : Prop :=
  ∀ n, P4306476505553087864.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P2969053662636447379

`A070939(n)+A290251(n)-1`
-/

namespace A061313.P2969053662636447379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + (A290251 n - 1)

end

end A061313.P2969053662636447379

namespace A061313

/-- `A070939(n)+A290251(n)-1` -/
def P2969053662636447379.Spec : Prop :=
  ∀ n, P2969053662636447379.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P17423342583405026297

`A000120(n)+2*A080791(n)`
-/

namespace A061313.P17423342583405026297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A080791 n

end

end A061313.P17423342583405026297

namespace A061313

/-- `A000120(n)+2*A080791(n)` -/
def P17423342583405026297.Spec : Prop :=
  ∀ n, P17423342583405026297.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P10168707889080291355

`A120512(n+1)%A157142(n)`
-/

namespace A061313.P10168707889080291355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120512 (n + 1)) (A157142 n)

end

end A061313.P10168707889080291355

namespace A061313

/-- `A120512(n+1)%A157142(n)` -/
def P10168707889080291355.Spec : Prop :=
  ∀ n, P10168707889080291355.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P17022286906474058896

`A000120(n)+log2(A080100(n)²)`
-/

namespace A061313.P17022286906474058896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℝ) + Real.logb 2 (A080100 n ^ 2 : ℝ)

end

end A061313.P17022286906474058896

namespace A061313

/-- `A000120(n)+log2(A080100(n)²)` -/
def P17022286906474058896.Spec : Prop :=
  ∀ n, P17022286906474058896.a n = (A061313 (n + 1) : ℝ)

end A061313

/-! ## A061313.P11821463893586091022

`log2(A062383(n)²)-A000120(n)`
-/

namespace A061313.P11821463893586091022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n ^ 2 : ℝ) - (A000120 n : ℝ)

end

end A061313.P11821463893586091022

namespace A061313

/-- `log2(A062383(n)²)-A000120(n)` -/
def P11821463893586091022.Spec : Prop :=
  ∀ n, P11821463893586091022.a n = (A061313 (n + 1) : ℝ)

end A061313

/-! ## A061313.P6156519963407060028

`log2(A001316(n))+2*A080791(n)`
-/

namespace A061313.P6156519963407060028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + (2 * A080791 n : ℝ)

end

end A061313.P6156519963407060028

namespace A061313

/-- `log2(A001316(n))+2*A080791(n)` -/
def P6156519963407060028.Spec : Prop :=
  ∀ n, P6156519963407060028.a n = (A061313 (n + 1) : ℝ)

end A061313

/-! ## A061313.P2424634890166803346

`A000120(n)+∑[2*A089263(n)]`
-/

namespace A061313.P2424634890166803346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061313.P2424634890166803346

namespace A061313

/-- `A000120(n)+∑[2*A089263(n)]` -/
def P2424634890166803346.Spec : Prop :=
  ∀ n, P2424634890166803346.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P802958651647009939

`∑[A088705(n)+2*A089263(n)]`
-/

namespace A061313.P802958651647009939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n + 2 * A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061313.P802958651647009939

namespace A061313

/-- `∑[A088705(n)+2*A089263(n)]` -/
def P802958651647009939.Spec : Prop :=
  ∀ n, P802958651647009939.a n = A061313 (n + 1)

end A061313

/-! ## A061313.P11550006968111552501

`∑[2*A209229(n)]-A000120(n)`
-/

namespace A061313.P11550006968111552501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 n

end

end A061313.P11550006968111552501

namespace A061313

/-- `∑[2*A209229(n)]-A000120(n)` -/
def P11550006968111552501.Spec : Prop :=
  ∀ n, P11550006968111552501.a n = A061313 (n + 1)

end A061313

/-!
# A061314: Table read by descending antidiagonals where T(n,k) = T(n,k-1) + T(n,k-1)^2/k^2 and T(n,0)=n.

The programs for A061314, there is no canonical definition to state claims against.
-/

/-! ## A061314.P16009604073217591494

`A163352(n*A121314(n))`
-/

namespace A061314.P16009604073217591494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A121314 n).toNat

end

end A061314.P16009604073217591494

/-! ## A061314.P15102372717497145550

`A163352(n*A327618(n))`
-/

namespace A061314.P15102372717497145550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A327618 n).toNat

end

end A061314.P15102372717497145550

/-! ## A061314.P5177204516596528846

`A163352(lcm(n, A121314(n)))`
-/

namespace A061314.P5177204516596528846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.lcm (n : ℤ) (A121314 n))

end

end A061314.P5177204516596528846

/-! ## A061314.P10767868436266493446

`A163352(n*A119271(n+1))`
-/

namespace A061314.P10767868436266493446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((n : ℤ) * A119271 (n + 1)).toNat

end

end A061314.P10767868436266493446

/-! ## A061314.P12360928361397406107

`A163352(lcm(A028310(n), A327618(n)))`
-/

namespace A061314.P12360928361397406107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.lcm (A028310 n) (A327618 n))

end

end A061314.P12360928361397406107

/-!
# A061315: Array read by antidiagonals: T(n,k)=T(n,k-1)*(T(n,k-1)+k-1)/k with T(n,1)=n.

The programs for A061315, there is no canonical definition to state claims against.
-/

/-! ## A061315.P15124466050841944728

`A347832(A347811(n))+A074909(n)`
-/

namespace A061315.P15124466050841944728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347832 (A347811 n).toNat + A074909 n

end

end A061315.P15124466050841944728

/-! ## A061315.P4263126113261552757

`A283297(A323663(n+1))`
-/

namespace A061315.P4263126113261552757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A323663 (n + 1)).toNat

end

end A061315.P4263126113261552757

/-! ## A061315.P9109757161463992337

`A234951(A008300(n)+n)`
-/

namespace A061315.P9109757161463992337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234951 (A008300 n + (n : ℤ)).toNat

end

end A061315.P9109757161463992337

/-! ## A061315.P9973566908730015306

`val(A308710(A308674(n+1)), 2)`
-/

namespace A061315.P9973566908730015306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A308710 (A308674 (n + 1)).toNat).toNat 2

end

end A061315.P9973566908730015306

/-! ## A061315.P14786399517231555558

`val(A308710(A308676(n+1)), 2)`
-/

namespace A061315.P14786399517231555558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A308710 (A308676 (n + 1)).toNat).toNat 2

end

end A061315.P14786399517231555558

/-!
# A061316: a(n) = n*(n+1)*(n^2 + n + 4)/4.

The programs for A061316, the canonical program `A061316.P10788089235195443183` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061316 has offset 0).

The definition of A061316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+n+4)/4` (program `A061316.P10005846741137083936`, by `A061316.P10005846741137083936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061316.P10005846741137083936

`n*(n+1)*(n²+n+4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061316.P10005846741137083936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n ^ 2 + (n + 4) : ℚ) / 4))

end

end A061316.P10005846741137083936

namespace A061316

/-- `n*(n+1)*(n²+n+4)/4` -/
def P10005846741137083936.Spec : Prop :=
  ∀ n, P10005846741137083936.a n = (A061316 n : ℚ)

theorem P10005846741137083936.correct : P10005846741137083936.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A061316, Nat.add_sub_cancel, A061316.P10005846741137083936.a, A061316.P10788089235195443183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A061316, Nat.add_sub_cancel, A061316.P10005846741137083936.a, A061316.P10788089235195443183.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061316

/-! ## A061316.P10788089235195443183

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=48, a(4)=120`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061316

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10788089235195443183.Spec : Prop :=
  ∀ n, P10788089235195443183.a n = A061316 n

theorem P10788089235195443183.correct : P10788089235195443183.Spec := by
  intro n
  simp only [A061316]

end A061316

/-! ## A061316.P15896104677578810556

`A005563(A000217(n))`
-/

namespace A061316.P15896104677578810556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A000217 n).toNat

end

end A061316.P15896104677578810556

namespace A061316

/-- `A005563(A000217(n))` -/
def P15896104677578810556.Spec : Prop :=
  ∀ n, P15896104677578810556.a n = A061316 n

end A061316

/-! ## A061316.P9625622166336630465

`∑[n*or(2, n²)]`
-/

namespace A061316.P9625622166336630465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 2 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P9625622166336630465

namespace A061316

/-- `∑[n*or(2, n²)]` -/
def P9625622166336630465.Spec : Prop :=
  ∀ n, (P9625622166336630465.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P2460489920748646884

`∑[n*xor(2, n²)]`
-/

namespace A061316.P2460489920748646884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 2 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P2460489920748646884

namespace A061316

/-- `∑[n*xor(2, n²)]` -/
def P2460489920748646884.Spec : Prop :=
  ∀ n, (P2460489920748646884.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P10172165707498385750

`∑[lcm(3, n*(n²+2))]`
-/

namespace A061316.P10172165707498385750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n * (n ^ 2 + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P10172165707498385750

namespace A061316

/-- `∑[lcm(3, n*(n²+2))]` -/
def P10172165707498385750.Spec : Prop :=
  ∀ n, (P10172165707498385750.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P7061672919207662932

`∑[lcm(n, n²+1)+n]`
-/

namespace A061316.P7061672919207662932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 2 + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P7061672919207662932

namespace A061316

/-- `∑[lcm(n, n²+1)+n]` -/
def P7061672919207662932.Spec : Prop :=
  ∀ n, (P7061672919207662932.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P5919385458782489544

`∑[n*((n%(n+1))²+2)]`
-/

namespace A061316.P5919385458782489544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n % (n + 1)) ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P5919385458782489544

namespace A061316

/-- `∑[n*((n%(n+1))²+2)]` -/
def P5919385458782489544.Spec : Prop :=
  ∀ n, (P5919385458782489544.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P8170682301017931402

`∑[n*(gcd(2, 2*n)+n²)]`
-/

namespace A061316.P8170682301017931402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 (2 * n) + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P8170682301017931402

namespace A061316

/-- `∑[n*(gcd(2, 2*n)+n²)]` -/
def P8170682301017931402.Spec : Prop :=
  ∀ n, (P8170682301017931402.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P15882778034961805883

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A061316.P15882778034961805883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P15882778034961805883

namespace A061316

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P15882778034961805883.Spec : Prop :=
  ∀ n, (P15882778034961805883.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P12636229318508035015

`∑[xor(1, 2*n+1)+n^3]`
-/

namespace A061316.P12636229318508035015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P12636229318508035015

namespace A061316

/-- `∑[xor(1, 2*n+1)+n^3]` -/
def P12636229318508035015.Spec : Prop :=
  ∀ n, (P12636229318508035015.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P7324906481104256966

`a(n-1)+n*(n²+2)` with `a(0)=0`
-/

namespace A061316.P7324906481104256966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n ^ 2 + 2)

end

end A061316.P7324906481104256966

namespace A061316

/-- `a(n-1)+n*(n²+2)` -/
def P7324906481104256966.Spec : Prop :=
  ∀ n, (P7324906481104256966.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P13030520230196391064

`∑[n*(n^(2%(n+1))+2)]`
-/

namespace A061316.P13030520230196391064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ (2 % (n + 1)) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P13030520230196391064

namespace A061316

/-- `∑[n*(n^(2%(n+1))+2)]` -/
def P13030520230196391064.Spec : Prop :=
  ∀ n, (P13030520230196391064.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P15637490310935476779

`∑[n]²-∑[a(n-1)-2]` with `a(0)=0`
-/

namespace A061316.P15637490310935476779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A061316.P15637490310935476779

namespace A061316

/-- `∑[n]²-∑[a(n-1)-2]` -/
def P15637490310935476779.Spec : Prop :=
  ∀ n, P15637490310935476779.a n = A061316 n

end A061316

/-! ## A061316.P14337848620619585741

`∑[and(2*n+1, 2*n)+n^3]`
-/

namespace A061316.P14337848620619585741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P14337848620619585741

namespace A061316

/-- `∑[and(2*n+1, 2*n)+n^3]` -/
def P14337848620619585741.Spec : Prop :=
  ∀ n, (P14337848620619585741.a n : ℤ) = A061316 n

end A061316

/-! ## A061316.P17147572471416585668

`∑[A054602(n)]`
-/

namespace A061316.P17147572471416585668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P17147572471416585668

namespace A061316

/-- `∑[A054602(n)]` -/
def P17147572471416585668.Spec : Prop :=
  ∀ n, P17147572471416585668.a n = A061316 n

end A061316

/-! ## A061316.P5296354912795347762

`A086601(n)-1`
-/

namespace A061316.P5296354912795347762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n - 1

end

end A061316.P5296354912795347762

namespace A061316

/-- `A086601(n)-1` -/
def P5296354912795347762.Spec : Prop :=
  ∀ n, P5296354912795347762.a n = A061316 n

end A061316

/-! ## A061316.P11622671705336813701

`A334694(n)-n`
-/

namespace A061316.P11622671705336813701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n - (n : ℤ)

end

end A061316.P11622671705336813701

namespace A061316

/-- `A334694(n)-n` -/
def P11622671705336813701.Spec : Prop :=
  ∀ n, P11622671705336813701.a n = A061316 n

end A061316

/-! ## A061316.P1215351177444587976

`A000124(n)²-1`
-/

namespace A061316.P1215351177444587976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2 - 1

end

end A061316.P1215351177444587976

namespace A061316

/-- `A000124(n)²-1` -/
def P1215351177444587976.Spec : Prop :=
  ∀ n, P1215351177444587976.a n = A061316 n

end A061316

/-! ## A061316.P8159894252613937954

`∑[3*A006527(n)]`
-/

namespace A061316.P8159894252613937954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061316.P8159894252613937954

namespace A061316

/-- `∑[3*A006527(n)]` -/
def P8159894252613937954.Spec : Prop :=
  ∀ n, P8159894252613937954.a n = A061316 n

end A061316

/-!
# A061317: Split positive integers into extending even groups and sum: 1+2, 3+4+5+6, 7+8+9+10+11+12, 13+14+15+16+17+18+19+20, ...

The programs for A061317, the canonical program `A061317.P8488168899613189018` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061317 has offset 0).

The definition of A061317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061317.P8488168899613189018

`2*n^3+n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061317

/-- `2*n^3+n` -/
def P8488168899613189018.Spec : Prop :=
  ∀ n, (P8488168899613189018.a n : ℤ) = A061317 n

theorem P8488168899613189018.correct : P8488168899613189018.Spec := by
  intro n
  simp only [A061317]

end A061317

/-! ## A061317.P12595741260149555662

`3*A005900(n)`
-/

namespace A061317.P12595741260149555662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005900 n

end

end A061317.P12595741260149555662

namespace A061317

/-- `3*A005900(n)` -/
def P12595741260149555662.Spec : Prop :=
  ∀ n, P12595741260149555662.a n = A061317 n

end A061317

/-! ## A061317.P12522809550463515968

`n*A058331(n)`
-/

namespace A061317.P12522809550463515968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058331 n

end

end A061317.P12522809550463515968

namespace A061317

/-- `n*A058331(n)` -/
def P12522809550463515968.Spec : Prop :=
  ∀ n, P12522809550463515968.a n = A061317 n

end A061317

/-! ## A061317.P17825349559283945811

`lcm(n, 2*n²+1)`
-/

namespace A061317.P17825349559283945811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n ^ 2 + 1)

end

end A061317.P17825349559283945811

namespace A061317

/-- `lcm(n, 2*n²+1)` -/
def P17825349559283945811.Spec : Prop :=
  ∀ n, (P17825349559283945811.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P4254162447484654118

`n*or(1, 2*n²)`
-/

namespace A061317.P4254162447484654118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n ^ 2)

end

end A061317.P4254162447484654118

namespace A061317

/-- `n*or(1, 2*n²)` -/
def P4254162447484654118.Spec : Prop :=
  ∀ n, (P4254162447484654118.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P8050518427181056944

`n*xor(1, 2*n²)`
-/

namespace A061317.P8050518427181056944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (2 * n ^ 2)

end

end A061317.P8050518427181056944

namespace A061317

/-- `n*xor(1, 2*n²)` -/
def P8050518427181056944.Spec : Prop :=
  ∀ n, (P8050518427181056944.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P7893001121575423284

`n*floor(2/acot(n)²)`
-/

namespace A061317.P7893001121575423284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A061317.P7893001121575423284

namespace A061317

/-- `n*floor(2/acot(n)²)` -/
def P7893001121575423284.Spec : Prop :=
  ∀ n, P7893001121575423284.a n = A061317 n

end A061317

/-! ## A061317.P3362115461258385452

`n*ceil(2/acot(n²))`
-/

namespace A061317.P3362115461258385452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈2 / SequenceMachineLib.acot (n ^ 2 : ℝ)⌉

end

end A061317.P3362115461258385452

namespace A061317

/-- `n*ceil(2/acot(n²))` -/
def P3362115461258385452.Spec : Prop :=
  ∀ n, P3362115461258385452.a n = A061317 n

end A061317

/-! ## A061317.P6284851444467416574

`n*round(2/acot(n)²)`
-/

namespace A061317.P6284851444467416574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2)

end

end A061317.P6284851444467416574

namespace A061317

/-- `n*round(2/acot(n)²)` -/
def P6284851444467416574.Spec : Prop :=
  ∀ n, P6284851444467416574.a n = A061317 n

end A061317

/-! ## A061317.P7132474835200360995

`Δ[C((1-n)²+n, 2)]`
-/

namespace A061317.P7132474835200360995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061317.P7132474835200360995

namespace A061317

/-- `Δ[C((1-n)²+n, 2)]` -/
def P7132474835200360995.Spec : Prop :=
  ∀ n, P7132474835200360995.a n = A061317 n

end A061317

/-! ## A061317.P6248351468583834317

`n*ceil(2*n/acot(n))`
-/

namespace A061317.P6248351468583834317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))⌉

end

end A061317.P6248351468583834317

namespace A061317

/-- `n*ceil(2*n/acot(n))` -/
def P6248351468583834317.Spec : Prop :=
  ∀ n, P6248351468583834317.a n = A061317 n

end A061317

/-! ## A061317.P3634990980866535597

`n*round(2*n/acot(n))`
-/

namespace A061317.P3634990980866535597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (2 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ)))

end

end A061317.P3634990980866535597

namespace A061317

/-- `n*round(2*n/acot(n))` -/
def P3634990980866535597.Spec : Prop :=
  ∀ n, P3634990980866535597.a n = A061317 n

end A061317

/-! ## A061317.P4699616283641677029

`n*∑[a(n-1)+4]` with `a(0)=1, a(1)=2`
-/

namespace A061317.P4699616283641677029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061317.P4699616283641677029

namespace A061317

/-- `n*∑[a(n-1)+4]` -/
def P4699616283641677029.Spec : Prop :=
  ∀ n, (P4699616283641677029.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P1164915185837951617

`n*(lcm(2, n*2*n)+1)`
-/

namespace A061317.P1164915185837951617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lcm 2 (n * (2 * n)) + 1)

end

end A061317.P1164915185837951617

namespace A061317

/-- `n*(lcm(2, n*2*n)+1)` -/
def P1164915185837951617.Spec : Prop :=
  ∀ n, (P1164915185837951617.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P3791373789201785849

`n*(C(2*n, 2)+1+n)`
-/

namespace A061317.P3791373789201785849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (2 * n) 2 + 1 + n)

end

end A061317.P3791373789201785849

namespace A061317

/-- `n*(C(2*n, 2)+1+n)` -/
def P3791373789201785849.Spec : Prop :=
  ∀ n, (P3791373789201785849.a n : ℤ) = A061317 n

end A061317

/-! ## A061317.P10917452901322806831

`Δ[(n²-(n-1))*C(n, 2)]`
-/

namespace A061317.P10917452901322806831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n : ℤ) - 1)) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061317.P10917452901322806831

namespace A061317

/-- `Δ[(n²-(n-1))*C(n, 2)]` -/
def P10917452901322806831.Spec : Prop :=
  ∀ n, P10917452901322806831.a n = A061317 n

end A061317

/-! ## A061317.P328037558907741495

`Δ[lcm(n-1-n², C(n, 2))]`
-/

namespace A061317.P328037558907741495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 - (n ^ 2 : ℤ)) (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061317.P328037558907741495

namespace A061317

/-- `Δ[lcm(n-1-n², C(n, 2))]` -/
def P328037558907741495.Spec : Prop :=
  ∀ n, P328037558907741495.a n = A061317 n

end A061317

/-! ## A061317.P12953184898857579615

`n*(3-∑[a(n-1)-4])` with `a(0)=2`
-/

namespace A061317.P12953184898857579615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061317.P12953184898857579615

namespace A061317

/-- `n*(3-∑[a(n-1)-4])` -/
def P12953184898857579615.Spec : Prop :=
  ∀ n, P12953184898857579615.a n = A061317 n

end A061317

/-!
# A061318: Column 3 of A061314.

The programs for A061318, the canonical program `A061318.P13431789142385319177` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061318 has offset 0).

The definition of A061318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061318.P3749275716768876492

`4*A061319(n)`
-/

namespace A061318.P3749275716768876492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061319 n

end

end A061318.P3749275716768876492

namespace A061318

/-- `4*A061319(n)` -/
def P3749275716768876492.Spec : Prop :=
  ∀ n, P3749275716768876492.a n = A061318 n

end A061318

/-! ## A061318.P13431789142385319177

`A061316(n)+A006007(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061318

/-- `A061316(n)+A006007(n)²` -/
def P13431789142385319177.Spec : Prop :=
  ∀ n, P13431789142385319177.a n = A061318 n

theorem P13431789142385319177.correct : P13431789142385319177.Spec := by
  intro n
  simp only [A061318]

end A061318

/-! ## A061318.P10820679630339112392

`A061320(n)-A061319(n)²`
-/

namespace A061318.P10820679630339112392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061320 n - A061319 n ^ 2

end

end A061318.P10820679630339112392

namespace A061318

/-- `A061320(n)-A061319(n)²` -/
def P10820679630339112392.Spec : Prop :=
  ∀ n, P10820679630339112392.a n = A061318 n

end A061318

/-! ## A061318.P4160036249102536456

`∑[A054602(n)]+A006007(n)²`
-/

namespace A061318.P4160036249102536456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A006007 n ^ 2

end

end A061318.P4160036249102536456

namespace A061318

/-- `∑[A054602(n)]+A006007(n)²` -/
def P4160036249102536456.Spec : Prop :=
  ∀ n, P4160036249102536456.a n = A061318 n

end A061318

/-! ## A061318.P9308231421342341319

`A061316(n)+∑[A006527(n)]²`
-/

namespace A061318.P9308231421342341319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061318.P9308231421342341319

namespace A061318

/-- `A061316(n)+∑[A006527(n)]²` -/
def P9308231421342341319.Spec : Prop :=
  ∀ n, P9308231421342341319.a n = A061318 n

end A061318

/-!
# A061319: Column 4 of A061315.

The programs for A061319, the canonical program `A061319.P10407569909786837890` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061319 has offset 0).

The definition of A061319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061319.P10407569909786837890

`A061318(n)/4`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061319

/-- `A061318(n)/4` -/
def P10407569909786837890.Spec : Prop :=
  ∀ n, P10407569909786837890.a n = (A061319 n : ℚ)

end A061319

/-! ## A061319.P11822277374094225153

`sqrt(A061320(n)-A061318(n))`
-/

namespace A061319.P11822277374094225153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061320 n - A061318 n : ℝ)

end

end A061319.P11822277374094225153

namespace A061319

/-- `sqrt(A061320(n)-A061318(n))` -/
def P11822277374094225153.Spec : Prop :=
  ∀ n, P11822277374094225153.a n = (A061319 n : ℝ)

end A061319

/-! ## A061319.P7397082793110302059

`(A061316(n)+A006007(n)²)/4`
-/

namespace A061319.P7397082793110302059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061316 n + A006007 n ^ 2 : ℚ) / 4

end

end A061319.P7397082793110302059

namespace A061319

/-- `(A061316(n)+A006007(n)²)/4` -/
def P7397082793110302059.Spec : Prop :=
  ∀ n, P7397082793110302059.a n = (A061319 n : ℚ)

end A061319

/-! ## A061319.P5606193778157860342

`sqrt(5*A061321(n)-A061318(n))`
-/

namespace A061319.P5606193778157860342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * A061321 n - A061318 n : ℝ)

end

end A061319.P5606193778157860342

namespace A061319

/-- `sqrt(5*A061321(n)-A061318(n))` -/
def P5606193778157860342.Spec : Prop :=
  ∀ n, P5606193778157860342.a n = (A061319 n : ℝ)

end A061319

/-! ## A061319.P10382226000504501381

`(∑[A054602(n)]+A006007(n)²)/4`
-/

namespace A061319.P10382226000504501381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + A006007 n ^ 2 : ℤ) : ℚ) / 4

end

end A061319.P10382226000504501381

namespace A061319

/-- `(∑[A054602(n)]+A006007(n)²)/4` -/
def P10382226000504501381.Spec : Prop :=
  ∀ n, P10382226000504501381.a n = (A061319 n : ℚ)

end A061319

/-! ## A061319.P10367688031541771956

`(A061316(n)+∑[A006527(n)]²)/4`
-/

namespace A061319.P10367688031541771956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061316 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A061319.P10367688031541771956

namespace A061319

/-- `(A061316(n)+∑[A006527(n)]²)/4` -/
def P10367688031541771956.Spec : Prop :=
  ∀ n, P10367688031541771956.a n = (A061319 n : ℚ)

end A061319

/-! ## A061319.P17340339250476715127

`sqrt(A061320(n)-(A061316(n)+A006007(n)²))`
-/

namespace A061319.P17340339250476715127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061320 n - (A061316 n + A006007 n ^ 2) : ℝ)

end

end A061319.P17340339250476715127

namespace A061319

/-- `sqrt(A061320(n)-(A061316(n)+A006007(n)²))` -/
def P17340339250476715127.Spec : Prop :=
  ∀ n, P17340339250476715127.a n = (A061319 n : ℝ)

end A061319

/-!
# A061320: Column 4 of A061314.

The programs for A061320, the canonical program `A061320.P9216718962236497877` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061320 has offset 0).

The definition of A061320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061320.P8856162954798854245

`5*A061321(n)`
-/

namespace A061320.P8856162954798854245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A061321 n

end

end A061320.P8856162954798854245

namespace A061320

/-- `5*A061321(n)` -/
def P8856162954798854245.Spec : Prop :=
  ∀ n, P8856162954798854245.a n = A061320 n

end A061320

/-! ## A061320.P9216718962236497877

`A061318(n)+A061319(n)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061320

/-- `A061318(n)+A061319(n)²` -/
def P9216718962236497877.Spec : Prop :=
  ∀ n, P9216718962236497877.a n = A061320 n

theorem P9216718962236497877.correct : P9216718962236497877.Spec := by
  intro n
  simp only [A061320]

end A061320

/-! ## A061320.P4324537692751635316

`lcm(5, lcm(A061319(n), A061321(n)))`
-/

namespace A061320.P4324537692751635316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (Int.lcm (A061319 n) (A061321 n))

end

end A061320.P4324537692751635316

namespace A061320

/-- `lcm(5, lcm(A061319(n), A061321(n)))` -/
def P4324537692751635316.Spec : Prop :=
  ∀ n, (P4324537692751635316.a n : ℤ) = A061320 n

end A061320

/-! ## A061320.P460944612699605691

`A061319(n)²+A061316(n)+A006007(n)²`
-/

namespace A061320.P460944612699605691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061319 n ^ 2 + (A061316 n + A006007 n ^ 2)

end

end A061320.P460944612699605691

namespace A061320

/-- `A061319(n)²+A061316(n)+A006007(n)²` -/
def P460944612699605691.Spec : Prop :=
  ∀ n, P460944612699605691.a n = A061320 n

end A061320

/-! ## A061320.P12603433267368871959

`A061319(n)²+∑[A054602(n)]+A006007(n)²`
-/

namespace A061320.P12603433267368871959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061319 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + A006007 n ^ 2)

end

end A061320.P12603433267368871959

namespace A061320

/-- `A061319(n)²+∑[A054602(n)]+A006007(n)²` -/
def P12603433267368871959.Spec : Prop :=
  ∀ n, P12603433267368871959.a n = A061320 n

end A061320

/-! ## A061320.P16384931502292788099

`A061319(n)²+A061316(n)+∑[A006527(n)]²`
-/

namespace A061320.P16384931502292788099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061319 n ^ 2 + (A061316 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A061320.P16384931502292788099

namespace A061320

/-- `A061319(n)²+A061316(n)+∑[A006527(n)]²` -/
def P16384931502292788099.Spec : Prop :=
  ∀ n, P16384931502292788099.a n = A061320 n

end A061320

/-! ## A061320.P17465551715254623638

`A061318(n)+((A061316(n)+A006007(n)²)/4)²`
-/

namespace A061320.P17465551715254623638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061318 n : ℚ) + ((A061316 n + A006007 n ^ 2 : ℚ) / 4) ^ 2

end

end A061320.P17465551715254623638

namespace A061320

/-- `A061318(n)+((A061316(n)+A006007(n)²)/4)²` -/
def P17465551715254623638.Spec : Prop :=
  ∀ n, P17465551715254623638.a n = (A061320 n : ℚ)

end A061320

/-!
# A061321: Column 5 of A061315.

The programs for A061321, the canonical program `A061321.P7688988226899301674` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061321 has offset 0).

The definition of A061321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061320, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061321.P7688988226899301674

`A061320(n)/5`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061321

/-- `A061320(n)/5` -/
def P7688988226899301674.Spec : Prop :=
  ∀ n, P7688988226899301674.a n = (A061321 n : ℚ)

end A061321

/-! ## A061321.P10790798892610712112

`(A061318(n)+A061319(n)²)/5`
-/

namespace A061321.P10790798892610712112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061318 n + A061319 n ^ 2 : ℚ) / 5

end

end A061321.P10790798892610712112

namespace A061321

/-- `(A061318(n)+A061319(n)²)/5` -/
def P10790798892610712112.Spec : Prop :=
  ∀ n, P10790798892610712112.a n = (A061321 n : ℚ)

end A061321

/-! ## A061321.P2924886252644820734

`(A061319(n)²+A061316(n)+A006007(n)²)/5`
-/

namespace A061321.P2924886252644820734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061319 n ^ 2 + (A061316 n + A006007 n ^ 2) : ℚ) / 5

end

end A061321.P2924886252644820734

namespace A061321

/-- `(A061319(n)²+A061316(n)+A006007(n)²)/5` -/
def P2924886252644820734.Spec : Prop :=
  ∀ n, P2924886252644820734.a n = (A061321 n : ℚ)

end A061321

/-! ## A061321.P1417011666407090031

`(A061319(n)²+∑[A054602(n)]+A006007(n)²)/5`
-/

namespace A061321.P1417011666407090031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061319 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + A006007 n ^ 2) : ℤ) : ℚ) / 5

end

end A061321.P1417011666407090031

namespace A061321

/-- `(A061319(n)²+∑[A054602(n)]+A006007(n)²)/5` -/
def P1417011666407090031.Spec : Prop :=
  ∀ n, P1417011666407090031.a n = (A061321 n : ℚ)

end A061321

/-! ## A061321.P431221474914061495

`(A061319(n)²+A061316(n)+∑[A006527(n)]²)/5`
-/

namespace A061321.P431221474914061495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061319 n ^ 2 + (A061316 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ) : ℚ) / 5

end

end A061321.P431221474914061495

namespace A061321

/-- `(A061319(n)²+A061316(n)+∑[A006527(n)]²)/5` -/
def P431221474914061495.Spec : Prop :=
  ∀ n, P431221474914061495.a n = (A061321 n : ℚ)

end A061321

/-! ## A061321.P14908656245806754300

`(A061318(n)+((A061316(n)+A006007(n)²)/4)²)/5`
-/

namespace A061321.P14908656245806754300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061318 n : ℚ) + ((A061316 n + A006007 n ^ 2 : ℚ) / 4) ^ 2) / 5

end

end A061321.P14908656245806754300

namespace A061321

/-- `(A061318(n)+((A061316(n)+A006007(n)²)/4)²)/5` -/
def P14908656245806754300.Spec : Prop :=
  ∀ n, P14908656245806754300.a n = (A061321 n : ℚ)

end A061321

/-!
# A061322: a(n) = a(n-1) * (1 + a(n-1)/n^2) with a(0) = 2.

The programs for A061322, there is no canonical definition to state claims against.
-/

/-! ## A061322.P2601093965197034358

`a(n-1)+(a(n-1)/n)²` with `a(0)=2`
-/

namespace A061322.P2601093965197034358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) / (n : ℚ)) ^ 2

end

end A061322.P2601093965197034358

/-! ## A061322.P12290683345814451776

`a(n-1)+(a(n-1)/n)^2` with `a(0)=2`
-/

namespace A061322.P12290683345814451776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) / (n : ℚ)) ^ 2

end

end A061322.P12290683345814451776

/-! ## A061322.P5743801646678879419

`a(n-1)+(n^(-1)*a(n-1))²` with `a(0)=2`
-/

namespace A061322.P5743801646678879419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((n : ℚ) ^ (-1 : ℤ) * a (n - 1)) ^ 2

end

end A061322.P5743801646678879419

/-! ## A061322.P8940168309042162589

`(a(n-1)/(n*n)+1)*a(n-1)` with `a(0)=2`
-/

namespace A061322.P8940168309042162589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) / (n * n : ℚ) + 1) * a (n - 1)

end

end A061322.P8940168309042162589

/-! ## A061322.P12576404156877063327

`(n^(-2)*a(n-1)+1)*a(n-1)` with `a(0)=2`
-/

namespace A061322.P12576404156877063327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n : ℚ) ^ (-2 : ℤ) * a (n - 1) + 1) * a (n - 1)

end

end A061322.P12576404156877063327

/-!
# A061323: Primes with 10 as smallest positive primitive root.

The programs for A061323, there is no canonical definition to state claims against.
-/

/-! ## A061323.P12993932763107416295

`A045319(eq[10, A001918(n+1)])`
-/

namespace A061323.P12993932763107416295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P12993932763107416295

/-! ## A061323.P17769851443555170430

`A045344(eq[10, A001918(n+1)])`
-/

namespace A061323.P17769851443555170430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P17769851443555170430

/-! ## A061323.P12164853190911592216

`A065091(eq[10, A001918(n+1)])`
-/

namespace A061323.P12164853190911592216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P12164853190911592216

/-! ## A061323.P2700288245949022983

`A045319(eq[10, A242242(n+1)])`
-/

namespace A061323.P2700288245949022983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P2700288245949022983

/-! ## A061323.P11025805070993386490

`A045344(eq[10, A242242(n+1)])`
-/

namespace A061323.P11025805070993386490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P11025805070993386490

/-! ## A061323.P5820417268079431776

`A065091(eq[10, A242242(n+1)])`
-/

namespace A061323.P5820417268079431776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061323.P5820417268079431776

/-! ## A061323.P13587145351343441466

`p?[(A103337(n+1)-9)*A103335(n+1)]`
-/

namespace A061323.P13587145351343441466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103337 (n + 1) - 9) * A103335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061323.P13587145351343441466

/-!
# A061324: Primes with 11 as smallest positive primitive root.

The programs for A061324, there is no canonical definition to state claims against.
-/

/-! ## A061324.P8585505655914388245

`A045344(eq[11, A001918(n+1)])`
-/

namespace A061324.P8585505655914388245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061324.P8585505655914388245

/-! ## A061324.P12389293018705573915

`A065091(eq[11, A001918(n+1)])`
-/

namespace A061324.P12389293018705573915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061324.P12389293018705573915

/-! ## A061324.P11438157093271178850

`A045344(eq[11, A242242(n+1)])`
-/

namespace A061324.P11438157093271178850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061324.P11438157093271178850

/-! ## A061324.P8718838053121035205

`A000040(eq[11, A001918(n+1)]+1)`
-/

namespace A061324.P8718838053121035205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061324.P8718838053121035205

/-! ## A061324.P2344321793514592013

`A000040(eq[11, A242242(n+1)]+1)`
-/

namespace A061324.P2344321793514592013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061324.P2344321793514592013

/-!
# A061325: Primes with 12 as smallest positive primitive root.

The programs for A061325, there is no canonical definition to state claims against.
-/

/-! ## A061325.P14957605372955185174

`p?[A096811(n)²²*A205581(n+1)]`
-/

namespace A061325.P14957605372955185174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096811 n ^ 2) ^ 2 * A205581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061325.P14957605372955185174

/-! ## A061325.P6955471140189178877

`A125746(A205581(∑[A096811(n)]))`
-/

namespace A061325.P6955471140189178877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A205581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A061325.P6955471140189178877

/-! ## A061325.P14875602352585640576

`A151620(n)!*A205581(∑[A096811(n)])`
-/

namespace A061325.P14875602352585640576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151620 n).toNat : ℤ) * A205581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061325.P14875602352585640576

/-! ## A061325.P18057067477922928893

`A125746(record[A205581(n+1)/A096811(n)])`
-/

namespace A061325.P18057067477922928893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205581 (n + 1) : ℚ) / (A096811 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A061325.P18057067477922928893

/-! ## A061325.P9572230936753916696

`A125746(p?[A096811(n)*A205581(n+1)])`
-/

namespace A061325.P9572230936753916696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 n * A205581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A061325.P9572230936753916696

/-!
# A061326: Primes with 13 as smallest positive primitive root.

The programs for A061326, there is no canonical definition to state claims against.
-/

/-! ## A061326.P12655134618079248332

`A045344(eq[13, A001918(n+1)])`
-/

namespace A061326.P12655134618079248332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061326.P12655134618079248332

/-! ## A061326.P13650670829036215373

`A065091(eq[13, A001918(n+1)])`
-/

namespace A061326.P13650670829036215373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061326.P13650670829036215373

/-! ## A061326.P2710221017636726946

`A045344(eq[13, A242242(n+1)])`
-/

namespace A061326.P2710221017636726946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061326.P2710221017636726946

/-! ## A061326.P16532198914641599056

`A000040(eq[13, A001918(n+1)]+1)`
-/

namespace A061326.P16532198914641599056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061326.P16532198914641599056

/-! ## A061326.P2485939730507291382

`p?[eq[13, A046145(n)]]`
-/

namespace A061326.P2485939730507291382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A061326.P2485939730507291382

/-!
# A061328: Primes with 15 as smallest positive primitive root.

The programs for A061328, there is no canonical definition to state claims against.
-/

/-! ## A061328.P11728146235958307704

`A070269(eq[2, A024327(2*(n+2))])`
-/

namespace A061328.P11728146235958307704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061328.P11728146235958307704

/-!
# A061329: Primes with 17 as smallest positive primitive root.

The programs for A061329, there is no canonical definition to state claims against.
-/

/-! ## A061329.P13891095570313265476

`A045319(eq[17, A001918(n+1)])`
-/

namespace A061329.P13891095570313265476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061329.P13891095570313265476

/-!
# A061333: Primes with 21 as smallest positive primitive root.

The programs for A061333, there is no canonical definition to state claims against.
-/

/-! ## A061333.P9497280331761005300

`p?[A060137(n)*A070269(n+1)]`
-/

namespace A061333.P9497280331761005300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060137 n * A070269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061333.P9497280331761005300

/-!
# A061336: Smallest number of triangular numbers which sum to n.

The programs for A061336, there is no canonical definition to state claims against.
-/

/-! ## A061336.P2144911624759761441

`A002828(A017089(n)-A073423(n))`
-/

namespace A061336.P2144911624759761441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017089 n - A073423 n).toNat

end

end A061336.P2144911624759761441

/-! ## A061336.P15260916396820913724

`A002828(xor(A022144(n), A238303(n)))`
-/

namespace A061336.P15260916396820913724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.xor (A022144 n) (A238303 n)).toNat

end

end A061336.P15260916396820913724

/-! ## A061336.P11227493484130197639

`A061395(A359681(n))`
-/

namespace A061336.P11227493484130197639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A359681 n).toNat

end

end A061336.P11227493484130197639

/-! ## A061336.P9935904878911686485

`A065770(∏{p}[A359681(n), #])`
-/

namespace A061336.P9935904878911686485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A061336.P9935904878911686485

/-! ## A061336.P4199232531326711415

`A109082(A359681(n)%A086224(n))`
-/

namespace A061336.P4199232531326711415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (Int.tmod (A359681 n) (A086224 n)).toNat

end

end A061336.P4199232531326711415

/-! ## A061336.P17165863522394677799

`A109082(A359681(n))%A137453(n)`
-/

namespace A061336.P17165863522394677799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109082 (A359681 n).toNat) (A137453 n)

end

end A061336.P17165863522394677799

/-!
# A061338: Increase in maximal number of comparisons for sorting n elements by list merging.

The programs for A061338, the canonical program `A061338.P1052418466639521221` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061338 has offset 0).

The definition of A061338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061338.P1052418466639521221

`n-A011371(and(n, n-1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061338

/-- `n-A011371(and(n, n-1))` -/
def P1052418466639521221.Spec : Prop :=
  ∀ n, P1052418466639521221.a n = A061338 n

theorem P1052418466639521221.correct : P1052418466639521221.Spec := by
  intro n
  simp only [A061338]

end A061338

/-! ## A061338.P3336459781590864693

`n+1-A113474(and(n, n-1)+1)`
-/

namespace A061338.P3336459781590864693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A113474 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

end

end A061338.P3336459781590864693

namespace A061338

/-- `n+1-A113474(and(n, n-1)+1)` -/
def P3336459781590864693.Spec : Prop :=
  ∀ n, P3336459781590864693.a n = A061338 n

end A061338

/-! ## A061338.P11138018344036221462

`A089265(A233775(n))`
-/

namespace A061338.P11138018344036221462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (A233775 n).toNat

end

end A061338.P11138018344036221462

namespace A061338

/-- `A089265(A233775(n))` -/
def P11138018344036221462.Spec : Prop :=
  ∀ n, P11138018344036221462.a n = A061338 n

end A061338

/-! ## A061338.P500420020762676387

`or(n, A153151(n))-A011371(n)`
-/

namespace A061338.P500420020762676387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A153151 n) - A011371 n

end

end A061338.P500420020762676387

namespace A061338

/-- `or(n, A153151(n))-A011371(n)` -/
def P500420020762676387.Spec : Prop :=
  ∀ n, P500420020762676387.a n = A061338 n

end A061338

/-! ## A061338.P13249563738982772593

`A003071(n+1)-A003071(A028310(n))`
-/

namespace A061338.P13249563738982772593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) - A003071 (A028310 n).toNat

end

end A061338.P13249563738982772593

namespace A061338

/-- `A003071(n+1)-A003071(A028310(n))` -/
def P13249563738982772593.Spec : Prop :=
  ∀ n, P13249563738982772593.a n = A061338 n

end A061338

/-! ## A061338.P1748745967966641529

`Δ[A003071(comp[2*(n+1)]-n+1)]`
-/

namespace A061338.P1748745967966641529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061338.P1748745967966641529

namespace A061338

/-- `Δ[A003071(comp[2*(n+1)]-n+1)]` -/
def P1748745967966641529.Spec : Prop :=
  ∀ n, P1748745967966641529.a n = A061338 n

end A061338

/-! ## A061338.P13548529362479239361

`A000225(val(A000325(n), 2))+A000120(n)`
-/

namespace A061338.P13548529362479239361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.valuation (A000325 n).toNat 2) + A000120 n

end

end A061338.P13548529362479239361

namespace A061338

/-- `A000225(val(A000325(n), 2))+A000120(n)` -/
def P13548529362479239361.Spec : Prop :=
  ∀ n, P13548529362479239361.a n = A061338 n

end A061338

/-! ## A061338.P3609900893965939600

`n-val(and(n, n-1)!, 2)`
-/

namespace A061338.P3609900893965939600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) 2 : ℤ)

end

end A061338.P3609900893965939600

namespace A061338

/-- `n-val(and(n, n-1)!, 2)` -/
def P3609900893965939600.Spec : Prop :=
  ∀ n, P3609900893965939600.a n = A061338 n

end A061338

/-!
# A061339: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) subtracting 1 or (c) multiplying by 2.

The programs for A061339, there is no canonical definition to state claims against.
-/

/-! ## A061339.P4472453311648159260

`A353058(A028310(n))+ceil(sin(n)²)`
-/

namespace A061339.P4472453311648159260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A061339.P4472453311648159260

/-! ## A061339.P12789463081586048837

`A353058(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A061339.P12789463081586048837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A061339.P12789463081586048837

/-! ## A061339.P1900706248839700396

`A353058(A028310(n))-A057428(n)`
-/

namespace A061339.P1900706248839700396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 n).toNat - A057428 n

end

end A061339.P1900706248839700396

/-! ## A061339.P858794672411411464

`A353058(A028310(n))+A004273(n)%2`
-/

namespace A061339.P858794672411411464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 n).toNat + Int.tmod (A004273 n) 2

end

end A061339.P858794672411411464

/-! ## A061339.P10138536767891732698

`A353058(A028310(n))+A000045(ceil(n/(n+1)))`
-/

namespace A061339.P10138536767891732698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 n).toNat + A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A061339.P10138536767891732698

/-! ## A061339.P7436923232608225263

`A353058(A028310(n))+A057428(n)^A008574(n)`
-/

namespace A061339.P7436923232608225263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353058 (A028310 n).toNat : ℚ) + (A057428 n : ℚ) ^ (A008574 n : ℤ)

end

end A061339.P7436923232608225263

/-! ## A061339.P9319703259303862337

`A353058(comp[lt[xor(n, 2*n), 2*n]]+1)`
-/

namespace A061339.P9319703259303862337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A061339.P9319703259303862337

/-! ## A061339.P4780357187139160525

`A353058(A004761(n+2))`
-/

namespace A061339.P4780357187139160525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A004761 (n + 2)).toNat

end

end A061339.P4780357187139160525

/-! ## A061339.P15494117640739537991

`A353058(A004277(n))`
-/

namespace A061339.P15494117640739537991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A004277 n).toNat

end

end A061339.P15494117640739537991

/-! ## A061339.P9969332235846617178

`A353058(A004275(n+1))`
-/

namespace A061339.P9969332235846617178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A004275 (n + 1)).toNat

end

end A061339.P9969332235846617178

/-! ## A061339.P13371047340585867711

`A353058(A004273(n)+1)`
-/

namespace A061339.P13371047340585867711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A004273 n + 1).toNat

end

end A061339.P13371047340585867711

/-! ## A061339.P3234783331522052744

`A353058(A316571(n+1))`
-/

namespace A061339.P3234783331522052744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A316571 (n + 1)).toNat

end

end A061339.P3234783331522052744

/-! ## A061339.P12494182938086294456

`A353058(A028310(2*n))`
-/

namespace A061339.P12494182938086294456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 (2 * n)).toNat

end

end A061339.P12494182938086294456

/-! ## A061339.P2835644608984034573

`A353058(A028310(n)+n)`
-/

namespace A061339.P2835644608984034573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A028310 n + (n : ℤ)).toNat

end

end A061339.P2835644608984034573

/-! ## A061339.P11481647086930333277

`A353058(A065033(2*n)+n)`
-/

namespace A061339.P11481647086930333277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A065033 (2 * n) + (n : ℤ)).toNat

end

end A061339.P11481647086930333277

/-! ## A061339.P4470377947225741373

`A353058(A065033(2*n))-A057428(n)`
-/

namespace A061339.P4470377947225741373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A065033 (2 * n)).toNat - A057428 n

end

end A061339.P4470377947225741373

/-! ## A061339.P16756751379562907620

`A280737(A171757(n+1))+A029837(n+1)`
-/

namespace A061339.P16756751379562907620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A171757 (n + 1)).toNat + A029837 (n + 1)

end

end A061339.P16756751379562907620

/-! ## A061339.P15737427024536375488

`A353058(A008574(n))+A057428(n)`
-/

namespace A061339.P15737427024536375488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A008574 n).toNat + A057428 n

end

end A061339.P15737427024536375488

/-! ## A061339.P15745221553530790864

`A353058(A065033(4*n))`
-/

namespace A061339.P15745221553530790864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A065033 (4 * n)).toNat

end

end A061339.P15745221553530790864

/-!
# A061340: a(n) = n*omega(n)^n where omega(n) is the number of distinct prime divisors of n.

The programs for A061340, the canonical program `A061340.P6248192721638701743` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061340 has offset 1).

The definition of A061340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061340.P6248192721638701743

`(n+1)*∑{p}[n+1, gcd(n, #)]^(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061340

/-- `(n+1)*∑{p}[n+1, gcd(n, #)]^(n+1)` -/
def P6248192721638701743.Spec : Prop :=
  ∀ n, (P6248192721638701743.a n : ℤ) = A061340 (n + 1)

theorem P6248192721638701743.correct : P6248192721638701743.Spec := by
  intro n
  simp only [A061340, Nat.add_sub_cancel]

end A061340

/-! ## A061340.P10301932312414936874

`(n+1)*A001221(n+1)^(n+1)`
-/

namespace A061340.P10301932312414936874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (n + 1) ^ (n + 1)

end

end A061340.P10301932312414936874

namespace A061340

/-- `(n+1)*A001221(n+1)^(n+1)` -/
def P10301932312414936874.Spec : Prop :=
  ∀ n, P10301932312414936874.a n = A061340 (n + 1)

end A061340

/-! ## A061340.P5837820668347983302

`(n+1)*∑{p}[n+1, A001222(#)]^(n+1)`
-/

namespace A061340.P5837820668347983302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), A001222 p) ^ (n + 1)

end

end A061340.P5837820668347983302

namespace A061340

/-- `(n+1)*∑{p}[n+1, A001222(#)]^(n+1)` -/
def P5837820668347983302.Spec : Prop :=
  ∀ n, P5837820668347983302.a n = A061340 (n + 1)

end A061340

/-! ## A061340.P8331497010420738099

`(n+1)*A001222(∏{p}[n+1, #])^(n+1)`
-/

namespace A061340.P8331497010420738099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (n + 1)

end

end A061340.P8331497010420738099

namespace A061340

/-- `(n+1)*A001222(∏{p}[n+1, #])^(n+1)` -/
def P8331497010420738099.Spec : Prop :=
  ∀ n, P8331497010420738099.a n = A061340 (n + 1)

end A061340

/-! ## A061340.P17210259282806269621

`(n+1)*A001222(A007947(n+1))^(n+1)`
-/

namespace A061340.P17210259282806269621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A007947 (n + 1)).toNat ^ (n + 1)

end

end A061340.P17210259282806269621

namespace A061340

/-- `(n+1)*A001222(A007947(n+1))^(n+1)` -/
def P17210259282806269621.Spec : Prop :=
  ∀ n, P17210259282806269621.a n = A061340 (n + 1)

end A061340

/-! ## A061340.P12199252190203173963

`(n+1)*A032741(A034444(n+1))^(n+1)`
-/

namespace A061340.P12199252190203173963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032741 (A034444 (n + 1)).toNat ^ (n + 1)

end

end A061340.P12199252190203173963

namespace A061340

/-- `(n+1)*A032741(A034444(n+1))^(n+1)` -/
def P12199252190203173963.Spec : Prop :=
  ∀ n, P12199252190203173963.a n = A061340 (n + 1)

end A061340

/-! ## A061340.P7284415536863133100

`(n+1)*A322307(n+1)^(n+1)`
-/

namespace A061340.P7284415536863133100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322307 (n + 1) ^ (n + 1)

end

end A061340.P7284415536863133100

namespace A061340

/-- `(n+1)*A322307(n+1)^(n+1)` -/
def P7284415536863133100.Spec : Prop :=
  ∀ n, P7284415536863133100.a n = A061340 (n + 1)

end A061340

/-!
# A061341: Numbers not ending in 0 whose cubes are concatenations of other cubes.

The programs for A061341, there is no canonical definition to state claims against.
-/

/-! ## A061341.P16529829311391668856

`root(A009421(n+1), 3)`
-/

namespace A061341.P16529829311391668856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A009421 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A061341.P16529829311391668856

/-! ## A061341.P4272052031940671465

`A009421(n-log2(1/2))^(1/3)`
-/

namespace A061341.P4272052031940671465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A009421 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A061341.P4272052031940671465

/-! ## A061341.P13632894355612006058

`A000027(A009421(n+1)^(1/3))`
-/

namespace A061341.P13632894355612006058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A009421 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A061341.P13632894355612006058

/-!
# A061342: Period of the stationary component of the pattern which a row of n cells becomes in Conway's Game of Life.

The programs for A061342, there is no canonical definition to state claims against.
-/

/-! ## A061342.P17663536950552902340

`gcd(n+6, A263564(A107187(n+1)))`
-/

namespace A061342.P17663536950552902340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A263564 (A107187 (n + 1)).toNat)

end

end A061342.P17663536950552902340

/-! ## A061342.P15269743507335827075

`A000110(A136480(A083795(n+1)²))`
-/

namespace A061342.P15269743507335827075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A136480 (A083795 (n + 1) ^ 2).toNat).toNat

end

end A061342.P15269743507335827075

/-! ## A061342.P6908945648640089638

`A067027(gcd(A005578(n), A076750(2*n+5)))`
-/

namespace A061342.P6908945648640089638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067027 (Int.gcd (A005578 n) (A076750 (2 * n + 5)))

end

end A061342.P6908945648640089638

/-! ## A061342.P9123013582418017406

`gcd(A000096(A069770(2*n+1)), A288605(3*n+2))`
-/

namespace A061342.P9123013582418017406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (A069770 (2 * n + 1)).toNat) (A288605 (3 * n + 2))

end

end A061342.P9123013582418017406

/-! ## A061342.P6884784905431558017

`gcd(∑[A068940(n+1)], A206920(n+1))`
-/

namespace A061342.P6884784905431558017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A206920 (n + 1))

end

end A061342.P6884784905431558017

/-!
# A061343: Number of standard shifted tableaux with n entries.

The programs for A061343, there is no canonical definition to state claims against.
-/

/-! ## A061343.P3422561668787477319

`or(A082395(n+1), A185284((3-n)²))`
-/

namespace A061343.P3422561668787477319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082395 (n + 1)) (A185284 ((3 - (n : ℤ)) ^ 2).toNat)

end

end A061343.P3422561668787477319

/-! ## A061343.P11911826314584330046

`A024417(A289666(n)+A120588(n))`
-/

namespace A061343.P11911826314584330046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A289666 n + A120588 n).toNat

end

end A061343.P11911826314584330046

/-! ## A061343.P8973085242342835142

`or(A025581(A190389(n+1)), A082395(n+1))`
-/

namespace A061343.P8973085242342835142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A190389 (n + 1)).toNat) (A082395 (n + 1))

end

end A061343.P8973085242342835142

/-!
# A061344: Numbers of form p^m + 1, p odd prime, m >= 1.

The programs for A061344, the canonical program `A061344.P3426383338707934505` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061344 has offset 1).

The definition of A061344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9684 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061344.P16640988272915769254

`A061345(n+1)+1`
-/

namespace A061344.P16640988272915769254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (n + 1) + 1

end

end A061344.P16640988272915769254

namespace A061344

/-- `A061345(n+1)+1` -/
def P16640988272915769254.Spec : Prop :=
  ∀ n, P16640988272915769254.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P4407966465037516460

`∪[A065091(n+1), A244623(n+2)]+1`
-/

namespace A061344.P4407966465037516460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A061344.P4407966465037516460

namespace A061344

/-- `∪[A065091(n+1), A244623(n+2)]+1` -/
def P4407966465037516460.Spec : Prop :=
  ∀ n, (P4407966465037516460.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P3490821639653668022

`∪[A000040(n+2), A244623(n+2)]+1`
-/

namespace A061344.P3490821639653668022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A061344.P3490821639653668022

namespace A061344

/-- `∪[A000040(n+2), A244623(n+2)]+1` -/
def P3490821639653668022.Spec : Prop :=
  ∀ n, (P3490821639653668022.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P17796580804369408186

`A235868(n+3)+1`
-/

namespace A061344.P17796580804369408186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 3) + 1

end

end A061344.P17796580804369408186

namespace A061344

/-- `A235868(n+3)+1` -/
def P17796580804369408186.Spec : Prop :=
  ∀ n, P17796580804369408186.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P3426383338707934505

`record[A008475(2*n+3)+1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A061344

/-- `record[A008475(2*n+3)+1]` -/
def P3426383338707934505.Spec : Prop :=
  ∀ n, P3426383338707934505.a n = A061344 (n + 1)

theorem P3426383338707934505.correct : P3426383338707934505.Spec := by
  intro n
  simp only [A061344, Nat.add_sub_cancel]

end A061344

/-! ## A061344.P5297198043142744533

`2*(eq[1, A001221(2*n+1)]+1)`
-/

namespace A061344.P5297198043142744533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061344.P5297198043142744533

namespace A061344

/-- `2*(eq[1, A001221(2*n+1)]+1)` -/
def P5297198043142744533.Spec : Prop :=
  ∀ n, (P5297198043142744533.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P12579619762305326058

`record[2*(n+2)/A001221(2*n+3)]`
-/

namespace A061344.P12579619762305326058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℚ) / (A001221 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P12579619762305326058

namespace A061344

/-- `record[2*(n+2)/A001221(2*n+3)]` -/
def P12579619762305326058.Spec : Prop :=
  ∀ n, P12579619762305326058.a n = (A061344 (n + 1) : ℚ)

end A061344

/-! ## A061344.P6755225673258705822

`lt[1, A297109(n+1)]+2`
-/

namespace A061344.P6755225673258705822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A061344.P6755225673258705822

namespace A061344

/-- `lt[1, A297109(n+1)]+2` -/
def P6755225673258705822.Spec : Prop :=
  ∀ n, (P6755225673258705822.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P17105438529211547406

`eq[1, A325226(2*(n+1))]+2`
-/

namespace A061344.P17105438529211547406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P17105438529211547406

namespace A061344

/-- `eq[1, A325226(2*(n+1))]+2` -/
def P17105438529211547406.Spec : Prop :=
  ∀ n, (P17105438529211547406.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P9443806293501306293

`eq[1, A354981(2*(n+1))]+2`
-/

namespace A061344.P9443806293501306293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354981 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P9443806293501306293

namespace A061344

/-- `eq[1, A354981(2*(n+1))]+2` -/
def P9443806293501306293.Spec : Prop :=
  ∀ n, (P9443806293501306293.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P12272811248000757427

`lt[A001221(n+3), gcd(2, n)]+4`
-/

namespace A061344.P12272811248000757427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A061344.P12272811248000757427

namespace A061344

/-- `lt[A001221(n+3), gcd(2, n)]+4` -/
def P12272811248000757427.Spec : Prop :=
  ∀ n, (P12272811248000757427.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P6937287543171807983

`A000265(A278568(n+2))+1`
-/

namespace A061344.P6937287543171807983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A278568 (n + 2)).toNat + 1

end

end A061344.P6937287543171807983

namespace A061344

/-- `A000265(A278568(n+2))+1` -/
def P6937287543171807983.Spec : Prop :=
  ∀ n, P6937287543171807983.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P7575808799667138542

`eq[2, A330692(2*(n+1))]+2`
-/

namespace A061344.P7575808799667138542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330692 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P7575808799667138542

namespace A061344

/-- `eq[2, A330692(2*(n+1))]+2` -/
def P7575808799667138542.Spec : Prop :=
  ∀ n, (P7575808799667138542.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P3244529336027664166

`eq[2, A330742(2*(n+1))]+2`
-/

namespace A061344.P3244529336027664166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330742 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P3244529336027664166

namespace A061344

/-- `eq[2, A330742(2*(n+1))]+2` -/
def P3244529336027664166.Spec : Prop :=
  ∀ n, (P3244529336027664166.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P13224352141995751221

`record[A034699(A016825(n+1))+1]`
-/

namespace A061344.P13224352141995751221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A016825 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P13224352141995751221

namespace A061344

/-- `record[A034699(A016825(n+1))+1]` -/
def P13224352141995751221.Spec : Prop :=
  ∀ n, P13224352141995751221.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P16914694994971790792

`record[A226047(n+2)+1]`
-/

namespace A061344.P16914694994971790792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226047 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P16914694994971790792

namespace A061344

/-- `record[A226047(n+2)+1]` -/
def P16914694994971790792.Spec : Prop :=
  ∀ n, P16914694994971790792.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P6440740308350360523

`record[A345444(n+1)+2]`
-/

namespace A061344.P6440740308350360523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345444 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061344.P6440740308350360523

namespace A061344

/-- `record[A345444(n+1)+2]` -/
def P6440740308350360523.Spec : Prop :=
  ∀ n, P6440740308350360523.a n = A061344 (n + 1)

end A061344

/-! ## A061344.P2060430762280817433

`eq[1, A089631(n+1)]+2`
-/

namespace A061344.P2060430762280817433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P2060430762280817433

namespace A061344

/-- `eq[1, A089631(n+1)]+2` -/
def P2060430762280817433.Spec : Prop :=
  ∀ n, (P2060430762280817433.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P17264701015195334389

`eq[2, A317528(n+1)]+2`
-/

namespace A061344.P17264701015195334389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A061344.P17264701015195334389

namespace A061344

/-- `eq[2, A317528(n+1)]+2` -/
def P17264701015195334389.Spec : Prop :=
  ∀ n, (P17264701015195334389.a n : ℤ) = A061344 (n + 1)

end A061344

/-! ## A061344.P7082599105190598782

`record[A354933(2*n+3)]+1`
-/

namespace A061344.P7082599105190598782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A061344.P7082599105190598782

namespace A061344

/-- `record[A354933(2*n+3)]+1` -/
def P7082599105190598782.Spec : Prop :=
  ∀ n, P7082599105190598782.a n = A061344 (n + 1)

end A061344

/-!
# A061345: Powers of odd primes. Alternatively, 1 and the odd prime powers (p^k, p an odd prime, k >= 1).

The programs for A061345, the canonical program `A061345.P12671314331313567408` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061345 has offset 0).

The definition of A061345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061345.P859563339208269289

`A278568(n+1)/2`
-/

namespace A061345.P859563339208269289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278568 (n + 1) : ℚ) / 2

end

end A061345.P859563339208269289

namespace A061345

/-- `A278568(n+1)/2` -/
def P859563339208269289.Spec : Prop :=
  ∀ n, P859563339208269289.a n = (A061345 n : ℚ)

end A061345

/-! ## A061345.P202211424757904531

`∪[A244623(n+1), A000040(n+2)]`
-/

namespace A061345.P202211424757904531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061345.P202211424757904531

namespace A061345

/-- `∪[A244623(n+1), A000040(n+2)]` -/
def P202211424757904531.Spec : Prop :=
  ∀ n, (P202211424757904531.a n : ℤ) = A061345 n

end A061345

/-! ## A061345.P18243345733130080278

`A235868(A065475(n+1))`
-/

namespace A061345.P18243345733130080278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (A065475 (n + 1)).toNat

end

end A061345.P18243345733130080278

namespace A061345

/-- `A235868(A065475(n+1))` -/
def P18243345733130080278.Spec : Prop :=
  ∀ n, P18243345733130080278.a n = A061345 n

end A061345

/-! ## A061345.P10592019382105547467

`A235868(A181440(n+2))`
-/

namespace A061345.P10592019382105547467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (A181440 (n + 2)).toNat

end

end A061345.P10592019382105547467

namespace A061345

/-- `A235868(A181440(n+2))` -/
def P10592019382105547467.Spec : Prop :=
  ∀ n, P10592019382105547467.a n = A061345 n

end A061345

/-! ## A061345.P14506222327632758480

`A235868(A184985(n+2))`
-/

namespace A061345.P14506222327632758480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (A184985 (n + 2)).toNat

end

end A061345.P14506222327632758480

namespace A061345

/-- `A235868(A184985(n+2))` -/
def P14506222327632758480.Spec : Prop :=
  ∀ n, P14506222327632758480.a n = A061345 n

end A061345

/-! ## A061345.P8144702981939095750

`record[A246655(n+1)^(A246655(n+1)%2)]`
-/

namespace A061345.P8144702981939095750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) ^ (Int.tmod (A246655 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061345.P8144702981939095750

namespace A061345

/-- `record[A246655(n+1)^(A246655(n+1)%2)]` -/
def P8144702981939095750.Spec : Prop :=
  ∀ n, P8144702981939095750.a n = (A061345 n : ℚ)

end A061345

/-! ## A061345.P16188304719738633797

`record[lcm(2, n)/a(A001221(n))]/2` with `a(0)=2`
-/

namespace A061345.P16188304719738633797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.lcm 2 n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A061345.P16188304719738633797

namespace A061345

/-- `record[lcm(2, n)/a(A001221(n))]/2` -/
def P16188304719738633797.Spec : Prop :=
  ∀ n, P16188304719738633797.a n = (A061345 n : ℚ)

end A061345

/-! ## A061345.P11569105278538766902

`2*lt[A001221(2*n+1), 2]+1`
-/

namespace A061345.P11569105278538766902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A061345.P11569105278538766902

namespace A061345

/-- `2*lt[A001221(2*n+1), 2]+1` -/
def P11569105278538766902.Spec : Prop :=
  ∀ n, (P11569105278538766902.a n : ℤ) = A061345 n

end A061345

/-! ## A061345.P1262974516775004975

`record[gcd((n+1)/2^val(n+1, 2), A008475(n+1))]`
-/

namespace A061345.P1262974516775004975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A008475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061345.P1262974516775004975

namespace A061345

/-- `record[gcd((n+1)/2^val(n+1, 2), A008475(n+1))]` -/
def P1262974516775004975.Spec : Prop :=
  ∀ n, (P1262974516775004975.a n : ℤ) = A061345 n

end A061345

/-! ## A061345.P1100112498950669543

`A000265(A235868(n+2))`
-/

namespace A061345.P1100112498950669543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A235868 (n + 2)).toNat

end

end A061345.P1100112498950669543

namespace A061345

/-- `A000265(A235868(n+2))` -/
def P1100112498950669543.Spec : Prop :=
  ∀ n, P1100112498950669543.a n = A061345 n

end A061345

/-! ## A061345.P16536330580745991654

`record[A000265(A000961(n+1))]`
-/

namespace A061345.P16536330580745991654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061345.P16536330580745991654

namespace A061345

/-- `record[A000265(A000961(n+1))]` -/
def P16536330580745991654.Spec : Prop :=
  ∀ n, P16536330580745991654.a n = A061345 n

end A061345

/-! ## A061345.P14626864208438612766

`record[A000265(A246655(n+1))]`
-/

namespace A061345.P14626864208438612766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A246655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061345.P14626864208438612766

namespace A061345

/-- `record[A000265(A246655(n+1))]` -/
def P14626864208438612766.Spec : Prop :=
  ∀ n, P14626864208438612766.a n = A061345 n

end A061345

/-! ## A061345.P13348087466596820588

`filter[A000961(n+1), A361023(#)]`
-/

namespace A061345.P13348087466596820588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A061345.P13348087466596820588

namespace A061345

/-- `filter[A000961(n+1), A361023(#)]` -/
def P13348087466596820588.Spec : Prop :=
  ∀ n, P13348087466596820588.a n = A061345 n

end A061345

/-! ## A061345.P5312220282823901218

`filter[A000961(n+1), A374134(#)]`
-/

namespace A061345.P5312220282823901218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A061345.P5312220282823901218

namespace A061345

/-- `filter[A000961(n+1), A374134(#)]` -/
def P5312220282823901218.Spec : Prop :=
  ∀ n, P5312220282823901218.a n = A061345 n

end A061345

/-! ## A061345.P12671314331313567408

`filter[A081061(n+1), A374134(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A061345

/-- `filter[A081061(n+1), A374134(#)]` -/
def P12671314331313567408.Spec : Prop :=
  ∀ n, P12671314331313567408.a n = A061345 n

theorem P12671314331313567408.correct : P12671314331313567408.Spec := by
  intro n
  simp only [A061345]

end A061345

/-! ## A061345.P15781051114518112843

`filter[A141807(n+1), A374134(#)]`
-/

namespace A061345.P15781051114518112843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A061345.P15781051114518112843

namespace A061345

/-- `filter[A141807(n+1), A374134(#)]` -/
def P15781051114518112843.Spec : Prop :=
  ∀ n, P15781051114518112843.a n = A061345 n

end A061345

/-! ## A061345.P8584554863227365447

`filter[A225657(n+1), A374134(#)]`
-/

namespace A061345.P8584554863227365447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A061345.P8584554863227365447

namespace A061345

/-- `filter[A225657(n+1), A374134(#)]` -/
def P8584554863227365447.Spec : Prop :=
  ∀ n, P8584554863227365447.a n = A061345 n

end A061345

/-!
# A061346: Odd numbers that are neither primes nor prime powers.

The programs for A061346, the canonical program `A061346.P8376989316986031510` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061346 has offset 1).

The definition of A061346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061346.P3407676714395729021

`2*A083390(n+1)+1`
-/

namespace A061346.P3407676714395729021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083390 (n + 1) + 1

end

end A061346.P3407676714395729021

namespace A061346

/-- `2*A083390(n+1)+1` -/
def P3407676714395729021.Spec : Prop :=
  ∀ n, P3407676714395729021.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P17887455314733401791

`lt[1, A001221(n^(n%2))]`
-/

namespace A061346.P17887455314733401791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061346.P17887455314733401791

namespace A061346

/-- `lt[1, A001221(n^(n%2))]` -/
def P17887455314733401791.Spec : Prop :=
  ∀ n, (P17887455314733401791.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P8516346687029084595

`lt[2, A001221(C(2*n, and(1, n)))]`
-/

namespace A061346.P8516346687029084595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (2 * n) (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061346.P8516346687029084595

namespace A061346

/-- `lt[2, A001221(C(2*n, and(1, n)))]` -/
def P8516346687029084595.Spec : Prop :=
  ∀ n, (P8516346687029084595.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P11060319045160940547

`2*lt[1, A001221(2*n+1)]+1`
-/

namespace A061346.P11060319045160940547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A061346.P11060319045160940547

namespace A061346

/-- `2*lt[1, A001221(2*n+1)]+1` -/
def P11060319045160940547.Spec : Prop :=
  ∀ n, (P11060319045160940547.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P11354345391310627042

`lt[gcd(n, or(1, n)), A001221(n+1)]+1`
-/

namespace A061346.P11354345391310627042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A061346.P11354345391310627042

namespace A061346

/-- `lt[gcd(n, or(1, n)), A001221(n+1)]+1` -/
def P11354345391310627042.Spec : Prop :=
  ∀ n, (P11354345391310627042.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P14277181993662101141

`A016825(A083390(n+1))/2`
-/

namespace A061346.P14277181993662101141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A083390 (n + 1)).toNat : ℚ) / 2

end

end A061346.P14277181993662101141

namespace A061346

/-- `A016825(A083390(n+1))/2` -/
def P14277181993662101141.Spec : Prop :=
  ∀ n, P14277181993662101141.a n = (A061346 (n + 1) : ℚ)

end A061346

/-! ## A061346.P17364405886949828967

`lt[A001222(n+1), A325937(n+1)]+1`
-/

namespace A061346.P17364405886949828967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061346.P17364405886949828967

namespace A061346

/-- `lt[A001222(n+1), A325937(n+1)]+1` -/
def P17364405886949828967.Spec : Prop :=
  ∀ n, (P17364405886949828967.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P8376989316986031510

`filter[A226025(n+1), A354108(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A061346

/-- `filter[A226025(n+1), A354108(#)]` -/
def P8376989316986031510.Spec : Prop :=
  ∀ n, P8376989316986031510.a n = A061346 (n + 1)

theorem P8376989316986031510.correct : P8376989316986031510.Spec := by
  intro n
  simp only [A061346, Nat.add_sub_cancel]

end A061346

/-! ## A061346.P1404697726609573787

`filter[A071904(n+1), A354108(#)]`
-/

namespace A061346.P1404697726609573787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P1404697726609573787

namespace A061346

/-- `filter[A071904(n+1), A354108(#)]` -/
def P1404697726609573787.Spec : Prop :=
  ∀ n, P1404697726609573787.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P16672697292874787186

`filter[A014076(n+2), A354108(#)]`
-/

namespace A061346.P16672697292874787186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P16672697292874787186

namespace A061346

/-- `filter[A014076(n+2), A354108(#)]` -/
def P16672697292874787186.Spec : Prop :=
  ∀ n, P16672697292874787186.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P9419029618726511356

`filter[A257521(n+1), A354108(#)]`
-/

namespace A061346.P9419029618726511356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P9419029618726511356

namespace A061346

/-- `filter[A257521(n+1), A354108(#)]` -/
def P9419029618726511356.Spec : Prop :=
  ∀ n, P9419029618726511356.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P10457805813314469031

`filter[A327922(n+1), A354108(#)]`
-/

namespace A061346.P10457805813314469031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P10457805813314469031

namespace A061346

/-- `filter[A327922(n+1), A354108(#)]` -/
def P10457805813314469031.Spec : Prop :=
  ∀ n, P10457805813314469031.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P4844783405419683494

`filter[A216848(n+1), A354108(#)]`
-/

namespace A061346.P4844783405419683494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P4844783405419683494

namespace A061346

/-- `filter[A216848(n+1), A354108(#)]` -/
def P4844783405419683494.Spec : Prop :=
  ∀ n, P4844783405419683494.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P7383355041762407108

`filter[A255763(n+2), A354108(#)]`
-/

namespace A061346.P7383355041762407108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P7383355041762407108

namespace A061346

/-- `filter[A255763(n+2), A354108(#)]` -/
def P7383355041762407108.Spec : Prop :=
  ∀ n, P7383355041762407108.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P16595527762241394748

`filter[A020742(n), A354108(#)]`
-/

namespace A061346.P16595527762241394748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A061346.P16595527762241394748

namespace A061346

/-- `filter[A020742(n), A354108(#)]` -/
def P16595527762241394748.Spec : Prop :=
  ∀ n, P16595527762241394748.a n = A061346 (n + 1)

end A061346

/-! ## A061346.P13894945317968297363

`lt[A019425(n), A001221(n+1)]+1`
-/

namespace A061346.P13894945317968297363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061346.P13894945317968297363

namespace A061346

/-- `lt[A019425(n), A001221(n+1)]+1` -/
def P13894945317968297363.Spec : Prop :=
  ∀ n, (P13894945317968297363.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P5791758843660223471

`lt[A019427(n), A001221(n+1)]+1`
-/

namespace A061346.P5791758843660223471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061346.P5791758843660223471

namespace A061346

/-- `lt[A019427(n), A001221(n+1)]+1` -/
def P5791758843660223471.Spec : Prop :=
  ∀ n, (P5791758843660223471.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P2858663919386870868

`lt[A093178(n), A001221(n+1)]+1`
-/

namespace A061346.P2858663919386870868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061346.P2858663919386870868

namespace A061346

/-- `lt[A093178(n), A001221(n+1)]+1` -/
def P2858663919386870868.Spec : Prop :=
  ∀ n, (P2858663919386870868.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P18166443513806655720

`lt[2, A317528(n+1)]+1`
-/

namespace A061346.P18166443513806655720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A061346.P18166443513806655720

namespace A061346

/-- `lt[2, A317528(n+1)]+1` -/
def P18166443513806655720.Spec : Prop :=
  ∀ n, (P18166443513806655720.a n : ℤ) = A061346 (n + 1)

end A061346

/-! ## A061346.P17512167140887779312

`A130773(A083390(n+1))`
-/

namespace A061346.P17512167140887779312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A083390 (n + 1)).toNat

end

end A061346.P17512167140887779312

namespace A061346

/-- `A130773(A083390(n+1))` -/
def P17512167140887779312.Spec : Prop :=
  ∀ n, P17512167140887779312.a n = A061346 (n + 1)

end A061346

/-!
# A061347: Period 3: repeat [1, 1, -2].

The programs for A061347, the canonical program `A061347.P16495184045730708209` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061347 has offset 1).

The definition of A061347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061347.P16495184045730708209

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=-2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061347

/-- `a(n-3)` -/
def P16495184045730708209.Spec : Prop :=
  ∀ n, P16495184045730708209.a n = A061347 (n + 1)

theorem P16495184045730708209.correct : P16495184045730708209.Spec := by
  intro n
  simp only [A061347, Nat.add_sub_cancel]

end A061347

/-!
# A061349: Sum of antidiagonals of A060736.

The programs for A061349, the canonical program `A061349.P12457628590911601560` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061349 has offset 0).

The definition of A061349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061349.P13334032759199587557

`n*(13+3*(-1)^n+14*n²)/24`
-/

namespace A061349.P13334032759199587557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (13 + 3 * (-1) ^ n + (14 * n ^ 2 : ℤ)) : ℚ) / 24

end

end A061349.P13334032759199587557

namespace A061349

/-- `n*(13+3*(-1)^n+14*n²)/24` -/
def P13334032759199587557.Spec : Prop :=
  ∀ n, P13334032759199587557.a n = (A061349 n : ℚ)

end A061349

/-! ## A061349.P12457628590911601560

`a(n-1)+A001844(n-1)-A002378(A004526(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061349

/-- `a(n-1)+A001844(n-1)-A002378(A004526(n-1))` -/
def P12457628590911601560.Spec : Prop :=
  ∀ n, P12457628590911601560.a n = A061349 n

theorem P12457628590911601560.correct : P12457628590911601560.Spec := by
  intro n
  simp only [A061349]

end A061349

/-! ## A061349.P11396233596834656381

`A213389(n)+∑[and(n, -2)²]`
-/

namespace A061349.P11396233596834656381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061349.P11396233596834656381

namespace A061349

/-- `A213389(n)+∑[and(n, -2)²]` -/
def P11396233596834656381.Spec : Prop :=
  ∀ n, P11396233596834656381.a n = A061349 n

end A061349

/-! ## A061349.P4261281701099287363

`A213389(n)+A212686(n)`
-/

namespace A061349.P4261281701099287363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + A212686 n

end

end A061349.P4261281701099287363

namespace A061349

/-- `A213389(n)+A212686(n)` -/
def P4261281701099287363.Spec : Prop :=
  ∀ n, P4261281701099287363.a n = A061349 n

end A061349

/-! ## A061349.P15203292171389944360

`A005900(n)-A006584(n)`
-/

namespace A061349.P15203292171389944360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A006584 n

end

end A061349.P15203292171389944360

namespace A061349

/-- `A005900(n)-A006584(n)` -/
def P15203292171389944360.Spec : Prop :=
  ∀ n, P15203292171389944360.a n = A061349 n

end A061349

/-! ## A061349.P14622068179933595372

`A027444(n)-A212970(n)`
-/

namespace A061349.P14622068179933595372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n - A212970 n

end

end A061349.P14622068179933595372

namespace A061349

/-- `A027444(n)-A212970(n)` -/
def P14622068179933595372.Spec : Prop :=
  ∀ n, P14622068179933595372.a n = A061349 n

end A061349

/-! ## A061349.P8734697406022145244

`A034262(n)-A212578(n)`
-/

namespace A061349.P8734697406022145244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - A212578 n

end

end A061349.P8734697406022145244

namespace A061349

/-- `A034262(n)-A212578(n)` -/
def P8734697406022145244.Spec : Prop :=
  ∀ n, P8734697406022145244.a n = A061349 n

end A061349

/-! ## A061349.P4354289784662663299

`A006003(n)+∑[A008794(n)]`
-/

namespace A061349.P4354289784662663299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061349.P4354289784662663299

namespace A061349

/-- `A006003(n)+∑[A008794(n)]` -/
def P4354289784662663299.Spec : Prop :=
  ∀ n, P4354289784662663299.a n = A061349 n

end A061349

/-! ## A061349.P16256962587256734289

`A006527(n)+2*A034828(n)`
-/

namespace A061349.P16256962587256734289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + 2 * A034828 n

end

end A061349.P16256962587256734289

namespace A061349

/-- `A006527(n)+2*A034828(n)` -/
def P16256962587256734289.Spec : Prop :=
  ∀ n, P16256962587256734289.a n = A061349 n

end A061349

/-! ## A061349.P14393374892244023099

`A006527(n)+n*A002620(n)`
-/

namespace A061349.P14393374892244023099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + (n : ℤ) * A002620 n

end

end A061349.P14393374892244023099

namespace A061349

/-- `A006527(n)+n*A002620(n)` -/
def P14393374892244023099.Spec : Prop :=
  ∀ n, P14393374892244023099.a n = A061349 n

end A061349

/-! ## A061349.P6521286575929242076

`A006003(n)+∑[A004526(n)²]`
-/

namespace A061349.P6521286575929242076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061349.P6521286575929242076

namespace A061349

/-- `A006003(n)+∑[A004526(n)²]` -/
def P6521286575929242076.Spec : Prop :=
  ∀ n, P6521286575929242076.a n = A061349 n

end A061349

/-! ## A061349.P10810621865568548968

`n²+A280186(n)+A212683(n)`
-/

namespace A061349.P10810621865568548968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A280186 n + A212683 n)

end

end A061349.P10810621865568548968

namespace A061349

/-- `n²+A280186(n)+A212683(n)` -/
def P10810621865568548968.Spec : Prop :=
  ∀ n, P10810621865568548968.a n = A061349 n

end A061349

/-! ## A061349.P240716181292681318

`A212960(n)-(A212970(n)+A000982(n))`
-/

namespace A061349.P240716181292681318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n - (A212970 n + A000982 n)

end

end A061349.P240716181292681318

namespace A061349

/-- `A212960(n)-(A212970(n)+A000982(n))` -/
def P240716181292681318.Spec : Prop :=
  ∀ n, P240716181292681318.a n = A061349 n

end A061349

/-! ## A061349.P9015604965124979547

`A212969(n+1)-n²`
-/

namespace A061349.P9015604965124979547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212969 (n + 1) - (n ^ 2 : ℤ)

end

end A061349.P9015604965124979547

namespace A061349

/-- `A212969(n+1)-n²` -/
def P9015604965124979547.Spec : Prop :=
  ∀ n, P9015604965124979547.a n = A061349 n

end A061349

/-! ## A061349.P6208306200979463949

`Δ[A212565(n)]-(∑[n]-n)`
-/

namespace A061349.P6208306200979463949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212565 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A061349.P6208306200979463949

namespace A061349

/-- `Δ[A212565(n)]-(∑[n]-n)` -/
def P6208306200979463949.Spec : Prop :=
  ∀ n, P6208306200979463949.a n = A061349 n

end A061349

/-! ## A061349.P4269334383727177987

`A212683(n+1)+A212683(n)-A212578(n)`
-/

namespace A061349.P4269334383727177987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212683 (n + 1) + (A212683 n - A212578 n)

end

end A061349.P4269334383727177987

namespace A061349

/-- `A212683(n+1)+A212683(n)-A212578(n)` -/
def P4269334383727177987.Spec : Prop :=
  ∀ n, P4269334383727177987.a n = A061349 n

end A061349

/-! ## A061349.P4746368976224507132

`Δ[A212565(n)-Δ[A000332(n)]]`
-/

namespace A061349.P4746368976224507132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212565 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061349.P4746368976224507132

namespace A061349

/-- `Δ[A212565(n)-Δ[A000332(n)]]` -/
def P4746368976224507132.Spec : Prop :=
  ∀ n, P4746368976224507132.a n = A061349 n

end A061349

/-! ## A061349.P17663051069467517908

`A212561(n+1)+A060422(A004273(n))`
-/

namespace A061349.P17663051069467517908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 (n + 1) + A060422 (A004273 n).toNat

end

end A061349.P17663051069467517908

namespace A061349

/-- `A212561(n+1)+A060422(A004273(n))` -/
def P17663051069467517908.Spec : Prop :=
  ∀ n, P17663051069467517908.a n = A061349 n

end A061349

/-! ## A061349.P17305899116882077193

`A006584(2*n)-A280186(n+1)+n`
-/

namespace A061349.P17305899116882077193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (2 * n) - A280186 (n + 1) + (n : ℤ)

end

end A061349.P17305899116882077193

namespace A061349

/-- `A006584(2*n)-A280186(n+1)+n` -/
def P17305899116882077193.Spec : Prop :=
  ∀ n, P17305899116882077193.a n = A061349 n

end A061349

/-! ## A061349.P18005321068017496506

`A280186(2*n+1)-A280186(n+1)+n`
-/

namespace A061349.P18005321068017496506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 (2 * n + 1) - A280186 (n + 1) + (n : ℤ)

end

end A061349.P18005321068017496506

namespace A061349

/-- `A280186(2*n+1)-A280186(n+1)+n` -/
def P18005321068017496506.Spec : Prop :=
  ∀ n, P18005321068017496506.a n = A061349 n

end A061349

/-!
# A061350: Maximal size of Aut(G) where G is a finite Abelian group of order n.

The programs for A061350, there is no canonical definition to state claims against.
-/

/-! ## A061350.P7751560267289872602

`A138565(A063966(n+1))`
-/

namespace A061350.P7751560267289872602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138565 (A063966 (n + 1)).toNat

end

end A061350.P7751560267289872602

/-! ## A061350.P18345375604126212402

`A138565(∑[A000688(n+1)])`
-/

namespace A061350.P18345375604126212402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061350.P18345375604126212402

/-! ## A061350.P3249796445822297440

`A138565(∑[A295879(n+1)])`
-/

namespace A061350.P3249796445822297440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061350.P3249796445822297440

/-! ## A061350.P3767435460401038285

`A138565(∑[A336736(n+1)])`
-/

namespace A061350.P3767435460401038285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061350.P3767435460401038285

/-! ## A061350.P2703909343359172901

`A138565(∑[A238877(Δ[n²])])`
-/

namespace A061350.P2703909343359172901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061350.P2703909343359172901

/-!
# A061351: Between p and the next prime either there are no numbers or there is a single squarefree number.

The programs for A061351, the canonical program `A061351.P727786220595146041` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061351 has offset 0).

The definition of A061351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061351.P727786220595146041

`A070195(n)-A001221(a(A001221(n)))` with `a(0)=2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A061351

/-- `A070195(n)-A001221(a(A001221(n)))` -/
def P727786220595146041.Spec : Prop :=
  ∀ n, P727786220595146041.a n = A061351 n

theorem P727786220595146041.correct : P727786220595146041.Spec := by
  intro n
  simp only [A061351]

end A061351

/-! ## A061351.P8113457691563512573

`p?[xor(1, A039787(n+1))-1]`
-/

namespace A061351.P8113457691563512573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A039787 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061351.P8113457691563512573

namespace A061351

/-- `p?[xor(1, A039787(n+1))-1]` -/
def P8113457691563512573.Spec : Prop :=
  ∀ n, P8113457691563512573.a n = A061351 n

end A061351

/-! ## A061351.P12954820388501021418

`∩[A049097(n+1), A073534(n+1)]`
-/

namespace A061351.P12954820388501021418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P12954820388501021418

namespace A061351

/-- `∩[A049097(n+1), A073534(n+1)]` -/
def P12954820388501021418.Spec : Prop :=
  ∀ n, (P12954820388501021418.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P1637051518022189748

`∩[A049097(n+1), A111166(n+1)]`
-/

namespace A061351.P1637051518022189748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P1637051518022189748

namespace A061351

/-- `∩[A049097(n+1), A111166(n+1)]` -/
def P1637051518022189748.Spec : Prop :=
  ∀ n, (P1637051518022189748.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P6250313222674168731

`∩[A049097(n+1), A124588(n+1)]`
-/

namespace A061351.P6250313222674168731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P6250313222674168731

namespace A061351

/-- `∩[A049097(n+1), A124588(n+1)]` -/
def P6250313222674168731.Spec : Prop :=
  ∀ n, (P6250313222674168731.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P9035337583011446318

`∩[A049097(n+1), A238528(n+1)]`
-/

namespace A061351.P9035337583011446318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P9035337583011446318

namespace A061351

/-- `∩[A049097(n+1), A238528(n+1)]` -/
def P9035337583011446318.Spec : Prop :=
  ∀ n, (P9035337583011446318.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P11410425520335917437

`∩[A049097(n+1), A378983(n+1)]`
-/

namespace A061351.P11410425520335917437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P11410425520335917437

namespace A061351

/-- `∩[A049097(n+1), A378983(n+1)]` -/
def P11410425520335917437.Spec : Prop :=
  ∀ n, (P11410425520335917437.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P15332593737750944697

`∩[A049097(n+1), A394509(n+1)]`
-/

namespace A061351.P15332593737750944697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P15332593737750944697

namespace A061351

/-- `∩[A049097(n+1), A394509(n+1)]` -/
def P15332593737750944697.Spec : Prop :=
  ∀ n, (P15332593737750944697.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P15667828096535506664

`∩[A049097(n+1), A395788(n+1)]`
-/

namespace A061351.P15667828096535506664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P15667828096535506664

namespace A061351

/-- `∩[A049097(n+1), A395788(n+1)]` -/
def P15667828096535506664.Spec : Prop :=
  ∀ n, (P15667828096535506664.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P4567359813642587132

`p?[xor(3, A077064(n+1))]`
-/

namespace A061351.P4567359813642587132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A077064 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061351.P4567359813642587132

namespace A061351

/-- `p?[xor(3, A077064(n+1))]` -/
def P4567359813642587132.Spec : Prop :=
  ∀ n, P4567359813642587132.a n = A061351 n

end A061351

/-! ## A061351.P12350621810136013016

`∩[A065301(n+1), A111166(n+1)]`
-/

namespace A061351.P12350621810136013016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P12350621810136013016

namespace A061351

/-- `∩[A065301(n+1), A111166(n+1)]` -/
def P12350621810136013016.Spec : Prop :=
  ∀ n, (P12350621810136013016.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P222989122353165246

`∩[A065301(n+1), A124588(n+1)]`
-/

namespace A061351.P222989122353165246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P222989122353165246

namespace A061351

/-- `∩[A065301(n+1), A124588(n+1)]` -/
def P222989122353165246.Spec : Prop :=
  ∀ n, (P222989122353165246.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P2288689055304686572

`∩[A065301(n+1), A238528(n+1)]`
-/

namespace A061351.P2288689055304686572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P2288689055304686572

namespace A061351

/-- `∩[A065301(n+1), A238528(n+1)]` -/
def P2288689055304686572.Spec : Prop :=
  ∀ n, (P2288689055304686572.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P9462311536402618064

`∩[A065301(n+1), A394509(n+1)]`
-/

namespace A061351.P9462311536402618064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P9462311536402618064

namespace A061351

/-- `∩[A065301(n+1), A394509(n+1)]` -/
def P9462311536402618064.Spec : Prop :=
  ∀ n, (P9462311536402618064.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P10086978196952108953

`∩[A065301(n+1), A395788(n+1)]`
-/

namespace A061351.P10086978196952108953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P10086978196952108953

namespace A061351

/-- `∩[A065301(n+1), A395788(n+1)]` -/
def P10086978196952108953.Spec : Prop :=
  ∀ n, (P10086978196952108953.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P14767198970485373277

`∩[A111166(n+1), A386424(n+1)]`
-/

namespace A061351.P14767198970485373277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P14767198970485373277

namespace A061351

/-- `∩[A111166(n+1), A386424(n+1)]` -/
def P14767198970485373277.Spec : Prop :=
  ∀ n, (P14767198970485373277.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P100651601807858222

`∩[A124588(n+1), A386424(n+1)]`
-/

namespace A061351.P100651601807858222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P100651601807858222

namespace A061351

/-- `∩[A124588(n+1), A386424(n+1)]` -/
def P100651601807858222.Spec : Prop :=
  ∀ n, (P100651601807858222.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P15462700625348280492

`∩[A238528(n+1), A386424(n+1)]`
-/

namespace A061351.P15462700625348280492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P15462700625348280492

namespace A061351

/-- `∩[A238528(n+1), A386424(n+1)]` -/
def P15462700625348280492.Spec : Prop :=
  ∀ n, (P15462700625348280492.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P3321048688698586503

`∩[A386424(n+1), A394509(n+1)]`
-/

namespace A061351.P3321048688698586503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P3321048688698586503

namespace A061351

/-- `∩[A386424(n+1), A394509(n+1)]` -/
def P3321048688698586503.Spec : Prop :=
  ∀ n, (P3321048688698586503.a n : ℤ) = A061351 n

end A061351

/-! ## A061351.P7673173849587207695

`∩[A065300(n+1), A111166(n+1)]`
-/

namespace A061351.P7673173849587207695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061351.P7673173849587207695

namespace A061351

/-- `∩[A065300(n+1), A111166(n+1)]` -/
def P7673173849587207695.Spec : Prop :=
  ∀ n, (P7673173849587207695.a n : ℤ) = A061351 n

end A061351

/-!
# A061352: First row of array shown below.

The programs for A061352, the canonical program `A061352.P9542745363013868005` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061352 has offset 1).

The definition of A061352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061352.P9542745363013868005

`(∑[n]+C(or(1, n), n))%10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061352

/-- `(∑[n]+C(or(1, n), n))%10` -/
def P9542745363013868005.Spec : Prop :=
  ∀ n, (P9542745363013868005.a n : ℤ) = A061352 (n + 1)

theorem P9542745363013868005.correct : P9542745363013868005.Spec := by
  intro n
  simp only [A061352, Nat.add_sub_cancel]

end A061352

/-!
# A061353: First column of array shown in A061352.

The programs for A061353, the canonical program `A061353.P6419560299056357268` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061353 has offset 1).

The definition of A061353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061353.P6419560299056357268

`∑[(2*n)^(n%2)]%10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061353

/-- `∑[(2*n)^(n%2)]%10` -/
def P6419560299056357268.Spec : Prop :=
  ∀ n, (P6419560299056357268.a n : ℤ) = A061353 (n + 1)

theorem P6419560299056357268.correct : P6419560299056357268.Spec := by
  intro n
  simp only [A061353, Nat.add_sub_cancel]

end A061353

/-!
# A061354: Numerator of Sum_{k=0..n} 1/k!.

The programs for A061354, there is no canonical definition to state claims against.
-/

/-! ## A061354.P2974258783270563027

`A000522(n)/A093101(n)`
-/

namespace A061354.P2974258783270563027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A093101 n : ℚ)

end

end A061354.P2974258783270563027

/-! ## A061354.P4554480416981509975

`n!*∑[1/n!]/gcd(n!*∑[1/n!], n!)`
-/

namespace A061354.P4554480416981509975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) / (Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j))) (Nat.factorial n : ℤ) : ℚ)

end

end A061354.P4554480416981509975

/-! ## A061354.P6559714593077859545

`Δ[A002104(n)]/A093101(n)`
-/

namespace A061354.P6559714593077859545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A093101 n : ℚ)

end

end A061354.P6559714593077859545

/-! ## A061354.P3923173555148576437

`record[A143409(n)]/A093101(n)`
-/

namespace A061354.P3923173555148576437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A093101 n : ℚ)

end

end A061354.P3923173555148576437

/-! ## A061354.P17269970690761849030

`A054091(n+1)/(2*A093101(n))`
-/

namespace A061354.P17269970690761849030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054091 (n + 1) : ℚ) / (2 * A093101 n : ℚ)

end

end A061354.P17269970690761849030

/-! ## A061354.P12604195169949929267

`A143409(A000217(n))/A093101(n)`
-/

namespace A061354.P12604195169949929267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143409 (A000217 n).toNat : ℚ) / (A093101 n : ℚ)

end

end A061354.P12604195169949929267

/-! ## A061354.P6517988572221323376

`A000522(n)/A000142(n)*A061355(n)`
-/

namespace A061354.P6517988572221323376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A000142 n : ℚ) * (A061355 n : ℚ)

end

end A061354.P6517988572221323376

/-!
# A061355: Denominator of Sum_{k=0..n} 1/k!.

The programs for A061355, there is no canonical definition to state claims against.
-/

/-! ## A061355.P11844692693530600336

`n!/gcd(n!*∑[1/n!], n!)`
-/

namespace A061355.P11844692693530600336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (Nat.factorial n : ℤ) : ℚ)

end

end A061355.P11844692693530600336

/-! ## A061355.P885653476565135847

`n!/A093101(n)`
-/

namespace A061355.P885653476565135847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A093101 n : ℚ)

end

end A061355.P885653476565135847

/-! ## A061355.P14646037654244199201

`A000142(n)/A093101(n)`
-/

namespace A061355.P14646037654244199201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A093101 n : ℚ)

end

end A061355.P14646037654244199201

/-! ## A061355.P7518009209562100413

`abs(A133942(n)/A093101(n))`
-/

namespace A061355.P7518009209562100413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133942 n : ℚ) / (A093101 n : ℚ)|

end

end A061355.P7518009209562100413

/-! ## A061355.P3735917473010769335

`Δ[A003422(n)]/A093101(n)`
-/

namespace A061355.P3735917473010769335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A093101 n : ℚ)

end

end A061355.P3735917473010769335

/-! ## A061355.P12833396709315393296

`∏[A028310(n)]/A093101(n)`
-/

namespace A061355.P12833396709315393296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A093101 n : ℚ)

end

end A061355.P12833396709315393296

/-! ## A061355.P3649133433719103616

`A094587(A000124(n))/A093101(n)`
-/

namespace A061355.P3649133433719103616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000124 n).toNat : ℚ) / (A093101 n : ℚ)

end

end A061355.P3649133433719103616

/-! ## A061355.P12288671036125268568

`A094587(A000217(n))/A093101(n)`
-/

namespace A061355.P12288671036125268568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000217 n).toNat : ℚ) / (A093101 n : ℚ)

end

end A061355.P12288671036125268568

/-! ## A061355.P18242383085015756050

`A098361(A000096(n))/A093101(n)`
-/

namespace A061355.P18242383085015756050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (A000096 n).toNat : ℚ) / (A093101 n : ℚ)

end

end A061355.P18242383085015756050

/-!
# A061356: Triangle read by rows: T(n, k) is the number of labeled trees on n nodes with maximal node degree k (0 < k < n).

The programs for A061356, the canonical program `A061356.P733355491249960126` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061356 has offset 2).

The definition of A061356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061356.P1731387888151993428

`A004736(n+1)*A033842(n)`
-/

namespace A061356.P1731387888151993428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A033842 n

end

end A061356.P1731387888151993428

namespace A061356

/-- `A004736(n+1)*A033842(n)` -/
def P1731387888151993428.Spec : Prop :=
  ∀ n, P1731387888151993428.a n = A061356 (n + 2)

end A061356

/-! ## A061356.P7120393447363079715

`A007318(n)*A095888(n+1)`
-/

namespace A061356.P7120393447363079715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A095888 (n + 1)

end

end A061356.P7120393447363079715

namespace A061356

/-- `A007318(n)*A095888(n+1)` -/
def P7120393447363079715.Spec : Prop :=
  ∀ n, P7120393447363079715.a n = A061356 (n + 2)

end A061356

/-! ## A061356.P3225277476940623678

`A201685(n+1)/A233543(n)`
-/

namespace A061356.P3225277476940623678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201685 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A061356.P3225277476940623678

namespace A061356

/-- `A201685(n+1)/A233543(n)` -/
def P3225277476940623678.Spec : Prop :=
  ∀ n, P3225277476940623678.a n = (A061356 (n + 2) : ℚ)

end A061356

/-! ## A061356.P17119358117874557087

`A066324(n+1)/A166350(n+1)`
-/

namespace A061356.P17119358117874557087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A061356.P17119358117874557087

namespace A061356

/-- `A066324(n+1)/A166350(n+1)` -/
def P17119358117874557087.Spec : Prop :=
  ∀ n, P17119358117874557087.a n = (A061356 (n + 2) : ℚ)

end A061356

/-! ## A061356.P6238555767009869860

`A007318(n)*A076112(A038722(n+1))`
-/

namespace A061356.P6238555767009869860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (A038722 (n + 1)).toNat

end

end A061356.P6238555767009869860

namespace A061356

/-- `A007318(n)*A076112(A038722(n+1))` -/
def P6238555767009869860.Spec : Prop :=
  ∀ n, P6238555767009869860.a n = A061356 (n + 2)

end A061356

/-! ## A061356.P13484224906976895219

`A007318(n)*A076112(A061579(n)+1)`
-/

namespace A061356.P13484224906976895219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (A061579 n + 1).toNat

end

end A061356.P13484224906976895219

namespace A061356

/-- `A007318(n)*A076112(A061579(n)+1)` -/
def P13484224906976895219.Spec : Prop :=
  ∀ n, P13484224906976895219.a n = A061356 (n + 2)

end A061356

/-! ## A061356.P733355491249960126

`A058127(A038722(n+1))*A135278(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A061356

/-- `A058127(A038722(n+1))*A135278(n)` -/
def P733355491249960126.Spec : Prop :=
  ∀ n, P733355491249960126.a n = A061356 (n + 2)

theorem P733355491249960126.correct : P733355491249960126.Spec := by
  intro n
  simp only [A061356, Nat.add_sub_cancel]

end A061356

/-! ## A061356.P8875143027333806605

`A002024(n+1)^A025581(n)*A007318(n)`
-/

namespace A061356.P8875143027333806605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A061356.P8875143027333806605

namespace A061356

/-- `A002024(n+1)^A025581(n)*A007318(n)` -/
def P8875143027333806605.Spec : Prop :=
  ∀ n, P8875143027333806605.a n = (A061356 (n + 2) : ℚ)

end A061356

/-! ## A061356.P5940489965309069074

`A248665(n+1)/A248670(n+1)*A007318(n)`
-/

namespace A061356.P5940489965309069074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248665 (n + 1) : ℚ) / (A248670 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A061356.P5940489965309069074

namespace A061356

/-- `A248665(n+1)/A248670(n+1)*A007318(n)` -/
def P5940489965309069074.Spec : Prop :=
  ∀ n, P5940489965309069074.a n = (A061356 (n + 2) : ℚ)

end A061356

/-! ## A061356.P3513151300859866437

`A206429(n+2)/A003057(n+2)`
-/

namespace A061356.P3513151300859866437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206429 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A061356.P3513151300859866437

namespace A061356

/-- `A206429(n+2)/A003057(n+2)` -/
def P3513151300859866437.Spec : Prop :=
  ∀ n, P3513151300859866437.a n = (A061356 (n + 2) : ℚ)

end A061356

/-!
# A061357: Number of 0

The programs for A061357, there is no canonical definition to state claims against.
-/

/-! ## A061357.P8691350643323572907

`A045917(n+1)-A010051(n+1)`
-/

namespace A061357.P8691350643323572907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A010051 (n + 1)

end

end A061357.P8691350643323572907

/-! ## A061357.P14372913318995718823

`floor(A002372(n+1)/2)`
-/

namespace A061357.P14372913318995718823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002372 (n + 1) : ℚ) / 2⌋

end

end A061357.P14372913318995718823

/-! ## A061357.P9730048226673121437

`floor(A035026(n+1)/2)`
-/

namespace A061357.P9730048226673121437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035026 (n + 1) : ℚ) / 2⌋

end

end A061357.P9730048226673121437

/-! ## A061357.P559243072129202070

`A154787(n+1)/(n+1)`
-/

namespace A061357.P559243072129202070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154787 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061357.P559243072129202070

/-! ## A061357.P6129128713896775307

`A154786(n+1)%Δ[n²]`
-/

namespace A061357.P6129128713896775307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154786 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A061357.P6129128713896775307

/-! ## A061357.P2344007787331873148

`A004526(A002372(n+1))`
-/

namespace A061357.P2344007787331873148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002372 (n + 1)).toNat

end

end A061357.P2344007787331873148

/-! ## A061357.P13791777156845700233

`A004526(A035026(n+1))`
-/

namespace A061357.P13791777156845700233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035026 (n + 1)).toNat

end

end A061357.P13791777156845700233

/-! ## A061357.P14093519480844049345

`A154804(n+1)-A101264(n)`
-/

namespace A061357.P14093519480844049345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1) - A101264 n

end

end A061357.P14093519480844049345

/-! ## A061357.P10779598519345897765

`A154786(n+1)/A103517(n)`
-/

namespace A061357.P10779598519345897765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154786 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A061357.P10779598519345897765

/-! ## A061357.P2998577568669181520

`A154787(n+1)%A028310(n)`
-/

namespace A061357.P2998577568669181520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154787 (n + 1)) (A028310 n)

end

end A061357.P2998577568669181520

/-! ## A061357.P458926976190088627

`A110654(A002372(n+1)+1)-1`
-/

namespace A061357.P458926976190088627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1) + 1).toNat - 1

end

end A061357.P458926976190088627

/-! ## A061357.P15606330644200172897

`A110654(A035026(n+1)+1)-1`
-/

namespace A061357.P15606330644200172897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035026 (n + 1) + 1).toNat - 1

end

end A061357.P15606330644200172897

/-! ## A061357.P1961933871404100330

`A279794(n+1)+A279792(n+1)`
-/

namespace A061357.P1961933871404100330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279794 (n + 1) + A279792 (n + 1)

end

end A061357.P1961933871404100330

/-! ## A061357.P2208938471878466662

`A002372(n+1)-A002375(n+1)`
-/

namespace A061357.P2208938471878466662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A002375 (n + 1)

end

end A061357.P2208938471878466662

/-! ## A061357.P14100941788045483595

`A035026(n+1)-A045917(n+1)`
-/

namespace A061357.P14100941788045483595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - A045917 (n + 1)

end

end A061357.P14100941788045483595

/-! ## A061357.P971486937469379441

`A014684(n+1)-A227065(n+1)`
-/

namespace A061357.P971486937469379441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - A227065 (n + 1)

end

end A061357.P971486937469379441

/-! ## A061357.P3707569832690785239

`A154786(n+1)/A005843(n+1)`
-/

namespace A061357.P3707569832690785239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154786 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A061357.P3707569832690785239

/-! ## A061357.P13645434552615688317

`A113523(n+1)%A227065(n+1)`
-/

namespace A061357.P13645434552615688317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113523 (n + 1)) (A227065 (n + 1))

end

end A061357.P13645434552615688317

/-! ## A061357.P1852998636371710663

`floor((A099801(n)-A291564(n+1))/2)`
-/

namespace A061357.P1852998636371710663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099801 n - A291564 (n + 1) : ℚ) / 2⌋

end

end A061357.P1852998636371710663

/-! ## A061357.P3488704623125630168

`A045917(n+1)-A064911(2*(n+1))`
-/

namespace A061357.P3488704623125630168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A064911 (2 * (n + 1))

end

end A061357.P3488704623125630168

/-!
# A061358: Number of ways of writing n = p+q with p, q primes and p >= q.

The programs for A061358, there is no canonical definition to state claims against.
-/

/-! ## A061358.P5764152250121820125

`A269801(n)/(n+2)`
-/

namespace A061358.P5764152250121820125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269801 n : ℚ) / (n + 2 : ℚ)

end

end A061358.P5764152250121820125

/-! ## A061358.P11196679820931795630

`A161912(n)-A162197(n)`
-/

namespace A061358.P11196679820931795630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n - A162197 n

end

end A061358.P11196679820931795630

/-! ## A061358.P8675820059423031044

`A269801(n)%A030640(n)`
-/

namespace A061358.P8675820059423031044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269801 n) (A030640 n)

end

end A061358.P8675820059423031044

/-! ## A061358.P10032162364564745482

`round((A098983(n)-A282318(n))/2)`
-/

namespace A061358.P10032162364564745482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098983 n - A282318 n : ℚ) / 2)

end

end A061358.P10032162364564745482

/-! ## A061358.P3188185931816681390

`A068307(n+2)-A007963(∑[n]%(n+1))`
-/

namespace A061358.P3188185931816681390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 2) - A007963 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A061358.P3188185931816681390

/-! ## A061358.P18407060470387181169

`A110654(A098983(n)-A282318(n))`
-/

namespace A061358.P18407060470387181169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098983 n - A282318 n).toNat

end

end A061358.P18407060470387181169

/-! ## A061358.P11221720954149130481

`A110654(A073610(gcd(n, A008706(n))))`
-/

namespace A061358.P11221720954149130481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A073610 (Int.gcd (n : ℤ) (A008706 n))).toNat

end

end A061358.P11221720954149130481

/-! ## A061358.P11916089780722694211

`A004526(A098983(n)+1-A282318(n))`
-/

namespace A061358.P11916089780722694211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098983 n + (1 - A282318 n)).toNat

end

end A061358.P11916089780722694211

/-! ## A061358.P1765737015942091499

`A004526(1-(A282318(n)-A098983(n)))`
-/

namespace A061358.P1765737015942091499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - (A282318 n - A098983 n)).toNat

end

end A061358.P1765737015942091499

/-! ## A061358.P18407884779984858311

`A040976(n+1)-(A162197(n)+A006218(n))`
-/

namespace A061358.P18407884779984858311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (A162197 n + A006218 n)

end

end A061358.P18407884779984858311

/-! ## A061358.P4236244555194811797

`A110654(A073610(A233583(n+1)))`
-/

namespace A061358.P4236244555194811797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A073610 (A233583 (n + 1)).toNat).toNat

end

end A061358.P4236244555194811797

/-!
# A061359: a(1) = 1; a(n) = least number such that the concatenation a(n)a(n-1)...a(2)a(1) is a square.

The programs for A061359, there is no canonical definition to state claims against.
-/

/-! ## A061359.P16061898482228069473

`A065691(n+2)^ceil(sin(n)²)`
-/

namespace A061359.P16061898482228069473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065691 (n + 2) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A061359.P16061898482228069473

/-!
# A061362: Numbers in which each nonzero digit divides the number formed by the rest, i.e., the number obtained by just removing this digit.

The programs for A061362, there is no canonical definition to state claims against.
-/

/-! ## A061362.P6411238706444157891

`∩[A373117(n+1), A084383(n)]`
-/

namespace A061362.P6411238706444157891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061362.P6411238706444157891

/-! ## A061362.P5146867305217512232

`∩[A373117(n+1), A179239(n)]`
-/

namespace A061362.P5146867305217512232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061362.P5146867305217512232

/-! ## A061362.P16528186612295283661

`A373117(n+1)%A102185(n+1)`
-/

namespace A061362.P16528186612295283661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373117 (n + 1)) (A102185 (n + 1))

end

end A061362.P16528186612295283661

/-! ## A061362.P13008084955705953420

`∩[A124695(n+1), A373117(n+1)]`
-/

namespace A061362.P13008084955705953420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061362.P13008084955705953420

/-!
# A061365: Numbers k such that either k or its reversal (but not both) is prime.

The programs for A061365, there is no canonical definition to state claims against.
-/

/-! ## A061365.P2424568438279760148

`∪[A076055(n+1), A076056(n+1)]`
-/

namespace A061365.P2424568438279760148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061365.P2424568438279760148

/-!
# A061367: Composite n such that sigma(n)-phi(n) divides sigma(n)+phi(n).

The programs for A061367, there is no canonical definition to state claims against.
-/

/-! ## A061367.P8217831272936091247

`A142591(n+1)-A328221(A184974(n))`
-/

namespace A061367.P8217831272936091247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142591 (n + 1) - A328221 (A184974 n).toNat

end

end A061367.P8217831272936091247

/-! ## A061367.P4366398494606843904

`A070161(A032555(n+1))`
-/

namespace A061367.P4366398494606843904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (A032555 (n + 1)).toNat

end

end A061367.P4366398494606843904

/-! ## A061367.P7940583757990798747

`A070161(A032559(n+1))`
-/

namespace A061367.P7940583757990798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (A032559 (n + 1)).toNat

end

end A061367.P7940583757990798747

/-! ## A061367.P11540679145807842780

`A070161(A077739(n+1))`
-/

namespace A061367.P11540679145807842780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (A077739 (n + 1)).toNat

end

end A061367.P11540679145807842780

/-! ## A061367.P6177072724813566272

`A070161(A078213(n+1))`
-/

namespace A061367.P6177072724813566272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (A078213 (n + 1)).toNat

end

end A061367.P6177072724813566272

/-!
# A061368: Lesser of twin primes (p, p+2) whose average p+1 is not squarefree.

The programs for A061368, the canonical program `A061368.P10250961159884053711` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061368 has offset 1).

The definition of A061368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061368.P18126605486488182690

`∩[A001359(n+1), A061400(n+1)]`
-/

namespace A061368.P18126605486488182690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P18126605486488182690

namespace A061368

/-- `∩[A001359(n+1), A061400(n+1)]` -/
def P18126605486488182690.Spec : Prop :=
  ∀ n, (P18126605486488182690.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P8272627832006014886

`∩[A054799(n+1), A061400(n+1)]`
-/

namespace A061368.P8272627832006014886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P8272627832006014886

namespace A061368

/-- `∩[A054799(n+1), A061400(n+1)]` -/
def P8272627832006014886.Spec : Prop :=
  ∀ n, (P8272627832006014886.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P295350258639280063

`∩[A061400(n+1), A063700(n+1)]`
-/

namespace A061368.P295350258639280063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P295350258639280063

namespace A061368

/-- `∩[A061400(n+1), A063700(n+1)]` -/
def P295350258639280063.Spec : Prop :=
  ∀ n, (P295350258639280063.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P12397502386755566569

`∩[A061400(n+1), A063693(n+1)]`
-/

namespace A061368.P12397502386755566569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P12397502386755566569

namespace A061368

/-- `∩[A061400(n+1), A063693(n+1)]` -/
def P12397502386755566569.Spec : Prop :=
  ∀ n, (P12397502386755566569.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P11547252473869202718

`∩[A061400(n+1), A280590(n+1)]`
-/

namespace A061368.P11547252473869202718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P11547252473869202718

namespace A061368

/-- `∩[A061400(n+1), A280590(n+1)]` -/
def P11547252473869202718.Spec : Prop :=
  ∀ n, (P11547252473869202718.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P10250961159884053711

`p?[A112928(n+1)-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A061368

/-- `p?[A112928(n+1)-2]` -/
def P10250961159884053711.Spec : Prop :=
  ∀ n, P10250961159884053711.a n = A061368 (n + 1)

theorem P10250961159884053711.correct : P10250961159884053711.Spec := by
  intro n
  simp only [A061368, Nat.add_sub_cancel]

end A061368

/-! ## A061368.P3824579552483488747

`∩[A001838(n+1), A061400(n+1)]`
-/

namespace A061368.P3824579552483488747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P3824579552483488747

namespace A061368

/-- `∩[A001838(n+1), A061400(n+1)]` -/
def P3824579552483488747.Spec : Prop :=
  ∀ n, (P3824579552483488747.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P1917203930397851360

`∩[A061400(n+1), A274212(n+1)]`
-/

namespace A061368.P1917203930397851360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P1917203930397851360

namespace A061368

/-- `∩[A061400(n+1), A274212(n+1)]` -/
def P1917203930397851360.Spec : Prop :=
  ∀ n, (P1917203930397851360.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P10585658498160081808

`p?[A145199(n+1)-1]`
-/

namespace A061368.P10585658498160081808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145199 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061368.P10585658498160081808

namespace A061368

/-- `p?[A145199(n+1)-1]` -/
def P10585658498160081808.Spec : Prop :=
  ∀ n, P10585658498160081808.a n = A061368 (n + 1)

end A061368

/-! ## A061368.P10074913405123889470

`p?[A049092(n+1)-2]`
-/

namespace A061368.P10074913405123889470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061368.P10074913405123889470

namespace A061368

/-- `p?[A049092(n+1)-2]` -/
def P10074913405123889470.Spec : Prop :=
  ∀ n, P10074913405123889470.a n = A061368 (n + 1)

end A061368

/-! ## A061368.P513436297421650959

`p?[abs(2-p?[A013929(n+1)+1])]`
-/

namespace A061368.P513436297421650959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061368.P513436297421650959

namespace A061368

/-- `p?[abs(2-p?[A013929(n+1)+1])]` -/
def P513436297421650959.Spec : Prop :=
  ∀ n, P513436297421650959.a n = A061368 (n + 1)

end A061368

/-! ## A061368.P4892041629147046048

`p?[A049098(n+1)+2]-2`
-/

namespace A061368.P4892041629147046048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A061368.P4892041629147046048

namespace A061368

/-- `p?[A049098(n+1)+2]-2` -/
def P4892041629147046048.Spec : Prop :=
  ∀ n, P4892041629147046048.a n = A061368 (n + 1)

end A061368

/-! ## A061368.P16309705396102280026

`∩[A001359(n+1), A049098(n+1)]`
-/

namespace A061368.P16309705396102280026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P16309705396102280026

namespace A061368

/-- `∩[A001359(n+1), A049098(n+1)]` -/
def P16309705396102280026.Spec : Prop :=
  ∀ n, (P16309705396102280026.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P6884224061681137268

`∩[A001838(n+1), A049098(n+1)]`
-/

namespace A061368.P6884224061681137268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P6884224061681137268

namespace A061368

/-- `∩[A001838(n+1), A049098(n+1)]` -/
def P6884224061681137268.Spec : Prop :=
  ∀ n, (P6884224061681137268.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P1550332595828446865

`∩[A049098(n+1), A054799(n+1)]`
-/

namespace A061368.P1550332595828446865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P1550332595828446865

namespace A061368

/-- `∩[A049098(n+1), A054799(n+1)]` -/
def P1550332595828446865.Spec : Prop :=
  ∀ n, (P1550332595828446865.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P9554650281652256207

`∩[A049098(n+1), A063693(n+1)]`
-/

namespace A061368.P9554650281652256207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P9554650281652256207

namespace A061368

/-- `∩[A049098(n+1), A063693(n+1)]` -/
def P9554650281652256207.Spec : Prop :=
  ∀ n, (P9554650281652256207.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P17586698515376110629

`∩[A049098(n+1), A063700(n+1)]`
-/

namespace A061368.P17586698515376110629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P17586698515376110629

namespace A061368

/-- `∩[A049098(n+1), A063700(n+1)]` -/
def P17586698515376110629.Spec : Prop :=
  ∀ n, (P17586698515376110629.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P496479555435711718

`∩[A049098(n+1), A073534(n+1)]`
-/

namespace A061368.P496479555435711718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P496479555435711718

namespace A061368

/-- `∩[A049098(n+1), A073534(n+1)]` -/
def P496479555435711718.Spec : Prop :=
  ∀ n, (P496479555435711718.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P6322479886837419786

`∩[A049098(n+1), A124588(n+1)]`
-/

namespace A061368.P6322479886837419786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P6322479886837419786

namespace A061368

/-- `∩[A049098(n+1), A124588(n+1)]` -/
def P6322479886837419786.Spec : Prop :=
  ∀ n, (P6322479886837419786.a n : ℤ) = A061368 (n + 1)

end A061368

/-! ## A061368.P16141131660905740333

`∩[A049098(n+1), A274212(n+1)]`
-/

namespace A061368.P16141131660905740333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061368.P16141131660905740333

namespace A061368

/-- `∩[A049098(n+1), A274212(n+1)]` -/
def P16141131660905740333.Spec : Prop :=
  ∀ n, (P16141131660905740333.a n : ℤ) = A061368 (n + 1)

end A061368

/-!
# A061369: a(n) = smallest square in the arithmetic progression {n*k+1 : k > 0}.

The programs for A061369, there is no canonical definition to state claims against.
-/

/-! ## A061369.P16649074915481760900

`A215653(n+1)²`
-/

namespace A061369.P16649074915481760900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (n + 1) ^ 2

end

end A061369.P16649074915481760900

/-! ## A061369.P997210687589006230

`1+(n+1)*A076942(n+1)`
-/

namespace A061369.P997210687589006230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (n + 1 : ℤ) * A076942 (n + 1)

end

end A061369.P997210687589006230

/-! ## A061369.P9119806543247120510

`(A070667(n+1)+C(2, n²))²`
-/

namespace A061369.P9119806543247120510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070667 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)) ^ 2

end

end A061369.P9119806543247120510

/-! ## A061369.P7465377932594442498

`(A130706(n)+A070667(n+1))²`
-/

namespace A061369.P7465377932594442498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130706 n + A070667 (n + 1)) ^ 2

end

end A061369.P7465377932594442498

/-! ## A061369.P6597055659653982183

`A215653(n+1)^A020639(2*(n+1))`
-/

namespace A061369.P6597055659653982183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A061369.P6597055659653982183

/-! ## A061369.P17192180950033512977

`A215653(n+1)^A000032(C(n, n+2))`
-/

namespace A061369.P17192180950033512977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) : ℚ) ^ (A000032 (Nat.choose n (n + 2)) : ℤ)

end

end A061369.P17192180950033512977

/-! ## A061369.P5233514456864586440

`(gcd(6, A000040(n+1))*A070667(n+1))²`
-/

namespace A061369.P5233514456864586440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd 6 (A000040 (n + 1)) : ℤ) * A070667 (n + 1)) ^ 2

end

end A061369.P5233514456864586440

/-! ## A061369.P3193053099416378383

`A215653(n+1)^gcd(2, 2*A000010(n+1))`
-/

namespace A061369.P3193053099416378383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (n + 1) ^ Int.gcd 2 (2 * A000010 (n + 1))

end

end A061369.P3193053099416378383

/-! ## A061369.P9944525726472148098

`A215653(A000027(n+1))*A215653(n+1)`
-/

namespace A061369.P9944525726472148098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (A000027 (n + 1)).toNat * A215653 (n + 1)

end

end A061369.P9944525726472148098

/-! ## A061369.P9928919799233480440

`A215653(n+1)^A000040(A000041(C(2, n+2)))`
-/

namespace A061369.P9928919799233480440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) : ℚ) ^ (A000040 (A000041 (Nat.choose 2 (n + 2))).toNat : ℤ)

end

end A061369.P9928919799233480440

/-! ## A061369.P12535791350493970812

`(A070667(n+1)+A000122(A280873(n)))²`
-/

namespace A061369.P12535791350493970812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070667 (n + 1) + A000122 (A280873 n).toNat) ^ 2

end

end A061369.P12535791350493970812

/-! ## A061369.P6330108823984115058

`A215653(n+1)^A000040(A007318(∑[n+1]))`
-/

namespace A061369.P6330108823984115058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A061369.P6330108823984115058

/-!
# A061370: a(n) = floor(ratio of product and sum of first n numbers).

The programs for A061370, the canonical program `A061370.P18025267300316120639` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061370 has offset 1).

The definition of A061370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061370.P18025267300316120639

`floor(2*n!/(n+2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061370

/-- `floor(2*n!/(n+2))` -/
def P18025267300316120639.Spec : Prop :=
  ∀ n, P18025267300316120639.a n = A061370 (n + 1)

theorem P18025267300316120639.correct : P18025267300316120639.Spec := by
  intro n
  simp only [A061370, Nat.add_sub_cancel]

end A061370

/-! ## A061370.P16736719644580969950

`floor(A090586(n+1)/A090585(n+1))`
-/

namespace A061370.P16736719644580969950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090586 (n + 1) : ℚ) / (A090585 (n + 1) : ℚ)⌋

end

end A061370.P16736719644580969950

namespace A061370

/-- `floor(A090586(n+1)/A090585(n+1))` -/
def P16736719644580969950.Spec : Prop :=
  ∀ n, P16736719644580969950.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P5037253231142316017

`floor(n!/(n/2+1))`
-/

namespace A061370.P5037253231142316017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℚ) / ((n : ℚ) / 2 + 1)⌋

end

end A061370.P5037253231142316017

namespace A061370

/-- `floor(n!/(n/2+1))` -/
def P5037253231142316017.Spec : Prop :=
  ∀ n, P5037253231142316017.a n = A061370 (n + 1)

theorem P5037253231142316017.correct : P5037253231142316017.Spec := by
  intro n
  simp only [A061370, Nat.add_sub_cancel, A061370.P5037253231142316017.a, A061370.P18025267300316120639.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A061370

/-! ## A061370.P7493392995723173083

`round(2/(n+2)*n!)-char[1]`
-/

namespace A061370.P7493392995723173083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (n + 2 : ℚ) * (Nat.factorial n : ℚ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A061370.P7493392995723173083

namespace A061370

/-- `round(2/(n+2)*n!)-char[1]` -/
def P7493392995723173083.Spec : Prop :=
  ∀ n, P7493392995723173083.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P441384116607592047

`floor(A208529(n+2)/(n+2))`
-/

namespace A061370.P441384116607592047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208529 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A061370.P441384116607592047

namespace A061370

/-- `floor(A208529(n+2)/(n+2))` -/
def P441384116607592047.Spec : Prop :=
  ∀ n, P441384116607592047.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P2765637806212224616

`floor(2*A000142(n)/(n+2))`
-/

namespace A061370.P2765637806212224616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A000142 n : ℚ) / (n + 2 : ℚ)⌋

end

end A061370.P2765637806212224616

namespace A061370

/-- `floor(2*A000142(n)/(n+2))` -/
def P2765637806212224616.Spec : Prop :=
  ∀ n, P2765637806212224616.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P5100523410797998196

`floor(∏[n+1]/∑[n+1])`
-/

namespace A061370.P5100523410797998196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A061370.P5100523410797998196

namespace A061370

/-- `floor(∏[n+1]/∑[n+1])` -/
def P5100523410797998196.Spec : Prop :=
  ∀ n, P5100523410797998196.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P15859075805565068790

`round(((n+1)!-n)/∑[n+1])`
-/

namespace A061370.P15859075805565068790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.factorial (n + 1) : ℤ) - (n : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A061370.P15859075805565068790

namespace A061370

/-- `round(((n+1)!-n)/∑[n+1])` -/
def P15859075805565068790.Spec : Prop :=
  ∀ n, P15859075805565068790.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P14638955742733053652

`ceil(((n+1)!-2*n)/∑[n+1])`
-/

namespace A061370.P14638955742733053652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial (n + 1) : ℤ) - (2 * n : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A061370.P14638955742733053652

namespace A061370

/-- `ceil(((n+1)!-2*n)/∑[n+1])` -/
def P14638955742733053652.Spec : Prop :=
  ∀ n, P14638955742733053652.a n = A061370 (n + 1)

end A061370

/-! ## A061370.P10634903511881866925

`(A000142(n+1)-A119690(n+1))/A000217(n+1)`
-/

namespace A061370.P10634903511881866925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A119690 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A061370.P10634903511881866925

namespace A061370

/-- `(A000142(n+1)-A119690(n+1))/A000217(n+1)` -/
def P10634903511881866925.Spec : Prop :=
  ∀ n, P10634903511881866925.a n = (A061370 (n + 1) : ℚ)

end A061370

/-!
# A061371: Composite numbers with all prime digits.

The programs for A061371, there is no canonical definition to state claims against.
-/

/-! ## A061371.P14614573411396662278

`filter[A046034(n+1), A005171(#)]`
-/

namespace A061371.P14614573411396662278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A061371.P14614573411396662278

/-! ## A061371.P9273691372544261219

`filter[A046034(n+1), A066247(#)]`
-/

namespace A061371.P9273691372544261219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A061371.P9273691372544261219

/-! ## A061371.P15139372920855581630

`∩[A046034(n+1), A066737(n+1)]`
-/

namespace A061371.P15139372920855581630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P15139372920855581630

/-! ## A061371.P15325702158821143622

`∩[A046034(n+1), A154390(n+1)]`
-/

namespace A061371.P15325702158821143622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P15325702158821143622

/-! ## A061371.P10080632910224596393

`∩[A154390(n+1), A365472(n+1)]`
-/

namespace A061371.P10080632910224596393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P10080632910224596393

/-! ## A061371.P17504071159777469283

`∩[A046034(n+1), A158190(n+1)]`
-/

namespace A061371.P17504071159777469283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P17504071159777469283

/-! ## A061371.P6644020224797095989

`∩[A158190(n+1), A365472(n+1)]`
-/

namespace A061371.P6644020224797095989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P6644020224797095989

/-! ## A061371.P1490400235906799210

`eq[A055671(n), A276729(n)]`
-/

namespace A061371.P1490400235906799210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061371.P1490400235906799210

/-! ## A061371.P2689475991807107175

`eq[A055672(n), A276729(n)]`
-/

namespace A061371.P2689475991807107175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061371.P2689475991807107175

/-! ## A061371.P9596054158756694606

`record[A191558(A046034(n+5))]`
-/

namespace A061371.P9596054158756694606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A046034 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061371.P9596054158756694606

/-! ## A061371.P6289272907867857056

`eq[atan(A339579(n+1)), A276729(n)]`
-/

namespace A061371.P6289272907867857056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A339579 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A061371.P6289272907867857056

/-! ## A061371.P12466423568014748756

`∩[A002808(n+1), A046034(n+1)]`
-/

namespace A061371.P12466423568014748756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P12466423568014748756

/-! ## A061371.P7604406208584272569

`∩[A018252(n+1), A046034(n+1)]`
-/

namespace A061371.P7604406208584272569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P7604406208584272569

/-! ## A061371.P5218386855981934112

`∩[A046034(n+1), A056653(n+1)]`
-/

namespace A061371.P5218386855981934112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P5218386855981934112

/-! ## A061371.P13340601337279880001

`∩[A046034(n+1), A062973(n+1)]`
-/

namespace A061371.P13340601337279880001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P13340601337279880001

/-! ## A061371.P4752102917384247922

`∩[A046034(n+1), A117815(n+1)]`
-/

namespace A061371.P4752102917384247922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P4752102917384247922

/-! ## A061371.P14131460734900514548

`∩[A046034(n+1), A141468(n+1)]`
-/

namespace A061371.P14131460734900514548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P14131460734900514548

/-! ## A061371.P14517979447067290418

`∩[A046034(n+1), A259315(n+1)]`
-/

namespace A061371.P14517979447067290418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P14517979447067290418

/-! ## A061371.P15973161408753361492

`∩[A117815(n+1), A365472(n+1)]`
-/

namespace A061371.P15973161408753361492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061371.P15973161408753361492

/-! ## A061371.P14505191813564696267

`eq[A049084(A028310(n)), A276729(n)]`
-/

namespace A061371.P14505191813564696267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061371.P14505191813564696267

/-!
# A061372: Primes having only 0,4,6,8,9 as digits.

The programs for A061372, there is no canonical definition to state claims against.
-/

/-! ## A061372.P8988728813121162769

`p?[A001744(n+1)]`
-/

namespace A061372.P8988728813121162769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061372.P8988728813121162769

/-! ## A061372.P12544582558685510495

`record[p?[A001744(A291769(n))]]`
-/

namespace A061372.P12544582558685510495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061372.P12544582558685510495

/-! ## A061372.P15134348056498094446

`record[p?[A001744(A324343(n))]]`
-/

namespace A061372.P15134348056498094446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061372.P15134348056498094446

/-! ## A061372.P10319255730678105881

`record[p?[A001744(A324344(n))]]`
-/

namespace A061372.P10319255730678105881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061372.P10319255730678105881

/-! ## A061372.P8564553670511806434

`∩[A001744(n+1), A034844(n+1)]`
-/

namespace A061372.P8564553670511806434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P8564553670511806434

/-! ## A061372.P11124397721179434274

`∩[A001744(n+1), A152312(n+1)]`
-/

namespace A061372.P11124397721179434274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P11124397721179434274

/-! ## A061372.P2601983768737540572

`∩[A001744(n+1), A342961(n+1)]`
-/

namespace A061372.P2601983768737540572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P2601983768737540572

/-! ## A061372.P13110913231932832267

`∩[A001744(n+1), A386329(n+1)]`
-/

namespace A061372.P13110913231932832267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P13110913231932832267

/-! ## A061372.P5388529903874827394

`∩[A034844(n+1), A386329(n+1)]`
-/

namespace A061372.P5388529903874827394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P5388529903874827394

/-! ## A061372.P16015530014636505522

`∩[A001744(n+1), A386342(n+1)]`
-/

namespace A061372.P16015530014636505522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P16015530014636505522

/-! ## A061372.P2225894276699699910

`∩[A001744(n+1), A386333(n+1)]`
-/

namespace A061372.P2225894276699699910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P2225894276699699910

/-! ## A061372.P4918568251901239390

`∩[A034844(n+1), A386333(n+1)]`
-/

namespace A061372.P4918568251901239390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P4918568251901239390

/-! ## A061372.P2651921375148942641

`∩[A001744(n+1), A386328(n+1)]`
-/

namespace A061372.P2651921375148942641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P2651921375148942641

/-! ## A061372.P7523255002708517477

`∩[A034844(n+1), A386328(n+1)]`
-/

namespace A061372.P7523255002708517477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P7523255002708517477

/-! ## A061372.P3979407726585206877

`∩[A152312(n+1), A386328(n+1)]`
-/

namespace A061372.P3979407726585206877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P3979407726585206877

/-! ## A061372.P13637223994887032179

`∩[A001744(n+1), A386335(n+1)]`
-/

namespace A061372.P13637223994887032179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P13637223994887032179

/-! ## A061372.P17220733451189848409

`∩[A001744(n+1), A386331(n+1)]`
-/

namespace A061372.P17220733451189848409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P17220733451189848409

/-! ## A061372.P7991576489274758932

`∩[A034844(n+1), A386331(n+1)]`
-/

namespace A061372.P7991576489274758932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P7991576489274758932

/-! ## A061372.P3039842567677173273

`∩[A001744(n+1), A329760(n+1)]`
-/

namespace A061372.P3039842567677173273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P3039842567677173273

/-! ## A061372.P14728288098932581757

`∩[A001744(n+1), A380906(n+1)]`
-/

namespace A061372.P14728288098932581757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061372.P14728288098932581757

/-!
# A061373: "Natural" logarithm, defined inductively by a(1)=1, a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if n, m>1.

The programs for A061373, the canonical program `A061373.P17835350724076642860` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061373 has offset 1).

The definition of A061373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061373.P17835350724076642860

`A064097(n+1)+A054725(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A061373

/-- `A064097(n+1)+A054725(n+1)` -/
def P17835350724076642860.Spec : Prop :=
  ∀ n, P17835350724076642860.a n = A061373 (n + 1)

theorem P17835350724076642860.correct : P17835350724076642860.Spec := by
  intro n
  simp only [A061373, Nat.add_sub_cancel]

end A061373

/-! ## A061373.P12199740265134911425

`A054725(n+1)+∑[A334090(n+1)]`
-/

namespace A061373.P12199740265134911425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061373.P12199740265134911425

namespace A061373

/-- `A054725(n+1)+∑[A334090(n+1)]` -/
def P12199740265134911425.Spec : Prop :=
  ∀ n, P12199740265134911425.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P8772403075175049042

`A054725(n+1)+A329697(n+1)+A064415(n+1)`
-/

namespace A061373.P8772403075175049042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + (A329697 (n + 1) + A064415 (n + 1))

end

end A061373.P8772403075175049042

namespace A061373

/-- `A054725(n+1)+A329697(n+1)+A064415(n+1)` -/
def P8772403075175049042.Spec : Prop :=
  ∀ n, P8772403075175049042.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P4125360349927385747

`A003434(n+1)+(1-n)%2+A076142(n+1)+A003313(n+1)`
-/

namespace A061373.P4125360349927385747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + Int.tmod (1 - (n : ℤ)) 2 + (A076142 (n + 1) + A003313 (n + 1))

end

end A061373.P4125360349927385747

namespace A061373

/-- `A003434(n+1)+(1-n)%2+A076142(n+1)+A003313(n+1)` -/
def P4125360349927385747.Spec : Prop :=
  ∀ n, P4125360349927385747.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P13961956594008068311

`A054725(n+1)+A064415(n+1)+A334861(n+1)-A331410(n+1)`
-/

namespace A061373.P13961956594008068311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1) + (A064415 (n + 1) + (A334861 (n + 1) - A331410 (n + 1)))

end

end A061373.P13961956594008068311

namespace A061373

/-- `A054725(n+1)+A064415(n+1)+A334861(n+1)-A331410(n+1)` -/
def P13961956594008068311.Spec : Prop :=
  ∀ n, P13961956594008068311.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P2989844147754277641

`A064097(n+1)+1+A003434(A010554(2*(n+1)))`
-/

namespace A061373.P2989844147754277641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + 1 + A003434 (A010554 (2 * (n + 1))).toNat

end

end A061373.P2989844147754277641

namespace A061373

/-- `A064097(n+1)+1+A003434(A010554(2*(n+1)))` -/
def P2989844147754277641.Spec : Prop :=
  ∀ n, P2989844147754277641.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P14055993267254727956

`A064097(n+1)+1+A003434(A049099(4*(n+1)))`
-/

namespace A061373.P14055993267254727956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + 1 + A003434 (A049099 (4 * (n + 1))).toNat

end

end A061373.P14055993267254727956

namespace A061373

/-- `A064097(n+1)+1+A003434(A049099(4*(n+1)))` -/
def P14055993267254727956.Spec : Prop :=
  ∀ n, P14055993267254727956.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P5309910255260511558

`A064415(A007755(A064097(n+1)+2))+A064415(n+1)`
-/

namespace A061373.P5309910255260511558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A007755 (A064097 (n + 1) + 2).toNat).toNat + A064415 (n + 1)

end

end A061373.P5309910255260511558

namespace A061373

/-- `A064415(A007755(A064097(n+1)+2))+A064415(n+1)` -/
def P5309910255260511558.Spec : Prop :=
  ∀ n, P5309910255260511558.a n = A061373 (n + 1)

end A061373

/-! ## A061373.P17903257139116342090

`A329697(n+1)+A054725((n+1)²)`
-/

namespace A061373.P17903257139116342090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + A054725 ((n + 1) ^ 2)

end

end A061373.P17903257139116342090

namespace A061373

/-- `A329697(n+1)+A054725((n+1)²)` -/
def P17903257139116342090.Spec : Prop :=
  ∀ n, P17903257139116342090.a n = A061373 (n + 1)

end A061373

/-!
# A061375: Integer part of geometric mean of first n positive integers.

The programs for A061375, the canonical program `A061375.P16378304523304927012` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061375 has offset 1).

The definition of A061375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061375.P16378304523304927012

`floor(exp(∑[log(n+1)]/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061375

/-- `floor(exp(∑[log(n+1)]/(n+1)))` -/
def P16378304523304927012.Spec : Prop :=
  ∀ n, P16378304523304927012.a n = A061375 (n + 1)

theorem P16378304523304927012.correct : P16378304523304927012.Spec := by
  intro n
  simp only [A061375, Nat.add_sub_cancel]

end A061375

/-! ## A061375.P10458563452766799052

`A028310(A214046(n+1)-1)`
-/

namespace A061375.P10458563452766799052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A214046 (n + 1) - 1).toNat

end

end A061375.P10458563452766799052

namespace A061375

/-- `A028310(A214046(n+1)-1)` -/
def P10458563452766799052.Spec : Prop :=
  ∀ n, P10458563452766799052.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P8544356025054429578

`A214046(n+1)+A057428(n)`
-/

namespace A061375.P8544356025054429578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) + A057428 n

end

end A061375.P8544356025054429578

namespace A061375

/-- `A214046(n+1)+A057428(n)` -/
def P8544356025054429578.Spec : Prop :=
  ∀ n, P8544356025054429578.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P15891426084275321862

`A214046(n+1)-A057427(n)`
-/

namespace A061375.P15891426084275321862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - A057427 n

end

end A061375.P15891426084275321862

namespace A061375

/-- `A214046(n+1)-A057427(n)` -/
def P15891426084275321862.Spec : Prop :=
  ∀ n, P15891426084275321862.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P2099999946105483316

`A214046(n+1)+A000007(n)-1`
-/

namespace A061375.P2099999946105483316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) + (A000007 n - 1)

end

end A061375.P2099999946105483316

namespace A061375

/-- `A214046(n+1)+A000007(n)-1` -/
def P2099999946105483316.Spec : Prop :=
  ∀ n, P2099999946105483316.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P114638666984161434

`A214046(n+1)-A000040(n+1)%2`
-/

namespace A061375.P114638666984161434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A061375.P114638666984161434

namespace A061375

/-- `A214046(n+1)-A000040(n+1)%2` -/
def P114638666984161434.Spec : Prop :=
  ∀ n, P114638666984161434.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P5646501801042245445

`A214046(n+1)-A167132(n+1)%3`
-/

namespace A061375.P5646501801042245445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - Int.tmod (A167132 (n + 1)) 3

end

end A061375.P5646501801042245445

namespace A061375

/-- `A214046(n+1)-A167132(n+1)%3` -/
def P5646501801042245445.Spec : Prop :=
  ∀ n, P5646501801042245445.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P16273505879160648407

`A214046(n+1)-A001222(A008578(n+1))`
-/

namespace A061375.P16273505879160648407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A061375.P16273505879160648407

namespace A061375

/-- `A214046(n+1)-A001222(A008578(n+1))` -/
def P16273505879160648407.Spec : Prop :=
  ∀ n, P16273505879160648407.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P2111953528478170973

`A214046(n+1)-A266724(A266724(n))`
-/

namespace A061375.P2111953528478170973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - A266724 (A266724 n).toNat

end

end A061375.P2111953528478170973

namespace A061375

/-- `A214046(n+1)-A266724(A266724(n))` -/
def P2111953528478170973.Spec : Prop :=
  ∀ n, P2111953528478170973.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P8584072849250247065

`A070536(A008578(2*n+1))+A214046(n+1)-1`
-/

namespace A061375.P8584072849250247065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A008578 (2 * n + 1)).toNat + (A214046 (n + 1) - 1)

end

end A061375.P8584072849250247065

namespace A061375

/-- `A070536(A008578(2*n+1))+A214046(n+1)-1` -/
def P8584072849250247065.Spec : Prop :=
  ∀ n, P8584072849250247065.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P14526345756980444083

`A214046(n+1)-and(1, p?[A034886(n)])`
-/

namespace A061375.P14526345756980444083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (n + 1) - Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A061375.P14526345756980444083

namespace A061375

/-- `A214046(n+1)-and(1, p?[A034886(n)])` -/
def P14526345756980444083.Spec : Prop :=
  ∀ n, P14526345756980444083.a n = A061375 (n + 1)

end A061375

/-! ## A061375.P10687396474353547175

`A214046(n+1)-A007318(A000217(A214046(a(n-1)+1)))` with `a(0)=1`
-/

namespace A061375.P10687396474353547175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214046 (n + 1) - A007318 (A000217 (A214046 (a (n - 1) + 1).toNat).toNat).toNat

end

end A061375.P10687396474353547175

namespace A061375

/-- `A214046(n+1)-A007318(A000217(A214046(a(n-1)+1)))` -/
def P10687396474353547175.Spec : Prop :=
  ∀ n, P10687396474353547175.a n = A061375 (n + 1)

end A061375

/-!
# A061376: a(n) = f(n) + f(f(n)) where f(n) = 0 if n <= 1 or a prime, otherwise f(n) = sum of distinct primes dividing n.

The programs for A061376, the canonical program `A061376.P1276602125877968792` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061376 has offset 1).

The definition of A061376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061376.P1276602125877968792

`A105221(n+1)+A105221(A028310(A105221(n+1)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061376

/-- `A105221(n+1)+A105221(A028310(A105221(n+1)))` -/
def P1276602125877968792.Spec : Prop :=
  ∀ n, P1276602125877968792.a n = A061376 (n + 1)

theorem P1276602125877968792.correct : P1276602125877968792.Spec := by
  intro n
  simp only [A061376, Nat.add_sub_cancel]

end A061376

/-!
# A061377: a(1) = 1, a(n+1) = numerator of the continued fraction [1; 2, 4, 8, ..., 2^n].

The programs for A061377, the canonical program `A061377.P3754365009182383925` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061377 has offset 1).

The definition of A061377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061377.P3754365009182383925

`2^n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061377

/-- `2^n*a(n-1)+a(n-2)` -/
def P3754365009182383925.Spec : Prop :=
  ∀ n, (P3754365009182383925.a n : ℤ) = A061377 (n + 1)

theorem P3754365009182383925.correct : P3754365009182383925.Spec := by
  intro n
  simp only [A061377, Nat.add_sub_cancel]

end A061377

/-! ## A061377.P12227478673635656221

`a(n-2)+lcm(2^n, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A061377.P12227478673635656221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lcm (2 ^ n) (a (n - 1))

end

end A061377.P12227478673635656221

namespace A061377

/-- `a(n-2)+lcm(2^n, a(n-1))` -/
def P12227478673635656221.Spec : Prop :=
  ∀ n, (P12227478673635656221.a n : ℤ) = A061377 (n + 1)

end A061377

/-! ## A061377.P6001810422892469362

`2^n*a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A061377.P6001810422892469362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ n : ℤ) * a (n - 1) - (-a (n - 2))

end

end A061377.P6001810422892469362

namespace A061377

/-- `2^n*a(n-1)-floor(-a(n-2))` -/
def P6001810422892469362.Spec : Prop :=
  ∀ n, P6001810422892469362.a n = A061377 (n + 1)

end A061377

/-! ## A061377.P13925693489802163302

`a(n-2)+a(n-1)*A000079(n)` with `a(0)=1, a(1)=3`
-/

namespace A061377.P13925693489802163302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A000079 n

end

end A061377.P13925693489802163302

namespace A061377

/-- `a(n-2)+a(n-1)*A000079(n)` -/
def P13925693489802163302.Spec : Prop :=
  ∀ n, P13925693489802163302.a n = A061377 (n + 1)

end A061377

/-! ## A061377.P2768137570132784221

`A225609(n)+A015473(n+1)`
-/

namespace A061377.P2768137570132784221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225609 n + A015473 (n + 1)

end

end A061377.P2768137570132784221

namespace A061377

/-- `A225609(n)+A015473(n+1)` -/
def P2768137570132784221.Spec : Prop :=
  ∀ n, P2768137570132784221.a n = A061377 (n + 1)

end A061377

/-!
# A061378: Product of all numbers formed by permuting the digits of n.

The programs for A061378, there is no canonical definition to state claims against.
-/

/-! ## A061378.P917000297966902448

`A062003(n)^A305962(A329332(n))`
-/

namespace A061378.P917000297966902448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 n : ℚ) ^ (A305962 (A329332 n).toNat : ℤ)

end

end A061378.P917000297966902448

/-! ## A061378.P7906426395872618898

`A062003(n)*A326538(A115651(2*n+1))`
-/

namespace A061378.P7906426395872618898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 n * A326538 (A115651 (2 * n + 1)).toNat

end

end A061378.P7906426395872618898

/-! ## A061378.P14535594227768930262

`A062003(n)^A162206(A277646(3*n+5))`
-/

namespace A061378.P14535594227768930262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 n : ℚ) ^ (A162206 (A277646 (3 * n + 5)).toNat : ℤ)

end

end A061378.P14535594227768930262

/-! ## A061378.P598814885288593845

`n*A153679(A127624(n+1))`
-/

namespace A061378.P598814885288593845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153679 (A127624 (n + 1)).toNat

end

end A061378.P598814885288593845

/-! ## A061378.P4066699308679808741

`A062003(n)^A046072(A128363(n+1))`
-/

namespace A061378.P4066699308679808741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 n : ℚ) ^ (A046072 (A128363 (n + 1)).toNat : ℤ)

end

end A061378.P4066699308679808741

/-!
# A061379: Difference between n and its reversal is a perfect cube.

The programs for A061379, there is no canonical definition to state claims against.
-/

/-! ## A061379.P5402461559640181956

`lt[A327186(A338827(n)), A004218(n+1)]`
-/

namespace A061379.P5402461559640181956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (A338827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061379.P5402461559640181956

/-! ## A061379.P13143547146845171550

`lt[A327186(A338827(n))²², A327186(n)]`
-/

namespace A061379.P13143547146845171550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327186 (A338827 n).toNat ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061379.P13143547146845171550

/-! ## A061379.P2378747618414375772

`eq[A151921(A151950(n)), A151933(n)]`
-/

namespace A061379.P2378747618414375772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151921 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061379.P2378747618414375772

/-!
# A061380: Triangular numbers with product of digits also a triangular number.

The programs for A061380, there is no canonical definition to state claims against.
-/

/-! ## A061380.P9275096669603116713

`eq[A010054(A007954(n)), A053123(n)]`
-/

namespace A061380.P9275096669603116713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061380.P9275096669603116713

/-! ## A061380.P8212826213817327373

`eq[A010054(A007954(n)), A059268(n)]`
-/

namespace A061380.P8212826213817327373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061380.P8212826213817327373

/-! ## A061380.P16739518232989169041

`eq[A010054(A007954(n)), A074909(n)]`
-/

namespace A061380.P16739518232989169041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061380.P16739518232989169041

/-! ## A061380.P5111789033745576442

`eq[A249251(A007954(n))², A249251(n)]`
-/

namespace A061380.P5111789033745576442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (A007954 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061380.P5111789033745576442

/-! ## A061380.P6980154948055816794

`eq[A132813(A007954(n))², A132813(n)]`
-/

namespace A061380.P6980154948055816794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (A007954 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061380.P6980154948055816794

/-!
# A061383: Arithmetic mean of digits is an integer.

The programs for A061383, the canonical program `A061383.P13799043592853504637` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061383 has offset 0).

The definition of A061383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061383.P13799043592853504637

`eq[0, A180160(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061383

/-- `eq[0, A180160(n)]` -/
def P13799043592853504637.Spec : Prop :=
  ∀ n, (P13799043592853504637.a n : ℤ) = A061383 n

theorem P13799043592853504637.correct : P13799043592853504637.Spec := by
  intro n
  simp only [A061383]

end A061383

/-! ## A061383.P17325635503214747776

`lt[A180160(n), A001156(C(2, n))]`
-/

namespace A061383.P17325635503214747776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P17325635503214747776

namespace A061383

/-- `lt[A180160(n), A001156(C(2, n))]` -/
def P17325635503214747776.Spec : Prop :=
  ∀ n, (P17325635503214747776.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P18027950242108616307

`lt[A180160(n), A001844(C(2, n))]`
-/

namespace A061383.P18027950242108616307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P18027950242108616307

namespace A061383

/-- `lt[A180160(n), A001844(C(2, n))]` -/
def P18027950242108616307.Spec : Prop :=
  ∀ n, (P18027950242108616307.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P469668341745714995

`lt[A180160(n), A006358(C(2, n))]`
-/

namespace A061383.P469668341745714995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P469668341745714995

namespace A061383

/-- `lt[A180160(n), A006358(C(2, n))]` -/
def P469668341745714995.Spec : Prop :=
  ∀ n, (P469668341745714995.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P10602111076701134903

`lt[A180160(n), A007318(C(2, n))]`
-/

namespace A061383.P10602111076701134903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P10602111076701134903

namespace A061383

/-- `lt[A180160(n), A007318(C(2, n))]` -/
def P10602111076701134903.Spec : Prop :=
  ∀ n, (P10602111076701134903.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P628830022185916817

`lt[A180160(n), A023432(C(2, n))]`
-/

namespace A061383.P628830022185916817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023432 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P628830022185916817

namespace A061383

/-- `lt[A180160(n), A023432(C(2, n))]` -/
def P628830022185916817.Spec : Prop :=
  ∀ n, (P628830022185916817.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P14102401312582653566

`lt[A180160(n), A059268(C(2, n))]`
-/

namespace A061383.P14102401312582653566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061383.P14102401312582653566

namespace A061383

/-- `lt[A180160(n), A059268(C(2, n))]` -/
def P14102401312582653566.Spec : Prop :=
  ∀ n, (P14102401312582653566.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P2391439734885394190

`record[n-A000010(n+1)*A180160(n)]`
-/

namespace A061383.P2391439734885394190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1) * A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P2391439734885394190

namespace A061383

/-- `record[n-A000010(n+1)*A180160(n)]` -/
def P2391439734885394190.Spec : Prop :=
  ∀ n, P2391439734885394190.a n = A061383 n

end A061383

/-! ## A061383.P16629852244329106798

`record[n-A154364(n+1)*A180160(n)]`
-/

namespace A061383.P16629852244329106798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A154364 (n + 1) * A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P16629852244329106798

namespace A061383

/-- `record[n-A154364(n+1)*A180160(n)]` -/
def P16629852244329106798.Spec : Prop :=
  ∀ n, P16629852244329106798.a n = A061383 n

end A061383

/-! ## A061383.P14346492793204623200

`record[n/A005206(n)^A180160(n)]`
-/

namespace A061383.P14346492793204623200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005206 n : ℚ) ^ (A180160 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P14346492793204623200

namespace A061383

/-- `record[n/A005206(n)^A180160(n)]` -/
def P14346492793204623200.Spec : Prop :=
  ∀ n, P14346492793204623200.a n = (A061383 n : ℚ)

end A061383

/-! ## A061383.P3735098281741494037

`eq[1, A371384(n)]`
-/

namespace A061383.P3735098281741494037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061383.P3735098281741494037

namespace A061383

/-- `eq[1, A371384(n)]` -/
def P3735098281741494037.Spec : Prop :=
  ∀ n, (P3735098281741494037.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P9867078758252295141

`eq[1, A055642(A375968(n))]`
-/

namespace A061383.P9867078758252295141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A375968 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061383.P9867078758252295141

namespace A061383

/-- `eq[1, A055642(A375968(n))]` -/
def P9867078758252295141.Spec : Prop :=
  ∀ n, (P9867078758252295141.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P2648022226999523221

`eq[A004426(n), A004427(n)]`
-/

namespace A061383.P2648022226999523221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061383.P2648022226999523221

namespace A061383

/-- `eq[A004426(n), A004427(n)]` -/
def P2648022226999523221.Spec : Prop :=
  ∀ n, (P2648022226999523221.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P10207227536668650681

`eq[A004426(n), A371383(n)]`
-/

namespace A061383.P10207227536668650681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061383.P10207227536668650681

namespace A061383

/-- `eq[A004426(n), A371383(n)]` -/
def P10207227536668650681.Spec : Prop :=
  ∀ n, (P10207227536668650681.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P14381935267564720150

`eq[A004426(n), A375968(n)]`
-/

namespace A061383.P14381935267564720150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061383.P14381935267564720150

namespace A061383

/-- `eq[A004426(n), A375968(n)]` -/
def P14381935267564720150.Spec : Prop :=
  ∀ n, (P14381935267564720150.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P5844356710727583160

`eq[A004427(n), A375968(n)]`
-/

namespace A061383.P5844356710727583160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061383.P5844356710727583160

namespace A061383

/-- `eq[A004427(n), A375968(n)]` -/
def P5844356710727583160.Spec : Prop :=
  ∀ n, (P5844356710727583160.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P14719874601027359295

`eq[A257295(n), A375968(n)]`
-/

namespace A061383.P14719874601027359295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061383.P14719874601027359295

namespace A061383

/-- `eq[A257295(n), A375968(n)]` -/
def P14719874601027359295.Spec : Prop :=
  ∀ n, (P14719874601027359295.a n : ℤ) = A061383 n

end A061383

/-! ## A061383.P4659127161134463920

`record[n-A180160(n)*A275608(n+1)]`
-/

namespace A061383.P4659127161134463920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A180160 n * A275608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P4659127161134463920

namespace A061383

/-- `record[n-A180160(n)*A275608(n+1)]` -/
def P4659127161134463920.Spec : Prop :=
  ∀ n, P4659127161134463920.a n = A061383 n

end A061383

/-! ## A061383.P9794038240247978313

`record[n-A000041(n)*A180160(n)]`
-/

namespace A061383.P9794038240247978313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000041 n * A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P9794038240247978313

namespace A061383

/-- `record[n-A000041(n)*A180160(n)]` -/
def P9794038240247978313.Spec : Prop :=
  ∀ n, P9794038240247978313.a n = A061383 n

end A061383

/-! ## A061383.P8167920422478145716

`record[n-A154364(n^A180160(n))]`
-/

namespace A061383.P8167920422478145716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A154364 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A180160 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061383.P8167920422478145716

namespace A061383

/-- `record[n-A154364(n^A180160(n))]` -/
def P8167920422478145716.Spec : Prop :=
  ∀ n, P8167920422478145716.a n = A061383 n

end A061383

/-!
# A061384: Numbers n such that sum of digits = number of digits.

The programs for A061384, the canonical program `A061384.P2326583486309432145` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061384 has offset 1).

The definition of A061384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061384.P2326583486309432145

`A001202(A031448(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061384

/-- `A001202(A031448(n+1)+1)` -/
def P2326583486309432145.Spec : Prop :=
  ∀ n, P2326583486309432145.a n = A061384 (n + 1)

theorem P2326583486309432145.correct : P2326583486309432145.Spec := by
  intro n
  simp only [A061384, Nat.add_sub_cancel]

end A061384

/-! ## A061384.P10094924523253062719

`∩[A178361(n+1), A302563(n+1)]`
-/

namespace A061384.P10094924523253062719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061384.P10094924523253062719

namespace A061384

/-- `∩[A178361(n+1), A302563(n+1)]` -/
def P10094924523253062719.Spec : Prop :=
  ∀ n, (P10094924523253062719.a n : ℤ) = A061384 (n + 1)

end A061384

/-! ## A061384.P15106419927461918976

`A061383(eq[1, A285093(n)])`
-/

namespace A061384.P15106419927461918976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061384.P15106419927461918976

namespace A061384

/-- `A061383(eq[1, A285093(n)])` -/
def P15106419927461918976.Spec : Prop :=
  ∀ n, P15106419927461918976.a n = A061384 (n + 1)

end A061384

/-! ## A061384.P4898554720353272622

`∩[A178361(n+1), A061383(n)]`
-/

namespace A061384.P4898554720353272622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061384.P4898554720353272622

namespace A061384

/-- `∩[A178361(n+1), A061383(n)]` -/
def P4898554720353272622.Spec : Prop :=
  ∀ n, (P4898554720353272622.a n : ℤ) = A061384 (n + 1)

end A061384

/-! ## A061384.P2796292153831694190

`eq[1, A180160(n)+A004427(n)]`
-/

namespace A061384.P2796292153831694190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n + A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061384.P2796292153831694190

namespace A061384

/-- `eq[1, A180160(n)+A004427(n)]` -/
def P2796292153831694190.Spec : Prop :=
  ∀ n, (P2796292153831694190.a n : ℤ) = A061384 (n + 1)

end A061384

/-!
# A061385: Numbers n such that sum of digits = twice number of digits.

The programs for A061385, the canonical program `A061385.P4395846907397159520` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061385 has offset 1).

The definition of A061385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061385.P4395846907397159520

`A061383(eq[2, A285093(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061385

/-- `A061383(eq[2, A285093(n)])` -/
def P4395846907397159520.Spec : Prop :=
  ∀ n, P4395846907397159520.a n = A061385 (n + 1)

theorem P4395846907397159520.correct : P4395846907397159520.Spec := by
  intro n
  simp only [A061385, Nat.add_sub_cancel]

end A061385

/-! ## A061385.P6453577581533778600

`∩[A178362(n+1), A061383(n)]`
-/

namespace A061385.P6453577581533778600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061385.P6453577581533778600

namespace A061385

/-- `∩[A178362(n+1), A061383(n)]` -/
def P6453577581533778600.Spec : Prop :=
  ∀ n, (P6453577581533778600.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P16207061106483594837

`A061383(eq[2, A004427(A061383(n))])`
-/

namespace A061385.P16207061106483594837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061385.P16207061106483594837

namespace A061385

/-- `A061383(eq[2, A004427(A061383(n))])` -/
def P16207061106483594837.Spec : Prop :=
  ∀ n, P16207061106483594837.a n = A061385 (n + 1)

end A061385

/-! ## A061385.P13153023343276792997

`A375967(a(n-1))` with `a(0)=2`
-/

namespace A061385.P13153023343276792997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061385.P13153023343276792997

namespace A061385

/-- `A375967(a(n-1))` -/
def P13153023343276792997.Spec : Prop :=
  ∀ n, P13153023343276792997.a n = A061385 (n + 1)

end A061385

/-! ## A061385.P13216328809440792363

`eq[2, A375968(n)]`
-/

namespace A061385.P13216328809440792363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061385.P13216328809440792363

namespace A061385

/-- `eq[2, A375968(n)]` -/
def P13216328809440792363.Spec : Prop :=
  ∀ n, (P13216328809440792363.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P17116166982257696966

`eq[A055642(n), A321999(n)]`
-/

namespace A061385.P17116166982257696966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061385.P17116166982257696966

namespace A061385

/-- `eq[A055642(n), A321999(n)]` -/
def P17116166982257696966.Spec : Prop :=
  ∀ n, (P17116166982257696966.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P13177850666573608928

`eq[A160093(n+1), A321999(n)]`
-/

namespace A061385.P13177850666573608928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061385.P13177850666573608928

namespace A061385

/-- `eq[A160093(n+1), A321999(n)]` -/
def P13177850666573608928.Spec : Prop :=
  ∀ n, (P13177850666573608928.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P9542752227045144286

`eq[4, A004427(n)+A004426(n)]`
-/

namespace A061385.P9542752227045144286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n + A004426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061385.P9542752227045144286

namespace A061385

/-- `eq[4, A004427(n)+A004426(n)]` -/
def P9542752227045144286.Spec : Prop :=
  ∀ n, (P9542752227045144286.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P8418310183073776589

`eq[2*A055642(n), A007953(n)]`
-/

namespace A061385.P8418310183073776589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061385.P8418310183073776589

namespace A061385

/-- `eq[2*A055642(n), A007953(n)]` -/
def P8418310183073776589.Spec : Prop :=
  ∀ n, (P8418310183073776589.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P9824164108840530062

`A061383(eq[2, A004426(A061383(n))])`
-/

namespace A061385.P9824164108840530062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061385.P9824164108840530062

namespace A061385

/-- `A061383(eq[2, A004426(A061383(n))])` -/
def P9824164108840530062.Spec : Prop :=
  ∀ n, P9824164108840530062.a n = A061385 (n + 1)

end A061385

/-! ## A061385.P7331774196884942548

`eq[A329562(A073053(n)), A329562(n)]`
-/

namespace A061385.P7331774196884942548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061385.P7331774196884942548

namespace A061385

/-- `eq[A329562(A073053(n)), A329562(n)]` -/
def P7331774196884942548.Spec : Prop :=
  ∀ n, (P7331774196884942548.a n : ℤ) = A061385 (n + 1)

end A061385

/-! ## A061385.P573255995493345018

`eq[A000038(n*A180160(n)), A004427(n)]`
-/

namespace A061385.P573255995493345018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A180160 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061385.P573255995493345018

namespace A061385

/-- `eq[A000038(n*A180160(n)), A004427(n)]` -/
def P573255995493345018.Spec : Prop :=
  ∀ n, (P573255995493345018.a n : ℤ) = A061385 (n + 1)

end A061385

/-!
# A061386: Sum of digits = 3 times number of digits.

The programs for A061386, the canonical program `A061386.P9883862173632192436` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061386 has offset 1).

The definition of A061386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061386.P9883862173632192436

`A061383(eq[3, A285093(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061386

/-- `A061383(eq[3, A285093(n)])` -/
def P9883862173632192436.Spec : Prop :=
  ∀ n, P9883862173632192436.a n = A061386 (n + 1)

theorem P9883862173632192436.correct : P9883862173632192436.Spec := by
  intro n
  simp only [A061386, Nat.add_sub_cancel]

end A061386

/-! ## A061386.P5355079115660005018

`∩[A178363(n+1), A061383(n)]`
-/

namespace A061386.P5355079115660005018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061386.P5355079115660005018

namespace A061386

/-- `∩[A178363(n+1), A061383(n)]` -/
def P5355079115660005018.Spec : Prop :=
  ∀ n, (P5355079115660005018.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P1159296449051028504

`A061383(eq[3, A004427(A061383(n))])`
-/

namespace A061386.P1159296449051028504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061386.P1159296449051028504

namespace A061386

/-- `A061383(eq[3, A004427(A061383(n))])` -/
def P1159296449051028504.Spec : Prop :=
  ∀ n, P1159296449051028504.a n = A061386 (n + 1)

end A061386

/-! ## A061386.P11784572227240308818

`A375967(a(n-1))` with `a(0)=3`
-/

namespace A061386.P11784572227240308818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061386.P11784572227240308818

namespace A061386

/-- `A375967(a(n-1))` -/
def P11784572227240308818.Spec : Prop :=
  ∀ n, P11784572227240308818.a n = A061386 (n + 1)

end A061386

/-! ## A061386.P16079654051343881383

`eq[3, A375968(n)]`
-/

namespace A061386.P16079654051343881383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061386.P16079654051343881383

namespace A061386

/-- `eq[3, A375968(n)]` -/
def P16079654051343881383.Spec : Prop :=
  ∀ n, (P16079654051343881383.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P16027567210311869479

`eq[3, A007953(A257296(n))]`
-/

namespace A061386.P16027567210311869479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A257296 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061386.P16027567210311869479

namespace A061386

/-- `eq[3, A007953(A257296(n))]` -/
def P16027567210311869479.Spec : Prop :=
  ∀ n, (P16027567210311869479.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P17784943544209347971

`eq[A099838(n), A257295(n)]`
-/

namespace A061386.P17784943544209347971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P17784943544209347971

namespace A061386

/-- `eq[A099838(n), A257295(n)]` -/
def P17784943544209347971.Spec : Prop :=
  ∀ n, (P17784943544209347971.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P11866185379977161337

`eq[A244477(n+1), A257295(n)]`
-/

namespace A061386.P11866185379977161337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P11866185379977161337

namespace A061386

/-- `eq[A244477(n+1), A257295(n)]` -/
def P11866185379977161337.Spec : Prop :=
  ∀ n, (P11866185379977161337.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P8850830267518391964

`eq[A257295(n), A275363(n+1)]`
-/

namespace A061386.P8850830267518391964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P8850830267518391964

namespace A061386

/-- `eq[A257295(n), A275363(n+1)]` -/
def P8850830267518391964.Spec : Prop :=
  ∀ n, (P8850830267518391964.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P1603097978281466714

`eq[A257295(n), A347538(n+3)]`
-/

namespace A061386.P1603097978281466714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P1603097978281466714

namespace A061386

/-- `eq[A257295(n), A347538(n+3)]` -/
def P1603097978281466714.Spec : Prop :=
  ∀ n, (P1603097978281466714.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P1678440774158187668

`eq[2*A055642(n), A321999(n)]`
-/

namespace A061386.P1678440774158187668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P1678440774158187668

namespace A061386

/-- `eq[2*A055642(n), A321999(n)]` -/
def P1678440774158187668.Spec : Prop :=
  ∀ n, (P1678440774158187668.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P3539151726597854563

`eq[6, A004427(n)+A004426(n)]`
-/

namespace A061386.P3539151726597854563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n + A004426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061386.P3539151726597854563

namespace A061386

/-- `eq[6, A004427(n)+A004426(n)]` -/
def P3539151726597854563.Spec : Prop :=
  ∀ n, (P3539151726597854563.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P696794979585656680

`eq[3, A007953(n)/A055642(n)]`
-/

namespace A061386.P696794979585656680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 n : ℚ) / (A055642 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A061386.P696794979585656680

namespace A061386

/-- `eq[3, A007953(n)/A055642(n)]` -/
def P696794979585656680.Spec : Prop :=
  ∀ n, (P696794979585656680.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P18040330242749545133

`A061383(eq[3, A004426(A061383(n))])`
-/

namespace A061386.P18040330242749545133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061386.P18040330242749545133

namespace A061386

/-- `A061383(eq[3, A004426(A061383(n))])` -/
def P18040330242749545133.Spec : Prop :=
  ∀ n, P18040330242749545133.a n = A061386 (n + 1)

end A061386

/-! ## A061386.P4057372009476811822

`eq[A007953(A061601(n)), A169805(n)]`
-/

namespace A061386.P4057372009476811822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P4057372009476811822

namespace A061386

/-- `eq[A007953(A061601(n)), A169805(n)]` -/
def P4057372009476811822.Spec : Prop :=
  ∀ n, (P4057372009476811822.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P9870130204062636627

`eq[A007953(A267193(n)), A169805(n)]`
-/

namespace A061386.P9870130204062636627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A267193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P9870130204062636627

namespace A061386

/-- `eq[A007953(A267193(n)), A169805(n)]` -/
def P9870130204062636627.Spec : Prop :=
  ∀ n, (P9870130204062636627.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P13240381220482145559

`eq[2*A007953(n), A007953(A061601(n))]`
-/

namespace A061386.P13240381220482145559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P13240381220482145559

namespace A061386

/-- `eq[2*A007953(n), A007953(A061601(n))]` -/
def P13240381220482145559.Spec : Prop :=
  ∀ n, (P13240381220482145559.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P2091818801266377619

`eq[2*A007953(n), A007953(A267193(n))]`
-/

namespace A061386.P2091818801266377619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A267193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061386.P2091818801266377619

namespace A061386

/-- `eq[2*A007953(n), A007953(A267193(n))]` -/
def P2091818801266377619.Spec : Prop :=
  ∀ n, (P2091818801266377619.a n : ℤ) = A061386 (n + 1)

end A061386

/-! ## A061386.P10784737370895026158

`∩[A175758(n+1), A178363(n+1)]`
-/

namespace A061386.P10784737370895026158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061386.P10784737370895026158

namespace A061386

/-- `∩[A175758(n+1), A178363(n+1)]` -/
def P10784737370895026158.Spec : Prop :=
  ∀ n, (P10784737370895026158.a n : ℤ) = A061386 (n + 1)

end A061386

/-!
# A061387: Sum of digits = 4 times number of digits.

The programs for A061387, the canonical program `A061387.P13792558151730477015` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061387 has offset 1).

The definition of A061387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061387.P13792558151730477015

`A061383(eq[4, A285093(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061387

/-- `A061383(eq[4, A285093(n)])` -/
def P13792558151730477015.Spec : Prop :=
  ∀ n, P13792558151730477015.a n = A061387 (n + 1)

theorem P13792558151730477015.correct : P13792558151730477015.Spec := by
  intro n
  simp only [A061387, Nat.add_sub_cancel]

end A061387

/-! ## A061387.P3481414423381340419

`∩[A178364(n+1), A061383(n)]`
-/

namespace A061387.P3481414423381340419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061387.P3481414423381340419

namespace A061387

/-- `∩[A178364(n+1), A061383(n)]` -/
def P3481414423381340419.Spec : Prop :=
  ∀ n, (P3481414423381340419.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P11503260862989881262

`A061383(eq[4, A004427(A061383(n))])`
-/

namespace A061387.P11503260862989881262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061387.P11503260862989881262

namespace A061387

/-- `A061383(eq[4, A004427(A061383(n))])` -/
def P11503260862989881262.Spec : Prop :=
  ∀ n, P11503260862989881262.a n = A061387 (n + 1)

end A061387

/-! ## A061387.P11798277394091376438

`A375967(a(n-1))` with `a(0)=4`
-/

namespace A061387.P11798277394091376438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061387.P11798277394091376438

namespace A061387

/-- `A375967(a(n-1))` -/
def P11798277394091376438.Spec : Prop :=
  ∀ n, P11798277394091376438.a n = A061387 (n + 1)

end A061387

/-! ## A061387.P17552828562790383410

`eq[4, A375968(n)]`
-/

namespace A061387.P17552828562790383410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061387.P17552828562790383410

namespace A061387

/-- `eq[4, A375968(n)]` -/
def P17552828562790383410.Spec : Prop :=
  ∀ n, (P17552828562790383410.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P3933682785847110878

`eq[2, A004185(A257296(n))-2]`
-/

namespace A061387.P3933682785847110878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A257296 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061387.P3933682785847110878

namespace A061387

/-- `eq[2, A004185(A257296(n))-2]` -/
def P3933682785847110878.Spec : Prop :=
  ∀ n, (P3933682785847110878.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P17496986430027428999

`eq[4*A055642(n), A007953(n)]`
-/

namespace A061387.P17496986430027428999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061387.P17496986430027428999

namespace A061387

/-- `eq[4*A055642(n), A007953(n)]` -/
def P17496986430027428999.Spec : Prop :=
  ∀ n, (P17496986430027428999.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P5722836507191701226

`eq[4, gcd(A004426(n), A004427(n))]`
-/

namespace A061387.P5722836507191701226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004426 n) (A004427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061387.P5722836507191701226

namespace A061387

/-- `eq[4, gcd(A004426(n), A004427(n))]` -/
def P5722836507191701226.Spec : Prop :=
  ∀ n, (P5722836507191701226.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P1323588050085406542

`A061383(eq[4, A004426(A061383(n))])`
-/

namespace A061387.P1323588050085406542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061387.P1323588050085406542

namespace A061387

/-- `A061383(eq[4, A004426(A061383(n))])` -/
def P1323588050085406542.Spec : Prop :=
  ∀ n, P1323588050085406542.a n = A061387 (n + 1)

end A061387

/-! ## A061387.P15050818838023845293

`eq[A329562(A073053(n))², A329562(n)]`
-/

namespace A061387.P15050818838023845293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A073053 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061387.P15050818838023845293

namespace A061387

/-- `eq[A329562(A073053(n))², A329562(n)]` -/
def P15050818838023845293.Spec : Prop :=
  ∀ n, (P15050818838023845293.a n : ℤ) = A061387 (n + 1)

end A061387

/-! ## A061387.P2670219722549150737

`eq[A329562(2*A073053(n)), A329562(n)]`
-/

namespace A061387.P2670219722549150737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (2 * A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061387.P2670219722549150737

namespace A061387

/-- `eq[A329562(2*A073053(n)), A329562(n)]` -/
def P2670219722549150737.Spec : Prop :=
  ∀ n, (P2670219722549150737.a n : ℤ) = A061387 (n + 1)

end A061387

/-!
# A061388: Sum of digits = 5 times number of digits.

The programs for A061388, the canonical program `A061388.P12309060482662442082` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061388 has offset 1).

The definition of A061388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061388.P12309060482662442082

`A061383(eq[5, A285093(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061388

/-- `A061383(eq[5, A285093(n)])` -/
def P12309060482662442082.Spec : Prop :=
  ∀ n, P12309060482662442082.a n = A061388 (n + 1)

theorem P12309060482662442082.correct : P12309060482662442082.Spec := by
  intro n
  simp only [A061388, Nat.add_sub_cancel]

end A061388

/-! ## A061388.P2025464923581170075

`∩[A178365(n+1), A061383(n)]`
-/

namespace A061388.P2025464923581170075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061388.P2025464923581170075

namespace A061388

/-- `∩[A178365(n+1), A061383(n)]` -/
def P2025464923581170075.Spec : Prop :=
  ∀ n, (P2025464923581170075.a n : ℤ) = A061388 (n + 1)

end A061388

/-! ## A061388.P13279141697481366585

`∩[A178365(n+1), A227793(n+1)]`
-/

namespace A061388.P13279141697481366585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061388.P13279141697481366585

namespace A061388

/-- `∩[A178365(n+1), A227793(n+1)]` -/
def P13279141697481366585.Spec : Prop :=
  ∀ n, (P13279141697481366585.a n : ℤ) = A061388 (n + 1)

end A061388

/-! ## A061388.P4304589767570311960

`A061383(eq[5, A004427(A061383(n))])`
-/

namespace A061388.P4304589767570311960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061388.P4304589767570311960

namespace A061388

/-- `A061383(eq[5, A004427(A061383(n))])` -/
def P4304589767570311960.Spec : Prop :=
  ∀ n, P4304589767570311960.a n = A061388 (n + 1)

end A061388

/-! ## A061388.P2024760438524123103

`A375967(a(n-1))` with `a(0)=5`
-/

namespace A061388.P2024760438524123103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A375967 (a (n - 1)).toNat

end

end A061388.P2024760438524123103

namespace A061388

/-- `A375967(a(n-1))` -/
def P2024760438524123103.Spec : Prop :=
  ∀ n, P2024760438524123103.a n = A061388 (n + 1)

end A061388

/-! ## A061388.P5533824960682446038

`eq[5, A375968(n)]`
-/

namespace A061388.P5533824960682446038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061388.P5533824960682446038

namespace A061388

/-- `eq[5, A375968(n)]` -/
def P5533824960682446038.Spec : Prop :=
  ∀ n, (P5533824960682446038.a n : ℤ) = A061388 (n + 1)

end A061388

/-! ## A061388.P8975026992542198896

`eq[5*A055642(n), A007953(n)]`
-/

namespace A061388.P8975026992542198896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061388.P8975026992542198896

namespace A061388

/-- `eq[5*A055642(n), A007953(n)]` -/
def P8975026992542198896.Spec : Prop :=
  ∀ n, (P8975026992542198896.a n : ℤ) = A061388 (n + 1)

end A061388

/-! ## A061388.P14603308909974311775

`eq[5, gcd(A004426(n), A004427(n))]`
-/

namespace A061388.P14603308909974311775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004426 n) (A004427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061388.P14603308909974311775

namespace A061388

/-- `eq[5, gcd(A004426(n), A004427(n))]` -/
def P14603308909974311775.Spec : Prop :=
  ∀ n, (P14603308909974311775.a n : ℤ) = A061388 (n + 1)

end A061388

/-! ## A061388.P2531599581774367928

`A061383(eq[5, A004426(A061383(n))])`
-/

namespace A061388.P2531599581774367928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A061383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061388.P2531599581774367928

namespace A061388

/-- `A061383(eq[5, A004426(A061383(n))])` -/
def P2531599581774367928.Spec : Prop :=
  ∀ n, P2531599581774367928.a n = A061388 (n + 1)

end A061388

/-!
# A061389: Number of (1+phi)-divisors of n.

The programs for A061389, the canonical program `A061389.P4695000601348922787` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061389 has offset 1).

The definition of A061389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061389.P10006232472099303543

`∏{e}[n+1, A039649(#)]`
-/

namespace A061389.P10006232472099303543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A039649 (Nat.factorization (f1 n) p)

end

end A061389.P10006232472099303543

namespace A061389

/-- `∏{e}[n+1, A039649(#)]` -/
def P10006232472099303543.Spec : Prop :=
  ∀ n, P10006232472099303543.a n = A061389 (n + 1)

end A061389

/-! ## A061389.P10205282696074386264

`∏{e}[n+1, A039650(#)]`
-/

namespace A061389.P10205282696074386264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A039650 (Nat.factorization (f1 n) p)

end

end A061389.P10205282696074386264

namespace A061389

/-- `∏{e}[n+1, A039650(#)]` -/
def P10205282696074386264.Spec : Prop :=
  ∀ n, P10205282696074386264.a n = A061389 (n + 1)

end A061389

/-! ## A061389.P4695000601348922787

`∏{e}[n+1, A214288(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A061389

/-- `∏{e}[n+1, A214288(#)]` -/
def P4695000601348922787.Spec : Prop :=
  ∀ n, P4695000601348922787.a n = A061389 (n + 1)

theorem P4695000601348922787.correct : P4695000601348922787.Spec := by
  intro n
  simp only [A061389, Nat.add_sub_cancel]

end A061389

/-! ## A061389.P2740610451228465478

`∏{e}[n+1, A000010(#)+1]`
-/

namespace A061389.P2740610451228465478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000010 (Nat.factorization (f1 n) p) + 1)

end

end A061389.P2740610451228465478

namespace A061389

/-- `∏{e}[n+1, A000010(#)+1]` -/
def P2740610451228465478.Spec : Prop :=
  ∀ n, P2740610451228465478.a n = A061389 (n + 1)

end A061389

/-! ## A061389.P5873361875213237970

`∏{e}[n+1, floor(log2(A243305(#)))+1]`
-/

namespace A061389.P5873361875213237970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.log 2 (A243305 (Nat.factorization (f1 n) p)).toNat + 1)

end

end A061389.P5873361875213237970

namespace A061389

/-- `∏{e}[n+1, floor(log2(A243305(#)))+1]` -/
def P5873361875213237970.Spec : Prop :=
  ∀ n, (P5873361875213237970.a n : ℤ) = A061389 (n + 1)

end A061389

/-! ## A061389.P6703636979482873066

`∏{p}[n+1, A000010(val(n+1, #))+1]`
-/

namespace A061389.P6703636979482873066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000010 (SequenceMachineLib.valuation (n + 1) p) + 1)

end

end A061389.P6703636979482873066

namespace A061389

/-- `∏{p}[n+1, A000010(val(n+1, #))+1]` -/
def P6703636979482873066.Spec : Prop :=
  ∀ n, P6703636979482873066.a n = A061389 (n + 1)

end A061389

/-! ## A061389.P15087290427444359982

`∏{e}[A353397(n+1), #-A219428(#)]`
-/

namespace A061389.P15087290427444359982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A219428 (Nat.factorization (f1 n).natAbs p))

end

end A061389.P15087290427444359982

namespace A061389

/-- `∏{e}[A353397(n+1), #-A219428(#)]` -/
def P15087290427444359982.Spec : Prop :=
  ∀ n, P15087290427444359982.a n = A061389 (n + 1)

end A061389

/-!
# A061390: Use same rules as A047988. Sequence gives smallest numbers which require n steps to reach 2.

The programs for A061390, there is no canonical definition to state claims against.
-/

/-! ## A061390.P705709966072819772

`A202304(∑[A269702(n!)])`
-/

namespace A061390.P705709966072819772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269702 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061390.P705709966072819772

/-! ## A061390.P3415919882105888239

`A257508(n+1)+A204892(A001147(n))`
-/

namespace A061390.P3415919882105888239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257508 (n + 1) + A204892 (A001147 n).toNat

end

end A061390.P3415919882105888239

/-!
# A061391: a(n) = t(n,3) = Sum_{d|n} tau(d^3), where tau(n) = number of divisors of n, cf. A000005.

The programs for A061391, the canonical program `A061391.P12752179287052150230` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061391 has offset 1).

The definition of A061391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061391.P9367749082933018854

`∑{d}[n+1, A048785(#)]`
-/

namespace A061391.P9367749082933018854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048785 d

end

end A061391.P9367749082933018854

namespace A061391

/-- `∑{d}[n+1, A048785(#)]` -/
def P9367749082933018854.Spec : Prop :=
  ∀ n, P9367749082933018854.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P12752179287052150230

`∏{e}[n+1, A000326(#+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061391

/-- `∏{e}[n+1, A000326(#+1)]` -/
def P12752179287052150230.Spec : Prop :=
  ∀ n, P12752179287052150230.a n = A061391 (n + 1)

theorem P12752179287052150230.correct : P12752179287052150230.Spec := by
  intro n
  simp only [A061391, Nat.add_sub_cancel]

end A061391

/-! ## A061391.P9272384215816502956

`∏{e}[n+1, A034856(#+1)+#²]`
-/

namespace A061391.P9272384215816502956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A034856 (Nat.factorization (f1 n) p + 1) + (Nat.factorization (f1 n) p ^ 2 : ℤ))

end

end A061391.P9272384215816502956

namespace A061391

/-- `∏{e}[n+1, A034856(#+1)+#²]` -/
def P9272384215816502956.Spec : Prop :=
  ∀ n, P9272384215816502956.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P5752057236135336217

`∑{d}[n+1, A000005(#)*A074816((n+1)/#)]`
-/

namespace A061391.P5752057236135336217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A074816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P5752057236135336217

namespace A061391

/-- `∑{d}[n+1, A000005(#)*A074816((n+1)/#)]` -/
def P5752057236135336217.Spec : Prop :=
  ∀ n, P5752057236135336217.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P12846987899666984228

`∑{d}[n+1, A007425(#)*A074823((n+1)/#)]`
-/

namespace A061391.P12846987899666984228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P12846987899666984228

namespace A061391

/-- `∑{d}[n+1, A007425(#)*A074823((n+1)/#)]` -/
def P12846987899666984228.Spec : Prop :=
  ∀ n, P12846987899666984228.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P16289071404922190951

`∑{d}[n+1, A048691(#)*A055076((n+1)/#)]`
-/

namespace A061391.P16289071404922190951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A055076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P16289071404922190951

namespace A061391

/-- `∑{d}[n+1, A048691(#)*A055076((n+1)/#)]` -/
def P16289071404922190951.Spec : Prop :=
  ∀ n, P16289071404922190951.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P9498179044146828444

`∑{d}[n+1, A035116(#)*A162511((n+1)/#)]`
-/

namespace A061391.P9498179044146828444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P9498179044146828444

namespace A061391

/-- `∑{d}[n+1, A035116(#)*A162511((n+1)/#)]` -/
def P9498179044146828444.Spec : Prop :=
  ∀ n, P9498179044146828444.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P13906435078485275036

`∑{d}[n+1, A008683(#)*A397549((n+1)/#)]`
-/

namespace A061391.P13906435078485275036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A397549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P13906435078485275036

namespace A061391

/-- `∑{d}[n+1, A008683(#)*A397549((n+1)/#)]` -/
def P13906435078485275036.Spec : Prop :=
  ∀ n, P13906435078485275036.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P16369199990856379316

`∑{d}[n+1, A130054(#)*A344221((n+1)/#)]`
-/

namespace A061391.P16369199990856379316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A344221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061391.P16369199990856379316

namespace A061391

/-- `∑{d}[n+1, A130054(#)*A344221((n+1)/#)]` -/
def P16369199990856379316.Spec : Prop :=
  ∀ n, P16369199990856379316.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P18301635059736060304

`A007425(n+1)/A343443(n+1)*A360909(n+1)`
-/

namespace A061391.P18301635059736060304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A343443 (n + 1) : ℚ) * (A360909 (n + 1) : ℚ)

end

end A061391.P18301635059736060304

namespace A061391

/-- `A007425(n+1)/A343443(n+1)*A360909(n+1)` -/
def P18301635059736060304.Spec : Prop :=
  ∀ n, P18301635059736060304.a n = (A061391 (n + 1) : ℚ)

end A061391

/-! ## A061391.P848556772643480428

`∑{d}[n+1, A000005(#*(n+1))]`
-/

namespace A061391.P848556772643480428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d * (n + 1))

end

end A061391.P848556772643480428

namespace A061391

/-- `∑{d}[n+1, A000005(#*(n+1))]` -/
def P848556772643480428.Spec : Prop :=
  ∀ n, P848556772643480428.a n = A061391 (n + 1)

end A061391

/-! ## A061391.P9056289566682112275

`∑{d}[n+1, A092520(#²)]`
-/

namespace A061391.P9056289566682112275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 (d ^ 2)

end

end A061391.P9056289566682112275

namespace A061391

/-- `∑{d}[n+1, A092520(#²)]` -/
def P9056289566682112275.Spec : Prop :=
  ∀ n, P9056289566682112275.a n = A061391 (n + 1)

end A061391

/-!
# A061392: a(n) = a(floor(n/3)) + a(ceiling(n/3)) with a(0) = 0 and a(1) = 1.

The programs for A061392, the canonical program `A061392.P14554549924214326361` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061392 has offset 0).

The definition of A061392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/3))+a(ceil(n/3))` (program `A061392.P14554549924214326361`, by `A061392.P14554549924214326361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061392.P14554549924214326361

`a(floor(n/3))+a(ceil(n/3))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061392

/-- `a(floor(n/3))+a(ceil(n/3))` -/
def P14554549924214326361.Spec : Prop :=
  ∀ n, (P14554549924214326361.a n : ℤ) = A061392 n

theorem P14554549924214326361.correct : P14554549924214326361.Spec := by
  intro n
  simp only [A061392]

end A061392

/-! ## A061392.P3930215472928014076

`∑[char[∑[A061393(n)]]]`
-/

namespace A061392.P3930215472928014076
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P3930215472928014076

namespace A061392

/-- `∑[char[∑[A061393(n)]]]` -/
def P3930215472928014076.Spec : Prop :=
  ∀ n, (P3930215472928014076.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P252650105114211261

`∑[A088917(abs(1-n))]`
-/

namespace A061392.P252650105114211261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P252650105114211261

namespace A061392

/-- `∑[A088917(abs(1-n))]` -/
def P252650105114211261.Spec : Prop :=
  ∀ n, P252650105114211261.a n = A061392 n

end A061392

/-! ## A061392.P13750798255015428181

`∑[char[A167878(n)+1]]`
-/

namespace A061392.P13750798255015428181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P13750798255015428181

namespace A061392

/-- `∑[char[A167878(n)+1]]` -/
def P13750798255015428181.Spec : Prop :=
  ∀ n, (P13750798255015428181.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P13995103374382823422

`∑[char[A191106(n+1)]]`
-/

namespace A061392.P13995103374382823422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P13995103374382823422

namespace A061392

/-- `∑[char[A191106(n+1)]]` -/
def P13995103374382823422.Spec : Prop :=
  ∀ n, (P13995103374382823422.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P8870794342561071343

`∑[char[A005823(n+1)+1]]`
-/

namespace A061392.P8870794342561071343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P8870794342561071343

namespace A061392

/-- `∑[char[A005823(n+1)+1]]` -/
def P8870794342561071343.Spec : Prop :=
  ∀ n, (P8870794342561071343.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P6414598942270203083

`∑[char[lt[A316829(n), 1]+1]]`
-/

namespace A061392.P6414598942270203083
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P6414598942270203083

namespace A061392

/-- `∑[char[lt[A316829(n), 1]+1]]` -/
def P6414598942270203083.Spec : Prop :=
  ∀ n, (P6414598942270203083.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P14152393204771597654

`∑[char[A060374(n+1)-n]]`
-/

namespace A061392.P14152393204771597654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P14152393204771597654

namespace A061392

/-- `∑[char[A060374(n+1)-n]]` -/
def P14152393204771597654.Spec : Prop :=
  ∀ n, (P14152393204771597654.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P3892615916662668398

`A088917(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A061392.P3892615916662668398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A088917 (n - 1) + a (n - 1)

end

end A061392.P3892615916662668398

namespace A061392

/-- `A088917(n-1)+a(n-1)` -/
def P3892615916662668398.Spec : Prop :=
  ∀ n, P3892615916662668398.a n = A061392 n

end A061392

/-! ## A061392.P3178851918170258609

`∑[char[2*A005836(n+1)+1]]`
-/

namespace A061392.P3178851918170258609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P3178851918170258609

namespace A061392

/-- `∑[char[2*A005836(n+1)+1]]` -/
def P3178851918170258609.Spec : Prop :=
  ∀ n, (P3178851918170258609.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P13384080215429249188

`∑[char[A002517(a(n-1))+1]]` with `a(0)=1`
-/

namespace A061392.P13384080215429249188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002517 (f2 (n - 1)).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P13384080215429249188

namespace A061392

/-- `∑[char[A002517(a(n-1))+1]]` -/
def P13384080215429249188.Spec : Prop :=
  ∀ n, (P13384080215429249188.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P2299583913810953433

`∑[A088917(n)]-A088917(n)`
-/

namespace A061392.P2299583913810953433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088917 n

end

end A061392.P2299583913810953433

namespace A061392

/-- `∑[A088917(n)]-A088917(n)` -/
def P2299583913810953433.Spec : Prop :=
  ∀ n, P2299583913810953433.a n = A061392 n

end A061392

/-! ## A061392.P296925517994079127

`∑[char[A005408(A005836(n+1))]]`
-/

namespace A061392.P296925517994079127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005836 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P296925517994079127

namespace A061392

/-- `∑[char[A005408(A005836(n+1))]]` -/
def P296925517994079127.Spec : Prop :=
  ∀ n, (P296925517994079127.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P13280108958270025968

`∑[char[A109613(A005823(n+1))]]`
-/

namespace A061392.P13280108958270025968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A005823 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P13280108958270025968

namespace A061392

/-- `∑[char[A109613(A005823(n+1))]]` -/
def P13280108958270025968.Spec : Prop :=
  ∀ n, (P13280108958270025968.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P4201781416860649983

`∑[char[A026140(A003278(n+1)+1)]]`
-/

namespace A061392.P4201781416860649983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (A003278 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P4201781416860649983

namespace A061392

/-- `∑[char[A026140(A003278(n+1)+1)]]` -/
def P4201781416860649983.Spec : Prop :=
  ∀ n, (P4201781416860649983.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P9926162882950641805

`∑[char[A005836(n+1)+A003278(n+1)]]`
-/

namespace A061392.P9926162882950641805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A003278 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061392.P9926162882950641805

namespace A061392

/-- `∑[char[A005836(n+1)+A003278(n+1)]]` -/
def P9926162882950641805.Spec : Prop :=
  ∀ n, (P9926162882950641805.a n : ℤ) = A061392 n

end A061392

/-! ## A061392.P10527019223861014733

`A002264(∑[(A151281(n)%3)²])`
-/

namespace A061392.P10527019223861014733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151281 n) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061392.P10527019223861014733

namespace A061392

/-- `A002264(∑[(A151281(n)%3)²])` -/
def P10527019223861014733.Spec : Prop :=
  ∀ n, P10527019223861014733.a n = A061392 n

end A061392

/-!
# A061393: Number of appearances of n in sequence defined by b(k) = b(floor(k/3)) + b(ceiling(k/3)) with b(0)=0 and b(1)=1, i.e., in A061392.

The programs for A061393, the canonical program `A061393.P6485860587196988669` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061393 has offset 0).

The definition of A061393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061393.P16819853559757675167

`and(n, -n)^log2(3)+1`
-/

namespace A061393.P16819853559757675167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ)) + 1

end

end A061393.P16819853559757675167

namespace A061393

/-- `and(n, -n)^log2(3)+1` -/
def P16819853559757675167.Spec : Prop :=
  ∀ n, P16819853559757675167.a n = (A061393 n : ℝ)

end A061393

/-! ## A061393.P6485860587196988669

`3*a(floor(n/2))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061393

/-- `3*a(floor(n/2))-a(n-1)` -/
def P6485860587196988669.Spec : Prop :=
  ∀ n, P6485860587196988669.a n = A061393 n

theorem P6485860587196988669.correct : P6485860587196988669.Spec := by
  intro n
  simp only [A061393]

end A061393

/-! ## A061393.P3140255152259287059

`A006046(and(n, -n))+1`
-/

namespace A061393.P3140255152259287059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.land (n : ℤ) (-(n : ℤ))).toNat + 1

end

end A061393.P3140255152259287059

namespace A061393

/-- `A006046(and(n, -n))+1` -/
def P3140255152259287059.Spec : Prop :=
  ∀ n, P3140255152259287059.a n = A061393 n

end A061393

/-! ## A061393.P3010499127148739831

`A005836(and(n, -n)+1)+1`
-/

namespace A061393.P3010499127148739831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (Int.land (n : ℤ) (-(n : ℤ)) + 1).toNat + 1

end

end A061393.P3010499127148739831

namespace A061393

/-- `A005836(and(n, -n)+1)+1` -/
def P3010499127148739831.Spec : Prop :=
  ∀ n, P3010499127148739831.a n = A061393 n

end A061393

/-! ## A061393.P11541198535255377773

`A003278(n-and(n, n-1)+1)`
-/

namespace A061393.P11541198535255377773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 ((n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

end

end A061393.P11541198535255377773

namespace A061393

/-- `A003278(n-and(n, n-1)+1)` -/
def P11541198535255377773.Spec : Prop :=
  ∀ n, P11541198535255377773.a n = A061393 n

end A061393

/-! ## A061393.P435280280774408837

`A034472(val(n, A034472(and(1, a(n-1)))))` with `a(0)=1`
-/

namespace A061393.P435280280774408837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034472 (SequenceMachineLib.valuation n (A034472 (Int.land 1 (a (n - 1))).toNat).toNat)

end

end A061393.P435280280774408837

namespace A061393

/-- `A034472(val(n, A034472(and(1, a(n-1)))))` -/
def P435280280774408837.Spec : Prop :=
  ∀ n, P435280280774408837.a n = A061393 n

end A061393

/-! ## A061393.P908971027155056363

`Δ[round(A191106(comp[2*(n+1)]+1)/3)]`
-/

namespace A061393.P908971027155056363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191106 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061393.P908971027155056363

namespace A061393

/-- `Δ[round(A191106(comp[2*(n+1)]+1)/3)]` -/
def P908971027155056363.Spec : Prop :=
  ∀ n, P908971027155056363.a n = A061393 n

end A061393

/-! ## A061393.P9917846692609960090

`A140429(A285099(2*n+1))+1`
-/

namespace A061393.P9917846692609960090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A285099 (2 * n + 1)).toNat + 1

end

end A061393.P9917846692609960090

namespace A061393

/-- `A140429(A285099(2*n+1))+1` -/
def P9917846692609960090.Spec : Prop :=
  ∀ n, P9917846692609960090.a n = A061393 n

end A061393

/-! ## A061393.P17211363713262563537

`A033627(a(∑[n]%n)+1)` with `a(0)=1`
-/

namespace A061393.P17211363713262563537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033627 (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) + 1).toNat

end

end A061393.P17211363713262563537

namespace A061393

/-- `A033627(a(∑[n]%n)+1)` -/
def P17211363713262563537.Spec : Prop :=
  ∀ n, P17211363713262563537.a n = A061393 n

end A061393

/-! ## A061393.P12824646198891366489

`A352502(A140429(A285099(2*n+1)))`
-/

namespace A061393.P12824646198891366489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352502 (A140429 (A285099 (2 * n + 1)).toNat).toNat

end

end A061393.P12824646198891366489

namespace A061393

/-- `A352502(A140429(A285099(2*n+1)))` -/
def P12824646198891366489.Spec : Prop :=
  ∀ n, P12824646198891366489.a n = A061393 n

end A061393

/-! ## A061393.P14102663055353586335

`A003278(and(n, n*A000225(n))+1)`
-/

namespace A061393.P14102663055353586335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (Int.land (n : ℤ) ((n : ℤ) * A000225 n) + 1).toNat

end

end A061393.P14102663055353586335

namespace A061393

/-- `A003278(and(n, n*A000225(n))+1)` -/
def P14102663055353586335.Spec : Prop :=
  ∀ n, P14102663055353586335.a n = A061393 n

end A061393

/-! ## A061393.P2042049301246901960

`A028310(A005823(n+1))-A005823(A028310(n))`
-/

namespace A061393.P2042049301246901960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A005823 (n + 1)).toNat - A005823 (A028310 n).toNat

end

end A061393.P2042049301246901960

namespace A061393

/-- `A028310(A005823(n+1))-A005823(A028310(n))` -/
def P2042049301246901960.Spec : Prop :=
  ∀ n, P2042049301246901960.a n = A061393 n

end A061393

/-! ## A061393.P11598998803380541642

`Δ[record[A353660(2*n)]]`
-/

namespace A061393.P11598998803380541642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061393.P11598998803380541642

namespace A061393

/-- `Δ[record[A353660(2*n)]]` -/
def P11598998803380541642.Spec : Prop :=
  ∀ n, P11598998803380541642.a n = A061393 n

end A061393

/-! ## A061393.P9115461558034918938

`Δ[lt[0, A039975(3*n+1)]]`
-/

namespace A061393.P9115461558034918938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061393.P9115461558034918938

namespace A061393

/-- `Δ[lt[0, A039975(3*n+1)]]` -/
def P9115461558034918938.Spec : Prop :=
  ∀ n, P9115461558034918938.a n = A061393 n

end A061393

/-!
# A061394: Number of distinct prime factors of n-th least prime signature (A025487); also a(n)-th prime is largest prime factor of n-th least prime signature; also a(n)-th primorial number is largest primorial factor of n-th least product of primorial numbers.

The programs for A061394, there is no canonical definition to state claims against.
-/

/-! ## A061394.P2554996940459296423

`A001221(A025487(n+1))`
-/

namespace A061394.P2554996940459296423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025487 (n + 1)).toNat

end

end A061394.P2554996940459296423

/-! ## A061394.P13931641274157778755

`A051903(A181822(n+1))`
-/

namespace A061394.P13931641274157778755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A181822 (n + 1)).toNat

end

end A061394.P13931641274157778755

/-! ## A061394.P7949799571016191789

`∑{e}[A181820(n+1), #]`
-/

namespace A061394.P7949799571016191789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A061394.P7949799571016191789

/-! ## A061394.P2084736777933833331

`A001222(A181820(n+1))`
-/

namespace A061394.P2084736777933833331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181820 (n + 1)).toNat

end

end A061394.P2084736777933833331

/-! ## A061394.P2087205510250140265

`A124830(A331119(n+1))`
-/

namespace A061394.P2087205510250140265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (A331119 (n + 1)).toNat

end

end A061394.P2087205510250140265

/-! ## A061394.P1726539299748835311

`A304886(∑[A051282(n+1)]+1)`
-/

namespace A061394.P1726539299748835311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304886 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A061394.P1726539299748835311

/-! ## A061394.P14868250994445404306

`∑{e}[A247451(n+1), #]`
-/

namespace A061394.P14868250994445404306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A061394.P14868250994445404306

/-! ## A061394.P11287648194917189839

`∑{e}[A025487(n+1)/A307107(n+1), #]`
-/

namespace A061394.P11287648194917189839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A307107 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A061394.P11287648194917189839

/-! ## A061394.P7135701182014069079

`∑{p}[A025487(n+1), A001065(#)]`
-/

namespace A061394.P7135701182014069079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A061394.P7135701182014069079

/-! ## A061394.P15588498434700870896

`∑{p}[A025487(n+1), A001222(#)]`
-/

namespace A061394.P15588498434700870896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A061394.P15588498434700870896

/-! ## A061394.P11242521719624058628

`∑{p}[A025487(n+1), A160094(#)]`
-/

namespace A061394.P11242521719624058628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A160094 p

end

end A061394.P11242521719624058628

/-! ## A061394.P14013397650841917918

`∑{e}[A025487(n+1), A057427(#)]`
-/

namespace A061394.P14013397650841917918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A061394.P14013397650841917918

/-! ## A061394.P5146248365476169570

`∑{e}[A025487(n+1), A330098(#)]`
-/

namespace A061394.P5146248365476169570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330098 (Nat.factorization (f1 n).natAbs p)

end

end A061394.P5146248365476169570

/-! ## A061394.P15990831770000048926

`log2(∏{p}[A025487(n+1), A000005(#)])`
-/

namespace A061394.P15990831770000048926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p : ℤ) : ℝ)

end

end A061394.P15990831770000048926

/-! ## A061394.P9123318452174736938

`∑{e}[A025487(n+1), A000007(#)+1]`
-/

namespace A061394.P9123318452174736938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000007 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A061394.P9123318452174736938

/-! ## A061394.P16993984390145697900

`A001222(∏{p}[A025487(n+1), A001222(#²)])`
-/

namespace A061394.P16993984390145697900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (p ^ 2)).toNat

end

end A061394.P16993984390145697900

/-! ## A061394.P2591138924318738713

`A001221(A247451(n+1))`
-/

namespace A061394.P2591138924318738713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A247451 (n + 1)).toNat

end

end A061394.P2591138924318738713

/-! ## A061394.P12604623343041996861

`A001222(∏{p}[A025487(n+1), #])`
-/

namespace A061394.P12604623343041996861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A061394.P12604623343041996861

/-!
# A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

The programs for A061395, the canonical program `A061395.P8431317036300486107` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061395 has offset 1).

The definition of A061395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061395.P466955793214453933

`A000720(A006530(n+1))`
-/

namespace A061395.P466955793214453933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat

end

end A061395.P466955793214453933

namespace A061395

/-- `A000720(A006530(n+1))` -/
def P466955793214453933.Spec : Prop :=
  ∀ n, P466955793214453933.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A061395

/-- `A029837(A087207(n+1)+1)` -/
def P8431317036300486107.Spec : Prop :=
  ∀ n, P8431317036300486107.a n = A061395 (n + 1)

theorem P8431317036300486107.correct : P8431317036300486107.Spec := by
  intro n
  simp only [A061395, Nat.add_sub_cancel]

end A061395

/-! ## A061395.P1432653358839027266

`A159081(n+1)-1`
-/

namespace A061395.P1432653358839027266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (n + 1) - 1

end

end A061395.P1432653358839027266

namespace A061395

/-- `A159081(n+1)-1` -/
def P1432653358839027266.Spec : Prop :=
  ∀ n, P1432653358839027266.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P14132733548678112559

`A065770(∏{p}[n+1, #])`
-/

namespace A061395.P14132733548678112559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A061395.P14132733548678112559

namespace A061395

/-- `A065770(∏{p}[n+1, #])` -/
def P14132733548678112559.Spec : Prop :=
  ∀ n, P14132733548678112559.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P16124638882544055433

`A263297(∏{p}[n+1, #])`
-/

namespace A061395.P16124638882544055433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A061395.P16124638882544055433

namespace A061395

/-- `A263297(∏{p}[n+1, #])` -/
def P16124638882544055433.Spec : Prop :=
  ∀ n, P16124638882544055433.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P2096759391926256626

`A263323(∏{p}[n+1, #])`
-/

namespace A061395.P2096759391926256626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A061395.P2096759391926256626

namespace A061395

/-- `A263323(∏{p}[n+1, #])` -/
def P2096759391926256626.Spec : Prop :=
  ∀ n, P2096759391926256626.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P8422327750529028354

`A297113(∏{p}[n+1, #])`
-/

namespace A061395.P8422327750529028354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A061395.P8422327750529028354

namespace A061395

/-- `A297113(∏{p}[n+1, #])` -/
def P8422327750529028354.Spec : Prop :=
  ∀ n, P8422327750529028354.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P10274754960820945299

`A335603(∏{p}[n+1, #])`
-/

namespace A061395.P10274754960820945299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A061395.P10274754960820945299

namespace A061395

/-- `A335603(∏{p}[n+1, #])` -/
def P10274754960820945299.Spec : Prop :=
  ∀ n, P10274754960820945299.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P740408798710318088

`1-A243291(n+1)+n`
-/

namespace A061395.P740408798710318088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243291 (n + 1) + (n : ℤ)

end

end A061395.P740408798710318088

namespace A061395

/-- `1-A243291(n+1)+n` -/
def P740408798710318088.Spec : Prop :=
  ∀ n, P740408798710318088.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P9519061853922772127

`1+a(A064989(n+1)-1)` with `a(0)=0`
-/

namespace A061395.P9519061853922772127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A064989 (n + 1) - 1).toNat

end

end A061395.P9519061853922772127

namespace A061395

/-- `1+a(A064989(n+1)-1)` -/
def P9519061853922772127.Spec : Prop :=
  ∀ n, (P9519061853922772127.a n : ℤ) = A061395 (n + 1)

end A061395

/-! ## A061395.P6401067933015717521

`A139169(∏{p}[n+1, #])%(n+1)`
-/

namespace A061395.P6401067933015717521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139169 (∏ p ∈ Nat.primeFactors (f1 n), p)) (n + 1 : ℤ)

end

end A061395.P6401067933015717521

namespace A061395

/-- `A139169(∏{p}[n+1, #])%(n+1)` -/
def P6401067933015717521.Spec : Prop :=
  ∀ n, P6401067933015717521.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P7721621869145226312

`A065770(A007947(n+1))`
-/

namespace A061395.P7721621869145226312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A007947 (n + 1)).toNat

end

end A061395.P7721621869145226312

namespace A061395

/-- `A065770(A007947(n+1))` -/
def P7721621869145226312.Spec : Prop :=
  ∀ n, P7721621869145226312.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P18336211499687203081

`A055396(A053585(n+1))`
-/

namespace A061395.P18336211499687203081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A053585 (n + 1)).toNat

end

end A061395.P18336211499687203081

namespace A061395

/-- `A055396(A053585(n+1))` -/
def P18336211499687203081.Spec : Prop :=
  ∀ n, P18336211499687203081.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P8826077273253053810

`A064741(A064664(n+1))`
-/

namespace A061395.P8826077273253053810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064741 (A064664 (n + 1)).toNat

end

end A061395.P8826077273253053810

namespace A061395

/-- `A064741(A064664(n+1))` -/
def P8826077273253053810.Spec : Prop :=
  ∀ n, P8826077273253053810.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P5144528932461310926

`A065770(A088835(n+1))`
-/

namespace A061395.P5144528932461310926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A088835 (n + 1)).toNat

end

end A061395.P5144528932461310926

namespace A061395

/-- `A065770(A088835(n+1))` -/
def P5144528932461310926.Spec : Prop :=
  ∀ n, P5144528932461310926.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P868335378823260700

`A065770(A109395(n+1))`
-/

namespace A061395.P868335378823260700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A109395 (n + 1)).toNat

end

end A061395.P868335378823260700

namespace A061395

/-- `A065770(A109395(n+1))` -/
def P868335378823260700.Spec : Prop :=
  ∀ n, P868335378823260700.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P2023200905024414666

`A079067(A117366(n+1))`
-/

namespace A061395.P2023200905024414666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A117366 (n + 1)).toNat

end

end A061395.P2023200905024414666

namespace A061395

/-- `A079067(A117366(n+1))` -/
def P2023200905024414666.Spec : Prop :=
  ∀ n, P2023200905024414666.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P2266821631131634654

`A332899(A108548(n+1))`
-/

namespace A061395.P2266821631131634654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (A108548 (n + 1)).toNat

end

end A061395.P2266821631131634654

namespace A061395

/-- `A332899(A108548(n+1))` -/
def P2266821631131634654.Spec : Prop :=
  ∀ n, P2266821631131634654.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P1348574739761692618

`A346698(2*A006530(n+1))`
-/

namespace A061395.P1348574739761692618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A006530 (n + 1)).toNat

end

end A061395.P1348574739761692618

namespace A061395

/-- `A346698(2*A006530(n+1))` -/
def P1348574739761692618.Spec : Prop :=
  ∀ n, P1348574739761692618.a n = A061395 (n + 1)

end A061395

/-! ## A061395.P6384188496014828385

`A252735(n+1)+A057427(n)`
-/

namespace A061395.P6384188496014828385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1) + A057427 n

end

end A061395.P6384188496014828385

namespace A061395

/-- `A252735(n+1)+A057427(n)` -/
def P6384188496014828385.Spec : Prop :=
  ∀ n, P6384188496014828385.a n = A061395 (n + 1)

end A061395

/-!
# A061396: Number of "rooted index-functional forests" (Riffs) on n nodes. Number of "rooted odd trees with only exponent symmetries" (Rotes) on 2n+1 nodes.

The programs for A061396, there is no canonical definition to state claims against.
-/

/-! ## A061396.P16077384259312935575

`∑[A112872(abs(1-n))]`
-/

namespace A061396.P16077384259312935575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112872 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061396.P16077384259312935575

/-! ## A061396.P16763653100455958428

`A112872(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A061396.P16763653100455958428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112872 (n - 1) + a (n - 1)

end

end A061396.P16763653100455958428

/-! ## A061396.P3045639630532959289

`∑[A112872(n)]+1-A112872(n)`
-/

namespace A061396.P3045639630532959289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A112872 n)

end

end A061396.P3045639630532959289

/-! ## A061396.P8479351359726213601

`A192497(n)-A002262(A111432(n))`
-/

namespace A061396.P8479351359726213601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192497 n - A002262 (A111432 n).toNat

end

end A061396.P8479351359726213601

/-! ## A061396.P7969893565170647286

`A230823(n)-A326523(A217555(n+1))`
-/

namespace A061396.P7969893565170647286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230823 n - A326523 (A217555 (n + 1)).toNat

end

end A061396.P7969893565170647286

/-!
# A061397: Characteristic function sequence of primes multiplied componentwise by N, the natural numbers.

The programs for A061397, the canonical program `A061397.P17730824645895443051` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061397 has offset 1).

The definition of A061397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061397.P17730824645895443051

`A010051(n+1)*A000027(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061397

/-- `A010051(n+1)*A000027(n+1)` -/
def P17730824645895443051.Spec : Prop :=
  ∀ n, P17730824645895443051.a n = A061397 (n + 1)

theorem P17730824645895443051.correct : P17730824645895443051.Spec := by
  intro n
  simp only [A061397, Nat.add_sub_cancel]

end A061397

/-! ## A061397.P6538772451571322603

`∑{p}[n+1, C(#, n)]`
-/

namespace A061397.P6538772451571322603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n

end

end A061397.P6538772451571322603

namespace A061397

/-- `∑{p}[n+1, C(#, n)]` -/
def P6538772451571322603.Spec : Prop :=
  ∀ n, (P6538772451571322603.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P5002244595523617530

`∑{p}[n+1, floor(#^(#-n))]`
-/

namespace A061397.P5002244595523617530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋

end

end A061397.P5002244595523617530

namespace A061397

/-- `∑{p}[n+1, floor(#^(#-n))]` -/
def P5002244595523617530.Spec : Prop :=
  ∀ n, P5002244595523617530.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P13901956448825789022

`round(∑{p}[n+1, (n+1)^(#-n)])`
-/

namespace A061397.P13901956448825789022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ))

end

end A061397.P13901956448825789022

namespace A061397

/-- `round(∑{p}[n+1, (n+1)^(#-n)])` -/
def P13901956448825789022.Spec : Prop :=
  ∀ n, P13901956448825789022.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P2006725988216368115

`(n+1)*∑{p}[n+1, val(#, n+1)]`
-/

namespace A061397.P2006725988216368115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1))

end

end A061397.P2006725988216368115

namespace A061397

/-- `(n+1)*∑{p}[n+1, val(#, n+1)]` -/
def P2006725988216368115.Spec : Prop :=
  ∀ n, (P2006725988216368115.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P505825769373889197

`∏{p}[n+1, C(#, n)]%(2*n+1)`
-/

namespace A061397.P505825769373889197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) % (2 * n + 1)

end

end A061397.P505825769373889197

namespace A061397

/-- `∏{p}[n+1, C(#, n)]%(2*n+1)` -/
def P505825769373889197.Spec : Prop :=
  ∀ n, (P505825769373889197.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P17110326767146045761

`(n+1)*∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A061397.P17110326767146045761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋)

end

end A061397.P17110326767146045761

namespace A061397

/-- `(n+1)*∑{p}[n+1, floor(#/(n+1))]` -/
def P17110326767146045761.Spec : Prop :=
  ∀ n, P17110326767146045761.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P6605245478485807775

`((n+1)^∑{e}[n+1, #])%(n+1)²`
-/

namespace A061397.P6605245478485807775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % (n + 1) ^ 2

end

end A061397.P6605245478485807775

namespace A061397

/-- `((n+1)^∑{e}[n+1, #])%(n+1)²` -/
def P6605245478485807775.Spec : Prop :=
  ∀ n, (P6605245478485807775.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P1200059528143850754

`∏{e}[n+1, (n+1)^#]%(n+1)²`
-/

namespace A061397.P1200059528143850754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p) % (n + 1) ^ 2

end

end A061397.P1200059528143850754

namespace A061397

/-- `∏{e}[n+1, (n+1)^#]%(n+1)²` -/
def P1200059528143850754.Spec : Prop :=
  ∀ n, (P1200059528143850754.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P14369645626675967354

`(n+1)*round(∑{p}[n+1, #/(2*n+1)])`
-/

namespace A061397.P14369645626675967354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n + 1 : ℚ))

end

end A061397.P14369645626675967354

namespace A061397

/-- `(n+1)*round(∑{p}[n+1, #/(2*n+1)])` -/
def P14369645626675967354.Spec : Prop :=
  ∀ n, P14369645626675967354.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P13525540790051949153

`∑{d}[n+1, A137851(#)]`
-/

namespace A061397.P13525540790051949153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d

end

end A061397.P13525540790051949153

namespace A061397

/-- `∑{d}[n+1, A137851(#)]` -/
def P13525540790051949153.Spec : Prop :=
  ∀ n, P13525540790051949153.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P18353038297771577514

`n+1-Δ[A101203(n)]`
-/

namespace A061397.P18353038297771577514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A061397.P18353038297771577514

namespace A061397

/-- `n+1-Δ[A101203(n)]` -/
def P18353038297771577514.Spec : Prop :=
  ∀ n, P18353038297771577514.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P10158899928893067810

`A143545(n+1)-(n+1)`
-/

namespace A061397.P10158899928893067810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1) - (n + 1 : ℤ)

end

end A061397.P10158899928893067810

namespace A061397

/-- `A143545(n+1)-(n+1)` -/
def P10158899928893067810.Spec : Prop :=
  ∀ n, P10158899928893067810.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P474529918355700091

`1-A191558(n+1)+n`
-/

namespace A061397.P474529918355700091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A191558 (n + 1) + (n : ℤ)

end

end A061397.P474529918355700091

namespace A061397

/-- `1-A191558(n+1)+n` -/
def P474529918355700091.Spec : Prop :=
  ∀ n, P474529918355700091.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P12547980839988584060

`(n+1)*A010051(n+1)`
-/

namespace A061397.P12547980839988584060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (n + 1)

end

end A061397.P12547980839988584060

namespace A061397

/-- `(n+1)*A010051(n+1)` -/
def P12547980839988584060.Spec : Prop :=
  ∀ n, P12547980839988584060.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P7379240013763864409

`(n+1)%A014683(n+1)`
-/

namespace A061397.P7379240013763864409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014683 (n + 1))

end

end A061397.P7379240013763864409

namespace A061397

/-- `(n+1)%A014683(n+1)` -/
def P7379240013763864409.Spec : Prop :=
  ∀ n, P7379240013763864409.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P454820207730048785

`A113636(n+1)%(n+2)`
-/

namespace A061397.P454820207730048785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113636 (n + 1)) (n + 2 : ℤ)

end

end A061397.P454820207730048785

namespace A061397

/-- `A113636(n+1)%(n+2)` -/
def P454820207730048785.Spec : Prop :=
  ∀ n, P454820207730048785.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P4743677356502938771

`lcm(n+1, A129950(n+1))`
-/

namespace A061397.P4743677356502938771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A129950 (n + 1))

end

end A061397.P4743677356502938771

namespace A061397

/-- `lcm(n+1, A129950(n+1))` -/
def P4743677356502938771.Spec : Prop :=
  ∀ n, (P4743677356502938771.a n : ℤ) = A061397 (n + 1)

end A061397

/-! ## A061397.P11959752237806573457

`∑{d}[A089026(n+1), #]-1`
-/

namespace A061397.P11959752237806573457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A061397.P11959752237806573457

namespace A061397

/-- `∑{d}[A089026(n+1), #]-1` -/
def P11959752237806573457.Spec : Prop :=
  ∀ n, P11959752237806573457.a n = A061397 (n + 1)

end A061397

/-! ## A061397.P3956238720384015853

`(n+1)*(1-A005171(n+1))`
-/

namespace A061397.P3956238720384015853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A005171 (n + 1))

end

end A061397.P3956238720384015853

namespace A061397

/-- `(n+1)*(1-A005171(n+1))` -/
def P3956238720384015853.Spec : Prop :=
  ∀ n, P3956238720384015853.a n = A061397 (n + 1)

end A061397

/-!
# A061398: Number of squarefree integers between prime(n) and prime(n+1).

The programs for A061398, the canonical program `A061398.P14693318756630178419` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061398 has offset 1).

The definition of A061398 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061398.P8456557883536397438

`A373198(n+1)-1`
-/

namespace A061398.P8456557883536397438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (n + 1) - 1

end

end A061398.P8456557883536397438

namespace A061398

/-- `A373198(n+1)-1` -/
def P8456557883536397438.Spec : Prop :=
  ∀ n, P8456557883536397438.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P14693318756630178419

`A013928(A000040(n+2))-A013928(A000040(n+1))-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061398

/-- `A013928(A000040(n+2))-A013928(A000040(n+1))-1` -/
def P14693318756630178419.Spec : Prop :=
  ∀ n, P14693318756630178419.a n = A061398 (n + 1)

theorem P14693318756630178419.correct : P14693318756630178419.Spec := by
  intro n
  simp only [A061398, Nat.add_sub_cancel]

end A061398

/-! ## A061398.P12433857994068114648

`A046933(n+1)-A061399(n+1)`
-/

namespace A061398.P12433857994068114648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A061399 (n + 1)

end

end A061398.P12433857994068114648

namespace A061398

/-- `A046933(n+1)-A061399(n+1)` -/
def P12433857994068114648.Spec : Prop :=
  ∀ n, P12433857994068114648.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P6478100513594467060

`A368748(n+1)-A373643(n+1)`
-/

namespace A061398.P6478100513594467060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368748 (n + 1) - A373643 (n + 1)

end

end A061398.P6478100513594467060

namespace A061398

/-- `A368748(n+1)-A373643(n+1)` -/
def P6478100513594467060.Spec : Prop :=
  ∀ n, P6478100513594467060.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P8642196531523007436

`A001223(n+1)-(A061399(n+1)+1)`
-/

namespace A061398.P8642196531523007436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A061399 (n + 1) + 1)

end

end A061398.P8642196531523007436

namespace A061398

/-- `A001223(n+1)-(A061399(n+1)+1)` -/
def P8642196531523007436.Spec : Prop :=
  ∀ n, P8642196531523007436.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P3493415554875708258

`(A100803(n+1)-1)/2-A061399(n+1)`
-/

namespace A061398.P3493415554875708258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100803 (n + 1) - 1 : ℚ) / 2 - (A061399 (n + 1) : ℚ)

end

end A061398.P3493415554875708258

namespace A061398

/-- `(A100803(n+1)-1)/2-A061399(n+1)` -/
def P3493415554875708258.Spec : Prop :=
  ∀ n, P3493415554875708258.a n = (A061398 (n + 1) : ℚ)

end A061398

/-! ## A061398.P9162521076006572693

`Δ[A001749(n+1)/4]-1-A061399(n+1)`
-/

namespace A061398.P9162521076006572693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 - (A061399 (n + 1) : ℚ)

end

end A061398.P9162521076006572693

namespace A061398

/-- `Δ[A001749(n+1)/4]-1-A061399(n+1)` -/
def P9162521076006572693.Spec : Prop :=
  ∀ n, P9162521076006572693.a n = (A061398 (n + 1) : ℚ)

end A061398

/-! ## A061398.P5996788721060312818

`A080101(n+1)+A368748(n+1)-A061399(n+1)`
-/

namespace A061398.P5996788721060312818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (n + 1) + (A368748 (n + 1) - A061399 (n + 1))

end

end A061398.P5996788721060312818

namespace A061398

/-- `A080101(n+1)+A368748(n+1)-A061399(n+1)` -/
def P5996788721060312818.Spec : Prop :=
  ∀ n, P5996788721060312818.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P12785972495478323748

`Δ[A337030(n+1)]`
-/

namespace A061398.P12785972495478323748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061398.P12785972495478323748

namespace A061398

/-- `Δ[A337030(n+1)]` -/
def P12785972495478323748.Spec : Prop :=
  ∀ n, P12785972495478323748.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P1758758720550616004

`Δ[A071403(n+1)]-1`
-/

namespace A061398.P1758758720550616004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A061398.P1758758720550616004

namespace A061398

/-- `Δ[A071403(n+1)]-1` -/
def P1758758720550616004.Spec : Prop :=
  ∀ n, P1758758720550616004.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P5411149018212589399

`Δ[A112929(n+1)]-1`
-/

namespace A061398.P5411149018212589399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A061398.P5411149018212589399

namespace A061398

/-- `Δ[A112929(n+1)]-1` -/
def P5411149018212589399.Spec : Prop :=
  ∀ n, P5411149018212589399.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P391508367649663994

`Δ[A112930(n+1)]-1`
-/

namespace A061398.P391508367649663994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A061398.P391508367649663994

namespace A061398

/-- `Δ[A112930(n+1)]-1` -/
def P391508367649663994.Spec : Prop :=
  ∀ n, P391508367649663994.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P7667609698692427071

`A023443(Δ[A112929(n+1)])`
-/

namespace A061398.P7667609698692427071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A061398.P7667609698692427071

namespace A061398

/-- `A023443(Δ[A112929(n+1)])` -/
def P7667609698692427071.Spec : Prop :=
  ∀ n, P7667609698692427071.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P9867893939859997321

`A023443(Δ[A112930(n+1)])`
-/

namespace A061398.P9867893939859997321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A061398.P9867893939859997321

namespace A061398

/-- `A023443(Δ[A112930(n+1)])` -/
def P9867893939859997321.Spec : Prop :=
  ∀ n, P9867893939859997321.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P18233507795790762796

`A112929(n+2)-A071403(n+1)`
-/

namespace A061398.P18233507795790762796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 2) - A071403 (n + 1)

end

end A061398.P18233507795790762796

namespace A061398

/-- `A112929(n+2)-A071403(n+1)` -/
def P18233507795790762796.Spec : Prop :=
  ∀ n, P18233507795790762796.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P17935486893461193258

`A337030(n+2)-A337030(n+1)`
-/

namespace A061398.P17935486893461193258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 2) - A337030 (n + 1)

end

end A061398.P17935486893461193258

namespace A061398

/-- `A337030(n+2)-A337030(n+1)` -/
def P17935486893461193258.Spec : Prop :=
  ∀ n, P17935486893461193258.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P13712236378332386937

`A071403(n+2)-(A071403(n+1)+1)`
-/

namespace A061398.P13712236378332386937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 2) - (A071403 (n + 1) + 1)

end

end A061398.P13712236378332386937

namespace A061398

/-- `A071403(n+2)-(A071403(n+1)+1)` -/
def P13712236378332386937.Spec : Prop :=
  ∀ n, P13712236378332386937.a n = A061398 (n + 1)

end A061398

/-! ## A061398.P4127732949214796413

`A014689(n+2)-(A061399(n+1)+A014689(n+1))`
-/

namespace A061398.P4127732949214796413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 2) - (A061399 (n + 1) + A014689 (n + 1))

end

end A061398.P4127732949214796413

namespace A061398

/-- `A014689(n+2)-(A061399(n+1)+A014689(n+1))` -/
def P4127732949214796413.Spec : Prop :=
  ∀ n, P4127732949214796413.a n = A061398 (n + 1)

end A061398

/-!
# A061399: Number of nonsquarefree integers between primes prime(n) and prime(n+1).

The programs for A061399, the canonical program `A061399.P875585814381713750` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061399 has offset 1).

The definition of A061399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061399.P11579953895386646596

`A373643(n+1)+A080101(n+1)`
-/

namespace A061399.P11579953895386646596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373643 (n + 1) + A080101 (n + 1)

end

end A061399.P11579953895386646596

namespace A061399

/-- `A373643(n+1)+A080101(n+1)` -/
def P11579953895386646596.Spec : Prop :=
  ∀ n, P11579953895386646596.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P875585814381713750

`A046933(n+1)-A061398(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061399

/-- `A046933(n+1)-A061398(n+1)` -/
def P875585814381713750.Spec : Prop :=
  ∀ n, P875585814381713750.a n = A061399 (n + 1)

theorem P875585814381713750.correct : P875585814381713750.Spec := by
  intro n
  simp only [A061399, Nat.add_sub_cancel]

end A061399

/-! ## A061399.P15518792287269535777

`A001223(n+1)-A373198(n+1)`
-/

namespace A061399.P15518792287269535777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A373198 (n + 1)

end

end A061399.P15518792287269535777

namespace A061399

/-- `A001223(n+1)-A373198(n+1)` -/
def P15518792287269535777.Spec : Prop :=
  ∀ n, P15518792287269535777.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P4111722439485553777

`A001223(n+1)-(A061398(n+1)+1)`
-/

namespace A061399.P4111722439485553777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A061398 (n + 1) + 1)

end

end A061399.P4111722439485553777

namespace A061399

/-- `A001223(n+1)-(A061398(n+1)+1)` -/
def P4111722439485553777.Spec : Prop :=
  ∀ n, P4111722439485553777.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P12789036921399624555

`A054541(n+2)-A373198(n+1)`
-/

namespace A061399.P12789036921399624555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) - A373198 (n + 1)

end

end A061399.P12789036921399624555

namespace A061399

/-- `A054541(n+2)-A373198(n+1)` -/
def P12789036921399624555.Spec : Prop :=
  ∀ n, P12789036921399624555.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P14094877302208889921

`Δ[A000040(n+1)-A071403(n+1)]`
-/

namespace A061399.P14094877302208889921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A071403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P14094877302208889921

namespace A061399

/-- `Δ[A000040(n+1)-A071403(n+1)]` -/
def P14094877302208889921.Spec : Prop :=
  ∀ n, P14094877302208889921.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P297984606727969313

`Δ[A000040(n+1)-A112929(n+1)]`
-/

namespace A061399.P297984606727969313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P297984606727969313

namespace A061399

/-- `Δ[A000040(n+1)-A112929(n+1)]` -/
def P297984606727969313.Spec : Prop :=
  ∀ n, P297984606727969313.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P8485946653714457064

`Δ[A000040(n+1)-A112930(n+1)]`
-/

namespace A061399.P8485946653714457064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P8485946653714457064

namespace A061399

/-- `Δ[A000040(n+1)-A112930(n+1)]` -/
def P8485946653714457064.Spec : Prop :=
  ∀ n, P8485946653714457064.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P10843624678914067953

`Δ[A006093(n+1)-A112930(n+1)]`
-/

namespace A061399.P10843624678914067953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P10843624678914067953

namespace A061399

/-- `Δ[A006093(n+1)-A112930(n+1)]` -/
def P10843624678914067953.Spec : Prop :=
  ∀ n, P10843624678914067953.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P9649401824289935082

`Δ[A000040(n+1)]-(A061398(n+1)+1)`
-/

namespace A061399.P9649401824289935082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A061398 (n + 1) + 1)

end

end A061399.P9649401824289935082

namespace A061399

/-- `Δ[A000040(n+1)]-(A061398(n+1)+1)` -/
def P9649401824289935082.Spec : Prop :=
  ∀ n, P9649401824289935082.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P8449117515908385183

`A138383(n+1)-(A373198(n+1)+A371201(n+1))`
-/

namespace A061399.P8449117515908385183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1) - (A373198 (n + 1) + A371201 (n + 1))

end

end A061399.P8449117515908385183

namespace A061399

/-- `A138383(n+1)-(A373198(n+1)+A371201(n+1))` -/
def P8449117515908385183.Spec : Prop :=
  ∀ n, P8449117515908385183.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P3668565985292471914

`A001223(n+1)+A071403(n+1)-A071403(n+2)`
-/

namespace A061399.P3668565985292471914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A071403 (n + 1) - A071403 (n + 2))

end

end A061399.P3668565985292471914

namespace A061399

/-- `A001223(n+1)+A071403(n+1)-A071403(n+2)` -/
def P3668565985292471914.Spec : Prop :=
  ∀ n, P3668565985292471914.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P15614026089938560972

`Δ[∑{d}[A000040(n+1), #%A013928(#+1)]]`
-/

namespace A061399.P15614026089938560972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Int.tmod (d : ℤ) (A013928 (d + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P15614026089938560972

namespace A061399

/-- `Δ[∑{d}[A000040(n+1), #%A013928(#+1)]]` -/
def P15614026089938560972.Spec : Prop :=
  ∀ n, P15614026089938560972.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P2333124158227052857

`Δ[A057627(Δ[A007504(n)])]`
-/

namespace A061399.P2333124158227052857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P2333124158227052857

namespace A061399

/-- `Δ[A057627(Δ[A007504(n)])]` -/
def P2333124158227052857.Spec : Prop :=
  ∀ n, P2333124158227052857.a n = A061399 (n + 1)

end A061399

/-! ## A061399.P7104837204115764104

`Δ[A057627(A000040(n+1))]`
-/

namespace A061399.P7104837204115764104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061399.P7104837204115764104

namespace A061399

/-- `Δ[A057627(A000040(n+1))]` -/
def P7104837204115764104.Spec : Prop :=
  ∀ n, P7104837204115764104.a n = A061399 (n + 1)

end A061399

