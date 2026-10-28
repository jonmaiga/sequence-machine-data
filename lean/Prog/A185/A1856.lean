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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A185600: Numbers not of the form floor(n^(3/2) - n^(1/2)); complement of A185599.

The programs for A185600, the canonical program `A185600.P3211356026056706103` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185600 has offset 1).

The definition of A185600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185600.P3211356026056706103

`comp[floor(n*sqrt(n+1)-(n+1))]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185600

/-- `comp[floor(n*sqrt(n+1)-(n+1))]` -/
def P3211356026056706103.Spec : Prop :=
  ∀ n, (P3211356026056706103.a n : ℤ) = A185600 (n + 1)

theorem P3211356026056706103.correct : P3211356026056706103.Spec := by
  intro n
  simp only [A185600, Nat.add_sub_cancel]

end A185600

/-! ## A185600.P7552681165136224980

`comp[A185599(n+3)-1]+1`
-/

namespace A185600.P7552681165136224980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185599 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185600.P7552681165136224980

namespace A185600

/-- `comp[A185599(n+3)-1]+1` -/
def P7552681165136224980.Spec : Prop :=
  ∀ n, (P7552681165136224980.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P5831282229270552784

`eq[1, Δ[A185598(n+1)]]`
-/

namespace A185600.P5831282229270552784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185600.P5831282229270552784

namespace A185600

/-- `eq[1, Δ[A185598(n+1)]]` -/
def P5831282229270552784.Spec : Prop :=
  ∀ n, (P5831282229270552784.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P6201983963282569457

`lt[A261699(Δ[A185598(n+1)]²), 2]`
-/

namespace A185600.P6201983963282569457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 ((f2 (n + 1) - f2 n) ^ 2).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A185600.P6201983963282569457

namespace A185600

/-- `lt[A261699(Δ[A185598(n+1)]²), 2]` -/
def P6201983963282569457.Spec : Prop :=
  ∀ n, (P6201983963282569457.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P1599742008578284897

`eq[1, A082360(A185598(n+2)-A185598(n+1))]`
-/

namespace A185600.P1599742008578284897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A185598 (n + 2) - A185598 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185600.P1599742008578284897

namespace A185600

/-- `eq[1, A082360(A185598(n+2)-A185598(n+1))]` -/
def P1599742008578284897.Spec : Prop :=
  ∀ n, (P1599742008578284897.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P6604775768130460248

`eq[1, A000720(A185598(n+2)-A185598(n+1)+1)]`
-/

namespace A185600.P6604775768130460248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A185598 (n + 2) - A185598 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185600.P6604775768130460248

namespace A185600

/-- `eq[1, A000720(A185598(n+2)-A185598(n+1)+1)]` -/
def P6604775768130460248.Spec : Prop :=
  ∀ n, (P6604775768130460248.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P10125349283980882309

`eq[1, A102849(A185598(n+2)-A185598(n+1)+1)]`
-/

namespace A185600.P10125349283980882309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102849 (A185598 (n + 2) - A185598 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185600.P10125349283980882309

namespace A185600

/-- `eq[1, A102849(A185598(n+2)-A185598(n+1)+1)]` -/
def P10125349283980882309.Spec : Prop :=
  ∀ n, (P10125349283980882309.a n : ℤ) = A185600 (n + 1)

end A185600

/-! ## A185600.P18378862993140568047

`eq[4, A085383(A185598(n+2)-A185598(n+1)+1)]`
-/

namespace A185600.P18378862993140568047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (A185598 (n + 2) - A185598 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185600.P18378862993140568047

namespace A185600

/-- `eq[4, A085383(A185598(n+2)-A185598(n+1)+1)]` -/
def P18378862993140568047.Spec : Prop :=
  ∀ n, (P18378862993140568047.a n : ℤ) = A185600 (n + 1)

end A185600

/-!
# A185601: a(n) = floor(n^(3/2))-floor(n^(1/2))-n; complement of A185602.

The programs for A185601, the canonical program `A185601.P5557981442443285129` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185601 has offset 3).

The definition of A185601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+3)^(3/2))-floor((n+3)^(1/2))-(n+3)` (program `A185601.P5557981442443285129`, by `A185601.P5557981442443285129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185601.P5557981442443285129

`floor((n+3)^(3/2))-floor((n+3)^(1/2))-(n+3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185601

/-- `floor((n+3)^(3/2))-floor((n+3)^(1/2))-(n+3)` -/
def P5557981442443285129.Spec : Prop :=
  ∀ n, P5557981442443285129.a n = A185601 (n + 3)

theorem P5557981442443285129.correct : P5557981442443285129.Spec := by
  intro n
  simp only [A185601, Nat.add_sub_cancel]

end A185601

/-! ## A185601.P5941181265810461616

`eq[2, Δ[A185596(n+1)]]`
-/

namespace A185601.P5941181265810461616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185601.P5941181265810461616

namespace A185601

/-- `eq[2, Δ[A185596(n+1)]]` -/
def P5941181265810461616.Spec : Prop :=
  ∀ n, (P5941181265810461616.a n : ℤ) = A185601 (n + 3)

end A185601

/-! ## A185601.P16375199458756887940

`eq[2, A185596(n+2)-A185596(n+1)]`
-/

namespace A185601.P16375199458756887940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (n + 2) - A185596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185601.P16375199458756887940

namespace A185601

/-- `eq[2, A185596(n+2)-A185596(n+1)]` -/
def P16375199458756887940.Spec : Prop :=
  ∀ n, (P16375199458756887940.a n : ℤ) = A185601 (n + 3)

end A185601

/-! ## A185601.P7788686553903215631

`ceil(log2(A091233(n+3)))`
-/

namespace A185601.P7788686553903215631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A091233 (n + 3) : ℝ)⌉

end

end A185601.P7788686553903215631

namespace A185601

/-- `ceil(log2(A091233(n+3)))` -/
def P7788686553903215631.Spec : Prop :=
  ∀ n, P7788686553903215631.a n = A185601 (n + 3)

end A185601

/-! ## A185601.P17893670229618200006

`A352241(A095114(n+2))`
-/

namespace A185601.P17893670229618200006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A095114 (n + 2)).toNat

end

end A185601.P17893670229618200006

namespace A185601

/-- `A352241(A095114(n+2))` -/
def P17893670229618200006.Spec : Prop :=
  ∀ n, P17893670229618200006.a n = A185601 (n + 3)

end A185601

/-!
# A185602: Numbers not of the form floor(n^(3/2))-floor(n^(1/2))-n; complement of A185601.

The programs for A185602, the canonical program `A185602.P5785848709718018963` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185602 has offset 1).

The definition of A185602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185602.P5785848709718018963

`comp[A185595(A028310(n))-n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185602

/-- `comp[A185595(A028310(n))-n]` -/
def P5785848709718018963.Spec : Prop :=
  ∀ n, (P5785848709718018963.a n : ℤ) = A185602 (n + 1)

theorem P5785848709718018963.correct : P5785848709718018963.Spec := by
  intro n
  simp only [A185602, Nat.add_sub_cancel]

end A185602

/-! ## A185602.P4416523757399781707

`comp[A349993(n)-A003059(n+1)]`
-/

namespace A185602.P4416523757399781707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349993 n - A003059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A185602.P4416523757399781707

namespace A185602

/-- `comp[A349993(n)-A003059(n+1)]` -/
def P4416523757399781707.Spec : Prop :=
  ∀ n, (P4416523757399781707.a n : ℤ) = A185602 (n + 1)

end A185602

/-! ## A185602.P701601065212405607

`eq[char[A185601(n+3)], A000007(n)]`
-/

namespace A185602.P701601065212405607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185601 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185602.P701601065212405607

namespace A185602

/-- `eq[char[A185601(n+3)], A000007(n)]` -/
def P701601065212405607.Spec : Prop :=
  ∀ n, (P701601065212405607.a n : ℤ) = A185602 (n + 1)

end A185602

/-! ## A185602.P1236458885089271566

`eq[Δ[A185596(n+1)], A054977(n)]`
-/

namespace A185602.P1236458885089271566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A185602.P1236458885089271566

namespace A185602

/-- `eq[Δ[A185596(n+1)], A054977(n)]` -/
def P1236458885089271566.Spec : Prop :=
  ∀ n, (P1236458885089271566.a n : ℤ) = A185602 (n + 1)

end A185602

/-! ## A185602.P7426514132181019334

`eq[Δ[A185596(n+1)], A057427(n)]`
-/

namespace A185602.P7426514132181019334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A185602.P7426514132181019334

namespace A185602

/-- `eq[Δ[A185596(n+1)], A057427(n)]` -/
def P7426514132181019334.Spec : Prop :=
  ∀ n, (P7426514132181019334.a n : ℤ) = A185602 (n + 1)

end A185602

/-! ## A185602.P14314966401764187935

`eq[Δ[-A185596(n+1)], A057428(n)]`
-/

namespace A185602.P14314966401764187935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A185596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A185602.P14314966401764187935

namespace A185602

/-- `eq[Δ[-A185596(n+1)], A057428(n)]` -/
def P14314966401764187935.Spec : Prop :=
  ∀ n, (P14314966401764187935.a n : ℤ) = A185602 (n + 1)

end A185602

/-!
# A185603: a(n) = floor(floor(n^(5/2))^(1/2)); complement of A185604.

The programs for A185603, the canonical program `A185603.P3326580630091113243` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185603 has offset 1).

The definition of A185603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(floor((n+1)^(5/2))^(1/2))` (program `A185603.P3326580630091113243`, by `A185603.P3326580630091113243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185603.P3326580630091113243

`floor(floor((n+1)^(5/2))^(1/2))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185603

/-- `floor(floor((n+1)^(5/2))^(1/2))` -/
def P3326580630091113243.Spec : Prop :=
  ∀ n, P3326580630091113243.a n = A185603 (n + 1)

theorem P3326580630091113243.correct : P3326580630091113243.Spec := by
  intro n
  simp only [A185603, Nat.add_sub_cancel]

end A185603

/-! ## A185603.P17007803606320494521

`floor((n+1)*sqrt(sqrt(n+1)))%A158316(n+1)`
-/

namespace A185603.P17007803606320494521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋ (A158316 (n + 1))

end

end A185603.P17007803606320494521

namespace A185603

/-- `floor((n+1)*sqrt(sqrt(n+1)))%A158316(n+1)` -/
def P17007803606320494521.Spec : Prop :=
  ∀ n, P17007803606320494521.a n = A185603 (n + 1)

end A185603

/-! ## A185603.P15069580198228638655

`A028310(floor(sqrt(A155013(n+1))))`
-/

namespace A185603.P15069580198228638655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.sqrt (A155013 (n + 1))).toNat

end

end A185603.P15069580198228638655

namespace A185603

/-- `A028310(floor(sqrt(A155013(n+1))))` -/
def P15069580198228638655.Spec : Prop :=
  ∀ n, P15069580198228638655.a n = A185603 (n + 1)

end A185603

/-! ## A185603.P14145463345250620518

`A080782(A080782(floor((n+1)*root(n+1, 4))))`
-/

namespace A185603.P14145463345250620518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080782 ⌊(n + 1 : ℝ) * (n + 1 : ℝ) ^ (1 / (4 : ℝ))⌋.toNat).toNat

end

end A185603.P14145463345250620518

namespace A185603

/-- `A080782(A080782(floor((n+1)*root(n+1, 4))))` -/
def P14145463345250620518.Spec : Prop :=
  ∀ n, P14145463345250620518.a n = A185603 (n + 1)

end A185603

/-! ## A185603.P8031567385018048503

`A026741(2*floor((n+1)*sqrt(sqrt(n+1))))`
-/

namespace A185603.P8031567385018048503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * ⌊(n + 1 : ℝ) * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋).toNat

end

end A185603.P8031567385018048503

namespace A185603

/-- `A026741(2*floor((n+1)*sqrt(sqrt(n+1))))` -/
def P8031567385018048503.Spec : Prop :=
  ∀ n, P8031567385018048503.a n = A185603 (n + 1)

end A185603

/-! ## A185603.P14999038694100790859

`Δ[A020715(∑[floor(n^(5/4))])]`
-/

namespace A185603.P14999038694100790859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185603.P14999038694100790859

namespace A185603

/-- `Δ[A020715(∑[floor(n^(5/4))])]` -/
def P14999038694100790859.Spec : Prop :=
  ∀ n, P14999038694100790859.a n = A185603 (n + 1)

end A185603

/-!
# A185604: Complement of A185603.

The programs for A185604, the canonical program `A185604.P4230305500036522261` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185604 has offset 1).

The definition of A185604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185604.P4230305500036522261

