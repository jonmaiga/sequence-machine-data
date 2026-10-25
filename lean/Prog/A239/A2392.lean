import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239200: Expansion of Pi in the irrational base b=log(7).

The programs for A239200, there is no canonical definition to state claims against.
-/

/-! ## A239200.P4808604998844930669

`A010055(A016993(A080036(n)²))`
-/

namespace A239200.P4808604998844930669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A016993 (A080036 n ^ 2).toNat).toNat

end

end A239200.P4808604998844930669

/-! ## A239200.P12900205981746859371

`A010051(A091898(2*n+5)%A000578(n+2))`
-/

namespace A239200.P12900205981746859371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (A091898 (2 * n + 5)) (A000578 (n + 2))).toNat

end

end A239200.P12900205981746859371

/-! ## A239200.P1201622186582158971

`A055641(A179937(5*n+12)%A242784(5*n+8))`
-/

namespace A239200.P1201622186582158971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.tmod (A179937 (5 * n + 12)) (A242784 (5 * n + 8))).toNat

end

end A239200.P1201622186582158971

/-! ## A239200.P9866502851592983489

`A003849(A261575(2*n)+A083492(n+1))`
-/

namespace A239200.P9866502851592983489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A261575 (2 * n) + A083492 (n + 1)).toNat

end

end A239200.P9866502851592983489

/-! ## A239200.P7537368549794064448

`A217207(A335243(n+2))`
-/

namespace A239200.P7537368549794064448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217207 (A335243 (n + 2)).toNat

end

end A239200.P7537368549794064448

/-!
# A239201: Expansion of -(x * sqrt(5*x^2 -6*x +1) -2*x^3 +3*x^2 -x) / ((3*x^2 -4*x +1) * sqrt(5*x^2 -6*x +1) +5*x^3 -11*x^2 +7*x -1).

The programs for A239201, the canonical program `A239201.P12977593979021015894` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239201 has offset 1).

The definition of A239201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239201.P12977593979021015894

`3*A242586(n)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239201

/-- `3*A242586(n)-1` -/
def P12977593979021015894.Spec : Prop :=
  ∀ n, P12977593979021015894.a n = A239201 (n + 1)

theorem P12977593979021015894.correct : P12977593979021015894.Spec := by
  intro n
  simp only [A239201, Nat.add_sub_cancel]

end A239201

/-! ## A239201.P13871949452044181384

`A242586(n)+A026375(n)`
-/

namespace A239201.P13871949452044181384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + A026375 n

end

end A239201.P13871949452044181384

namespace A239201

/-- `A242586(n)+A026375(n)` -/
def P13871949452044181384.Spec : Prop :=
  ∀ n, P13871949452044181384.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P10362227038516831455

`A126568(n)+∑[A126568(n)]`
-/

namespace A239201.P10362227038516831455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239201.P10362227038516831455

namespace A239201

/-- `A126568(n)+∑[A126568(n)]` -/
def P10362227038516831455.Spec : Prop :=
  ∀ n, P10362227038516831455.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P14732521047382164726

`A242586(n)+∑[A085362(n)]`
-/

namespace A239201.P14732521047382164726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239201.P14732521047382164726

namespace A239201

/-- `A242586(n)+∑[A085362(n)]` -/
def P14732521047382164726.Spec : Prop :=
  ∀ n, P14732521047382164726.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P10126214718102496101

`A242586(n)+∑[A026392(A004277(n))]`
-/

namespace A239201.P10126214718102496101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239201.P10126214718102496101

namespace A239201

/-- `A242586(n)+∑[A026392(A004277(n))]` -/
def P10126214718102496101.Spec : Prop :=
  ∀ n, P10126214718102496101.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P3485643482725475965

`A242586(n)+∑[A026392(A004275(n+1))]`
-/

namespace A239201.P3485643482725475965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A004275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239201.P3485643482725475965

namespace A239201

/-- `A242586(n)+∑[A026392(A004275(n+1))]` -/
def P3485643482725475965.Spec : Prop :=
  ∀ n, P3485643482725475965.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P12959924741370183759

`A242586(n)+∑[A026392(A028310(2*n))]`
-/

namespace A239201.P12959924741370183759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026392 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239201.P12959924741370183759

namespace A239201

/-- `A242586(n)+∑[A026392(A028310(2*n))]` -/
def P12959924741370183759.Spec : Prop :=
  ∀ n, P12959924741370183759.a n = A239201 (n + 1)

end A239201

/-! ## A239201.P5902195828653386423

`A242586(n)+A163841(∑[n])`
-/

namespace A239201.P5902195828653386423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + A163841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239201.P5902195828653386423

namespace A239201

/-- `A242586(n)+A163841(∑[n])` -/
def P5902195828653386423.Spec : Prop :=
  ∀ n, P5902195828653386423.a n = A239201 (n + 1)

end A239201

/-!
# A239204: Expansion of ((x-1)*sqrt(x^2-6*x+1)-x^2-4*x+1)/(8*x^3).

The programs for A239204, the canonical program `A239204.P16238939825905580694` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239204 has offset 0).

The definition of A239204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239204.P16238939825905580694

`(A001003(n+2)-A001003(n+1))/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A239204

/-- `(A001003(n+2)-A001003(n+1))/2` -/
def P16238939825905580694.Spec : Prop :=
  ∀ n, P16238939825905580694.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P4456880397091949419

`A006319(n+2)/4`
-/

namespace A239204.P4456880397091949419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 (n + 2) : ℚ) / 4

end

end A239204.P4456880397091949419

namespace A239204

/-- `A006319(n+2)/4` -/
def P4456880397091949419.Spec : Prop :=
  ∀ n, P4456880397091949419.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P6231171730303706140

`Δ[Δ[A104858(n)/2]]`
-/

namespace A239204.P6231171730303706140
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104858 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P6231171730303706140

namespace A239204

/-- `Δ[Δ[A104858(n)/2]]` -/
def P6231171730303706140.Spec : Prop :=
  ∀ n, P6231171730303706140.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P936579946486854053

`A172094(∑[n+1]+1)`
-/

namespace A239204.P936579946486854053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239204.P936579946486854053

namespace A239204

/-- `A172094(∑[n+1]+1)` -/
def P936579946486854053.Spec : Prop :=
  ∀ n, P936579946486854053.a n = A239204 n

end A239204

/-! ## A239204.P5631283556585334542

`Δ[A001003(n+1)/2]`
-/

namespace A239204.P5631283556585334542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P5631283556585334542

namespace A239204

/-- `Δ[A001003(n+1)/2]` -/
def P5631283556585334542.Spec : Prop :=
  ∀ n, P5631283556585334542.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P2984814637866636840

`Δ[abs(A080243(n+1)/2)]`
-/

namespace A239204.P2984814637866636840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A080243 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P2984814637866636840

namespace A239204

/-- `Δ[abs(A080243(n+1)/2)]` -/
def P2984814637866636840.Spec : Prop :=
  ∀ n, P2984814637866636840.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P7435703386044616635

`Δ[A010683(n)]-a(n-1)` with `a(0)=1`
-/

namespace A239204.P7435703386044616635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A239204.P7435703386044616635

namespace A239204

/-- `Δ[A010683(n)]-a(n-1)` -/
def P7435703386044616635.Spec : Prop :=
  ∀ n, P7435703386044616635.a n = A239204 n

end A239204

/-! ## A239204.P13754677055517606437

`∑[A065096(n)+A010683(n)]`
-/

namespace A239204.P13754677055517606437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 n + A010683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239204.P13754677055517606437

namespace A239204

/-- `∑[A065096(n)+A010683(n)]` -/
def P13754677055517606437.Spec : Prop :=
  ∀ n, P13754677055517606437.a n = A239204 n

end A239204

/-! ## A239204.P8708129877091530569

`A065096(n)+A001003(n+1)`
-/

namespace A239204.P8708129877091530569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 n + A001003 (n + 1)

end

end A239204.P8708129877091530569

namespace A239204

/-- `A065096(n)+A001003(n+1)` -/
def P8708129877091530569.Spec : Prop :=
  ∀ n, P8708129877091530569.a n = A239204 n

end A239204

/-! ## A239204.P17114371791959376296

`2*A010736(n)-A010683(n)`
-/

namespace A239204.P17114371791959376296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010736 n - A010683 n

end

end A239204.P17114371791959376296

namespace A239204

/-- `2*A010736(n)-A010683(n)` -/
def P17114371791959376296.Spec : Prop :=
  ∀ n, P17114371791959376296.a n = A239204 n

end A239204

/-! ## A239204.P13186197714424992584

`Δ[A100300(n+3)+A000034(n)]`
-/

namespace A239204.P13186197714424992584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P13186197714424992584

namespace A239204

/-- `Δ[A100300(n+3)+A000034(n)]` -/
def P13186197714424992584.Spec : Prop :=
  ∀ n, P13186197714424992584.a n = A239204 n

end A239204

/-! ## A239204.P786472977883618582

`Δ[A100300(n+3)+A000035(n)]`
-/

namespace A239204.P786472977883618582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P786472977883618582

namespace A239204

/-- `Δ[A100300(n+3)+A000035(n)]` -/
def P786472977883618582.Spec : Prop :=
  ∀ n, P786472977883618582.a n = A239204 n

end A239204

/-! ## A239204.P12130505244805808127

`A010683(n+1)-A001003(n+1)`
-/

namespace A239204.P12130505244805808127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 (n + 1) - A001003 (n + 1)

end

end A239204.P12130505244805808127

namespace A239204

/-- `A010683(n+1)-A001003(n+1)` -/
def P12130505244805808127.Spec : Prop :=
  ∀ n, P12130505244805808127.a n = A239204 n

end A239204

/-! ## A239204.P12785050882739468548

`A100299(n+4)-A100300(n+3)`
-/

namespace A239204.P12785050882739468548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100299 (n + 4) - A100300 (n + 3)

end

end A239204.P12785050882739468548

namespace A239204

/-- `A100299(n+4)-A100300(n+3)` -/
def P12785050882739468548.Spec : Prop :=
  ∀ n, P12785050882739468548.a n = A239204 n

end A239204

/-! ## A239204.P108589104667244410

`A010683(n+1)-A006318(n+1)/2`
-/

namespace A239204.P108589104667244410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010683 (n + 1) : ℚ) - (A006318 (n + 1) : ℚ) / 2

end

end A239204.P108589104667244410

namespace A239204

/-- `A010683(n+1)-A006318(n+1)/2` -/
def P108589104667244410.Spec : Prop :=
  ∀ n, P108589104667244410.a n = (A239204 n : ℚ)

end A239204

/-! ## A239204.P8177267571753803277

`A006318(n+1)+A010683(n+1)-A238113(n+1)`
-/

namespace A239204.P8177267571753803277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 1) + (A010683 (n + 1) - A238113 (n + 1))

end

end A239204.P8177267571753803277

namespace A239204

/-- `A006318(n+1)+A010683(n+1)-A238113(n+1)` -/
def P8177267571753803277.Spec : Prop :=
  ∀ n, P8177267571753803277.a n = A239204 n

end A239204

/-! ## A239204.P14578520786327227068

`A100299(n+3)+A100299(n+4)-A001003(n+1)`
-/

namespace A239204.P14578520786327227068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100299 (n + 3) + (A100299 (n + 4) - A001003 (n + 1))

end

end A239204.P14578520786327227068

namespace A239204

/-- `A100299(n+3)+A100299(n+4)-A001003(n+1)` -/
def P14578520786327227068.Spec : Prop :=
  ∀ n, P14578520786327227068.a n = A239204 n

end A239204

/-! ## A239204.P9305252376938546225

`A100300(n+3)+A100300(n+4)-A001003(n+1)`
-/

namespace A239204.P9305252376938546225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100300 (n + 3) + (A100300 (n + 4) - A001003 (n + 1))

end

end A239204.P9305252376938546225

namespace A239204

/-- `A100300(n+3)+A100300(n+4)-A001003(n+1)` -/
def P9305252376938546225.Spec : Prop :=
  ∀ n, P9305252376938546225.a n = A239204 n

end A239204

/-! ## A239204.P16757116841112360626

`Δ[A006318(n+1)/4]`
-/

namespace A239204.P16757116841112360626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239204.P16757116841112360626

namespace A239204

/-- `Δ[A006318(n+1)/4]` -/
def P16757116841112360626.Spec : Prop :=
  ∀ n, P16757116841112360626.a n = (A239204 n : ℚ)

end A239204

/-!
# A239206: a(n) is the total number of rows of circles of radius r packing into a circle of radius R, where r = R/2^n.

The programs for A239206, the canonical program `A239206.P4636770931478895770` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239206 has offset 0).

The definition of A239206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239206.P4636770931478895770

