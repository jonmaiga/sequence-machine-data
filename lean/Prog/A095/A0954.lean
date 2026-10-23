import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A095402: Sum of digits of all distinct prime factors of n.

The programs for A095402, the canonical program `A095402.P3275104742656262928` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095402 has offset 1).

The definition of A095402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095402.P3275104742656262928

`∑{p}[n+1, A007953(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095402

/-- `∑{p}[n+1, A007953(#)]` -/
def P3275104742656262928.Spec : Prop :=
  ∀ n, P3275104742656262928.a n = A095402 (n + 1)

theorem P3275104742656262928.correct : P3275104742656262928.Spec := by
  intro n
  simp only [A095402, Nat.add_sub_cancel]

end A095402

/-! ## A095402.P10394217701250998565

`∑{p}[n+1, A071785(#)]`
-/

namespace A095402.P10394217701250998565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A071785 p

end

end A095402.P10394217701250998565

namespace A095402

/-- `∑{p}[n+1, A071785(#)]` -/
def P10394217701250998565.Spec : Prop :=
  ∀ n, P10394217701250998565.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P11922813925832113924

`∑{p}[n+1, A118503(#)]`
-/

namespace A095402.P11922813925832113924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A118503 p

end

end A095402.P11922813925832113924

namespace A095402

/-- `∑{p}[n+1, A118503(#)]` -/
def P11922813925832113924.Spec : Prop :=
  ∀ n, P11922813925832113924.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P16970563948555501633

`A118503(∏{p}[n+1, #])`
-/

namespace A095402.P16970563948555501633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A095402.P16970563948555501633

namespace A095402

/-- `A118503(∏{p}[n+1, #])` -/
def P16970563948555501633.Spec : Prop :=
  ∀ n, P16970563948555501633.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P16898336512939839946

`∑{digits}[A084317(n+1), #]`
-/

namespace A095402.P16898336512939839946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A095402.P16898336512939839946

namespace A095402

/-- `∑{digits}[A084317(n+1), #]` -/
def P16898336512939839946.Spec : Prop :=
  ∀ n, (P16898336512939839946.a n : ℤ) = A095402 (n + 1)

end A095402

/-! ## A095402.P14267107513281025353

`A118503(A007947(n+1))`
-/

namespace A095402.P14267107513281025353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (A007947 (n + 1)).toNat

end

end A095402.P14267107513281025353

namespace A095402

/-- `A118503(A007947(n+1))` -/
def P14267107513281025353.Spec : Prop :=
  ∀ n, P14267107513281025353.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P17545568750665724477

`A007953(n+1)-A095403(n+1)`
-/

namespace A095402.P17545568750665724477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A095403 (n + 1)

end

end A095402.P17545568750665724477

namespace A095402

/-- `A007953(n+1)-A095403(n+1)` -/
def P17545568750665724477.Spec : Prop :=
  ∀ n, P17545568750665724477.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P9107010887766180871

`A007953(A084317(n+1))`
-/

namespace A095402.P9107010887766180871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A084317 (n + 1)).toNat

end

end A095402.P9107010887766180871

namespace A095402

/-- `A007953(A084317(n+1))` -/
def P9107010887766180871.Spec : Prop :=
  ∀ n, P9107010887766180871.a n = A095402 (n + 1)

end A095402

/-! ## A095402.P16034742993135986012

`A118503(A015053(n+1)²)/2`
-/

namespace A095402.P16034742993135986012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118503 (A015053 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A095402.P16034742993135986012

namespace A095402

/-- `A118503(A015053(n+1)²)/2` -/
def P16034742993135986012.Spec : Prop :=
  ∀ n, P16034742993135986012.a n = (A095402 (n + 1) : ℚ)

end A095402

/-!
# A095403: Sum of digits of n minus the sum of digits of all distinct prime factors of n.

The programs for A095403, the canonical program `A095403.P6923104078230111594` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095403 has offset 1).

The definition of A095403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A095402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095403.P6923104078230111594

`A007953(n+1)-A095402(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095403

/-- `A007953(n+1)-A095402(n+1)` -/
def P6923104078230111594.Spec : Prop :=
  ∀ n, P6923104078230111594.a n = A095403 (n + 1)

theorem P6923104078230111594.correct : P6923104078230111594.Spec := by
  intro n
  simp only [A095403, Nat.add_sub_cancel]

end A095403

/-! ## A095403.P10237502718015117862

`Δ[A037123(n)]-∑{p}[n+1, A007953(#)]`
-/

namespace A095403.P10237502718015117862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ p ∈ Nat.primeFactors (f2 n), A007953 p

end

end A095403.P10237502718015117862

namespace A095403

/-- `Δ[A037123(n)]-∑{p}[n+1, A007953(#)]` -/
def P10237502718015117862.Spec : Prop :=
  ∀ n, P10237502718015117862.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P13314395855496960754

`Δ[A037123(n)]-∑{p}[n+1, A071785(#)]`
-/

namespace A095403.P13314395855496960754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ p ∈ Nat.primeFactors (f2 n), A071785 p

end

end A095403.P13314395855496960754

namespace A095403

/-- `Δ[A037123(n)]-∑{p}[n+1, A071785(#)]` -/
def P13314395855496960754.Spec : Prop :=
  ∀ n, P13314395855496960754.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P1889581865805398537

`Δ[A037123(n)]-∑{p}[n+1, A118503(#)]`
-/

namespace A095403.P1889581865805398537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ p ∈ Nat.primeFactors (f2 n), A118503 p

end

end A095403.P1889581865805398537

namespace A095403

/-- `Δ[A037123(n)]-∑{p}[n+1, A118503(#)]` -/
def P1889581865805398537.Spec : Prop :=
  ∀ n, P1889581865805398537.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P506448877640857544

`Δ[A037123(n)]-A118503(∏{p}[n+1, #])`
-/

namespace A095403.P506448877640857544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118503 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A095403.P506448877640857544

namespace A095403

/-- `Δ[A037123(n)]-A118503(∏{p}[n+1, #])` -/
def P506448877640857544.Spec : Prop :=
  ∀ n, P506448877640857544.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P12684872459745175925

`Δ[A037123(n)]-∑{digits}[A084317(n+1), #]`
-/

namespace A095403.P12684872459745175925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A095403.P12684872459745175925

namespace A095403

/-- `Δ[A037123(n)]-∑{digits}[A084317(n+1), #]` -/
def P12684872459745175925.Spec : Prop :=
  ∀ n, P12684872459745175925.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P2456621769943728192

`A007953(n+1)-∑{p}[n+1, A007953(#)]`
-/

namespace A095403.P2456621769943728192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A007953 p

end

end A095403.P2456621769943728192

namespace A095403

/-- `A007953(n+1)-∑{p}[n+1, A007953(#)]` -/
def P2456621769943728192.Spec : Prop :=
  ∀ n, P2456621769943728192.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P5133416020618178648

`A007953(n+1)-A118503(A007947(n+1))`
-/

namespace A095403.P5133416020618178648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A118503 (A007947 (n + 1)).toNat

end

end A095403.P5133416020618178648

namespace A095403

/-- `A007953(n+1)-A118503(A007947(n+1))` -/
def P5133416020618178648.Spec : Prop :=
  ∀ n, P5133416020618178648.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P7042365246948229482

`A037123(n+1)-A037123(n)-A118503(A007947(n+1))`
-/

namespace A095403.P7042365246948229482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1) - A037123 n - A118503 (A007947 (n + 1)).toNat

end

end A095403.P7042365246948229482

namespace A095403

/-- `A037123(n+1)-A037123(n)-A118503(A007947(n+1))` -/
def P7042365246948229482.Spec : Prop :=
  ∀ n, P7042365246948229482.a n = A095403 (n + 1)

end A095403

/-! ## A095403.P3130457279366965648

`A007953(n+1)-A007953(A084317(n+1))`
-/

namespace A095403.P3130457279366965648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (A084317 (n + 1)).toNat

end

end A095403.P3130457279366965648

namespace A095403

/-- `A007953(n+1)-A007953(A084317(n+1))` -/
def P3130457279366965648.Spec : Prop :=
  ∀ n, P3130457279366965648.a n = A095403 (n + 1)

end A095403

/-!
# A095404: Numbers whose sum of digits is greater than the sum of the digits of all of its distinct prime factors.

The programs for A095404, the canonical program `A095404.P9061338840450113737` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095404 has offset 1).

The definition of A095404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095404.P1776469428023008434

`lt[acot(1), A095403(n+1)]+1`
-/

namespace A095404.P1776469428023008434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A095404.P1776469428023008434

namespace A095404

/-- `lt[acot(1), A095403(n+1)]+1` -/
def P1776469428023008434.Spec : Prop :=
  ∀ n, (P1776469428023008434.a n : ℤ) = A095404 (n + 1)

end A095404

/-! ## A095404.P9061338840450113737

`lt[∑{p}[n, A007953(#)], A007953(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095404

/-- `lt[∑{p}[n, A007953(#)], A007953(n)]` -/
def P9061338840450113737.Spec : Prop :=
  ∀ n, (P9061338840450113737.a n : ℤ) = A095404 (n + 1)

theorem P9061338840450113737.correct : P9061338840450113737.Spec := by
  intro n
  simp only [A095404, Nat.add_sub_cancel]

end A095404

/-! ## A095404.P6951218822630748399

`lt[A095402(A028310(n)), A007953(n)]`
-/

namespace A095404.P6951218822630748399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095402 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095404.P6951218822630748399

namespace A095404

/-- `lt[A095402(A028310(n)), A007953(n)]` -/
def P6951218822630748399.Spec : Prop :=
  ∀ n, (P6951218822630748399.a n : ℤ) = A095404 (n + 1)

end A095404

/-!
# A095405: Numbers n such that Sum-of-digits-of-n = Sum-of-digits-of-all-distinct-prime-factors-of-n.

The programs for A095405, the canonical program `A095405.P11635465388125584041` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095405 has offset 1).

The definition of A095405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095405.P11635465388125584041

`eq[0, A095403(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A095405

/-- `eq[0, A095403(n+1)]+1` -/
def P11635465388125584041.Spec : Prop :=
  ∀ n, (P11635465388125584041.a n : ℤ) = A095405 (n + 1)

theorem P11635465388125584041.correct : P11635465388125584041.Spec := by
  intro n
  simp only [A095405, Nat.add_sub_cancel]

end A095405

/-! ## A095405.P13318035866030019705

`lt[A095403(A028310(n))², 1]`
-/

namespace A095405.P13318035866030019705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095405.P13318035866030019705

namespace A095405

/-- `lt[A095403(A028310(n))², 1]` -/
def P13318035866030019705.Spec : Prop :=
  ∀ n, (P13318035866030019705.a n : ℤ) = A095405 (n + 1)

end A095405

/-! ## A095405.P4226169625678300494

`∪[A000040(n+1), A019506(n+1)]`
-/

namespace A095405.P4226169625678300494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095405.P4226169625678300494

namespace A095405

/-- `∪[A000040(n+1), A019506(n+1)]` -/
def P4226169625678300494.Spec : Prop :=
  ∀ n, (P4226169625678300494.a n : ℤ) = A095405 (n + 1)

end A095405

/-! ## A095405.P12304935760719343961

`∪[A019506(n+1), record[A006530(n+2)]]`
-/

namespace A095405.P12304935760719343961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095405.P12304935760719343961

namespace A095405

/-- `∪[A019506(n+1), record[A006530(n+2)]]` -/
def P12304935760719343961.Spec : Prop :=
  ∀ n, (P12304935760719343961.a n : ℤ) = A095405 (n + 1)

end A095405

/-! ## A095405.P17888039998962736378

`lt[A007920(n), A342753(n+1)+n²%3]`
-/

namespace A095405.P17888039998962736378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095405.P17888039998962736378

namespace A095405

/-- `lt[A007920(n), A342753(n+1)+n²%3]` -/
def P17888039998962736378.Spec : Prop :=
  ∀ n, (P17888039998962736378.a n : ℤ) = A095405 (n + 1)

end A095405

/-!
# A095406: Numbers k such that Sum-of-digits-of-k < Sum-of-digits-of-all-distinct-prime-factors-of-k.

The programs for A095406, the canonical program `A095406.P13107935915610947608` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095406 has offset 1).

The definition of A095406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095406.P7984511569409291503

`lt[A095403(round(acot(n)+n)), 0]`
-/

namespace A095406.P7984511569409291503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095406.P7984511569409291503

namespace A095406

/-- `lt[A095403(round(acot(n)+n)), 0]` -/
def P7984511569409291503.Spec : Prop :=
  ∀ n, (P7984511569409291503.a n : ℤ) = A095406 (n + 1)

end A095406

/-! ## A095406.P3366015066379276637

`lt[A095403(n+1), floor(acot(n))]+1`
-/

namespace A095406.P3366015066379276637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095406.P3366015066379276637

namespace A095406

/-- `lt[A095403(n+1), floor(acot(n))]+1` -/
def P3366015066379276637.Spec : Prop :=
  ∀ n, (P3366015066379276637.a n : ℤ) = A095406 (n + 1)

end A095406

/-! ## A095406.P13107935915610947608

`lt[A095403(A028310(n)), 0]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A095406

/-- `lt[A095403(A028310(n)), 0]` -/
def P13107935915610947608.Spec : Prop :=
  ∀ n, (P13107935915610947608.a n : ℤ) = A095406 (n + 1)

theorem P13107935915610947608.correct : P13107935915610947608.Spec := by
  intro n
  simp only [A095406, Nat.add_sub_cancel]

end A095406

/-! ## A095406.P12592667859985208218

`lt[A007953(n), A095402(A028310(n))]`
-/

namespace A095406.P12592667859985208218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095402 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095406.P12592667859985208218

namespace A095406

/-- `lt[A007953(n), A095402(A028310(n))]` -/
def P12592667859985208218.Spec : Prop :=
  ∀ n, (P12592667859985208218.a n : ℤ) = A095406 (n + 1)

end A095406

/-! ## A095406.P15719972552858488099

`lt[A007953(n), ∑{p}[n, A007953(#)]]`
-/

namespace A095406.P15719972552858488099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A007953 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095406.P15719972552858488099

namespace A095406

/-- `lt[A007953(n), ∑{p}[n, A007953(#)]]` -/
def P15719972552858488099.Spec : Prop :=
  ∀ n, (P15719972552858488099.a n : ℤ) = A095406 (n + 1)

end A095406

/-!
# A095407: Total number of decimal digits of all distinct prime factors of n.

The programs for A095407, the canonical program `A095407.P3444143367220701582` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095407 has offset 1).

The definition of A095407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095407.P3444143367220701582

`∑{p}[n+1, A004218(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095407

/-- `∑{p}[n+1, A004218(#)]` -/
def P3444143367220701582.Spec : Prop :=
  ∀ n, P3444143367220701582.a n = A095407 (n + 1)

theorem P3444143367220701582.correct : P3444143367220701582.Spec := by
  intro n
  simp only [A095407, Nat.add_sub_cancel]

end A095407

/-! ## A095407.P3836553621228119813

`∑{p}[n+1, A050252(#)]`
-/

namespace A095407.P3836553621228119813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050252 p

end

end A095407.P3836553621228119813

namespace A095407

/-- `∑{p}[n+1, A050252(#)]` -/
def P3836553621228119813.Spec : Prop :=
  ∀ n, P3836553621228119813.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P4036115259291177052

`∑{p}[n+1, A055642(#)]`
-/

namespace A095407.P4036115259291177052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A055642 p

end

end A095407.P4036115259291177052

namespace A095407

/-- `∑{p}[n+1, A055642(#)]` -/
def P4036115259291177052.Spec : Prop :=
  ∀ n, P4036115259291177052.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P2985002517406114109

`∑{p}[n+1, A076649(#)]`
-/

namespace A095407.P2985002517406114109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A076649 p

end

end A095407.P2985002517406114109

namespace A095407

/-- `∑{p}[n+1, A076649(#)]` -/
def P2985002517406114109.Spec : Prop :=
  ∀ n, P2985002517406114109.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P1569263170721090198

`∑{p}[n+1, A160093(#)]`
-/

namespace A095407.P1569263170721090198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A160093 p

end

end A095407.P1569263170721090198

namespace A095407

/-- `∑{p}[n+1, A160093(#)]` -/
def P1569263170721090198.Spec : Prop :=
  ∀ n, P1569263170721090198.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P18431195690726027346

`A076649(∏{p}[n+1, #])`
-/

namespace A095407.P18431195690726027346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A095407.P18431195690726027346

namespace A095407

/-- `A076649(∏{p}[n+1, #])` -/
def P18431195690726027346.Spec : Prop :=
  ∀ n, P18431195690726027346.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P9465104685113238347

`A076649(A007947(n+1))`
-/

namespace A095407.P9465104685113238347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A007947 (n + 1)).toNat

end

end A095407.P9465104685113238347

namespace A095407

/-- `A076649(A007947(n+1))` -/
def P9465104685113238347.Spec : Prop :=
  ∀ n, P9465104685113238347.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P11612591091197340312

`A095408(n+1)+A055642(n+1)`
-/

namespace A095407.P11612591091197340312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1) + A055642 (n + 1)

end

end A095407.P11612591091197340312

namespace A095407

/-- `A095408(n+1)+A055642(n+1)` -/
def P11612591091197340312.Spec : Prop :=
  ∀ n, P11612591091197340312.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P13677081802362989368

`A076649((n+1)/A003557(n+1))`
-/

namespace A095407.P13677081802362989368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A095407.P13677081802362989368

namespace A095407

/-- `A076649((n+1)/A003557(n+1))` -/
def P13677081802362989368.Spec : Prop :=
  ∀ n, P13677081802362989368.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P14779844169058039174

`A076649(n+1)-A076649(A003557(n+1))`
-/

namespace A095407.P14779844169058039174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1) - A076649 (A003557 (n + 1)).toNat

end

end A095407.P14779844169058039174

namespace A095407

/-- `A076649(n+1)-A076649(A003557(n+1))` -/
def P14779844169058039174.Spec : Prop :=
  ∀ n, P14779844169058039174.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P3049616440735655549

`A095408(n+1)+A004218(n+2)`
-/

namespace A095407.P3049616440735655549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1) + A004218 (n + 2)