`comp[floor(n^(5/4))]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185604

/-- `comp[floor(n^(5/4))]` -/
def P4230305500036522261.Spec : Prop :=
  ∀ n, (P4230305500036522261.a n : ℤ) = A185604 (n + 1)

theorem P4230305500036522261.correct : P4230305500036522261.Spec := by
  intro n
  simp only [A185604, Nat.add_sub_cancel]

end A185604

/-! ## A185604.P12707187025373975371

`comp[A185603(n+1)-1]+1`
-/

namespace A185604.P12707187025373975371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185603 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185604.P12707187025373975371

namespace A185604

/-- `comp[A185603(n+1)-1]+1` -/
def P12707187025373975371.Spec : Prop :=
  ∀ n, (P12707187025373975371.a n : ℤ) = A185604 (n + 1)

end A185604

/-! ## A185604.P3546076466765053109

`eq[0, char[floor(n^(5/4))]]`
-/

namespace A185604.P3546076466765053109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185604.P3546076466765053109

namespace A185604

/-- `eq[0, char[floor(n^(5/4))]]` -/
def P3546076466765053109.Spec : Prop :=
  ∀ n, (P3546076466765053109.a n : ℤ) = A185604 (n + 1)

end A185604

/-! ## A185604.P4170462513475644799

`lt[char[A185603(n+1)], A057427(n)]`
-/

namespace A185604.P4170462513475644799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185603 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A185604.P4170462513475644799

namespace A185604

/-- `lt[char[A185603(n+1)], A057427(n)]` -/
def P4170462513475644799.Spec : Prop :=
  ∀ n, (P4170462513475644799.a n : ℤ) = A185604 (n + 1)

end A185604

/-! ## A185604.P6423639270355458575

`A316841(A034856(3*n+5))+round(1/acot(n))`
-/

namespace A185604.P6423639270355458575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (A034856 (3 * n + 5)).toNat + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A185604.P6423639270355458575

namespace A185604

/-- `A316841(A034856(3*n+5))+round(1/acot(n))` -/
def P6423639270355458575.Spec : Prop :=
  ∀ n, P6423639270355458575.a n = A185604 (n + 1)

end A185604

/-!
# A185605: Number of (n+1)X2 0..3 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185605, there is no canonical definition to state claims against.
-/

/-! ## A185605.P8607549338002855868

`A185609(∑[n]+1)`
-/

namespace A185605.P8607549338002855868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185605.P8607549338002855868

/-! ## A185605.P353167543734957390

`lcm(2, A185609(A000124(n)))`
-/

namespace A185605.P353167543734957390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185609 (A000124 n).toNat)

end

end A185605.P353167543734957390

/-! ## A185605.P5858314382645625882

`record[A010054(n)*A185609(n+1)]`
-/

namespace A185605.P5858314382645625882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185605.P5858314382645625882

/-! ## A185605.P7663016942853919491

`record[A185609(n+1)/A022171(n)]`
-/

namespace A185605.P7663016942853919491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185609 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185605.P7663016942853919491

/-! ## A185605.P10792800921864657123

`record[gcd(A002262(n), A185609(n+1))]`
-/

namespace A185605.P10792800921864657123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185605.P10792800921864657123

/-!
# A185606: Number of (n+1)X3 0..3 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185606, there is no canonical definition to state claims against.
-/

/-! ## A185606.P15753775238948874612

`A185609(∑[n+1]+2)`
-/

namespace A185606.P15753775238948874612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185606.P15753775238948874612

/-! ## A185606.P14106440045001341310

`lcm(2, A185609(A089071(n+3)))`
-/

namespace A185606.P14106440045001341310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185609 (A089071 (n + 3)).toNat)

end

end A185606.P14106440045001341310

/-! ## A185606.P17102280764309549798

`record[A010054(n)*A185609(n+2)]`
-/

namespace A185606.P17102280764309549798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185606.P17102280764309549798

/-! ## A185606.P14828341026555517703

`record[gcd(A002262(n), A185609(n+2))]`
-/

namespace A185606.P14828341026555517703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185609 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185606.P14828341026555517703

/-!
# A185607: Number of (n+1)X4 0..3 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185607, there is no canonical definition to state claims against.
-/

/-! ## A185607.P18399079350594080860

`A185609(∑[n+2]+4)`
-/

namespace A185607.P18399079350594080860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185609 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185607.P18399079350594080860

/-! ## A185607.P782087024927748169

`lcm(2, A185609(A167614(n+1)))`
-/

namespace A185607.P782087024927748169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185609 (A167614 (n + 1)).toNat)

end

end A185607.P782087024927748169

/-! ## A185607.P12911996532849466170

`A185609(A167614(n+1))+A025465(n)`
-/

namespace A185607.P12911996532849466170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185609 (A167614 (n + 1)).toNat + A025465 n

end

end A185607.P12911996532849466170

/-!
# A185608: Number of (n+1)X5 0..3 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185608, there is no canonical definition to state claims against.
-/

/-! ## A185608.P10726423298204692695

`A185609(∑[n+5]+2-n)`
-/

namespace A185608.P10726423298204692695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185609 (∑ j ∈ Finset.range (n + 1), f1 j + 2 - n)

end

end A185608.P10726423298204692695

/-!
# A185609: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185609, there is no canonical definition to state claims against.
-/

/-! ## A185609.P15697892885371822159

`A186786(C((n+1)/10^val(n+1, 10), ∏{e}[n+1, #]))`
-/

namespace A185609.P15697892885371822159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186786 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A185609.P15697892885371822159

/-! ## A185609.P1908357733048452791

`A186786(C((n+1)/10^val(n+1, 10), (n+1)/∏{p}[n+1, #]))`
-/

namespace A185609.P1908357733048452791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186786 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A185609.P1908357733048452791

/-! ## A185609.P12915678892254972506

`A186786(A024646(n+1))`
-/

namespace A185609.P12915678892254972506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186786 (A024646 (n + 1)).toNat

end

end A185609.P12915678892254972506

/-!
# A185610: Number of (n+1)X2 0..2 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185610, there is no canonical definition to state claims against.
-/

/-! ## A185610.P13851445018044732608

`A185614(∑[n]+1)`
-/

namespace A185610.P13851445018044732608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185614 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185610.P13851445018044732608

/-! ## A185610.P7220062265905988795

`A186871(∑[n]+1)`
-/

namespace A185610.P7220062265905988795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185610.P7220062265905988795

/-! ## A185610.P4402666393300162799

`∑{digits}[n, A185614(A000124(#))]`
-/

namespace A185610.P4402666393300162799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185614 (A000124 x).toNat).sum

end

end A185610.P4402666393300162799

/-! ## A185610.P3798650082092677640

`lcm((-1)^n, A185614(A000124(n)))`
-/

namespace A185610.P3798650082092677640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A185614 (A000124 n).toNat)

end

end A185610.P3798650082092677640

/-! ## A185610.P14008034672634644065

`record[A010054(n)*A185614(n+1)]`
-/

namespace A185610.P14008034672634644065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185610.P14008034672634644065

/-!
# A185611: Number of (n+1)X3 0..2 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185611, there is no canonical definition to state claims against.
-/

/-! ## A185611.P12095112760934060275

`A185614(∑[n+1]+2)`
-/

namespace A185611.P12095112760934060275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185614 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185611.P12095112760934060275

/-! ## A185611.P9389762585215301259

`record[A010054(n)*A185614(n+2)]`
-/

namespace A185611.P9389762585215301259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185611.P9389762585215301259

/-! ## A185611.P4228754818597698239

`record[A185614(n+3)/A185628(n)]`
-/

namespace A185611.P4228754818597698239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185614 (n + 3) : ℚ) / (A185628 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185611.P4228754818597698239

/-!
# A185612: Number of (n+1)X4 0..2 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185612, there is no canonical definition to state claims against.
-/

/-! ## A185612.P15757448086724504506

`A185614(∑[n+2]+4)`
-/

namespace A185612.P15757448086724504506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185614 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185612.P15757448086724504506

/-! ## A185612.P11900553350990628252

`record[A185614(A067611(n+1))]`
-/

namespace A185612.P11900553350990628252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185614 (A067611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185612.P11900553350990628252

/-! ## A185612.P571532736501738168

`or(1, A185614(A167614(n+1)))`
-/

namespace A185612.P571532736501738168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185614 (A167614 (n + 1)).toNat)

end

end A185612.P571532736501738168

/-!
# A185613: Number of (n+1)X5 0..2 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185613, there is no canonical definition to state claims against.
-/

/-! ## A185613.P17663920129801349769

`A185614(A020752(n+1))`
-/

namespace A185613.P17663920129801349769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185614 (A020752 (n + 1)).toNat

end

end A185613.P17663920129801349769

/-!
# A185614: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185614, there is no canonical definition to state claims against.
-/

/-! ## A185614.P14705897208973937902

`A186871((n+1)^gcd(7, n))`
-/

namespace A185614.P14705897208973937902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 ((n + 1) ^ Nat.gcd 7 n)

end

end A185614.P14705897208973937902

/-! ## A185614.P7051136066750864251

`A186871(or(n+1, 5*C(n, 6)))`
-/

namespace A185614.P7051136066750864251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 (Nat.lor (n + 1) (5 * Nat.choose n 6))

end

end A185614.P7051136066750864251

/-! ## A185614.P16049667550773491201

`A186871((n+1)^∑{e}[∑{e}[n+1, #]+1, #])`
-/

namespace A185614.P16049667550773491201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186871 ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A185614.P16049667550773491201

/-!
# A185615: Numbers k that divide A000201(k)^m for some integer m > 0, where A000201 is the lower Wythoff sequence.

The programs for A185615, there is no canonical definition to state claims against.
-/

/-! ## A185615.P17304307756829616833

`ceil(A185616(n+1)/ϕ)`
-/

namespace A185615.P17304307756829616833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185616 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A185615.P17304307756829616833

/-! ## A185615.P8633580890077445209

`floor(A185616(C(n+1, n))/ϕ)+1`
-/

namespace A185615.P8633580890077445209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185616 (Nat.choose (n + 1) n) : ℝ) / Real.goldenRatio⌋ + 1

end

end A185615.P8633580890077445209

/-! ## A185615.P10571676030345037635

`floor(A185616(-xor(n, -1))/ϕ)+1`
-/

namespace A185615.P10571676030345037635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185616 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) / Real.goldenRatio⌋ + 1

end

end A185615.P10571676030345037635

/-! ## A185615.P3997529602190659041

`floor(A185616(Δ[n²]-n)/ϕ)+1`
-/

namespace A185615.P3997529602190659041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185616 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) / Real.goldenRatio⌋ + 1

end

end A185615.P3997529602190659041

/-! ## A185615.P1815659894544427720

`A046643(A014574(n+1)+1)+floor(A185616(n+1)/ϕ)`
-/

namespace A185615.P1815659894544427720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A014574 (n + 1) + 1).toNat + ⌊(A185616 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A185615.P1815659894544427720

/-! ## A185615.P9070635357795247714

`A000027(floor(A185616(n+1)/ϕ)+1)`
-/

namespace A185615.P9070635357795247714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A185616 (n + 1) : ℝ) / Real.goldenRatio⌋ + 1).toNat

end

end A185615.P9070635357795247714

/-!
# A185616: Lower Wythoff values for sequence A185615(n).

The programs for A185616, there is no canonical definition to state claims against.
-/

/-! ## A185616.P17650137653530869463

`floor(ϕ*A185615(n+1))`
-/

namespace A185616.P17650137653530869463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A185615 (n + 1) : ℝ)⌋

end

end A185616.P17650137653530869463

/-! ## A185616.P7332356318581117112

`ceil(ϕ*A185615(n+1)-A007318(∑[n]))`
-/

namespace A185616.P7332356318581117112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A185615 (n + 1) : ℝ) - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A185616.P7332356318581117112

/-! ## A185616.P11555326767485349070

`ceil(ϕ*A185615(n+1)-A000108(gcd(n, n+1)))`
-/

namespace A185616.P11555326767485349070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A185615 (n + 1) : ℝ) - (A000108 (Nat.gcd n (n + 1)) : ℝ)⌉

end

end A185616.P11555326767485349070

/-! ## A185616.P11643680771527144304

`ceil(ϕ*A185615(n+1)-A014963(A174150(n)))`
-/

namespace A185616.P11643680771527144304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A185615 (n + 1) : ℝ) - (A014963 (A174150 n).toNat : ℝ)⌉

end

end A185616.P11643680771527144304

/-!
# A185618: G.f.: A(x) = 1/(1 - x/((1-x) - x/((1-x)^2 - x/((1-x)^3 -...)))), a continued fraction.

The programs for A185618, there is no canonical definition to state claims against.
-/

/-! ## A185618.P7818312213864749961

`A065033(A064856(n)+A001764(n))`
-/

namespace A185618.P7818312213864749961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A064856 n + A001764 n).toNat

end

end A185618.P7818312213864749961

/-! ## A185618.P16799599104756909527

`A110654(A064856(n)+A001764(n))`
-/

namespace A185618.P16799599104756909527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A064856 n + A001764 n).toNat

end

end A185618.P16799599104756909527

/-!
# A185619: G.f.: exp( Sum_{n>=1} (x^n/n)*Sum_{k=0..n} C(3n,3k)*x^k ).

The programs for A185619, there is no canonical definition to state claims against.
-/

/-! ## A185619.P6656885779515082349

`A317141(A224799(n))`
-/

namespace A185619.P6656885779515082349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A224799 n).toNat

end

end A185619.P6656885779515082349

/-! ## A185619.P10137749370095027772

`A061395(A364981(n)+A000357(n))`
-/

namespace A185619.P10137749370095027772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A364981 n + A000357 n).toNat

end

end A185619.P10137749370095027772

/-!
# A185620: Triangular matrix T that satisfies: T^3 - T^2 + I = SHIFT_LEFT(T), as read by rows.

The programs for A185620, there is no canonical definition to state claims against.
-/

/-! ## A185620.P5056886237007630706

`A327672(A064094(n)^A091258(n+1))`
-/

namespace A185620.P5056886237007630706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (SequenceMachineLib.roundAway ((A064094 n : ℚ) ^ (A091258 (n + 1) : ℤ))).toNat

end

end A185620.P5056886237007630706

/-! ## A185620.P17931703898617358155

`A187345(A256268(n)^A318442(n+1))`
-/

namespace A185620.P17931703898617358155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187345 (SequenceMachineLib.roundAway ((A256268 n : ℚ) ^ (A318442 (n + 1) : ℤ))).toNat

end

end A185620.P17931703898617358155

/-! ## A185620.P15803714024723533466

`A327672(A064094(n)%A153719(n+2))`
-/

namespace A185620.P15803714024723533466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 (Int.tmod (A064094 n) (A153719 (n + 2))).toNat

end

end A185620.P15803714024723533466

/-!
# A185621: Column 1 of triangular matrix T = A185620, which satisfies: T^3 - T^2 + I = SHIFT_LEFT(T).

The programs for A185621, there is no canonical definition to state claims against.
-/

/-! ## A185621.P10278151011778986967

`A185629(n)-A185625(n)*A328672(n)`
-/

namespace A185621.P10278151011778986967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185629 n - A185625 n * A328672 n

end

end A185621.P10278151011778986967

/-! ## A185621.P17498908943359097657

`A185629(n)-A185625(n)%A185631(n)`
-/

namespace A185621.P17498908943359097657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185629 n - Int.tmod (A185625 n) (A185631 n)

end

end A185621.P17498908943359097657

/-! ## A185621.P17976210123942880919

`A185629(n)-A001221(A000961(n+1))*A185625(n)`
-/

namespace A185621.P17976210123942880919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185629 n - A001221 (A000961 (n + 1)).toNat * A185625 n

end

end A185621.P17976210123942880919

/-! ## A185621.P12156458812701236320

`A185620(∑[n+1]+1)`
-/

namespace A185621.P12156458812701236320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185621.P12156458812701236320

/-! ## A185621.P11731587142137638268

`A061827(n+1)*A185620(A000124(n+1))`
-/

namespace A185621.P11731587142137638268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061827 (n + 1) * A185620 (A000124 (n + 1)).toNat

end

end A185621.P11731587142137638268

/-!
# A185622: Column 2 of triangular matrix T = A185620, which satisfies: T^3 - T^2 + I = SHIFT_LEFT(T).

The programs for A185622, there is no canonical definition to state claims against.
-/

/-! ## A185622.P17939644335704574954

`A185630(n)-A185626(n)*A328672(n)`
-/

namespace A185622.P17939644335704574954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185630 n - A185626 n * A328672 n

end

end A185622.P17939644335704574954

/-! ## A185622.P357905145908940169

`A185630(n)+A000007(n)-A185624(∑[n+1]+1)`
-/

namespace A185622.P357905145908940169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185630 n + A000007 n - A185624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185622.P357905145908940169

/-! ## A185622.P6844639814768184801

`A185620(∑[n+2]+3)`
-/

namespace A185622.P6844639814768184801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185620 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A185622.P6844639814768184801

/-!
# A185623: Column 3 of triangular matrix T = A185620, which satisfies: T^3 - T^2 + I = SHIFT_LEFT(T).

The programs for A185623, there is no canonical definition to state claims against.
-/

/-! ## A185623.P18140345728059492957

`A185620(∑[n+3]+6)`
-/

namespace A185623.P18140345728059492957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185620 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A185623.P18140345728059492957

/-! ## A185623.P1023437891042816598

`A003108(n)*A185620(A052905(n)+8)`
-/

namespace A185623.P1023437891042816598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n * A185620 (A052905 n + 8).toNat

end

end A185623.P1023437891042816598

/-!
# A185625: Column 0 of triangle A185624; also, equals row sums of triangle A185620.

The programs for A185625, there is no canonical definition to state claims against.
-/

/-! ## A185625.P18028901512519597068