`2*floor(sqrt((2^n-1)²/3))+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239206

/-- `2*floor(sqrt((2^n-1)²/3))+1` -/
def P4636770931478895770.Spec : Prop :=
  ∀ n, P4636770931478895770.a n = A239206 n

theorem P4636770931478895770.correct : P4636770931478895770.Spec := by
  intro n
  simp only [A239206]

end A239206

/-! ## A239206.P917345499602170716

`or(1, floor(A283591(n)/sqrt(3)))`
-/

namespace A239206.P917345499602170716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(A283591 n : ℝ) / Real.sqrt (3 : ℝ)⌋

end

end A239206.P917345499602170716

namespace A239206

/-- `or(1, floor(A283591(n)/sqrt(3)))` -/
def P917345499602170716.Spec : Prop :=
  ∀ n, P917345499602170716.a n = A239206 n

end A239206

/-! ## A239206.P17220105215148172686

`(2*A293329(n)-1)^A014963(∑[A072683(n+1)])`
-/

namespace A239206.P17220105215148172686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A293329 n - 1 : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A239206.P17220105215148172686

namespace A239206

/-- `(2*A293329(n)-1)^A014963(∑[A072683(n+1)])` -/
def P17220105215148172686.Spec : Prop :=
  ∀ n, P17220105215148172686.a n = (A239206 n : ℚ)

end A239206

/-! ## A239206.P10776154693858213584

`and(2*A293329(n)-1, A008683(A206280(n+1)))`
-/

namespace A239206.P10776154693858213584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A293329 n - 1) (A008683 (A206280 (n + 1)).toNat)

end

end A239206.P10776154693858213584

namespace A239206

/-- `and(2*A293329(n)-1, A008683(A206280(n+1)))` -/
def P10776154693858213584.Spec : Prop :=
  ∀ n, P10776154693858213584.a n = A239206 n

end A239206

/-! ## A239206.P9920514805166008105

`A004273(A293329(n))`
-/

namespace A239206.P9920514805166008105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A293329 n).toNat

end

end A239206.P9920514805166008105

namespace A239206

/-- `A004273(A293329(n))` -/
def P9920514805166008105.Spec : Prop :=
  ∀ n, P9920514805166008105.a n = A239206 n

end A239206

/-!
# A239207: a(n) = |{0 < k <= n: k*p(n)*q(n)*r(n) - 1 is prime}|, where p(.), q(.) and r(.) are given by A000041, A000009 and A047967 respectively.

The programs for A239207, there is no canonical definition to state claims against.
-/

/-! ## A239207.P8155754822081594323

`A001221(A100355(2*n+5)+A010052(n+3))`
-/

namespace A239207.P8155754822081594323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100355 (2 * n + 5) + A010052 (n + 3)).toNat

end

end A239207.P8155754822081594323

/-! ## A239207.P16164592198198647401

`A001221(A035312(n)*A296245(n))`
-/

namespace A239207.P16164592198198647401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A035312 n * A296245 n).toNat

end

end A239207.P16164592198198647401

/-! ## A239207.P16491824270311582553

`A331921(or(A122075(n), A255056(n)))`
-/

namespace A239207.P16491824270311582553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331921 (Int.lor (A122075 n) (A255056 n)).toNat

end

end A239207.P16491824270311582553

/-!
# A239209: a(n) = |{0 < k < n: k*p(n)*(p(n)-1) + 1 is prime}|, where p(.) is the partition function (A000041).

The programs for A239209, there is no canonical definition to state claims against.
-/

/-! ## A239209.P492992878516195979

`A001221(A058490(n)*A333867(n+1))`
-/

namespace A239209.P492992878516195979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A058490 n * A333867 (n + 1)).toNat

end

end A239209.P492992878516195979

/-!
# A239210: Numbers k such that k^2 is not divisible by any of its nonzero digits.

The programs for A239210, there is no canonical definition to state claims against.
-/

/-! ## A239210.P13292366620850646793

`sqrt(A239211(n+1))`
-/

namespace A239210.P13292366620850646793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239211 (n + 1) : ℝ)

end

end A239210.P13292366620850646793

/-! ## A239210.P4469973829311150046

`root(A239211(n+1), 2%A077681(n+1))`
-/

namespace A239210.P4469973829311150046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239211 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A077681 (n + 1)) : ℝ))

end

end A239210.P4469973829311150046

/-! ## A239210.P12690719314858155488

`root(A239211(n+1), A001316(A001316(n)))`
-/

namespace A239210.P12690719314858155488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239211 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A239210.P12690719314858155488

/-! ## A239210.P11522496022371456738

`A014681(A014681(root(A239211(n+1), 2)))`
-/

namespace A239210.P11522496022371456738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 (SequenceMachineLib.roundAway ((A239211 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A239210.P11522496022371456738

/-! ## A239210.P11283459942567201190

`A239211(n+1)^2^A008683(A000043(A000005(n+1)))`
-/

namespace A239210.P11283459942567201190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239211 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A000043 (A000005 (n + 1)).toNat).toNat : ℤ) : ℝ)

end

end A239210.P11283459942567201190

/-!
# A239211: Squares that are not divisible by any of their nonzero digits.

The programs for A239211, there is no canonical definition to state claims against.
-/

/-! ## A239211.P10098956679768949040

`A239210(n+1)²`
-/

namespace A239211.P10098956679768949040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239210 (n + 1) ^ 2

end

end A239211.P10098956679768949040

/-! ## A239211.P15702161175153630259

`A239210(gcd(n, n+1)+n)^2`
-/

namespace A239211.P15702161175153630259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239210 (Nat.gcd n (n + 1) + n) ^ 2

end

end A239211.P15702161175153630259

/-! ## A239211.P11014495923259532120

`A239210(n+1)^gcd(2, A008586(n))`
-/

namespace A239211.P11014495923259532120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239210 (n + 1) ^ Int.gcd 2 (A008586 n)

end

end A239211.P11014495923259532120

/-! ## A239211.P9479151122062003645

`A239210(n+1)^A000005(A000040(n+1))`
-/

namespace A239211.P9479151122062003645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239210 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A239211.P9479151122062003645

/-! ## A239211.P11294442705490058328

`A239210(n+1)^(A008835(A008835(n+1)+1)+1)`
-/

namespace A239211.P11294442705490058328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239210 (n + 1) : ℚ) ^ (A008835 (A008835 (n + 1) + 1).toNat + 1 : ℤ)

end

end A239211.P11294442705490058328

/-! ## A239211.P17048177856353096011

`A000290(A239210(∑[2*n+1]/(n+1)))`
-/

namespace A239211.P17048177856353096011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A239210 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A239211.P17048177856353096011

/-! ## A239211.P9571535933877191175

`A000290(2*A239210(n+1)-A239210(n+1))`
-/

namespace A239211.P9571535933877191175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A239210 (n + 1) - A239210 (n + 1)).toNat

end

end A239211.P9571535933877191175

/-! ## A239211.P14299025560426842136

`A239210(n+1)^A000005(A000043(A000005(n+1)))`
-/

namespace A239211.P14299025560426842136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239210 (n + 1) : ℚ) ^ (A000005 (A000043 (A000005 (n + 1)).toNat).toNat : ℤ)

end

end A239211.P14299025560426842136

/-!
# A239212: Numbers k such that k^2 is divisible by each of its nonzero digits.

The programs for A239212, there is no canonical definition to state claims against.
-/

/-! ## A239212.P1231620571306082030

`sqrt(A239213(n+1))`
-/

namespace A239212.P1231620571306082030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239213 (n + 1) : ℝ)

end

end A239212.P1231620571306082030

/-! ## A239212.P8088531620450425668

`root(A239213(n+1), 2%A038772(n+1))`
-/

namespace A239212.P8088531620450425668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239213 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A038772 (n + 1)) : ℝ))

end

end A239212.P8088531620450425668

/-! ## A239212.P7584882624230633654

`root(A239213(n+1), 2)%A239211(n+1)`
-/

namespace A239212.P7584882624230633654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A239213 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A239211 (n + 1))

end

end A239212.P7584882624230633654

/-! ## A239212.P9615513352117879744

`root(A239213(n+1), A001316(A001316(n)))`
-/

namespace A239212.P9615513352117879744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239213 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A239212.P9615513352117879744

/-! ## A239212.P3290141037790578624

`root(A239213(n+1), A277561(A277561(n)))`
-/

namespace A239212.P3290141037790578624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239213 (n + 1) : ℝ) ^ (1 / (A277561 (A277561 n).toNat : ℝ))

end

end A239212.P3290141037790578624

/-! ## A239212.P4266712098963656656

`root(A239213(n+1), 2)%A000051(n)`
-/

namespace A239212.P4266712098963656656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A239213 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000051 n)

end

end A239212.P4266712098963656656

/-!
# A239213: Squares that are divisible by each of their nonzero digits.

The programs for A239213, there is no canonical definition to state claims against.
-/

/-! ## A239213.P5797197959504889600

`A239212(n+1)²`
-/

namespace A239213.P5797197959504889600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239212 (n + 1) ^ 2

end

end A239213.P5797197959504889600

/-! ## A239213.P17765270073200598498

`A239212(A000027(n+1))*A239212(n+1)`
-/

namespace A239213.P17765270073200598498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239212 (A000027 (n + 1)).toNat * A239212 (n + 1)

end

end A239213.P17765270073200598498

/-! ## A239213.P1894508858766286180

`A239212(n+1)^A000005(A000040(n+1))`
-/

namespace A239213.P1894508858766286180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239212 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A239213.P1894508858766286180

/-! ## A239213.P3149378753641134286

`A239212(n+1)^A000005(A132232(n+1))`
-/

namespace A239213.P3149378753641134286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239212 (n + 1) : ℚ) ^ (A000005 (A132232 (n + 1)).toNat : ℤ)

end

end A239213.P3149378753641134286

/-! ## A239213.P11908910550495865999

`A239212(n+1)^A000005(A249350(n+1))`
-/

namespace A239213.P11908910550495865999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239212 (n + 1) : ℚ) ^ (A000005 (A249350 (n + 1)).toNat : ℤ)

end

end A239213.P11908910550495865999

/-! ## A239213.P745194341863553483

`A239212(n+1)%A239212(n+2)*A239212(n+1)`
-/

namespace A239213.P745194341863553483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239212 (n + 1)) (A239212 (n + 2)) * A239212 (n + 1)

end

end A239213.P745194341863553483

/-! ## A239213.P9099356054601888855

`A239212(n+1)^A000005(A000043(A000005(n+1)))`
-/

namespace A239213.P9099356054601888855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239212 (n + 1) : ℚ) ^ (A000005 (A000043 (A000005 (n + 1)).toNat).toNat : ℤ)

end

end A239213.P9099356054601888855

/-! ## A239213.P9876868739854797475

`A000290(A239212(∑[2*n+1]/(n+1)))`
-/

namespace A239213.P9876868739854797475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A239212 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A239213.P9876868739854797475

/-! ## A239213.P16342473845877273856

`A000290(2*A239212(n+1)-A239212(n+1))`
-/

namespace A239213.P16342473845877273856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A239212 (n + 1) - A239212 (n + 1)).toNat

end

end A239213.P16342473845877273856

/-! ## A239213.P13027452897293011146

`A002620(2*A239212(n+1))`
-/

namespace A239213.P13027452897293011146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A239212 (n + 1)).toNat

end

end A239213.P13027452897293011146

/-! ## A239213.P8710673618892258998

`A002620(A239212(n+1)+A239212(n+1))`
-/

namespace A239213.P8710673618892258998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A239212 (n + 1) + A239212 (n + 1)).toNat

end

end A239213.P8710673618892258998

/-!
# A239214: a(n) = |{0 < k < n: p(k)*p(n)*(p(n)+1) - 1 is prime}|, where p(.) is the partition function (A000041).

The programs for A239214, there is no canonical definition to state claims against.
-/

/-! ## A239214.P3922505072045446521

`A001221(A332283(n)*A332577(4*n))`
-/

namespace A239214.P3922505072045446521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332283 n * A332577 (4 * n)).toNat

end

end A239214.P3922505072045446521

/-! ## A239214.P5778220624038617538

`A325225(∑[A379924(n+1)])`
-/

namespace A239214.P5778220624038617538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239214.P5778220624038617538

/-! ## A239214.P664052793318749601

`A213911(lcm(A000031(n), A195993(n+1)))`
-/

namespace A239214.P664052793318749601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.lcm (A000031 n) (A195993 (n + 1)))

end

end A239214.P664052793318749601

/-! ## A239214.P1148457877087848750

`A287407(A336342(n)+n)+A210608(n+1)`
-/

namespace A239214.P1148457877087848750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A336342 n + (n : ℤ)).toNat + A210608 (n + 1)

end

end A239214.P1148457877087848750

/-!
# A239215: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d >= e > f, and S is always extended with the smallest integer not yet present in S.

The programs for A239215, there is no canonical definition to state claims against.
-/

/-! ## A239215.P5173537388277081051

`lt[11*floor(n/10)-n, n^C(2, n)]`
-/

namespace A239215.P5173537388277081051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239215.P5173537388277081051

/-! ## A239215.P16046732260780339858

`lt[11*floor(n/10)-n, -floor(1/(γ-n))]`
-/

namespace A239215.P16046732260780339858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239215.P16046732260780339858

/-! ## A239215.P8180547155434841867

`eq[1, A095827(n+1)]`
-/

namespace A239215.P8180547155434841867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239215.P8180547155434841867

/-! ## A239215.P16186333659754733693

`lt[A076313(n+1), 1]+1`
-/

namespace A239215.P16186333659754733693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A239215.P16186333659754733693

/-! ## A239215.P1747458124871561482

`A076314(A071272(n+1))`
-/

namespace A239215.P1747458124871561482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A071272 (n + 1)).toNat

end

end A239215.P1747458124871561482

/-! ## A239215.P6031917729512098574

`A102827(n)%A039513(n)`
-/

namespace A239215.P6031917729512098574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102827 n) (A039513 n)

end

end A239215.P6031917729512098574

/-! ## A239215.P478632398625952373

`eq[A017887(n), A084904(n)]`
-/

namespace A239215.P478632398625952373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239215.P478632398625952373

/-! ## A239215.P7114611621059979665

`A000196(A131058(n+2)²)`
-/

namespace A239215.P7114611621059979665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A131058 (n + 2) ^ 2).toNat

end

end A239215.P7114611621059979665

/-! ## A239215.P3489335221006315953

`A000196(A131058(n+2)^2)`
-/

namespace A239215.P3489335221006315953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A131058 (n + 2) ^ 2).toNat

end

end A239215.P3489335221006315953

/-! ## A239215.P10696181364052098343

`A033677(A131058(n+2)^2)`
-/

namespace A239215.P10696181364052098343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A131058 (n + 2) ^ 2).toNat

end

end A239215.P10696181364052098343

/-!
# A239217: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d >= e = f, and S is always extended with the smallest integer not yet present in S.

The programs for A239217, there is no canonical definition to state claims against.
-/

/-! ## A239217.P7346224761664251402

`A000194(A130571(n+1)²)`
-/

namespace A239217.P7346224761664251402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A130571 (n + 1) ^ 2).toNat

end

end A239217.P7346224761664251402

/-! ## A239217.P416341623232998808

`A130571(record[xor(n, A151878(n))])`
-/

namespace A239217.P416341623232998808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A151878 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239217.P416341623232998808

/-! ## A239217.P8866862631410435354

`A259361((A130571(n+1)+1)²)`
-/

namespace A239217.P8866862631410435354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((A130571 (n + 1) + 1) ^ 2).toNat

end

end A239217.P8866862631410435354

/-! ## A239217.P15743965310811202072

`A130571(n+1)%A000537(A235395(n+1))`
-/

namespace A239217.P15743965310811202072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130571 (n + 1)) (A000537 (A235395 (n + 1)).toNat)

end

end A239217.P15743965310811202072

/-! ## A239217.P5938633048918505689

`A377961(n+1)%A114686(A046133(n+1))`
-/

namespace A239217.P5938633048918505689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377961 (n + 1)) (A114686 (A046133 (n + 1)).toNat)

end

end A239217.P5938633048918505689

/-! ## A239217.P7457225783883300051

`A130571(n+1)+A000007(A028552(n+10))`
-/

namespace A239217.P7457225783883300051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (n + 1) + A000007 (A028552 (n + 10)).toNat

end

end A239217.P7457225783883300051

/-! ## A239217.P6388041207512935469

`A130571(n+1)*A331048(A006530(n+1))`
-/

namespace A239217.P6388041207512935469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (n + 1) * A331048 (A006530 (n + 1)).toNat

end

end A239217.P6388041207512935469

/-! ## A239217.P3700245378333715511

`A377961(n+1)%A002189(n)`
-/

namespace A239217.P3700245378333715511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377961 (n + 1)) (A002189 n)

end

end A239217.P3700245378333715511

/-! ## A239217.P14608759687070415353

`A130573(A130572(n+1))`
-/

namespace A239217.P14608759687070415353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A130572 (n + 1)).toNat

end

end A239217.P14608759687070415353

/-! ## A239217.P11755226780396769115

`A130574(A130571(A130573(n+1)))`
-/

namespace A239217.P11755226780396769115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A130571 (A130573 (n + 1)).toNat).toNat

end

end A239217.P11755226780396769115

/-!
# A239218: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d = e < f, and S is always extended with the smallest integer not yet present in S.

The programs for A239218, there is no canonical definition to state claims against.
-/

/-! ## A239218.P4358498469214884950

`A271569(a(n-1))+2` with `a(0)=1`
-/

namespace A239218.P4358498469214884950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271569 (a (n - 1)).toNat + 2

end

end A239218.P4358498469214884950

/-! ## A239218.P8183056284119021671

`A216470(∑[n+2])+n+1`
-/

namespace A239218.P8183056284119021671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216470 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A239218.P8183056284119021671

/-! ## A239218.P8215503115777684127

`∑[n+2]^C(A082420(n+1), 64)²+n`
-/

namespace A239218.P8215503115777684127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.choose (A082420 (n + 1)).toNat 64 ^ 2 + n

end

end A239218.P8215503115777684127

/-! ## A239218.P11702582514915187833

`A275413(A161949(n+1))`
-/

namespace A239218.P11702582514915187833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275413 (A161949 (n + 1)).toNat

end

end A239218.P11702582514915187833

/-! ## A239218.P5287462226081031861

`A002464(A014378(n))+n`
-/

namespace A239218.P5287462226081031861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 (A014378 n).toNat + (n : ℤ)

end

end A239218.P5287462226081031861

/-!
# A239219: Numbers n such that n^3 is not divisible by any of its nonzero digits.

The programs for A239219, there is no canonical definition to state claims against.
-/

/-! ## A239219.P11748958539369794864

`root(A239220(n+1), 3)`
-/

namespace A239219.P11748958539369794864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239220 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A239219.P11748958539369794864

/-! ## A239219.P1138463661152719428

`A239220(A000027(n+1))^(1/3)`
-/

namespace A239219.P1138463661152719428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239220 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A239219.P1138463661152719428

/-! ## A239219.P2317132373424324201

`A100196(ceil(sqrt(A239220(n+1))))`
-/

namespace A239219.P2317132373424324201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A239220 (n + 1) : ℝ)⌉.toNat

end

end A239219.P2317132373424324201

/-! ## A239219.P3162806440586909115

`∏{p}[A239220(comp[17*n]), #]`
-/

namespace A239219.P3162806440586909115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239220 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A239219.P3162806440586909115

/-! ## A239219.P9680543133060307856

`A028310(∏{p}[A239220(n+1), #])`
-/

namespace A239219.P9680543133060307856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A239219.P9680543133060307856

/-!
# A239220: Cubes that are not divisible by any of their nonzero digits.

The programs for A239220, there is no canonical definition to state claims against.
-/

/-! ## A239220.P6276629795327549533

`A239219(n+1)^3`
-/

namespace A239220.P6276629795327549533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239219 (n + 1) ^ 3

end

end A239220.P6276629795327549533

/-! ## A239220.P14132928893563487854

`A239219(A000027(n+1))²*A239219(n+1)`
-/

namespace A239220.P14132928893563487854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239219 (A000027 (n + 1)).toNat ^ 2 * A239219 (n + 1)

end

end A239220.P14132928893563487854

/-! ## A239220.P331901050825064134

`record[A239219(A126759(n))^3]`
-/

namespace A239220.P331901050825064134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239219 (A126759 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239220.P331901050825064134

/-! ## A239220.P12461264112157247192

`A000578(A239219(n+1))`
-/

namespace A239220.P12461264112157247192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A239219 (n + 1)).toNat

end

end A239220.P12461264112157247192

/-! ## A239220.P11765428548414063103

`A239219(n+1)+A007531(A239219(n+1)+1)`
-/

namespace A239220.P11765428548414063103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239219 (n + 1) + A007531 (A239219 (n + 1) + 1).toNat

end

end A239220.P11765428548414063103

/-! ## A239220.P3315277963089494082

`A000027(A239219(n+1)²)²/A239219(n+1)`
-/

namespace A239220.P3315277963089494082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A239219 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A239219 (n + 1) : ℚ)

end

end A239220.P3315277963089494082

/-!
# A239221: Numbers n such that n^3 is divisible by each of its nonzero digits.

The programs for A239221, there is no canonical definition to state claims against.
-/

/-! ## A239221.P5909679344352141435

`root(A239222(n+1), 3)`
-/

namespace A239221.P5909679344352141435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239222 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A239221.P5909679344352141435

/-! ## A239221.P2870112008367894188

`A239222(A000027(n+1))^(1/3)`
-/

namespace A239221.P2870112008367894188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239222 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A239221.P2870112008367894188

/-! ## A239221.P8643067945794863662

`A100196(ceil(sqrt(A239222(n+1))))`
-/

namespace A239221.P8643067945794863662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A239222 (n + 1) : ℝ)⌉.toNat

end

end A239221.P8643067945794863662

/-!
# A239222: Cubes that are divisible by each of their nonzero digits.

The programs for A239222, there is no canonical definition to state claims against.
-/

/-! ## A239222.P6444977277142458411

`A239221(n+1)^3`
-/

namespace A239222.P6444977277142458411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239221 (n + 1) ^ 3

end

end A239222.P6444977277142458411

/-! ## A239222.P16888268478199236136

`A239221(A000027(n+1))²*A239221(n+1)`
-/

namespace A239222.P16888268478199236136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239221 (A000027 (n + 1)).toNat ^ 2 * A239221 (n + 1)

end

end A239222.P16888268478199236136

/-! ## A239222.P15549470941359149180

`(A239221(n+1)%A078853(n+1))²*A239221(n+1)`
-/

namespace A239222.P15549470941359149180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239221 (n + 1)) (A078853 (n + 1)) ^ 2 * A239221 (n + 1)

end