end

end A095407.P3049616440735655549

namespace A095407

/-- `A095408(n+1)+A004218(n+2)` -/
def P3049616440735655549.Spec : Prop :=
  ∀ n, P3049616440735655549.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P961438827581450466

`A004218(A085307(n+1))`
-/

namespace A095407.P961438827581450466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A085307 (n + 1)).toNat

end

end A095407.P961438827581450466

namespace A095407

/-- `A004218(A085307(n+1))` -/
def P961438827581450466.Spec : Prop :=
  ∀ n, P961438827581450466.a n = A095407 (n + 1)

end A095407

/-! ## A095407.P8764989427344301263

`A055640(A084317((n+1)²))`
-/

namespace A095407.P8764989427344301263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A084317 ((n + 1) ^ 2)).toNat

end

end A095407.P8764989427344301263

namespace A095407

/-- `A055640(A084317((n+1)²))` -/
def P8764989427344301263.Spec : Prop :=
  ∀ n, P8764989427344301263.a n = A095407 (n + 1)

end A095407

/-!
# A095408: Total number of decimal digits in all distinct prime factors of n minus number of digits in n.

The programs for A095408, the canonical program `A095408.P2538879780517524759` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095408 has offset 1).

The definition of A095408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A095407, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095408.P2538879780517524759