`A185629(n)-A185621(n)*A328672(n)`
-/

namespace A185625.P18028901512519597068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185629 n - A185621 n * A328672 n

end

end A185625.P18028901512519597068

/-! ## A185625.P7456475876826469146

`A185629(n)-A185621(n)%A185631(n)`
-/

namespace A185625.P7456475876826469146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185629 n - Int.tmod (A185621 n) (A185631 n)

end

end A185625.P7456475876826469146

/-! ## A185625.P5639239385720229149

`A185624(∑[n])`
-/

namespace A185625.P5639239385720229149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185624 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185625.P5639239385720229149

/-! ## A185625.P10890579726121912071

`record[A185624(Δ[A122046(n)])]`
-/

namespace A185625.P10890579726121912071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185624 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185625.P10890579726121912071

/-! ## A185625.P17959761543649350246

`and(-1, A185624(A000217(n)))`
-/

namespace A185625.P17959761543649350246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A185624 (A000217 n).toNat)

end

end A185625.P17959761543649350246

/-!
# A185626: Column 1 of triangle A185624.

The programs for A185626, there is no canonical definition to state claims against.
-/

/-! ## A185626.P12895507400463811355

`A185630(n)-A185622(n)*A328672(n)`
-/

namespace A185626.P12895507400463811355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185630 n - A185622 n * A328672 n

end

end A185626.P12895507400463811355

/-! ## A185626.P6390635740027405720

`A185630(n)-A185622(n)%A185627(n)`
-/

namespace A185626.P6390635740027405720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185630 n - Int.tmod (A185622 n) (A185627 n)

end

end A185626.P6390635740027405720

/-! ## A185626.P4139063095117462275

`record[A185624(comp[∑[n]])]`
-/

namespace A185626.P4139063095117462275
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185624 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185626.P4139063095117462275

/-! ## A185626.P940424422104743256

`A185624(∑[n+1]+1)`
-/

namespace A185626.P940424422104743256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185626.P940424422104743256

/-! ## A185626.P4018243652735423929

`record[A166124(n)*A185624(n)]`
-/

namespace A185626.P4018243652735423929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 n * A185624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185626.P4018243652735423929

/-!
# A185627: Column 2 of triangle A185624.

The programs for A185627, there is no canonical definition to state claims against.
-/

/-! ## A185627.P16520372938190298411

`A185624(∑[n+2]+3)`
-/

namespace A185627.P16520372938190298411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185624 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A185627.P16520372938190298411

/-! ## A185627.P4019861317988105520

`A004829(A095993(n+1)+A011782(n))`
-/

namespace A185627.P4019861317988105520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004829 (A095993 (n + 1) + A011782 n).toNat

end

end A185627.P4019861317988105520

/-!
# A185629: Column 0 of triangle A185628; also, equals row sums of triangle A185624.

The programs for A185629, there is no canonical definition to state claims against.
-/

/-! ## A185629.P15082091811622333753

`A185621(n)+A185625(n)*A328672(n)`
-/

namespace A185629.P15082091811622333753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185621 n + A185625 n * A328672 n

end

end A185629.P15082091811622333753

/-! ## A185629.P15002313106899016534

`A185625(n)+A185621(n)%A185626(n)`
-/

namespace A185629.P15002313106899016534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185625 n + Int.tmod (A185621 n) (A185626 n)

end

end A185629.P15002313106899016534

/-! ## A185629.P249351883173929993

`A185621(n)+A185625(n)%A185630(n)`
-/

namespace A185629.P249351883173929993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185621 n + Int.tmod (A185625 n) (A185630 n)

end

end A185629.P249351883173929993

/-! ## A185629.P17774706707723474836

`A185628(∑[n])`
-/

namespace A185629.P17774706707723474836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185629.P17774706707723474836

/-! ## A185629.P10083922597907004928

`record[A185628(A130519(n))]`
-/

namespace A185629.P10083922597907004928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 (A130519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185629.P10083922597907004928

/-!
# A185630: Column 1 of triangle A185628.

The programs for A185630, there is no canonical definition to state claims against.
-/

/-! ## A185630.P3022255262931808774

`A185622(n)+A185626(n)*A328672(n)`
-/

namespace A185630.P3022255262931808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185622 n + A185626 n * A328672 n

end

end A185630.P3022255262931808774

/-! ## A185630.P15674998573071568077

`A185626(n)+A185622(n)%A185627(n)`
-/

namespace A185630.P15674998573071568077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185626 n + Int.tmod (A185622 n) (A185627 n)

end

end A185630.P15674998573071568077

/-! ## A185630.P1181290123702753722

`record[A185628(comp[∑[n]])]`
-/

namespace A185630.P1181290123702753722
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185630.P1181290123702753722

/-! ## A185630.P18427414056581439310

`A185628(∑[n+1]+1)`
-/

namespace A185630.P18427414056581439310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185630.P18427414056581439310

/-! ## A185630.P17584510086438716610

`record[A185628(n)*A344612(n)]`
-/

namespace A185630.P17584510086438716610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 n * A344612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185630.P17584510086438716610

/-!
# A185631: Row sums of triangle A185628.

The programs for A185631, there is no canonical definition to state claims against.
-/

/-! ## A185631.P5244477077241583093

`A192744(n+1)+A001221(A048148(2*n+1))`
-/

namespace A185631.P5244477077241583093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192744 (n + 1) + A001221 (A048148 (2 * n + 1)).toNat

end

end A185631.P5244477077241583093

/-!
# A185632: Primes of the form n^2 + n + 1 where n is nonprime.

The programs for A185632, the canonical program `A185632.P15082878415161927803` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185632 has offset 1).

The definition of A185632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185632.P8799790759727840477

`A002061(A182253(n+1)+1)`
-/

namespace A185632.P8799790759727840477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A182253 (n + 1) + 1).toNat

end

end A185632.P8799790759727840477

namespace A185632

/-- `A002061(A182253(n+1)+1)` -/
def P8799790759727840477.Spec : Prop :=
  ∀ n, P8799790759727840477.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P15082878415161927803

`record[A108154(A018252(n+1)+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A185632

/-- `record[A108154(A018252(n+1)+1)]` -/
def P15082878415161927803.Spec : Prop :=
  ∀ n, P15082878415161927803.a n = A185632 (n + 1)

theorem P15082878415161927803.correct : P15082878415161927803.Spec := by
  intro n
  simp only [A185632, Nat.add_sub_cancel]

end A185632

/-! ## A185632.P9558602913284671272

`A000290(A182253(n+1)+1)-A182253(n+1)`
-/

namespace A185632.P9558602913284671272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A182253 (n + 1) + 1).toNat - A182253 (n + 1)

end

end A185632.P9558602913284671272

namespace A185632

/-- `A000290(A182253(n+1)+1)-A182253(n+1)` -/
def P9558602913284671272.Spec : Prop :=
  ∀ n, P9558602913284671272.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P5056405051248960336

`A055396(2*(n+1))+A002378(A182253(n+1))`
-/

namespace A185632.P5056405051248960336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) + A002378 (A182253 (n + 1)).toNat

end

end A185632.P5056405051248960336

namespace A185632

/-- `A055396(2*(n+1))+A002378(A182253(n+1))` -/
def P5056405051248960336.Spec : Prop :=
  ∀ n, P5056405051248960336.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P18435713999356565527

`A108154(record[A005171(n+1)*A214059(n+1)]+1)`
-/

namespace A185632.P18435713999356565527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A214059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A185632.P18435713999356565527

namespace A185632

/-- `A108154(record[A005171(n+1)*A214059(n+1)]+1)` -/
def P18435713999356565527.Spec : Prop :=
  ∀ n, P18435713999356565527.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P14841893497209416118

`A200975(2*A182253(n+1))`
-/

namespace A185632.P14841893497209416118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (2 * A182253 (n + 1)).toNat

end

end A185632.P14841893497209416118

namespace A185632

/-- `A200975(2*A182253(n+1))` -/
def P14841893497209416118.Spec : Prop :=
  ∀ n, P14841893497209416118.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P1946421739477400973

`p?[(n+1)²-A282462(n)]`
-/

namespace A185632.P1946421739477400973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A282462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185632.P1946421739477400973

namespace A185632

/-- `p?[(n+1)²-A282462(n)]` -/
def P1946421739477400973.Spec : Prop :=
  ∀ n, P1946421739477400973.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P458720352684426974

`p?[1-A055672(n)+n²+n]`
-/

namespace A185632.P458720352684426974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055672 n + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185632.P458720352684426974

namespace A185632

/-- `p?[1-A055672(n)+n²+n]` -/
def P458720352684426974.Spec : Prop :=
  ∀ n, P458720352684426974.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P3816901125164922923

`p?[(n+2)*A014684(n+1)+1]`
-/

namespace A185632.P3816901125164922923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014684 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185632.P3816901125164922923

namespace A185632

/-- `p?[(n+2)*A014684(n+1)+1]` -/
def P3816901125164922923.Spec : Prop :=
  ∀ n, P3816901125164922923.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P12572496020348495084

`p?[(char[A020639(n+2)]+1+n)²-n]`
-/

namespace A185632.P12572496020348495084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 + n) ^ 2 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185632.P12572496020348495084

namespace A185632

/-- `p?[(char[A020639(n+2)]+1+n)²-n]` -/
def P12572496020348495084.Spec : Prop :=
  ∀ n, P12572496020348495084.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P17152263959895351839

`A089726(A182253(n+1))`
-/

namespace A185632.P17152263959895351839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A182253 (n + 1)).toNat

end

end A185632.P17152263959895351839

namespace A185632

/-- `A089726(A182253(n+1))` -/
def P17152263959895351839.Spec : Prop :=
  ∀ n, P17152263959895351839.a n = A185632 (n + 1)

end A185632

/-! ## A185632.P11443335230084975444

`p?[A002061(A018252(n+1)+1)]`
-/

namespace A185632.P11443335230084975444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185632.P11443335230084975444

namespace A185632

/-- `p?[A002061(A018252(n+1)+1)]` -/
def P11443335230084975444.Spec : Prop :=
  ∀ n, P11443335230084975444.a n = A185632 (n + 1)

end A185632

/-!
# A185633: For odd n, a(n) = 2; for even n, a(n) = denominator of Bernoulli(n)/n; The number 2 alternating with the elements of A006953.

The programs for A185633, there is no canonical definition to state claims against.
-/

/-! ## A185633.P8129540296732687801

`lcm(2, A075180(n))`
-/

namespace A185633.P8129540296732687801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A075180 n)

end

end A185633.P8129540296732687801

/-! ## A185633.P163591098505894326

`A075180(n*n%2)`
-/

namespace A185633.P163591098505894326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (n * (n % 2))

end

end A185633.P163591098505894326

/-! ## A185633.P13381063203192298224

`A075180(n*and(1, n))`
-/

namespace A185633.P13381063203192298224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (n * Nat.land 1 n)

end

end A185633.P13381063203192298224

/-! ## A185633.P5823109906926199656

`∏{d}[n+1, A381887(#)]`
-/

namespace A185633.P5823109906926199656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A381887 d

end

end A185633.P5823109906926199656

/-! ## A185633.P4266862632305375578

`A079612(n+1)/gcd(2, n+1)`
-/

namespace A185633.P4266862632305375578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A185633.P4266862632305375578

/-! ## A185633.P5990160039761330064

`A075180(Δ[A008794(n)])`
-/

namespace A185633.P5990160039761330064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (f1 (n + 1) - f1 n).toNat

end

end A185633.P5990160039761330064

/-! ## A185633.P607136382741288112

`A075180(n*A000035(n))`
-/

namespace A185633.P607136382741288112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 ((n : ℤ) * A000035 n).toNat

end

end A185633.P607136382741288112

/-! ## A185633.P8296007980712144894

`A040001(n)*A075180(n)`
-/

namespace A185633.P8296007980712144894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A075180 n

end

end A185633.P8296007980712144894

/-! ## A185633.P12864108899326078421

`A079612(n+1)/A000034(n)`
-/

namespace A185633.P12864108899326078421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A185633.P12864108899326078421

/-! ## A185633.P4297099427152296171

`A075180(n*(2-A134451(n)))`
-/

namespace A185633.P4297099427152296171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 ((n : ℤ) * (2 - A134451 n)).toNat

end

end A185633.P4297099427152296171

/-! ## A185633.P14733156296817200577

`A079612(n+1)/A134451(n+1)`
-/

namespace A185633.P14733156296817200577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A185633.P14733156296817200577

/-! ## A185633.P3531587202028137194

`2*A079612(n+1)/A010694(n)`
-/

namespace A185633.P3531587202028137194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A079612 (n + 1) : ℚ) / (A010694 n : ℚ))

end

end A185633.P3531587202028137194

/-! ## A185633.P16209438326487092314

`gcd(A036283(n+1), A079612(n+1))`
-/

namespace A185633.P16209438326487092314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036283 (n + 1)) (A079612 (n + 1))

end

end A185633.P16209438326487092314

/-! ## A185633.P3567283471978152055

`A075180(A008794(n+1)-A008794(n))`
-/

namespace A185633.P3567283471978152055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (A008794 (n + 1) - A008794 n).toNat

end

end A185633.P3567283471978152055

/-! ## A185633.P6331244728879094758

`A079612(n+1)/A000925(n-A052928(n))`
-/

namespace A185633.P6331244728879094758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (n + 1) : ℚ) / (A000925 ((n : ℤ) - A052928 n).toNat : ℚ)

end

end A185633.P6331244728879094758

/-! ## A185633.P16942902436696992946

`A075180(n*A038189(2*n+1))`
-/

namespace A185633.P16942902436696992946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 ((n : ℤ) * A038189 (2 * n + 1)).toNat

end

end A185633.P16942902436696992946

/-! ## A185633.P12460964460449137987

`A027760(n+1)*A193267(n+1)`
-/

namespace A185633.P12460964460449137987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1) * A193267 (n + 1)

end

end A185633.P12460964460449137987

/-! ## A185633.P13567712045823729166

`A144845(n+1)/A163176(n+1)*A341109(n+1)`
-/

namespace A185633.P13567712045823729166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (n + 1) : ℚ) / (A163176 (n + 1) : ℚ) * (A341109 (n + 1) : ℚ)

end

end A185633.P13567712045823729166

/-! ## A185633.P5730223504340397474

`A001898(n+1)/A163176(n+1)`
-/

namespace A185633.P5730223504340397474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 (n + 1) : ℚ) / (A163176 (n + 1) : ℚ)

end

end A185633.P5730223504340397474

/-!
# A185634: Number of n-length cycles from any point in a complete graph on n nodes.

The programs for A185634, the canonical program `A185634.P8369433668180465331` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185634 has offset 2).

The definition of A185634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185634.P8369433668180465331

