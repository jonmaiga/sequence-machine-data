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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
# A080400: Largest squarefree number dividing phi(n).

The programs for A080400, the canonical program `A080400.P13567147294335765646` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080400 has offset 1).

The definition of A080400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080400.P13567147294335765646

`A007947(A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080400

/-- `A007947(A000010(n+1))` -/
def P13567147294335765646.Spec : Prop :=
  ∀ n, P13567147294335765646.a n = A080400 (n + 1)

theorem P13567147294335765646.correct : P13567147294335765646.Spec := by
  intro n
  simp only [A080400, Nat.add_sub_cancel]

end A080400

/-! ## A080400.P2432711455777361687

`A007947(A002322(n+1))`
-/

namespace A080400.P2432711455777361687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002322 (n + 1)).toNat

end

end A080400.P2432711455777361687

namespace A080400

/-- `A007947(A002322(n+1))` -/
def P2432711455777361687.Spec : Prop :=
  ∀ n, P2432711455777361687.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P2657183377671583593

`∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]`
-/

namespace A080400.P2657183377671583593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080400.P2657183377671583593

namespace A080400

/-- `∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]` -/
def P2657183377671583593.Spec : Prop :=
  ∀ n, (P2657183377671583593.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P1178770365717803127

`∏{p}[Δ[A002088(n)], #]`
-/

namespace A080400.P1178770365717803127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P1178770365717803127

namespace A080400

/-- `∏{p}[Δ[A002088(n)], #]` -/
def P1178770365717803127.Spec : Prop :=
  ∀ n, (P1178770365717803127.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P13400050464389420041

`∏{p}[Δ[A005728(n)], #]`
-/

namespace A080400.P13400050464389420041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P13400050464389420041

namespace A080400

/-- `∏{p}[Δ[A005728(n)], #]` -/
def P13400050464389420041.Spec : Prop :=
  ∀ n, (P13400050464389420041.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P18015329657655994538

`∏{p}[A011773(n+1), #]`
-/

namespace A080400.P18015329657655994538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P18015329657655994538

namespace A080400

/-- `∏{p}[A011773(n+1), #]` -/
def P18015329657655994538.Spec : Prop :=
  ∀ n, (P18015329657655994538.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P8483296318457994002

`∏{p}[A277030(n+1), #]`
-/

namespace A080400.P8483296318457994002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P8483296318457994002

namespace A080400

/-- `∏{p}[A277030(n+1), #]` -/
def P8483296318457994002.Spec : Prop :=
  ∀ n, (P8483296318457994002.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P10489695039922834587

`∏{p}[A322321(n+1), #]`
-/

namespace A080400.P10489695039922834587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P10489695039922834587

namespace A080400

/-- `∏{p}[A322321(n+1), #]` -/
def P10489695039922834587.Spec : Prop :=
  ∀ n, (P10489695039922834587.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P11380403106227783502

`∏{p}[A109606(n+1)+1, #]`
-/

namespace A080400.P11380403106227783502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P11380403106227783502

namespace A080400

/-- `∏{p}[A109606(n+1)+1, #]` -/
def P11380403106227783502.Spec : Prop :=
  ∀ n, (P11380403106227783502.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P16921276431753305748

`∏{p}[1-A039649(n+1), #]`
-/

namespace A080400.P16921276431753305748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P16921276431753305748

namespace A080400

/-- `∏{p}[1-A039649(n+1), #]` -/
def P16921276431753305748.Spec : Prop :=
  ∀ n, (P16921276431753305748.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P15071363496190930786

`∏{p}[1-A263027(n+1), #]`
-/

namespace A080400.P15071363496190930786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A263027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P15071363496190930786

namespace A080400

/-- `∏{p}[1-A263027(n+1), #]` -/
def P15071363496190930786.Spec : Prop :=
  ∀ n, (P15071363496190930786.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P4846232426997341599

`∏{p}[A349137(2*n+1), #]`
-/

namespace A080400.P4846232426997341599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P4846232426997341599

namespace A080400

/-- `∏{p}[A349137(2*n+1), #]` -/
def P4846232426997341599.Spec : Prop :=
  ∀ n, (P4846232426997341599.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P15371044532296334113

`∏{p}[A219428(n+1)-n, #]`
-/

namespace A080400.P15371044532296334113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080400.P15371044532296334113

namespace A080400

/-- `∏{p}[A219428(n+1)-n, #]` -/
def P15371044532296334113.Spec : Prop :=
  ∀ n, (P15371044532296334113.a n : ℤ) = A080400 (n + 1)

end A080400

/-! ## A080400.P14159356160756973368

`A007947(Δ[A002088(n)])`
-/

namespace A080400.P14159356160756973368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (n + 1) - f1 n).toNat

end

end A080400.P14159356160756973368

namespace A080400

/-- `A007947(Δ[A002088(n)])` -/
def P14159356160756973368.Spec : Prop :=
  ∀ n, P14159356160756973368.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P13019218390504467399

`A007947(A011773(n+1))`
-/

namespace A080400.P13019218390504467399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011773 (n + 1)).toNat

end

end A080400.P13019218390504467399

namespace A080400

/-- `A007947(A011773(n+1))` -/
def P13019218390504467399.Spec : Prop :=
  ∀ n, P13019218390504467399.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P7223688349739698487

`A007947(A322321(n+1))`
-/

namespace A080400.P7223688349739698487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A322321 (n + 1)).toNat

end

end A080400.P7223688349739698487

namespace A080400

/-- `A007947(A322321(n+1))` -/
def P7223688349739698487.Spec : Prop :=
  ∀ n, P7223688349739698487.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P17855239503514278769

`A007947(n-A219428(n+1))`
-/

namespace A080400.P17855239503514278769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A080400.P17855239503514278769

namespace A080400

/-- `A007947(n-A219428(n+1))` -/
def P17855239503514278769.Spec : Prop :=
  ∀ n, P17855239503514278769.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P13084794926368182673

`A007947(n+1-A051953(n+1))`
-/

namespace A080400.P13084794926368182673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A080400.P13084794926368182673

namespace A080400

/-- `A007947(n+1-A051953(n+1))` -/
def P13084794926368182673.Spec : Prop :=
  ∀ n, P13084794926368182673.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P18320851092108468209

`A007947(A002618(n+1)/(n+1))`
-/

namespace A080400.P18320851092108468209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A080400.P18320851092108468209

namespace A080400

/-- `A007947(A002618(n+1)/(n+1))` -/
def P18320851092108468209.Spec : Prop :=
  ∀ n, P18320851092108468209.a n = A080400 (n + 1)

end A080400

/-! ## A080400.P9484903527944215844

`A089384(A140434(n+1))`
-/

namespace A080400.P9484903527944215844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (A140434 (n + 1)).toNat

end

end A080400.P9484903527944215844

namespace A080400

/-- `A089384(A140434(n+1))` -/
def P9484903527944215844.Spec : Prop :=
  ∀ n, P9484903527944215844.a n = A080400 (n + 1)

end A080400

/-!
# A080401: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is squarefree.

The programs for A080401, the canonical program `A080401.P8518956413726012276` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080401 has offset 1).

The definition of A080401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080401.P8518956413726012276

`lt[n², A080399(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080401

/-- `lt[n², A080399(n+1)]+1` -/
def P8518956413726012276.Spec : Prop :=
  ∀ n, (P8518956413726012276.a n : ℤ) = A080401 (n + 1)

theorem P8518956413726012276.correct : P8518956413726012276.Spec := by
  intro n
  simp only [A080401, Nat.add_sub_cancel]

end A080401

/-! ## A080401.P2773602177185038334

`eq[A001157(n+1), A080399(n+1)]+1`
-/

namespace A080401.P2773602177185038334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080401.P2773602177185038334

namespace A080401

/-- `eq[A001157(n+1), A080399(n+1)]+1` -/
def P2773602177185038334.Spec : Prop :=
  ∀ n, (P2773602177185038334.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P7276192226558783804

`eq[A328259(n+1)/(n+1), A080399(n+1)]+1`
-/

namespace A080401.P7276192226558783804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A080401.P7276192226558783804

namespace A080401

/-- `eq[A328259(n+1)/(n+1), A080399(n+1)]+1` -/
def P7276192226558783804.Spec : Prop :=
  ∀ n, (P7276192226558783804.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P704899615595733129

`eq[A158274(n+1)*A179931(n+1), A080399(n+1)]+1`
-/

namespace A080401.P704899615595733129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (n + 1) * A179931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080401.P704899615595733129

namespace A080401

/-- `eq[A158274(n+1)*A179931(n+1), A080399(n+1)]+1` -/
def P704899615595733129.Spec : Prop :=
  ∀ n, (P704899615595733129.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P13706054262493716999

`lt[∏{e}[A001157(n+1), #], 2]+1`
-/

namespace A080401.P13706054262493716999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A080401.P13706054262493716999

namespace A080401

/-- `lt[∏{e}[A001157(n+1), #], 2]+1` -/
def P13706054262493716999.Spec : Prop :=
  ∀ n, (P13706054262493716999.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P12499461261295398031

`record[(n+1)*A008966(∑{d}[n+1, #²])]`
-/

namespace A080401.P12499461261295398031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008966 (∑ d ∈ Nat.divisors (f2 n), d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P12499461261295398031

namespace A080401

/-- `record[(n+1)*A008966(∑{d}[n+1, #²])]` -/
def P12499461261295398031.Spec : Prop :=
  ∀ n, P12499461261295398031.a n = A080401 (n + 1)

end A080401

/-! ## A080401.P10888560267469358980

`lt[n², A007913(∑{d}[n+1, #²])]+1`
-/

namespace A080401.P10888560267469358980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f3 n), d ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080401.P10888560267469358980

namespace A080401

/-- `lt[n², A007913(∑{d}[n+1, #²])]+1` -/
def P10888560267469358980.Spec : Prop :=
  ∀ n, (P10888560267469358980.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P13211525950109636414

`record[lcm(n+1, A008683(∑{d}[n+1, #²]))]`
-/

namespace A080401.P13211525950109636414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (∑ d ∈ Nat.divisors (f2 n), d ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P13211525950109636414

namespace A080401

/-- `record[lcm(n+1, A008683(∑{d}[n+1, #²]))]` -/
def P13211525950109636414.Spec : Prop :=
  ∀ n, (P13211525950109636414.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P14415116100673789485

`eq[1, A008833(A001157(n+1))]+1`
-/

namespace A080401.P14415116100673789485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A001157 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080401.P14415116100673789485

namespace A080401

/-- `eq[1, A008833(A001157(n+1))]+1` -/
def P14415116100673789485.Spec : Prop :=
  ∀ n, (P14415116100673789485.a n : ℤ) = A080401 (n + 1)

end A080401

/-! ## A080401.P837742407607812967

`record[A000027(n+1)*A008966(A001157(n+1))]`
-/

namespace A080401.P837742407607812967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A008966 (A001157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P837742407607812967

namespace A080401

/-- `record[A000027(n+1)*A008966(A001157(n+1))]` -/
def P837742407607812967.Spec : Prop :=
  ∀ n, P837742407607812967.a n = A080401 (n + 1)

end A080401

/-! ## A080401.P9421674595695751834

`record[A008683(A001157(n+1))²*A008619(2*n)]`
-/

namespace A080401.P9421674595695751834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001157 (n + 1)).toNat ^ 2 * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P9421674595695751834

namespace A080401

/-- `record[A008683(A001157(n+1))²*A008619(2*n)]` -/
def P9421674595695751834.Spec : Prop :=
  ∀ n, P9421674595695751834.a n = A080401 (n + 1)

end A080401

/-! ## A080401.P18060888879681739449

`record[A008683(A001157(n+1))²*A028242(2*n)]`
-/

namespace A080401.P18060888879681739449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001157 (n + 1)).toNat ^ 2 * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P18060888879681739449

namespace A080401

/-- `record[A008683(A001157(n+1))²*A028242(2*n)]` -/
def P18060888879681739449.Spec : Prop :=
  ∀ n, P18060888879681739449.a n = A080401 (n + 1)

end A080401

/-! ## A080401.P1669469142039712178

`record[A008683(A001157(n+1))²*A029579(2*n)]`
-/

namespace A080401.P1669469142039712178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001157 (n + 1)).toNat ^ 2 * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P1669469142039712178

namespace A080401

/-- `record[A008683(A001157(n+1))²*A029579(2*n)]` -/
def P1669469142039712178.Spec : Prop :=
  ∀ n, P1669469142039712178.a n = A080401 (n + 1)

end A080401

/-! ## A080401.P2391483900969768209

`record[A008683(A001157(n+1))²*A080513(2*n)]`
-/

namespace A080401.P2391483900969768209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001157 (n + 1)).toNat ^ 2 * A080513 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080401.P2391483900969768209

namespace A080401

/-- `record[A008683(A001157(n+1))²*A080513(2*n)]` -/
def P2391483900969768209.Spec : Prop :=
  ∀ n, P2391483900969768209.a n = A080401 (n + 1)

end A080401

/-!
# A080402: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is not squarefree.

The programs for A080402, the canonical program `A080402.P17243358011621989898` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080402 has offset 1).

The definition of A080402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080402.P17243358011621989898

`lt[A080399(n+1), n²]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080402

/-- `lt[A080399(n+1), n²]+1` -/
def P17243358011621989898.Spec : Prop :=
  ∀ n, (P17243358011621989898.a n : ℤ) = A080402 (n + 1)

theorem P17243358011621989898.correct : P17243358011621989898.Spec := by
  intro n
  simp only [A080402, Nat.add_sub_cancel]

end A080402

/-! ## A080402.P12870122268549749711

`eq[char[A080401(n+1)], A000007(n)]`
-/

namespace A080402.P12870122268549749711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080402.P12870122268549749711

namespace A080402

/-- `eq[char[A080401(n+1)], A000007(n)]` -/
def P12870122268549749711.Spec : Prop :=
  ∀ n, (P12870122268549749711.a n : ℤ) = A080402 (n + 1)

end A080402

/-! ## A080402.P5413414373393067043

`eq[char[A080401(n+1)], A000038(n)]`
-/

namespace A080402.P5413414373393067043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080402.P5413414373393067043

namespace A080402

/-- `eq[char[A080401(n+1)], A000038(n)]` -/
def P5413414373393067043.Spec : Prop :=
  ∀ n, (P5413414373393067043.a n : ℤ) = A080402 (n + 1)

end A080402

/-! ## A080402.P14078782636511347373

`eq[char[A080401(n+1)], A130706(n)]`
-/

namespace A080402.P14078782636511347373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080402.P14078782636511347373

namespace A080402

/-- `eq[char[A080401(n+1)], A130706(n)]` -/
def P14078782636511347373.Spec : Prop :=
  ∀ n, (P14078782636511347373.a n : ℤ) = A080402 (n + 1)

end A080402

/-! ## A080402.P6393959222348576945

`lt[1, ∏{e}[∑{d}[n, #²], #]]`
-/

namespace A080402.P6393959222348576945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080402.P6393959222348576945

namespace A080402

/-- `lt[1, ∏{e}[∑{d}[n, #²], #]]` -/
def P6393959222348576945.Spec : Prop :=
  ∀ n, (P6393959222348576945.a n : ℤ) = A080402 (n + 1)

end A080402

/-! ## A080402.P4557194006934612437

`lt[0, A001221(∏{e}[A001157(n+1), #])]+1`
-/

namespace A080402.P4557194006934612437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080402.P4557194006934612437

namespace A080402

/-- `lt[0, A001221(∏{e}[A001157(n+1), #])]+1` -/
def P4557194006934612437.Spec : Prop :=
  ∀ n, (P4557194006934612437.a n : ℤ) = A080402 (n + 1)

end A080402

/-! ## A080402.P2390981090592211396

`eq[0, A008683(A001157(n+1))]+1`
-/

namespace A080402.P2390981090592211396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001157 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080402.P2390981090592211396

namespace A080402

/-- `eq[0, A008683(A001157(n+1))]+1` -/
def P2390981090592211396.Spec : Prop :=
  ∀ n, (P2390981090592211396.a n : ℤ) = A080402 (n + 1)

end A080402

/-!
# A080403: Numbers n such that both A000203(n) and A001157(n) are squarefree: sum of divisors and squares of divisors of n are squarefree.

The programs for A080403, there is no canonical definition to state claims against.
-/

/-! ## A080403.P1643041311977221739

`∩[A065300(n+1), A080401(n+1)]`
-/

namespace A080403.P1643041311977221739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080403.P1643041311977221739

/-! ## A080403.P15976194212048620113

`∩[A080401(n+1), eq[n, A326044(n+1)]+1]`
-/

namespace A080403.P15976194212048620113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A080403.P15976194212048620113

/-! ## A080403.P3792300326692192353

`∩[A065300(n+1), lt[n², A080399(n+1)]+1]`
-/

namespace A080403.P3792300326692192353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A080403.P3792300326692192353

/-! ## A080403.P9420193149672586968

`eq[A005369(A143324(n+1)), A121238(n)]`
-/

namespace A080403.P9420193149672586968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A143324 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080403.P9420193149672586968

/-! ## A080403.P12160692155667286992

`A065300(lt[A058276(n), A343559(n+1)])`
-/

namespace A080403.P12160692155667286992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080403.P12160692155667286992

/-!
# A080404: a(n)=A007947[A055932(n)]; the sequence consists of primorial numbers;.

The programs for A080404, there is no canonical definition to state claims against.
-/

/-! ## A080404.P7021568454849613544

`A055932(n+2)/A397499(n+2)`
-/

namespace A080404.P7021568454849613544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 2) : ℚ) / (A397499 (n + 2) : ℚ)

end

end A080404.P7021568454849613544

/-! ## A080404.P16258022331607610068

`gcd(A055932(n+2), A319865(n+2))`
-/

namespace A080404.P16258022331607610068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055932 (n + 2)) (A319865 (n + 2))

end

end A080404.P16258022331607610068

/-! ## A080404.P899260174947923833

`∏{p}[A055932(n+2), #]`
-/

namespace A080404.P899260174947923833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080404.P899260174947923833

/-! ## A080404.P5396392715473352522

`A034386(A006530(A124833(n+2)))`
-/

namespace A080404.P5396392715473352522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A006530 (A124833 (n + 2)).toNat).toNat

end

end A080404.P5396392715473352522

/-! ## A080404.P8440590255274004849

`A329602(A006530(A124833(n+2))²)`
-/

namespace A080404.P8440590255274004849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A006530 (A124833 (n + 2)).toNat ^ 2).toNat

end

end A080404.P8440590255274004849

/-! ## A080404.P17478721638798959213

`∏{p}[record[A071364(n+2)], #]`
-/

namespace A080404.P17478721638798959213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080404.P17478721638798959213

/-! ## A080404.P15626538796180492416

`A007947(A055932(n+2))`
-/

namespace A080404.P15626538796180492416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A055932 (n + 2)).toNat

end

end A080404.P15626538796180492416

/-! ## A080404.P4191353736495200843

`A329602(A006530(A055932(n+2))²)`
-/

namespace A080404.P4191353736495200843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (A006530 (A055932 (n + 2)).toNat ^ 2).toNat

end

end A080404.P4191353736495200843

/-! ## A080404.P5305240016664787573

`filter[A379325(n+2), A322585(#)]`
-/

namespace A080404.P5305240016664787573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A080404.P5305240016664787573

/-! ## A080404.P5884697138704176454

`filter[A379325(n+2), A323509(#)]`
-/

namespace A080404.P5884697138704176454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A080404.P5884697138704176454

/-! ## A080404.P3198260232081627776

`filter[A379325(n+2), A137794(#)]`
-/

namespace A080404.P3198260232081627776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A080404.P3198260232081627776

/-! ## A080404.P16766608914516150839

`filter[A379325(n+2), A341629(#)]`
-/

namespace A080404.P16766608914516150839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A080404.P16766608914516150839

/-! ## A080404.P14072052596121134980

`filter[A379325(n+2), A389449(#)]`
-/

namespace A080404.P14072052596121134980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A080404.P14072052596121134980

/-! ## A080404.P10188474339665457380

`filter[A099985(n+1), A137794(#)]`
-/

namespace A080404.P10188474339665457380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A080404.P10188474339665457380

/-! ## A080404.P4806198210334287184

`filter[A099985(n+1), A322585(#)]`
-/

namespace A080404.P4806198210334287184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A080404.P4806198210334287184

/-! ## A080404.P6116911841683827665

`filter[A099985(n+1), A323509(#)]`
-/

namespace A080404.P6116911841683827665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A080404.P6116911841683827665

/-! ## A080404.P1450793236139302927

`filter[A099985(n+1), A331168(#)]`
-/

namespace A080404.P1450793236139302927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331168 (f1 j).toNat = 1) n)

end

end A080404.P1450793236139302927

/-! ## A080404.P13827506362586539107

`filter[A099985(n+1), A331281(#)]`
-/

namespace A080404.P13827506362586539107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A080404.P13827506362586539107

/-! ## A080404.P6542778947445567056

`filter[A099985(n+1), A341629(#)]`
-/

namespace A080404.P6542778947445567056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A080404.P6542778947445567056

/-! ## A080404.P873148775549903551

`filter[A099985(n+1), A389449(#)]`
-/

namespace A080404.P873148775549903551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A080404.P873148775549903551

/-!
# A080405: Number of distinct primes dividing n-th Catalan number.

The programs for A080405, there is no canonical definition to state claims against.
-/

/-! ## A080405.P2142262435456759419

`A081389(abs(1-n)+1)+A081388(A028310(n))`
-/

namespace A080405.P2142262435456759419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (|1 - (n : ℤ)| + 1).toNat + A081388 (A028310 n).toNat

end

end A080405.P2142262435456759419

/-! ## A080405.P7142500136920470886

`A081389(A028310(n))+A081388(A000007(n)+n)`
-/

namespace A080405.P7142500136920470886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A028310 n).toNat + A081388 (A000007 n + (n : ℤ)).toNat

end

end A080405.P7142500136920470886

/-! ## A080405.P13705143596815480750

`A081389(A065033(2*n))+A081388(A065033(2*n))`
-/

namespace A080405.P13705143596815480750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A065033 (2 * n)).toNat + A081388 (A065033 (2 * n)).toNat

end

end A080405.P13705143596815480750

/-! ## A080405.P8169341946562131480

`A081389(A000007(n)+n)+A081388(A000007(n)+n)`
-/

namespace A080405.P8169341946562131480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (A000007 n + (n : ℤ)).toNat + A081388 (A000007 n + (n : ℤ)).toNat

end

end A080405.P8169341946562131480

/-! ## A080405.P7756537169264743909

`∑[and(A010059(n+1), A236829(2*(n+3)))]`
-/

namespace A080405.P7756537169264743909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010059 (n + 1)) (A236829 (2 * (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080405.P7756537169264743909

/-!
# A080408: Boustrophedon transform of the continued fraction of e (A003417).

The programs for A080408, there is no canonical definition to state claims against.
-/

/-! ## A080408.P9223911116801514306

`A255408(A176638(n+1)+A050412(n+1))`
-/

namespace A080408.P9223911116801514306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A176638 (n + 1) + A050412 (n + 1)).toNat

end

end A080408.P9223911116801514306

/-! ## A080408.P12776920199175880178

`A255408(A176638(n+1)+A078680(n+1))`
-/

namespace A080408.P12776920199175880178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A176638 (n + 1) + A078680 (n + 1)).toNat

end

end A080408.P12776920199175880178

/-!
# A080410: Boustrophedon transform of the continued fraction of the Euler-Mascheroni constant, gamma (A001620).

The programs for A080410, there is no canonical definition to state claims against.
-/

/-! ## A080410.P17190880488972722597

`A081399(A051296(n))+n`
-/

namespace A080410.P17190880488972722597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A051296 n).toNat + (n : ℤ)