end A239222.P15549470941359149180

/-! ## A239222.P11506238970072087578

`record[A239221(A126759(n))^3]`
-/

namespace A239222.P11506238970072087578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239221 (A126759 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239222.P11506238970072087578

/-! ## A239222.P5530089675788428171

`A000578(A239221(n+1))`
-/

namespace A239222.P5530089675788428171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A239221 (n + 1)).toNat

end

end A239222.P5530089675788428171

/-! ## A239222.P14264879033970614581

`A000027(A239221(n+1)²)²/A239221(n+1)`
-/

namespace A239222.P14264879033970614581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A239221 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A239221 (n + 1) : ℚ)

end

end A239222.P14264879033970614581

/-!
# A239224: Numerator of 2n/v(n)^2, where v(1) = 0, v(2) = 1, and v(n) = v(n-1)/(n-2) + v(n-2) for n >= 3; limit of 2n/v(n)^2 is Pi.

The programs for A239224, there is no canonical definition to state claims against.
-/

/-! ## A239224.P13870914684116839867

`A061142(A167532(n))*A319605(n+1)`
-/

namespace A239224.P13870914684116839867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A167532 n).toNat * A319605 (n + 1)

end

end A239224.P13870914684116839867

/-!
# A239225: Denominator of 2n/v(n)^2, where v(1) = 0, v(2) = 1, and v(n) = v(n-1)/(n-2) + v(n-2) for n >= 3. (Limit of 2n/v(n)^2 is Pi.)

The programs for A239225, there is no canonical definition to state claims against.
-/

/-! ## A239225.P16577894998716092625

`A000265(lcm(A124444(n+1)², A352956(n)))`
-/

namespace A239225.P16577894998716092625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A124444 (n + 1) ^ 2) (A352956 n))

end

end A239225.P16577894998716092625

/-! ## A239225.P7083115512810137851

`A000265(A124444(n+1)²*A028234(n+1))`
-/

namespace A239225.P7083115512810137851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124444 (n + 1) ^ 2 * A028234 (n + 1)).toNat

end

end A239225.P7083115512810137851

/-! ## A239225.P3752273543446733393

`A000265(A028234(n+1)*A124444(n+1)*A124444(n+1))`
-/

namespace A239225.P3752273543446733393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A028234 (n + 1) * A124444 (n + 1) * A124444 (n + 1)).toNat

end

end A239225.P3752273543446733393

/-! ## A239225.P14261711565428418777

`A000265(lcm(A241530(n), A253909(n)))`
-/

namespace A239225.P14261711565428418777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A241530 n) (A253909 n))

end

end A239225.P14261711565428418777

/-!
# A239226: a(n) = A000984(n) * A081085(n).

The programs for A239226, there is no canonical definition to state claims against.
-/

/-! ## A239226.P5853959416218604338

`A000984(n)*A081085(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239226.P5853959416218604338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A081085 n

end

end A239226.P5853959416218604338

/-! ## A239226.P2567144815071012312

`record[A081668(n)]*A081085(n)`
-/

namespace A239226.P2567144815071012312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A081085 n

end

end A239226.P2567144815071012312

/-! ## A239226.P9399294235784607543

`record[A092392(n)]*A081085(n)`
-/

namespace A239226.P9399294235784607543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A081085 n

end

end A239226.P9399294235784607543

/-! ## A239226.P4960985475170637489

`A001405(2*n)*A081085(n)`
-/

namespace A239226.P4960985475170637489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A081085 n

end

end A239226.P4960985475170637489

/-! ## A239226.P5711599864991286068

`A063886(2*n)*A081085(n)`
-/

namespace A239226.P5711599864991286068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) * A081085 n

end

end A239226.P5711599864991286068

/-! ## A239226.P4725166925832323568

`A081085(n)*A081668(2*n)`
-/

namespace A239226.P4725166925832323568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081085 n * A081668 (2 * n)

end

end A239226.P4725166925832323568

/-! ## A239226.P5934225275950810168

`A007318(A046092(n))*A081085(n)`
-/

namespace A239226.P5934225275950810168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A081085 n

end

end A239226.P5934225275950810168

/-! ## A239226.P2819369147017458873

`A081085(n)*A092392(A000217(n))`
-/

namespace A239226.P2819369147017458873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081085 n * A092392 (A000217 n).toNat

end

end A239226.P2819369147017458873

/-! ## A239226.P5303013042628907905

`A081085(n)*A337499(A004273(n))`
-/

namespace A239226.P5303013042628907905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081085 n * A337499 (A004273 n).toNat

end

end A239226.P5303013042628907905

/-!
# A239227: Primes p of the form 4k + 3 such that A000120(p) >= A000120(3p).

The programs for A239227, there is no canonical definition to state claims against.
-/

/-! ## A239227.P1025908508749704609

`record[p?[2*A321902(n+1)+1]]`
-/

namespace A239227.P1025908508749704609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321902 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239227.P1025908508749704609

/-! ## A239227.P16630608316713837121

`record[p?[A334236(A194045(n))]]`
-/

namespace A239227.P16630608316713837121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334236 (A194045 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239227.P16630608316713837121

/-! ## A239227.P13355164254246147624

`record[p?[A005408(A321902(n+1))]]`
-/

namespace A239227.P13355164254246147624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A321902 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239227.P13355164254246147624

/-! ## A239227.P110763782647908575

`record[p?[A014601(A321902(n+2))]]`
-/

namespace A239227.P110763782647908575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A321902 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239227.P110763782647908575

/-!
# A239228: Number T(n,k) of partitions of n into distinct parts with standard deviation σ in the half-open interval [k,k+1); triangle T(n,k), n>=1, 0<=k<=max(0,floor(n/2)-1), read by rows.

The programs for A239228, there is no canonical definition to state claims against.
-/

/-! ## A239228.P6582728247706544448

`A280747(A267307(n+1)+3*(n+1))`
-/

namespace A239228.P6582728247706544448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280747 (A267307 (n + 1) + (3 * (n + 1) : ℤ)).toNat

end

end A239228.P6582728247706544448

/-! ## A239228.P8362910932692827050

`gcd(A127118(n+1), A329548(A293463(n)))`
-/

namespace A239228.P8362910932692827050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127118 (n + 1)) (A329548 (A293463 n).toNat)

end

end A239228.P8362910932692827050

/-! ## A239228.P8299716649802163036

`gcd(A001221(A005251(n+5)), A329739(n+1))`
-/

namespace A239228.P8299716649802163036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A005251 (n + 5)).toNat) (A329739 (n + 1))

end

end A239228.P8299716649802163036

/-! ## A239228.P11441691360124774444

`A325494(∑[A186003(n+1)]*A026239(n+1))`
-/

namespace A239228.P11441691360124774444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 ((∑ j ∈ Finset.range (n + 1), f1 j) * A026239 (n + 1)).toNat

end

end A239228.P11441691360124774444

/-! ## A239228.P7418772173962496357

`A362611(A285377(n+1)+A010874(n+2))`
-/

namespace A239228.P7418772173962496357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A285377 (n + 1) + A010874 (n + 2)).toNat

end

end A239228.P7418772173962496357

/-!
# A239229: Euler characteristic of n-holed torus: 2 - 2*n.

The programs for A239229, the canonical program `A239229.P5034501012662024907` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239229 has offset 0).

The definition of A239229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-2*n` (program `A239229.P5034501012662024907`, by `A239229.P5034501012662024907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239229.P5034501012662024907

`2-2*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239229

/-- `2-2*n` -/
def P5034501012662024907.Spec : Prop :=
  ∀ n, P5034501012662024907.a n = A239229 n

theorem P5034501012662024907.correct : P5034501012662024907.Spec := by
  intro n
  simp only [A239229]

end A239229

/-!
# A239230: Expansion of -x*log'(-sqrt(12*x+2*sqrt(1-4*x)+2)/4+sqrt(1-4*x)/4+5/4).

The programs for A239230, there is no canonical definition to state claims against.
-/

/-! ## A239230.P7018195243023401632

`A185812(A001105(n))-A000007(n)`
-/

namespace A239230.P7018195243023401632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185812 (A001105 n).toNat - A000007 n

end

end A239230.P7018195243023401632

/-! ## A239230.P9956259506305118542

`A057427(n)*A185812(A001105(n))`
-/

namespace A239230.P9956259506305118542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A185812 (A001105 n).toNat

end

end A239230.P9956259506305118542

/-! ## A239230.P5690593396083678781

`A178334(n)*A185812(A001105(n))`
-/

namespace A239230.P5690593396083678781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A185812 (A001105 n).toNat

end

end A239230.P5690593396083678781

/-! ## A239230.P849646021769546713

`char[A185812(n)]*A185812(A001105(n))`
-/

namespace A239230.P849646021769546713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185812 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A185812 (A001105 n).toNat

end

end A239230.P849646021769546713

/-! ## A239230.P16970602851273381132

`A185812(A001105(n))%∑[A149709(n)]`
-/

namespace A239230.P16970602851273381132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185812 (A001105 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239230.P16970602851273381132

/-!
# A239231: Heyawake numbers: maximum number of painted cells in an n X n grid, such that no two painted cells are orthogonally adjacent and the unpainted cells form a contiguous area.

The programs for A239231, there is no canonical definition to state claims against.
-/

/-! ## A239231.P1646002163975924886

`A215480(A005718(n))+A000212(n)`
-/

namespace A239231.P1646002163975924886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (A005718 n).toNat + A000212 n

end

end A239231.P1646002163975924886

/-! ## A239231.P3454881733857801804

`A215480(A005718(n))+∑[A004523(n)]`
-/

namespace A239231.P3454881733857801804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (A005718 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239231.P3454881733857801804

/-! ## A239231.P11049181618120125768

`A086747(A210373(n))+A000212(n)`
-/

namespace A239231.P11049181618120125768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A210373 n).toNat + A000212 n

end

end A239231.P11049181618120125768

/-! ## A239231.P595703695100507659

`A266666(A000051(n))+A000212(n)`
-/

namespace A239231.P595703695100507659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (A000051 n).toNat + A000212 n

end

end A239231.P595703695100507659

/-!
# A239233: Smaller member in a set of two distinct odd numbers the sum of whose reciprocals is 2/(2*n - 1), or 0 if no such integer exists.

The programs for A239233, there is no canonical definition to state claims against.
-/

/-! ## A239233.P16003156028048120135

`A023136(A056449(n))%Δ[A139693(n)]`
-/

namespace A239233.P16003156028048120135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023136 (A056449 n).toNat) (f1 (n + 1) - f1 n)

end

end A239233.P16003156028048120135

/-! ## A239233.P16705978700220672551

`A000005(A056450(n))*A005171(n+2)`
-/

namespace A239233.P16705978700220672551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056450 n).toNat * A005171 (n + 2)

end

end A239233.P16705978700220672551

/-! ## A239233.P16783958132513335188

`A000005(A056450(n))%A061026(n+1)`
-/

namespace A239233.P16783958132513335188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A056450 n).toNat) (A061026 (n + 1))

end

end A239233.P16783958132513335188

/-! ## A239233.P13628012430830499319

`A000005(A213173(n+1))*A005171(n+2)`
-/

namespace A239233.P13628012430830499319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A213173 (n + 1)).toNat * A005171 (n + 2)

end

end A239233.P13628012430830499319

/-! ## A239233.P7302000221902026965

`A000005(A056450(n))*A099494(A158971(n+1))`
-/

namespace A239233.P7302000221902026965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056450 n).toNat * A099494 (A158971 (n + 1)).toNat

end

end A239233.P7302000221902026965

/-!
# A239238: a(n) = |{0 <= k < n: q(n+k*(k+1)/2) + 1 is prime}|, where q(.) is the strict partition function given by A000009.

The programs for A239238, there is no canonical definition to state claims against.
-/

/-! ## A239238.P7983297611617216053

`A344961(A335197(n+1))`
-/

namespace A239238.P7983297611617216053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344961 (A335197 (n + 1)).toNat

end

end A239238.P7983297611617216053

/-! ## A239238.P1139759941239978046

`A213712(n)+A185114(A107243(n))`
-/

namespace A239238.P1139759941239978046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n + A185114 (A107243 n).toNat

end

end A239238.P1139759941239978046

/-!
# A239239: Number of strict partitions of n having fewer odd parts than even.

The programs for A239239, there is no canonical definition to state claims against.
-/

/-! ## A239239.P9904143817697852420

`A000009(n)-A239243(n)`
-/

namespace A239239.P9904143817697852420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A239243 n

end

end A239239.P9904143817697852420

/-! ## A239239.P6595638869702167852

`A239240(n)-A239241(n)`
-/

namespace A239239.P6595638869702167852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n - A239241 n

end

end A239239.P6595638869702167852

/-! ## A239239.P13292383213518265340

`∑[A087897(n)]-A239243(n)`
-/

namespace A239239.P13292383213518265340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239243 n

end

end A239239.P13292383213518265340

/-! ## A239239.P9219775238292452671

`A111133(n)+1-A239243(n)`
-/

namespace A239239.P9219775238292452671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A239243 n)

end

end A239239.P9219775238292452671

/-! ## A239239.P1904640863850813978

`ceil(A333147(n)/2-A239243(n))`
-/

namespace A239239.P1904640863850813978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2 - (A239243 n : ℚ)⌉

end

end A239239.P1904640863850813978

/-! ## A239239.P11854901448505512369

`A000009(n)-(A239242(n)+A239241(n))`
-/

namespace A239239.P11854901448505512369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A239242 n + A239241 n)

end

end A239239.P11854901448505512369

/-! ## A239239.P12731890597310664462

`A239240(n)+A239242(n)-A239243(n)`
-/

namespace A239239.P12731890597310664462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A239243 n)

end

end A239239.P12731890597310664462

/-! ## A239239.P6412677525280740704

`A096765(n+1)+A096765(n)-A239243(n)`
-/

namespace A239239.P6412677525280740704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - A239243 n

end

end A239239.P6412677525280740704

/-! ## A239239.P9379428893847328070

`A035457(2*n)-A239243(n)`
-/

namespace A239239.P9379428893847328070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A239243 n

end

end A239239.P9379428893847328070

/-! ## A239239.P10546088811854125220

`A143229(n)/A000070(n)-A047967(n)-A239243(n)`
-/

namespace A239239.P10546088811854125220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A047967 n : ℚ) - (A239243 n : ℚ)

end

end A239239.P10546088811854125220

/-! ## A239239.P10465563437184755976

`A239240(n)+A239880(n)-A239881(n)`
-/

namespace A239239.P10465563437184755976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239880 n - A239881 n)

end

end A239239.P10465563437184755976

/-!
# A239240: Number of partitions of n into distinct parts for which (number of odd parts) <= (number of even parts).

The programs for A239240, there is no canonical definition to state claims against.
-/

/-! ## A239240.P2544983337065962825

`A239241(n)+A239239(n)`
-/

namespace A239240.P2544983337065962825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n + A239239 n

end

end A239240.P2544983337065962825

/-! ## A239240.P6710625308192788971

`A000009(n)-A239242(n)`
-/

namespace A239240.P6710625308192788971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A239242 n

end

end A239240.P6710625308192788971

/-! ## A239240.P12866066831700056320

`abs(A081360(n))-A239242(n)`
-/

namespace A239240.P12866066831700056320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A239242 n

end

end A239240.P12866066831700056320

/-! ## A239240.P9418828450847916672

`∑[A087897(n)]-A239242(n)`
-/

namespace A239240.P9418828450847916672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239242 n

end

end A239240.P9418828450847916672

/-! ## A239240.P8854006392976454651

`A111133(n)+1-A239242(n)`
-/

namespace A239240.P8854006392976454651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A239242 n)

end

end A239240.P8854006392976454651

/-! ## A239240.P3598242110248881879

`A000009(n)+A239241(n)-A239243(n)`
-/

namespace A239240.P3598242110248881879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A239241 n - A239243 n)

end

end A239240.P3598242110248881879

/-! ## A239240.P17580094360098655339

`A239239(n)+A239243(n)-A239242(n)`
-/

namespace A239240.P17580094360098655339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A239242 n)

end

end A239240.P17580094360098655339

/-! ## A239240.P14884398507545256431

`A035457(2*n)-A239242(n)`
-/

namespace A239240.P14884398507545256431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A239242 n

end

end A239240.P14884398507545256431

/-! ## A239240.P7496357721872150571

`A239239(n)+A239881(n)-A239880(n)`
-/

namespace A239240.P7496357721872150571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239881 n - A239880 n)

end

end A239240.P7496357721872150571

/-!
# A239241: Number of partitions of n into distinct parts for which (number of odd parts) = (number of even parts).

The programs for A239241, there is no canonical definition to state claims against.
-/

/-! ## A239241.P9112996380847638112

`A239240(n)-A239239(n)`
-/

namespace A239241.P9112996380847638112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n - A239239 n

end

end A239241.P9112996380847638112

/-! ## A239241.P11438962631189760265

`A239243(n)-A239242(n)`
-/

namespace A239241.P11438962631189760265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 n - A239242 n

end

end A239241.P11438962631189760265

/-! ## A239241.P8948861489001996139

`A000009(n)-(A239242(n)+A239239(n))`
-/

namespace A239241.P8948861489001996139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A239242 n + A239239 n)

end

end A239241.P8948861489001996139

/-! ## A239241.P12471438344154244219

`A239240(n)+A239243(n)-A000009(n)`
-/

namespace A239241.P12471438344154244219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239243 n - A000009 n)

end

end A239241.P12471438344154244219

/-! ## A239241.P4774232554182590255

`A239881(n)-A239880(n)`
-/

namespace A239241.P4774232554182590255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 n - A239880 n

end

end A239241.P4774232554182590255

/-! ## A239241.P3535960550953455991

`A239881(n)-(A239871(n+1)+A239871(n))`
-/