`A095407(n+1)-A055642(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095408

/-- `A095407(n+1)-A055642(n+1)` -/
def P2538879780517524759.Spec : Prop :=
  ∀ n, P2538879780517524759.a n = A095408 (n + 1)

theorem P2538879780517524759.correct : P2538879780517524759.Spec := by
  intro n
  simp only [A095408, Nat.add_sub_cancel]

end A095408

/-! ## A095408.P16765219640202639683

`A095407(n+1)-(A004216(n+1)+1)`
-/

namespace A095408.P16765219640202639683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1) - (A004216 (n + 1) + 1)

end

end A095408.P16765219640202639683

namespace A095408

/-- `A095407(n+1)-(A004216(n+1)+1)` -/
def P16765219640202639683.Spec : Prop :=
  ∀ n, P16765219640202639683.a n = A095408 (n + 1)

end A095408

/-! ## A095408.P14487199474460504352

`∑{p}[n+1, A055642(#)]-A055642(n+1)`
-/

namespace A095408.P14487199474460504352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A055642 p - A055642 (n + 1)

end

end A095408.P14487199474460504352

namespace A095408

/-- `∑{p}[n+1, A055642(#)]-A055642(n+1)` -/
def P14487199474460504352.Spec : Prop :=
  ∀ n, P14487199474460504352.a n = A095408 (n + 1)

end A095408

/-! ## A095408.P12407395623993645333

`A280827(n+1)-A076649(A003557(n+1))`
-/

namespace A095408.P12407395623993645333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (n + 1) - A076649 (A003557 (n + 1)).toNat

end

end A095408.P12407395623993645333

namespace A095408

/-- `A280827(n+1)-A076649(A003557(n+1))` -/
def P12407395623993645333.Spec : Prop :=
  ∀ n, P12407395623993645333.a n = A095408 (n + 1)

end A095408

/-! ## A095408.P10180237420782337349

`A095407(n+1)-A004218(n+2)`
-/

namespace A095408.P10180237420782337349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1) - A004218 (n + 2)

end

end A095408.P10180237420782337349

namespace A095408

/-- `A095407(n+1)-A004218(n+2)` -/
def P10180237420782337349.Spec : Prop :=
  ∀ n, P10180237420782337349.a n = A095408 (n + 1)

end A095408

/-!
# A095409: Numbers k such that total number of decimal digits of all distinct prime factors of k is smaller than number of digits of k.

The programs for A095409, the canonical program `A095409.P14206144317801297067` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095409 has offset 1).

The definition of A095409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095409.P14206144317801297067