`((n+1)^(n+2)+(-1)^(n+2)*(n+1))/(n+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185634

/-- `((n+1)^(n+2)+(-1)^(n+2)*(n+1))/(n+2)` -/
def P8369433668180465331.Spec : Prop :=
  ∀ n, P8369433668180465331.a n = (A185634 (n + 2) : ℚ)

end A185634

/-! ## A185634.P16932024057855515263

`lcm(n+1, round((n+1)^(n+1)/(n+2)))`
-/

namespace A185634.P16932024057855515263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (((n + 1) ^ (n + 1) : ℚ) / (n + 2 : ℚ)))

end

end A185634.P16932024057855515263

namespace A185634

/-- `lcm(n+1, round((n+1)^(n+1)/(n+2)))` -/
def P16932024057855515263.Spec : Prop :=
  ∀ n, (P16932024057855515263.a n : ℤ) = A185634 (n + 2)

end A185634

/-! ## A185634.P14243332240822651928

`xor(1, A081209(n+1))`
-/

namespace A185634.P14243332240822651928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A081209 (n + 1))

end

end A185634.P14243332240822651928

namespace A185634

/-- `xor(1, A081209(n+1))` -/
def P14243332240822651928.Spec : Prop :=
  ∀ n, P14243332240822651928.a n = A185634 (n + 2)

end A185634

/-! ## A185634.P1070744264193889797

`(n+1)*A081216(n+1)`
-/

namespace A185634.P1070744264193889797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081216 (n + 1)

end

end A185634.P1070744264193889797

namespace A185634

/-- `(n+1)*A081216(n+1)` -/
def P1070744264193889797.Spec : Prop :=
  ∀ n, P1070744264193889797.a n = A185634 (n + 2)

end A185634

/-!
# A185635: Fixed points of A075075.

The programs for A185635, there is no canonical definition to state claims against.
-/

/-! ## A185635.P16255414508341161691

`eq[n, A075075(A028310(n))]`
-/

namespace A185635.P16255414508341161691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185635.P16255414508341161691

/-!
# A185636: a(n) = |{0 <= k < n: n+k and n+k^2 are both prime}|.

The programs for A185636, there is no canonical definition to state claims against.
-/

/-! ## A185636.P6226345187090124839

`A144095(A000070(2*n+1)-1)`
-/

namespace A185636.P6226345187090124839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144095 (A000070 (2 * n + 1) - 1).toNat

end

end A185636.P6226345187090124839

/-! ## A185636.P15266402456491993347

`A293439(A000070(2*n+1)-1)`
-/

namespace A185636.P15266402456491993347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A000070 (2 * n + 1) - 1).toNat

end

end A185636.P15266402456491993347

/-! ## A185636.P7504480423865903915

`A001031(n+1)-A005171(A006138(n))`
-/

namespace A185636.P7504480423865903915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A005171 (A006138 n).toNat

end

end A185636.P7504480423865903915

/-!
# A185637: Number of (n+1)X2 0..3 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185637, there is no canonical definition to state claims against.
-/

/-! ## A185637.P1195992796804804310

`A185640(∑[n]+1)`
-/

namespace A185637.P1195992796804804310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185637.P1195992796804804310

/-! ## A185637.P10333176214334124822

`lcm(2, A185640(A000124(n)))`
-/

namespace A185637.P10333176214334124822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185640 (A000124 n).toNat)

end

end A185637.P10333176214334124822

/-! ## A185637.P3986471263213417018

`record[A185640(A249742(n+1))]`
-/

namespace A185637.P3986471263213417018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185640 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185637.P3986471263213417018

/-! ## A185637.P2233887728064550865

`record[A010054(n)*A185640(n+1)]`
-/

namespace A185637.P2233887728064550865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185637.P2233887728064550865

/-!
# A185638: Number of (n+1)X3 0..3 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185638, there is no canonical definition to state claims against.
-/

/-! ## A185638.P11444716808646857454

`A185640(∑[n+1]+2)`
-/

namespace A185638.P11444716808646857454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185638.P11444716808646857454

/-! ## A185638.P16355250025506974087

`record[A010054(n)*A185640(n+2)]`
-/

namespace A185638.P16355250025506974087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185638.P16355250025506974087

/-! ## A185638.P13122649549903159231

`record[A185640(n+3)/A185628(n)]`
-/

namespace A185638.P13122649549903159231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185640 (n + 3) : ℚ) / (A185628 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185638.P13122649549903159231

/-!
# A185639: Number of (n+1)X4 0..3 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185639, there is no canonical definition to state claims against.
-/

/-! ## A185639.P14374209713624788595

`A185640(∑[n+2]+4)`
-/

namespace A185639.P14374209713624788595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185640 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185639.P14374209713624788595

/-! ## A185639.P13220915010969471372

`lcm(2, A185640(A167614(n+1)))`
-/

namespace A185639.P13220915010969471372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185640 (A167614 (n + 1)).toNat)

end

end A185639.P13220915010969471372

/-!
# A185642: Nearest integer to average of distinct prime factors of n.

The programs for A185642, the canonical program `A185642.P16752680788415332136` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185642 has offset 2).

The definition of A185642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185642.P16752680788415332136

`round(A008472(n+2)/A001221(n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185642

/-- `round(A008472(n+2)/A001221(n+2))` -/
def P16752680788415332136.Spec : Prop :=
  ∀ n, P16752680788415332136.a n = A185642 (n + 2)

theorem P16752680788415332136.correct : P16752680788415332136.Spec := by
  intro n
  simp only [A185642, Nat.add_sub_cancel]

end A185642

/-! ## A185642.P7007474407734214713

`A067620(∏{p}[n+2, #])`
-/

namespace A185642.P7007474407734214713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A185642.P7007474407734214713

namespace A185642

/-- `A067620(∏{p}[n+2, #])` -/
def P7007474407734214713.Spec : Prop :=
  ∀ n, P7007474407734214713.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P9113069494969295472

`A067629(∏{p}[n+2, #])`
-/

namespace A185642.P9113069494969295472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A185642.P9113069494969295472

namespace A185642

/-- `A067629(∏{p}[n+2, #])` -/
def P9113069494969295472.Spec : Prop :=
  ∀ n, P9113069494969295472.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P6393975655809759499

`A067620(A007947(n+2))`
-/

namespace A185642.P6393975655809759499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (A007947 (n + 2)).toNat

end

end A185642.P6393975655809759499

namespace A185642

/-- `A067620(A007947(n+2))` -/
def P6393975655809759499.Spec : Prop :=
  ∀ n, P6393975655809759499.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P4828101387695353127

`round(A323171(n+2)/A323172(n+2))`
-/

namespace A185642.P4828101387695353127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A323171 (n + 2) : ℚ) / (A323172 (n + 2) : ℚ))

end

end A185642.P4828101387695353127

namespace A185642

/-- `round(A323171(n+2)/A323172(n+2))` -/
def P4828101387695353127.Spec : Prop :=
  ∀ n, P4828101387695353127.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P13828226296959358737

`round(∑{p}[A007947(n+2), #/A001221(n+2)])`
-/

namespace A185642.P13828226296959358737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A001221 (n + 2) : ℚ))

end

end A185642.P13828226296959358737

namespace A185642

/-- `round(∑{p}[A007947(n+2), #/A001221(n+2)])` -/
def P13828226296959358737.Spec : Prop :=
  ∀ n, P13828226296959358737.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P2504712896529884087

`A067629(A062759(n+2))`
-/

namespace A185642.P2504712896529884087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A062759 (n + 2)).toNat

end

end A185642.P2504712896529884087

namespace A185642

/-- `A067629(A062759(n+2))` -/
def P2504712896529884087.Spec : Prop :=
  ∀ n, P2504712896529884087.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P1077099753328992157

`round(A123528(A007947(n+2))/A123529(∏{p}[n+2, #]))`
-/

namespace A185642.P1077099753328992157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123528 (A007947 (n + 2)).toNat : ℚ) / (A123529 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ))

end

end A185642.P1077099753328992157

namespace A185642

/-- `round(A123528(A007947(n+2))/A123529(∏{p}[n+2, #]))` -/
def P1077099753328992157.Spec : Prop :=
  ∀ n, P1077099753328992157.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P15086824549366928400

`A067629(A166140(n+2))`
-/

namespace A185642.P15086824549366928400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A166140 (n + 2)).toNat

end

end A185642.P15086824549366928400

namespace A185642

/-- `A067629(A166140(n+2))` -/
def P15086824549366928400.Spec : Prop :=
  ∀ n, P15086824549366928400.a n = A185642 (n + 2)

end A185642

/-! ## A185642.P12521948017209587609

`A067629(A078615(n+2))`
-/

namespace A185642.P12521948017209587609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A078615 (n + 2)).toNat

end

end A185642.P12521948017209587609

namespace A185642

/-- `A067629(A078615(n+2))` -/
def P12521948017209587609.Spec : Prop :=
  ∀ n, P12521948017209587609.a n = A185642 (n + 2)

end A185642

/-!
# A185643: Triangular array E(n,k) counting, not necessarily connected, k-regular simple graphs on n vertices with girth exactly 3.

The programs for A185643, there is no canonical definition to state claims against.
-/

/-! ## A185643.P8801119532085792068

`A269242(A334433(n+1)^A068934(n+1))`
-/

namespace A185643.P8801119532085792068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 (SequenceMachineLib.roundAway ((A334433 (n + 1) : ℚ) ^ (A068934 (n + 1) : ℤ))).toNat

end

end A185643.P8801119532085792068

/-! ## A185643.P16582011391052306224

`A186733(n+1)+A058276(A329607(n+1))`
-/

namespace A185643.P16582011391052306224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (n + 1) + A058276 (A329607 (n + 1)).toNat

end

end A185643.P16582011391052306224

/-! ## A185643.P11574114145285545399

`A186733(n+1)^A153595(A143494(n+2))`
-/

namespace A185643.P11574114145285545399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186733 (n + 1) : ℚ) ^ (A153595 (A143494 (n + 2)).toNat : ℤ)

end

end A185643.P11574114145285545399

/-! ## A185643.P179173033906628378

`A048993(n)%A328029(A336707(n))`
-/

namespace A185643.P179173033906628378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048993 n) (A328029 (A336707 n).toNat)

end

end A185643.P179173033906628378

/-! ## A185643.P8186531431124084955

`A156259(A128325(n))`
-/

namespace A185643.P8186531431124084955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (A128325 n).toNat

end

end A185643.P8186531431124084955

/-!
# A185644: Triangular array E(n,k) counting, not necessarily connected, k-regular simple graphs on n vertices with girth exactly 4.

The programs for A185644, there is no canonical definition to state claims against.
-/

/-! ## A185644.P1731605243515216797

`A186714(n+1)%A000188(A251935(n+1))`
-/

namespace A185644.P1731605243515216797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186714 (n + 1)) (A000188 (A251935 (n + 1)).toNat)

end

end A185644.P1731605243515216797

/-! ## A185644.P787036186049834193

`and(A183213(A002383(n+4)), A186714(n+1))`
-/

namespace A185644.P787036186049834193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183213 (A002383 (n + 4)).toNat) (A186714 (n + 1))

end

end A185644.P787036186049834193

/-! ## A185644.P9579854814608992137

`A056977(A094503(n+1))`
-/

namespace A185644.P9579854814608992137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A094503 (n + 1)).toNat

end

end A185644.P9579854814608992137

/-! ## A185644.P4561309484919284357

`A014081(A333383(2*(n+2))%(comp[∑[n]]-n))`
-/

namespace A185644.P4561309484919284357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.tmod (A333383 (2 * (n + 2))) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A185644.P4561309484919284357

/-!
# A185645: Number of permutations q_1,...,q_n of the first n primes p_1,...,p_n with q_1 = p_1 = 2 and q_n = p_n, and with |q_1-q_2|, |q_2-q_3|, ..., |q_{n-1}-q_n|, and |q_n-q_1| (if n>2) pairwise distinct.

The programs for A185645, there is no canonical definition to state claims against.
-/

/-! ## A185645.P1736613934968999902

`A032568(A089054(n))`
-/

namespace A185645.P1736613934968999902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A089054 n).toNat

end

end A185645.P1736613934968999902

/-! ## A185645.P17841845802930754388

`A032568(A091773(n))`
-/

namespace A185645.P17841845802930754388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A091773 n).toNat

end

end A185645.P17841845802930754388

/-! ## A185645.P17952280057360620357

`A032568(A100250(n+1))`
-/

namespace A185645.P17952280057360620357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A100250 (n + 1)).toNat

end

end A185645.P17952280057360620357

/-! ## A185645.P821342031288342520

`A085854(A149499(n))+1`
-/

namespace A185645.P821342031288342520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (A149499 n).toNat + 1

end

end A185645.P821342031288342520

/-! ## A185645.P1150321202498080999

`A032568(A290845(n+1))`
-/

namespace A185645.P1150321202498080999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A290845 (n + 1)).toNat

end

end A185645.P1150321202498080999

/-!
# A185646: Square array A(n,m), n>=0, m>=0, read by antidiagonals, where column m is the expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))).

The programs for A185646, there is no canonical definition to state claims against.
-/

/-! ## A185646.P15963751748688244997

`A299038(n)-A322358(A322368(2*n+5))`
-/

namespace A185646.P15963751748688244997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 n - A322358 (A322368 (2 * n + 5)).toNat

end

end A185646.P15963751748688244997

/-! ## A185646.P9038798780102935161

`A122027(A263597(n+1))-A002262(n)`
-/

namespace A185646.P9038798780102935161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122027 (A263597 (n + 1)).toNat - A002262 n

end

end A185646.P9038798780102935161

/-! ## A185646.P14497320212474663436

`A273693(n)-A185274(A240850(n))`
-/

namespace A185646.P14497320212474663436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 n - A185274 (A240850 n).toNat

end

end A185646.P14497320212474663436

/-! ## A185646.P14115061356673627447

`A299038(n)-A185274(A240850(n))`
-/

namespace A185646.P14115061356673627447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 n - A185274 (A240850 n).toNat

end

end A185646.P14115061356673627447

/-! ## A185646.P4956057461637649744

`A273693(n)-A321936(A334178(n))`
-/

namespace A185646.P4956057461637649744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273693 n - A321936 (A334178 n).toNat

end

end A185646.P4956057461637649744

/-!
# A185647: Expansion of (1+2x)*(1+2*x^2)/((1-x)*(1+x)*(1-2*x^2)).

The programs for A185647, the canonical program `A185647.P13761977297937491829` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185647 has offset 0).

The definition of A185647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2+4x^3)/(1-3x^2+2x^4))` (program `A185647.P13761977297937491829`, by `A185647.P13761977297937491829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185647.P13761977297937491829

`ogf((1+2x+2x^2+4x^3)/(1-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185647

/-- `ogf((1+2x+2x^2+4x^3)/(1-3x^2+2x^4))` -/
def P13761977297937491829.Spec : Prop :=
  ∀ n, P13761977297937491829.a n = A185647 n

theorem P13761977297937491829.correct : P13761977297937491829.Spec := by
  intro n
  simp only [A185647]

end A185647

/-! ## A185647.P11353466050152521185

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A185647.P11353466050152521185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  3 * a (n - 2) - 2 * a (n - 4)

end

end A185647.P11353466050152521185

namespace A185647

/-- `3*a(n-2)-2*a(n-4)` -/
def P11353466050152521185.Spec : Prop :=
  ∀ n, P11353466050152521185.a n = A185647 n

end A185647

/-! ## A185647.P5095459040982348815

`or(a(n-1)+3, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A185647.P5095459040982348815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (a (n - 1) + 3) (a (n - 2))

end

end A185647.P5095459040982348815

namespace A185647

/-- `or(a(n-1)+3, a(n-2))` -/
def P5095459040982348815.Spec : Prop :=
  ∀ n, (P5095459040982348815.a n : ℤ) = A185647 n

end A185647

/-! ## A185647.P10937171468084088634

`2*(a(n-2)+3/gcd(2, n))` with `a(0)=1, a(1)=2`
-/

namespace A185647.P10937171468084088634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + 3 / (Nat.gcd 2 n : ℚ))