end

end A080410.P17190880488972722597

/-! ## A080410.P15054650091921240901

`A056654(A209865(n))+A014138(n)`
-/

namespace A080410.P15054650091921240901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (A209865 n).toNat + A014138 n

end

end A080410.P15054650091921240901

/-!
# A080412: Exchange rightmost two binary digits of n > 1; a(0)=0, a(1)=2.

The programs for A080412, the canonical program `A080412.P2468231339628318467` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080412 has offset 0).

The definition of A080412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080412.P2468231339628318467

`a(n-4)+4` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080412

/-- `a(n-4)+4` -/
def P2468231339628318467.Spec : Prop :=
  ∀ n, (P2468231339628318467.a n : ℤ) = A080412 n

theorem P2468231339628318467.correct : P2468231339628318467.Spec := by
  intro n
  simp only [A080412]

end A080412

/-! ## A080412.P10016786308570926455

`(2*n-(-1)^n+(-1)^(n*(n-1)/2))/2`
-/

namespace A080412.P10016786308570926455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - (-1) ^ n : ℝ) + (-1 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ)) / 2

end

end A080412.P10016786308570926455

namespace A080412

/-- `(2*n-(-1)^n+(-1)^(n*(n-1)/2))/2` -/
def P10016786308570926455.Spec : Prop :=
  ∀ n, P10016786308570926455.a n = (A080412 n : ℝ)

end A080412

/-! ## A080412.P9109570068045313457

`xor(n, 3*∑[n]%2)`
-/

namespace A080412.P9109570068045313457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2))

end

end A080412.P9109570068045313457

namespace A080412

/-- `xor(n, 3*∑[n]%2)` -/
def P9109570068045313457.Spec : Prop :=
  ∀ n, (P9109570068045313457.a n : ℤ) = A080412 n

end A080412

/-! ## A080412.P8831742198463916508

`xor(n, 3*and(1, ∑[n]))`
-/

namespace A080412.P8831742198463916508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A080412.P8831742198463916508

namespace A080412

/-- `xor(n, 3*and(1, ∑[n]))` -/
def P8831742198463916508.Spec : Prop :=
  ∀ n, (P8831742198463916508.a n : ℤ) = A080412 n

end A080412

/-! ## A080412.P7744994024620354981

`xor(2, xor(n, gcd(2, ∑[n])))`
-/

namespace A080412.P7744994024620354981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor n (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A080412.P7744994024620354981

namespace A080412

/-- `xor(2, xor(n, gcd(2, ∑[n])))` -/
def P7744994024620354981.Spec : Prop :=
  ∀ n, (P7744994024620354981.a n : ℤ) = A080412 n

end A080412

/-! ## A080412.P7428172442224238188

`xor(and(2, -n)!, xor(1, n))`
-/

namespace A080412.P7428172442224238188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) (Nat.xor 1 n)

end

end A080412.P7428172442224238188

namespace A080412

/-- `xor(and(2, -n)!, xor(1, n))` -/
def P7428172442224238188.Spec : Prop :=
  ∀ n, (P7428172442224238188.a n : ℤ) = A080412 n

end A080412

/-! ## A080412.P14669010207006039806

`round(sin(2*n%4)+n)`
-/

namespace A080412.P14669010207006039806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((2 * (n % 4) : ℕ) : ℝ) + (n : ℝ))

end

end A080412.P14669010207006039806

namespace A080412

/-- `round(sin(2*n%4)+n)` -/
def P14669010207006039806.Spec : Prop :=
  ∀ n, P14669010207006039806.a n = A080412 n

end A080412

/-! ## A080412.P711953847973811033

`floor(xor(3, 3*n+1)/3)`
-/

namespace A080412.P711953847973811033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (3 * n + 1) : ℚ) / 3⌋

end

end A080412.P711953847973811033

namespace A080412

/-- `floor(xor(3, 3*n+1)/3)` -/
def P711953847973811033.Spec : Prop :=
  ∀ n, P711953847973811033.a n = A080412 n

end A080412

/-! ## A080412.P17438081695264303868

`∑[3-gcd(4, n+2)]-1`
-/

namespace A080412.P17438081695264303868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080412.P17438081695264303868

namespace A080412

/-- `∑[3-gcd(4, n+2)]-1` -/
def P17438081695264303868.Spec : Prop :=
  ∀ n, P17438081695264303868.a n = A080412 n

end A080412

/-! ## A080412.P15696846762181428230

`or(1, n+1)-and(2, n)!`
-/

namespace A080412.P15696846762181428230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - (Nat.factorial (Nat.land 2 n) : ℤ)

end

end A080412.P15696846762181428230

namespace A080412

/-- `or(1, n+1)-and(2, n)!` -/
def P15696846762181428230.Spec : Prop :=
  ∀ n, P15696846762181428230.a n = A080412 n

end A080412

/-! ## A080412.P13533389422538604252

`xor(n+1, and(1, ∑[n]))-1`
-/

namespace A080412.P13533389422538604252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A080412.P13533389422538604252

namespace A080412

/-- `xor(n+1, and(1, ∑[n]))-1` -/
def P13533389422538604252.Spec : Prop :=
  ∀ n, P13533389422538604252.a n = A080412 n

end A080412

/-! ## A080412.P9896885324232499802

`2-xor(1, -a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A080412.P9896885324232499802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - Int.xor 1 (-a (n - 2))

end

end A080412.P9896885324232499802

namespace A080412

/-- `2-xor(1, -a(n-2))` -/
def P9896885324232499802.Spec : Prop :=
  ∀ n, P9896885324232499802.a n = A080412 n

end A080412

/-! ## A080412.P1265459957340988496

`round(sqrt((n+2)%4)+n-1)`
-/

namespace A080412.P1265459957340988496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 2) % 4 : ℕ) : ℝ) + ((n : ℤ) - 1 : ℝ))

end

end A080412.P1265459957340988496

namespace A080412

/-- `round(sqrt((n+2)%4)+n-1)` -/
def P1265459957340988496.Spec : Prop :=
  ∀ n, P1265459957340988496.a n = A080412 n

end A080412

/-! ## A080412.P191310683401417449

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080412.P191310683401417449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080412.P191310683401417449

namespace A080412

/-- `∑[floor(a(n-4))]` -/
def P191310683401417449.Spec : Prop :=
  ∀ n, P191310683401417449.a n = A080412 n

end A080412

/-! ## A080412.P2572833804803564471

`ceil(and(3, n+2)/2+n-1)`
-/

namespace A080412.P2572833804803564471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 3 (n + 2) : ℚ) / 2 + ((n : ℤ) - 1 : ℚ)⌉

end

end A080412.P2572833804803564471

namespace A080412

/-- `ceil(and(3, n+2)/2+n-1)` -/
def P2572833804803564471.Spec : Prop :=
  ∀ n, P2572833804803564471.a n = A080412 n

end A080412

/-! ## A080412.P7544349005087325767

`round(and(3, n+2)/2+n-1)`
-/

namespace A080412.P7544349005087325767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 3 (n + 2) : ℚ) / 2 + ((n : ℤ) - 1 : ℚ))

end

end A080412.P7544349005087325767

namespace A080412

/-- `round(and(3, n+2)/2+n-1)` -/
def P7544349005087325767.Spec : Prop :=
  ∀ n, P7544349005087325767.a n = A080412 n

end A080412

/-! ## A080412.P12306197928547075224

`n+1-∑{e}[or(n+2, -4), #]`
-/

namespace A080412.P12306197928547075224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 2 : ℤ) (-4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A080412.P12306197928547075224

namespace A080412

/-- `n+1-∑{e}[or(n+2, -4), #]` -/
def P12306197928547075224.Spec : Prop :=
  ∀ n, P12306197928547075224.a n = A080412 n

end A080412

/-! ## A080412.P12183863567849858585

`n+1-((2*n+1)%8)%3`
-/

namespace A080412.P12183863567849858585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((2 * n + 1) % 8 % 3 : ℕ) : ℤ)

end

end A080412.P12183863567849858585

namespace A080412

/-- `n+1-((2*n+1)%8)%3` -/
def P12183863567849858585.Spec : Prop :=
  ∀ n, P12183863567849858585.a n = A080412 n

end A080412

/-! ## A080412.P2887669708895113499

`n-(a(n-1)%4-1)%2` with `a(0)=0`
-/

namespace A080412.P2887669708895113499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod (Int.tmod (a (n - 1)) 4 - 1) 2

end

end A080412.P2887669708895113499

namespace A080412

/-- `n-(a(n-1)%4-1)%2` -/
def P2887669708895113499.Spec : Prop :=
  ∀ n, P2887669708895113499.a n = A080412 n

end A080412

/-! ## A080412.P10787336077190832044

`2*n+1-∑[and(3, (n+1)^3)]`
-/

namespace A080412.P10787336077190832044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 ((n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080412.P10787336077190832044

namespace A080412

/-- `2*n+1-∑[and(3, (n+1)^3)]` -/
def P10787336077190832044.Spec : Prop :=
  ∀ n, P10787336077190832044.a n = A080412 n

end A080412

/-!
# A080413: Take the rightmost three binary digits of n (for n

The programs for A080413, the canonical program `A080413.P1242221825154927635` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080413 has offset 0).

The definition of A080413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080413.P1242221825154927635

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=1, a(5)=3, a(6)=5, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080413

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P1242221825154927635.Spec : Prop :=
  ∀ n, P1242221825154927635.a n = A080413 n

theorem P1242221825154927635.correct : P1242221825154927635.Spec := by
  intro n
  simp only [A080413]

end A080413

/-! ## A080413.P15433993419386721584

`A080414(A080414(n))`
-/

namespace A080413.P15433993419386721584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A080414 n).toNat

end

end A080413.P15433993419386721584

namespace A080413

/-- `A080414(A080414(n))` -/
def P15433993419386721584.Spec : Prop :=
  ∀ n, P15433993419386721584.a n = A080413 n

end A080413

/-! ## A080413.P11343357187431886718

`2*n+6*floor(n/8)-7*floor(n/4)`
-/

namespace A080413.P11343357187431886718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 6 * ⌊(n : ℚ) / 8⌋ - 7 * ⌊(n : ℚ) / 4⌋

end

end A080413.P11343357187431886718

namespace A080413

/-- `2*n+6*floor(n/8)-7*floor(n/4)` -/
def P11343357187431886718.Spec : Prop :=
  ∀ n, P11343357187431886718.a n = A080413 n

end A080413

/-! ## A080413.P14379590405548298775

`abs(1-A271833(n))`
-/

namespace A080413.P14379590405548298775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A271833 n|

end

end A080413.P14379590405548298775

namespace A080413

/-- `abs(1-A271833(n))` -/
def P14379590405548298775.Spec : Prop :=
  ∀ n, P14379590405548298775.a n = A080413 n

end A080413

/-! ## A080413.P122657392307435810

`∑{d}[1-A271833(n), A000010(#)]`
-/

namespace A080413.P122657392307435810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A271833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A080413.P122657392307435810

namespace A080413

/-- `∑{d}[1-A271833(n), A000010(#)]` -/
def P122657392307435810.Spec : Prop :=
  ∀ n, P122657392307435810.a n = A080413 n

end A080413

/-! ## A080413.P18323416449303961231

`(A271833(n)-1)%A000040(n+1)`
-/

namespace A080413.P18323416449303961231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271833 n - 1) (A000040 (n + 1))

end

end A080413.P18323416449303961231

namespace A080413

/-- `(A271833(n)-1)%A000040(n+1)` -/
def P18323416449303961231.Spec : Prop :=
  ∀ n, P18323416449303961231.a n = A080413 n

end A080413

/-! ## A080413.P7741772555180422952

`(A271833(n)-1)*A007318(C(2, n))`
-/

namespace A080413.P7741772555180422952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271833 n - 1) * A007318 (Nat.choose 2 n)

end

end A080413.P7741772555180422952

namespace A080413

/-- `(A271833(n)-1)*A007318(C(2, n))` -/
def P7741772555180422952.Spec : Prop :=
  ∀ n, P7741772555180422952.a n = A080413 n

end A080413

/-! ## A080413.P6272760083215868045

`A023443(A271833(n))`
-/

namespace A080413.P6272760083215868045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A271833 n).toNat

end

end A080413.P6272760083215868045

namespace A080413

/-- `A023443(A271833(n))` -/
def P6272760083215868045.Spec : Prop :=
  ∀ n, P6272760083215868045.a n = A080413 n

end A080413

/-! ## A080413.P3406260252365816215

`A023444(A271833(n)+1)`
-/

namespace A080413.P3406260252365816215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A271833 n + 1).toNat

end

end A080413.P3406260252365816215

namespace A080413

/-- `A023444(A271833(n)+1)` -/
def P3406260252365816215.Spec : Prop :=
  ∀ n, P3406260252365816215.a n = A080413 n

end A080413

/-! ## A080413.P15189714580865354079

`A140106(2*A271833(n))`
-/

namespace A080413.P15189714580865354079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A271833 n).toNat

end

end A080413.P15189714580865354079

namespace A080413

/-- `A140106(2*A271833(n))` -/
def P15189714580865354079.Spec : Prop :=
  ∀ n, P15189714580865354079.a n = A080413 n

end A080413

/-!
# A080414: Take the rightmost three binary digits of n (for n

The programs for A080414, the canonical program `A080414.P17256981882921977435` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080414 has offset 0).

The definition of A080414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080414.P17256981882921977435

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=5, a(4)=2, a(5)=6, a(6)=3, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080414

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P17256981882921977435.Spec : Prop :=
  ∀ n, P17256981882921977435.a n = A080414 n

theorem P17256981882921977435.correct : P17256981882921977435.Spec := by
  intro n
  simp only [A080414]

end A080414

/-! ## A080414.P7205202979816618064

`A080413(A080413(n))`
-/

namespace A080414.P7205202979816618064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080413 (A080413 n).toNat

end

end A080414.P7205202979816618064

namespace A080414

/-- `A080413(A080413(n))` -/
def P7205202979816618064.Spec : Prop :=
  ∀ n, P7205202979816618064.a n = A080414 n

end A080414

/-! ## A080414.P4196681335874169120

`a(n-2)+gcd(5, (a(n-2)+1)%4)` with `a(0)=0, a(1)=4`
-/

namespace A080414.P4196681335874169120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + Nat.gcd 5 ((a (n - 2) + 1) % 4)

end

end A080414.P4196681335874169120

namespace A080414

/-- `a(n-2)+gcd(5, (a(n-2)+1)%4)` -/
def P4196681335874169120.Spec : Prop :=
  ∀ n, (P4196681335874169120.a n : ℤ) = A080414 n

end A080414

/-! ## A080414.P16497922468101391995

`(A176593(n+1)-(n+1))%4+n`
-/

namespace A080414.P16497922468101391995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176593 (n + 1) - (n + 1 : ℤ)) 4 + (n : ℤ)

end

end A080414.P16497922468101391995

namespace A080414

/-- `(A176593(n+1)-(n+1))%4+n` -/
def P16497922468101391995.Spec : Prop :=
  ∀ n, P16497922468101391995.a n = A080414 n

end A080414

/-! ## A080414.P3405939931959279961

`A271833(A271833(n)-1)-1`
-/

namespace A080414.P3405939931959279961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271833 (A271833 n - 1).toNat - 1

end

end A080414.P3405939931959279961

namespace A080414

/-- `A271833(A271833(n)-1)-1` -/
def P3405939931959279961.Spec : Prop :=
  ∀ n, P3405939931959279961.a n = A080414 n

end A080414

/-! ## A080414.P17460653258979388366

`A014681(xor(∑[n]%4, A014681(n)))`
-/

namespace A080414.P17460653258979388366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j) % 4 : ℕ) : ℤ) (A014681 n)).toNat

end

end A080414.P17460653258979388366

namespace A080414

/-- `A014681(xor(∑[n]%4, A014681(n)))` -/
def P17460653258979388366.Spec : Prop :=
  ∀ n, P17460653258979388366.a n = A080414 n

end A080414

/-! ## A080414.P5847041839686615393

`n-xor(n+1, A001057(n+1))%4`
-/

namespace A080414.P5847041839686615393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (Int.xor (n + 1 : ℤ) (A001057 (n + 1))) 4

end

end A080414.P5847041839686615393

namespace A080414

/-- `n-xor(n+1, A001057(n+1))%4` -/
def P5847041839686615393.Spec : Prop :=
  ∀ n, P5847041839686615393.a n = A080414 n

end A080414

/-! ## A080414.P7298840653023503489

`A004526(A168203(n+1)-n%8)`
-/

namespace A080414.P7298840653023503489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A168203 (n + 1) - ((n % 8 : ℕ) : ℤ)).toNat

end

end A080414.P7298840653023503489

namespace A080414

/-- `A004526(A168203(n+1)-n%8)` -/
def P7298840653023503489.Spec : Prop :=
  ∀ n, P7298840653023503489.a n = A080414 n

end A080414

/-! ## A080414.P3919524342523807617

`A057301(A106485(A057301(A057301(A126007(n)))))`
-/

namespace A080414.P3919524342523807617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 (A106485 (A057301 (A057301 (A126007 n).toNat).toNat).toNat).toNat

end

end A080414.P3919524342523807617

namespace A080414

/-- `A057301(A106485(A057301(A057301(A126007(n)))))` -/
def P3919524342523807617.Spec : Prop :=
  ∀ n, P3919524342523807617.a n = A080414 n

end A080414

/-! ## A080414.P16825975411673465903

`A057301(A126007(A057301(A057301(A057300(n)))))`
-/

namespace A080414.P16825975411673465903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 (A126007 (A057301 (A057301 (A057300 n).toNat).toNat).toNat).toNat

end

end A080414.P16825975411673465903

namespace A080414

/-- `A057301(A126007(A057301(A057301(A057300(n)))))` -/
def P16825975411673465903.Spec : Prop :=
  ∀ n, P16825975411673465903.a n = A080414 n

end A080414

/-!
# A080415: a(n) is the number of distinct substrings in the initial string of length n of the repetition-resistant sequence A079101.

The programs for A080415, there is no canonical definition to state claims against.
-/

/-! ## A080415.P3765916570654316092

`∑[A334714(n+1)-A071028(A086362(n))]`
-/

namespace A080415.P3765916570654316092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334714 (n + 1) - A071028 (A086362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080415.P3765916570654316092

/-! ## A080415.P10652950833409879257

`∑[A032358(A266248(n)+3)]`
-/

namespace A080415.P10652950833409879257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A266248 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080415.P10652950833409879257

/-! ## A080415.P6867496665307216894

`∑[A081604(record[A283403(n)])]`
-/

namespace A080415.P6867496665307216894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080415.P6867496665307216894

/-! ## A080415.P10477843483996375790

`∑[A245760(∑[A347307(n+2)])]`
-/

namespace A080415.P10477843483996375790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347307 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080415.P10477843483996375790

/-! ## A080415.P13719527308237819269

`A347697(A261983(n+4)-1)`
-/

namespace A080415.P13719527308237819269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A261983 (n + 4) - 1).toNat

end

end A080415.P13719527308237819269

/-!
# A080416: Stirling-like number triangle defined by paired decomposition of C(n+3,3) = A000292.

The programs for A080416, there is no canonical definition to state claims against.
-/

/-! ## A080416.P6644539625176591150

`A170893(A111577(n+1))`
-/

namespace A080416.P6644539625176591150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 (A111577 (n + 1)).toNat

end

end A080416.P6644539625176591150

/-! ## A080416.P3459939741979531400

`A116669(A208660(n+1))`
-/

namespace A080416.P3459939741979531400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116669 (A208660 (n + 1)).toNat

end

end A080416.P3459939741979531400

/-! ## A080416.P796799653290008484

`A327333(A049290(n+1))`
-/

namespace A080416.P796799653290008484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (A049290 (n + 1)).toNat

end

end A080416.P796799653290008484

/-! ## A080416.P2286146432823176077

`A078942(A369288(n+1))`
-/

namespace A080416.P2286146432823176077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078942 (A369288 (n + 1)).toNat

end

end A080416.P2286146432823176077

/-! ## A080416.P6887049466790655425

`A350819(n)-A326445(A195441(n))`
-/

namespace A080416.P6887049466790655425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350819 n - A326445 (A195441 n).toNat

end

end A080416.P6887049466790655425

/-!
# A080417: Signed Stirling numbers of the second kind.

The programs for A080417, there is no canonical definition to state claims against.
-/

/-! ## A080417.P7111099084660334943