`lt[A095408(n+1), 0]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095409

/-- `lt[A095408(n+1), 0]+1` -/
def P14206144317801297067.Spec : Prop :=
  ∀ n, (P14206144317801297067.a n : ℤ) = A095409 (n + 1)

theorem P14206144317801297067.correct : P14206144317801297067.Spec := by
  intro n
  simp only [A095409, Nat.add_sub_cancel]

end A095409

/-! ## A095409.P11978742642889297663

`lt[A095407(n+1), A004218(n+2)]+1`
-/

namespace A095409.P11978742642889297663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095409.P11978742642889297663

namespace A095409

/-- `lt[A095407(n+1), A004218(n+2)]+1` -/
def P11978742642889297663.Spec : Prop :=
  ∀ n, (P11978742642889297663.a n : ℤ) = A095409 (n + 1)

end A095409

/-! ## A095409.P1402982624634420097

`lt[A084317(A028310(n)), A136400(n)]`
-/

namespace A095409.P1402982624634420097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095409.P1402982624634420097

namespace A095409

/-- `lt[A084317(A028310(n)), A136400(n)]` -/
def P1402982624634420097.Spec : Prop :=
  ∀ n, (P1402982624634420097.a n : ℤ) = A095409 (n + 1)

end A095409

/-! ## A095409.P10940031209574577125

`lt[A095407(A028310(n)), A004218(n+1)]`
-/

namespace A095409.P10940031209574577125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095409.P10940031209574577125

namespace A095409

/-- `lt[A095407(A028310(n)), A004218(n+1)]` -/
def P10940031209574577125.Spec : Prop :=
  ∀ n, (P10940031209574577125.a n : ℤ) = A095409 (n + 1)

end A095409

/-!
# A095410: Numbers n such that total number of decimal digits of all distinct prime factors of n equals the number of digits of n.

The programs for A095410, the canonical program `A095410.P5149493800954626937` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095410 has offset 1).

The definition of A095410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095410.P5149493800954626937

`eq[0, A095408(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095410

/-- `eq[0, A095408(n+1)]+1` -/
def P5149493800954626937.Spec : Prop :=
  ∀ n, (P5149493800954626937.a n : ℤ) = A095410 (n + 1)

theorem P5149493800954626937.correct : P5149493800954626937.Spec := by
  intro n
  simp only [A095410, Nat.add_sub_cancel]

end A095410

/-! ## A095410.P12266828715482292858

`A020725(eq[0, A095408(n+1)])`
-/

namespace A095410.P12266828715482292858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095410.P12266828715482292858

namespace A095410

/-- `A020725(eq[0, A095408(n+1)])` -/
def P12266828715482292858.Spec : Prop :=
  ∀ n, P12266828715482292858.a n = A095410 (n + 1)

end A095410

/-! ## A095410.P2755395593933082451

`A020725(lt[A095408(n+1)², 1])`
-/

namespace A095410.P2755395593933082451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A095410.P2755395593933082451

namespace A095410

/-- `A020725(lt[A095408(n+1)², 1])` -/
def P2755395593933082451.Spec : Prop :=
  ∀ n, P2755395593933082451.a n = A095410 (n + 1)

end A095410

/-! ## A095410.P2763038748872860095

`eq[0, A095408(A028310(n))]`
-/

namespace A095410.P2763038748872860095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095410.P2763038748872860095

namespace A095410

/-- `eq[0, A095408(A028310(n))]` -/
def P2763038748872860095.Spec : Prop :=
  ∀ n, (P2763038748872860095.a n : ℤ) = A095410 (n + 1)

end A095410

/-! ## A095410.P128743949398794904

`eq[∑{p}[n, A055642(#)], A055642(n)]`
-/

namespace A095410.P128743949398794904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A055642 p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A095410.P128743949398794904

namespace A095410

/-- `eq[∑{p}[n, A055642(#)], A055642(n)]` -/
def P128743949398794904.Spec : Prop :=
  ∀ n, (P128743949398794904.a n : ℤ) = A095410 (n + 1)

end A095410

/-! ## A095410.P8495941991339862466

`eq[A055642(n), A095407(A028310(n))]`
-/

namespace A095410.P8495941991339862466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095410.P8495941991339862466

namespace A095410

/-- `eq[A055642(n), A095407(A028310(n))]` -/
def P8495941991339862466.Spec : Prop :=
  ∀ n, (P8495941991339862466.a n : ℤ) = A095410 (n + 1)

end A095410

/-! ## A095410.P15387133773289484244

`eq[A095407(n+1), A276502(n+1)]+1`
-/

namespace A095410.P15387133773289484244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095410.P15387133773289484244

namespace A095410

/-- `eq[A095407(n+1), A276502(n+1)]+1` -/
def P15387133773289484244.Spec : Prop :=
  ∀ n, (P15387133773289484244.a n : ℤ) = A095410 (n + 1)

end A095410

/-! ## A095410.P69537442711647562

`A020725(eq[A095407(n+1), A276502(n+1)])`
-/

namespace A095410.P69537442711647562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A095410.P69537442711647562

namespace A095410

/-- `A020725(eq[A095407(n+1), A276502(n+1)])` -/
def P69537442711647562.Spec : Prop :=
  ∀ n, P69537442711647562.a n = A095410 (n + 1)

end A095410

/-!
# A095411: Numbers k such that total number of decimal digits of all distinct prime factors of k is larger than the number of digits of k.

The programs for A095411, the canonical program `A095411.P6201714900269335947` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095411 has offset 1).

The definition of A095411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095411.P6201714900269335947

`lt[0, A095408(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095411

/-- `lt[0, A095408(n+1)]+1` -/
def P6201714900269335947.Spec : Prop :=
  ∀ n, (P6201714900269335947.a n : ℤ) = A095411 (n + 1)

theorem P6201714900269335947.correct : P6201714900269335947.Spec := by
  intro n
  simp only [A095411, Nat.add_sub_cancel]

end A095411

/-! ## A095411.P4720698396999653203

`lt[0, A095408(A028310(n))]`
-/

namespace A095411.P4720698396999653203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095411.P4720698396999653203

namespace A095411

/-- `lt[0, A095408(A028310(n))]` -/
def P4720698396999653203.Spec : Prop :=
  ∀ n, (P4720698396999653203.a n : ℤ) = A095411 (n + 1)

end A095411

/-! ## A095411.P2247532924154411702

`A020725(lt[0, A095408(n+1)])`
-/

namespace A095411.P2247532924154411702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A095411.P2247532924154411702

namespace A095411

/-- `A020725(lt[0, A095408(n+1)])` -/
def P2247532924154411702.Spec : Prop :=
  ∀ n, P2247532924154411702.a n = A095411 (n + 1)

end A095411

/-! ## A095411.P17845705157828880620

`lt[A004218(n+2), A095407(n+1)]+1`
-/

namespace A095411.P17845705157828880620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A095411.P17845705157828880620

namespace A095411

/-- `lt[A004218(n+2), A095407(n+1)]+1` -/
def P17845705157828880620.Spec : Prop :=
  ∀ n, (P17845705157828880620.a n : ℤ) = A095411 (n + 1)

end A095411

/-! ## A095411.P3663350784579346799

`lt[A055642(n), A095407(A028310(n))]`
-/

namespace A095411.P3663350784579346799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095411.P3663350784579346799

namespace A095411

/-- `lt[A055642(n), A095407(A028310(n))]` -/
def P3663350784579346799.Spec : Prop :=
  ∀ n, (P3663350784579346799.a n : ℤ) = A095411 (n + 1)

end A095411

/-! ## A095411.P3378525960387918735

`lt[A004218(n+1), A095407(A028310(n))]`
-/

namespace A095411.P3378525960387918735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095411.P3378525960387918735

namespace A095411

/-- `lt[A004218(n+1), A095407(A028310(n))]` -/
def P3378525960387918735.Spec : Prop :=
  ∀ n, (P3378525960387918735.a n : ℤ) = A095411 (n + 1)

end A095411

/-! ## A095411.P4997828123684364385

`A020725(lt[A004216(n+1)+1, A095407(n+1)])`
-/

namespace A095411.P4997828123684364385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095411.P4997828123684364385

namespace A095411

/-- `A020725(lt[A004216(n+1)+1, A095407(n+1)])` -/
def P4997828123684364385.Spec : Prop :=
  ∀ n, P4997828123684364385.a n = A095411 (n + 1)

end A095411

/-! ## A095411.P13472858574122348444

`A020725(lt[0, A095407(n+1)-A055642(n+1)])`
-/

namespace A095411.P13472858574122348444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1) - A055642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A095411.P13472858574122348444

namespace A095411

/-- `A020725(lt[0, A095407(n+1)-A055642(n+1)])` -/
def P13472858574122348444.Spec : Prop :=
  ∀ n, P13472858574122348444.a n = A095411 (n + 1)

end A095411

/-! ## A095411.P17834819699564229674

`lt[0, A095408(A233583(n+1))]`
-/

namespace A095411.P17834819699564229674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095411.P17834819699564229674

namespace A095411

/-- `lt[0, A095408(A233583(n+1))]` -/
def P17834819699564229674.Spec : Prop :=
  ∀ n, (P17834819699564229674.a n : ℤ) = A095411 (n + 1)

end A095411

/-!
# A095412: Exponents k such that the sum of decimal digits of 2^k is also a power of 2.

The programs for A095412, there is no canonical definition to state claims against.
-/

/-! ## A095412.P1676074950772434065

`eq[1, A003958(A001370(n))]`
-/

namespace A095412.P1676074950772434065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095412.P1676074950772434065

/-! ## A095412.P9246995149739156626

`lt[A002264(n), A003557(A001370(n))]`
-/

namespace A095412.P9246995149739156626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095412.P9246995149739156626

/-! ## A095412.P12898495630190273111

`eq[A014963(A001370(n)), A036453(n+1)]`
-/

namespace A095412.P12898495630190273111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095412.P12898495630190273111

/-! ## A095412.P8885940336675804070

`eq[1, A000120(A066001(n)-A354618(n))]`
-/

namespace A095412.P8885940336675804070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066001 n - A354618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095412.P8885940336675804070

/-!
# A095413: Total number of decimal digits of all distinct prime factors of the n-th repunit.

The programs for A095413, there is no canonical definition to state claims against.
-/

/-! ## A095413.P11191284345962185576

`A095414(n+1)+1+n`
-/

namespace A095413.P11191284345962185576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095414 (n + 1) + 1 + (n : ℤ)

end

end A095413.P11191284345962185576

/-! ## A095413.P1483596431441804858

`A095414(A077168(n))+n+1`
-/

namespace A095413.P1483596431441804858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095414 (A077168 n).toNat + (n + 1 : ℤ)

end

end A095413.P1483596431441804858

/-! ## A095413.P8657529559756350290

`n+1+A324848(n+1)-A088534(A324765(n+1))`
-/

namespace A095413.P8657529559756350290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A324848 (n + 1) - A088534 (A324765 (n + 1)).toNat)

end

end A095413.P8657529559756350290

/-! ## A095413.P16566099004118418469

`round(log2(A191161(∑[2^n])))`
-/

namespace A095413.P16566099004118418469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A191161 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A095413.P16566099004118418469

/-!
# A095414: Excess of total number of distinct prime factor digits of n-th repunit over n, the number of digits of n-th repunit itself.

The programs for A095414, there is no canonical definition to state claims against.
-/

/-! ## A095414.P16998968479568546239

`A095413(n+1)-(n+1)`
-/

namespace A095414.P16998968479568546239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095413 (n + 1) - (n + 1 : ℤ)

end

end A095414.P16998968479568546239

/-! ## A095414.P13750781135883738942

`A095413(2*n-(n-1))-n-1`
-/

namespace A095414.P13750781135883738942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095413 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ) - 1

end

end A095414.P13750781135883738942

/-! ## A095414.P9326723844354401275

`A023443(A095413(n+1)-n)`
-/

namespace A095414.P9326723844354401275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095413 (n + 1) - (n : ℤ)).toNat

end

end A095414.P9326723844354401275

/-! ## A095414.P17499639730987730825

`A000027(A095413(n+1)+1)+xor(n+1, -1)`
-/

namespace A095414.P17499639730987730825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095413 (n + 1) + 1).toNat + Int.xor (n + 1 : ℤ) (-1)

end

end A095414.P17499639730987730825

/-! ## A095414.P17313263043902726108

`(A095413(n+1)+xor(n, -1))%A038593(n+1)`
-/

namespace A095414.P17313263043902726108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095413 (n + 1) + Int.xor (n : ℤ) (-1)) (A038593 (n + 1))

end

end A095414.P17313263043902726108

/-! ## A095414.P18278595012360963554

`A191904(A001844(n+1))+A095413(n+1)`
-/

namespace A095414.P18278595012360963554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (A001844 (n + 1)).toNat + A095413 (n + 1)

end

end A095414.P18278595012360963554

/-!
# A095415: Length of repunits of which the prime factor-digit-excess computed by A095414 equals 0.

The programs for A095415, there is no canonical definition to state claims against.
-/

/-! ## A095415.P5065752233073078856

`eq[0, A095414(n+2)]+2`
-/

namespace A095415.P5065752233073078856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095414 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A095415.P5065752233073078856

/-! ## A095415.P14784219386081395312

`record[gcd(n+2, A095413(n+2))]`
-/

namespace A095415.P14784219386081395312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A095413 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095415.P14784219386081395312

/-! ## A095415.P13340459047181547365

`record[2*(n+1)/(A095413(n+1)-n+1)]`
-/

namespace A095415.P13340459047181547365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A095413 (n + 1) - (n : ℤ) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095415.P13340459047181547365

/-! ## A095415.P9141184588185590239

`eq[0, A095414(A028310(n))]`
-/

namespace A095415.P9141184588185590239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095415.P9141184588185590239

/-! ## A095415.P7460670593446564566

`A141310(eq[0, A095414(n+1)])`
-/

namespace A095415.P7460670593446564566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095415.P7460670593446564566

/-!
# A095417: Sum of all decimal digits of distinct prime factors for n-th repunit.

The programs for A095417, there is no canonical definition to state claims against.
-/

/-! ## A095417.P6603929374990905940

`A095418(n+1)+1+n`
-/

namespace A095417.P6603929374990905940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095418 (n + 1) + 1 + (n : ℤ)

end

end A095417.P6603929374990905940

/-! ## A095417.P2374172682972537399

`A095418(A077168(n))+n+1`
-/

namespace A095417.P2374172682972537399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095418 (A077168 n).toNat + (n + 1 : ℤ)

end

end A095417.P2374172682972537399

/-!
# A095418: Excess of sum of all decimal digits of distinct prime factors for n-th repunit over corresponding digit-sum for repunit itself (which is n).

The programs for A095418, there is no canonical definition to state claims against.
-/

/-! ## A095418.P9146313504356800678

`A095417(n+1)-(n+1)`
-/

namespace A095418.P9146313504356800678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095417 (n + 1) - (n + 1 : ℤ)

end

end A095418.P9146313504356800678

/-! ## A095418.P551943964206545590

`A023443(A095417(n+1)-n)`
-/

namespace A095418.P551943964206545590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095417 (n + 1) - (n : ℤ)).toNat

end

end A095418.P551943964206545590

/-! ## A095418.P10090845735512397142

`A095417(n+1)+A001478(n+2)+1`
-/

namespace A095418.P10090845735512397142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095417 (n + 1) + A001478 (n + 2) + 1

end

end A095418.P10090845735512397142

/-! ## A095418.P3067736286378960631

`A000027(A095417(n+1)+1)+xor(n+1, -1)`
-/

namespace A095418.P3067736286378960631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A095417 (n + 1) + 1).toNat + Int.xor (n + 1 : ℤ) (-1)

end

end A095418.P3067736286378960631

/-! ## A095418.P13755203630887872660

`A325794(A000040(n+3))+A095417(n+1)`
-/

namespace A095418.P13755203630887872660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A000040 (n + 3)).toNat + A095417 (n + 1)

end

end A095418.P13755203630887872660

/-!
# A095419: Indices of the primes in A095649: A095649(n) = prime(a(n)).

The programs for A095419, there is no canonical definition to state claims against.
-/

/-! ## A095419.P4011211165512744061

`A000720(A095649(n+1))`
-/

namespace A095419.P4011211165512744061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095649 (n + 1)).toNat

end

end A095419.P4011211165512744061

/-! ## A095419.P17965720181513028349

`A003963(p?[A095649(n+1)])`
-/

namespace A095419.P17965720181513028349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095419.P17965720181513028349

/-! ## A095419.P7430655368592467424

`A026233(p?[A095649(n+1)])`
-/

namespace A095419.P7430655368592467424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095419.P7430655368592467424

/-! ## A095419.P12607033991814585008

`A026238(p?[A095649(n+1)])`
-/

namespace A095419.P12607033991814585008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095419.P12607033991814585008

/-! ## A095419.P13466847629303891340

`A049084(p?[A095649(n+1)])`
-/

namespace A095419.P13466847629303891340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095419.P13466847629303891340

/-! ## A095419.P1628086739423713927

`A003963(or(1, A095649(n+1)))`
-/

namespace A095419.P1628086739423713927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A095649 (n + 1))).toNat

end

end A095419.P1628086739423713927

/-! ## A095419.P14334216259318702205

`A026233(or(1, A095649(n+1)))`
-/

namespace A095419.P14334216259318702205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.lor 1 (A095649 (n + 1))).toNat

end

end A095419.P14334216259318702205

/-! ## A095419.P183315790098132117

`A026238(or(1, A095649(n+1)))`
-/

namespace A095419.P183315790098132117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (Int.lor 1 (A095649 (n + 1))).toNat

end

end A095419.P183315790098132117

/-! ## A095419.P7249726323793700932

`A003963(∏{p}[A095649(n+1), #])`
-/

namespace A095419.P7249726323793700932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A095419.P7249726323793700932

/-! ## A095419.P3780045872786729387

`A003963(A095649(n+1)+C(n, n+1))`
-/

namespace A095419.P3780045872786729387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A095649 (n + 1) + (Nat.choose n (n + 1) : ℤ)).toNat

end

end A095419.P3780045872786729387

/-!
# A095420: Indices of the primes in A095651: A095651(n) = prime(a(n)).

The programs for A095420, there is no canonical definition to state claims against.
-/

/-! ## A095420.P4475522764196453263

`A000720(A095651(n+1))`
-/

namespace A095420.P4475522764196453263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095651 (n + 1)).toNat

end

end A095420.P4475522764196453263

/-! ## A095420.P4497550282376201552

`A058933(p?[A095651(n+1)])`
-/

namespace A095420.P4497550282376201552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095420.P4497550282376201552

/-! ## A095420.P10844651071828722972

`A061395(p?[A095651(n+1)])`
-/

namespace A095420.P10844651071828722972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095420.P10844651071828722972

/-! ## A095420.P11646236493024895171

`A302039(p?[A095651(n+1)])`
-/

namespace A095420.P11646236493024895171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095420.P11646236493024895171

/-! ## A095420.P16099385970504725003

`A061395(2*A095651(n+1))`
-/

namespace A095420.P16099385970504725003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A095651 (n + 1)).toNat