end

end A185647.P10937171468084088634

namespace A185647

/-- `2*(a(n-2)+3/gcd(2, n))` -/
def P10937171468084088634.Spec : Prop :=
  ∀ n, P10937171468084088634.a n = (A185647 n : ℚ)

end A185647

/-! ## A185647.P4397609291626677021

`xor(3, n%2+2*a(n-2))+4` with `a(0)=1, a(1)=2`
-/

namespace A185647.P4397609291626677021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 3 (n % 2 + 2 * a (n - 2)) + 4

end

end A185647.P4397609291626677021

namespace A185647

/-- `xor(3, n%2+2*a(n-2))+4` -/
def P4397609291626677021.Spec : Prop :=
  ∀ n, (P4397609291626677021.a n : ℤ) = A185647 n

end A185647

/-! ## A185647.P7831579754414651321

`a(n-2)+a(n-1)/gcd(4, a(n-1))+3` with `a(0)=1, a(1)=2`
-/

namespace A185647.P7831579754414651321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) / (Int.gcd 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 3

end

end A185647.P7831579754414651321

namespace A185647

/-- `a(n-2)+a(n-1)/gcd(4, a(n-1))+3` -/
def P7831579754414651321.Spec : Prop :=
  ∀ n, P7831579754414651321.a n = (A185647 n : ℚ)

end A185647

/-! ## A185647.P1974319657071184829

`A016116(n+3)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A185647.P1974319657071184829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A016116 (n + 3) + a (n - 2)

end

end A185647.P1974319657071184829

namespace A185647

/-- `A016116(n+3)+a(n-2)` -/
def P1974319657071184829.Spec : Prop :=
  ∀ n, P1974319657071184829.a n = A185647 n

end A185647

/-! ## A185647.P17272503116840192762

`a(n-2)+2^A008619(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A185647.P17272503116840192762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (2 : ℚ) ^ (A008619 (n + 1) : ℤ)

end

end A185647.P17272503116840192762

namespace A185647

/-- `a(n-2)+2^A008619(n+1)` -/
def P17272503116840192762.Spec : Prop :=
  ∀ n, P17272503116840192762.a n = (A185647 n : ℚ)

end A185647

/-! ## A185647.P11597866271091701414

`2*A075427(n)-A000034(n)`
-/

namespace A185647.P11597866271091701414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075427 n - A000034 n

end

end A185647.P11597866271091701414

namespace A185647

/-- `2*A075427(n)-A000034(n)` -/
def P11597866271091701414.Spec : Prop :=
  ∀ n, P11597866271091701414.a n = A185647 n

end A185647

/-! ## A185647.P6990338317719651350

`A099942(n)+A099942(n)-A075427(n)`
-/

namespace A185647.P6990338317719651350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 n + (A099942 n - A075427 n)

end

end A185647.P6990338317719651350

namespace A185647

/-- `A099942(n)+A099942(n)-A075427(n)` -/
def P6990338317719651350.Spec : Prop :=
  ∀ n, P6990338317719651350.a n = A185647 n

end A185647

/-! ## A185647.P13394605525392646515

`A099942(n)+A099942(n)%A052551(n)`
-/

namespace A185647.P13394605525392646515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 n + Int.tmod (A099942 n) (A052551 n)

end

end A185647.P13394605525392646515

namespace A185647

/-- `A099942(n)+A099942(n)%A052551(n)` -/
def P13394605525392646515.Spec : Prop :=
  ∀ n, P13394605525392646515.a n = A185647 n

end A185647

/-! ## A185647.P2167829087596202432

`∪[2*A136252(2*n), A136252(2*n)]`
-/

namespace A185647.P2167829087596202432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136252 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185647.P2167829087596202432

namespace A185647

/-- `∪[2*A136252(2*n), A136252(2*n)]` -/
def P2167829087596202432.Spec : Prop :=
  ∀ n, (P2167829087596202432.a n : ℤ) = A185647 n

end A185647

/-! ## A185647.P10214766375686928722

`2*A099942(n)-A075427(n)`
-/

namespace A185647.P10214766375686928722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099942 n - A075427 n

end

end A185647.P10214766375686928722

namespace A185647

/-- `2*A099942(n)-A075427(n)` -/
def P10214766375686928722.Spec : Prop :=
  ∀ n, P10214766375686928722.a n = A185647 n

end A185647

/-! ## A185647.P11943930599529364821

`(A208901(n+1)+A122746(n))/A016116(n)`
-/

namespace A185647.P11943930599529364821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208901 (n + 1) + A122746 n : ℚ) / (A016116 n : ℚ)

end

end A185647.P11943930599529364821

namespace A185647

/-- `(A208901(n+1)+A122746(n))/A016116(n)` -/
def P11943930599529364821.Spec : Prop :=
  ∀ n, P11943930599529364821.a n = (A185647 n : ℚ)

end A185647

/-!
# A185648: Expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))) for m=8.

The programs for A185648, there is no canonical definition to state claims against.
-/

/-! ## A185648.P12840476781753847779

`A185646(A000217(n+9)-9)`
-/

namespace A185648.P12840476781753847779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 9) - 9).toNat

end

end A185648.P12840476781753847779

/-! ## A185648.P18067815268936119010

`A185646(A161680(n+10)-9)`
-/

namespace A185648.P18067815268936119010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A161680 (n + 10) - 9).toNat

end

end A185648.P18067815268936119010

/-! ## A185648.P8816311880229589283

`A185646(A004273(n+4)+A000124(n+7))`
-/

namespace A185648.P8816311880229589283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A185648.P8816311880229589283

/-! ## A185648.P5554312100639131407

`A185646(A052905(n+4)+A004273(n+7))`
-/

namespace A185648.P5554312100639131407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A052905 (n + 4) + A004273 (n + 7)).toNat

end

end A185648.P5554312100639131407

/-! ## A185648.P5547643592221091181

`A185646(A000124(n+7)-A001489(2*n+7))`
-/

namespace A185648.P5547643592221091181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000124 (n + 7) - A001489 (2 * n + 7)).toNat

end

end A185648.P5547643592221091181

/-!
# A185649: Expansion of g.f. 1/ (1-x^1*(1-x^(m+1))/ (1-x^2*(1-x^(m+2))/ (1- ... ))) for m=10.

The programs for A185649, there is no canonical definition to state claims against.
-/

/-! ## A185649.P5177640203985938640

`A185646(A000217(n+11)-11)`
-/

namespace A185649.P5177640203985938640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 11) - 11).toNat

end

end A185649.P5177640203985938640

/-! ## A185649.P7947956767782937562

`A185646(A046691(n+2)+A008589(n+7))`
-/

namespace A185649.P7947956767782937562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A046691 (n + 2) + A008589 (n + 7)).toNat

end

end A185649.P7947956767782937562

/-! ## A185649.P11832891672937719966

`A185646(A004273(n+5)+A000124(n+9))`
-/

namespace A185649.P11832891672937719966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A004273 (n + 5) + A000124 (n + 9)).toNat

end

end A185649.P11832891672937719966

/-! ## A185649.P3145646693600879446

`A185646(A052905(n+6)+A004273(n+8))`
-/

namespace A185649.P3145646693600879446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A052905 (n + 6) + A004273 (n + 8)).toNat

end

end A185649.P3145646693600879446

/-! ## A185649.P7136921211963855775

`A185646(A000124(n+9)-A001489(2*n+9))`
-/

namespace A185649.P7136921211963855775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000124 (n + 9) - A001489 (2 * n + 9)).toNat

end

end A185649.P7136921211963855775

/-!
# A185650: a(n) is the number of rooted trees with 2n vertices n of whom are leaves.

The programs for A185650, there is no canonical definition to state claims against.
-/

/-! ## A185650.P12426007889845431668

`A358583(2*(n+1))-A358581(2*(n+1))`
-/

namespace A185650.P12426007889845431668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358583 (2 * (n + 1)) - A358581 (2 * (n + 1))

end

end A185650.P12426007889845431668

/-! ## A185650.P5273250093653575953

`A358584(2*(n+1))-A358582(2*(n+1))`
-/

namespace A185650.P5273250093653575953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358584 (2 * (n + 1)) - A358582 (2 * (n + 1))

end

end A185650.P5273250093653575953

/-! ## A185650.P1201884256165766005

`A055277(2*(n+1)²)`
-/

namespace A185650.P1201884256165766005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (2 * (n + 1) ^ 2)

end

end A185650.P1201884256165766005

/-! ## A185650.P4433643615899071599

`record[A055277(∑[A062828(n+1)])]`
-/

namespace A185650.P4433643615899071599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185650.P4433643615899071599

/-! ## A185650.P14333668346755965867

`record[A055277(2*A008833(n+1))]`
-/

namespace A185650.P14333668346755965867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (2 * A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185650.P14333668346755965867

/-!
# A185651: A(n,k) = Sum_{d|n} phi(d)*k^(n/d); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A185651, there is no canonical definition to state claims against.
-/

/-! ## A185651.P17480731958511218271

`A025581(n)*A343489(n)`
-/

namespace A185651.P17480731958511218271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A343489 n

end

end A185651.P17480731958511218271

/-! ## A185651.P13774315401146615625

`(n-C(∑[char[∑[n]]], 2))*A319082(n)`
-/

namespace A185651.P13774315401146615625
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A319082 n

end

end A185651.P13774315401146615625

/-! ## A185651.P18134502349558413001

`A002262(n)*A319082(n)`
-/

namespace A185651.P18134502349558413001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A319082 n

end

end A185651.P18134502349558413001

/-! ## A185651.P13390858132219294595

`A114219(n)*A319082(n)`
-/

namespace A185651.P13390858132219294595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A319082 n

end

end A185651.P13390858132219294595

/-! ## A185651.P7429062883233729030

`A191532(n)*A319082(n)`
-/

namespace A185651.P7429062883233729030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n * A319082 n

end

end A185651.P7429062883233729030

/-! ## A185651.P2027009277062040170

`A319082(n)*A329221(n)`
-/

namespace A185651.P2027009277062040170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 n * A329221 n

end

end A185651.P2027009277062040170

/-! ## A185651.P6938954122532250064

`log2(A059268(n))*A319082(n)`
-/

namespace A185651.P6938954122532250064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) * (A319082 n : ℝ)

end

end A185651.P6938954122532250064

/-! ## A185651.P4803674774249320892

`A130270(n+1)*A319082(n)`
-/

namespace A185651.P4803674774249320892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) * A319082 n

end

end A185651.P4803674774249320892

/-! ## A185651.P15557533813400090798

`(A002260(n+1)-1)*A319082(n)`
-/

namespace A185651.P15557533813400090798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A319082 n

end

end A185651.P15557533813400090798

/-!
# A185652: Number of permutations of [n] having a shortest ascending run of length 2.

The programs for A185652, there is no canonical definition to state claims against.
-/

/-! ## A185652.P7627087887070007816

`A097899(n)-A186735(n)`
-/

namespace A185652.P7627087887070007816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097899 n - A186735 n

end

end A185652.P7627087887070007816

/-! ## A185652.P18077062842917204895

`n!-(A228614(n)+A186735(n))`
-/

namespace A185652.P18077062842917204895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A228614 n + A186735 n)

end

end A185652.P18077062842917204895

/-! ## A185652.P3327294188391637027

`A000142(n)-(A228614(n)+A186735(n))`
-/

namespace A185652.P3327294188391637027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A228614 n + A186735 n)

end

end A185652.P3327294188391637027

/-!
# A185655: a(n) = Sum_{k=0..n} binomial(n+k, k)*binomial(n+k+1, k+1)/(n+1).

The programs for A185655, the canonical program `A185655.P6824688376745787427` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185655 has offset 0).

The definition of A185655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185655.P6824688376745787427

`∑{#}[n, C(n+#, #)*C(n+#+1, #+1)/(n+1)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185655

/-- `∑{#}[n, C(n+#, #)*C(n+#+1, #+1)/(n+1)]` -/
def P6824688376745787427.Spec : Prop :=
  ∀ n, P6824688376745787427.a n = (A185655 n : ℚ)

end A185655

/-! ## A185655.P704422104196999148

`1/(n+1)*∑{#}[n, C(n+#, n)*C(n+#+1, n)]`
-/

namespace A185655.P704422104196999148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + k) n * Nat.choose (n + k + 1) n : ℕ) : ℚ)

end

end A185655.P704422104196999148

namespace A185655

/-- `1/(n+1)*∑{#}[n, C(n+#, n)*C(n+#+1, n)]` -/
def P704422104196999148.Spec : Prop :=
  ∀ n, P704422104196999148.a n = (A185655 n : ℚ)

end A185655

/-! ## A185655.P4764929796445000516

`A104711(∑[4*n]+1)`
-/

namespace A185655.P4764929796445000516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185655.P4764929796445000516

namespace A185655

/-- `A104711(∑[4*n]+1)` -/
def P4764929796445000516.Spec : Prop :=
  ∀ n, P4764929796445000516.a n = A185655 n

end A185655

/-! ## A185655.P884204540043445680

`record[A003982(n)*A104711(n+1)]`
-/

namespace A185655.P884204540043445680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A104711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185655.P884204540043445680

namespace A185655

/-- `record[A003982(n)*A104711(n+1)]` -/
def P884204540043445680.Spec : Prop :=
  ∀ n, P884204540043445680.a n = A185655 n

end A185655

/-!
# A185657: Numbers n such that (n^2 + n + 41) / 43 is prime.

The programs for A185657, there is no canonical definition to state claims against.
-/

/-! ## A185657.P6932536225191327817

`A043151(n+1)-A008585(A062399(n))`
-/

namespace A185657.P6932536225191327817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043151 (n + 1) - A008585 (A062399 n).toNat

end

end A185657.P6932536225191327817

/-! ## A185657.P10265173456031235165

`A043151(A032555(n+1))-A008585(n)`
-/

namespace A185657.P10265173456031235165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043151 (A032555 (n + 1)).toNat - A008585 n

end

end A185657.P10265173456031235165

/-!
# A185658: Primes of the form 43*n^2 + 3*n + 1.

The programs for A185658, there is no canonical definition to state claims against.
-/

/-! ## A185658.P6163960811302371882

`p?[2*lt[A025581(43*n), 1]+1]`
-/