namespace A239241.P3535960550953455991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 n - (A239871 (n + 1) + A239871 n)

end

end A239241.P3535960550953455991

/-!
# A239242: Number of partitions of n into distinct parts for which (number of odd parts) > (number of even parts).

The programs for A239242, there is no canonical definition to state claims against.
-/

/-! ## A239242.P167541280378775341

`A000009(n)-A239240(n)`
-/

namespace A239242.P167541280378775341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A239240 n

end

end A239242.P167541280378775341

/-! ## A239242.P10958966267350265717

`A239243(n)-A239241(n)`
-/

namespace A239242.P10958966267350265717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 n - A239241 n

end

end A239242.P10958966267350265717

/-! ## A239242.P2777642955412645709

`∑[A087897(n)]-A239240(n)`
-/

namespace A239242.P2777642955412645709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239240 n

end

end A239242.P2777642955412645709

/-! ## A239242.P4296535046094775751

`A111133(n)+1-A239240(n)`
-/

namespace A239242.P4296535046094775751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A239240 n)

end

end A239242.P4296535046094775751

/-! ## A239242.P11148281160294408621

`ceil(A333147(n)/2-A239240(n))`
-/

namespace A239242.P11148281160294408621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2 - (A239240 n : ℚ)⌉

end

end A239242.P11148281160294408621

/-! ## A239242.P8931210836541199564

`A000009(n)-(A239241(n)+A239239(n))`
-/

namespace A239242.P8931210836541199564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A239241 n + A239239 n)

end

end A239242.P8931210836541199564

/-! ## A239242.P13679909449286899183

`A239239(n)+A239243(n)-A239240(n)`
-/

namespace A239242.P13679909449286899183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A239240 n)

end

end A239242.P13679909449286899183

/-! ## A239242.P8747834006205390810

`A096765(n+1)+A096765(n)-A239240(n)`
-/

namespace A239242.P8747834006205390810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - A239240 n

end

end A239242.P8747834006205390810

/-! ## A239242.P3055207057100098133

`A035457(2*n)-A239240(n)`
-/

namespace A239242.P3055207057100098133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A239240 n

end

end A239242.P3055207057100098133

/-! ## A239242.P16039022034891871245

`A143229(n)/A000070(n)-A047967(n)-A239240(n)`
-/

namespace A239242.P16039022034891871245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A047967 n : ℚ) - (A239240 n : ℚ)

end

end A239242.P16039022034891871245

/-! ## A239242.P9505655949102485596

`A239243(n)+A239880(n)-A239881(n)`
-/

namespace A239242.P9505655949102485596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 n + (A239880 n - A239881 n)

end

end A239242.P9505655949102485596

/-! ## A239242.P7030115384332655742

`A332281(n)+A332280(n)-A047967(n)-A239240(n)`
-/

namespace A239242.P7030115384332655742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A332280 n - A047967 n - A239240 n

end

end A239242.P7030115384332655742

/-! ## A239242.P4830523227384005961

`A325833(n)+A325832(n)-A047967(n)-A239240(n)`
-/

namespace A239242.P4830523227384005961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325833 n + A325832 n - A047967 n - A239240 n

end

end A239242.P4830523227384005961

/-!
# A239243: Number of partitions of n into distinct parts for which (number of odd parts) >= (number of even parts).

The programs for A239243, there is no canonical definition to state claims against.
-/

/-! ## A239243.P328741358010283744

`A239242(n)+A239241(n)`
-/

namespace A239243.P328741358010283744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239242 n + A239241 n

end

end A239243.P328741358010283744

/-! ## A239243.P9070269756281946932

`A000009(n)-A239239(n)`
-/

namespace A239243.P9070269756281946932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A239239 n

end

end A239243.P9070269756281946932

/-! ## A239243.P8564644241494997508

`abs(A081360(n))-A239239(n)`
-/

namespace A239243.P8564644241494997508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A239239 n

end

end A239243.P8564644241494997508

/-! ## A239243.P16880766598173249599

`∑[A087897(n)]-A239239(n)`
-/

namespace A239243.P16880766598173249599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239239 n

end

end A239243.P16880766598173249599

/-! ## A239243.P7314075149768227562

`A111133(n)+1-A239239(n)`
-/

namespace A239243.P7314075149768227562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A239239 n)

end

end A239243.P7314075149768227562

/-! ## A239243.P15899066198707973830

`A000009(n)+A239241(n)-A239240(n)`
-/

namespace A239243.P15899066198707973830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A239241 n - A239240 n)

end

end A239243.P15899066198707973830

/-! ## A239243.P14896610262023264144

`A239240(n)+A239242(n)-A239239(n)`
-/

namespace A239243.P14896610262023264144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A239239 n)

end

end A239243.P14896610262023264144

/-! ## A239243.P5394342395917716705

`A035457(2*n)-A239239(n)`
-/

namespace A239243.P5394342395917716705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A239239 n

end

end A239243.P5394342395917716705

/-! ## A239243.P9505819571168933554

`A239242(n)+A239881(n)-A239880(n)`
-/

namespace A239243.P9505819571168933554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239242 n + (A239881 n - A239880 n)

end

end A239243.P9505819571168933554

/-! ## A239243.P12112914088745431176

`A237668(n)+A237667(n)-A047967(n)-A239239(n)`
-/

namespace A239243.P12112914088745431176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237668 n + A237667 n - A047967 n - A239239 n

end

end A239243.P12112914088745431176

/-!
# A239244: Integers m such that the sum of the integers x <= m coprime to m ends with digits of m.

The programs for A239244, there is no canonical definition to state claims against.
-/

/-! ## A239244.P724372411244360454

`A068652(A320173(n+1))+1`
-/

namespace A239244.P724372411244360454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A320173 (n + 1)).toNat + 1

end

end A239244.P724372411244360454

/-!
# A239246: Number of primitive Heronian triangles with n as greatest side length.

The programs for A239246, there is no canonical definition to state claims against.
-/

/-! ## A239246.P14437436593750173761

`∑{d}[n+1, A008683(#)*A054875((n+1)/#)]`
-/

namespace A239246.P14437436593750173761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054875 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A239246.P14437436593750173761

/-! ## A239246.P6803855398121850183

`A276010(n)%A096591(A023420(n+1))`
-/

namespace A239246.P6803855398121850183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276010 n) (A096591 (A023420 (n + 1)).toNat)

end

end A239246.P6803855398121850183

/-! ## A239246.P11604929848919151908

`A007814(A260120(n+1)+A009963(n+4))`
-/

namespace A239246.P11604929848919151908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A260120 (n + 1) + A009963 (n + 4)).toNat

end

end A239246.P11604929848919151908

/-! ## A239246.P5467812920104944591

`A110656(n+1)%A096591(A023420(n+1))`
-/

namespace A239246.P5467812920104944591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110656 (n + 1)) (A096591 (A023420 (n + 1)).toNat)

end

end A239246.P5467812920104944591

/-! ## A239246.P600954759246760024

`A156684(n+1)%A096591(A023420(n+1))`
-/

namespace A239246.P600954759246760024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156684 (n + 1)) (A096591 (A023420 (n + 1)).toNat)

end

end A239246.P600954759246760024

/-!
# A239247: Numbers n such that n^4 can be written as a sum of five distinct positive 4th powers.

The programs for A239247, there is no canonical definition to state claims against.
-/

/-! ## A239247.P14988425561923604441

`lt[A335166(n²), A335108(n+1)]`
-/

namespace A239247.P14988425561923604441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335166 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239247.P14988425561923604441

/-! ## A239247.P12005324688633146327

`5*A005767(n+1)%A331674(n+1)`
-/

namespace A239247.P12005324688633146327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A005767 (n + 1)) (A331674 (n + 1))

end

end A239247.P12005324688633146327

/-! ## A239247.P5343347648796496271

`5*A085837(n+1)%A331674(n+1)`
-/

namespace A239247.P5343347648796496271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A085837 (n + 1)) (A331674 (n + 1))

end

end A239247.P5343347648796496271

/-! ## A239247.P1281735967677198255

`A005767(n+1)*A006530(A005030(n))`
-/

namespace A239247.P1281735967677198255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1) * A006530 (A005030 n).toNat

end

end A239247.P1281735967677198255

/-! ## A239247.P14834634051398222803

`A006530(A005030(n))*A085837(n+1)`
-/

namespace A239247.P14834634051398222803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005030 n).toNat * A085837 (n + 1)

end

end A239247.P14834634051398222803

/-!
# A239248: Number of n X n 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it, modulo 5.

The programs for A239248, there is no canonical definition to state claims against.
-/

/-! ## A239248.P16660063464463718553

`A239256((n+1)²+n²)`
-/

namespace A239248.P16660063464463718553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 ((n + 1) ^ 2 + n ^ 2)

end

end A239248.P16660063464463718553

/-!
# A239249: Number of n X 1 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239249, the canonical program `A239249.P5156503286635063023` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239249 has offset 1).

The definition of A239249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239249.P13693439169099281843

`ogf((4+x+2x^2)/(1-3x-2x^3))`
-/

namespace A239249.P13693439169099281843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 2] [1, -3, 0, -2] n

end

end A239249.P13693439169099281843

namespace A239249

/-- `ogf((4+x+2x^2)/(1-3x-2x^3))` -/
def P13693439169099281843.Spec : Prop :=
  ∀ n, P13693439169099281843.a n = A239249 (n + 1)

end A239249

/-! ## A239249.P5156503286635063023

`3*a(n-1)+2*a(n-3)` with `a(0)=4, a(1)=13, a(2)=41`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239249

/-- `3*a(n-1)+2*a(n-3)` -/
def P5156503286635063023.Spec : Prop :=
  ∀ n, (P5156503286635063023.a n : ℤ) = A239249 (n + 1)

theorem P5156503286635063023.correct : P5156503286635063023.Spec := by
  intro n
  simp only [A239249, Nat.add_sub_cancel]

end A239249

/-! ## A239249.P14747736575516500490

`A239256(∑[n]+1)`
-/

namespace A239249.P14747736575516500490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239249.P14747736575516500490

namespace A239249

/-- `A239256(∑[n]+1)` -/
def P14747736575516500490.Spec : Prop :=
  ∀ n, P14747736575516500490.a n = A239249 (n + 1)

end A239249

/-! ## A239249.P1025955100781187278

`record[root(A239256(n+1), A028313(n))]`
-/

namespace A239249.P1025955100781187278
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239256 (n + 1) : ℝ) ^ (1 / (A028313 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239249.P1025955100781187278

namespace A239249

/-- `record[root(A239256(n+1), A028313(n))]` -/
def P1025955100781187278.Spec : Prop :=
  ∀ n, P1025955100781187278.a n = (A239249 (n + 1) : ℝ)

end A239249

/-! ## A239249.P2093942376700721541

`record[gcd(A002262(n), A239256(n+1))]`
-/

namespace A239249.P2093942376700721541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A239256 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239249.P2093942376700721541

namespace A239249

/-- `record[gcd(A002262(n), A239256(n+1))]` -/
def P2093942376700721541.Spec : Prop :=
  ∀ n, (P2093942376700721541.a n : ℤ) = A239249 (n + 1)

end A239249

/-!
# A239250: Number of nX2 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239250, there is no canonical definition to state claims against.
-/

/-! ## A239250.P1685134823848725045

`A239256(∑[n+1]+2)`
-/

namespace A239250.P1685134823848725045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239250.P1685134823848725045

/-! ## A239250.P9348771019810047062

`record[gcd(A002262(n), A239256(n+2))]`
-/

namespace A239250.P9348771019810047062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A239256 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239250.P9348771019810047062

/-! ## A239250.P8882724323471742416

`record[root(A239256(n+2), A028313(n+2))]`
-/

namespace A239250.P8882724323471742416
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239256 (n + 2) : ℝ) ^ (1 / (A028313 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239250.P8882724323471742416

/-! ## A239250.P11209432635338847284

`A151878(n)!*A239256(A000096(n+1))`
-/

namespace A239250.P11209432635338847284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * A239256 (A000096 (n + 1)).toNat

end

end A239250.P11209432635338847284

/-! ## A239250.P312895800991788975

`A239256(A000096(n+1))+A151878(n+1)`
-/

namespace A239250.P312895800991788975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A000096 (n + 1)).toNat + A151878 (n + 1)

end

end A239250.P312895800991788975

/-!
# A239251: Number of nX3 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239251, there is no canonical definition to state claims against.
-/

/-! ## A239251.P8054255818682050366

`A239256(∑[n+2]+4)`
-/

namespace A239251.P8054255818682050366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239251.P8054255818682050366

/-! ## A239251.P5303423863344369206

`lcm(A033999(n), A239256(A167614(n+1)))`
-/

namespace A239251.P5303423863344369206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A239256 (A167614 (n + 1)).toNat)

end

end A239251.P5303423863344369206

/-! ## A239251.P14963480187450208219

`or(A000007(n), A239256(A167614(n+1)))`
-/

namespace A239251.P14963480187450208219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239256 (A167614 (n + 1)).toNat)

end

end A239251.P14963480187450208219

/-! ## A239251.P4433248091355616354

`or(A097479(n), A239256(A167614(n+1)))`
-/

namespace A239251.P4433248091355616354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097479 n) (A239256 (A167614 (n + 1)).toNat)

end

end A239251.P4433248091355616354

/-! ## A239251.P2144213810935040433

`A239256(A167614(n+1))%A239252(n+1)`
-/

namespace A239251.P2144213810935040433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239256 (A167614 (n + 1)).toNat) (A239252 (n + 1))

end

end A239251.P2144213810935040433

/-!
# A239252: Number of nX4 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239252, there is no canonical definition to state claims against.
-/

/-! ## A239252.P8105954901655001820

`A239256(A374004(n+1))`
-/

namespace A239252.P8105954901655001820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A374004 (n + 1)).toNat

end

end A239252.P8105954901655001820

/-! ## A239252.P17752568377703123095

`A239256(A052905(n)+9)`
-/

namespace A239252.P17752568377703123095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A052905 n + 9).toNat

end

end A239252.P17752568377703123095

/-! ## A239252.P11895575774055299411

`A239256(A055999(n)+10)`
-/

namespace A239252.P11895575774055299411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A055999 n + 10).toNat

end

end A239252.P11895575774055299411

/-! ## A239252.P16527363455548309573

`A239256(A167614(n+2)+1)`
-/

namespace A239252.P16527363455548309573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A167614 (n + 2) + 1).toNat

end

end A239252.P16527363455548309573

/-! ## A239252.P4547818120998382723

`A239256(A141214(n+1))`
-/

namespace A239252.P4547818120998382723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A141214 (n + 1)).toNat

end

end A239252.P4547818120998382723

/-!
# A239253: Number of nX5 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239253, there is no canonical definition to state claims against.
-/

/-! ## A239253.P1798123540620647913

`A239256(A374005(n+1))`
-/

namespace A239253.P1798123540620647913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A374005 (n + 1)).toNat

end

end A239253.P1798123540620647913

/-! ## A239253.P8034100584750549789

`A239256(A046691(n+3))`
-/

namespace A239253.P8034100584750549789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A046691 (n + 3)).toNat

end

end A239253.P8034100584750549789

/-! ## A239253.P3573085914257969352

`A239256(eq[5, A194921(n+1)])`
-/

namespace A239253.P3573085914257969352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239253.P3573085914257969352

/-!
# A239254: Number of nX6 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 5.

The programs for A239254, there is no canonical definition to state claims against.
-/

/-! ## A239254.P4715700555237723764

`A239256(A374007(n+1))`
-/

namespace A239254.P4715700555237723764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (A374007 (n + 1)).toNat

end

end A239254.P4715700555237723764

/-! ## A239254.P3693688941380269142

`A239256(eq[10, A143956(n+1)])`
-/

namespace A239254.P3693688941380269142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239254.P3693688941380269142

/-! ## A239254.P211772039930784053

`A239256(Δ[Δ[A006504(n+1)]])`
-/

namespace A239254.P211772039930784053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239256 (f1 (n + 1) - f1 n).toNat

end

end A239254.P211772039930784053

/-!
# A239256: T(n,k)=Number of nXk 0..4 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it, modulo 5.

The programs for A239256, there is no canonical definition to state claims against.
-/

/-! ## A239256.P18444590241840830682

`A008475(4*A287743(n))`
-/

namespace A239256.P18444590241840830682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (4 * A287743 n).toNat

end

end A239256.P18444590241840830682

/-!
# A239257: Number of canyon polycubes of a given volume.

The programs for A239257, there is no canonical definition to state claims against.
-/

/-! ## A239257.P12388204911370794360

`A001462(floor(sqrt(A036224(n))))`
-/

namespace A239257.P12388204911370794360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.sqrt (A036224 n)).toNat

end

end A239257.P12388204911370794360

/-! ## A239257.P6215878301501645061

`A001462(round(sqrt(A036224(n))))`
-/

namespace A239257.P6215878301501645061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway (Real.sqrt (A036224 n : ℝ))).toNat

end

end A239257.P6215878301501645061

/-! ## A239257.P13982742617587368675

`A157271(A067988(n)+A022331(n))`
-/

namespace A239257.P13982742617587368675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A067988 n + A022331 n).toNat

end

end A239257.P13982742617587368675

/-!
# A239258: Number of partitions of 2*n having twice as many odd parts as even.

The programs for A239258, there is no canonical definition to state claims against.
-/

/-! ## A239258.P9318353401017603461

`A346700(A000108(n))+A052847(n)`
-/

namespace A239258.P9318353401017603461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A000108 n).toNat + A052847 n

end

end A239258.P9318353401017603461

/-! ## A239258.P16553601037651521940

`A357640(n)-A339051(A080923(n))`
-/

namespace A239258.P16553601037651521940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357640 n - A339051 (A080923 n).toNat