end

end A095420.P16099385970504725003

/-!
# A095437: a(n) = 21 written in base 10 - n.

The programs for A095437, there is no canonical definition to state claims against.
-/

/-! ## A095437.P8064175913618626367

`A023443(A095439(n+1))`
-/

namespace A095437.P8064175913618626367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095439 (n + 1)).toNat

end

end A095437.P8064175913618626367

/-! ## A095437.P11471134249656269868

`A289207(A095441(n+1))`
-/

namespace A095437.P11471134249656269868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A095441 (n + 1)).toNat

end

end A095437.P11471134249656269868

/-! ## A095437.P13323448345138419077

`A095439(A008815(n))-1`
-/

namespace A095437.P13323448345138419077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095439 (A008815 n).toNat - 1

end

end A095437.P13323448345138419077

/-! ## A095437.P6259562290187453172

`A289207(A095439(n+1)+1)`
-/

namespace A095437.P6259562290187453172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A095439 (n + 1) + 1).toNat

end

end A095437.P6259562290187453172

/-!
# A095439: a(n) = 22 written in base 11 - n.

The programs for A095439, there is no canonical definition to state claims against.
-/

/-! ## A095439.P11443834685819784324

`A023443(A095441(n))`
-/

namespace A095439.P11443834685819784324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095441 n).toNat

end

end A095439.P11443834685819784324

/-! ## A095439.P9693754028703809518

`A289207(A095441(n)+1)`
-/

namespace A095439.P9693754028703809518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A095441 n + 1).toNat

end

end A095439.P9693754028703809518

/-! ## A095439.P17344882671760477476

`A028310(A095441(n)-1)`
-/

namespace A095439.P17344882671760477476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095441 n - 1).toNat

end

end A095439.P17344882671760477476

/-! ## A095439.P1416821035590364727

`A046667(2*A095441(n))`
-/

namespace A095439.P1416821035590364727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A095441 n).toNat

end

end A095439.P1416821035590364727

/-! ## A095439.P6344402548966963897

`A095441(A004859(n+1))-1`
-/

namespace A095439.P6344402548966963897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095441 (A004859 (n + 1)).toNat - 1

end

end A095439.P6344402548966963897

/-!
# A095441: a(n) = 23 written in base 11 - n.

The programs for A095441, there is no canonical definition to state claims against.
-/

/-! ## A095441.P18108678155951726032

`A103391(2*A095439(n))`
-/

namespace A095441.P18108678155951726032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (2 * A095439 n).toNat

end

end A095441.P18108678155951726032

/-! ## A095441.P7895847806677629345

`A328399(2*A095439(n))`
-/

namespace A095441.P7895847806677629345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A095439 n).toNat

end

end A095441.P7895847806677629345

/-! ## A095441.P16963394278418499594

`A020725(A095439(n))`
-/

namespace A095441.P16963394278418499594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095439 n).toNat

end

end A095441.P16963394278418499594

/-! ## A095441.P16002501519516430217

`A009056(A095439(n)-1)`
-/

namespace A095441.P16002501519516430217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A095439 n - 1).toNat