`A163626(n)/(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A080417.P7111099084660334943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ)

end

end A080417.P7111099084660334943

/-! ## A080417.P2068209211355723522

`A163626(n)/A233543(n)`
-/

namespace A080417.P2068209211355723522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n : ℚ) / (A233543 n : ℚ)

end

end A080417.P2068209211355723522

/-! ## A080417.P18273182789940103711

`A163626(n)/A002262(n)!`
-/

namespace A080417.P18273182789940103711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A080417.P18273182789940103711

/-! ## A080417.P1421039362056667441

`A163626(n)/A144328(n+1)!`
-/

namespace A080417.P1421039362056667441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163626 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A080417.P1421039362056667441

/-! ## A080417.P12729840123353511495

`A007318(n)/A008279(n)*A163626(n)`
-/

namespace A080417.P12729840123353511495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A008279 n : ℚ) * (A163626 n : ℚ)

end

end A080417.P12729840123353511495

/-! ## A080417.P11777551581428492684

`A008277(n+1)*A163626(n)/abs(A163626(n))`
-/

namespace A080417.P11777551581428492684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) * A163626 n : ℚ) / (|A163626 n| : ℚ)

end

end A080417.P11777551581428492684

/-! ## A080417.P13612536284628342636

`A008277(n+1)*A008836(A059268(n))`
-/

namespace A080417.P13612536284628342636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A008836 (A059268 n).toNat

end

end A080417.P13612536284628342636

/-! ## A080417.P14468811733821563095

`A145661(n)%2*A008277(n+1)`
-/

namespace A080417.P14468811733821563095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145661 n) 2 * A008277 (n + 1)

end

end A080417.P14468811733821563095

/-!
# A080418: Generalized Pascal triangle.

The programs for A080418, the canonical program `A080418.P2070778107889241742` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080418 has offset 1).

The definition of A080418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080418.P5073746611913725247

`abs(C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-n)+and(2, comp[∑[n]]+n)-1)`
-/

namespace A080418.P5073746611913725247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℤ) + ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n) : ℤ) - 1)|

end

end A080418.P5073746611913725247

namespace A080418

/-- `abs(C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-n)+and(2, comp[∑[n]]+n)-1)` -/
def P5073746611913725247.Spec : Prop :=
  ∀ n, P5073746611913725247.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P2070778107889241742

`abs(A325191(n)+A097807(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080418

/-- `abs(A325191(n)+A097807(n))` -/
def P2070778107889241742.Spec : Prop :=
  ∀ n, P2070778107889241742.a n = A080418 (n + 1)

theorem P2070778107889241742.correct : P2070778107889241742.Spec := by
  intro n
  simp only [A080418, Nat.add_sub_cancel]

end A080418

/-! ## A080418.P6790591020934257124

`A074909(n)+A056594(A185782(n+1))`
-/

namespace A080418.P6790591020934257124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A056594 (A185782 (n + 1)).toNat

end

end A080418.P6790591020934257124

namespace A080418

/-- `A074909(n)+A056594(A185782(n+1))` -/
def P6790591020934257124.Spec : Prop :=
  ∀ n, P6790591020934257124.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P15381782226170476056

`A325191(n)+A033999(A275731(n))`
-/

namespace A080418.P15381782226170476056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A033999 (A275731 n).toNat

end

end A080418.P15381782226170476056

namespace A080418

/-- `A325191(n)+A033999(A275731(n))` -/
def P15381782226170476056.Spec : Prop :=
  ∀ n, P15381782226170476056.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P3169951981064555900

`A325191(n)+A125131(A057728(n+1))`
-/

namespace A080418.P3169951981064555900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A125131 (A057728 (n + 1)).toNat

end

end A080418.P3169951981064555900

namespace A080418

/-- `A325191(n)+A125131(A057728(n+1))` -/
def P3169951981064555900.Spec : Prop :=
  ∀ n, P3169951981064555900.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P4145212057206058422

`A074909(n)+A056594(A266213(n))`
-/

namespace A080418.P4145212057206058422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A056594 (A266213 n).toNat

end

end A080418.P4145212057206058422

namespace A080418

/-- `A074909(n)+A056594(A266213(n))` -/
def P4145212057206058422.Spec : Prop :=
  ∀ n, P4145212057206058422.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P12219736383661261666

`A085144(A089633(n))+A074909(n)`
-/

namespace A080418.P12219736383661261666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A089633 n).toNat + A074909 n

end

end A080418.P12219736383661261666

namespace A080418

/-- `A085144(A089633(n))+A074909(n)` -/
def P12219736383661261666.Spec : Prop :=
  ∀ n, P12219736383661261666.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P2027668877128693027

`A074909(n)-A056594(A035607(n))`
-/

namespace A080418.P2027668877128693027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A056594 (A035607 n).toNat

end

end A080418.P2027668877128693027

namespace A080418

/-- `A074909(n)-A056594(A035607(n))` -/
def P2027668877128693027.Spec : Prop :=
  ∀ n, P2027668877128693027.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P13764400693903249168

`abs(A057077(A035607(n))-A325191(n))`
-/

namespace A080418.P13764400693903249168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 (A035607 n).toNat - A325191 n|

end

end A080418.P13764400693903249168

namespace A080418

/-- `abs(A057077(A035607(n))-A325191(n))` -/
def P13764400693903249168.Spec : Prop :=
  ∀ n, P13764400693903249168.a n = A080418 (n + 1)

end A080418

/-! ## A080418.P16910496068588690544

`A074909(n)+A056594(A035607(n)+2)`
-/

namespace A080418.P16910496068588690544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A056594 (A035607 n + 2).toNat

end

end A080418.P16910496068588690544

namespace A080418

/-- `A074909(n)+A056594(A035607(n)+2)` -/
def P16910496068588690544.Spec : Prop :=
  ∀ n, P16910496068588690544.a n = A080418 (n + 1)

end A080418

/-!
# A080419: Triangle of generalized Chebyshev coefficients.

The programs for A080419, the canonical program `A080419.P10035802788885381002` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080419 has offset 1).

The definition of A080419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080419.P1308696270933770023

`A136158(comp[∑[n]])`
-/

namespace A080419.P1308696270933770023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A080419.P1308696270933770023

namespace A080419

/-- `A136158(comp[∑[n]])` -/
def P1308696270933770023.Spec : Prop :=
  ∀ n, P1308696270933770023.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P14337379379899926344

`abs(A164948(comp[∑[n]]))`
-/

namespace A080419.P14337379379899926344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A080419.P14337379379899926344

namespace A080419

/-- `abs(A164948(comp[∑[n]]))` -/
def P14337379379899926344.Spec : Prop :=
  ∀ n, P14337379379899926344.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P10492181755754173038

`A038763(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A080419.P10492181755754173038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A080419.P10492181755754173038

namespace A080419

/-- `A038763(∑[2*n]%(comp[∑[n]]+1)+1+n)` -/
def P10492181755754173038.Spec : Prop :=
  ∀ n, P10492181755754173038.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P12398101910654184888

`A038763(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A080419.P12398101910654184888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A080419.P12398101910654184888

namespace A080419

/-- `A038763(2*(C(comp[∑[n]]-n, 2)-n)-1+n)` -/
def P12398101910654184888.Spec : Prop :=
  ∀ n, P12398101910654184888.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P934527131521407866

`A038763(A099375(n)+n)`
-/

namespace A080419.P934527131521407866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A099375 n + (n : ℤ)).toNat

end

end A080419.P934527131521407866

namespace A080419

/-- `A038763(A099375(n)+n)` -/
def P934527131521407866.Spec : Prop :=
  ∀ n, P934527131521407866.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P6060745429839216977

`A038763(A061579(comp[∑[n]]))`
-/

namespace A080419.P6060745429839216977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A080419.P6060745429839216977

namespace A080419

/-- `A038763(A061579(comp[∑[n]]))` -/
def P6060745429839216977.Spec : Prop :=
  ∀ n, P6060745429839216977.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P3555722356367226217

`A038763(A061579(n)+round(sqrt(2*(n+1))))`
-/

namespace A080419.P3555722356367226217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A061579 n + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A080419.P3555722356367226217

namespace A080419

/-- `A038763(A061579(n)+round(sqrt(2*(n+1))))` -/
def P3555722356367226217.Spec : Prop :=
  ∀ n, P3555722356367226217.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P4290453917017153583

`A038763(A038722(n+1)+A003056(n))`
-/

namespace A080419.P4290453917017153583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A038722 (n + 1) + A003056 n).toNat

end

end A080419.P4290453917017153583

namespace A080419

/-- `A038763(A038722(n+1)+A003056(n))` -/
def P4290453917017153583.Spec : Prop :=
  ∀ n, P4290453917017153583.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P2685880086636587886

`A038763(A003056(n)+A002024(n+1)²-n)`
-/

namespace A080419.P2685880086636587886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A003056 n + (A002024 (n + 1) ^ 2 - (n : ℤ))).toNat

end

end A080419.P2685880086636587886

namespace A080419

/-- `A038763(A003056(n)+A002024(n+1)²-n)` -/
def P2685880086636587886.Spec : Prop :=
  ∀ n, P2685880086636587886.a n = A080419 (n + 1)

end A080419

/-! ## A080419.P10035802788885381002

`A027465(n)+A027465(n+1)%A027466(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080419

/-- `A027465(n)+A027465(n+1)%A027466(n)` -/
def P10035802788885381002.Spec : Prop :=
  ∀ n, P10035802788885381002.a n = A080419 (n + 1)

theorem P10035802788885381002.correct : P10035802788885381002.Spec := by
  intro n
  simp only [A080419, Nat.add_sub_cancel]

end A080419

/-!
# A080420: a(n) = (n+1)*(n+6)*3^n/6.

The programs for A080420, the canonical program `A080420.P7331864155194613154` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080420 has offset 0).

The definition of A080420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+6)*3^n/6` (program `A080420.P12827678168078768987`, by `A080420.P12827678168078768987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080420.P7331864155194613154

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=7, a(2)=36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080420

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P7331864155194613154.Spec : Prop :=
  ∀ n, P7331864155194613154.a n = A080420 n

theorem P7331864155194613154.correct : P7331864155194613154.Spec := by
  intro n
  simp only [A080420]

end A080420

/-! ## A080420.P12827678168078768987

`(n+1)*(n+6)*3^n/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080420.P12827678168078768987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 6) * 3 ^ n : ℚ) / 6

end

end A080420.P12827678168078768987

namespace A080420

/-- `(n+1)*(n+6)*3^n/6` -/
def P12827678168078768987.Spec : Prop :=
  ∀ n, P12827678168078768987.a n = (A080420 n : ℚ)

theorem P12827678168078768987.correct : P12827678168078768987.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A080420, Nat.add_sub_cancel, A080420.P12827678168078768987.a, A080420.P7331864155194613154.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A080420, Nat.add_sub_cancel, A080420.P12827678168078768987.a, A080420.P7331864155194613154.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A080420

/-! ## A080420.P14143699836246437066

`3*a(n-1)+(n+3)*3^(n-1)` with `a(0)=1`
-/

namespace A080420.P14143699836246437066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 3 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A080420.P14143699836246437066

namespace A080420

/-- `3*a(n-1)+(n+3)*3^(n-1)` -/
def P14143699836246437066.Spec : Prop :=
  ∀ n, P14143699836246437066.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P13113232783550578385

`∑[A081278(n)]`
-/

namespace A080420.P13113232783550578385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080420.P13113232783550578385

namespace A080420

/-- `∑[A081278(n)]` -/
def P13113232783550578385.Spec : Prop :=
  ∀ n, P13113232783550578385.a n = A080420 n

end A080420

/-! ## A080420.P9551200744524650991

`(n+1)/2*A038765(n+1)`
-/

namespace A080420.P9551200744524650991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A038765 (n + 1) : ℚ)

end

end A080420.P9551200744524650991

namespace A080420

/-- `(n+1)/2*A038765(n+1)` -/
def P9551200744524650991.Spec : Prop :=
  ∀ n, P9551200744524650991.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P12150786343242004874

`A382618(n+1)-3^(n+1)`
-/

namespace A080420.P12150786343242004874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382618 (n + 1) - (3 ^ (n + 1) : ℤ)

end

end A080420.P12150786343242004874

namespace A080420

/-- `A382618(n+1)-3^(n+1)` -/
def P12150786343242004874.Spec : Prop :=
  ∀ n, P12150786343242004874.a n = A080420 n

end A080420

/-! ## A080420.P4515306713149268069

`A036068(n)+lcm(n, n/3*3^n)`
-/

namespace A080420.P4515306713149268069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036068 n + (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 3 * (3 ^ n : ℚ))) : ℤ)

end

end A080420.P4515306713149268069

namespace A080420

/-- `A036068(n)+lcm(n, n/3*3^n)` -/
def P4515306713149268069.Spec : Prop :=
  ∀ n, P4515306713149268069.a n = A080420 n

end A080420

/-! ## A080420.P9473418362913706130

`a(n-1)+A081892(n)+a(n-1)` with `a(0)=1`
-/

namespace A080420.P9473418362913706130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081892 n + a (n - 1))

end

end A080420.P9473418362913706130

namespace A080420

/-- `a(n-1)+A081892(n)+a(n-1)` -/
def P9473418362913706130.Spec : Prop :=
  ∀ n, P9473418362913706130.a n = A080420 n

end A080420

/-! ## A080420.P2627057980652042877

`A027471(n+1)+3^(n-1)*C(n+3, 2)`
-/

namespace A080420.P2627057980652042877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 1) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 3) 2 : ℚ)

end

end A080420.P2627057980652042877

namespace A080420

/-- `A027471(n+1)+3^(n-1)*C(n+3, 2)` -/
def P2627057980652042877.Spec : Prop :=
  ∀ n, P2627057980652042877.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P8214359953023750417

`A036068(n)+A027471(n+1)`
-/

namespace A080420.P8214359953023750417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036068 n + A027471 (n + 1)

end

end A080420.P8214359953023750417

namespace A080420

/-- `A036068(n)+A027471(n+1)` -/
def P8214359953023750417.Spec : Prop :=
  ∀ n, P8214359953023750417.a n = A080420 n

end A080420

/-! ## A080420.P13662965992991316932

`2*A081278(n)-A081892(n)`
-/

namespace A080420.P13662965992991316932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081278 n - A081892 n

end

end A080420.P13662965992991316932

namespace A080420

/-- `2*A081278(n)-A081892(n)` -/
def P13662965992991316932.Spec : Prop :=
  ∀ n, P13662965992991316932.a n = A080420 n

end A080420

/-! ## A080420.P15947277296335790266

`A081892(n)+n*A038765(n)`
-/

namespace A080420.P15947277296335790266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081892 n + (n : ℤ) * A038765 n

end

end A080420.P15947277296335790266

namespace A080420

/-- `A081892(n)+n*A038765(n)` -/
def P15947277296335790266.Spec : Prop :=
  ∀ n, P15947277296335790266.a n = A080420 n

end A080420

/-! ## A080420.P2311084591691913573

`A081892(n+1)-A006234(n+4)`
-/

namespace A080420.P2311084591691913573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081892 (n + 1) - A006234 (n + 4)

end

end A080420.P2311084591691913573

namespace A080420

/-- `A081892(n+1)-A006234(n+4)` -/
def P2311084591691913573.Spec : Prop :=
  ∀ n, P2311084591691913573.a n = A080420 n

end A080420

/-! ## A080420.P8731132234080323576

`A081278(n+1)-A081892(n+1)`
-/

namespace A080420.P8731132234080323576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 (n + 1) - A081892 (n + 1)

end

end A080420.P8731132234080323576

namespace A080420

/-- `A081278(n+1)-A081892(n+1)` -/
def P8731132234080323576.Spec : Prop :=
  ∀ n, P8731132234080323576.a n = A080420 n

end A080420

/-! ## A080420.P4886997212332834863

`A383136(n+1)+A383136(n+1)-A027472(n+3)`
-/

namespace A080420.P4886997212332834863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1) + (A383136 (n + 1) - A027472 (n + 3))

end

end A080420.P4886997212332834863

namespace A080420

/-- `A383136(n+1)+A383136(n+1)-A027472(n+3)` -/
def P4886997212332834863.Spec : Prop :=
  ∀ n, P4886997212332834863.a n = A080420 n

end A080420

/-! ## A080420.P9879786147499869297

`A116138(n+1)/2-A062189(n+1)`
-/

namespace A080420.P9879786147499869297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) : ℚ) / 2 - (A062189 (n + 1) : ℚ)

end

end A080420.P9879786147499869297

namespace A080420

/-- `A116138(n+1)/2-A062189(n+1)` -/
def P9879786147499869297.Spec : Prop :=
  ∀ n, P9879786147499869297.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P7170539640265045415

`∑[A383137(n+1)/(n+1)]`
-/

namespace A080420.P7170539640265045415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383137 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080420.P7170539640265045415

namespace A080420

/-- `∑[A383137(n+1)/(n+1)]` -/
def P7170539640265045415.Spec : Prop :=
  ∀ n, P7170539640265045415.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P7176620950304198038

`A027471(n+2)/A036219(n)*A036220(n)`
-/

namespace A080420.P7176620950304198038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 2) : ℚ) / (A036219 n : ℚ) * (A036220 n : ℚ)

end

end A080420.P7176620950304198038

namespace A080420

/-- `A027471(n+2)/A036219(n)*A036220(n)` -/
def P7176620950304198038.Spec : Prop :=
  ∀ n, P7176620950304198038.a n = (A080420 n : ℚ)

end A080420

/-! ## A080420.P9961919201071445558

`A005061(n+1)-A384415(n+1)`
-/

namespace A080420.P9961919201071445558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) - A384415 (n + 1)

end

end A080420.P9961919201071445558

namespace A080420

/-- `A005061(n+1)-A384415(n+1)` -/
def P9961919201071445558.Spec : Prop :=
  ∀ n, P9961919201071445558.a n = A080420 n

end A080420

/-! ## A080420.P706892551699478004

`A000302(n+1)+A027471(n+2)-A380249(n+1)`
-/

namespace A080420.P706892551699478004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (A027471 (n + 2) - A380249 (n + 1))

end

end A080420.P706892551699478004

namespace A080420

/-- `A000302(n+1)+A027471(n+2)-A380249(n+1)` -/
def P706892551699478004.Spec : Prop :=
  ∀ n, P706892551699478004.a n = A080420 n

end A080420

/-!
# A080421: a(n) = (n+1)*(n+2)*(n+9)*3^n/18.

The programs for A080421, the canonical program `A080421.P13758200417382494014` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080421 has offset 0).

The definition of A080421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+9)*3^n/18` (program `A080421.P15558531128571400711`, by `A080421.P15558531128571400711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080421.P11469869799494868962

`(n+1)*(n+2)*(n+9)*3^(n-2)/2`
-/

namespace A080421.P11469869799494868962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 9) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / 2

end

end A080421.P11469869799494868962

namespace A080421

/-- `(n+1)*(n+2)*(n+9)*3^(n-2)/2` -/
def P11469869799494868962.Spec : Prop :=
  ∀ n, P11469869799494868962.a n = (A080421 n : ℚ)

theorem P11469869799494868962.correct : P11469869799494868962.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A080421, Nat.add_sub_cancel, A080421.P11469869799494868962.a, A080421.P13758200417382494014.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A080421, Nat.add_sub_cancel, A080421.P11469869799494868962.a, A080421.P13758200417382494014.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A080421

/-! ## A080421.P5496986339877295996

`A006503(n+1)*3^(n-1)`
-/

namespace A080421.P5496986339877295996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006503 (n + 1) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A080421.P5496986339877295996

namespace A080421

/-- `A006503(n+1)*3^(n-1)` -/
def P5496986339877295996.Spec : Prop :=
  ∀ n, P5496986339877295996.a n = (A080421 n : ℚ)

end A080421

/-! ## A080421.P13758200417382494014

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=1, a(1)=10, a(2)=66, a(3)=360`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080421

/-- `12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` -/
def P13758200417382494014.Spec : Prop :=
  ∀ n, P13758200417382494014.a n = A080421 n

theorem P13758200417382494014.correct : P13758200417382494014.Spec := by
  intro n
  simp only [A080421]

end A080421

/-! ## A080421.P15558531128571400711

`(n+1)*(n+2)*(n+9)*3^n/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080421.P15558531128571400711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 9) * 3 ^ n : ℚ) / 18

end

end A080421.P15558531128571400711

namespace A080421

/-- `(n+1)*(n+2)*(n+9)*3^n/18` -/
def P15558531128571400711.Spec : Prop :=
  ∀ n, P15558531128571400711.a n = (A080421 n : ℚ)

theorem P15558531128571400711.correct : P15558531128571400711.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A080421, Nat.add_sub_cancel, A080421.P15558531128571400711.a, A080421.P13758200417382494014.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A080421, Nat.add_sub_cancel, A080421.P15558531128571400711.a, A080421.P13758200417382494014.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A080421

/-! ## A080421.P5568787901644421684

`∑[∑[A081279(n)]]`
-/

namespace A080421.P5568787901644421684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080421.P5568787901644421684

namespace A080421

/-- `∑[∑[A081279(n)]]` -/
def P5568787901644421684.Spec : Prop :=
  ∀ n, P5568787901644421684.a n = A080421 n

end A080421

/-! ## A080421.P11835291266726108690

`(n+1)*A081892(n)`
-/

namespace A080421.P11835291266726108690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081892 n

end

end A080421.P11835291266726108690

namespace A080421

/-- `(n+1)*A081892(n)` -/
def P11835291266726108690.Spec : Prop :=
  ∀ n, P11835291266726108690.a n = A080421 n

end A080421

/-! ## A080421.P8169096443658961186

`A384198(n+2)-A006234(n+5)`
-/

namespace A080421.P8169096443658961186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384198 (n + 2) - A006234 (n + 5)

end

end A080421.P8169096443658961186

namespace A080421

/-- `A384198(n+2)-A006234(n+5)` -/
def P8169096443658961186.Spec : Prop :=
  ∀ n, P8169096443658961186.a n = A080421 n

end A080421

/-! ## A080421.P2264739797550871347

`A080419(A167614(n+1))`
-/

namespace A080421.P2264739797550871347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080419 (A167614 (n + 1)).toNat

end

end A080421.P2264739797550871347

namespace A080421

/-- `A080419(A167614(n+1))` -/
def P2264739797550871347.Spec : Prop :=
  ∀ n, P2264739797550871347.a n = A080421 n

end A080421

/-! ## A080421.P5611030197107856795

`A136158(A167614(n+2))`
-/

namespace A080421.P5611030197107856795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 (A167614 (n + 2)).toNat

end

end A080421.P5611030197107856795

namespace A080421

/-- `A136158(A167614(n+2))` -/
def P5611030197107856795.Spec : Prop :=
  ∀ n, P5611030197107856795.a n = A080421 n

end A080421

/-! ## A080421.P11786634208322320119

`A038763(∑[n+3]+n+3)`
-/

namespace A080421.P11786634208322320119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A080421.P11786634208322320119

namespace A080421

/-- `A038763(∑[n+3]+n+3)` -/
def P11786634208322320119.Spec : Prop :=
  ∀ n, P11786634208322320119.a n = A080421 n

end A080421

/-!
# A080422: a(n) = (n+1)*(n+2)*(n+3)*(n+12)*3^n/72.

The programs for A080422, the canonical program `A080422.P4749161635924458651` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080422 has offset 0).

The definition of A080422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080422.P4749161635924458651

`(n+1)*(n+2)*(n+3)*(n+12)*3^n/72`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080422

/-- `(n+1)*(n+2)*(n+3)*(n+12)*3^n/72` -/
def P4749161635924458651.Spec : Prop :=
  ∀ n, P4749161635924458651.a n = (A080422 n : ℚ)

end A080422

/-! ## A080422.P14829898540618768793

`∑[∑[∑[A081280(n)]]]`
-/

namespace A080422.P14829898540618768793
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081280 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080422.P14829898540618768793

namespace A080422

/-- `∑[∑[∑[A081280(n)]]]` -/
def P14829898540618768793.Spec : Prop :=
  ∀ n, P14829898540618768793.a n = A080422 n

end A080422

/-! ## A080422.P3672359671508019033

`A080419(A167614(n+2)+1)`
-/

namespace A080422.P3672359671508019033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080419 (A167614 (n + 2) + 1).toNat

end

end A080422.P3672359671508019033

namespace A080422

/-- `A080419(A167614(n+2)+1)` -/
def P3672359671508019033.Spec : Prop :=
  ∀ n, P3672359671508019033.a n = A080422 n

end A080422

/-! ## A080422.P5989279195742892393

`A164948(A167499(n+3)-1)`
-/

namespace A080422.P5989279195742892393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164948 (A167499 (n + 3) - 1).toNat

end

end A080422.P5989279195742892393

namespace A080422

/-- `A164948(A167499(n+3)-1)` -/
def P5989279195742892393.Spec : Prop :=
  ∀ n, P5989279195742892393.a n = A080422 n

end A080422

/-! ## A080422.P9735656378858453398

`A164948(A000124(n+4)+3)`
-/

namespace A080422.P9735656378858453398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164948 (A000124 (n + 4) + 3).toNat

end

end A080422.P9735656378858453398

namespace A080422

/-- `A164948(A000124(n+4)+3)` -/
def P9735656378858453398.Spec : Prop :=
  ∀ n, P9735656378858453398.a n = A080422 n

end A080422

/-! ## A080422.P16242758143425907522

`A038763(A052905(n+2))`
-/

namespace A080422.P16242758143425907522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A052905 (n + 2)).toNat

end

end A080422.P16242758143425907522

namespace A080422