end

end A239258.P16553601037651521940

/-! ## A239258.P6440231788752153104

`A357640(n)-A014382(A189873(n+1))`
-/

namespace A239258.P6440231788752153104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357640 n - A014382 (A189873 (n + 1)).toNat

end

end A239258.P6440231788752153104

/-! ## A239258.P10572825422521260134

`A117332(A014214(n))-char[A079339(n+1)]`
-/

namespace A239258.P10572825422521260134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A014214 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A239258.P10572825422521260134

/-!
# A239259: Number of partitions of n having (sum of odd parts) < (sum of even parts).

The programs for A239259, there is no canonical definition to state claims against.
-/

/-! ## A239259.P6075167804509511978

`A027187(n)+A027193(n)-A239263(n)`
-/

namespace A239259.P6075167804509511978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A239263 n)

end

end A239259.P6075167804509511978

/-! ## A239259.P14830556468957018283

`A239260(n)+A239262(n)-A239263(n)`
-/

namespace A239259.P14830556468957018283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A239263 n)

end

end A239259.P14830556468957018283

/-! ## A239259.P1482215720548151739

`A000041(n)-A239263(n)`
-/

namespace A239259.P1482215720548151739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239263 n

end

end A239259.P1482215720548151739

/-! ## A239259.P17063888347743555968

`∑[A002865(n)]-A239263(n)`
-/

namespace A239259.P17063888347743555968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239263 n

end

end A239259.P17063888347743555968

/-! ## A239259.P13056727968371433108

`A000065(n)+1-A239263(n)`
-/

namespace A239259.P13056727968371433108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239263 n)

end

end A239259.P13056727968371433108

/-! ## A239259.P3713632497684507759

`∑[A085811(n+3)]-A239263(n)`
-/

namespace A239259.P3713632497684507759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239263 n

end

end A239259.P3713632497684507759

/-! ## A239259.P2538358445939621623

`∑[A232697(n)]-(A239263(n)+n)`
-/

namespace A239259.P2538358445939621623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A239263 n + (n : ℤ))

end

end A239259.P2538358445939621623

/-! ## A239259.P2740079087380280995

`A000009(n)+A047967(n)-A239263(n)`
-/

namespace A239259.P2740079087380280995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A239263 n)

end

end A239259.P2740079087380280995

/-! ## A239259.P17376630234170338848

`A035363(n)+A086543(n)-A239263(n)`
-/

namespace A239259.P17376630234170338848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A239263 n)

end

end A239259.P17376630234170338848

/-! ## A239259.P7877472393356229952

`A000726(n)+A295341(n)-A239263(n)`
-/

namespace A239259.P7877472393356229952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A239263 n)

end

end A239259.P7877472393356229952

/-! ## A239259.P12187604847191525285

`A035363(2*n)-A239263(n)`
-/

namespace A239259.P12187604847191525285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A239263 n

end

end A239259.P12187604847191525285

/-! ## A239259.P15309186465857508625

`A332280(n)+A332281(n)-A239263(n)`
-/

namespace A239259.P15309186465857508625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A239263 n)

end

end A239259.P15309186465857508625

/-! ## A239259.P16597893739593699212

`A239260(n)-A239261(n)`
-/

namespace A239259.P16597893739593699212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n - A239261 n

end

end A239259.P16597893739593699212

/-! ## A239259.P6077751778232194368

`A000041(n)-(A239262(n)+A239261(n))`
-/

namespace A239259.P6077751778232194368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239262 n + A239261 n)

end

end A239259.P6077751778232194368

/-! ## A239259.P7752662759931705879

`A238343(∑[n])-A239263(n)`
-/

namespace A239259.P7752662759931705879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A239263 n

end

end A239259.P7752662759931705879

/-! ## A239259.P3613107173237982284

`A318284(A008578(n+1))-A239263(n)`
-/

namespace A239259.P3613107173237982284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A008578 (n + 1)).toNat - A239263 n

end

end A239259.P3613107173237982284

/-! ## A239259.P14700506800332067880

`A237667(n)+A237668(n)-A239263(n)`
-/

namespace A239259.P14700506800332067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A239263 n)

end

end A239259.P14700506800332067880

/-!
# A239260: Number of partitions of n having (sum of odd parts) <= (sum of even parts).

The programs for A239260, there is no canonical definition to state claims against.
-/

/-! ## A239260.P7983012257589836881

`A027187(n)+A027193(n)-A239262(n)`
-/

namespace A239260.P7983012257589836881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A239262 n)

end

end A239260.P7983012257589836881

/-! ## A239260.P5050215340772366365

`A239259(n)+A239263(n)-A239262(n)`
-/

namespace A239260.P5050215340772366365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A239262 n)

end

end A239260.P5050215340772366365

/-! ## A239260.P9986223162085010561

`A000041(n)-A239262(n)`
-/

namespace A239260.P9986223162085010561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239262 n

end

end A239260.P9986223162085010561

/-! ## A239260.P7747364020552880468

`∑[A002865(n)]-A239262(n)`
-/

namespace A239260.P7747364020552880468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239262 n

end

end A239260.P7747364020552880468

/-! ## A239260.P9210836470565729143

`∑[A085811(n+3)]-A239262(n)`
-/

namespace A239260.P9210836470565729143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239262 n

end

end A239260.P9210836470565729143

/-! ## A239260.P12802435738397965878

`∑[A232697(n)]-(A239262(n)+n)`
-/

namespace A239260.P12802435738397965878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A239262 n + (n : ℤ))

end

end A239260.P12802435738397965878

/-! ## A239260.P2715990163095768098

`A000726(n)+A295341(n)-A239262(n)`
-/

namespace A239260.P2715990163095768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A239262 n)

end

end A239260.P2715990163095768098

/-! ## A239260.P6000997858352556181

`A047967(n)+A096765(n+1)+A096765(n)-A239262(n)`
-/

namespace A239260.P6000997858352556181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A096765 (n + 1) + A096765 n) - A239262 n

end

end A239260.P6000997858352556181

/-! ## A239260.P7327734097986550316

`A139582(n)/2-A239262(n)`
-/

namespace A239260.P7327734097986550316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A239262 n : ℚ)

end

end A239260.P7327734097986550316

/-! ## A239260.P16360294378804142357

`A239261(n)+A239259(n)`
-/

namespace A239260.P16360294378804142357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n + A239259 n

end

end A239260.P16360294378804142357

/-! ## A239260.P161166152520740247

`A000041(n)+A239261(n)-A239263(n)`
-/

namespace A239260.P161166152520740247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239261 n - A239263 n)

end

end A239260.P161166152520740247

/-! ## A239260.P18412722928521254692

`A238343(∑[n])-A239262(n)`
-/

namespace A239260.P18412722928521254692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A239262 n

end

end A239260.P18412722928521254692

/-!
# A239261: Number of partitions of n having (sum of odd parts) = (sum of even parts).

The programs for A239261, there is no canonical definition to state claims against.
-/

/-! ## A239261.P15074852264841559115

`A239260(n)-A239259(n)`
-/

namespace A239261.P15074852264841559115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n - A239259 n

end

end A239261.P15074852264841559115

/-! ## A239261.P7244998940436626655

`A239263(n)-A239262(n)`
-/

namespace A239261.P7244998940436626655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239263 n - A239262 n

end

end A239261.P7244998940436626655

/-! ## A239261.P11653661584628689694

`A035444(n)*A035457(n)`
-/

namespace A239261.P11653661584628689694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n * A035457 n

end

end A239261.P11653661584628689694

/-! ## A239261.P2580680069181277613

`A035444(n)*A172033(n)`
-/

namespace A239261.P2580680069181277613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n * A172033 n

end

end A239261.P2580680069181277613

/-! ## A239261.P13311618735582332695

`A035363(A004526(n))*A035457(n)`
-/

namespace A239261.P13311618735582332695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004526 n).toNat * A035457 n

end

end A239261.P13311618735582332695

/-! ## A239261.P632432139031505619

`A035444(n)*A081360(A008619(n)-1)`
-/

namespace A239261.P632432139031505619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n * A081360 (A008619 n - 1).toNat

end

end A239261.P632432139031505619

/-! ## A239261.P17276997681878823432

`A000041(n)-(A239262(n)+A239259(n))`
-/

namespace A239261.P17276997681878823432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239262 n + A239259 n)

end

end A239261.P17276997681878823432

/-! ## A239261.P6025462982290706134

`A239260(n)+A239263(n)-A000041(n)`
-/

namespace A239261.P6025462982290706134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239263 n - A000041 n)

end

end A239261.P6025462982290706134

/-!
# A239262: Number of partitions of n having (sum of odd parts) > (sum of even parts).

The programs for A239262, there is no canonical definition to state claims against.
-/

/-! ## A239262.P7274598559693936287

`A027187(n)+A027193(n)-A239260(n)`
-/

namespace A239262.P7274598559693936287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A239260 n)

end

end A239262.P7274598559693936287

/-! ## A239262.P10777034618631375266

`A239259(n)+A239263(n)-A239260(n)`
-/

namespace A239262.P10777034618631375266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A239260 n)

end

end A239262.P10777034618631375266

/-! ## A239262.P7172500346657384406

`A000041(n)-A239260(n)`
-/

namespace A239262.P7172500346657384406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239260 n

end

end A239262.P7172500346657384406

/-! ## A239262.P12269533715018648011

`∑[A002865(n)]-A239260(n)`
-/

namespace A239262.P12269533715018648011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239260 n

end

end A239262.P12269533715018648011

/-! ## A239262.P15477044692223999714

`A000065(n)+1-A239260(n)`
-/

namespace A239262.P15477044692223999714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239260 n)

end

end A239262.P15477044692223999714

/-! ## A239262.P15211276768149247034

`∑[A085811(n+3)]-A239260(n)`
-/

namespace A239262.P15211276768149247034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239260 n

end

end A239262.P15211276768149247034

/-! ## A239262.P17754379693970758335

`∑[A232697(n)]-(A239260(n)+n)`
-/

namespace A239262.P17754379693970758335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A239260 n + (n : ℤ))

end

end A239262.P17754379693970758335

/-! ## A239262.P17282928950013795760

`A035363(n)+A086543(n)-A239260(n)`
-/

namespace A239262.P17282928950013795760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A239260 n)

end

end A239262.P17282928950013795760

/-! ## A239262.P7043371416639103624

`A000726(n)+A295341(n)-A239260(n)`
-/

namespace A239262.P7043371416639103624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A239260 n)

end

end A239262.P7043371416639103624

/-! ## A239262.P10029841500050352946

`A168015(n)-(A239260(n)+A168014(n))`
-/

namespace A239262.P10029841500050352946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - (A239260 n + A168014 n)

end

end A239262.P10029841500050352946

/-! ## A239262.P16654347601450503612

`A047967(n)+A096765(n+1)+A096765(n)-A239260(n)`
-/

namespace A239262.P16654347601450503612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A096765 (n + 1) + A096765 n) - A239260 n

end

end A239262.P16654347601450503612

/-! ## A239262.P11446880821512822442

`A035363(2*n)-A239260(n)`
-/

namespace A239262.P11446880821512822442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A239260 n

end

end A239262.P11446880821512822442

/-! ## A239262.P17460436597705670476

`A047967(n)+A067661(n)+A067659(n)-A239260(n)`
-/

namespace A239262.P17460436597705670476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A067661 n + A067659 n) - A239260 n

end

end A239262.P17460436597705670476

/-! ## A239262.P7348861844795867388

`A332280(n)+A332281(n)-A239260(n)`
-/

namespace A239262.P7348861844795867388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A239260 n)

end

end A239262.P7348861844795867388

/-! ## A239262.P10295029968605898016

`A239263(n)-A239261(n)`
-/

namespace A239262.P10295029968605898016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239263 n - A239261 n

end

end A239262.P10295029968605898016

/-! ## A239262.P2747937144853836590

`A000041(n)-(A239261(n)+A239259(n))`
-/

namespace A239262.P2747937144853836590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A239261 n + A239259 n)

end

end A239262.P2747937144853836590

/-! ## A239262.P14153388257457030127

`A332283(n)+A332284(n)-A239260(n)`
-/

namespace A239262.P14153388257457030127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A239260 n)

end

end A239262.P14153388257457030127

/-! ## A239262.P10832189420770015509

`A238343(∑[n])-A239260(n)`
-/

namespace A239262.P10832189420770015509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A239260 n

end

end A239262.P10832189420770015509

/-! ## A239262.P11182440810623628983

`A237667(n)+A237668(n)-A239260(n)`
-/

namespace A239262.P11182440810623628983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A239260 n)

end

end A239262.P11182440810623628983

/-!
# A239263: Number of partitions of n having (sum of odd parts) >= (sum of even parts).

The programs for A239263, there is no canonical definition to state claims against.
-/

/-! ## A239263.P8792571701839769305

`A027187(n)+A027193(n)-A239259(n)`
-/

namespace A239263.P8792571701839769305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A239259 n)

end

end A239263.P8792571701839769305

/-! ## A239263.P15433691510435623599

`A239260(n)+A239262(n)-A239259(n)`
-/

namespace A239263.P15433691510435623599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A239259 n)

end

end A239263.P15433691510435623599

/-! ## A239263.P18251943773663460334

`A000041(n)-A239259(n)`
-/

namespace A239263.P18251943773663460334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239259 n

end

end A239263.P18251943773663460334

/-! ## A239263.P4445621552282015023

`∑[A002865(n)]-A239259(n)`
-/

namespace A239263.P4445621552282015023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239259 n

end

end A239263.P4445621552282015023

/-! ## A239263.P16559990505238813402

`A000065(n)+1-A239259(n)`
-/

namespace A239263.P16559990505238813402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A239259 n)

end

end A239263.P16559990505238813402

/-! ## A239263.P6433621856260063133

`∑[A085811(n+3)]-A239259(n)`
-/

namespace A239263.P6433621856260063133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239259 n

end

end A239263.P6433621856260063133

/-! ## A239263.P4973499662097411301

`∑[A232697(n)]-(A239259(n)+n)`
-/

namespace A239263.P4973499662097411301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A239259 n + (n : ℤ))

end

end A239263.P4973499662097411301

/-! ## A239263.P15212631020245574263

`A000009(n)+A047967(n)-A239259(n)`
-/

namespace A239263.P15212631020245574263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A239259 n)

end

end A239263.P15212631020245574263

/-! ## A239263.P2530922505934150951

`A035363(n)+A086543(n)-A239259(n)`
-/

namespace A239263.P2530922505934150951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A239259 n)

end

end A239263.P2530922505934150951

/-! ## A239263.P16824769375112407154

`A000726(n)+A295341(n)-A239259(n)`
-/

namespace A239263.P16824769375112407154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A239259 n)

end

end A239263.P16824769375112407154

/-! ## A239263.P1332264609111424301

`A035363(2*n)-A239259(n)`
-/

namespace A239263.P1332264609111424301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A239259 n

end

end A239263.P1332264609111424301

/-! ## A239263.P1692540512663874447

`A249914(n)/A035294(n)-A239259(n)`
-/

namespace A239263.P1692540512663874447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249914 n : ℚ) / (A035294 n : ℚ) - (A239259 n : ℚ)

end

end A239263.P1692540512663874447

/-! ## A239263.P17624903771260478293

`A239262(n)+A239261(n)`
-/

namespace A239263.P17624903771260478293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239262 n + A239261 n

end

end A239263.P17624903771260478293

/-! ## A239263.P15224089485053066715

`A000041(n)+A239261(n)-A239260(n)`
-/

namespace A239263.P15224089485053066715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A239261 n - A239260 n)

end

end A239263.P15224089485053066715

/-! ## A239263.P9496477210538095589

`A238343(∑[n])-A239259(n)`
-/

namespace A239263.P9496477210538095589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A239259 n

end

end A239263.P9496477210538095589

/-!
# A239264: Number A(n,k) of domicule tilings of a k X n grid; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A239264, there is no canonical definition to state claims against.
-/

/-! ## A239264.P3703074598736713318

`A020946(A187596(n)%A273157(2*(n+1)))`
-/

namespace A239264.P3703074598736713318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (Int.tmod (A187596 n) (A273157 (2 * (n + 1)))).toNat

end

end A239264.P3703074598736713318

/-! ## A239264.P6901211828224546433

`A020946(A187596(n))^A014963(A312112(n))`
-/

namespace A239264.P6901211828224546433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020946 (A187596 n).toNat : ℚ) ^ (A014963 (A312112 n).toNat : ℤ)

end

end A239264.P6901211828224546433

/-! ## A239264.P1040519293098677053

`A056239((A187596(n)+1)!)`
-/

namespace A239264.P1040519293098677053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Nat.factorial (A187596 n + 1).toNat)

end

end A239264.P1040519293098677053

/-! ## A239264.P9037096050433230476

`A020946(A187596(n)%A273123(n+1))`
-/

namespace A239264.P9037096050433230476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (Int.tmod (A187596 n) (A273123 (n + 1))).toNat

end

end A239264.P9037096050433230476

/-! ## A239264.P7868935065066795804

`or(A072629(A272919(2*n+5)), A219987(n))`
-/

namespace A239264.P7868935065066795804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072629 (A272919 (2 * n + 5)).toNat) (A219987 n)

end

end A239264.P7868935065066795804

/-!
# A239265: Number of domicule tilings of a 3 X 2n grid.

The programs for A239265, there is no canonical definition to state claims against.
-/

/-! ## A239265.P13682765440338562220

`A239264(A100037(n+2))`
-/

namespace A239265.P13682765440338562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A100037 (n + 2)).toNat

end

end A239265.P13682765440338562220

/-! ## A239265.P4513632111489122420

`record[A239264(abs(A046691(n)))]`
-/

namespace A239265.P4513632111489122420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239265.P4513632111489122420