end

end A095441.P16002501519516430217

/-! ## A095441.P8833083978615323489

`A023443(A095439(n)+2)`
-/

namespace A095441.P8833083978615323489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095439 n + 2).toNat

end

end A095441.P8833083978615323489

/-!
# A095443: a(n) = 25 written in base 12 - n.

The programs for A095443, there is no canonical definition to state claims against.
-/

/-! ## A095443.P5016844152141886991

`A095445(gcd(11, C(9, n))+n)-1`
-/

namespace A095443.P5016844152141886991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 (Nat.gcd 11 (Nat.choose 9 n) + n) - 1

end

end A095443.P5016844152141886991

/-! ## A095443.P18397076464641721084

`A233583(A095445(n+1))`
-/

namespace A095443.P18397076464641721084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095445 (n + 1)).toNat

end

end A095443.P18397076464641721084

/-! ## A095443.P11481471153891424748

`A028310(A095445(n+1)-1)`
-/

namespace A095443.P11481471153891424748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095445 (n + 1) - 1).toNat

end

end A095443.P11481471153891424748

/-! ## A095443.P16698695218221975273

`A095445(A051885(n)+1)-1`
-/

namespace A095443.P16698695218221975273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 (A051885 n + 1).toNat - 1

end

end A095443.P16698695218221975273

/-! ## A095443.P12829585295183884083

`A095445(A068861(n+1))-1`
-/

namespace A095443.P12829585295183884083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 (A068861 (n + 1)).toNat - 1

end

end A095443.P12829585295183884083

/-!
# A095445: a(n) = 26 written in base 13 - n.

The programs for A095445, there is no canonical definition to state claims against.
-/

/-! ## A095445.P7299538118265644272

`A095447(A051885(n))-A006466(n)`
-/

namespace A095445.P7299538118265644272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095447 (A051885 n).toNat - A006466 n

end

end A095445.P7299538118265644272

/-! ## A095445.P9809453521941443919

`A095447(A051885(n))-A082907(n)`
-/

namespace A095445.P9809453521941443919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095447 (A051885 n).toNat - A082907 n

end

end A095445.P9809453521941443919

/-! ## A095445.P10520265042776240450

`A095447(n)-A006466(A148683(n))`
-/

namespace A095445.P10520265042776240450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095447 n - A006466 (A148683 n).toNat

end

end A095445.P10520265042776240450

/-! ## A095445.P16108692140449517013

`A095447(n)-A325989(A095489(n))`
-/

namespace A095445.P16108692140449517013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095447 n - A325989 (A095489 n).toNat

end

end A095445.P16108692140449517013

/-! ## A095445.P2546936167472886230

`A095447(n)-A006466(A001654(n+2))`
-/

namespace A095445.P2546936167472886230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095447 n - A006466 (A001654 (n + 2)).toNat

end

end A095445.P2546936167472886230

/-!
# A095447: a(n) = 27 written in base 13 - n.

The programs for A095447, there is no canonical definition to state claims against.
-/

/-! ## A095447.P4065731031281177650

`A095445(A051885(n))+A006466(n)`
-/

namespace A095447.P4065731031281177650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 (A051885 n).toNat + A006466 n

end

end A095447.P4065731031281177650

/-! ## A095447.P9108938642091069325

`A095445(A051885(n))+A082907(n)`
-/

namespace A095447.P9108938642091069325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 (A051885 n).toNat + A082907 n

end

end A095447.P9108938642091069325

/-! ## A095447.P14414100417711552064

`A095445(n)+A006466(A148683(n))`
-/

namespace A095447.P14414100417711552064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 n + A006466 (A148683 n).toNat

end

end A095447.P14414100417711552064

/-! ## A095447.P11293829952906243553

`A325989(A095489(n))+A095445(n)`
-/

namespace A095447.P11293829952906243553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A095489 n).toNat + A095445 n

end

end A095447.P11293829952906243553

/-! ## A095447.P12187341583113955437

`A095445(n)+A006466(A001654(n+2))`
-/

namespace A095447.P12187341583113955437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095445 n + A006466 (A001654 (n + 2)).toNat

end

end A095447.P12187341583113955437

/-!
# A095449: a(n) = 28 written in base 14 - n.

The programs for A095449, there is no canonical definition to state claims against.
-/

/-! ## A095449.P12799798026011376849

`A023443(A095451(n))`
-/

namespace A095449.P12799798026011376849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095451 n).toNat

end

end A095449.P12799798026011376849

/-! ## A095449.P17331655986889001787

`A023444(A095451(n)+1)`
-/

namespace A095449.P17331655986889001787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A095451 n + 1).toNat

end

end A095449.P17331655986889001787

/-! ## A095449.P10625970521301543014

`A171950(A095451(n)+1)`
-/

namespace A095449.P10625970521301543014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A095451 n + 1).toNat

end

end A095449.P10625970521301543014

/-! ## A095449.P4672601098537837568

`A289207(A095451(n)+1)`
-/

namespace A095449.P4672601098537837568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A095451 n + 1).toNat

end

end A095449.P4672601098537837568

/-! ## A095449.P5712658882463374878

`A065423(2*A095451(n))`
-/

namespace A095449.P5712658882463374878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A095451 n).toNat

end

end A095449.P5712658882463374878

/-!
# A095451: a(n) = 29 written in base 14 - n.

The programs for A095451, there is no canonical definition to state claims against.
-/

/-! ## A095451.P1429584092810247768

`A103391(2*A095449(n))`
-/

namespace A095451.P1429584092810247768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (2 * A095449 n).toNat

end

end A095451.P1429584092810247768

/-! ## A095451.P9347804543685577735

`A328399(2*A095449(n))`
-/

namespace A095451.P9347804543685577735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A095449 n).toNat

end

end A095451.P9347804543685577735

/-! ## A095451.P15500111202653478519

`A020725(A095449(n))`
-/

namespace A095451.P15500111202653478519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095449 n).toNat

end

end A095451.P15500111202653478519

/-! ## A095451.P10736217802257060103

`A008619(2*A095449(n))`
-/

namespace A095451.P10736217802257060103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A095449 n).toNat

end

end A095451.P10736217802257060103

/-! ## A095451.P4232375125796683638

`A028242(2*A095449(n))`
-/

namespace A095451.P4232375125796683638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A095449 n).toNat

end

end A095451.P4232375125796683638

/-!
# A095453: a(n) = 30 written in base 15 - n.

The programs for A095453, there is no canonical definition to state claims against.
-/

/-! ## A095453.P9166605313303513457

`A174785(A006521(n+2))+A095455(n)`
-/

namespace A095453.P9166605313303513457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174785 (A006521 (n + 2)).toNat + A095455 n

end

end A095453.P9166605313303513457

/-! ## A095453.P5882152228460239211

`A023443(A095455(n))`
-/

namespace A095453.P5882152228460239211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095455 n).toNat

end

end A095453.P5882152228460239211

/-! ## A095453.P13859804475654926201

`A171950(A095455(n)+1)`
-/

namespace A095453.P13859804475654926201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A095455 n + 1).toNat

end

end A095453.P13859804475654926201

/-! ## A095453.P3645011905587116183

`A023445(A095455(n)+2)`
-/

namespace A095453.P3645011905587116183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A095455 n + 2).toNat

end

end A095453.P3645011905587116183

/-! ## A095453.P14731107276221144253

`A046667(2*A095455(n))`
-/

namespace A095453.P14731107276221144253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A095455 n).toNat

end

end A095453.P14731107276221144253

/-!
# A095455: a(n) = 31 written in base 15 - n.

The programs for A095455, there is no canonical definition to state claims against.
-/

/-! ## A095455.P11137056271771687481

`A328399(2*A095453(n))`
-/

namespace A095455.P11137056271771687481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A095453 n).toNat

end

end A095455.P11137056271771687481

/-! ## A095455.P10750527224617606228

`A020725(A095453(n))`
-/

namespace A095455.P10750527224617606228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095453 n).toNat

end

end A095455.P10750527224617606228

/-! ## A095455.P9738645509908182165

`A008619(2*A095453(n))`
-/

namespace A095455.P9738645509908182165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A095453 n).toNat

end

end A095455.P9738645509908182165

/-! ## A095455.P15935022123846773160

`A028242(2*A095453(n))`
-/

namespace A095455.P15935022123846773160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A095453 n).toNat

end

end A095455.P15935022123846773160

/-! ## A095455.P10100207065804238743

`A008620(3*A095453(n))`
-/

namespace A095455.P10100207065804238743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A095453 n).toNat

end

end A095455.P10100207065804238743

/-!
# A095457: a(n) = 32 written in base 10 - n.

The programs for A095457, there is no canonical definition to state claims against.
-/

/-! ## A095457.P1617868447329749565

`A095461(n+1)-A020639(A095449(2*n))`
-/

namespace A095457.P1617868447329749565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095461 (n + 1) - A020639 (A095449 (2 * n)).toNat

end