/-- `A038763(A052905(n+2))` -/
def P16242758143425907522.Spec : Prop :=
  ∀ n, P16242758143425907522.a n = A080422 n

end A080422

/-! ## A080422.P12459826618331656913

`A038763(eq[4, A025581(n)])`
-/

namespace A080422.P12459826618331656913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080422.P12459826618331656913

namespace A080422

/-- `A038763(eq[4, A025581(n)])` -/
def P12459826618331656913.Spec : Prop :=
  ∀ n, P12459826618331656913.a n = A080422 n

end A080422

/-! ## A080422.P15072920190758093689

`A038763(eq[9, A099375(n)])`
-/

namespace A080422.P15072920190758093689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080422.P15072920190758093689

namespace A080422

/-- `A038763(eq[9, A099375(n)])` -/
def P15072920190758093689.Spec : Prop :=
  ∀ n, P15072920190758093689.a n = A080422 n

end A080422

/-! ## A080422.P14661781263766427822

`A038763(A000217(n+5)-5)`
-/

namespace A080422.P14661781263766427822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A000217 (n + 5) - 5).toNat

end

end A080422.P14661781263766427822

namespace A080422

/-- `A038763(A000217(n+5)-5)` -/
def P14661781263766427822.Spec : Prop :=
  ∀ n, P14661781263766427822.a n = A080422 n

end A080422

/-! ## A080422.P17188110604278797829

`A038763(A005843(n)+A167614(n+2)+1)`
-/

namespace A080422.P17188110604278797829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A005843 n + (A167614 (n + 2) + 1)).toNat

end

end A080422.P17188110604278797829

namespace A080422

/-- `A038763(A005843(n)+A167614(n+2)+1)` -/
def P17188110604278797829.Spec : Prop :=
  ∀ n, P17188110604278797829.a n = A080422 n

end A080422

/-! ## A080422.P8088314406562705291

`A038763(A005843(n)+A046691(n+1)+8)`
-/

namespace A080422.P8088314406562705291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A005843 n + (A046691 (n + 1) + 8)).toNat

end

end A080422.P8088314406562705291

namespace A080422

/-- `A038763(A005843(n)+A046691(n+1)+8)` -/
def P8088314406562705291.Spec : Prop :=
  ∀ n, P8088314406562705291.a n = A080422 n

end A080422

/-!
# A080423: a(n) = (n+1)*(n+2)*(n+3)*(n+4)*(n+15)*3^n/360.

The programs for A080423, the canonical program `A080423.P15776593950501490801` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080423 has offset 0).

The definition of A080423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080423.P15776593950501490801

`3^n*(n+15)*C(n+4, 4)/15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080423

/-- `3^n*(n+15)*C(n+4, 4)/15` -/
def P15776593950501490801.Spec : Prop :=
  ∀ n, P15776593950501490801.a n = (A080423 n : ℚ)

end A080423

/-! ## A080423.P6205342014238601835

`(n+1)*(n+2)*(n+3)*(n+4)*(n+15)*3^n/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080423.P6205342014238601835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 15) * 3 ^ n : ℚ) / 360

end

end A080423.P6205342014238601835

namespace A080423

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(n+15)*3^n/360` -/
def P6205342014238601835.Spec : Prop :=
  ∀ n, P6205342014238601835.a n = (A080423 n : ℚ)

end A080423

/-! ## A080423.P17418377516793068340

`A136158(A000217(n+6)-(n+1))`
-/

namespace A080423.P17418377516793068340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A080423.P17418377516793068340

namespace A080423

/-- `A136158(A000217(n+6)-(n+1))` -/
def P17418377516793068340.Spec : Prop :=
  ∀ n, P17418377516793068340.a n = A080423 n

end A080423

/-! ## A080423.P9689203080527007618

`A038763(eq[5, A025581(n)])`
-/

namespace A080423.P9689203080527007618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080423.P9689203080527007618

namespace A080423

/-- `A038763(eq[5, A025581(n)])` -/
def P9689203080527007618.Spec : Prop :=
  ∀ n, P9689203080527007618.a n = A080423 n

end A080423

/-! ## A080423.P6422658129259421081

`A038763(A052905(n+3)-1)`
-/

namespace A080423.P6422658129259421081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A052905 (n + 3) - 1).toNat

end

end A080423.P6422658129259421081

namespace A080423

/-- `A038763(A052905(n+3)-1)` -/
def P6422658129259421081.Spec : Prop :=
  ∀ n, P6422658129259421081.a n = A080423 n

end A080423

/-! ## A080423.P8175321910573213272

`A038763(A000217(n+6)-6)`
-/

namespace A080423.P8175321910573213272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A000217 (n + 6) - 6).toNat

end

end A080423.P8175321910573213272

namespace A080423

/-- `A038763(A000217(n+6)-6)` -/
def P8175321910573213272.Spec : Prop :=
  ∀ n, P8175321910573213272.a n = A080423 n

end A080423

/-! ## A080423.P6958279192075760860

`A038763(A000124(n+6)-7)`
-/

namespace A080423.P6958279192075760860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A000124 (n + 6) - 7).toNat

end

end A080423.P6958279192075760860

namespace A080423

/-- `A038763(A000124(n+6)-7)` -/
def P6958279192075760860.Spec : Prop :=
  ∀ n, P6958279192075760860.a n = A080423 n

end A080423

/-! ## A080423.P14739455824241998086

`A038763(A155212(n+4)-A005843(n)-13)`
-/

namespace A080423.P14739455824241998086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 (A155212 (n + 4) - A005843 n - 13).toNat

end

end A080423.P14739455824241998086

namespace A080423

/-- `A038763(A155212(n+4)-A005843(n)-13)` -/
def P14739455824241998086.Spec : Prop :=
  ∀ n, P14739455824241998086.a n = A080423 n

end A080423

/-!
# A080424: a(n) = 3*a(n-1) + 18*a(n-2), a(0)=0, a(1)=1.

The programs for A080424, the canonical program `A080424.P13824810520626728445` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080424 has offset 0).

The definition of A080424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+18*a(n-2)` (program `A080424.P13824810520626728445`, by `A080424.P13824810520626728445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080424.P13824810520626728445

`3*a(n-1)+18*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080424

/-- `3*a(n-1)+18*a(n-2)` -/
def P13824810520626728445.Spec : Prop :=
  ∀ n, (P13824810520626728445.a n : ℤ) = A080424 n

theorem P13824810520626728445.correct : P13824810520626728445.Spec := by
  intro n
  simp only [A080424]

end A080424

/-! ## A080424.P8167604303202632234

`3^(n-1)*A001045(n)`
-/

namespace A080424.P8167604303202632234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

end

end A080424.P8167604303202632234

namespace A080424

/-- `3^(n-1)*A001045(n)` -/
def P8167604303202632234.Spec : Prop :=
  ∀ n, P8167604303202632234.a n = (A080424 n : ℚ)

end A080424

/-! ## A080424.P2197558049975190487

`(6^n-(-3)^n)/9`
-/

namespace A080424.P2197558049975190487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - (-3) ^ n : ℚ) / 9

end

end A080424.P2197558049975190487

namespace A080424

/-- `(6^n-(-3)^n)/9` -/
def P2197558049975190487.Spec : Prop :=
  ∀ n, P2197558049975190487.a n = (A080424 n : ℚ)

theorem P2197558049975190487.correct : P2197558049975190487.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A080424, Nat.add_sub_cancel, A080424.P2197558049975190487.a, A080424.P13824810520626728445.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A080424, Nat.add_sub_cancel, A080424.P2197558049975190487.a, A080424.P13824810520626728445.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A080424

/-! ## A080424.P18350723163638260394

`ogf(x/(1-3x-18x^2))`
-/

namespace A080424.P18350723163638260394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -18] n

end

end A080424.P18350723163638260394

namespace A080424

/-- `ogf(x/(1-3x-18x^2))` -/
def P18350723163638260394.Spec : Prop :=
  ∀ n, P18350723163638260394.a n = A080424 n

end A080424

/-! ## A080424.P9567929821046369979

`6^(n-1)-3*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A080424.P9567929821046369979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 3 * a (n - 1)

end

end A080424.P9567929821046369979

namespace A080424

/-- `6^(n-1)-3*a(n-1)` -/
def P9567929821046369979.Spec : Prop :=
  ∀ n, P9567929821046369979.a n = (A080424 n : ℚ)

end A080424

/-! ## A080424.P13484434900989024021

`A001045(n)*A133494(n)`
-/

namespace A080424.P13484434900989024021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A133494 n

end

end A080424.P13484434900989024021

namespace A080424

/-- `A001045(n)*A133494(n)` -/
def P13484434900989024021.Spec : Prop :=
  ∀ n, P13484434900989024021.a n = A080424 n

end A080424

/-! ## A080424.P5755156352785864572

`A001045(n)*A140429(n)`
-/

namespace A080424.P5755156352785864572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A140429 n

end

end A080424.P5755156352785864572

namespace A080424

/-- `A001045(n)*A140429(n)` -/
def P5755156352785864572.Spec : Prop :=
  ∀ n, P5755156352785864572.a n = A080424 n

end A080424

/-! ## A080424.P10729372279975283553

`A001045(n)*A155734(n)`
-/

namespace A080424.P10729372279975283553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A155734 n

end

end A080424.P10729372279975283553

namespace A080424

/-- `A001045(n)*A155734(n)` -/
def P10729372279975283553.Spec : Prop :=
  ∀ n, P10729372279975283553.a n = A080424 n

end A080424

/-! ## A080424.P4171331704395753682

`A140429(n)*A152046(n)`
-/

namespace A080424.P4171331704395753682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A152046 n

end

end A080424.P4171331704395753682

namespace A080424

/-- `A140429(n)*A152046(n)` -/
def P4171331704395753682.Spec : Prop :=
  ∀ n, P4171331704395753682.a n = A080424 n

end A080424

/-! ## A080424.P11881688114204936248

`A140429(n)*A167167(n)`
-/

namespace A080424.P11881688114204936248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A167167 n

end

end A080424.P11881688114204936248

namespace A080424

/-- `A140429(n)*A167167(n)` -/
def P11881688114204936248.Spec : Prop :=
  ∀ n, P11881688114204936248.a n = A080424 n

end A080424

/-! ## A080424.P16545344575766499996

`A001045(n)*A094388(n)-A001045(n)`
-/

namespace A080424.P16545344575766499996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A094388 n - A001045 n

end

end A080424.P16545344575766499996

namespace A080424

/-- `A001045(n)*A094388(n)-A001045(n)` -/
def P16545344575766499996.Spec : Prop :=
  ∀ n, P16545344575766499996.a n = A080424 n

end A080424

/-! ## A080424.P6346682890388231538

`A001045(n)/A171449(n)*A167747(n)`
-/

namespace A080424.P6346682890388231538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 n : ℚ) / (A171449 n : ℚ) * (A167747 n : ℚ)

end

end A080424.P6346682890388231538

namespace A080424

/-- `A001045(n)/A171449(n)*A167747(n)` -/
def P6346682890388231538.Spec : Prop :=
  ∀ n, P6346682890388231538.a n = (A080424 n : ℚ)

end A080424

/-!
# A080425: Period 3: repeat [0, 2, 1].

The programs for A080425, the canonical program `A080425.P5336451965904384133` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080425 has offset 0).

The definition of A080425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080425.P5336451965904384133

`a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080425

/-- `a(n-3)` -/
def P5336451965904384133.Spec : Prop :=
  ∀ n, (P5336451965904384133.a n : ℤ) = A080425 n

theorem P5336451965904384133.correct : P5336451965904384133.Spec := by
  intro n
  simp only [A080425]

end A080425

/-!
# A080426: a(1)=1, a(2)=3; all terms are either 1 or 3; each run of 3's is followed by a run of two 1's; and a(n) is the length of the n-th run of 3's.

The programs for A080426, the canonical program `A080426.P3949291038634264302` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080426 has offset 1).

The definition of A080426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080426.P13239924683003893568

`a(A339584(n))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A080426.P13239924683003893568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (A339584 n).toNat

end

end A080426.P13239924683003893568

namespace A080426

/-- `a(A339584(n))` -/
def P13239924683003893568.Spec : Prop :=
  ∀ n, (P13239924683003893568.a n : ℤ) = A080426 (n + 1)

end A080426

/-! ## A080426.P3949291038634264302

`or(1, A026465(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080426

/-- `or(1, A026465(n+1))` -/
def P3949291038634264302.Spec : Prop :=
  ∀ n, P3949291038634264302.a n = A080426 (n + 1)

theorem P3949291038634264302.correct : P3949291038634264302.Spec := by
  intro n
  simp only [A080426, Nat.add_sub_cancel]

end A080426

/-! ## A080426.P3971714492480133473

`A036554(n+1)-A171947(n+1)`
-/

namespace A080426.P3971714492480133473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A171947 (n + 1)

end

end A080426.P3971714492480133473

namespace A080426

/-- `A036554(n+1)-A171947(n+1)` -/
def P3971714492480133473.Spec : Prop :=
  ∀ n, P3971714492480133473.a n = A080426 (n + 1)

end A080426

/-! ## A080426.P13217683675785000123

`A000032(Δ[A026465(n)+a(n-1)])` with `a(0)=1`
-/

namespace A080426.P13217683675785000123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026465 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A080426.P13217683675785000123

namespace A080426

/-- `A000032(Δ[A026465(n)+a(n-1)])` -/
def P13217683675785000123.Spec : Prop :=
  ∀ n, P13217683675785000123.a n = A080426 (n + 1)

end A080426

/-! ## A080426.P5671270534556393863

`A000203(Δ[A026465(n)+a(n-1)])` with `a(0)=1`
-/

namespace A080426.P5671270534556393863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026465 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A080426.P5671270534556393863

namespace A080426

/-- `A000203(Δ[A026465(n)+a(n-1)])` -/
def P5671270534556393863.Spec : Prop :=
  ∀ n, P5671270534556393863.a n = A080426 (n + 1)

end A080426

/-!
# A080428: First differences of A079255.

The programs for A080428, the canonical program `A080428.P12675734554739294677` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080428 has offset 1).

The definition of A080428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080428.P12675734554739294677

`A285430(n+1)+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080428

/-- `A285430(n+1)+2` -/
def P12675734554739294677.Spec : Prop :=
  ∀ n, P12675734554739294677.a n = A080428 (n + 1)

theorem P12675734554739294677.correct : P12675734554739294677.Spec := by
  intro n
  simp only [A080428, Nat.add_sub_cancel]

end A080428

/-! ## A080428.P12504239244572618166

`Δ[A079255(n+1)]`
-/

namespace A080428.P12504239244572618166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080428.P12504239244572618166

namespace A080428

/-- `Δ[A079255(n+1)]` -/
def P12504239244572618166.Spec : Prop :=
  ∀ n, P12504239244572618166.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P11588210280060451236

`A079255(n+2)-A079255(n+1)`
-/

namespace A080428.P11588210280060451236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (n + 2) - A079255 (n + 1)

end

end A080428.P11588210280060451236

namespace A080428

/-- `A079255(n+2)-A079255(n+1)` -/
def P11588210280060451236.Spec : Prop :=
  ∀ n, P11588210280060451236.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P6250506217490041190

`Δ[A080902(n+2)]`
-/

namespace A080428.P6250506217490041190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080428.P6250506217490041190

namespace A080428

/-- `Δ[A080902(n+2)]` -/
def P6250506217490041190.Spec : Prop :=
  ∀ n, P6250506217490041190.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P17618178177718368485

`A285301(Δ[n²])+2`
-/

namespace A080428.P17618178177718368485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A080428.P17618178177718368485

namespace A080428

/-- `A285301(Δ[n²])+2` -/
def P17618178177718368485.Spec : Prop :=
  ∀ n, P17618178177718368485.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P11667178972219834455

`A284751(2*(n+1))+2`
-/

namespace A080428.P11667178972219834455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

end

end A080428.P11667178972219834455

namespace A080428

/-- `A284751(2*(n+1))+2` -/
def P11667178972219834455.Spec : Prop :=
  ∀ n, P11667178972219834455.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P6460850226141869296

`Δ[A026363(Δ[n²])]`
-/

namespace A080428.P6460850226141869296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080428.P6460850226141869296

namespace A080428

/-- `Δ[A026363(Δ[n²])]` -/
def P6460850226141869296.Spec : Prop :=
  ∀ n, P6460850226141869296.a n = A080428 (n + 1)

end A080428

/-! ## A080428.P12430352419226472329

`abs(Δ[A026363(2*n+1)])`
-/

namespace A080428.P12430352419226472329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A080428.P12430352419226472329

namespace A080428

/-- `abs(Δ[A026363(2*n+1)])` -/
def P12430352419226472329.Spec : Prop :=
  ∀ n, P12430352419226472329.a n = A080428 (n + 1)

end A080428

/-!
# A080429: Odd numbers such that all a(i)*a(j) with i

The programs for A080429, there is no canonical definition to state claims against.
-/

/-! ## A080429.P8630020089853888045

`filter[A382856(n+1), A354806(#)]`
-/

namespace A080429.P8630020089853888045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354806 (f1 j).toNat = 1) n)

end

end A080429.P8630020089853888045

/-!
# A080430: a(n) = least odd number such that all pairwise sums a(i) + a(j), i < j <= n, are distinct.

The programs for A080430, there is no canonical definition to state claims against.
-/

/-! ## A080430.P3633197089621138831

`A080432(n+1)-1`
-/

namespace A080430.P3633197089621138831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080432 (n + 1) - 1

end

end A080430.P3633197089621138831

/-! ## A080430.P10714755156318578126

`2*A010672(n)+1`
-/

namespace A080430.P10714755156318578126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010672 n + 1

end

end A080430.P10714755156318578126

/-! ## A080430.P289956927854134302

`2*A011185(n+1)-1`
-/

namespace A080430.P289956927854134302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011185 (n + 1) - 1

end

end A080430.P289956927854134302

/-! ## A080430.P9854874880472936063

`or(1, 2*A010672(n*cot(atan(1))))`
-/

namespace A080430.P9854874880472936063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A010672 (SequenceMachineLib.roundAway ((n : ℝ) * Real.cot (Real.arctan (1 : ℝ)))).toNat)

end

end A080430.P9854874880472936063

/-! ## A080430.P10994400764414974660

`A011185(n+1)+A010672(n)`
-/

namespace A080430.P10994400764414974660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + A010672 n

end

end A080430.P10994400764414974660

/-! ## A080430.P9103451802784433240

`or(2*A010672(n), A007318(C(2, n)))`
-/

namespace A080430.P9103451802784433240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A010672 n) (A007318 (Nat.choose 2 n))

end

end A080430.P9103451802784433240

/-! ## A080430.P16748405553052476892

`xor(2*A010672(n), (A007318(n)%2)!)`
-/

namespace A080430.P16748405553052476892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A010672 n) (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ)

end

end A080430.P16748405553052476892

/-! ## A080430.P11350096639924693036

`A280193(2*n+1)+2*A011185(n+1)`
-/

namespace A080430.P11350096639924693036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + 2 * A011185 (n + 1)

end

end A080430.P11350096639924693036

/-! ## A080430.P6916750565400856957

`or(∏{d}[(-1)^n, A020639(2*#)]-1, 2*A010672(n))`
-/

namespace A080430.P6916750565400856957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 (2 * d) - 1) (2 * A010672 n)

end

end A080430.P6916750565400856957

/-! ## A080430.P11562809781917362679

`A005282(n+1)+A010672(n)-A133097(n+1)`
-/

namespace A080430.P11562809781917362679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) + (A010672 n - A133097 (n + 1))

end

end A080430.P11562809781917362679

/-! ## A080430.P18111254854389980839

`A011185(n+1)+A025582(n+1)-A133097(n+1)`
-/

namespace A080430.P18111254854389980839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + (A025582 (n + 1) - A133097 (n + 1))

end

end A080430.P18111254854389980839

/-! ## A080430.P4831437478047341175

`A158210(A105439(n+1))+2*A011185(n+1)`
-/

namespace A080430.P4831437478047341175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A105439 (n + 1)).toNat + 2 * A011185 (n + 1)

end

end A080430.P4831437478047341175

/-! ## A080430.P6989682604308895289

`or(2*A010672(n), char[A008612(n)])`
-/

namespace A080430.P6989682604308895289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A010672 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080430.P6989682604308895289

/-! ## A080430.P12312224551736551117

`A209635(A002145(n+1))+2*A011185(n+1)`
-/

namespace A080430.P12312224551736551117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A002145 (n + 1)).toNat + 2 * A011185 (n + 1)

end

end A080430.P12312224551736551117

/-! ## A080430.P13313182325892715268

`A008836(A002476(n+1))+2*A011185(n+1)`
-/

namespace A080430.P13313182325892715268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002476 (n + 1)).toNat + 2 * A011185 (n + 1)

end

end A080430.P13313182325892715268

/-! ## A080430.P6843652977800321105

`A000027(or(1, 2*A010672(n)))`
-/

namespace A080430.P6843652977800321105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor 1 (2 * A010672 n)).toNat

end

end A080430.P6843652977800321105

/-! ## A080430.P8554855899497961019

`A000027(xor(1, 2*A010672(n)))`
-/

namespace A080430.P8554855899497961019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (2 * A010672 n)).toNat

end

end A080430.P8554855899497961019

/-! ## A080430.P9719718621325743426

`A000027(A010672(n)+A010672(n)+1)`
-/

namespace A080430.P9719718621325743426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010672 n + (A010672 n + 1)).toNat

end

end A080430.P9719718621325743426

/-! ## A080430.P12500351081035355716

`A000265(or(1, 2*A010672(n)))`
-/

namespace A080430.P12500351081035355716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (2 * A010672 n)).toNat

end

end A080430.P12500351081035355716

/-!
# A080431: Even numbers such that all a(i)*a(j) are distinct.

The programs for A080431, there is no canonical definition to state claims against.
-/

/-! ## A080431.P3398755007713828288

`2*A066724(n+1)`
-/

namespace A080431.P3398755007713828288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066724 (n + 1)

end

end A080431.P3398755007713828288

/-! ## A080431.P6211085550364974493

`4*A066724(Δ[n²]-n)/2`
-/

namespace A080431.P6211085550364974493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A066724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A080431.P6211085550364974493

/-! ## A080431.P11629770851859200608

`A000027(2*A066724(Δ[n²]-n))`
-/

namespace A080431.P11629770851859200608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A066724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A080431.P11629770851859200608

/-! ## A080431.P16808322455791569782

`A066724(A000027(n+1))+A066724(n+1)`
-/

namespace A080431.P16808322455791569782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066724 (A000027 (n + 1)).toNat + A066724 (n + 1)

end

end A080431.P16808322455791569782

/-! ## A080431.P15533215435626593800

`A004277(A066724(n+1))`
-/

namespace A080431.P15533215435626593800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A066724 (n + 1)).toNat

end

end A080431.P15533215435626593800

/-! ## A080431.P8995492839622072021

`A004275(A066724(n+1)+1)`
-/

namespace A080431.P8995492839622072021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A066724 (n + 1) + 1).toNat

end

end A080431.P8995492839622072021

/-! ## A080431.P793367648117202169

`A005843(A066724(Δ[n²]-n))`
-/

namespace A080431.P793367648117202169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A066724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A080431.P793367648117202169