/-! ## A239265.P4468601362837383182

`record[A239264(A046691(n+1))]`
-/

namespace A239265.P4468601362837383182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239265.P4468601362837383182

/-! ## A239265.P2325726877674477216

`record[A239264(A052905(n)+1)]`
-/

namespace A239265.P2325726877674477216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239265.P2325726877674477216

/-!
# A239266: Number of domicule tilings of a 4 X n grid.

The programs for A239266, there is no canonical definition to state claims against.
-/

/-! ## A239266.P4487304674009716399

`A239264(A052905(n+2))`
-/

namespace A239266.P4487304674009716399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A052905 (n + 2)).toNat

end

end A239266.P4487304674009716399

/-! ## A239266.P17830271905626590847

`A239264(A056115(n)+10)`
-/

namespace A239266.P17830271905626590847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A056115 n + 10).toNat

end

end A239266.P17830271905626590847

/-! ## A239266.P12474309881755705585

`A239264(A155212(n)+12)`
-/

namespace A239266.P12474309881755705585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A155212 n + 12).toNat

end

end A239266.P12474309881755705585

/-! ## A239266.P16606050851349096841

`A239264(A056000(n)+14)`
-/

namespace A239266.P16606050851349096841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A056000 n + 14).toNat

end

end A239266.P16606050851349096841

/-! ## A239266.P14933781452725724574

`A239264(eq[4, A002262(n)])`
-/

namespace A239266.P14933781452725724574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239266.P14933781452725724574

/-!
# A239267: Number of domicule tilings of a 5 X 2n grid.

The programs for A239267, there is no canonical definition to state claims against.
-/

/-! ## A239267.P14623602629941679011

`record[A239264(A055999(n))]`
-/

namespace A239267.P14623602629941679011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239267.P14623602629941679011

/-! ## A239267.P9433042691260309534

`record[A239264(A167499(n))]`
-/

namespace A239267.P9433042691260309534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239267.P9433042691260309534

/-! ## A239267.P5533244564066067060

`A239264(A100038(n+2))`
-/

namespace A239267.P5533244564066067060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A100038 (n + 2)).toNat

end

end A239267.P5533244564066067060

/-! ## A239267.P18235258876749794572

`record[A239264(A052905(n)-1)]`
-/

namespace A239267.P18235258876749794572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239267.P18235258876749794572

/-! ## A239267.P4699478296856252334

`record[A239264(eq[5, A002262(n)])]`
-/

namespace A239267.P4699478296856252334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239267.P4699478296856252334

/-!
# A239268: Number of domicule tilings of a 6 X n grid.

The programs for A239268, there is no canonical definition to state claims against.
-/

/-! ## A239268.P13659341994829437797

`A239264(A056115(n+2)+8)`
-/

namespace A239268.P13659341994829437797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A056115 (n + 2) + 8).toNat

end

end A239268.P13659341994829437797

/-! ## A239268.P10944381799399590793

`A239264(A155212(n+2)+14)`
-/

namespace A239268.P10944381799399590793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A155212 (n + 2) + 14).toNat

end

end A239268.P10944381799399590793

/-! ## A239268.P15348301364333832219

`A239264(A056000(n+2)+16)`
-/

namespace A239268.P15348301364333832219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A056000 (n + 2) + 16).toNat

end

end A239268.P15348301364333832219

/-! ## A239268.P11549211249536461273

`A239264(eq[7, A002260(n+1)])`
-/

namespace A239268.P11549211249536461273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239268.P11549211249536461273

/-! ## A239268.P14030295509472796166

`A239264(eq[7, A004736(n+1)])`
-/

namespace A239268.P14030295509472796166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239268.P14030295509472796166

/-!
# A239269: Number of domicule tilings of a 7 X 2n grid.

The programs for A239269, there is no canonical definition to state claims against.
-/

/-! ## A239269.P17043867743643196046

`record[A239264(A155212(n))]`
-/

namespace A239269.P17043867743643196046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239269.P17043867743643196046

/-! ## A239269.P7085197535230549857

`A239264(A100039(n+2))`
-/

namespace A239269.P7085197535230549857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A100039 (n + 2)).toNat

end

end A239269.P7085197535230549857

/-!
# A239270: Number of domicule tilings of an 8 X n grid.

The programs for A239270, there is no canonical definition to state claims against.
-/

/-! ## A239270.P6745564688887707720

`A239264(eq[8, A002262(n)])`
-/

namespace A239270.P6745564688887707720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239270.P6745564688887707720

/-! ## A239270.P2563576572078513664

`A239264(eq[8, A025581(n)])`
-/

namespace A239270.P2563576572078513664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239270.P2563576572078513664

/-! ## A239270.P6192008469356693183

`A239264(eq[9, A002260(n+1)])`
-/

namespace A239270.P6192008469356693183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239270.P6192008469356693183

/-! ## A239270.P7117016311960348309

`A239264(eq[9, A004736(n+1)])`
-/

namespace A239270.P7117016311960348309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239270.P7117016311960348309

/-! ## A239270.P9883649824603773074

`A239264(eq[9, A092543(n+1)])`
-/

namespace A239270.P9883649824603773074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239270.P9883649824603773074

/-!
# A239271: Number of domicule tilings of a 9 X 2n grid.

The programs for A239271, there is no canonical definition to state claims against.
-/

/-! ## A239271.P1894749843987502982

`record[A239264(A155212(2*n)-2)]`
-/

namespace A239271.P1894749843987502982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A155212 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239271.P1894749843987502982

/-! ## A239271.P5914766024303142127

`record[A239264(eq[10, A092543(n+1)])]`
-/

namespace A239271.P5914766024303142127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239271.P5914766024303142127

/-!
# A239272: Number of domicule tilings of a 10 X n grid.

The programs for A239272, there is no canonical definition to state claims against.
-/

/-! ## A239272.P14890910749546045615

`A239264(eq[10, A002262(n)])`
-/

namespace A239272.P14890910749546045615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239272.P14890910749546045615

/-! ## A239272.P18188032033373186519

`A239264(eq[10, A025581(n)])`
-/

namespace A239272.P18188032033373186519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239272.P18188032033373186519

/-! ## A239272.P15937729386328590347

`A239264(eq[11, A002260(n+1)])`
-/

namespace A239272.P15937729386328590347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239272.P15937729386328590347

/-! ## A239272.P1245583877406849075

`A239264(eq[11, A004736(n+1)])`
-/

namespace A239272.P1245583877406849075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239272.P1245583877406849075

/-! ## A239272.P5691582970535583254

`A239264(eq[11, A092543(n+1)])`
-/

namespace A239272.P5691582970535583254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239272.P5691582970535583254

/-!
# A239273: Number of domicule tilings of a 2n X 2n square grid.

The programs for A239273, there is no canonical definition to state claims against.
-/

/-! ## A239273.P11081258770345363016

`A239264(A033586(n))`
-/

namespace A239273.P11081258770345363016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A033586 n).toNat

end

end A239273.P11081258770345363016

/-! ## A239273.P4223113472099567261

`A239264(2*A002943(n))`
-/

namespace A239273.P4223113472099567261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (2 * A002943 n).toNat

end

end A239273.P4223113472099567261

/-! ## A239273.P7999717651698124874

`A239264(A002943(n)+A002943(n))`
-/

namespace A239273.P7999717651698124874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239264 (A002943 n + A002943 n).toNat

end

end A239273.P7999717651698124874

/-!
# A239275: a(n) = numerator(2^n * Bernoulli(n, 1)).

The programs for A239275, there is no canonical definition to state claims against.
-/

/-! ## A239275.P5624769267104191434

`A011782(n)*A164555(n)`
-/

namespace A239275.P5624769267104191434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A164555 n

end

end A239275.P5624769267104191434

/-! ## A239275.P7331501190448219542

`A164555(n)*A236291(n)`
-/

namespace A239275.P7331501190448219542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A236291 n

end

end A239275.P7331501190448219542

/-! ## A239275.P12055034076825389572

`A164555(n)*A383608(n)`
-/

namespace A239275.P12055034076825389572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n * A383608 n

end

end A239275.P12055034076825389572

/-! ## A239275.P13365554216146047582

`Δ[A094373(n)]*A164555(n)`
-/

namespace A239275.P13365554216146047582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A164555 n

end

end A239275.P13365554216146047582

/-! ## A239275.P15155282094466476809

`Δ[A131577(n)]*A164555(n)`
-/

namespace A239275.P15155282094466476809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A164555 n

end

end A239275.P15155282094466476809

/-! ## A239275.P9868126008537572446

`ceil(A000079(n)/2)*A164555(n)`
-/

namespace A239275.P9868126008537572446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) / 2⌉ * A164555 n

end

end A239275.P9868126008537572446

/-! ## A239275.P14019151682824339657

`char[1]+A011782(n)*A176327(n)`
-/

namespace A239275.P14019151682824339657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A011782 n * A176327 n

end

end A239275.P14019151682824339657

/-! ## A239275.P5803067921874232827

`A059268(A055998(n))*A164555(n)`
-/

namespace A239275.P5803067921874232827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A055998 n).toNat * A164555 n

end

end A239275.P5803067921874232827

/-! ## A239275.P16970534377362110108

`A157779(n)-A141459(n)*A226158(n)`
-/

namespace A239275.P16970534377362110108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157779 n - A141459 n * A226158 n

end

end A239275.P16970534377362110108

/-! ## A239275.P4486416944682937809

`A004119(n)%A000051(n)*A164555(n)`
-/

namespace A239275.P4486416944682937809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004119 n) (A000051 n) * A164555 n

end

end A239275.P4486416944682937809

/-!
# A239278: Smallest k > 1 such that n*(n+1)*...*(n+k-1) / (n+(n+1)+...+(n+k-1)) is an integer.

The programs for A239278, there is no canonical definition to state claims against.
-/

/-! ## A239278.P7832290099963377308

`A053669(A010001(n)+n)`
-/

namespace A239278.P7832290099963377308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A010001 n + (n : ℤ)).toNat

end

end A239278.P7832290099963377308

/-!
# A239281: a(1) = 0; for n>1, a(n) is one more than the value of the sequence at index the number of times a(n-1) has previously appeared in the sequence.

The programs for A239281, there is no canonical definition to state claims against.
-/

/-! ## A239281.P10735526264336899781

`A060130(record[A332897(A134227(n+1))])`
-/

namespace A239281.P10735526264336899781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A134227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239281.P10735526264336899781

/-! ## A239281.P15257566650718660462

`A267263(A032519(3*n)*A242474(n+1))`
-/

namespace A239281.P15257566650718660462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A032519 (3 * n) * A242474 (n + 1)).toNat

end

end A239281.P15257566650718660462

/-! ## A239281.P17223701746396938409

`A076489(A325186(n+1)+A006918(3*(n+1)))`
-/

namespace A239281.P17223701746396938409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A325186 (n + 1) + A006918 (3 * (n + 1))).toNat

end

end A239281.P17223701746396938409

/-! ## A239281.P13492812183989179744

`A240857(A245606(n+1)+A006007(n))`
-/

namespace A239281.P13492812183989179744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (A245606 (n + 1) + A006007 n).toNat

end

end A239281.P13492812183989179744

/-! ## A239281.P6309805587763945841

`A212619(A163235(2*(n+1)))+A085693(n)`
-/

namespace A239281.P6309805587763945841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A163235 (2 * (n + 1))).toNat + A085693 n

end

end A239281.P6309805587763945841

/-!
# A239282: a(n) = A045917(n)*prime(n).

The programs for A239282, there is no canonical definition to state claims against.
-/

/-! ## A239282.P15564429348587309856

`Δ[A007504(n)]*A045917(n+1)`
-/

namespace A239282.P15564429348587309856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A045917 (n + 1)

end

end A239282.P15564429348587309856

/-! ## A239282.P16324511840424128130

`A000040(n+1)*A045917(n+1)`
-/

namespace A239282.P16324511840424128130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045917 (n + 1)

end

end A239282.P16324511840424128130

/-! ## A239282.P6371677890605387335

`A006005(n+1)*A045917(n+1)`
-/

namespace A239282.P6371677890605387335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A045917 (n + 1)

end

end A239282.P6371677890605387335

/-! ## A239282.P16302319775721275153

`sqrt(A001248(n+1))*A045917(n+1)`
-/

namespace A239282.P16302319775721275153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A045917 (n + 1) : ℝ)

end

end A239282.P16302319775721275153

/-! ## A239282.P7080906987318980436

`(A052147(n+1)-2)*A045917(n+1)`
-/

namespace A239282.P7080906987318980436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A045917 (n + 1)

end

end A239282.P7080906987318980436

/-! ## A239282.P1773582256273478193

`A045917(n+1)/2*A100484(n+1)`
-/

namespace A239282.P1773582256273478193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045917 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A239282.P1773582256273478193

/-! ## A239282.P13505925815689398726

`(A014692(n+1)+n)*A045917(n+1)`
-/

namespace A239282.P13505925815689398726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A045917 (n + 1)

end

end A239282.P13505925815689398726

/-! ## A239282.P12177593145693906339

`ceil(A035026(n+1)/2)*A000040(n+1)`
-/

namespace A239282.P12177593145693906339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (n + 1) : ℚ) / 2⌉ * A000040 (n + 1)

end

end A239282.P12177593145693906339

/-! ## A239282.P2139599267040170449

`(A002375(n+1)+char[1])*A000040(n+1)`
-/

namespace A239282.P2139599267040170449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A000040 (n + 1)

end

end A239282.P2139599267040170449

/-! ## A239282.P15237759581965305510

`A008578(n+2)*A045917(n+1)`
-/

namespace A239282.P15237759581965305510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A045917 (n + 1)

end

end A239282.P15237759581965305510

/-! ## A239282.P12072729272000326104

`A045917(n+1)*A182986(n+2)`
-/

namespace A239282.P12072729272000326104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A182986 (n + 2)

end

end A239282.P12072729272000326104

/-! ## A239282.P11955012208403186943

`p?[A000961(n+1)]*A045917(n+1)`
-/

namespace A239282.P11955012208403186943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A045917 (n + 1)

end

end A239282.P11955012208403186943

/-! ## A239282.P14811780447646235674

`record[A006530(n+2)]*A045917(n+1)`
-/

namespace A239282.P14811780447646235674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045917 (n + 1)

end

end A239282.P14811780447646235674

/-! ## A239282.P4544407703594834922

`record[A020639(n+2)]*A045917(n+1)`
-/

namespace A239282.P4544407703594834922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045917 (n + 1)

end

end A239282.P4544407703594834922

/-! ## A239282.P6395820969458203395

`(A002375(n+1)+char[1])*record[A006530(n+2)]`
-/

namespace A239282.P6395820969458203395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A239282.P6395820969458203395

/-! ## A239282.P4902940919872605766

`(eq[1, A001222(n+1)]+1)*(A002375(n+1)+char[1])`
-/

namespace A239282.P4902940919872605766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * (A002375 (n + 1) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

end

end A239282.P4902940919872605766

/-! ## A239282.P18001790817651797280

`(A002375(n+1)+char[1])*(lt[A001222(n+2), 2]+2)`
-/

namespace A239282.P18001790817651797280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2 : ℤ)

end

end A239282.P18001790817651797280

/-! ## A239282.P1084569434036128981

`A006530(A100484(n+1))*A045917(n+1)`
-/

namespace A239282.P1084569434036128981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (n + 1)).toNat * A045917 (n + 1)

end

end A239282.P1084569434036128981

/-! ## A239282.P11488670322693670508

`A000040(n+1)*A061358(2*(n+1))`
-/

namespace A239282.P11488670322693670508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061358 (2 * (n + 1))

end

end A239282.P11488670322693670508

/-!
# A239283: n^(p1) + n^(p2) + n^(p3) + ... where (p1)*(p2)*(p3)*.... is the prime factorization of n (with multiplicity).

The programs for A239283, there is no canonical definition to state claims against.
-/

/-! ## A239283.P10975889514758406300

`A351365(n+1)*A373127(A107862(n))`
-/

namespace A239283.P10975889514758406300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351365 (n + 1) * A373127 (A107862 n).toNat

end

end A239283.P10975889514758406300

/-! ## A239283.P7533122426346144666

`A124010(A000351(n))*A351365(n+1)`
-/

namespace A239283.P7533122426346144666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A000351 n).toNat * A351365 (n + 1)

end

end A239283.P7533122426346144666

/-! ## A239283.P15162408529618063681

`A063994(A179405(n))*A351365(n+1)`
-/

namespace A239283.P15162408529618063681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A179405 n).toNat * A351365 (n + 1)

end

end A239283.P15162408529618063681

/-!
# A239284: a(n) = (15^n - (-1)^n)/16.

The programs for A239284, the canonical program `A239284.P9344869451414646197` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239284 has offset 0).

The definition of A239284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15^n-(-1)^n)/16` (program `A239284.P6063076957002227056`, by `A239284.P6063076957002227056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239284.P9344869451414646197

`14*a(n-1)+15*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239284

/-- `14*a(n-1)+15*a(n-2)` -/
def P9344869451414646197.Spec : Prop :=
  ∀ n, (P9344869451414646197.a n : ℤ) = A239284 n

theorem P9344869451414646197.correct : P9344869451414646197.Spec := by
  intro n
  simp only [A239284]

end A239284

/-! ## A239284.P6063076957002227056

`(15^n-(-1)^n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239284.P6063076957002227056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ n : ℤ) - (-1) ^ n : ℚ) / 16

end

end A239284.P6063076957002227056

namespace A239284

/-- `(15^n-(-1)^n)/16` -/
def P6063076957002227056.Spec : Prop :=
  ∀ n, P6063076957002227056.a n = (A239284 n : ℚ)