end A095457.P1617868447329749565

/-! ## A095457.P13698195775145648

`A095461(n+1)-A020639(A095477(2*n))`
-/

namespace A095457.P13698195775145648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095461 (n + 1) - A020639 (A095477 (2 * n)).toNat

end

end A095457.P13698195775145648

/-!
# A095458: 

The programs for A095458, there is no canonical definition to state claims against.
-/

/-! ## A095458.P2097295693679543365

`A095459(xor(15, n))`
-/

namespace A095458.P2097295693679543365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095459 (Nat.xor 15 n)

end

end A095458.P2097295693679543365

/-!
# A095459: a(n) = 33 written in base 16 - n.

The programs for A095459, there is no canonical definition to state claims against.
-/

/-! ## A095459.P15370910605754198196

`A324321(n+1)-A004601(A095509(n))`
-/

namespace A095459.P15370910605754198196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324321 (n + 1) - A004601 (A095509 n).toNat

end

end A095459.P15370910605754198196

/-! ## A095459.P8323951519111213205

`A324321(n+1)-A004601(A056412(n+1))`
-/

namespace A095459.P8323951519111213205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324321 (n + 1) - A004601 (A056412 (n + 1)).toNat

end

end A095459.P8323951519111213205

/-! ## A095459.P11356852377722237154

`A052382(3*n+4)+A038822(A056412(n+1))`
-/

namespace A095459.P11356852377722237154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (3 * n + 4) + A038822 (A056412 (n + 1)).toNat

end

end A095459.P11356852377722237154

/-!
# A095465: a(n) = 36 written in base 12 - n.

The programs for A095465, there is no canonical definition to state claims against.
-/

/-! ## A095465.P14860344562307875675

`A118830(A080872(n))+A095467(n)`
-/

namespace A095465.P14860344562307875675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A080872 n).toNat + A095467 n

end

end A095465.P14860344562307875675

/-! ## A095465.P17021607643333871069

`A095467(n)-A321791(A000217(n))`
-/

namespace A095465.P17021607643333871069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095467 n - A321791 (A000217 n).toNat

end

end A095465.P17021607643333871069

/-! ## A095465.P9240066230719369195

`A118830(A218324(n+1))+A095467(n)`
-/

namespace A095465.P9240066230719369195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A218324 (n + 1)).toNat + A095467 n

end

end A095465.P9240066230719369195

/-! ## A095465.P11382376353425864292

`A095467(n)+A087960(A036563(n+3))`
-/

namespace A095465.P11382376353425864292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095467 n + A087960 (A036563 (n + 3)).toNat

end

end A095465.P11382376353425864292

/-! ## A095465.P13831752231202362396

`A023443(A095467(n))`
-/

namespace A095465.P13831752231202362396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095467 n).toNat

end

end A095465.P13831752231202362396

/-!
# A095467: a(n) = 37 written in base 12 - n.

The programs for A095467, there is no canonical definition to state claims against.
-/

/-! ## A095467.P12255263795227066387

`(A095465(n)+1)%A095485(n)`
-/

namespace A095467.P12255263795227066387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095465 n + 1) (A095485 n)

end

end A095467.P12255263795227066387

/-! ## A095467.P2645536639570672043

`A321791(A000217(n))+A095465(n)`
-/

namespace A095467.P2645536639570672043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A000217 n).toNat + A095465 n

end

end A095467.P2645536639570672043

/-! ## A095467.P9466865920910483767

`A020725(A095465(n))`
-/

namespace A095467.P9466865920910483767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095465 n).toNat

end

end A095467.P9466865920910483767

/-! ## A095467.P14152053264021051032

`A023443(A095469(n))`
-/

namespace A095467.P14152053264021051032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095469 n).toNat

end

end A095467.P14152053264021051032

/-! ## A095467.P12755488348943334010

`A023444(A095469(n)+1)`
-/

namespace A095467.P12755488348943334010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A095469 n + 1).toNat

end

end A095467.P12755488348943334010

/-!
# A095468: 

The programs for A095468, there is no canonical definition to state claims against.
-/

/-! ## A095468.P10132954226036003229

`A095469(11*A015745(n)-n)`
-/

namespace A095468.P10132954226036003229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095469 (11 * A015745 n - (n : ℤ)).toNat

end

end A095468.P10132954226036003229

/-!
# A095469: a(n) = 38 written in base 12 - n.

The programs for A095469, there is no canonical definition to state claims against.
-/

/-! ## A095469.P17208390851466662984

`A020725(A095467(n))`
-/

namespace A095469.P17208390851466662984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095467 n).toNat

end

end A095469.P17208390851466662984

/-! ## A095469.P2613970999910559984

`A004151(A095467(n)+1)`
-/

namespace A095469.P2613970999910559984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A095467 n + 1).toNat

end

end A095469.P2613970999910559984

/-! ## A095469.P4451272374965364014

`A020725(A095465(n)+1)`
-/

namespace A095469.P4451272374965364014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095465 n + 1).toNat

end

end A095469.P4451272374965364014

/-! ## A095469.P15095371191618906743

`A028310(A095467(n)+1)`
-/

namespace A095469.P15095371191618906743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095467 n + 1).toNat

end

end A095469.P15095371191618906743

/-! ## A095469.P2012828504852730378

`A095467(A039723(n))+1`
-/

namespace A095469.P2012828504852730378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095467 (A039723 n).toNat + 1

end

end A095469.P2012828504852730378

/-!
# A095471: a(n) = 39 written in base 13 - n.

The programs for A095471, there is no canonical definition to state claims against.
-/

/-! ## A095471.P5199124971902027810

`A095473(n)-A095345(A095443(n))`
-/

namespace A095471.P5199124971902027810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095473 n - A095345 (A095443 n).toNat

end

end A095471.P5199124971902027810

/-! ## A095471.P442715248740764119

`A095473(n)-A325789(A325786(n+1))`
-/

namespace A095471.P442715248740764119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095473 n - A325789 (A325786 (n + 1)).toNat

end

end A095471.P442715248740764119

/-! ## A095471.P202221755792642277

`A095473(n)-A095345(A136220(n+2))`
-/

namespace A095471.P202221755792642277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095473 n - A095345 (A136220 (n + 2)).toNat

end

end A095471.P202221755792642277

/-!
# A095473: a(n) = 40 written in base 13 - n.

The programs for A095473, there is no canonical definition to state claims against.
-/

/-! ## A095473.P9741235965375456101

`A134824(A269143(n+1))+A095475(n)`
-/

namespace A095473.P9741235965375456101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A269143 (n + 1)).toNat + A095475 n

end

end A095473.P9741235965375456101

/-! ## A095473.P17986339120314107487

`A023443(A095475(n))`
-/

namespace A095473.P17986339120314107487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095475 n).toNat

end

end A095473.P17986339120314107487

/-! ## A095473.P10443867878621868574

`A171950(A095475(n)+1)`
-/

namespace A095473.P10443867878621868574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A095475 n + 1).toNat

end

end A095473.P10443867878621868574

/-! ## A095473.P1344472266840641756

`A023445(A095475(n)+2)`
-/

namespace A095473.P1344472266840641756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A095475 n + 2).toNat

end

end A095473.P1344472266840641756

/-! ## A095473.P9816743776786383710

`A046667(2*A095475(n))`
-/

namespace A095473.P9816743776786383710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A095475 n).toNat

end

end A095473.P9816743776786383710

/-!
# A095475: a(n) = 41 written in base 13 - n.

The programs for A095475, there is no canonical definition to state claims against.
-/

/-! ## A095475.P335683825139638077

`A095473(n)%A095469(n)+1`
-/

namespace A095475.P335683825139638077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095473 n) (A095469 n) + 1

end

end A095475.P335683825139638077

/-! ## A095475.P11412285258512922698

`(A095473(n)+1)%A095491(n)`
-/

namespace A095475.P11412285258512922698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095473 n + 1) (A095491 n)

end

end A095475.P11412285258512922698

/-! ## A095475.P9885320811773004405

`A253572(A000217(n)+1)+A095473(n)`
-/

namespace A095475.P9885320811773004405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (A000217 n + 1).toNat + A095473 n

end

end A095475.P9885320811773004405

/-! ## A095475.P17663147685214695796

`A020725(A095473(n))`
-/

namespace A095475.P17663147685214695796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095473 n).toNat

end

end A095475.P17663147685214695796

/-! ## A095475.P17524206836261638881

`A028310(A095473(n)+1)`
-/

namespace A095475.P17524206836261638881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095473 n + 1).toNat

end

end A095475.P17524206836261638881

/-!
# A095477: a(n) = 42 written in base 14 - n.

The programs for A095477, there is no canonical definition to state claims against.
-/

/-! ## A095477.P11709149539673061549

`A095481(n)-A043535(A095443(n))`
-/

namespace A095477.P11709149539673061549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095481 n - A043535 (A095443 n).toNat

end

end A095477.P11709149539673061549