namespace A185658.P6163960811302371882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (43 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A185658.P6163960811302371882

/-!
# A185660: Numbers k such that (k^3 + 11*k) +/ -1 is a twin prime pair.

The programs for A185660, there is no canonical definition to state claims against.
-/

/-! ## A185660.P16886228978215619407

`lt[A316491(2*(n+2)), A316506(A316530(n+1))]`
-/

namespace A185660.P16886228978215619407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316506 (A316530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185660.P16886228978215619407

/-!
# A185661: Smallest set containing 1 and closed under the operations x->2x+1, x->3x+1, x->6x+1.

The programs for A185661, there is no canonical definition to state claims against.
-/

/-! ## A185661.P16358747691874363457

`lt[A291350(n+1), Δ[A036283(n+4)]]`
-/

namespace A185661.P16358747691874363457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291350 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036283 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185661.P16358747691874363457

/-! ## A185661.P10739608635486174518

`eq[A007862(n+4), A146325(A172419(n+1))]`
-/

namespace A185661.P10739608635486174518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146325 (A172419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185661.P10739608635486174518

/-! ## A185661.P3811260001169757984

`eq[A003417(n), A189706(A129370(3*(n+1)))]`
-/

namespace A185661.P3811260001169757984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A129370 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185661.P3811260001169757984

/-!
# A185663: Riordan array (A000045(x)^m, x*A000108(x)), m = 2.

The programs for A185663, there is no canonical definition to state claims against.
-/

/-! ## A185663.P3997519380064213258

`A155161(n+2)%A000760(A037027(n))`
-/

namespace A185663.P3997519380064213258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155161 (n + 2)) (A000760 (A037027 n).toNat)

end

end A185663.P3997519380064213258

/-! ## A185663.P6090779307618981087

`A079978(A075498(n+1))*A155161(n+2)`
-/

namespace A185663.P6090779307618981087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A075498 (n + 1)).toNat * A155161 (n + 2)

end

end A185663.P6090779307618981087

/-! ## A185663.P3418100439471043772

`and(A155161(n+2), A184218(A075499(n+1)))`
-/

namespace A185663.P3418100439471043772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155161 (n + 2)) (A184218 (A075499 (n + 1)).toNat)

end

end A185663.P3418100439471043772

/-! ## A185663.P5556160758622844093

`∑{e}[A173862(A350635(n+1)+2), #]`
-/

namespace A185663.P5556160758622844093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A350635 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A185663.P5556160758622844093

/-! ## A185663.P15031951530758202796

`A002264(A350635(n+1)%A215821(n+1))`
-/

namespace A185663.P15031951530758202796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A350635 (n + 1)) (A215821 (n + 1))).toNat

end

end A185663.P15031951530758202796

/-!
# A185664: Riordan array (A000045(x)^m,x*A000108(x)), m=3.

The programs for A185664, there is no canonical definition to state claims against.
-/

/-! ## A185664.P7050479687706341257

`A384319(A073201(n))`
-/

namespace A185664.P7050479687706341257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384319 (A073201 n).toNat

end

end A185664.P7050479687706341257

/-! ## A185664.P391944898337605637

`A192002(A288386(n))`
-/

namespace A185664.P391944898337605637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A288386 n).toNat

end

end A185664.P391944898337605637

/-! ## A185664.P1367442668385918558

`A400279(A239144(n))`
-/

namespace A185664.P1367442668385918558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400279 (A239144 n).toNat

end

end A185664.P1367442668385918558

/-! ## A185664.P4490427893353246109

`A382758(A319171(n))`
-/

namespace A185664.P4490427893353246109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382758 (A319171 n).toNat

end

end A185664.P4490427893353246109

/-! ## A185664.P12031838094630274778

`A135472(A211802(n+1)+1)`
-/

namespace A185664.P12031838094630274778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135472 (A211802 (n + 1) + 1).toNat

end

end A185664.P12031838094630274778

/-!
# A185669: a(n) = 4*n^2 + 3*n + 2.

The programs for A185669, the canonical program `A185669.P13041267673244999932` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185669 has offset 0).

The definition of A185669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+3*n+2` (program `A185669.P13041267673244999932`, by `A185669.P13041267673244999932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185669.P11084553829011561390

`ogf((2+3x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A185669.P11084553829011561390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, -3, 3, -1] n

end

end A185669.P11084553829011561390

namespace A185669

/-- `ogf((2+3x+3x^2)/(1-3x+3x^2-x^3))` -/
def P11084553829011561390.Spec : Prop :=
  ∀ n, P11084553829011561390.a n = A185669 n

end A185669

/-! ## A185669.P8938739887367030438

`2+3*n+4*n²`
-/

namespace A185669.P8938739887367030438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 3 * n + 4 * n ^ 2

end

end A185669.P8938739887367030438

namespace A185669

/-- `2+3*n+4*n²` -/
def P8938739887367030438.Spec : Prop :=
  ∀ n, (P8938739887367030438.a n : ℤ) = A185669 n

theorem P8938739887367030438.correct : P8938739887367030438.Spec := by
  intro n
  simp only [A185669, Nat.add_sub_cancel, A185669.P8938739887367030438.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185669

/-! ## A185669.P13041267673244999932

`4*n²+3*n+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185669

/-- `4*n²+3*n+2` -/
def P13041267673244999932.Spec : Prop :=
  ∀ n, (P13041267673244999932.a n : ℤ) = A185669 n

theorem P13041267673244999932.correct : P13041267673244999932.Spec := by
  intro n
  simp only [A185669]

end A185669

/-! ## A185669.P15451988120851067390

`n*record[xor(3, n)]+2`
-/

namespace A185669.P15451988120851067390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A185669.P15451988120851067390

namespace A185669

/-- `n*record[xor(3, n)]+2` -/
def P15451988120851067390.Spec : Prop :=
  ∀ n, (P15451988120851067390.a n : ℤ) = A185669 n

end A185669

/-! ## A185669.P3825659295711017900

`∑[a(n-1)+8]` with `a(0)=2, a(1)=7`
-/

namespace A185669.P3825659295711017900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185669.P3825659295711017900

namespace A185669

/-- `∑[a(n-1)+8]` -/
def P3825659295711017900.Spec : Prop :=
  ∀ n, (P3825659295711017900.a n : ℤ) = A185669 n

end A185669

/-! ## A185669.P11427260087609547091

`∑[ogf((2+3x+3x^2)/(1-2x+x^2))]`
-/

namespace A185669.P11427260087609547091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185669.P11427260087609547091

namespace A185669

/-- `∑[ogf((2+3x+3x^2)/(1-2x+x^2))]` -/
def P11427260087609547091.Spec : Prop :=
  ∀ n, P11427260087609547091.a n = A185669 n

end A185669

/-! ## A185669.P18437621471715441081

`(C(4*n+2, 2)+3)/2`
-/

namespace A185669.P18437621471715441081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) 2 + 3 : ℚ) / 2

end

end A185669.P18437621471715441081

namespace A185669

/-- `(C(4*n+2, 2)+3)/2` -/
def P18437621471715441081.Spec : Prop :=
  ∀ n, P18437621471715441081.a n = (A185669 n : ℚ)

theorem P18437621471715441081.correct : P18437621471715441081.Spec := by
  intro n
  simp only [A185669, Nat.add_sub_cancel, A185669.P18437621471715441081.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185669

/-! ## A185669.P3371438422395156572

`abs(or(1, 2*n)²-(n-1))`
-/

namespace A185669.P3371438422395156572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)|

end

end A185669.P3371438422395156572

namespace A185669

/-- `abs(or(1, 2*n)²-(n-1))` -/
def P3371438422395156572.Spec : Prop :=
  ∀ n, P3371438422395156572.a n = A185669 n

end A185669

/-! ## A185669.P17451777168161019025

`abs(xor(1, 2*n)²-(n-1))`
-/

namespace A185669.P17451777168161019025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)|

end

end A185669.P17451777168161019025

namespace A185669

/-- `abs(xor(1, 2*n)²-(n-1))` -/
def P17451777168161019025.Spec : Prop :=
  ∀ n, P17451777168161019025.a n = A185669 n

end A185669

/-! ## A185669.P3102431518942756764

`floor(8*n+a(n-1)-1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A185669.P3102431518942756764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 1)

end

end A185669.P3102431518942756764

namespace A185669

/-- `floor(8*n+a(n-1)-1)` -/
def P3102431518942756764.Spec : Prop :=
  ∀ n, P3102431518942756764.a n = A185669 n

theorem P3102431518942756764.correct : P3102431518942756764.Spec := by
  intro n
  induction n with
  | zero => simp [A185669, A185669.P3102431518942756764.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A185669, Nat.add_sub_cancel, A185669.P3102431518942756764.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A185669

/-! ## A185669.P2653781200492887841

`floor(8*n-(1-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A185669.P2653781200492887841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (8 * n : ℤ) - (1 - a (n - 1))

end

end A185669.P2653781200492887841

namespace A185669

/-- `floor(8*n-(1-a(n-1)))` -/
def P2653781200492887841.Spec : Prop :=
  ∀ n, P2653781200492887841.a n = A185669 n

theorem P2653781200492887841.correct : P2653781200492887841.Spec := by
  intro n
  induction n with
  | zero => simp [A185669, A185669.P2653781200492887841.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A185669, Nat.add_sub_cancel, A185669.P2653781200492887841.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A185669

/-! ## A185669.P8339730429987760844

`abs(n-2-4*lcm(n, n+1))`
-/

namespace A185669.P8339730429987760844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 - (4 * Nat.lcm n (n + 1) : ℤ)|

end

end A185669.P8339730429987760844

namespace A185669

/-- `abs(n-2-4*lcm(n, n+1))` -/
def P8339730429987760844.Spec : Prop :=
  ∀ n, P8339730429987760844.a n = A185669 n

end A185669

/-! ## A185669.P12342935034870878534

`-(Δ[-C(2*n+1, 3)]+n-1)`
-/

namespace A185669.P12342935034870878534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (2 * n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + ((n : ℤ) - 1))

end

end A185669.P12342935034870878534

namespace A185669

/-- `-(Δ[-C(2*n+1, 3)]+n-1)` -/
def P12342935034870878534.Spec : Prop :=
  ∀ n, P12342935034870878534.a n = A185669 n

theorem P12342935034870878534.correct : P12342935034870878534.Spec := by
  intro n
  simp only [A185669, Nat.add_sub_cancel, A185669.P12342935034870878534.f1, A185669.P12342935034870878534.a, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185669

/-! ## A185669.P18326242754194834

`ceil(lcm(2*n+1, 2*n)+ϕ+n)`
-/

namespace A185669.P18326242754194834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (2 * n + 1) (2 * n) : ℝ) + Real.goldenRatio + (n : ℝ)⌉

end

end A185669.P18326242754194834

namespace A185669

/-- `ceil(lcm(2*n+1, 2*n)+ϕ+n)` -/
def P18326242754194834.Spec : Prop :=
  ∀ n, P18326242754194834.a n = A185669 n

end A185669

/-! ## A185669.P6811215416970205207

`ceil((2*n+1)/acot(2*n)+n+1)`
-/

namespace A185669.P6811215416970205207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + (n + 1 : ℝ)⌉

end

end A185669.P6811215416970205207

namespace A185669

/-- `ceil((2*n+1)/acot(2*n)+n+1)` -/
def P6811215416970205207.Spec : Prop :=
  ∀ n, P6811215416970205207.a n = A185669 n

end A185669

/-! ## A185669.P11417612623219965320

`floor((2*n+1)/acot(2*n)+n+2)`
-/

namespace A185669.P11417612623219965320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + (n + 2 : ℝ)⌋

end

end A185669.P11417612623219965320

namespace A185669

/-- `floor((2*n+1)/acot(2*n)+n+2)` -/
def P11417612623219965320.Spec : Prop :=
  ∀ n, P11417612623219965320.a n = A185669 n

end A185669

/-! ## A185669.P12566044796192045270

`round(2*n/acot(2*n+1)+n+2)`
-/

namespace A185669.P12566044796192045270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (2 * n + 1 : ℝ) + (n + 2 : ℝ))

end

end A185669.P12566044796192045270

namespace A185669

/-- `round(2*n/acot(2*n+1)+n+2)` -/
def P12566044796192045270.Spec : Prop :=
  ∀ n, P12566044796192045270.a n = A185669 n

end A185669

/-! ## A185669.P17533943057509139341

`(A014634(n)+3)/2`
-/

namespace A185669.P17533943057509139341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014634 n + 3 : ℚ) / 2

end

end A185669.P17533943057509139341

namespace A185669

/-- `(A014634(n)+3)/2` -/
def P17533943057509139341.Spec : Prop :=
  ∀ n, P17533943057509139341.a n = (A185669 n : ℚ)

theorem P17533943057509139341.correct : P17533943057509139341.Spec := by
  intro n
  simp only [A185669, Nat.add_sub_cancel, A185669.P17533943057509139341.a, A185669.P13041267673244999932.a, A014634, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185669

/-! ## A185669.P3831016200354703097

`(A033587(n)+4)/2`
-/

namespace A185669.P3831016200354703097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033587 n + 4 : ℚ) / 2

end

end A185669.P3831016200354703097

namespace A185669

/-- `(A033587(n)+4)/2` -/
def P3831016200354703097.Spec : Prop :=
  ∀ n, P3831016200354703097.a n = (A185669 n : ℚ)

theorem P3831016200354703097.correct : P3831016200354703097.Spec := by
  intro n
  simp only [A185669, Nat.add_sub_cancel, A185669.P3831016200354703097.a, A185669.P13041267673244999932.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185669

/-! ## A185669.P6633896018267061105

`A192848(n+1)%A108928(n+1)`
-/

namespace A185669.P6633896018267061105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192848 (n + 1)) (A108928 (n + 1))

end

end A185669.P6633896018267061105

namespace A185669

/-- `A192848(n+1)%A108928(n+1)` -/
def P6633896018267061105.Spec : Prop :=
  ∀ n, P6633896018267061105.a n = A185669 n

end A185669

/-!
# A185670: Number of pairs (x,y) with 1 <= x < y <= n with at least one common factor.

The programs for A185670, the canonical program `A185670.P7671735460308608982` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185670 has offset 1).

The definition of A185670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185670.P7671735460308608982