theorem P6063076957002227056.correct : P6063076957002227056.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A239284, Nat.add_sub_cancel, A239284.P6063076957002227056.a, A239284.P9344869451414646197.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A239284, Nat.add_sub_cancel, A239284.P6063076957002227056.a, A239284.P9344869451414646197.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239284

/-! ## A239284.P6099843125336870187

`1/16*(A001024(n)-A033999(n))`
-/

namespace A239284.P6099843125336870187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (A001024 n - A033999 n : ℚ)

end

end A239284.P6099843125336870187

namespace A239284

/-- `1/16*(A001024(n)-A033999(n))` -/
def P6099843125336870187.Spec : Prop :=
  ∀ n, P6099843125336870187.a n = (A239284 n : ℚ)

theorem P6099843125336870187.correct : P6099843125336870187.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A239284, Nat.add_sub_cancel, A239284.P6099843125336870187.a, A239284.P9344869451414646197.a, A001024, A001024.P4674574780989564658.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A239284, Nat.add_sub_cancel, A239284.P6099843125336870187.a, A239284.P9344869451414646197.a, A001024, A001024.P4674574780989564658.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A239284

/-! ## A239284.P2974747226415423375

`ogf(x/(1-14x-15x^2))`
-/

namespace A239284.P2974747226415423375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -14, -15] n

end

end A239284.P2974747226415423375

namespace A239284

/-- `ogf(x/(1-14x-15x^2))` -/
def P2974747226415423375.Spec : Prop :=
  ∀ n, P2974747226415423375.a n = A239284 n

end A239284

/-! ## A239284.P6250880222270132904

`xor(1, 15*a(n-1))` with `a(0)=0`
-/

namespace A239284.P6250880222270132904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (15 * a (n - 1))

end

end A239284.P6250880222270132904

namespace A239284

/-- `xor(1, 15*a(n-1))` -/
def P6250880222270132904.Spec : Prop :=
  ∀ n, (P6250880222270132904.a n : ℤ) = A239284 n

end A239284

/-! ## A239284.P12072872200624263679

`15^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A239284.P12072872200624263679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (15 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A239284.P12072872200624263679

namespace A239284

/-- `15^(n-1)-a(n-1)` -/
def P12072872200624263679.Spec : Prop :=
  ∀ n, P12072872200624263679.a n = (A239284 n : ℚ)

end A239284

/-!
# A239285: a(n) = (15^n - (-2)^n)/17.

The programs for A239285, the canonical program `A239285.P10424317574869130338` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239285 has offset 0).

The definition of A239285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15^n-(-2)^n)/17` (program `A239285.P2679616022823559096`, by `A239285.P2679616022823559096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239285.P10424317574869130338

`13*a(n-1)+30*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239285

/-- `13*a(n-1)+30*a(n-2)` -/
def P10424317574869130338.Spec : Prop :=
  ∀ n, (P10424317574869130338.a n : ℤ) = A239285 n

theorem P10424317574869130338.correct : P10424317574869130338.Spec := by
  intro n
  simp only [A239285]

end A239285

/-! ## A239285.P2679616022823559096

`(15^n-(-2)^n)/17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239285.P2679616022823559096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ n : ℤ) - (-2) ^ n : ℚ) / 17

end

end A239285.P2679616022823559096

namespace A239285

/-- `(15^n-(-2)^n)/17` -/
def P2679616022823559096.Spec : Prop :=
  ∀ n, P2679616022823559096.a n = (A239285 n : ℚ)

theorem P2679616022823559096.correct : P2679616022823559096.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A239285, Nat.add_sub_cancel, A239285.P2679616022823559096.a, A239285.P10424317574869130338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A239285, Nat.add_sub_cancel, A239285.P2679616022823559096.a, A239285.P10424317574869130338.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239285

/-! ## A239285.P15341197081285616088

`1/17*(A001024(n)-A122803(n))`
-/

namespace A239285.P15341197081285616088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 17 * (A001024 n - A122803 n : ℚ)

end

end A239285.P15341197081285616088

namespace A239285

/-- `1/17*(A001024(n)-A122803(n))` -/
def P15341197081285616088.Spec : Prop :=
  ∀ n, P15341197081285616088.a n = (A239285 n : ℚ)

theorem P15341197081285616088.correct : P15341197081285616088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A239285, Nat.add_sub_cancel, A239285.P15341197081285616088.a, A239285.P10424317574869130338.a, A001024, A001024.P4674574780989564658.a, A122803, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A239285, Nat.add_sub_cancel, A239285.P15341197081285616088.a, A239285.P10424317574869130338.a, A001024, A001024.P4674574780989564658.a, A122803, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A239285

/-! ## A239285.P8772675965218132055

`15^(n-1)-2*a(n-1)` with `a(0)=0`
-/

namespace A239285.P8772675965218132055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (15 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * a (n - 1)

end

end A239285.P8772675965218132055

namespace A239285

/-- `15^(n-1)-2*a(n-1)` -/
def P8772675965218132055.Spec : Prop :=
  ∀ n, P8772675965218132055.a n = (A239285 n : ℚ)

end A239285

/-! ## A239285.P4857181885450001628

`15^(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A239285.P4857181885450001628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (15 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - a (n - 1)

end

end A239285.P4857181885450001628

namespace A239285

/-- `15^(n-1)-a(n-1)-a(n-1)` -/
def P4857181885450001628.Spec : Prop :=
  ∀ n, P4857181885450001628.a n = (A239285 n : ℚ)

end A239285

/-!
# A239286: Expansion of (x + 1)*(3*x^2 + 2*x + 1)/(x^2 + x + 1)^2.

The programs for A239286, the canonical program `A239286.P1027001297294253123` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239286 has offset 0).

The definition of A239286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+5x^2+3x^3)/(1+2x+3x^2+2x^3+x^4))` (program `A239286.P1027001297294253123`, by `A239286.P1027001297294253123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239286.P1027001297294253123

`ogf((1+3x+5x^2+3x^3)/(1+2x+3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239286

/-- `ogf((1+3x+5x^2+3x^3)/(1+2x+3x^2+2x^3+x^4))` -/
def P1027001297294253123.Spec : Prop :=
  ∀ n, P1027001297294253123.a n = A239286 n

theorem P1027001297294253123.correct : P1027001297294253123.Spec := by
  intro n
  simp only [A239286]

end A239286

/-! ## A239286.P4992474131870926311

`xor(-((a(n-2)+n)%3), a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A239286.P4992474131870926311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (-Int.tmod (a (n - 2) + (n : ℤ)) 3) (a (n - 1)) - a (n - 2)

end

end A239286.P4992474131870926311

namespace A239286

/-- `xor(-((a(n-2)+n)%3), a(n-1))-a(n-2)` -/
def P4992474131870926311.Spec : Prop :=
  ∀ n, P4992474131870926311.a n = A239286 n

end A239286

/-! ## A239286.P12344942983872984961

`1-(a(n-2)+(a(n-1)+2)%(a(n-2)+n))` with `a(0)=1, a(1)=1`
-/

namespace A239286.P12344942983872984961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) + Int.tmod (a (n - 1) + 2) (a (n - 2) + (n : ℤ)))

end

end A239286.P12344942983872984961

namespace A239286

/-- `1-(a(n-2)+(a(n-1)+2)%(a(n-2)+n))` -/
def P12344942983872984961.Spec : Prop :=
  ∀ n, P12344942983872984961.a n = A239286 n

end A239286

/-! ## A239286.P8008324085741293633

`A099837(n+1)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A239286.P8008324085741293633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099837 (n + 1) - (a (n - 2) + a (n - 1))

end

end A239286.P8008324085741293633

namespace A239286

/-- `A099837(n+1)-(a(n-2)+a(n-1))` -/
def P8008324085741293633.Spec : Prop :=
  ∀ n, P8008324085741293633.a n = A239286 n

end A239286

/-! ## A239286.P16761632535218186990

`1-A128214(A061347(n+1)+n)`
-/

namespace A239286.P16761632535218186990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128214 (A061347 (n + 1) + (n : ℤ)).toNat

end

end A239286.P16761632535218186990

namespace A239286

/-- `1-A128214(A061347(n+1)+n)` -/
def P16761632535218186990.Spec : Prop :=
  ∀ n, P16761632535218186990.a n = A239286 n

end A239286

/-! ## A239286.P18201878610240370811

`A061347(n+1)+n*A049347(n+1)`
-/

namespace A239286.P18201878610240370811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + (n : ℤ) * A049347 (n + 1)

end

end A239286.P18201878610240370811

namespace A239286

/-- `A061347(n+1)+n*A049347(n+1)` -/
def P18201878610240370811.Spec : Prop :=
  ∀ n, P18201878610240370811.a n = A239286 n

end A239286

/-! ## A239286.P14334148863009576395

`(n-2)*A049347(n+1)-A049347(n)`
-/

namespace A239286.P14334148863009576395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A049347 (n + 1) - A049347 n

end

end A239286.P14334148863009576395

namespace A239286

/-- `(n-2)*A049347(n+1)-A049347(n)` -/
def P14334148863009576395.Spec : Prop :=
  ∀ n, P14334148863009576395.a n = A239286 n

end A239286

/-! ## A239286.P1459389131912786374

`A004482(n)-n*A080425(A004482(n))`
-/

namespace A239286.P1459389131912786374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n - (n : ℤ) * A080425 (A004482 n).toNat

end

end A239286.P1459389131912786374

namespace A239286

/-- `A004482(n)-n*A080425(A004482(n))` -/
def P1459389131912786374.Spec : Prop :=
  ∀ n, P1459389131912786374.a n = A239286 n

end A239286

/-! ## A239286.P15782390211026495082

`A057078(n)-(A128214(n+1)+A057078(n+1))`
-/

namespace A239286.P15782390211026495082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n - (A128214 (n + 1) + A057078 (n + 1))

end

end A239286.P15782390211026495082

namespace A239286

/-- `A057078(n)-(A128214(n+1)+A057078(n+1))` -/
def P15782390211026495082.Spec : Prop :=
  ∀ n, P15782390211026495082.a n = A239286 n

end A239286

/-! ## A239286.P9429303400748784523

`A131713(n+2)-A128214(n+1)`
-/

namespace A239286.P9429303400748784523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) - A128214 (n + 1)

end

end A239286.P9429303400748784523

namespace A239286

/-- `A131713(n+2)-A128214(n+1)` -/
def P9429303400748784523.Spec : Prop :=
  ∀ n, P9429303400748784523.a n = A239286 n

end A239286

/-! ## A239286.P299501256331484012

`A057079(2*n)-A128214(n+1)`
-/

namespace A239286.P299501256331484012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) - A128214 (n + 1)

end

end A239286.P299501256331484012

namespace A239286

/-- `A057079(2*n)-A128214(n+1)` -/
def P299501256331484012.Spec : Prop :=
  ∀ n, P299501256331484012.a n = A239286 n

end A239286

/-! ## A239286.P5686932060184415987

`A057079(2*n)-A110665(2*n)/2`
-/

namespace A239286.P5686932060184415987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n) : ℚ) - (A110665 (2 * n) : ℚ) / 2

end

end A239286.P5686932060184415987

namespace A239286

/-- `A057079(2*n)-A110665(2*n)/2` -/
def P5686932060184415987.Spec : Prop :=
  ∀ n, P5686932060184415987.a n = (A239286 n : ℚ)

end A239286

/-! ## A239286.P738237746415621486

`A057079(2*n)+n*A049347(n+1)`
-/

namespace A239286.P738237746415621486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) + (n : ℤ) * A049347 (n + 1)

end

end A239286.P738237746415621486

namespace A239286

/-- `A057079(2*n)+n*A049347(n+1)` -/
def P738237746415621486.Spec : Prop :=
  ∀ n, P738237746415621486.a n = A239286 n

end A239286

/-! ## A239286.P10535493950512200408

`A057079(2*n)-n*A010892(2*n)`
-/

namespace A239286.P10535493950512200408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) - (n : ℤ) * A010892 (2 * n)

end

end A239286.P10535493950512200408

namespace A239286

/-- `A057079(2*n)-n*A010892(2*n)` -/
def P10535493950512200408.Spec : Prop :=
  ∀ n, P10535493950512200408.a n = A239286 n

end A239286

/-! ## A239286.P10764408932213943932

`A061347(n+1)-n*A112300(2*n+1)`
-/

namespace A239286.P10764408932213943932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) - (n : ℤ) * A112300 (2 * n + 1)

end

end A239286.P10764408932213943932

namespace A239286

/-- `A061347(n+1)-n*A112300(2*n+1)` -/
def P10764408932213943932.Spec : Prop :=
  ∀ n, P10764408932213943932.a n = A239286 n

end A239286

/-! ## A239286.P11057485001882005490

`A057079(2*n)-n*A128834(2*n+1)`
-/

namespace A239286.P11057485001882005490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) - (n : ℤ) * A128834 (2 * n + 1)

end

end A239286.P11057485001882005490

namespace A239286

/-- `A057079(2*n)-n*A128834(2*n+1)` -/
def P11057485001882005490.Spec : Prop :=
  ∀ n, P11057485001882005490.a n = A239286 n

end A239286

/-! ## A239286.P7579204668846914744

`A057078(2*n+1)+A128214(2*n)+A128214(n+1)`
-/

namespace A239286.P7579204668846914744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n + 1) + (A128214 (2 * n) + A128214 (n + 1))

end

end A239286.P7579204668846914744

namespace A239286

/-- `A057078(2*n+1)+A128214(2*n)+A128214(n+1)` -/
def P7579204668846914744.Spec : Prop :=
  ∀ n, P7579204668846914744.a n = A239286 n

end A239286

/-!
# A239287: Triangle T(n,k), 0 <= k <= n, read by rows: T(n,k) = floor(n/2) - min(k,n-k).

The programs for A239287, the canonical program `A239287.P8882484153100334312` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239287 has offset 0).

The definition of A239287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239287.P8882484153100334312

`val(A115216(n), 4)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A239287

/-- `val(A115216(n), 4)` -/
def P8882484153100334312.Spec : Prop :=
  ∀ n, (P8882484153100334312.a n : ℤ) = A239287 n

theorem P8882484153100334312.correct : P8882484153100334312.Spec := by
  intro n
  simp only [A239287]

end A239287

/-! ## A239287.P17126076052613220916

`val(A116588(n), 4)`
-/

namespace A239287.P17126076052613220916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A116588 n).toNat 4

end

end A239287.P17126076052613220916

namespace A239287

/-- `val(A116588(n), 4)` -/
def P17126076052613220916.Spec : Prop :=
  ∀ n, (P17126076052613220916.a n : ℤ) = A239287 n

end A239287

/-! ## A239287.P8551165292720568275

`floor(A049581(n)/2)`
-/

namespace A239287.P8551165292720568275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049581 n : ℚ) / 2⌋

end

end A239287.P8551165292720568275

namespace A239287

/-- `floor(A049581(n)/2)` -/
def P8551165292720568275.Spec : Prop :=
  ∀ n, P8551165292720568275.a n = A239287 n

end A239287

/-! ## A239287.P9424757511967796229

`floor((A143182(n)-1)/2)`
-/

namespace A239287.P9424757511967796229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143182 n - 1 : ℚ) / 2⌋

end

end A239287.P9424757511967796229

namespace A239287

/-- `floor((A143182(n)-1)/2)` -/
def P9424757511967796229.Spec : Prop :=
  ∀ n, P9424757511967796229.a n = A239287 n

end A239287

/-! ## A239287.P8718711513143626230

`ceil((abs(A114327(n))-1)/2)`
-/

namespace A239287.P8718711513143626230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A114327 n| - 1 : ℚ) / 2⌉

end

end A239287.P8718711513143626230

namespace A239287

/-- `ceil((abs(A114327(n))-1)/2)` -/
def P8718711513143626230.Spec : Prop :=
  ∀ n, P8718711513143626230.a n = A239287 n

end A239287

/-! ## A239287.P3252793821306237624

`A004197(comp[∑[4*n+1]])`
-/

namespace A239287.P3252793821306237624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A239287.P3252793821306237624

namespace A239287

/-- `A004197(comp[∑[4*n+1]])` -/
def P3252793821306237624.Spec : Prop :=
  ∀ n, P3252793821306237624.a n = A239287 n

end A239287

/-! ## A239287.P3023465124635987815

`ceil(A101037(n+1)/2)-1`
-/

namespace A239287.P3023465124635987815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101037 (n + 1) : ℚ) / 2⌉ - 1

end

end A239287.P3023465124635987815

namespace A239287

/-- `ceil(A101037(n+1)/2)-1` -/
def P3023465124635987815.Spec : Prop :=
  ∀ n, P3023465124635987815.a n = A239287 n

end A239287

/-! ## A239287.P8721144614214826892

`val(A036561(comp[(n+1)*Δ[n²]]), 6)`
-/

namespace A239287.P8721144614214826892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat 6

end

end A239287.P8721144614214826892

namespace A239287

/-- `val(A036561(comp[(n+1)*Δ[n²]]), 6)` -/
def P8721144614214826892.Spec : Prop :=
  ∀ n, (P8721144614214826892.a n : ℤ) = A239287 n

end A239287

/-! ## A239287.P13548767314774570139

`A004526(A049581(n))`
-/

namespace A239287.P13548767314774570139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049581 n).toNat

end

end A239287.P13548767314774570139

namespace A239287

/-- `A004526(A049581(n))` -/
def P13548767314774570139.Spec : Prop :=
  ∀ n, P13548767314774570139.a n = A239287 n

end A239287

/-! ## A239287.P10578339850125757950

`A004526(abs(A114327(n)))`
-/

namespace A239287.P10578339850125757950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A114327 n|.toNat

end

end A239287.P10578339850125757950

namespace A239287