/-!
# A095479: a(n) = 43 written in base 10 - n.

The programs for A095479, there is no canonical definition to state claims against.
-/

/-! ## A095479.P3187687847928286592

`A004442(A095477(n+4))`
-/

namespace A095479.P3187687847928286592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A095477 (n + 4)).toNat

end

end A095479.P3187687847928286592

/-!
# A095481: a(n) = 44 written in base 14 - n.

The programs for A095481, there is no canonical definition to state claims against.
-/

/-! ## A095481.P6992575022617908598

`A095477(n)+A043535(A095443(n))`
-/

namespace A095481.P6992575022617908598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095477 n + A043535 (A095443 n).toNat

end

end A095481.P6992575022617908598

/-!
# A095485: a(n) = 46 written in base 11 - n.

The programs for A095485, there is no canonical definition to state claims against.
-/

/-! ## A095485.P5969755710387279312

`(A095487(n)-1)%A095501(n)`
-/

namespace A095485.P5969755710387279312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095487 n - 1) (A095501 n)

end

end A095485.P5969755710387279312

/-! ## A095485.P8355571287016702662

`A095487(A002473(n+1)-1)-1`
-/

namespace A095485.P8355571287016702662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095487 (A002473 (n + 1) - 1).toNat - 1

end

end A095485.P8355571287016702662

/-! ## A095485.P9645719024635159492

`A095487(A285815(n+1)-1)-1`
-/

namespace A095485.P9645719024635159492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095487 (A285815 (n + 1) - 1).toNat - 1

end

end A095485.P9645719024635159492

/-! ## A095485.P11826342644002884961

`A260196(A095491(n))+A095487(n)`
-/

namespace A095485.P11826342644002884961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095491 n).toNat + A095487 n

end

end A095485.P11826342644002884961

/-! ## A095485.P749968149631286650

`A260196(A095493(n))+A095487(n)`
-/

namespace A095485.P749968149631286650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095493 n).toNat + A095487 n

end

end A095485.P749968149631286650

/-!
# A095487: a(n) = 47 written in base 11 - n.

The programs for A095487, there is no canonical definition to state claims against.
-/

/-! ## A095487.P16278227946495558822

`A095485(n)%A095479(n)+1`
-/

namespace A095487.P16278227946495558822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095485 n) (A095479 n) + 1

end

end A095487.P16278227946495558822

/-! ## A095487.P17625690187440275827

`(A095485(n)+1)%A095501(n)`
-/

namespace A095487.P17625690187440275827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095485 n + 1) (A095501 n)

end

end A095487.P17625690187440275827

/-! ## A095487.P17850370735898590633

`A095485(lt[A054081(n+1), 8])+1`
-/

namespace A095487.P17850370735898590633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054081 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095485 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A095487.P17850370735898590633

/-! ## A095487.P17277961277946556954

`A095485(n)+gcd(A288033(n+1)+1, n+2)`
-/

namespace A095487.P17277961277946556954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095485 n + (Int.gcd (A288033 (n + 1) + 1) (n + 2 : ℤ) : ℤ)

end

end A095487.P17277961277946556954

/-! ## A095487.P15769929437903465706

`A138618(A125053(n))+A095485(n)`
-/

namespace A095487.P15769929437903465706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (A125053 n).toNat + A095485 n

end

end A095487.P15769929437903465706

/-!
# A095491: a(n) = 49 written in base 12 - n.

The programs for A095491, there is no canonical definition to state claims against.
-/

/-! ## A095491.P14424679182638304444

`A002024(C(A095493(n), 2))`
-/

namespace A095491.P14424679182638304444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A095493 n).toNat 2)

end

end A095491.P14424679182638304444

/-! ## A095491.P344203236740616887

`A003056(C(A095493(n), 2))`
-/

namespace A095491.P344203236740616887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A095493 n).toNat 2)

end

end A095491.P344203236740616887

/-! ## A095491.P6547975016888543926

`A095493(n)+A057428(A000302(n))`
-/

namespace A095491.P6547975016888543926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095493 n + A057428 (A000302 n).toNat

end

end A095491.P6547975016888543926

/-!
# A095493: a(n) = 50 written in base 12 - n.

The programs for A095493, there is no canonical definition to state claims against.
-/

/-! ## A095493.P16734546748096975439

`A233583(A095495(n))`
-/

namespace A095493.P16734546748096975439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095495 n).toNat

end

end A095493.P16734546748096975439

/-! ## A095493.P16876411415155748750

`A095495(A237345(n))-1`
-/

namespace A095493.P16876411415155748750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095495 (A237345 n).toNat - 1

end

end A095493.P16876411415155748750

/-! ## A095493.P14549859161274006356

`A095495(n)-A098786(n)!`
-/

namespace A095493.P14549859161274006356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095495 n - (Nat.factorial (A098786 n).toNat : ℤ)

end

end A095493.P14549859161274006356

/-! ## A095493.P1942340344313849271

`A095495(n)+A057428(A000244(n))`
-/

namespace A095493.P1942340344313849271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095495 n + A057428 (A000244 n).toNat

end

end A095493.P1942340344313849271

/-! ## A095493.P11263741154049741582

`A095495(n)+A057428(A095487(n))`
-/

namespace A095493.P11263741154049741582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095495 n + A057428 (A095487 n).toNat

end

end A095493.P11263741154049741582

/-!
# A095495: a(n) = 51 written in base 12 - n.

The programs for A095495, there is no canonical definition to state claims against.
-/

/-! ## A095495.P6759489571083300851

`A095493(n)+∏{e}[A130315(n+1)!, #]`
-/

namespace A095495.P6759489571083300851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A130315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095493 n + ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A095495.P6759489571083300851

/-! ## A095495.P14196053116680463324

`A095493(A237345(n))+1`
-/

namespace A095495.P14196053116680463324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095493 (A237345 n).toNat + 1

end

end A095495.P14196053116680463324

/-! ## A095495.P8836485584449894764

`A233583(A095493(n)+2)`
-/

namespace A095495.P8836485584449894764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A095493 n + 2).toNat

end

end A095495.P8836485584449894764

/-! ## A095495.P5167702891231594651

`A095493(n)+A098786(n)!`
-/

namespace A095495.P5167702891231594651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095493 n + (Nat.factorial (A098786 n).toNat : ℤ)

end

end A095495.P5167702891231594651

/-! ## A095495.P11690812264607469554

`A228900(∑[n])+A095493(n)`
-/

namespace A095495.P11690812264607469554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228900 (∑ j ∈ Finset.range (n + 1), f1 j) + A095493 n

end

end A095495.P11690812264607469554

/-!
# A095497: a(n) = 52 written in base 13 - n.

The programs for A095497, there is no canonical definition to state claims against.
-/

/-! ## A095497.P10355596969528841490

`(A095499(n)-1)%A095491(n)`
-/

namespace A095497.P10355596969528841490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095499 n - 1) (A095491 n)

end

end A095497.P10355596969528841490

/-! ## A095497.P16548536500877076766

`A095499(n)%A095493(n)-1`
-/

namespace A095497.P16548536500877076766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095499 n) (A095493 n) - 1

end

end A095497.P16548536500877076766

/-! ## A095497.P14203848614628182850

`A260196(A095505(n))+A095499(n)`
-/

namespace A095497.P14203848614628182850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095505 n).toNat + A095499 n

end

end A095497.P14203848614628182850

/-! ## A095497.P6380794190891482222

`A260196(A095507(n))+A095499(n)`
-/

namespace A095497.P6380794190891482222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095507 n).toNat + A095499 n

end

end A095497.P6380794190891482222

/-! ## A095497.P13135468305702329346

`A260196(A095537(n))+A095499(n)`
-/

namespace A095497.P13135468305702329346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A095537 n).toNat + A095499 n

end

end A095497.P13135468305702329346

/-!
# A095499: a(n) = 53 written in base 13 - n.

The programs for A095499, there is no canonical definition to state claims against.
-/

/-! ## A095499.P17589924121310175477

`(A095497(n)+1)%A095493(n)`
-/

namespace A095499.P17589924121310175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095497 n + 1) (A095493 n)

end

end A095499.P17589924121310175477

/-! ## A095499.P278730725609969637

`A095497(n)%A095491(n)+1`
-/

namespace A095499.P278730725609969637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095497 n) (A095491 n) + 1

end

end A095499.P278730725609969637

/-! ## A095499.P8563948817516244652

`A095497(n)-A260196(A095507(n))`
-/

namespace A095499.P8563948817516244652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095497 n - A260196 (A095507 n).toNat

end

end A095499.P8563948817516244652

/-! ## A095499.P14847402026801695414

`A020725(A095497(n))`
-/

namespace A095499.P14847402026801695414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095497 n).toNat

end

end A095499.P14847402026801695414

/-! ## A095499.P10368859864264504855

`A008619(2*A095497(n))`
-/

namespace A095499.P10368859864264504855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A095497 n).toNat

end

end A095499.P10368859864264504855