`A100613(n+1)-A063985(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A185670

/-- `A100613(n+1)-A063985(n+1)` -/
def P7671735460308608982.Spec : Prop :=
  ∀ n, P7671735460308608982.a n = A185670 (n + 1)

theorem P7671735460308608982.correct : P7671735460308608982.Spec := by
  intro n
  simp only [A185670, Nat.add_sub_cancel]

end A185670

/-! ## A185670.P7483016272774798494

`∑[n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1`
-/

namespace A185670.P7483016272774798494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185670.P7483016272774798494

namespace A185670

/-- `∑[n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1` -/
def P7483016272774798494.Spec : Prop :=
  ∀ n, P7483016272774798494.a n = (A185670 (n + 1) : ℚ)

end A185670

/-! ## A185670.P6696400916255076359

`∑[A016035(n+1)]`
-/

namespace A185670.P6696400916255076359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185670.P6696400916255076359

namespace A185670

/-- `∑[A016035(n+1)]` -/
def P6696400916255076359.Spec : Prop :=
  ∀ n, P6696400916255076359.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P8589696992868574936

`A063985(n+1)-n`
-/

namespace A185670.P8589696992868574936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (n + 1) - (n : ℤ)

end

end A185670.P8589696992868574936

namespace A185670

/-- `A063985(n+1)-n` -/
def P8589696992868574936.Spec : Prop :=
  ∀ n, P8589696992868574936.a n = A185670 (n + 1)

theorem P8589696992868574936.correct : P8589696992868574936.Spec := by
  intro n
  simp only [A185670, Nat.add_sub_cancel, A185670.P8589696992868574936.a, A185670.P7671735460308608982.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185670

/-! ## A185670.P13451032531521897069

`∑[A219428(n+1)]+1`
-/

namespace A185670.P13451032531521897069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185670.P13451032531521897069

namespace A185670

/-- `∑[A219428(n+1)]+1` -/
def P13451032531521897069.Spec : Prop :=
  ∀ n, P13451032531521897069.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P2800707964390135757

`∑[n]-A015614(n+1)`
-/

namespace A185670.P2800707964390135757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A015614 (n + 1)

end

end A185670.P2800707964390135757

namespace A185670

/-- `∑[n]-A015614(n+1)` -/
def P2800707964390135757.Spec : Prop :=
  ∀ n, P2800707964390135757.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P978371253659291478

`∑[A051953(n+1)]-n`
-/

namespace A185670.P978371253659291478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A185670.P978371253659291478

namespace A185670

/-- `∑[A051953(n+1)]-n` -/
def P978371253659291478.Spec : Prop :=
  ∀ n, P978371253659291478.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P10974417340775772095

`(A100613(n+1)-n)/2`
-/

namespace A185670.P10974417340775772095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100613 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A185670.P10974417340775772095

namespace A185670

/-- `(A100613(n+1)-n)/2` -/
def P10974417340775772095.Spec : Prop :=
  ∀ n, P10974417340775772095.a n = (A185670 (n + 1) : ℚ)

theorem P10974417340775772095.correct : P10974417340775772095.Spec := by
  intro n
  simp only [A185670, Nat.add_sub_cancel, A185670.P10974417340775772095.a, A185670.P7671735460308608982.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185670

/-! ## A185670.P7550869617301766352

`∑[n-A000010(n+1)]+1`
-/

namespace A185670.P7550869617301766352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A185670.P7550869617301766352

namespace A185670

/-- `∑[n-A000010(n+1)]+1` -/
def P7550869617301766352.Spec : Prop :=
  ∀ n, P7550869617301766352.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P10883706389527601627

`∑[n]+1-A092249(n+1)`
-/

namespace A185670.P10883706389527601627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A092249 (n + 1))

end

end A185670.P10883706389527601627

namespace A185670

/-- `∑[n]+1-A092249(n+1)` -/
def P10883706389527601627.Spec : Prop :=
  ∀ n, P10883706389527601627.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P2775168253611078753

`∑[n+1]-A187263(n+1)`
-/

namespace A185670.P2775168253611078753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A187263 (n + 1)

end

end A185670.P2775168253611078753

namespace A185670

/-- `∑[n+1]-A187263(n+1)` -/
def P2775168253611078753.Spec : Prop :=
  ∀ n, P2775168253611078753.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P10355168192519869863

`C(n, 2)-∑[A109606(n+1)]`
-/

namespace A185670.P10355168192519869863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185670.P10355168192519869863

namespace A185670

/-- `C(n, 2)-∑[A109606(n+1)]` -/
def P10355168192519869863.Spec : Prop :=
  ∀ n, P10355168192519869863.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P3675436514348545901

`∑[n]-(A015613(n+1)+n)`
-/

namespace A185670.P3675436514348545901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A015613 (n + 1) + (n : ℤ))

end

end A185670.P3675436514348545901

namespace A185670

/-- `∑[n]-(A015613(n+1)+n)` -/
def P3675436514348545901.Spec : Prop :=
  ∀ n, P3675436514348545901.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P16117535568429595097

`1-∑[A000010(2*n-(n-1))-n]`
-/

namespace A185670.P16117535568429595097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185670.P16117535568429595097

namespace A185670

/-- `1-∑[A000010(2*n-(n-1))-n]` -/
def P16117535568429595097.Spec : Prop :=
  ∀ n, P16117535568429595097.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P16747674656236243420

`a(n-1)-A000010(lcm(2, n+1))+n` with `a(0)=0`
-/

namespace A185670.P16747674656236243420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A000010 (Nat.lcm 2 (n + 1)) + (n : ℤ)

end

end A185670.P16747674656236243420

namespace A185670

/-- `a(n-1)-A000010(lcm(2, n+1))+n` -/
def P16747674656236243420.Spec : Prop :=
  ∀ n, P16747674656236243420.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P7891498505600632552

`a(n-1)-A000010(C(n+1, n))+n` with `a(0)=0`
-/

namespace A185670.P7891498505600632552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A000010 (Nat.choose (n + 1) n) + (n : ℤ)

end

end A185670.P7891498505600632552

namespace A185670

/-- `a(n-1)-A000010(C(n+1, n))+n` -/
def P7891498505600632552.Spec : Prop :=
  ∀ n, P7891498505600632552.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P12451175746970070478

`a(n-1)-A000010(2*n+1-n)+n` with `a(0)=0`
-/

namespace A185670.P12451175746970070478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A000010 (2 * n + 1 - n) + (n : ℤ)

end

end A185670.P12451175746970070478

namespace A185670

/-- `a(n-1)-A000010(2*n+1-n)+n` -/
def P12451175746970070478.Spec : Prop :=
  ∀ n, P12451175746970070478.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P208880686728605643

`A000124(n)-A002088(n+1)`
-/

namespace A185670.P208880686728605643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A002088 (n + 1)

end

end A185670.P208880686728605643

namespace A185670

/-- `A000124(n)-A002088(n+1)` -/
def P208880686728605643.Spec : Prop :=
  ∀ n, P208880686728605643.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P8614742969776239752

`A000124(n)-A092249(n+1)`
-/

namespace A185670.P8614742969776239752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A092249 (n + 1)

end

end A185670.P8614742969776239752

namespace A185670

/-- `A000124(n)-A092249(n+1)` -/
def P8614742969776239752.Spec : Prop :=
  ∀ n, P8614742969776239752.a n = A185670 (n + 1)

end A185670

/-! ## A185670.P17154723761590427284

`A161680(n)-A015613(n+1)`
-/

namespace A185670.P17154723761590427284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A015613 (n + 1)

end

end A185670.P17154723761590427284

namespace A185670

/-- `A161680(n)-A015613(n+1)` -/
def P17154723761590427284.Spec : Prop :=
  ∀ n, P17154723761590427284.a n = A185670 (n + 1)

end A185670

/-!
# A185672: Let f(n) = Sum_{j>=1} j^n*3^j/binomial(2*j,j) = r_n*Pi/sqrt(3) + s_n; sequence gives r_n.

The programs for A185672, there is no canonical definition to state claims against.
-/

/-! ## A185672.P8280657550738314511

`2*A367372(n+1)`
-/

namespace A185672.P8280657550738314511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367372 (n + 1)

end

end A185672.P8280657550738314511

/-! ## A185672.P10051931317503224492

`lcm(4, A367372(-xor(n, -1)))`
-/

namespace A185672.P10051931317503224492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A367372 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A185672.P10051931317503224492

/-!
# A185675: Riordan array ( (1+x)/(1-x-x^2), x*A000108(x) ).

The programs for A185675, there is no canonical definition to state claims against.
-/

/-! ## A185675.P7078821023731554454

`A185937(n)+A139375(n)`
-/

namespace A185675.P7078821023731554454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 n + A139375 n

end

end A185675.P7078821023731554454

/-! ## A185675.P4077214142673684714

`A185937(comp[∑[n-1]])+A185937(n)`
-/

namespace A185675.P4077214142673684714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A185937 n

end

end A185675.P4077214142673684714

/-! ## A185675.P15355098691587703423

`A185937(n)+A185937(A007401(n+1))+A000035(2*n)`
-/

namespace A185675.P15355098691587703423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 n + (A185937 (A007401 (n + 1)).toNat + A000035 (2 * n))

end

end A185675.P15355098691587703423

/-! ## A185675.P9334283498336014847

`A185937(n)+A185937(A007401(n+1))%A001555(n)`
-/

namespace A185675.P9334283498336014847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 n + Int.tmod (A185937 (A007401 (n + 1)).toNat) (A001555 n)

end

end A185675.P9334283498336014847

/-! ## A185675.P18297687113837262984

`A122075(n)+A010893(A060637(n))`
-/

namespace A185675.P18297687113837262984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 n + A010893 ((A060637 n).toNat + 13)

end

end A185675.P18297687113837262984

/-!
# A185679: Number of digits in decimal expansion of n^2.

The programs for A185679, the canonical program `A185679.P6253800924068931833` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185679 has offset 0).

The definition of A185679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185679.P6253800924068931833

`∑{digits}[n², (#%2)!]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185679

/-- `∑{digits}[n², (#%2)!]` -/
def P6253800924068931833.Spec : Prop :=
  ∀ n, (P6253800924068931833.a n : ℤ) = A185679 n

theorem P6253800924068931833.correct : P6253800924068931833.Spec := by
  intro n
  simp only [A185679]

end A185679

/-! ## A185679.P757404374247534266

`∑{digits}[n², and(1, #)!]`
-/

namespace A185679.P757404374247534266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A185679.P757404374247534266

namespace A185679

/-- `∑{digits}[n², and(1, #)!]` -/
def P757404374247534266.Spec : Prop :=
  ∀ n, (P757404374247534266.a n : ℤ) = A185679 n

theorem P757404374247534266.correct : P757404374247534266.Spec := by
  intro n
  simp only [A185679, Nat.add_sub_cancel, A185679.P757404374247534266.f1, A185679.P757404374247534266.a, A185679.P6253800924068931833.f1, A185679.P6253800924068931833.a, SequenceMachineLib.memo_apply]
  try simp

end A185679

/-! ## A185679.P11898809398748611375

`∑{digits}[n², dr(10^#)]`
-/

namespace A185679.P11898809398748611375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A185679.P11898809398748611375

namespace A185679

/-- `∑{digits}[n², dr(10^#)]` -/
def P11898809398748611375.Spec : Prop :=
  ∀ n, (P11898809398748611375.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P570834652771503870

`∑{digits}[n², C(#, 9)!]`
-/

namespace A185679.P570834652771503870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.choose x 9)).sum

end

end A185679.P570834652771503870

namespace A185679

/-- `∑{digits}[n², C(#, 9)!]` -/
def P570834652771503870.Spec : Prop :=
  ∀ n, (P570834652771503870.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P9947301294620864412

`∑{digits}[n², (3^#)%2]`
-/

namespace A185679.P9947301294620864412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 3 ^ x % 2).sum

end

end A185679.P9947301294620864412

namespace A185679

/-- `∑{digits}[n², (3^#)%2]` -/
def P9947301294620864412.Spec : Prop :=
  ∀ n, (P9947301294620864412.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P5314576122383487764

`∑{digits}[n², gcd(2, 3^#)]`
-/

namespace A185679.P5314576122383487764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd 2 (3 ^ x)).sum

end

end A185679.P5314576122383487764

namespace A185679

/-- `∑{digits}[n², gcd(2, 3^#)]` -/
def P5314576122383487764.Spec : Prop :=
  ∀ n, (P5314576122383487764.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P13230120197268976613

`∑{digits}[n², and(1, 3^#)]`
-/

namespace A185679.P13230120197268976613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (3 ^ x)).sum

end

end A185679.P13230120197268976613

namespace A185679

/-- `∑{digits}[n², and(1, 3^#)]` -/
def P13230120197268976613.Spec : Prop :=
  ∀ n, (P13230120197268976613.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P12517789543872805393

`∑{digits}[n², abs((-1)^#)]`
-/

namespace A185679.P12517789543872805393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => |(-1) ^ x|).sum

end

end A185679.P12517789543872805393

namespace A185679

/-- `∑{digits}[n², abs((-1)^#)]` -/
def P12517789543872805393.Spec : Prop :=
  ∀ n, P12517789543872805393.a n = A185679 n

end A185679

/-! ## A185679.P5113236247684828285

`A110655(A242374(n))`
-/

namespace A185679.P5113236247684828285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A242374 n).toNat

end

end A185679.P5113236247684828285

namespace A185679

/-- `A110655(A242374(n))` -/
def P5113236247684828285.Spec : Prop :=
  ∀ n, P5113236247684828285.a n = A185679 n

end A185679

/-! ## A185679.P13899172954161261640

`A253909(n)-A140479(n)`
-/

namespace A185679.P13899172954161261640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - A140479 n

end

end A185679.P13899172954161261640

namespace A185679

/-- `A253909(n)-A140479(n)` -/
def P13899172954161261640.Spec : Prop :=
  ∀ n, P13899172954161261640.a n = A185679 n

end A185679

/-! ## A185679.P5982335116161274807

`A054055(A308003(n²))`
-/

namespace A185679.P5982335116161274807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A308003 (n ^ 2)).toNat

end

end A185679.P5982335116161274807

namespace A185679

/-- `A054055(A308003(n²))` -/
def P5982335116161274807.Spec : Prop :=
  ∀ n, P5982335116161274807.a n = A185679 n

end A185679

/-! ## A185679.P15037594149087473970

`A055642(n²)`
-/

namespace A185679.P15037594149087473970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n ^ 2)

end

end A185679.P15037594149087473970

namespace A185679

/-- `A055642(n²)` -/
def P15037594149087473970.Spec : Prop :=
  ∀ n, P15037594149087473970.a n = A185679 n

end A185679

/-! ## A185679.P12031198422628972317

`dr(A100909(n²))`
-/

namespace A185679.P12031198422628972317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A100909 (n ^ 2))

end

end A185679.P12031198422628972317

namespace A185679

/-- `dr(A100909(n²))` -/
def P12031198422628972317.Spec : Prop :=
  ∀ n, (P12031198422628972317.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P17813956576897765567

`A337843(n²)-n²`
-/

namespace A185679.P17813956576897765567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 (n ^ 2) - (n ^ 2 : ℤ)

end

end A185679.P17813956576897765567

namespace A185679

/-- `A337843(n²)-n²` -/
def P17813956576897765567.Spec : Prop :=
  ∀ n, P17813956576897765567.a n = A185679 n

end A185679

/-! ## A185679.P12224627296044939533

`A080883(A140479(n))`
-/

namespace A185679.P12224627296044939533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A140479 n).toNat

end

end A185679.P12224627296044939533

namespace A185679

/-- `A080883(A140479(n))` -/
def P12224627296044939533.Spec : Prop :=
  ∀ n, P12224627296044939533.a n = A185679 n

end A185679

/-! ## A185679.P9718373039404092852

`A054055(A308005(n²))`
-/

namespace A185679.P9718373039404092852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A308005 (n ^ 2)).toNat

end

end A185679.P9718373039404092852

namespace A185679

/-- `A054055(A308005(n²))` -/
def P9718373039404092852.Spec : Prop :=
  ∀ n, P9718373039404092852.a n = A185679 n

end A185679

/-! ## A185679.P16294157834999626607

`dr(A348783(n²))`
-/

namespace A185679.P16294157834999626607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 (n ^ 2))

end

end A185679.P16294157834999626607

namespace A185679

/-- `dr(A348783(n²))` -/
def P16294157834999626607.Spec : Prop :=
  ∀ n, (P16294157834999626607.a n : ℤ) = A185679 n

end A185679

/-! ## A185679.P11754751172579588425

`A160093(or(1, n²))`
-/

namespace A185679.P11754751172579588425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (Nat.lor 1 (n ^ 2))

end

end A185679.P11754751172579588425

namespace A185679