/-! ## A080431.P11817143007489937094

`A005843(A066724(n+1)%∑[n+2])`
-/

namespace A080431.P11817143007489937094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A066724 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A080431.P11817143007489937094

/-! ## A080431.P650480519991087382

`A005843(A066724(n+1))%A000041(n+4)`
-/

namespace A080431.P650480519991087382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A066724 (n + 1)).toNat) (A000041 (n + 4))

end

end A080431.P650480519991087382

/-! ## A080431.P4205381981088728277

`A005843(A066724(n+1)/A007318(C(2, n)))`
-/

namespace A080431.P4205381981088728277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A066724 (n + 1) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ))).toNat

end

end A080431.P4205381981088728277

/-!
# A080432: Even numbers such that all a(i) + a(j) are distinct.

The programs for A080432, there is no canonical definition to state claims against.
-/

/-! ## A080432.P4601887539252441006

`2*(A010672(n)+1)`
-/

namespace A080432.P4601887539252441006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010672 n + 1)

end

end A080432.P4601887539252441006

/-! ## A080432.P4130742519800273599

`2*A011185(n+1)`
-/

namespace A080432.P4130742519800273599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011185 (n + 1)

end

end A080432.P4130742519800273599

/-! ## A080432.P2830998454462013235

`A011185(n+1)+A010672(n)+1`
-/

namespace A080432.P2830998454462013235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + (A010672 n + 1)

end

end A080432.P2830998454462013235

/-! ## A080432.P10965740717203379777

`n-(A023443(n)-A010672(n))+A010672(n)+1`
-/

namespace A080432.P10965740717203379777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A010672 n) + (A010672 n + 1)

end

end A080432.P10965740717203379777

/-! ## A080432.P18078902640338772482

`A005282(n+1)+A011185(n+1)-A133097(n+1)`
-/

namespace A080432.P18078902640338772482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) + (A011185 (n + 1) - A133097 (n + 1))

end

end A080432.P18078902640338772482

/-! ## A080432.P1852368038233703748

`A080430(n+1)+1`
-/

namespace A080432.P1852368038233703748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080430 (n + 1) + 1

end

end A080432.P1852368038233703748

/-! ## A080432.P16269475159763712194

`A004277(A010672(n)+1)`
-/

namespace A080432.P16269475159763712194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A010672 n + 1).toNat

end

end A080432.P16269475159763712194

/-! ## A080432.P12724437478307051800

`A004277(A011185(n+1))`
-/

namespace A080432.P12724437478307051800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A011185 (n + 1)).toNat

end

end A080432.P12724437478307051800

/-! ## A080432.P11067208484978161560

`A014681(A080430(n+1))`
-/

namespace A080432.P11067208484978161560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A080430 (n + 1)).toNat

end

end A080432.P11067208484978161560

/-!
# A080436: Smallest multiple of n obtained by inserting digits between every pair of digits of n. If n is a k-digit number then there are (k-1) places where digit insertion takes place and a(n) contains at least 2k-1 digits.

The programs for A080436, there is no canonical definition to state claims against.
-/

/-! ## A080436.P12237534532586863931

`A110734(A076084(n+1))`
-/

namespace A080436.P12237534532586863931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110734 (A076084 (n + 1)).toNat

end

end A080436.P12237534532586863931

/-! ## A080436.P1061871340276918248

`A110734(A151764(n+1))`
-/

namespace A080436.P1061871340276918248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110734 (A151764 (n + 1)).toNat

end

end A080436.P1061871340276918248

/-! ## A080436.P17146123057372629969

`A110734(n+1)%A055162(n+1)`
-/

namespace A080436.P17146123057372629969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110734 (n + 1)) (A055162 (n + 1))

end

end A080436.P17146123057372629969

/-! ## A080436.P4322002474853995820

`A110734(n+1-A110735(2*(n+1))%2)`
-/

namespace A080436.P4322002474853995820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110734 ((n + 1 : ℤ) - Int.tmod (A110735 (2 * (n + 1))) 2).toNat

end

end A080436.P4322002474853995820

/-! ## A080436.P8239367778741076911

`A110734(n+1)+A328671(3*n+5)%2`
-/

namespace A080436.P8239367778741076911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110734 (n + 1) + Int.tmod (A328671 (3 * n + 5)) 2

end

end A080436.P8239367778741076911

/-!
# A080437: For n < 5, a(n) = n-th prime. For n >= 5, let m = n-th prime. If m is a k-digit prime then a(n) = smallest prime obtained by inserting at least one digit between every pair of digits of m. There are (k-1) places where digit insertion takes place and a(n) contains at least 2k-1 digits.

The programs for A080437, there is no canonical definition to state claims against.
-/

/-! ## A080437.P4612451660704217834

`p?[or(A055649(n), A185037(n))]`
-/

namespace A080437.P4612451660704217834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055649 n) (A185037 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080437.P4612451660704217834

/-! ## A080437.P11530483108999030678

`p?[or(A055649(n), A185237(n))]`
-/

namespace A080437.P11530483108999030678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055649 n) (A185237 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080437.P11530483108999030678

/-! ## A080437.P16963979611500353734

`p?[or(A055649(n), A210709(n))]`
-/

namespace A080437.P16963979611500353734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055649 n) (A210709 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080437.P16963979611500353734

/-! ## A080437.P3081342882529356955

`p?[A171120(∑[A098378(n+1)])]`
-/

namespace A080437.P3081342882529356955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080437.P3081342882529356955

/-! ## A080437.P16749892990195447190

`∩[A042966(n+1), A171120(n+1)]`
-/

namespace A080437.P16749892990195447190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080437.P16749892990195447190

/-!
# A080438: Smallest square obtained by inserting one or more digits between every pair of consecutive digits of n^2.

The programs for A080438, there is no canonical definition to state claims against.
-/

/-! ## A080438.P13678315749123013614

`∑[A103997(A051301(n))]²`
-/

namespace A080438.P13678315749123013614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (A051301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080438.P13678315749123013614

/-! ## A080438.P8636191047305036804

`∑[A097403(A073364(n+1))]²`
-/

namespace A080438.P8636191047305036804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097403 (A073364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A080438.P8636191047305036804

/-!
# A080443: Largest prime factor of 3^n+2.

The programs for A080443, there is no canonical definition to state claims against.
-/

/-! ## A080443.P656579945463166598

`A006530(3^n+2)`
-/

namespace A080443.P656579945463166598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 ^ n + 2)

end

end A080443.P656579945463166598

/-! ## A080443.P2879583399488380459

`A088387(3^n+2)`
-/

namespace A080443.P2879583399488380459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (3 ^ n + 2)

end

end A080443.P2879583399488380459

/-! ## A080443.P6707879480173003124

`p?[A006530(A168607(n))]`
-/

namespace A080443.P6707879480173003124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080443.P6707879480173003124

/-! ## A080443.P720292751264582262

`or(1, A006530(A259821(n)))`
-/

namespace A080443.P720292751264582262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A259821 n).toNat)

end

end A080443.P720292751264582262

/-! ## A080443.P15866272723867784236

`A034699(A007947(3^n+2))`
-/

namespace A080443.P15866272723867784236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A007947 (3 ^ n + 2)).toNat

end

end A080443.P15866272723867784236

/-!
# A080444: Write n A001055(n) times.

The programs for A080444, there is no canonical definition to state claims against.
-/

/-! ## A080444.P11943778925647651584

`∑[char[A096276(n)]]`
-/

namespace A080444.P11943778925647651584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080444.P11943778925647651584

/-! ## A080444.P10671507673131948512

`∑[char[∑[A001055(n+1)]]]+1`
-/

namespace A080444.P10671507673131948512
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080444.P10671507673131948512

/-! ## A080444.P2224969097246252345

`∑[char[∑[A028422(n+1)+1]]]+1`
-/

namespace A080444.P2224969097246252345
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080444.P2224969097246252345

/-! ## A080444.P4896288465288656476

`char[A096276(A244989(n+1))]+a(n-1)` with `a(0)=1`
-/

namespace A080444.P4896288465288656476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A244989 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A080444.P4896288465288656476

/-! ## A080444.P13914967632244625166

`A064553(A080688(n+1))`
-/

namespace A080444.P13914967632244625166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A080688 (n + 1)).toNat

end

end A080444.P13914967632244625166

/-! ## A080444.P17598445840281172686

`A003963(A378175(n+1))`
-/

namespace A080444.P17598445840281172686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A378175 (n + 1)).toNat

end

end A080444.P17598445840281172686

/-! ## A080444.P3008387945167889359

`A036042(eq[A036042(n), A118851(n)])`
-/

namespace A080444.P3008387945167889359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A080444.P3008387945167889359

/-!
# A080445: a(1) = 1, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080445, there is no canonical definition to state claims against.
-/

/-! ## A080445.P13154905876793021006

`(10-A011582(A150335(n)))*a(n-1)` with `a(0)=1`
-/

namespace A080445.P13154905876793021006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (10 - A011582 (A150335 n).toNat) * a (n - 1)

end

end A080445.P13154905876793021006

/-! ## A080445.P4478079197568533206

`∏[A358082(A027745(∑{e}[n+1, #]))]`
-/

namespace A080445.P4478079197568533206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358082 (A027745 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080445.P4478079197568533206

/-! ## A080445.P6348382638389843001

`∏[A351997(A000684(∑{e}[n+1, #]+1))]`
-/

namespace A080445.P6348382638389843001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351997 (A000684 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080445.P6348382638389843001

/-!
# A080446: a(1) = 2, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080446, there is no canonical definition to state claims against.
-/

/-! ## A080446.P15350601933388583489

`and(-2, A080447(n+1))`
-/

namespace A080446.P15350601933388583489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A080447 (n + 1))

end

end A080446.P15350601933388583489

/-! ## A080446.P14624728881632118897

`and(-3, A080450(n+1))/(floor(acot(n))+1)`
-/

namespace A080446.P14624728881632118897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-3) (A080450 (n + 1)) : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 : ℚ)

end

end A080446.P14624728881632118897

/-! ## A080446.P11789451012486342920

`A080447(n+1)-A000007(n)`
-/

namespace A080446.P11789451012486342920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080447 (n + 1) - A000007 n

end

end A080446.P11789451012486342920

/-! ## A080446.P15399961398415484436

`A080448(n+1)-A000038(n)`
-/

namespace A080446.P15399961398415484436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080448 (n + 1) - A000038 n

end

end A080446.P15399961398415484436

/-! ## A080446.P16876040537483174243

`A080448(n+1)/(A000007(n)+1)`
-/

namespace A080446.P16876040537483174243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080448 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A080446.P16876040537483174243

/-!
# A080447: a(1) = 3, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080447, there is no canonical definition to state claims against.
-/

/-! ## A080447.P5479144095683748827

`floor(A080446(n+1)+acot(n))`
-/

namespace A080447.P5479144095683748827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080446 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A080447.P5479144095683748827

/-! ## A080447.P3691462539160804956

`and(-3, A080450(n+1))-floor(acot(n))`
-/

namespace A080447.P3691462539160804956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A080450 (n + 1)) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A080447.P3691462539160804956

/-! ## A080447.P9154862998859219429

`A080446(n+1)+A000007(n)`
-/

namespace A080447.P9154862998859219429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080446 (n + 1) + A000007 n

end

end A080447.P9154862998859219429

/-! ## A080447.P13558552871152449451

`A080448(n+1)-A000007(n)`
-/

namespace A080447.P13558552871152449451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080448 (n + 1) - A000007 n

end

end A080447.P13558552871152449451

/-! ## A080447.P15467637903533336911

`A130706(2*n)+A080446(n+1)`
-/

namespace A080447.P15467637903533336911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n) + A080446 (n + 1)

end

end A080447.P15467637903533336911

/-! ## A080447.P671155955944956581

`A080446(n+1)+A000038(n)/2`
-/

namespace A080447.P671155955944956581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080446 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A080447.P671155955944956581

/-! ## A080447.P15595475192030906755

`A080448(n+1)-A000038(n)/2`
-/

namespace A080447.P15595475192030906755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080448 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A080447.P15595475192030906755

/-!
# A080448: a(1) = 4, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1). Also a(n) is not divisible by 10.

The programs for A080448, there is no canonical definition to state claims against.
-/

/-! ## A080448.P11560777402910431252

`lcm(4, A080446(n+1))`
-/

namespace A080448.P11560777402910431252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A080446 (n + 1))

end

end A080448.P11560777402910431252

/-! ## A080448.P3775968889129328366

`and(-3, A080450(n+1))`
-/

namespace A080448.P3775968889129328366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A080450 (n + 1))

end

end A080448.P3775968889129328366

/-! ## A080448.P4294493578440945054

`and(-3, lcm(2, A080447(n+1)))`
-/

namespace A080448.P4294493578440945054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Int.lcm 2 (A080447 (n + 1)) : ℤ)

end

end A080448.P4294493578440945054

/-! ## A080448.P842271595537620166

`A080447(n+1)+A000007(n)`
-/

namespace A080448.P842271595537620166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080447 (n + 1) + A000007 n

end

end A080448.P842271595537620166

/-! ## A080448.P16205681277809597091

`A080446(n+1)+A000038(n)`
-/

namespace A080448.P16205681277809597091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080446 (n + 1) + A000038 n

end

end A080448.P16205681277809597091

/-! ## A080448.P5713910052048075556

`(A000007(n)+1)*A080446(n+1)`
-/

namespace A080448.P5713910052048075556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A080446 (n + 1)

end

end A080448.P5713910052048075556

/-!
# A080449: a(1) = 5, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1). Also a(n) is not divisible by 10.

The programs for A080449, there is no canonical definition to state claims against.
-/

/-! ## A080449.P18164785828030493032

`∏[A225660(A213207(∑[6*n]))]`
-/

namespace A080449.P18164785828030493032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225660 (A213207 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080449.P18164785828030493032

/-!
# A080450: a(1) = 6, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1). Also a(n) is not divisible by 10.

The programs for A080450, there is no canonical definition to state claims against.
-/

/-! ## A080450.P5995640134715574586

`lcm(2, A080447(n+1))`
-/

namespace A080450.P5995640134715574586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080447 (n + 1))

end

end A080450.P5995640134715574586

/-! ## A080450.P11407937371783863000

`lcm(3, A080446(n+1))`
-/

namespace A080450.P11407937371783863000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A080446 (n + 1))

end

end A080450.P11407937371783863000

/-! ## A080450.P10519259100562195341

`or(4, A080446(A000027(n+1)))`
-/

namespace A080450.P10519259100562195341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A080446 (A000027 (n + 1)).toNat)

end

end A080450.P10519259100562195341

/-! ## A080450.P14047198254191442200

`A080448(n+1)+A000038(n)`
-/

namespace A080450.P14047198254191442200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080448 (n + 1) + A000038 n

end

end A080450.P14047198254191442200

/-! ## A080450.P565803172734052443

`A080446(n+1)+A000038(n)²`
-/

namespace A080450.P565803172734052443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080446 (n + 1) + A000038 n ^ 2

end

end A080450.P565803172734052443

/-! ## A080450.P9856987302559455921

`(A000007(n)+1)*A080447(n+1)`
-/

namespace A080450.P9856987302559455921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A080447 (n + 1)

end

end A080450.P9856987302559455921

/-! ## A080450.P5834875859627783588

`A080448(n+1)+2*A000007(n)`
-/

namespace A080450.P5834875859627783588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080448 (n + 1) + 2 * A000007 n

end

end A080450.P5834875859627783588

/-!
# A080451: a(1) = 7, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080451, there is no canonical definition to state claims against.
-/

/-! ## A080451.P17387121284661883138

`A080452(n+1)-A130706(n)`
-/

namespace A080451.P17387121284661883138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080452 (n + 1) - A130706 n

end

end A080451.P17387121284661883138

/-! ## A080451.P6374197928017863750

`A080452(n+1)-A080453(n+1)%4`
-/

namespace A080451.P6374197928017863750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080452 (n + 1) - Int.tmod (A080453 (n + 1)) 4

end

end A080451.P6374197928017863750

/-! ## A080451.P12678535511476265521

`A080452(n+1)-lcm(A000122(n), A010815(n))`
-/

namespace A080451.P12678535511476265521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080452 (n + 1) - (Int.lcm (A000122 n) (A010815 n) : ℤ)

end

end A080451.P12678535511476265521

/-! ## A080451.P13647960441861831871

`A080452(n+1)-A084099(A171446(n))`
-/

namespace A080451.P13647960441861831871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080452 (n + 1) - A084099 (A171446 n).toNat

end

end A080451.P13647960441861831871

/-! ## A080451.P1465910644769566546

`A080452(n+1)-A328729(A000056(n+1))`
-/

namespace A080451.P1465910644769566546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080452 (n + 1) - A328729 (A000056 (n + 1)).toNat

end

end A080451.P1465910644769566546

/-!
# A080452: a(1) = 8, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080452, there is no canonical definition to state claims against.
-/

/-! ## A080452.P10845426207879053002

`A130706(n)+A080451(n+1)`
-/

namespace A080452.P10845426207879053002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A080451 (n + 1)

end

end A080452.P10845426207879053002

/-! ## A080452.P3974049865669686530

`A080451(n+1)+A000079(n)%4`
-/

namespace A080452.P3974049865669686530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080451 (n + 1) + Int.tmod (A000079 n) 4

end

end A080452.P3974049865669686530

/-! ## A080452.P12643178879211459949

`A080451(n+1)+A080453(n+1)%4`
-/

namespace A080452.P12643178879211459949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080451 (n + 1) + Int.tmod (A080453 (n + 1)) 4

end

end A080452.P12643178879211459949

/-! ## A080452.P12262597782337454409

`A080451(n+1)+and(A059129(n), A080451(n+1))`
-/

namespace A080452.P12262597782337454409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080451 (n + 1) + Int.land (A059129 n) (A080451 (n + 1))

end

end A080452.P12262597782337454409

/-! ## A080452.P7117861934128809285

`A080451(n+1)+A000122(A171446(n))`
-/

namespace A080452.P7117861934128809285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080451 (n + 1) + A000122 (A171446 n).toNat

end

end A080452.P7117861934128809285

/-!
# A080453: a(1) = 9, a(n) = smallest (nontrivial) multiple of a(n-1) containing n digits, a(n) not equal to 10*a(n-1).

The programs for A080453, there is no canonical definition to state claims against.
-/

/-! ## A080453.P3543801006069062795

`A080446(n+1)+A080451(n+1)%8`
-/

namespace A080453.P3543801006069062795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080446 (n + 1) + Int.tmod (A080451 (n + 1)) 8

end

end A080453.P3543801006069062795

/-! ## A080453.P3318882172904243166

`lcm(3, A080446(n+1))+3*A130706(n)`
-/

namespace A080453.P3318882172904243166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A080446 (n + 1)) : ℤ) + 3 * A130706 n

end

end A080453.P3318882172904243166

/-! ## A080453.P9785862272128481314

`A161435(A193507(n+1))+A080447(n+1)+A000007(n)`
-/

namespace A080453.P9785862272128481314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 (A193507 (n + 1)).toNat + (A080447 (n + 1) + A000007 n)

end

end A080453.P9785862272128481314

/-! ## A080453.P12992950122345420519

`A080447(n+1)+A004016(A355057(n+1))`
-/

namespace A080453.P12992950122345420519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080447 (n + 1) + A004016 (A355057 (n + 1)).toNat

end

end A080453.P12992950122345420519

/-!
# A080455: a(1)=1; for n>1, a(n) = a(n-1) if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

The programs for A080455, the canonical program `A080455.P13405805235993438621` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080455 has offset 1).

The definition of A080455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080455.P13405805235993438621