/-- `A004526(abs(A114327(n)))` -/
def P10578339850125757950.Spec : Prop :=
  ∀ n, P10578339850125757950.a n = A239287 n

end A239287

/-! ## A239287.P3013717073295834133

`A002265(A253146(n+1))`
-/

namespace A239287.P3013717073295834133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A253146 (n + 1)).toNat

end

end A239287.P3013717073295834133

namespace A239287

/-- `A002265(A253146(n+1))` -/
def P3013717073295834133.Spec : Prop :=
  ∀ n, P3013717073295834133.a n = A239287 n

end A239287

/-! ## A239287.P1924141963315586371

`A140106(A143182(n)+1)`
-/

namespace A239287.P1924141963315586371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A143182 n + 1).toNat

end

end A239287.P1924141963315586371

namespace A239287

/-- `A140106(A143182(n)+1)` -/
def P1924141963315586371.Spec : Prop :=
  ∀ n, P1924141963315586371.a n = A239287 n

end A239287

/-! ## A239287.P14116288813232302058

`A004526(A143182(n)-1)`
-/

namespace A239287.P14116288813232302058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A143182 n - 1).toNat

end

end A239287.P14116288813232302058

namespace A239287

/-- `A004526(A143182(n)-1)` -/
def P14116288813232302058.Spec : Prop :=
  ∀ n, P14116288813232302058.a n = A239287 n

end A239287

/-! ## A239287.P4736494544555896877

`A002265(2*A049581(n))`
-/

namespace A239287.P4736494544555896877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A049581 n).toNat

end

end A239287.P4736494544555896877

namespace A239287

/-- `A002265(2*A049581(n))` -/
def P4736494544555896877.Spec : Prop :=
  ∀ n, P4736494544555896877.a n = A239287 n

end A239287

/-! ## A239287.P6772452130018311220

`A003984(n)-A351846(n)`
-/

namespace A239287.P6772452130018311220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n - A351846 n

end

end A239287.P6772452130018311220

namespace A239287

/-- `A003984(n)-A351846(n)` -/
def P6772452130018311220.Spec : Prop :=
  ∀ n, P6772452130018311220.a n = A239287 n

end A239287

/-! ## A239287.P4766770164528252985

`A002265(abs(2*A114327(n)))`
-/

namespace A239287.P4766770164528252985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |2 * A114327 n|.toNat

end

end A239287.P4766770164528252985

namespace A239287

/-- `A002265(abs(2*A114327(n)))` -/
def P4766770164528252985.Spec : Prop :=
  ∀ n, P4766770164528252985.a n = A239287 n

end A239287

/-! ## A239287.P11380253698382338482

`A004526(A101037(n+1)-1)`
-/

namespace A239287.P11380253698382338482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A101037 (n + 1) - 1).toNat

end

end A239287.P11380253698382338482

namespace A239287

/-- `A004526(A101037(n+1)-1)` -/
def P11380253698382338482.Spec : Prop :=
  ∀ n, P11380253698382338482.a n = A239287 n

end A239287

/-! ## A239287.P2345189073963574

`A123108(A143182(n)+1)-1`
-/

namespace A239287.P2345189073963574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A143182 n + 1).toNat - 1

end

end A239287.P2345189073963574

namespace A239287

/-- `A123108(A143182(n)+1)-1` -/
def P2345189073963574.Spec : Prop :=
  ∀ n, P2345189073963574.a n = A239287 n

end A239287

/-! ## A239287.P17673589076235778735

`A080513(A049581(n)+1)-2`
-/

namespace A239287.P17673589076235778735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A049581 n + 1).toNat - 2

end

end A239287.P17673589076235778735

namespace A239287

/-- `A080513(A049581(n)+1)-2` -/
def P17673589076235778735.Spec : Prop :=
  ∀ n, P17673589076235778735.a n = A239287 n

end A239287

/-! ## A239287.P8819464529150893268

`A008624(2*A049581(n))-1`
-/

namespace A239287.P8819464529150893268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A049581 n).toNat - 1

end

end A239287.P8819464529150893268

namespace A239287

/-- `A008624(2*A049581(n))-1` -/
def P8819464529150893268.Spec : Prop :=
  ∀ n, P8819464529150893268.a n = A239287 n

end A239287

/-!
# A239288: Maximal sum of x0 + x0*x1 + ... + x0*x1*...*xk over all compositions x0 + ... + xk = n.

The programs for A239288, the canonical program `A239288.P17022959094659211950` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239288 has offset 0).

The definition of A239288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239288.P17022959094659211950

`A253062(n+2)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239288

/-- `A253062(n+2)-1` -/
def P17022959094659211950.Spec : Prop :=
  ∀ n, P17022959094659211950.a n = A239288 n

theorem P17022959094659211950.correct : P17022959094659211950.Spec := by
  intro n
  simp only [A239288]

end A239288

/-! ## A239288.P16961914471302328704

`∑[Δ[A253062(n+1)]*A057427(n)]`
-/

namespace A239288.P16961914471302328704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239288.P16961914471302328704

namespace A239288

/-- `∑[Δ[A253062(n+1)]*A057427(n)]` -/
def P16961914471302328704.Spec : Prop :=
  ∀ n, P16961914471302328704.a n = A239288 n

end A239288

/-! ## A239288.P3098908053583181011

`A110315(2*n+1)+A253062(n+2)+n`
-/

namespace A239288.P3098908053583181011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A253062 (n + 2) + (n : ℤ))

end

end A239288.P3098908053583181011

namespace A239288

/-- `A110315(2*n+1)+A253062(n+2)+n` -/
def P3098908053583181011.Spec : Prop :=
  ∀ n, P3098908053583181011.a n = A239288 n

end A239288

/-! ## A239288.P13148249564081378523

`A321804(A067032(n))+A253062(n+2)`
-/

namespace A239288.P13148249564081378523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A067032 n).toNat + A253062 (n + 2)

end

end A239288.P13148249564081378523

namespace A239288

/-- `A321804(A067032(n))+A253062(n+2)` -/
def P13148249564081378523.Spec : Prop :=
  ∀ n, P13148249564081378523.a n = A239288 n

end A239288

/-! ## A239288.P9636581814025931505

`∑[Δ[A253062(n+1)]%A253067(n)]`
-/

namespace A239288.P9636581814025931505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A253067 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239288.P9636581814025931505

namespace A239288

/-- `∑[Δ[A253062(n+1)]%A253067(n)]` -/
def P9636581814025931505.Spec : Prop :=
  ∀ n, P9636581814025931505.a n = A239288 n

end A239288

/-!
# A239289: Numbers that are not the product of three (not necessarily distinct) primes.

The programs for A239289, the canonical program `A239289.P2942217961056571404` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239289 has offset 1).

The definition of A239289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239289.P2942217961056571404

`comp[A014612(n+1)-1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A239289

/-- `comp[A014612(n+1)-1]+1` -/
def P2942217961056571404.Spec : Prop :=
  ∀ n, (P2942217961056571404.a n : ℤ) = A239289 (n + 1)

theorem P2942217961056571404.correct : P2942217961056571404.Spec := by
  intro n
  simp only [A239289, Nat.add_sub_cancel]

end A239289

/-! ## A239289.P6923825971441821159

`comp[eq[3, A001222(n+1)]]+1`
-/

namespace A239289.P6923825971441821159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A239289.P6923825971441821159

namespace A239289

/-- `comp[eq[3, A001222(n+1)]]+1` -/
def P6923825971441821159.Spec : Prop :=
  ∀ n, (P6923825971441821159.a n : ℤ) = A239289 (n + 1)

end A239289

/-! ## A239289.P10973938960450806812

`∪[A033987(n+1), A037143(n+1)]`
-/

namespace A239289.P10973938960450806812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239289.P10973938960450806812

namespace A239289

/-- `∪[A033987(n+1), A037143(n+1)]` -/
def P10973938960450806812.Spec : Prop :=
  ∀ n, (P10973938960450806812.a n : ℤ) = A239289 (n + 1)

end A239289

/-! ## A239289.P17566369289085589034

`lt[A101605(n+1), 1]+1`
-/

namespace A239289.P17566369289085589034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A239289.P17566369289085589034

namespace A239289

/-- `lt[A101605(n+1), 1]+1` -/
def P17566369289085589034.Spec : Prop :=
  ∀ n, (P17566369289085589034.a n : ℤ) = A239289 (n + 1)

end A239289

/-! ## A239289.P2925037499866334261

`eq[A000007(3*n+2), A101605(n+1)]+1`
-/

namespace A239289.P2925037499866334261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239289.P2925037499866334261

namespace A239289

/-- `eq[A000007(3*n+2), A101605(n+1)]+1` -/
def P2925037499866334261.Spec : Prop :=
  ∀ n, (P2925037499866334261.a n : ℤ) = A239289 (n + 1)

end A239289

/-! ## A239289.P4206494683701764831

`∪[A033987(n+1), A166155(n+1)]`
-/

namespace A239289.P4206494683701764831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239289.P4206494683701764831

namespace A239289

/-- `∪[A033987(n+1), A166155(n+1)]` -/
def P4206494683701764831.Spec : Prop :=
  ∀ n, (P4206494683701764831.a n : ℤ) = A239289 (n + 1)

end A239289

/-! ## A239289.P9338883999297371824

`∪[A166155(n+1), A289554(n+1)]`
-/

namespace A239289.P9338883999297371824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239289.P9338883999297371824

namespace A239289

/-- `∪[A166155(n+1), A289554(n+1)]` -/
def P9338883999297371824.Spec : Prop :=
  ∀ n, (P9338883999297371824.a n : ℤ) = A239289 (n + 1)

end A239289

/-!
# A239290: Number of pairs of terms of the sequence A228126 less than 10^n.

The programs for A239290, there is no canonical definition to state claims against.
-/

/-! ## A239290.P17220879593350172892

`A077396(A278396(n)+A007318(n))`
-/

namespace A239290.P17220879593350172892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077396 (A278396 n + A007318 n).toNat

end

end A239290.P17220879593350172892

/-! ## A239290.P11358110038792439227

`A077396(A330964(n)+A278396(n))`
-/

namespace A239290.P11358110038792439227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077396 (A330964 n + A278396 n).toNat

end

end A239290.P11358110038792439227

/-!
# A239292: (sum of all odd parts of all strict partitions of n) - (sum of all even parts of all strict partitions of n); for "strict", see Comments.

The programs for A239292, there is no canonical definition to state claims against.
-/

/-! ## A239292.P10447271995982784608

`A116682(n)-A116684(n)`
-/

namespace A239292.P10447271995982784608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116682 n - A116684 n

end

end A239292.P10447271995982784608

/-! ## A239292.P2609212150158900251

`2*A116682(n)-A066189(n)`
-/

namespace A239292.P2609212150158900251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116682 n - A066189 n

end

end A239292.P2609212150158900251

/-! ## A239292.P14101596064267415809

`A066189(n)-2*A116684(n)`
-/

namespace A239292.P14101596064267415809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066189 n - 2 * A116684 n

end

end A239292.P14101596064267415809

/-! ## A239292.P831106529460665339

`n*A000009(n)-A116684(n)-A116684(n)`
-/

namespace A239292.P831106529460665339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000009 n - A116684 n - A116684 n

end

end A239292.P831106529460665339

/-! ## A239292.P6203182488184517183

`A116682(n)-(n*A000009(n)-A116682(n))`
-/

namespace A239292.P6203182488184517183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116682 n - ((n : ℤ) * A000009 n - A116682 n)

end

end A239292.P6203182488184517183

/-!
# A239294: a(n) = (15^n - (-3)^n)/18.

The programs for A239294, the canonical program `A239294.P8494268209992375757` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239294 has offset 0).

The definition of A239294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15^n-(-3)^n)/18` (program `A239294.P7056318441959763023`, by `A239294.P7056318441959763023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239294.P8494268209992375757

`12*a(n-1)+45*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239294

/-- `12*a(n-1)+45*a(n-2)` -/
def P8494268209992375757.Spec : Prop :=
  ∀ n, (P8494268209992375757.a n : ℤ) = A239294 n

theorem P8494268209992375757.correct : P8494268209992375757.Spec := by
  intro n
  simp only [A239294]

end A239294

/-! ## A239294.P7056318441959763023

`(15^n-(-3)^n)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239294.P7056318441959763023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ n : ℤ) - (-3) ^ n : ℚ) / 18

end

end A239294.P7056318441959763023

namespace A239294

/-- `(15^n-(-3)^n)/18` -/
def P7056318441959763023.Spec : Prop :=
  ∀ n, P7056318441959763023.a n = (A239294 n : ℚ)

theorem P7056318441959763023.correct : P7056318441959763023.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A239294, Nat.add_sub_cancel, A239294.P7056318441959763023.a, A239294.P8494268209992375757.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A239294, Nat.add_sub_cancel, A239294.P7056318441959763023.a, A239294.P8494268209992375757.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239294

/-! ## A239294.P6210482173918692546

`3^abs(1-n)*A015531(n)`
-/

namespace A239294.P6210482173918692546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) * (A015531 n : ℚ)

end

end A239294.P6210482173918692546

namespace A239294

/-- `3^abs(1-n)*A015531(n)` -/
def P6210482173918692546.Spec : Prop :=
  ∀ n, P6210482173918692546.a n = (A239294 n : ℚ)

end A239294

/-! ## A239294.P18306316896888725622

`A274072(n)/6*A140429(n)`
-/

namespace A239294.P18306316896888725622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274072 n : ℚ) / 6 * (A140429 n : ℚ)

end

end A239294.P18306316896888725622

namespace A239294

/-- `A274072(n)/6*A140429(n)` -/
def P18306316896888725622.Spec : Prop :=
  ∀ n, P18306316896888725622.a n = (A239294 n : ℚ)

end A239294

/-! ## A239294.P8419129293494910952

`A015531(n)*A108411(A004273(n))`
-/

namespace A239294.P8419129293494910952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n * A108411 (A004273 n).toNat

end

end A239294.P8419129293494910952

namespace A239294

/-- `A015531(n)*A108411(A004273(n))` -/
def P8419129293494910952.Spec : Prop :=
  ∀ n, P8419129293494910952.a n = A239294 n

end A239294

/-! ## A239294.P10483521068154426291

`A015531(n)*A111575(A130824(n))`
-/

namespace A239294.P10483521068154426291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n * A111575 (A130824 n).toNat

end

end A239294.P10483521068154426291

namespace A239294

/-- `A015531(n)*A111575(A130824(n))` -/
def P10483521068154426291.Spec : Prop :=
  ∀ n, P10483521068154426291.a n = A239294 n

end A239294

/-!
# A239295: Number of words of length n over the alphabet {0,...,n-1} that avoid the pattern 123.

The programs for A239295, there is no canonical definition to state claims against.
-/

/-! ## A239295.P8981190513351975298

`A247480(n)+A002264(A211210(n))`
-/

namespace A239295.P8981190513351975298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247480 n + A002264 (A211210 n).toNat

end

end A239295.P8981190513351975298

/-! ## A239295.P5404592921579023447

`A008624(A295553(n)+A215654(n))`
-/

namespace A239295.P5404592921579023447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A295553 n + A215654 n).toNat

end

end A239295.P5404592921579023447

/-!
# A239296: Words of length n over the alphabet {0,...,n-1} that are 112-avoiding.

The programs for A239296, there is no canonical definition to state claims against.
-/

/-! ## A239296.P5279034950955166616

`A125505(A000088(n))+A083355(n)`
-/

namespace A239296.P5279034950955166616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000088 n).toNat + A083355 n

end

end A239296.P5279034950955166616

/-! ## A239296.P2811588394552724199

`A004526(A336031(n)+A177388(n))`
-/

namespace A239296.P2811588394552724199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A336031 n + A177388 n).toNat

end

end A239296.P2811588394552724199

/-!
# A239297: Floor of first differences of Pi*10^n.

The programs for A239297, there is no canonical definition to state claims against.
-/

/-! ## A239297.P17244140575103273384

`floor(Δ[π*floor(10^(n-1))])`
-/

namespace A239297.P17244140575103273384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A239297.P17244140575103273384

/-!
# A239298: Words of length n over the alphabet {0,...,n-1} that are 1342-avoiding.

The programs for A239298, there is no canonical definition to state claims against.
-/

/-! ## A239298.P812444312943997027

`xor(A055955(n)², A239379(n))`
-/

namespace A239298.P812444312943997027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055955 n ^ 2) (A239379 n)

end

end A239298.P812444312943997027

/-! ## A239298.P10671972635906795190

`xor(A280692(n+1)², A239379(n))`
-/

namespace A239298.P10671972635906795190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280692 (n + 1) ^ 2) (A239379 n)

end

end A239298.P10671972635906795190

/-! ## A239298.P12710548072423010188

`xor(A116084(A124781(n)), A239379(n))`
-/

namespace A239298.P12710548072423010188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116084 (A124781 n).toNat) (A239379 n)

end

end A239298.P12710548072423010188

/-!
# A239299: Number of words of length n over the alphabet {0,...,n-1} that are 1234-avoiding.

The programs for A239299, there is no canonical definition to state claims against.
-/

/-! ## A239299.P18366332304782730600

`A239300(lcm(n, ceil(xor(1, n)/4)))`
-/

namespace A239299.P18366332304782730600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239300 (Int.lcm (n : ℤ) ⌈(Nat.xor 1 n : ℚ) / 4⌉)

end

end A239299.P18366332304782730600

/-! ## A239299.P3209911469328574837

`A000027(A239300(n))`
-/

namespace A239299.P3209911469328574837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A239300 n).toNat

end

end A239299.P3209911469328574837

/-! ## A239299.P14781336781029236709

`A239300(A348808(n)+n)`
-/

namespace A239299.P14781336781029236709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239300 (A348808 n + (n : ℤ)).toNat

end

end A239299.P14781336781029236709