/-- `A160093(or(1, n²))` -/
def P11754751172579588425.Spec : Prop :=
  ∀ n, P11754751172579588425.a n = A185679 n

end A185679

/-! ## A185679.P4429058875175622306

`A004218(a(n-1)+n²)` with `a(0)=1`
-/

namespace A185679.P4429058875175622306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004218 (a (n - 1) + (n ^ 2 : ℤ)).toNat

end

end A185679.P4429058875175622306

namespace A185679

/-- `A004218(a(n-1)+n²)` -/
def P4429058875175622306.Spec : Prop :=
  ∀ n, P4429058875175622306.a n = A185679 n

end A185679

/-! ## A185679.P10025049868285064228

`A004218(A248800(n))`
-/

namespace A185679.P10025049868285064228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A248800 n).toNat

end

end A185679.P10025049868285064228

namespace A185679

/-- `A004218(A248800(n))` -/
def P10025049868285064228.Spec : Prop :=
  ∀ n, P10025049868285064228.a n = A185679 n

end A185679

/-!
# A185684: Irregular triangle, read by rows, of primes with prefix n and digits "3" appended, otherwise 0.

The programs for A185684, there is no canonical definition to state claims against.
-/

/-! ## A185684.P13402811721255394377

`p?[lcm(10, a(n-2))+3]` with `a(0)=1, a(1)=4`
-/

namespace A185684.P13402811721255394377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Nat.lcm 10 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A185684.P13402811721255394377

/-!
# A185688: First differences of A060819(n-4)*A060819(n).

The programs for A185688, the canonical program `A185688.P3619987413698240019` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185688 has offset 1).

The definition of A185688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185688.P3619987413698240019

`Δ[(n+1)*(n-3)/gcd(n+1, n-3)²]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185688

/-- `Δ[(n+1)*(n-3)/gcd(n+1, n-3)²]` -/
def P3619987413698240019.Spec : Prop :=
  ∀ n, P3619987413698240019.a n = (A185688 (n + 1) : ℚ)

end A185688

/-! ## A185688.P4976254317087385657

`Δ[A181318(n+1)-A188134(n+1)]`
-/

namespace A185688.P4976254317087385657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (n + 1) - A188134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185688.P4976254317087385657

namespace A185688

/-- `Δ[A181318(n+1)-A188134(n+1)]` -/
def P4976254317087385657.Spec : Prop :=
  ∀ n, P4976254317087385657.a n = A185688 (n + 1)

end A185688

/-! ## A185688.P6234986839718660546

`Δ[A247829(A249693(abs(1-n)))]`
-/

namespace A185688.P6234986839718660546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A249693 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185688.P6234986839718660546

namespace A185688

/-- `Δ[A247829(A249693(abs(1-n)))]` -/
def P6234986839718660546.Spec : Prop :=
  ∀ n, P6234986839718660546.a n = A185688 (n + 1)

end A185688

/-! ## A185688.P17418125807764791871

`Δ[A225948(abs(2*(1-n)))]`
-/

namespace A185688.P17418125807764791871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185688.P17418125807764791871

namespace A185688

/-- `Δ[A225948(abs(2*(1-n)))]` -/
def P17418125807764791871.Spec : Prop :=
  ∀ n, P17418125807764791871.a n = A185688 (n + 1)

end A185688

/-!
# A185690: Exponential Riordan array (1,sin(x)).

The programs for A185690, there is no canonical definition to state claims against.
-/

/-! ## A185690.P4311618592975587905

`A117568(n)*A136630(A014132(n+1))`
-/

namespace A185690.P4311618592975587905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A136630 (A014132 (n + 1)).toNat

end

end A185690.P4311618592975587905

/-! ## A185690.P9728767868091726626

`A130194(n+1)*A136630(A014132(n+1))`
-/

namespace A185690.P9728767868091726626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A136630 (A014132 (n + 1)).toNat

end

end A185690.P9728767868091726626

/-! ## A185690.P1563731719528980084

`A011582(A156663(n))*A136630(A014132(n+1))`
-/

namespace A185690.P1563731719528980084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A156663 n).toNat * A136630 (A014132 (n + 1)).toNat

end

end A185690.P1563731719528980084

/-! ## A185690.P15248616841822198286

`A106470(n)*A136630(A014132(n+1))`
-/

namespace A185690.P15248616841822198286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A136630 (A014132 (n + 1)).toNat

end

end A185690.P15248616841822198286

/-! ## A185690.P11827677520415396245

`A147308(n)%A052275(A189905(n+1))`
-/

namespace A185690.P11827677520415396245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147308 n) (A052275 (A189905 (n + 1)).toNat)

end

end A185690.P11827677520415396245

/-!
# A185691: Fibonacci sequence with initial terms 10 and 21.

The programs for A185691, the canonical program `A185691.P5650969394531008940` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185691 has offset 0).

The definition of A185691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185691.P2272906065052057397

`ogf((10+11x)/(1-x-x^2))`
-/

namespace A185691.P2272906065052057397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 11] [1, -1, -1] n

end

end A185691.P2272906065052057397

namespace A185691

/-- `ogf((10+11x)/(1-x-x^2))` -/
def P2272906065052057397.Spec : Prop :=
  ∀ n, P2272906065052057397.a n = A185691 n

end A185691

/-! ## A185691.P5650969394531008940

`9*A000045(n+2)+A000032(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185691

/-- `9*A000045(n+2)+A000032(n+1)` -/
def P5650969394531008940.Spec : Prop :=
  ∀ n, P5650969394531008940.a n = A185691 n

theorem P5650969394531008940.correct : P5650969394531008940.Spec := by
  intro n
  simp only [A185691]

end A185691

/-! ## A185691.P17524071433304133077

`11*A000045(n)+10*A000045(n+1)`
-/

namespace A185691.P17524071433304133077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000045 n + 10 * A000045 (n + 1)

end

end A185691.P17524071433304133077

namespace A185691

/-- `11*A000045(n)+10*A000045(n+1)` -/
def P17524071433304133077.Spec : Prop :=
  ∀ n, P17524071433304133077.a n = A185691 n

end A185691

/-! ## A185691.P971353147214276681

`a(n-1)+a(n-2)` with `a(0)=10, a(1)=21`
-/

namespace A185691.P971353147214276681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 21] fun n a =>
  a (n - 1) + a (n - 2)

end

end A185691.P971353147214276681

namespace A185691

/-- `a(n-1)+a(n-2)` -/
def P971353147214276681.Spec : Prop :=
  ∀ n, (P971353147214276681.a n : ℤ) = A185691 n

end A185691

/-! ## A185691.P9973342345129375380

`A022138(n)+A020712(n)`
-/

namespace A185691.P9973342345129375380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A020712 n

end

end A185691.P9973342345129375380

namespace A185691

/-- `A022138(n)+A020712(n)` -/
def P9973342345129375380.Spec : Prop :=
  ∀ n, P9973342345129375380.a n = A185691 n

end A185691

/-! ## A185691.P2337907355429519706

`A156279(n)+A022118(n)`
-/

namespace A185691.P2337907355429519706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022118 n

end

end A185691.P2337907355429519706

namespace A185691

/-- `A156279(n)+A022118(n)` -/
def P2337907355429519706.Spec : Prop :=
  ∀ n, P2337907355429519706.a n = A185691 n

end A185691

/-! ## A185691.P6998073288965982118

`A184959(n)+A022346(n)`
-/

namespace A185691.P6998073288965982118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022346 n

end

end A185691.P6998073288965982118

namespace A185691

/-- `A184959(n)+A022346(n)` -/
def P6998073288965982118.Spec : Prop :=
  ∀ n, P6998073288965982118.a n = A185691 n

end A185691

/-! ## A185691.P16957798302433226454

`A190995(n)+A022104(n)`
-/

namespace A185691.P16957798302433226454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A022104 n

end

end A185691.P16957798302433226454

namespace A185691

/-- `A190995(n)+A022104(n)` -/
def P16957798302433226454.Spec : Prop :=
  ∀ n, P16957798302433226454.a n = A185691 n

end A185691

/-! ## A185691.P13789034485758326688

`A190996(n)+A022348(n)`
-/

namespace A185691.P13789034485758326688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A022348 n

end

end A185691.P13789034485758326688

namespace A185691

/-- `A190996(n)+A022348(n)` -/
def P13789034485758326688.Spec : Prop :=
  ∀ n, P13789034485758326688.a n = A185691 n

end A185691

/-! ## A185691.P9395602435120503180

`A280154(n)+A022350(n)`
-/

namespace A185691.P9395602435120503180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022350 n

end

end A185691.P9395602435120503180

namespace A185691

/-- `A280154(n)+A022350(n)` -/
def P9395602435120503180.Spec : Prop :=
  ∀ n, P9395602435120503180.a n = A185691 n

end A185691

/-! ## A185691.P15388276115228953179

`A022100(n+1)+A022093(n)`
-/

namespace A185691.P15388276115228953179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (n + 1) + A022093 n

end

end A185691.P15388276115228953179

namespace A185691

/-- `A022100(n+1)+A022093(n)` -/
def P15388276115228953179.Spec : Prop :=
  ∀ n, P15388276115228953179.a n = A185691 n

end A185691

/-! ## A185691.P11742252574351170618

`A022102(n)+A022092(n+1)`
-/

namespace A185691.P11742252574351170618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022092 (n + 1)

end

end A185691.P11742252574351170618

namespace A185691

/-- `A022102(n)+A022092(n+1)` -/
def P11742252574351170618.Spec : Prop :=
  ∀ n, P11742252574351170618.a n = A185691 n

end A185691

/-! ## A185691.P1458097097789608516

`A022101(n)+A022099(n+1)`
-/

namespace A185691.P1458097097789608516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022099 (n + 1)

end

end A185691.P1458097097789608516

namespace A185691

/-- `A022101(n)+A022099(n+1)` -/
def P1458097097789608516.Spec : Prop :=
  ∀ n, P1458097097789608516.a n = A185691 n

end A185691

/-! ## A185691.P10779914284834725790

`A022116(n)+A022091(n+1)`
-/

namespace A185691.P10779914284834725790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022091 (n + 1)

end

end A185691.P10779914284834725790

namespace A185691

/-- `A022116(n)+A022091(n+1)` -/
def P10779914284834725790.Spec : Prop :=
  ∀ n, P10779914284834725790.a n = A185691 n

end A185691

/-! ## A185691.P15085693688378651740

`A022114(n+1)+A022100(n)`
-/

namespace A185691.P15085693688378651740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 (n + 1) + A022100 n

end

end A185691.P15085693688378651740

namespace A185691

/-- `A022114(n+1)+A022100(n)` -/
def P15085693688378651740.Spec : Prop :=
  ∀ n, P15085693688378651740.a n = A185691 n

end A185691

/-! ## A185691.P6468100167138299563

`A022130(n+1)+A022098(n)`
-/

namespace A185691.P6468100167138299563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 (n + 1) + A022098 n

end

end A185691.P6468100167138299563

namespace A185691

/-- `A022130(n+1)+A022098(n)` -/
def P6468100167138299563.Spec : Prop :=
  ∀ n, P6468100167138299563.a n = A185691 n

end A185691

/-! ## A185691.P10209638193627435102

`A022140(n)+A022088(n+1)`
-/

namespace A185691.P10209638193627435102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n + A022088 (n + 1)

end

end A185691.P10209638193627435102

namespace A185691

/-- `A022140(n)+A022088(n+1)` -/
def P10209638193627435102.Spec : Prop :=
  ∀ n, P10209638193627435102.a n = A185691 n

end A185691

/-! ## A185691.P3654200652015694024

`A022123(n)+A022120(n+1)`
-/

namespace A185691.P3654200652015694024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022120 (n + 1)

end

end A185691.P3654200652015694024

namespace A185691

/-- `A022123(n)+A022120(n+1)` -/
def P3654200652015694024.Spec : Prop :=
  ∀ n, P3654200652015694024.a n = A185691 n

end A185691

/-! ## A185691.P6789819676445083868

`A022132(n)+A022112(n+1)`
-/

namespace A185691.P6789819676445083868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022112 (n + 1)

end

end A185691.P6789819676445083868

namespace A185691

/-- `A022132(n)+A022112(n+1)` -/
def P6789819676445083868.Spec : Prop :=
  ∀ n, P6789819676445083868.a n = A185691 n

end A185691

/-! ## A185691.P6171496267606772391

`A022345(n)+A022093(n+1)`
-/

namespace A185691.P6171496267606772391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022093 (n + 1)

end

end A185691.P6171496267606772391

namespace A185691

/-- `A022345(n)+A022093(n+1)` -/
def P6171496267606772391.Spec : Prop :=
  ∀ n, P6171496267606772391.a n = A185691 n

end A185691

/-!
# A185693: Partial products of A185956.

The programs for A185693, there is no canonical definition to state claims against.
-/

/-! ## A185693.P3645529407332244459

`∏[A185956(n+1)]`
-/

namespace A185693.P3645529407332244459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185693.P3645529407332244459

/-! ## A185693.P7280736879686657794

`∏[p?[A112232(A072062(n+1))]]`
-/

namespace A185693.P7280736879686657794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A072062 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185693.P7280736879686657794

/-! ## A185693.P5911236787606655685

`∏[p?[A074306(A074145(n+1))]]`
-/

namespace A185693.P5911236787606655685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A074145 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185693.P5911236787606655685

/-! ## A185693.P7697842534182560948

`∏[p?[A023444(A254054(n+1))]]`
-/

namespace A185693.P7697842534182560948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A254054 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185693.P7697842534182560948

/-!
# A185696: Eigensequence for the Gould sequence triangle (with general term A001316(n-k) if k<=n, 0 otherwise).

The programs for A185696, there is no canonical definition to state claims against.
-/

/-! ## A185696.P1949481930966650289

`A087834(A187151(n))`
-/

namespace A185696.P1949481930966650289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A187151 n).toNat

end

end A185696.P1949481930966650289

/-! ## A185696.P115340260782912875

`or(1, A001462(A149794(n)))`
-/

namespace A185696.P115340260782912875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001462 (A149794 n).toNat)

end

end A185696.P115340260782912875

/-! ## A185696.P1464874295439109283

`A248565(A330053(comp[9*n]))`
-/

namespace A185696.P1464874295439109283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A330053 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A185696.P1464874295439109283

/-! ## A185696.P8253143540995807828

`A114513(A000073(n+2))-2`
-/

namespace A185696.P8253143540995807828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114513 (A000073 (n + 2)).toNat - 2

end

end A185696.P8253143540995807828

/-!
# A185699: Expansion of (11 * E_2(x^11) - E_2(x)) / 2 in powers of x where E_2() is an Eisenstein series.

The programs for A185699, there is no canonical definition to state claims against.
-/

/-! ## A185699.P6852610252432976954

`A089959(A027104(n+1))*A096726(n)`
-/

namespace A185699.P6852610252432976954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089959 (A027104 (n + 1)).toNat * A096726 n

end

end A185699.P6852610252432976954

/-! ## A185699.P11996494436816475442

`A028594(n)*A151958(A329183(3*n+4))`
-/

namespace A185699.P11996494436816475442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A151958 (A329183 (3 * n + 4)).toNat

end

end A185699.P11996494436816475442