`4*(n+1)+1-4*floor((n+4)/4)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080455

/-- `4*(n+1)+1-4*floor((n+4)/4)` -/
def P13405805235993438621.Spec : Prop :=
  ∀ n, P13405805235993438621.a n = A080455 (n + 1)

theorem P13405805235993438621.correct : P13405805235993438621.Spec := by
  intro n
  simp only [A080455, Nat.add_sub_cancel]

end A080455

/-! ## A080455.P16538218606065939631

`or(1, ∑[5-gcd(4, n)])`
-/

namespace A080455.P16538218606065939631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080455.P16538218606065939631

namespace A080455

/-- `or(1, ∑[5-gcd(4, n)])` -/
def P16538218606065939631.Spec : Prop :=
  ∀ n, P16538218606065939631.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P3306977450898179354

`xor(2, or(3, 3*(n+1)))`
-/

namespace A080455.P3306977450898179354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (3 * (n + 1)))

end

end A080455.P3306977450898179354

namespace A080455

/-- `xor(2, or(3, 3*(n+1)))` -/
def P3306977450898179354.Spec : Prop :=
  ∀ n, (P3306977450898179354.a n : ℤ) = A080455 (n + 1)

end A080455

/-! ## A080455.P7860283596839223617

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A080455.P7860283596839223617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 4, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080455.P7860283596839223617

namespace A080455

/-- `∑[floor(a(n-4))]` -/
def P7860283596839223617.Spec : Prop :=
  ∀ n, (P7860283596839223617.a n : ℤ) = A080455 (n + 1)

end A080455

/-! ## A080455.P3174866597140723433

`xor(3*(n+1), (n+2)%4)`
-/

namespace A080455.P3174866597140723433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * (n + 1)) ((n + 2) % 4)

end

end A080455.P3174866597140723433

namespace A080455

/-- `xor(3*(n+1), (n+2)%4)` -/
def P3174866597140723433.Spec : Prop :=
  ∀ n, (P3174866597140723433.a n : ℤ) = A080455 (n + 1)

end A080455

/-! ## A080455.P10875197661274524404

`∑[(a(n-4)/2)²]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4, a(4)=0`
-/

namespace A080455.P10875197661274524404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 4, 4, 0] fun n f1 =>
  (f1 (n - 4) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080455.P10875197661274524404

namespace A080455

/-- `∑[(a(n-4)/2)²]` -/
def P10875197661274524404.Spec : Prop :=
  ∀ n, P10875197661274524404.a n = (A080455 (n + 1) : ℚ)

end A080455

/-! ## A080455.P2532224824226172114

`or(1, A112652(n+1))`
-/

namespace A080455.P2532224824226172114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112652 (n + 1))

end

end A080455.P2532224824226172114

namespace A080455

/-- `or(1, A112652(n+1))` -/
def P2532224824226172114.Spec : Prop :=
  ∀ n, P2532224824226172114.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P632414123795864294

`or(1, ∑[A287765(n+1)])`
-/

namespace A080455.P632414123795864294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080455.P632414123795864294

namespace A080455

/-- `or(1, ∑[A287765(n+1)])` -/
def P632414123795864294.Spec : Prop :=
  ∀ n, P632414123795864294.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P8322978706470000871

`A016813(A057353(n+1))`
-/

namespace A080455.P8322978706470000871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A057353 (n + 1)).toNat

end

end A080455.P8322978706470000871

namespace A080455

/-- `A016813(A057353(n+1))` -/
def P8322978706470000871.Spec : Prop :=
  ∀ n, P8322978706470000871.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P7581806670950578123

`A016813(n-A002265(n))`
-/

namespace A080455.P7581806670950578123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((n : ℤ) - A002265 n).toNat

end

end A080455.P7581806670950578123

namespace A080455

/-- `A016813(n-A002265(n))` -/
def P7581806670950578123.Spec : Prop :=
  ∀ n, P7581806670950578123.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P10233328647727946201

`A016813(1-A008621(n)+n)`
-/

namespace A080455.P10233328647727946201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (1 - A008621 n + (n : ℤ)).toNat

end

end A080455.P10233328647727946201

namespace A080455

/-- `A016813(1-A008621(n)+n)` -/
def P10233328647727946201.Spec : Prop :=
  ∀ n, P10233328647727946201.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P3389270372174478154

`A016813(1-(A008621(n)-n))`
-/

namespace A080455.P3389270372174478154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (1 - (A008621 n - (n : ℤ))).toNat

end

end A080455.P3389270372174478154

namespace A080455

/-- `A016813(1-(A008621(n)-n))` -/
def P3389270372174478154.Spec : Prop :=
  ∀ n, P3389270372174478154.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P13283638818220052914

`A016813(2*n-A001068(n))`
-/

namespace A080455.P13283638818220052914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((2 * n : ℤ) - A001068 n).toNat

end

end A080455.P13283638818220052914

namespace A080455

/-- `A016813(2*n-A001068(n))` -/
def P13283638818220052914.Spec : Prop :=
  ∀ n, P13283638818220052914.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P3845484133455974957

`A016813(n-A004526(A004526(n)))`
-/

namespace A080455.P3845484133455974957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((n : ℤ) - A004526 (A004526 n).toNat).toNat

end

end A080455.P3845484133455974957

namespace A080455

/-- `A016813(n-A004526(A004526(n)))` -/
def P3845484133455974957.Spec : Prop :=
  ∀ n, P3845484133455974957.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P481095615988372791

`A163980(A032766(n+1))`
-/

namespace A080455.P481095615988372791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A032766 (n + 1)).toNat

end

end A080455.P481095615988372791

namespace A080455

/-- `A163980(A032766(n+1))` -/
def P481095615988372791.Spec : Prop :=
  ∀ n, P481095615988372791.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P17763543548133057774

`A168277(A085624(n+1))`
-/

namespace A080455.P17763543548133057774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (A085624 (n + 1)).toNat

end

end A080455.P17763543548133057774

namespace A080455

/-- `A168277(A085624(n+1))` -/
def P17763543548133057774.Spec : Prop :=
  ∀ n, P17763543548133057774.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P10699864172931552386

`A163980(A301729(n+1))`
-/

namespace A080455.P10699864172931552386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A301729 (n + 1)).toNat

end

end A080455.P10699864172931552386

namespace A080455

/-- `A163980(A301729(n+1))` -/
def P10699864172931552386.Spec : Prop :=
  ∀ n, P10699864172931552386.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P3010997097720295721

`A168277(A004526(n+1)+n+2)`
-/

namespace A080455.P3010997097720295721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (A004526 (n + 1) + (n + 2 : ℤ)).toNat

end

end A080455.P3010997097720295721

namespace A080455

/-- `A168277(A004526(n+1)+n+2)` -/
def P3010997097720295721.Spec : Prop :=
  ∀ n, P3010997097720295721.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P2353200710558459458

`A060747(A060747(n+1-A002265(n)))`
-/

namespace A080455.P2353200710558459458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A060747 ((n + 1 : ℤ) - A002265 n).toNat).toNat

end

end A080455.P2353200710558459458

namespace A080455

/-- `A060747(A060747(n+1-A002265(n)))` -/
def P2353200710558459458.Spec : Prop :=
  ∀ n, P2353200710558459458.a n = A080455 (n + 1)

end A080455

/-! ## A080455.P10111684027609248088

`A016813(A004526(A004526(n+1)+n+1))`
-/

namespace A080455.P10111684027609248088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A004526 (A004526 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A080455.P10111684027609248088

namespace A080455

/-- `A016813(A004526(A004526(n+1)+n+1))` -/
def P10111684027609248088.Spec : Prop :=
  ∀ n, P10111684027609248088.a n = A080455 (n + 1)

end A080455

/-!
# A080456: a(1) = a(2) = 2; for n > 2, a(n) = a(n-1) if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

The programs for A080456, the canonical program `A080456.P13600502269770630097` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080456 has offset 1).

The definition of A080456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080456.P13600502269770630097

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=2, a(2)=6, a(3)=10, a(4)=14, a(5)=18, a(6)=18`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080456

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P13600502269770630097.Spec : Prop :=
  ∀ n, P13600502269770630097.a n = A080456 (n + 1)

theorem P13600502269770630097.correct : P13600502269770630097.Spec := by
  intro n
  simp only [A080456, Nat.add_sub_cancel]

end A080456

/-! ## A080456.P4717503824046450206

`abs((n-2)%4+3*n)`
-/

namespace A080456.P4717503824046450206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n : ℤ) - 2) 4 + (3 * n : ℤ)|

end

end A080456.P4717503824046450206

namespace A080456

/-- `abs((n-2)%4+3*n)` -/
def P4717503824046450206.Spec : Prop :=
  ∀ n, P4717503824046450206.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P3809754725214523592

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=0, a(2)=4, a(3)=4, a(4)=4, a(5)=4, a(6)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A080456.P3809754725214523592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 4, 4, 4, 4, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080456.P3809754725214523592

namespace A080456

/-- `∑[floor(a(n-4))]` -/
def P3809754725214523592.Spec : Prop :=
  ∀ n, (P3809754725214523592.a n : ℤ) = A080456 (n + 1)

end A080456

/-! ## A080456.P7675564326893870073

`(a(n-1)+n)%4+3*n` with `a(0)=2, a(1)=2`
-/

namespace A080456.P7675564326893870073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  (a (n - 1) + n) % 4 + 3 * n

end

end A080456.P7675564326893870073

namespace A080456

/-- `(a(n-1)+n)%4+3*n` -/
def P7675564326893870073.Spec : Prop :=
  ∀ n, (P7675564326893870073.a n : ℤ) = A080456 (n + 1)

end A080456

/-! ## A080456.P10990062385167481959

`and(3, a(n-1)+n)+3*n` with `a(0)=2, a(1)=2`
-/

namespace A080456.P10990062385167481959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.land 3 (a (n - 1) + n) + 3 * n

end

end A080456.P10990062385167481959

namespace A080456

/-- `and(3, a(n-1)+n)+3*n` -/
def P10990062385167481959.Spec : Prop :=
  ∀ n, (P10990062385167481959.a n : ℤ) = A080456 (n + 1)

end A080456

/-! ## A080456.P5397641527593587064

`and(3, a(n-1)+n)+n+n+n` with `a(0)=2, a(1)=2`
-/

namespace A080456.P5397641527593587064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.land 3 (a (n - 1) + n) + n + n + n

end

end A080456.P5397641527593587064

namespace A080456

/-- `and(3, a(n-1)+n)+n+n+n` -/
def P5397641527593587064.Spec : Prop :=
  ∀ n, (P5397641527593587064.a n : ℤ) = A080456 (n + 1)

end A080456

/-! ## A080456.P6242451645674831351

`a(n-1)+3-or(3, a(n-1)-3*n)` with `a(0)=2, a(1)=2`
-/

namespace A080456.P6242451645674831351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (3 - Int.lor 3 (a (n - 1) - (3 * n : ℤ)))

end

end A080456.P6242451645674831351

namespace A080456

/-- `a(n-1)+3-or(3, a(n-1)-3*n)` -/
def P6242451645674831351.Spec : Prop :=
  ∀ n, P6242451645674831351.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P7827360754942183047

`3-(or(3, a(n-1)-3*n)-a(n-1))` with `a(0)=2, a(1)=2`
-/

namespace A080456.P7827360754942183047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 - (Int.lor 3 (a (n - 1) - (3 * n : ℤ)) - a (n - 1))

end

end A080456.P7827360754942183047

namespace A080456

/-- `3-(or(3, a(n-1)-3*n)-a(n-1))` -/
def P7827360754942183047.Spec : Prop :=
  ∀ n, P7827360754942183047.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P17308029054704675333

`or(2, ∑[and(6, A266449(n))])`
-/

namespace A080456.P17308029054704675333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A266449 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080456.P17308029054704675333

namespace A080456

/-- `or(2, ∑[and(6, A266449(n))])` -/
def P17308029054704675333.Spec : Prop :=
  ∀ n, P17308029054704675333.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P4288496867571658230

`A014601(A014601(n)-A018837(n))+2`
-/

namespace A080456.P4288496867571658230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A014601 n - A018837 n).toNat + 2

end

end A080456.P4288496867571658230

namespace A080456

/-- `A014601(A014601(n)-A018837(n))+2` -/
def P4288496867571658230.Spec : Prop :=
  ∀ n, P4288496867571658230.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P6069095182350003051

`2*A267458(A267530(n)+n)`
-/

namespace A080456.P6069095182350003051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267458 (A267530 n + (n : ℤ)).toNat

end

end A080456.P6069095182350003051

namespace A080456

/-- `2*A267458(A267530(n)+n)` -/
def P6069095182350003051.Spec : Prop :=
  ∀ n, P6069095182350003051.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P9813851253996685364

`2*A109613(lt[A347558(n+1), A347538(n+7)])`
-/

namespace A080456.P9813851253996685364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080456.P9813851253996685364

namespace A080456

/-- `2*A109613(lt[A347558(n+1), A347538(n+7)])` -/
def P9813851253996685364.Spec : Prop :=
  ∀ n, P9813851253996685364.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P11814924498713408197

`or(2, ∑[A267160(A267160(2*n))])`
-/

namespace A080456.P11814924498713408197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267160 (A267160 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080456.P11814924498713408197

namespace A080456

/-- `or(2, ∑[A267160(A267160(2*n))])` -/
def P11814924498713408197.Spec : Prop :=
  ∀ n, P11814924498713408197.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P964382637387673742

`A016825(A002265(3*n+1)%A255047(n))`
-/

namespace A080456.P964382637387673742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (Int.tmod (A002265 (3 * n + 1)) (A255047 n)).toNat

end

end A080456.P964382637387673742

namespace A080456

/-- `A016825(A002265(3*n+1)%A255047(n))` -/
def P964382637387673742.Spec : Prop :=
  ∀ n, P964382637387673742.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P1527916812182031915

`and(A080457(n+1), A143960(n+1))`
-/

namespace A080456.P1527916812182031915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080457 (n + 1)) (A143960 (n + 1))

end

end A080456.P1527916812182031915

namespace A080456

/-- `and(A080457(n+1), A143960(n+1))` -/
def P1527916812182031915.Spec : Prop :=
  ∀ n, P1527916812182031915.a n = A080456 (n + 1)

end A080456

/-! ## A080456.P11110629173699174835

`and(3*n+1, A086573(n)-2)+2`
-/

namespace A080456.P11110629173699174835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n + 1 : ℤ) (A086573 n - 2) + 2

end

end A080456.P11110629173699174835

namespace A080456

/-- `and(3*n+1, A086573(n)-2)+2` -/
def P11110629173699174835.Spec : Prop :=
  ∀ n, P11110629173699174835.a n = A080456 (n + 1)

end A080456

/-!
# A080457: a(1)=3; for n>1, a(n)=a(n-1) if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A080457, the canonical program `A080457.P249132887982472549` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080457 has offset 1).

The definition of A080457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080457.P249132887982472549

`3+4*(n-1-floor((n-2)/4))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080457

/-- `3+4*(n-1-floor((n-2)/4))` -/
def P249132887982472549.Spec : Prop :=
  ∀ n, P249132887982472549.a n = A080457 (n + 1)

theorem P249132887982472549.correct : P249132887982472549.Spec := by
  intro n
  simp only [A080457, Nat.add_sub_cancel]

end A080457

/-! ## A080457.P14742396362881203476

`or(3, 3*n+1)`
-/

namespace A080457.P14742396362881203476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * n + 1)

end

end A080457.P14742396362881203476

namespace A080457

/-- `or(3, 3*n+1)` -/
def P14742396362881203476.Spec : Prop :=
  ∀ n, (P14742396362881203476.a n : ℤ) = A080457 (n + 1)

end A080457

/-! ## A080457.P7734205197807186530

`abs(or(3, Δ[n²]+n))`
-/

namespace A080457.P7734205197807186530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))|

end

end A080457.P7734205197807186530

namespace A080457

/-- `abs(or(3, Δ[n²]+n))` -/
def P7734205197807186530.Spec : Prop :=
  ∀ n, P7734205197807186530.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P17159334286304056438

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=4, a(2)=0, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A080457.P17159334286304056438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 0, 4, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080457.P17159334286304056438

namespace A080457

/-- `∑[floor(a(n-4))]` -/
def P17159334286304056438.Spec : Prop :=
  ∀ n, (P17159334286304056438.a n : ℤ) = A080457 (n + 1)

end A080457

/-! ## A080457.P1716472455358629742

`xor(3, and(2*n+1+n, -4))`
-/

namespace A080457.P1716472455358629742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.land (2 * n + 1 + n : ℤ) (-4))

end

end A080457.P1716472455358629742

namespace A080457

/-- `xor(3, and(2*n+1+n, -4))` -/
def P1716472455358629742.Spec : Prop :=
  ∀ n, P1716472455358629742.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P16151720414740370198

`∑[(a(n-4)/2)²]` with `a(0)=3, a(1)=4, a(2)=0, a(3)=4, a(4)=4`
-/

namespace A080457.P16151720414740370198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 4, 0, 4, 4] fun n f1 =>
  (f1 (n - 4) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080457.P16151720414740370198

namespace A080457

/-- `∑[(a(n-4)/2)²]` -/
def P16151720414740370198.Spec : Prop :=
  ∀ n, P16151720414740370198.a n = (A080457 (n + 1) : ℚ)

end A080457

/-! ## A080457.P9532088790698584688

`A276283(A098180(n))`
-/

namespace A080457.P9532088790698584688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (A098180 n).toNat

end

end A080457.P9532088790698584688

namespace A080457

/-- `A276283(A098180(n))` -/
def P9532088790698584688.Spec : Prop :=
  ∀ n, P9532088790698584688.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P5064967508403080966

`A276283(A219977(n)²+n)`
-/

namespace A080457.P5064967508403080966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (A219977 n ^ 2 + (n : ℤ)).toNat

end

end A080457.P5064967508403080966

namespace A080457

/-- `A276283(A219977(n)²+n)` -/
def P5064967508403080966.Spec : Prop :=
  ∀ n, P5064967508403080966.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P8061869327775233273

`xor(A010693(n), A174398(n+1))`
-/

namespace A080457.P8061869327775233273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010693 n) (A174398 (n + 1))

end

end A080457.P8061869327775233273

namespace A080457

/-- `xor(A010693(n), A174398(n+1))` -/
def P8061869327775233273.Spec : Prop :=
  ∀ n, P8061869327775233273.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P14095696215341276604

`A014601(A293990(n))`
-/

namespace A080457.P14095696215341276604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A293990 n).toNat

end

end A080457.P14095696215341276604

namespace A080457

/-- `A014601(A293990(n))` -/
def P14095696215341276604.Spec : Prop :=
  ∀ n, P14095696215341276604.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P9077123398613531785

`A168269(A032766(n+1))`
-/

namespace A080457.P9077123398613531785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (A032766 (n + 1)).toNat

end

end A080457.P9077123398613531785

namespace A080457

/-- `A168269(A032766(n+1))` -/
def P9077123398613531785.Spec : Prop :=
  ∀ n, P9077123398613531785.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P14953351240709591486

`A168269(A047247(n+1))`
-/

namespace A080457.P14953351240709591486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (A047247 (n + 1)).toNat

end

end A080457.P14953351240709591486

namespace A080457

/-- `A168269(A047247(n+1))` -/
def P14953351240709591486.Spec : Prop :=
  ∀ n, P14953351240709591486.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P16689272457050969085

`A168269(A047251(n+1))`
-/

namespace A080457.P16689272457050969085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (A047251 (n + 1)).toNat

end

end A080457.P16689272457050969085

namespace A080457

/-- `A168269(A047251(n+1))` -/
def P16689272457050969085.Spec : Prop :=
  ∀ n, P16689272457050969085.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P153804034625330441

`A222657(A056527(n+1))`
-/

namespace A080457.P153804034625330441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222657 (A056527 (n + 1)).toNat

end

end A080457.P153804034625330441

namespace A080457

/-- `A222657(A056527(n+1))` -/
def P153804034625330441.Spec : Prop :=
  ∀ n, P153804034625330441.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P15144273447711192760

`A079578(A174398(n+1))`
-/

namespace A080457.P15144273447711192760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (A174398 (n + 1)).toNat

end

end A080457.P15144273447711192760

namespace A080457

/-- `A079578(A174398(n+1))` -/
def P15144273447711192760.Spec : Prop :=
  ∀ n, P15144273447711192760.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P8809096473782641681

`A244584(3*n+1)`
-/

namespace A080457.P8809096473782641681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244584 (3 * n + 1)

end

end A080457.P8809096473782641681

namespace A080457

/-- `A244584(3*n+1)` -/
def P8809096473782641681.Spec : Prop :=
  ∀ n, P8809096473782641681.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P13594718740287219982

`A096062(A016777(n+1))`
-/

namespace A080457.P13594718740287219982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096062 (A016777 (n + 1)).toNat

end

end A080457.P13594718740287219982

namespace A080457

/-- `A096062(A016777(n+1))` -/
def P13594718740287219982.Spec : Prop :=
  ∀ n, P13594718740287219982.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P17534462259149861021

`A174091(A007310(n+1))`
-/

namespace A080457.P17534462259149861021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 (A007310 (n + 1)).toNat

end

end A080457.P17534462259149861021

namespace A080457

/-- `A174091(A007310(n+1))` -/
def P17534462259149861021.Spec : Prop :=
  ∀ n, P17534462259149861021.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P6805776550032602453

`A109613(2*A293990(n))`
-/

namespace A080457.P6805776550032602453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A293990 n).toNat

end

end A080457.P6805776550032602453

namespace A080457

/-- `A109613(2*A293990(n))` -/
def P6805776550032602453.Spec : Prop :=
  ∀ n, P6805776550032602453.a n = A080457 (n + 1)

end A080457

/-! ## A080457.P8138454124016743455

`A174091(A014601(n)+n+1)`
-/

namespace A080457.P8138454124016743455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 (A014601 n + (n + 1 : ℤ)).toNat

end

end A080457.P8138454124016743455

namespace A080457

/-- `A174091(A014601(n)+n+1)` -/
def P8138454124016743455.Spec : Prop :=
  ∀ n, P8138454124016743455.a n = A080457 (n + 1)

end A080457

/-!
# A080458: a(1)=4; for n>1, a(n)=a(n-1) if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A080458, the canonical program `A080458.P908684321239742397` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080458 has offset 1).

The definition of A080458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080458.P908684321239742397

`4+4*(n-1-floor((n-3)/4))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080458

/-- `4+4*(n-1-floor((n-3)/4))` -/
def P908684321239742397.Spec : Prop :=
  ∀ n, P908684321239742397.a n = A080458 (n + 1)

theorem P908684321239742397.correct : P908684321239742397.Spec := by
  intro n
  simp only [A080458, Nat.add_sub_cancel]

end A080458

/-! ## A080458.P7950064620690032588

`(6*(n+1)-(-1)^(n+1)-2*sqrt(2)*sin(π*(n+1)/2+π/4)+3)/2`
-/

namespace A080458.P7950064620690032588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - (-1) ^ (n + 1) : ℝ) - 2 * Real.sqrt (2 : ℝ) * Real.sin (Real.pi * (n + 1 : ℝ) / 2 + Real.pi / 4) + 3) / 2

end

end A080458.P7950064620690032588

namespace A080458

/-- `(6*(n+1)-(-1)^(n+1)-2*sqrt(2)*sin(π*(n+1)/2+π/4)+3)/2` -/
def P7950064620690032588.Spec : Prop :=
  ∀ n, P7950064620690032588.a n = (A080458 (n + 1) : ℝ)

end A080458

/-! ## A080458.P10795015851451780257

`∑[4-Δ[or(3, n)]]`
-/

namespace A080458.P10795015851451780257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P10795015851451780257

namespace A080458

/-- `∑[4-Δ[or(3, n)]]` -/
def P10795015851451780257.Spec : Prop :=
  ∀ n, P10795015851451780257.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P5896288985570777319

`and(3*(n+2), -4)`
-/

namespace A080458.P5896288985570777319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * (n + 2) : ℤ) (-4)

end

end A080458.P5896288985570777319

namespace A080458

/-- `and(3*(n+2), -4)` -/
def P5896288985570777319.Spec : Prop :=
  ∀ n, P5896288985570777319.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P4540405488978708145

`∑[and(4, or(4, n)+1)]`
-/

namespace A080458.P4540405488978708145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 (Nat.lor 4 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P4540405488978708145

namespace A080458

/-- `∑[and(4, or(4, n)+1)]` -/
def P4540405488978708145.Spec : Prop :=
  ∀ n, (P4540405488978708145.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P5911498168303577415

`∑[and(4, and(3, n)-3)]`
-/

namespace A080458.P5911498168303577415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 ((Nat.land 3 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P5911498168303577415

namespace A080458

/-- `∑[and(4, and(3, n)-3)]` -/
def P5911498168303577415.Spec : Prop :=
  ∀ n, P5911498168303577415.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P6568111319068205831

`∑[and(4, -(n+1)²)]`
-/

namespace A080458.P6568111319068205831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (-((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P6568111319068205831

namespace A080458

/-- `∑[and(4, -(n+1)²)]` -/
def P6568111319068205831.Spec : Prop :=
  ∀ n, P6568111319068205831.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P12570095350628385715

`∑[C(4, xor(n, n+1))]`
-/

namespace A080458.P12570095350628385715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P12570095350628385715

namespace A080458

/-- `∑[C(4, xor(n, n+1))]` -/
def P12570095350628385715.Spec : Prop :=
  ∀ n, (P12570095350628385715.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P13532830239516717744

`xor(3, or(3, 3*(n+2)))`
-/

namespace A080458.P13532830239516717744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 3 (3 * (n + 2)))

end

end A080458.P13532830239516717744

namespace A080458

/-- `xor(3, or(3, 3*(n+2)))` -/
def P13532830239516717744.Spec : Prop :=
  ∀ n, (P13532830239516717744.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P11317668764766629613

`∑[(lcm(2, n+1)%4)²]`
-/

namespace A080458.P11317668764766629613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) % 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P11317668764766629613

namespace A080458

/-- `∑[(lcm(2, n+1)%4)²]` -/
def P11317668764766629613.Spec : Prop :=
  ∀ n, (P11317668764766629613.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P14707341372434834576

`∑[lcm(4, (3-n)²%8)]`
-/

namespace A080458.P14707341372434834576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.tmod ((3 - (n : ℤ)) ^ 2) 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P14707341372434834576

namespace A080458

/-- `∑[lcm(4, (3-n)²%8)]` -/
def P14707341372434834576.Spec : Prop :=
  ∀ n, (P14707341372434834576.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P1931316618942677557

`∑[floor(a(n-4))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A080458.P1931316618942677557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P1931316618942677557

namespace A080458

/-- `∑[floor(a(n-4))]` -/
def P1931316618942677557.Spec : Prop :=
  ∀ n, (P1931316618942677557.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P17046749922226560648

`∑[and(2, and(n, n+3)+2)²]`
-/

namespace A080458.P17046749922226560648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.land n (n + 3) + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P17046749922226560648

namespace A080458

/-- `∑[and(2, and(n, n+3)+2)²]` -/
def P17046749922226560648.Spec : Prop :=
  ∀ n, (P17046749922226560648.a n : ℤ) = A080458 (n + 1)

end A080458

/-! ## A080458.P5580117247505202238

`∑[(a(n-4)/2)²]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A080458.P5580117247505202238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  (f1 (n - 4) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P5580117247505202238

namespace A080458

/-- `∑[(a(n-4)/2)²]` -/
def P5580117247505202238.Spec : Prop :=
  ∀ n, P5580117247505202238.a n = (A080458 (n + 1) : ℚ)

end A080458

/-! ## A080458.P17241478580708630733

`∑[or(4, (1-n)²)-(1-n)²]`
-/

namespace A080458.P17241478580708630733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ((1 - (n : ℤ)) ^ 2) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P17241478580708630733

namespace A080458

/-- `∑[or(4, (1-n)²)-(1-n)²]` -/
def P17241478580708630733.Spec : Prop :=
  ∀ n, P17241478580708630733.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P6336970607168555061

`∑[2*a(n-4)-a(n-4)]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A080458.P6336970607168555061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P6336970607168555061

namespace A080458

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P6336970607168555061.Spec : Prop :=
  ∀ n, P6336970607168555061.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P343997936120237833

`∑[a(n-4)/(a(n-4)-3)]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A080458.P343997936120237833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  f1 (n - 4) / (f1 (n - 4) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P343997936120237833

namespace A080458

/-- `∑[a(n-4)/(a(n-4)-3)]` -/
def P343997936120237833.Spec : Prop :=
  ∀ n, P343997936120237833.a n = (A080458 (n + 1) : ℚ)

end A080458

/-! ## A080458.P11494722008058087378

`∑[a(n-4)^(5-a(n-4))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=0`
-/

namespace A080458.P11494722008058087378
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4, 4, 4, 0] fun n f1 =>
  f1 (n - 4) ^ (5 - f1 (n - 4))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P11494722008058087378

namespace A080458

/-- `∑[a(n-4)^(5-a(n-4))]` -/
def P11494722008058087378.Spec : Prop :=
  ∀ n, P11494722008058087378.a n = (A080458 (n + 1) : ℝ)

end A080458

/-! ## A080458.P16307973180347160085

`∑[(3-A093148(n))²]`
-/

namespace A080458.P16307973180347160085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A093148 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P16307973180347160085

namespace A080458

/-- `∑[(3-A093148(n))²]` -/
def P16307973180347160085.Spec : Prop :=
  ∀ n, P16307973180347160085.a n = A080458 (n + 1)

end A080458

/-! ## A080458.P2207176497793716135

`∑[4*A166486(n+1)]`
-/

namespace A080458.P2207176497793716135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080458.P2207176497793716135

namespace A080458

/-- `∑[4*A166486(n+1)]` -/
def P2207176497793716135.Spec : Prop :=
  ∀ n, P2207176497793716135.a n = A080458 (n + 1)

end A080458

/-!
# A080459: Trans-Harshad numerals: base-10 numerals that represent positive Harshad numbers in every base in which they occur.

The programs for A080459, there is no canonical definition to state claims against.
-/

/-! ## A080459.P13495520064398445313

`A125289(A117804(n+1)%A176911(n+1))`
-/

namespace A080459.P13495520064398445313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (Int.tmod (A117804 (n + 1)) (A176911 (n + 1))).toNat

end

end A080459.P13495520064398445313

/-! ## A080459.P9697199265714157525

`A325135(A257658(n+1))+A125289(A117804(n+1))`
-/

namespace A080459.P9697199265714157525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A257658 (n + 1)).toNat + A125289 (A117804 (n + 1)).toNat

end

end A080459.P9697199265714157525

/-! ## A080459.P13042876200796121556

`A125289(A117804(n+1))%A000203(A018917(n))`
-/

namespace A080459.P13042876200796121556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125289 (A117804 (n + 1)).toNat) (A000203 (A018917 n).toNat)

end

end A080459.P13042876200796121556

/-! ## A080459.P17677517224617556298

`∩[A113586(n+1), A328273(n+1)]`
-/

namespace A080459.P17677517224617556298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080459.P17677517224617556298

/-! ## A080459.P12770292828429442937

`A125289(lt[A261044(n+1), n])`
-/

namespace A080459.P12770292828429442937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261044 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A080459.P12770292828429442937

/-!
# A080460: a(1) = 2; for n > 1, a(n) = a(n-1) if n is already in the sequence, a(n) = a(n-1) + 4 otherwise.

The programs for A080460, the canonical program `A080460.P4419522860548821570` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080460 has offset 1).

The definition of A080460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080460.P4419522860548821570

`2+4*(n-1-floor((n-1)/4))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080460

/-- `2+4*(n-1-floor((n-1)/4))` -/
def P4419522860548821570.Spec : Prop :=
  ∀ n, P4419522860548821570.a n = A080460 (n + 1)

theorem P4419522860548821570.correct : P4419522860548821570.Spec := by
  intro n
  simp only [A080460, Nat.add_sub_cancel]

end A080460

/-! ## A080460.P1570183829665271031

`(6*(n+1)-(-1)^(n+1)+2*sqrt(2)*sin(π*(n+1)/2+π/4)-5)/2`
-/

namespace A080460.P1570183829665271031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - (-1) ^ (n + 1) : ℝ) + 2 * Real.sqrt (2 : ℝ) * Real.sin (Real.pi * (n + 1 : ℝ) / 2 + Real.pi / 4) - 5) / 2

end

end A080460.P1570183829665271031

namespace A080460

/-- `(6*(n+1)-(-1)^(n+1)+2*sqrt(2)*sin(π*(n+1)/2+π/4)-5)/2` -/
def P1570183829665271031.Spec : Prop :=
  ∀ n, P1570183829665271031.a n = (A080460 (n + 1) : ℝ)

end A080460

/-! ## A080460.P10977148076740128232

`xor(1, or(3, 3*n))`
-/

namespace A080460.P10977148076740128232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 3 (3 * n))

end

end A080460.P10977148076740128232

namespace A080460

/-- `xor(1, or(3, 3*n))` -/
def P10977148076740128232.Spec : Prop :=
  ∀ n, (P10977148076740128232.a n : ℤ) = A080460 (n + 1)

end A080460

/-! ## A080460.P15620911580566331728

`or(2, and(3*n, -2))`
-/

namespace A080460.P15620911580566331728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.land (3 * n : ℤ) (-2))

end

end A080460.P15620911580566331728

namespace A080460

/-- `or(2, and(3*n, -2))` -/
def P15620911580566331728.Spec : Prop :=
  ∀ n, P15620911580566331728.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P14816504543658112706

`xor(2, and(3*n, -4))`
-/

namespace A080460.P14816504543658112706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (3 * n : ℤ) (-4))

end

end A080460.P14816504543658112706

namespace A080460

/-- `xor(2, and(3*n, -4))` -/
def P14816504543658112706.Spec : Prop :=
  ∀ n, P14816504543658112706.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P14409883717170011783

`or(2, comp[or(2, n)]+n)`
-/

namespace A080460.P14409883717170011783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A080460.P14409883717170011783

namespace A080460

/-- `or(2, comp[or(2, n)]+n)` -/
def P14409883717170011783.Spec : Prop :=
  ∀ n, (P14409883717170011783.a n : ℤ) = A080460 (n + 1)

end A080460

/-! ## A080460.P3318578290846710730

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=0, a(2)=4, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A080460.P3318578290846710730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 4, 4, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080460.P3318578290846710730

namespace A080460

/-- `∑[floor(a(n-4))]` -/
def P3318578290846710730.Spec : Prop :=
  ∀ n, (P3318578290846710730.a n : ℤ) = A080460 (n + 1)

end A080460

/-! ## A080460.P12472649498555590179

`or(2, ∑[∑[ogf((2x+4x^2)/(1+x))]])`
-/

namespace A080460.P12472649498555590179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080460.P12472649498555590179

namespace A080460

/-- `or(2, ∑[∑[ogf((2x+4x^2)/(1+x))]])` -/
def P12472649498555590179.Spec : Prop :=
  ∀ n, P12472649498555590179.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P15198356022396498363

`2*∑[and(2, a(n-1)-n)]` with `a(0)=1`
-/

namespace A080460.P15198356022396498363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land 2 (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080460.P15198356022396498363

namespace A080460

/-- `2*∑[and(2, a(n-1)-n)]` -/
def P15198356022396498363.Spec : Prop :=
  ∀ n, P15198356022396498363.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P3586485848092689253

`∑[(a(n-4)/2)²]` with `a(0)=2, a(1)=0, a(2)=4, a(3)=4, a(4)=4`
-/

namespace A080460.P3586485848092689253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 0, 4, 4, 4] fun n f1 =>
  (f1 (n - 4) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080460.P3586485848092689253

namespace A080460

/-- `∑[(a(n-4)/2)²]` -/
def P3586485848092689253.Spec : Prop :=
  ∀ n, P3586485848092689253.a n = (A080460 (n + 1) : ℚ)

end A080460

/-! ## A080460.P8714308521716434958

`∑[(2-a(a(n-4)))²]` with `a(0)=2, a(1)=0, a(2)=4, a(3)=4`
-/

namespace A080460.P8714308521716434958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 4, 4] fun n f1 =>
  (2 - f1 (f1 (n - 4)).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080460.P8714308521716434958

namespace A080460

/-- `∑[(2-a(a(n-4)))²]` -/
def P8714308521716434958.Spec : Prop :=
  ∀ n, P8714308521716434958.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P1242714806457570809

`or(2, A047238(n+1))`
-/

namespace A080460.P1242714806457570809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A047238 (n + 1))

end

end A080460.P1242714806457570809

namespace A080460

/-- `or(2, A047238(n+1))` -/
def P1242714806457570809.Spec : Prop :=
  ∀ n, P1242714806457570809.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P10042065659637319154

`2*or(1, A032766(n))`
-/

namespace A080460.P10042065659637319154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A032766 n)

end

end A080460.P10042065659637319154

namespace A080460

/-- `2*or(1, A032766(n))` -/
def P10042065659637319154.Spec : Prop :=
  ∀ n, P10042065659637319154.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P7087628815866864351

`2*(A106249(n)+n)`
-/

namespace A080460.P7087628815866864351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106249 n + (n : ℤ))

end

end A080460.P7087628815866864351

namespace A080460

/-- `2*(A106249(n)+n)` -/
def P7087628815866864351.Spec : Prop :=
  ∀ n, P7087628815866864351.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P5756765087468364925

`or(2, A042948(n)+n)`
-/

namespace A080460.P5756765087468364925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A042948 n + (n : ℤ))

end

end A080460.P5756765087468364925

namespace A080460

/-- `or(2, A042948(n)+n)` -/
def P5756765087468364925.Spec : Prop :=
  ∀ n, P5756765087468364925.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P965603863019404329

`2*or(1, A047237(n+1))`
-/

namespace A080460.P965603863019404329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A047237 (n + 1))

end

end A080460.P965603863019404329

namespace A080460

/-- `2*or(1, A047237(n+1))` -/
def P965603863019404329.Spec : Prop :=
  ∀ n, P965603863019404329.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P6226625817103472636

`A016825(A057353(n))`
-/

namespace A080460.P6226625817103472636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A057353 n).toNat

end

end A080460.P6226625817103472636

namespace A080460

/-- `A016825(A057353(n))` -/
def P6226625817103472636.Spec : Prop :=
  ∀ n, P6226625817103472636.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P994003333811008110

`A130824(A037915(n))`
-/

namespace A080460.P994003333811008110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A037915 n).toNat

end

end A080460.P994003333811008110

namespace A080460

/-- `A130824(A037915(n))` -/
def P994003333811008110.Spec : Prop :=
  ∀ n, P994003333811008110.a n = A080460 (n + 1)

end A080460

/-! ## A080460.P6632823927591554677

`A080456(A392590(n+1))`
-/

namespace A080460.P6632823927591554677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080456 (A392590 (n + 1)).toNat

end

end A080460.P6632823927591554677

namespace A080460

/-- `A080456(A392590(n+1))` -/
def P6632823927591554677.Spec : Prop :=
  ∀ n, P6632823927591554677.a n = A080460 (n + 1)

end A080460

/-!
# A080462: Define f(k) = floor(k/ sum of the digits of k). Let f(f(...(n))) = m where m is divisible by the sum of the digits of m. Then a(n)= one more than the least number of steps to obtain m.

The programs for A080462, there is no canonical definition to state claims against.
-/

/-! ## A080462.P2263062983333303163

`A376887(A136090(3*n+5))-A188641(n+1)`
-/

namespace A080462.P2263062983333303163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376887 (A136090 (3 * n + 5)).toNat - A188641 (n + 1)

end

end A080462.P2263062983333303163

/-! ## A080462.P8639592760542134864

`C(2, A195860(n+1))!`
-/

namespace A080462.P8639592760542134864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P8639592760542134864

/-! ## A080462.P6372765126594583196

`A174353(A195860(n+1))`
-/

namespace A080462.P6372765126594583196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174353 (A195860 (n + 1)).toNat

end

end A080462.P6372765126594583196

/-! ## A080462.P15029687063492652569

`A156264(A195860(n+1)+6)`
-/

namespace A080462.P15029687063492652569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A195860 (n + 1) + 6).toNat

end

end A080462.P15029687063492652569

/-! ## A080462.P12969564868182680883

`A043290(A195860(n+1)+16)`
-/

namespace A080462.P12969564868182680883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A195860 (n + 1) + 16).toNat

end

end A080462.P12969564868182680883

/-! ## A080462.P10296060220301346819

`A000041(C(2, A195860(n+1)))`
-/

namespace A080462.P10296060220301346819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P10296060220301346819

/-! ## A080462.P18386224791969531292

`A000108(C(2, A195860(n+1)))`
-/

namespace A080462.P18386224791969531292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P18386224791969531292

/-! ## A080462.P12756481185731613483

`A000142(C(2, A195860(n+1)))`
-/

namespace A080462.P12756481185731613483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P12756481185731613483

/-! ## A080462.P8283467421582354199

`A355281(C(2, A195860(n+1)))`
-/

namespace A080462.P8283467421582354199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355281 (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P8283467421582354199

/-! ## A080462.P16495798284505920957

`A364258(C(2, A195860(n+1)))`
-/

namespace A080462.P16495798284505920957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 (Nat.choose 2 (A195860 (n + 1)).toNat)

end

end A080462.P16495798284505920957

/-!
# A080464: Product of the two numbers formed by alternate digits of n.

The programs for A080464, there is no canonical definition to state claims against.
-/

/-! ## A080464.P1216151637661266812

`A118759(A330633(n+10))`
-/

namespace A080464.P1216151637661266812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A330633 (n + 10)).toNat

end

end A080464.P1216151637661266812

/-! ## A080464.P3418121633842775891

`A000194(A330633(n+10)²)`
-/

namespace A080464.P3418121633842775891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P3418121633842775891

/-! ## A080464.P1330507687489283082

`A000196(A330633(n+10)²)`
-/

namespace A080464.P1330507687489283082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P1330507687489283082

/-! ## A080464.P4155825155427088131

`A018851(A330633(n+10)²)`
-/

namespace A080464.P4155825155427088131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P4155825155427088131

/-! ## A080464.P15269065231367437474

`A037213(A330633(n+10)²)`
-/

namespace A080464.P15269065231367437474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P15269065231367437474

/-! ## A080464.P15720852533876208587

`A130734(A330633(n+10)+1)`
-/

namespace A080464.P15720852533876208587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A330633 (n + 10) + 1).toNat

end

end A080464.P15720852533876208587

/-! ## A080464.P7269446646689103726

`A000194(A330633(n+10)^2)`
-/

namespace A080464.P7269446646689103726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P7269446646689103726

/-! ## A080464.P8059597279385132719

`A000196(A330633(n+10)^2)`
-/

namespace A080464.P8059597279385132719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A330633 (n + 10) ^ 2).toNat

end

end A080464.P8059597279385132719

/-! ## A080464.P14062213070089519459

`A337108((A330633(n+10)+1)²)`
-/

namespace A080464.P14062213070089519459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 ((A330633 (n + 10) + 1) ^ 2).toNat

end

end A080464.P14062213070089519459

/-! ## A080464.P16143308782969623401

`A330633(n+10)%A003004(n+1)²`
-/

namespace A080464.P16143308782969623401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330633 (n + 10)) (A003004 (n + 1) ^ 2)

end

end A080464.P16143308782969623401

/-! ## A080464.P13235135991423671770

`A330633(n+10)%A026501(A005728(n))`
-/

namespace A080464.P13235135991423671770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330633 (n + 10)) (A026501 (A005728 n).toNat)

end

end A080464.P13235135991423671770

/-! ## A080464.P940721178819421429

`A001065(A098414(n+1))*A330633(n+10)`
-/

namespace A080464.P940721178819421429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A098414 (n + 1)).toNat * A330633 (n + 10)

end

end A080464.P940721178819421429

/-! ## A080464.P10315635413872580044

`A330633(n+10)+A101637(A333747(n+1))`
-/

namespace A080464.P10315635413872580044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (n + 10) + A101637 (A333747 (n + 1)).toNat

end

end A080464.P10315635413872580044

/-! ## A080464.P15080937352648336960

`A330633(n+10)+A000038(A055248(n))`
-/

namespace A080464.P15080937352648336960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (n + 10) + A000038 (A055248 n).toNat

end

end A080464.P15080937352648336960

/-! ## A080464.P16637321441360805963

`A168046(A126792(n))*A330633(n+10)`
-/

namespace A080464.P16637321441360805963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A126792 n).toNat * A330633 (n + 10)

end

end A080464.P16637321441360805963

/-! ## A080464.P9529833729088528736

`A330633(n+10)+A056965(A082216(n))`
-/

namespace A080464.P9529833729088528736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (n + 10) + A056965 (A082216 n).toNat

end

end A080464.P9529833729088528736

/-! ## A080464.P15594329095901472680

`A330633(n+10)+A000007(A196222(n))`
-/

namespace A080464.P15594329095901472680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (n + 10) + A000007 (A196222 n).toNat

end

end A080464.P15594329095901472680

/-!
# A080466: Multiples of 11 in which the even positioned digits from left are even and the odd positioned ones are odd.

The programs for A080466, there is no canonical definition to state claims against.
-/

/-! ## A080466.P13846264464801015137

`∩[A376692(n+1), A008593(n)]`
-/

namespace A080466.P13846264464801015137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080466.P13846264464801015137

/-! ## A080466.P15398770563952971383

`∩[A036301(n+1), A376692(n+1)]`
-/

namespace A080466.P15398770563952971383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080466.P15398770563952971383

/-! ## A080466.P18229024168497915634

`∩[A135499(n+1), A376692(n+1)]`
-/

namespace A080466.P18229024168497915634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080466.P18229024168497915634

/-! ## A080466.P9634151316881845076

`∩[A036301(n+1), A345498(A281445(n+1))]`
-/

namespace A080466.P9634151316881845076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345498 (A281445 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080466.P9634151316881845076

/-! ## A080466.P13492695248925594473

`∩[A036301(n+1), A308237(n+1)]`
-/

namespace A080466.P13492695248925594473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080466.P13492695248925594473

/-!
# A080467: Multiples of 11 in which the even positioned digits from left are odd and the odd positioned ones are even.

The programs for A080467, there is no canonical definition to state claims against.
-/

/-! ## A080467.P16216574651898250163

`∩[A062285(n+1), 11*n]`
-/

namespace A080467.P16216574651898250163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A080467.P16216574651898250163

/-! ## A080467.P5549456525370811288

`∩[A008593(n), A062285(n+1)]`
-/

namespace A080467.P5549456525370811288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080467.P5549456525370811288

/-!
# A080468: a(n) = A080578(n)-2n.

The programs for A080468, the canonical program `A080468.P3042349121008537224` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080468 has offset 2).

The definition of A080468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080468.P3042349121008537224

`A080578(n+2)-2*(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080468

/-- `A080578(n+2)-2*(n+2)` -/
def P3042349121008537224.Spec : Prop :=
  ∀ n, P3042349121008537224.a n = A080468 (n + 2)

theorem P3042349121008537224.correct : P3042349121008537224.Spec := by
  intro n
  simp only [A080468, Nat.add_sub_cancel]

end A080468

/-! ## A080468.P13215012033252395759

`comp[a(floor(n/2))+n]%(n+1)` with `a(0)=0`
-/

namespace A080468.P13215012033252395759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A080468.P13215012033252395759

namespace A080468

/-- `comp[a(floor(n/2))+n]%(n+1)` -/
def P13215012033252395759.Spec : Prop :=
  ∀ n, (P13215012033252395759.a n : ℤ) = A080468 (n + 2)

end A080468

/-! ## A080468.P3401229571728309448

`comp[a(floor(n/2))+n]-2*n` with `a(0)=-2`
-/

namespace A080468.P3401229571728309448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ)

end

end A080468.P3401229571728309448

namespace A080468

/-- `comp[a(floor(n/2))+n]-2*n` -/
def P3401229571728309448.Spec : Prop :=
  ∀ n, P3401229571728309448.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P6435952016859957552

`2*∑[char[∑[val(n+1, 2)+1]]]-n`
-/

namespace A080468.P6435952016859957552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A080468.P6435952016859957552

namespace A080468

/-- `2*∑[char[∑[val(n+1, 2)+1]]]-n` -/
def P6435952016859957552.Spec : Prop :=
  ∀ n, P6435952016859957552.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P16912966523156242075

`comp[a(n-1)+val(n, 2)]-n-n` with `a(0)=-2`
-/

namespace A080468.P16912966523156242075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - (n : ℤ)

end

end A080468.P16912966523156242075

namespace A080468

/-- `comp[a(n-1)+val(n, 2)]-n-n` -/
def P16912966523156242075.Spec : Prop :=
  ∀ n, P16912966523156242075.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P10091537627783981209

`comp[val(n, 2)-a(n-1)]-2*n` with `a(0)=2, a(1)=2`
-/

namespace A080468.P10091537627783981209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ)

end

end A080468.P10091537627783981209

namespace A080468

/-- `comp[val(n, 2)-a(n-1)]-2*n` -/
def P10091537627783981209.Spec : Prop :=
  ∀ n, P10091537627783981209.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P17374570373207427150

`comp[a(floor(n/2))+n]-n-(n+1)` with `a(0)=0, a(1)=0`
-/

namespace A080468.P17374570373207427150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (n + 1 : ℤ)

end

end A080468.P17374570373207427150

namespace A080468

/-- `comp[a(floor(n/2))+n]-n-(n+1)` -/
def P17374570373207427150.Spec : Prop :=
  ∀ n, P17374570373207427150.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P9578370455298926469

`A100661(n+1)-1`
-/

namespace A080468.P9578370455298926469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) - 1

end

end A080468.P9578370455298926469

namespace A080468

/-- `A100661(n+1)-1` -/
def P9578370455298926469.Spec : Prop :=
  ∀ n, P9578370455298926469.a n = A080468 (n + 2)

theorem P9578370455298926469.correct : P9578370455298926469.Spec := by
  intro n
  simp only [A080468, Nat.add_sub_cancel, A080468.P9578370455298926469.a, A080468.P3042349121008537224.a, A080578, A080578.P12551959427107631853.a, A100661, A100661.P2879437187524638000.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080468

/-! ## A080468.P17864176507472903699

`n-2*A234016(n)`
-/

namespace A080468.P17864176507472903699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A234016 n

end

end A080468.P17864176507472903699

namespace A080468

/-- `n-2*A234016(n)` -/
def P17864176507472903699.Spec : Prop :=
  ∀ n, P17864176507472903699.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P4915413060625523690

`comp[A005187(n)]%(n+1)`
-/

namespace A080468.P4915413060625523690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A080468.P4915413060625523690

namespace A080468

/-- `comp[A005187(n)]%(n+1)` -/
def P4915413060625523690.Spec : Prop :=
  ∀ n, (P4915413060625523690.a n : ℤ) = A080468 (n + 2)

end A080468

/-! ## A080468.P10311635542177589241

`A055938(n+1)%(n+1)`
-/

namespace A080468.P10311635542177589241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055938 (n + 1)) (n + 1 : ℤ)

end

end A080468.P10311635542177589241

namespace A080468

/-- `A055938(n+1)%(n+1)` -/
def P10311635542177589241.Spec : Prop :=
  ∀ n, P10311635542177589241.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P14564843048671989937

`∑[2*A079559(n)-1]-1`
-/

namespace A080468.P14564843048671989937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079559 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080468.P14564843048671989937

namespace A080468

/-- `∑[2*A079559(n)-1]-1` -/
def P14564843048671989937.Spec : Prop :=
  ∀ n, P14564843048671989937.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P17311926416431457976

`n-∑[2*A308187(n+1)]`
-/

namespace A080468.P17311926416431457976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080468.P17311926416431457976

namespace A080468

/-- `n-∑[2*A308187(n+1)]` -/
def P17311926416431457976.Spec : Prop :=
  ∀ n, P17311926416431457976.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P12075474706437643372

`n-∑[log2(A308188(n+1)²)]`
-/

namespace A080468.P12075474706437643372
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A308188 (n + 1) ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080468.P12075474706437643372

namespace A080468

/-- `n-∑[log2(A308188(n+1)²)]` -/
def P12075474706437643372.Spec : Prop :=
  ∀ n, P12075474706437643372.a n = (A080468 (n + 2) : ℝ)

end A080468

/-! ## A080468.P7249068335956891494

`A045412(n+1)-(2*n+3)`
-/

namespace A080468.P7249068335956891494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045412 (n + 1) - (2 * n + 3 : ℤ)

end

end A080468.P7249068335956891494

namespace A080468

/-- `A045412(n+1)-(2*n+3)` -/
def P7249068335956891494.Spec : Prop :=
  ∀ n, P7249068335956891494.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P1553623780231243509

`A000120(A339451(n))`
-/

namespace A080468.P1553623780231243509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A339451 n).toNat

end

end A080468.P1553623780231243509

namespace A080468

/-- `A000120(A339451(n))` -/
def P1553623780231243509.Spec : Prop :=
  ∀ n, P1553623780231243509.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P3863592936541601463

`A000120(A123390(n+1)-1)`
-/

namespace A080468.P3863592936541601463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A123390 (n + 1) - 1).toNat

end

end A080468.P3863592936541601463

namespace A080468

/-- `A000120(A123390(n+1)-1)` -/
def P3863592936541601463.Spec : Prop :=
  ∀ n, P3863592936541601463.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P1061061470822695134

`comp[A005187(n)]-comp[A006257(n)]`
-/

namespace A080468.P1061061470822695134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A080468.P1061061470822695134

namespace A080468

/-- `comp[A005187(n)]-comp[A006257(n)]` -/
def P1061061470822695134.Spec : Prop :=
  ∀ n, P1061061470822695134.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P3991876739715508689

`A055938(n+1)-A005843(n+1)`
-/

namespace A080468.P3991876739715508689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) - A005843 (n + 1)

end

end A080468.P3991876739715508689

namespace A080468

/-- `A055938(n+1)-A005843(n+1)` -/
def P3991876739715508689.Spec : Prop :=
  ∀ n, P3991876739715508689.a n = A080468 (n + 2)

end A080468

/-! ## A080468.P11257091515475629696

`A257126(n+1)-(A048881(n)+1)`
-/

namespace A080468.P11257091515475629696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257126 (n + 1) - (A048881 n + 1)

end

end A080468.P11257091515475629696

namespace A080468

/-- `A257126(n+1)-(A048881(n)+1)` -/
def P11257091515475629696.Spec : Prop :=
  ∀ n, P11257091515475629696.a n = A080468 (n + 2)

end A080468

/-!
# A080471: a(n) is the smallest Fibonacci number that is obtained by placing digits anywhere in n; a(n) = n if n is a Fibonacci number.

The programs for A080471, there is no canonical definition to state claims against.
-/

/-! ## A080471.P10895682769687676378

`A023184(n+1)%A172278(A227845(n))`
-/

namespace A080471.P10895682769687676378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023184 (n + 1)) (A172278 (A227845 n).toNat)

end

end A080471.P10895682769687676378

/-! ## A080471.P11945010172429156945

`A281618(A052330(n))`
-/

namespace A080471.P11945010172429156945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281618 (A052330 n).toNat

end

end A080471.P11945010172429156945

/-!
# A080472: a(n) = smallest triangular number that is obtained by placing digits anywhere in n; a(n) = n if n is a triangular number.

The programs for A080472, there is no canonical definition to state claims against.
-/

/-! ## A080472.P364989963507424631

`A118389(∑[A287377(n)])`
-/

namespace A080472.P364989963507424631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080472.P364989963507424631

/-! ## A080472.P755681954697967736

`A118389(∑[A287378(n)])`
-/

namespace A080472.P755681954697967736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080472.P755681954697967736

/-! ## A080472.P7079241903053841268

`A118389(A032555(n+1))`
-/

namespace A080472.P7079241903053841268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 (A032555 (n + 1)).toNat

end

end A080472.P7079241903053841268

/-! ## A080472.P13929308810967347874

`A118389(A032559(n+1))`
-/

namespace A080472.P13929308810967347874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 (A032559 (n + 1)).toNat

end

end A080472.P13929308810967347874

/-! ## A080472.P5052799146495941817

`A118389(A077739(n+1))`
-/

namespace A080472.P5052799146495941817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 (A077739 (n + 1)).toNat

end

end A080472.P5052799146495941817

/-!
# A080473: a(n) = sum of the products of taking n-1 numbers from the next n numbers. The next n numbers can be grouped like this (1), (2,3), (4,5,6), (7,8,9,10),... and a(n) is the (sum of the reciprocals of all members) multiplied by (the product of all members).

The programs for A080473, there is no canonical definition to state claims against.
-/

/-! ## A080473.P7884834775191276221

`A057003(n+1)*A081971(n+1)/A082681(n+1)`
-/

namespace A080473.P7884834775191276221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057003 (n + 1) * A081971 (n + 1) : ℚ) / (A082681 (n + 1) : ℚ)

end

end A080473.P7884834775191276221

/-! ## A080473.P3050540832035707495

`A093905(A176145(n+4))`
-/

namespace A080473.P3050540832035707495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A176145 (n + 4)).toNat

end

end A080473.P3050540832035707495

/-! ## A080473.P16732309400242889214

`A093905(∑[A158842(n+1)])`
-/

namespace A080473.P16732309400242889214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080473.P16732309400242889214

/-! ## A080473.P6275341283163128558

`A093905(A002817(n+1)-A000217(n))`
-/

namespace A080473.P6275341283163128558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A002817 (n + 1) - A000217 n).toNat

end

end A080473.P6275341283163128558

/-!
# A080476: Floor( geometric mean of next n numbers ).

The programs for A080476, the canonical program `A080476.P12238013472229502131` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080476 has offset 1).

The definition of A080476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080476.P12238013472229502131

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080476

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12238013472229502131.Spec : Prop :=
  ∀ n, P12238013472229502131.a n = A080476 (n + 1)

theorem P12238013472229502131.correct : P12238013472229502131.Spec := by
  intro n
  simp only [A080476, Nat.add_sub_cancel]

end A080476

/-! ## A080476.P12051814240206619017

`floor(cosh(log((n+1)²)))`
-/

namespace A080476.P12051814240206619017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋

end

end A080476.P12051814240206619017

namespace A080476

/-- `floor(cosh(log((n+1)²)))` -/
def P12051814240206619017.Spec : Prop :=
  ∀ n, P12051814240206619017.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P5407334846725766068

`∑[n]+round(cosh(log(acot(n))))`
-/

namespace A080476.P5407334846725766068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

end

end A080476.P5407334846725766068

namespace A080476

/-- `∑[n]+round(cosh(log(acot(n))))` -/
def P5407334846725766068.Spec : Prop :=
  ∀ n, P5407334846725766068.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P2322463393919104677

`round((n+2)/(2*acot(n)))`
-/

namespace A080476.P2322463393919104677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / (2 * SequenceMachineLib.acot (n : ℝ)))

end

end A080476.P2322463393919104677

namespace A080476

/-- `round((n+2)/(2*acot(n)))` -/
def P2322463393919104677.Spec : Prop :=
  ∀ n, P2322463393919104677.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P1229688894135871153

`floor(1/sin(2/(n+1)²))`
-/

namespace A080476.P1229688894135871153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.sin (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A080476.P1229688894135871153

namespace A080476

/-- `floor(1/sin(2/(n+1)²))` -/
def P1229688894135871153.Spec : Prop :=
  ∀ n, P1229688894135871153.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P17960811751703361774

`floor(2/atan((2/(n+1))²))`
-/

namespace A080476.P17960811751703361774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.arctan ((2 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋

end

end A080476.P17960811751703361774

namespace A080476

/-- `floor(2/atan((2/(n+1))²))` -/
def P17960811751703361774.Spec : Prop :=
  ∀ n, P17960811751703361774.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P1522115817856445036

`floor(1/tanh(2/(n+1)²))`
-/

namespace A080476.P1522115817856445036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tanh (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A080476.P1522115817856445036

namespace A080476

/-- `floor(1/tanh(2/(n+1)²))` -/
def P1522115817856445036.Spec : Prop :=
  ∀ n, P1522115817856445036.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P2763787008999421502

`ceil(2/sinh(2/(n+1))²)`
-/

namespace A080476.P2763787008999421502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / Real.sinh (2 / (n + 1 : ℚ) : ℝ) ^ 2⌉

end

end A080476.P2763787008999421502

namespace A080476

/-- `ceil(2/sinh(2/(n+1))²)` -/
def P2763787008999421502.Spec : Prop :=
  ∀ n, P2763787008999421502.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P10113865729900390565

`floor(2/acot(((n+1)/2)²))`
-/

namespace A080476.P10113865729900390565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (((n + 1 : ℚ) / 2) ^ 2 : ℝ)⌋

end

end A080476.P10113865729900390565

namespace A080476

/-- `floor(2/acot(((n+1)/2)²))` -/
def P10113865729900390565.Spec : Prop :=
  ∀ n, P10113865729900390565.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P14308242801782235393

`ceil(abs((ϕ-(n+1)²)/2))`
-/

namespace A080476.P14308242801782235393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(Real.goldenRatio - ((n + 1) ^ 2 : ℝ)) / 2|⌉

end

end A080476.P14308242801782235393

namespace A080476

/-- `ceil(abs((ϕ-(n+1)²)/2))` -/
def P14308242801782235393.Spec : Prop :=
  ∀ n, P14308242801782235393.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P1145855964339545992

`∑[n%a(n-1)+n]` with `a(0)=1`
-/

namespace A080476.P1145855964339545992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n % f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080476.P1145855964339545992

namespace A080476

/-- `∑[n%a(n-1)+n]` -/
def P1145855964339545992.Spec : Prop :=
  ∀ n, (P1145855964339545992.a n : ℤ) = A080476 (n + 1)

end A080476

/-! ## A080476.P18313579985048487658

`∑[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A080476.P18313579985048487658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080476.P18313579985048487658

namespace A080476

/-- `∑[a(n-2)+2]` -/
def P18313579985048487658.Spec : Prop :=
  ∀ n, (P18313579985048487658.a n : ℤ) = A080476 (n + 1)

end A080476

/-! ## A080476.P4981912347149860955

`a(n-2)+2*n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A080476.P4981912347149860955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + 2 * n

end

end A080476.P4981912347149860955

namespace A080476

/-- `a(n-2)+2*n` -/
def P4981912347149860955.Spec : Prop :=
  ∀ n, (P4981912347149860955.a n : ℤ) = A080476 (n + 1)

end A080476

/-! ## A080476.P890816560894108678

`a(n-2)+n+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A080476.P890816560894108678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + n + n

end

end A080476.P890816560894108678

namespace A080476

/-- `a(n-2)+n+n` -/
def P890816560894108678.Spec : Prop :=
  ∀ n, (P890816560894108678.a n : ℤ) = A080476 (n + 1)

end A080476

/-! ## A080476.P5688843361861621557

`∑[2*n]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A080476.P5688843361861621557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A080476.P5688843361861621557

namespace A080476

/-- `∑[2*n]-a(n-1)` -/
def P5688843361861621557.Spec : Prop :=
  ∀ n, P5688843361861621557.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P5229687267754888803

`n-(a(n-1)-n²)` with `a(0)=1, a(1)=2`
-/

namespace A080476.P5229687267754888803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (a (n - 1) - (n ^ 2 : ℤ))

end

end A080476.P5229687267754888803

namespace A080476

/-- `n-(a(n-1)-n²)` -/
def P5229687267754888803.Spec : Prop :=
  ∀ n, P5229687267754888803.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P9363691937068307287

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A080476.P9363691937068307287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080476.P9363691937068307287

namespace A080476

/-- `∑[∑[2-a(n-1)]]` -/
def P9363691937068307287.Spec : Prop :=
  ∀ n, P9363691937068307287.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P16911311605735789238

`((n+1)²-(n-1)%2)/2`
-/

namespace A080476.P16911311605735789238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - Int.tmod ((n : ℤ) - 1) 2 : ℚ) / 2

end

end A080476.P16911311605735789238

namespace A080476

/-- `((n+1)²-(n-1)%2)/2` -/
def P16911311605735789238.Spec : Prop :=
  ∀ n, P16911311605735789238.a n = (A080476 (n + 1) : ℚ)

end A080476

/-! ## A080476.P1768756519197949493

`floor(∑[n+1]-cot(2/(n+1)))`
-/

namespace A080476.P1768756519197949493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (2 / (n + 1 : ℚ) : ℝ)⌋

end

end A080476.P1768756519197949493

namespace A080476

/-- `floor(∑[n+1]-cot(2/(n+1)))` -/
def P1768756519197949493.Spec : Prop :=
  ∀ n, P1768756519197949493.a n = A080476 (n + 1)

end A080476

/-! ## A080476.P10711109897040084541

`3*n-(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A080476.P10711109897040084541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 2))

end

end A080476.P10711109897040084541

namespace A080476

/-- `3*n-(n-a(n-2))` -/
def P10711109897040084541.Spec : Prop :=
  ∀ n, P10711109897040084541.a n = A080476 (n + 1)

end A080476

/-!
# A080477: Weight distribution of [120,60,20] double circulant code.

The programs for A080477, there is no canonical definition to state claims against.
-/

/-! ## A080477.P15328962419293713338

`C(∏{p}[n+1, #%n], n+1)*A005117(A000975(3*n+1))`
-/

namespace A080477.P15328962419293713338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p % n) (n + 1) : ℤ) * A005117 (A000975 (3 * n + 1)).toNat

end

end A080477.P15328962419293713338

/-! ## A080477.P11184022524921730048

`A121579(A087640(n))*A261139(n)`
-/

namespace A080477.P11184022524921730048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121579 (A087640 n).toNat * A261139 n

end

end A080477.P11184022524921730048

/-!
# A080478: Square roots of A062067(n).

The programs for A080478, there is no canonical definition to state claims against.
-/

/-! ## A080478.P7772725607934424836

`sqrt(A062067(n+1))`
-/

namespace A080478.P7772725607934424836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062067 (n + 1) : ℝ)

end

end A080478.P7772725607934424836

/-! ## A080478.P11257012433648841580

`root(A062067(root(n+1, 2)²), 2)`
-/

namespace A080478.P11257012433648841580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062067 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A080478.P11257012433648841580

/-! ## A080478.P16242674115926871786

`root(A062067(n+1), 2)%A321505(n+1)`
-/

namespace A080478.P16242674115926871786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A062067 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A321505 (n + 1))

end

end A080478.P16242674115926871786

/-! ## A080478.P14201013719455521771

`A320836(A020639(2*(n+1)))+root(A062067(n+1), 2)+1`
-/

namespace A080478.P14201013719455521771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A320836 (A020639 (2 * (n + 1))).toNat : ℝ) + ((A062067 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) + 1)

end

end A080478.P14201013719455521771

/-! ## A080478.P14800652962897579519

`A089489(a(n-1))` with `a(0)=1`
-/

namespace A080478.P14800652962897579519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089489 (a (n - 1)).toNat

end

end A080478.P14800652962897579519

/-! ## A080478.P13064830009042423532

`A056139(A231609(n+1))+root(A062067(n+1), 2)`
-/

namespace A080478.P13064830009042423532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056139 (A231609 (n + 1)).toNat : ℝ) + (A062067 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A080478.P13064830009042423532

/-!
# A080481: Concatenation of next n numbers (a(1) = 0).

The programs for A080481, there is no canonical definition to state claims against.
-/

/-! ## A080481.P1905609186869193742

`3*A080482(n+1)`
-/

namespace A080481.P1905609186869193742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080482 (n + 1)

end

end A080481.P1905609186869193742

/-! ## A080481.P16776606099457915969

`lcm(A071866(A002110(n)), A080482(n+1))`
-/

namespace A080481.P16776606099457915969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071866 (A002110 n).toNat) (A080482 (n + 1))

end

end A080481.P16776606099457915969

/-!
# A080482: a(n) = A080481(n)/3.

The programs for A080482, there is no canonical definition to state claims against.
-/

/-! ## A080482.P6315037035578423691

`A080481(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080482.P6315037035578423691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080481 (n + 1) : ℚ) / 3

end

end A080482.P6315037035578423691

/-!
# A080483: Reverse concatenation of next n numbers with a(1) = 0.

The programs for A080483, there is no canonical definition to state claims against.
-/

/-! ## A080483.P11355458366477595325

`3*A080484(n+1)`
-/

namespace A080483.P11355458366477595325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080484 (n + 1)

end

end A080483.P11355458366477595325

/-! ## A080483.P12976610251339741801

`lcm(A080484(n+1), A112755(A252212(n+1)))`
-/

namespace A080483.P12976610251339741801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080484 (n + 1)) (A112755 (A252212 (n + 1)).toNat)

end

end A080483.P12976610251339741801

/-!
# A080484: a(n) = A080483(n)/3.

The programs for A080484, there is no canonical definition to state claims against.
-/

/-! ## A080484.P14516260729055056968

`A080483(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080484.P14516260729055056968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080483 (n + 1) : ℚ) / 3

end

end A080484.P14516260729055056968

/-!
# A080485: a(1) = 1; thereafter a(n) = a(n-1) + a(n-1)^(n-1).

The programs for A080485, there is no canonical definition to state claims against.
-/

/-! ## A080485.P2783609056676497449

`a(n-1)+a(n-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A080485.P2783609056676497449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 1) ^ n

end

end A080485.P2783609056676497449

/-!
# A080487: a(1) =2, a(n) = smallest multiple of a(n-1) (not equal to 10^k*a(n-1)) obtained by inserting digits anywhere in a(n-1).

The programs for A080487, there is no canonical definition to state claims against.
-/

/-! ## A080487.P558194631063810717

`A080491(n+1)/A038712(A006318(n+1))`
-/

namespace A080487.P558194631063810717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080491 (n + 1) : ℚ) / (A038712 (A006318 (n + 1)).toNat : ℚ)

end

end A080487.P558194631063810717

/-!
# A080495: a(1) = 1, a(2) = 12, a(n) = smallest multiple of a(n-1) beginning with the least significant digit of a(n-1).

The programs for A080495, there is no canonical definition to state claims against.
-/

/-! ## A080495.P6908877251545294719

`∏[A080496(n+1)]/A080496(n+1)`
-/

namespace A080495.P6908877251545294719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080496 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A080496 (n + 1) : ℚ)

end

end A080495.P6908877251545294719

/-!
# A080497: a(n) = (n-p_1)(n-p_2)...(n-p_k) where p_k is the k-th prime and is also the largest prime < n.

The programs for A080497, there is no canonical definition to state claims against.
-/

/-! ## A080497.P1154679408431123163

`A028421(C(n, 2))/A080498(n+1)`
-/

namespace A080497.P1154679408431123163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (Nat.choose n 2) : ℚ) / (A080498 (n + 1) : ℚ)

end

end A080497.P1154679408431123163

/-! ## A080497.P8565123221065237491

`log2(A011782(n))!/A080498(n+1)`
-/

namespace A080497.P8565123221065237491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat : ℚ) / (A080498 (n + 1) : ℚ)

end

end A080497.P8565123221065237491

/-! ## A080497.P5619983938600797008

`A086520(n²)!/A080498(n+1)`
-/

namespace A080497.P5619983938600797008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A086520 (n ^ 2)).toNat : ℚ) / (A080498 (n + 1) : ℚ)

end

end A080497.P5619983938600797008

/-! ## A080497.P9897065311567202755

`∏{p}[A034386(abs(1-n)), 1-#+n]`
-/

namespace A080497.P9897065311567202755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ) + (n : ℤ))

end

end A080497.P9897065311567202755

/-!
# A080498: a(n) = (n-c_1)(n-c_2)...(n-c_k) where c_k is the k-th composite number and is also the largest composite number < n.

The programs for A080498, there is no canonical definition to state claims against.
-/

/-! ## A080498.P9837011944061137615

`A000142(A028310(n)-1)/A080497(n+1)`
-/

namespace A080498.P9837011944061137615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A028310 n - 1).toNat : ℚ) / (A080497 (n + 1) : ℚ)

end

end A080498.P9837011944061137615

/-! ## A080498.P10898250372692639473

`A000142(n)/(A028310(n)*A080497(n+1))`
-/

namespace A080498.P10898250372692639473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A028310 n * A080497 (n + 1) : ℚ)

end

end A080498.P10898250372692639473

/-! ## A080498.P12396464167841471980

`A086520(n²)!/A080497(n+1)`
-/

namespace A080498.P12396464167841471980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A086520 (n ^ 2)).toNat : ℚ) / (A080497 (n + 1) : ℚ)

end

end A080498.P12396464167841471980

/-! ## A080498.P2428785774645133618

`A028310(A000142(n)/A080497(n+1))/A028310(n)`
-/

namespace A080498.P2428785774645133618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A080497 (n + 1) : ℚ))).toNat : ℚ) / (A028310 n : ℚ)

end

end A080498.P2428785774645133618

/-! ## A080498.P2559387229047232070

`A284750(A006882(n))`
-/

namespace A080498.P2559387229047232070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284750 (A006882 n).toNat

end

end A080498.P2559387229047232070

