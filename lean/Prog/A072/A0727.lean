import SequenceMachineLib
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B011.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A072700: A072698(n) / A072699(n).

The programs for A072700, the canonical program `A072700.P6551211295468152979` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072700 has offset 1).

The definition of A072700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072698, A072699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072700.P6551211295468152979

`A072698(n+1)/A072699(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072700

/-- `A072698(n+1)/A072699(n+1)` -/
def P6551211295468152979.Spec : Prop :=
  ∀ n, P6551211295468152979.a n = (A072700 (n + 1) : ℚ)

end A072700

/-! ## A072700.P1675663206030114260

`A072698(n+1)/A001221(A072697(n+1))`
-/

namespace A072700.P1675663206030114260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072698 (n + 1) : ℚ) / (A001221 (A072697 (n + 1)).toNat : ℚ)

end

end A072700.P1675663206030114260

namespace A072700

/-- `A072698(n+1)/A001221(A072697(n+1))` -/
def P1675663206030114260.Spec : Prop :=
  ∀ n, P1675663206030114260.a n = (A072700 (n + 1) : ℚ)

end A072700

/-! ## A072700.P4202239764274960154

`A001414(A072697(n+1))/A072699(n+1)`
-/

namespace A072700.P4202239764274960154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A072697 (n + 1)).toNat : ℚ) / (A072699 (n + 1) : ℚ)

end

end A072700.P4202239764274960154

namespace A072700

/-- `A001414(A072697(n+1))/A072699(n+1)` -/
def P4202239764274960154.Spec : Prop :=
  ∀ n, P4202239764274960154.a n = (A072700 (n + 1) : ℚ)

end A072700

/-! ## A072700.P12493145701644634689

`A067620(A072697(n+1))`
-/

namespace A072700.P12493145701644634689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (A072697 (n + 1)).toNat

end

end A072700.P12493145701644634689

namespace A072700

/-- `A067620(A072697(n+1))` -/
def P12493145701644634689.Spec : Prop :=
  ∀ n, P12493145701644634689.a n = A072700 (n + 1)

end A072700

/-! ## A072700.P3542581576895737251

`A067620(∩[A064594(n+1), A078174(n+1)])`
-/

namespace A072700.P3542581576895737251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A072700.P3542581576895737251

namespace A072700

/-- `A067620(∩[A064594(n+1), A078174(n+1)])` -/
def P3542581576895737251.Spec : Prop :=
  ∀ n, P3542581576895737251.a n = A072700 (n + 1)

end A072700

/-! ## A072700.P17690251140518538938

`A067620(∩[A139316(n+1), A144338(n+1)])`
-/

namespace A072700.P17690251140518538938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A072700.P17690251140518538938

namespace A072700

/-- `A067620(∩[A139316(n+1), A144338(n+1)])` -/
def P17690251140518538938.Spec : Prop :=
  ∀ n, P17690251140518538938.a n = A072700 (n + 1)

end A072700

/-! ## A072700.P2142373617246364913

`A008472(A072697(n+1)²)/A072699(n+1)`
-/

namespace A072700.P2142373617246364913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (A072697 (n + 1) ^ 2).toNat : ℚ) / (A072699 (n + 1) : ℚ)

end

end A072700.P2142373617246364913

namespace A072700

/-- `A008472(A072697(n+1)²)/A072699(n+1)` -/
def P2142373617246364913.Spec : Prop :=
  ∀ n, P2142373617246364913.a n = (A072700 (n + 1) : ℚ)

end A072700

/-!
# A072702: Last digit of F(n) is 4 where F(n) is the n-th Fibonacci number.

The programs for A072702, the canonical program `A072702.P3007630778169906481` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072702 has offset 1).

The definition of A072702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072702.P3007630778169906481

`A072710(n+2)-15`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072702

/-- `A072710(n+2)-15` -/
def P3007630778169906481.Spec : Prop :=
  ∀ n, P3007630778169906481.a n = A072702 (n + 1)

theorem P3007630778169906481.correct : P3007630778169906481.Spec := by
  intro n
  simp only [A072702, Nat.add_sub_cancel]

end A072702

/-! ## A072702.P14839266414569823405

`A072708(n+2)-(A008963(A105505(n+1))+25)`
-/

namespace A072702.P14839266414569823405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072708 (n + 2) - (A008963 (A105505 (n + 1)).toNat + 25)

end

end A072702.P14839266414569823405

namespace A072702

/-- `A072708(n+2)-(A008963(A105505(n+1))+25)` -/
def P14839266414569823405.Spec : Prop :=
  ∀ n, P14839266414569823405.a n = A072702 (n + 1)

end A072702

/-! ## A072702.P10999242270503254639

`A023457(A072710(n+2))`
-/

namespace A072702.P10999242270503254639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (A072710 (n + 2)).toNat

end

end A072702.P10999242270503254639

namespace A072702

/-- `A023457(A072710(n+2))` -/
def P10999242270503254639.Spec : Prop :=
  ∀ n, P10999242270503254639.a n = A072702 (n + 1)

end A072702

/-! ## A072702.P17323945091574437354

`eq[A003893(n), A329505(n)]`
-/

namespace A072702.P17323945091574437354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P17323945091574437354

namespace A072702

/-- `eq[A003893(n), A329505(n)]` -/
def P17323945091574437354.Spec : Prop :=
  ∀ n, (P17323945091574437354.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P14630418934475301690

`eq[A003893(n), A329509(n)]`
-/

namespace A072702.P14630418934475301690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P14630418934475301690

namespace A072702

/-- `eq[A003893(n), A329509(n)]` -/
def P14630418934475301690.Spec : Prop :=
  ∀ n, (P14630418934475301690.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P15422776902911723569

`eq[A003893(n), A088838(n+1)]`
-/

namespace A072702.P15422776902911723569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P15422776902911723569

namespace A072702

/-- `eq[A003893(n), A088838(n+1)]` -/
def P15422776902911723569.Spec : Prop :=
  ∀ n, (P15422776902911723569.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P3269872149098055714

`eq[A003893(n), A271621(n+1)]`
-/

namespace A072702.P3269872149098055714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P3269872149098055714

namespace A072702

/-- `eq[A003893(n), A271621(n+1)]` -/
def P3269872149098055714.Spec : Prop :=
  ∀ n, (P3269872149098055714.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P16267725614070990723

`eq[A003893(n), A297217(n+1)]`
-/

namespace A072702.P16267725614070990723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P16267725614070990723

namespace A072702

/-- `eq[A003893(n), A297217(n+1)]` -/
def P16267725614070990723.Spec : Prop :=
  ∀ n, (P16267725614070990723.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P4685375517820993845

`eq[A252358(n)+1, A082116(n)]`
-/

namespace A072702.P4685375517820993845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P4685375517820993845

namespace A072702

/-- `eq[A252358(n)+1, A082116(n)]` -/
def P4685375517820993845.Spec : Prop :=
  ∀ n, (P4685375517820993845.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P3814763064320651802

`eq[A003893(n)+2, A063808(n)]`
-/

namespace A072702.P3814763064320651802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P3814763064320651802

namespace A072702

/-- `eq[A003893(n)+2, A063808(n)]` -/
def P3814763064320651802.Spec : Prop :=
  ∀ n, (P3814763064320651802.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P8287507140497044120

`eq[A003893(n)+2, A329506(n)]`
-/

namespace A072702.P8287507140497044120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P8287507140497044120

namespace A072702

/-- `eq[A003893(n)+2, A329506(n)]` -/
def P8287507140497044120.Spec : Prop :=
  ∀ n, (P8287507140497044120.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P892387574780390983

`eq[A003893(n), A154040(n+4)]`
-/

namespace A072702.P892387574780390983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154040 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P892387574780390983

namespace A072702

/-- `eq[A003893(n), A154040(n+4)]` -/
def P892387574780390983.Spec : Prop :=
  ∀ n, (P892387574780390983.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P8822447027260812639

`eq[A082116(n), A090370(n+4)]`
-/

namespace A072702.P8822447027260812639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P8822447027260812639

namespace A072702

/-- `eq[A082116(n), A090370(n+4)]` -/
def P8822447027260812639.Spec : Prop :=
  ∀ n, (P8822447027260812639.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P3877775537434941335

`eq[2*A003893(n), A329507(n)]`
-/

namespace A072702.P3877775537434941335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P3877775537434941335

namespace A072702

/-- `eq[2*A003893(n), A329507(n)]` -/
def P3877775537434941335.Spec : Prop :=
  ∀ n, (P3877775537434941335.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P12716810951042001244

`eq[2*A003893(n), A329513(n)]`
-/

namespace A072702.P12716810951042001244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P12716810951042001244

namespace A072702

/-- `eq[2*A003893(n), A329513(n)]` -/
def P12716810951042001244.Spec : Prop :=
  ∀ n, (P12716810951042001244.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P10907896022483532589

`eq[A060684(n+1)², A003893(n)]`
-/

namespace A072702.P10907896022483532589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P10907896022483532589

namespace A072702

/-- `eq[A060684(n+1)², A003893(n)]` -/
def P10907896022483532589.Spec : Prop :=
  ∀ n, (P10907896022483532589.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P13496227906018343522

`eq[A071187(n+1)², A003893(n)]`
-/

namespace A072702.P13496227906018343522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P13496227906018343522

namespace A072702

/-- `eq[A071187(n+1)², A003893(n)]` -/
def P13496227906018343522.Spec : Prop :=
  ∀ n, (P13496227906018343522.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P17152005625858990098

`eq[A078832(n+1)², A003893(n)]`
-/

namespace A072702.P17152005625858990098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P17152005625858990098

namespace A072702

/-- `eq[A078832(n+1)², A003893(n)]` -/
def P17152005625858990098.Spec : Prop :=
  ∀ n, (P17152005625858990098.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P15437130923740136628

`eq[A104435(n+1)², A003893(n)]`
-/

namespace A072702.P15437130923740136628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P15437130923740136628

namespace A072702

/-- `eq[A104435(n+1)², A003893(n)]` -/
def P15437130923740136628.Spec : Prop :=
  ∀ n, (P15437130923740136628.a n : ℤ) = A072702 (n + 1)

end A072702

/-! ## A072702.P12497297121943850125

`eq[A165063(n+1)², A003893(n)]`
-/

namespace A072702.P12497297121943850125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072702.P12497297121943850125

namespace A072702

/-- `eq[A165063(n+1)², A003893(n)]` -/
def P12497297121943850125.Spec : Prop :=
  ∀ n, (P12497297121943850125.a n : ℤ) = A072702 (n + 1)

end A072702

/-!
# A072703: Indices of Fibonacci numbers whose last digit is 5.

The programs for A072703, the canonical program `A072703.P6375053902830314596` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072703 has offset 1).

The definition of A072703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072703.P6375053902830314596

`15*n-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072703

/-- `15*n-a(n-1)` -/
def P6375053902830314596.Spec : Prop :=
  ∀ n, P6375053902830314596.a n = A072703 (n + 1)

theorem P6375053902830314596.correct : P6375053902830314596.Spec := by
  intro n
  simp only [A072703, Nat.add_sub_cancel]

end A072703

/-! ## A072703.P9480751516764141787

`5*A001651(n+1)`
-/

namespace A072703.P9480751516764141787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001651 (n + 1)

end

end A072703.P9480751516764141787

namespace A072703

/-- `5*A001651(n+1)` -/
def P9480751516764141787.Spec : Prop :=
  ∀ n, P9480751516764141787.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P14377568538017681649

`5*comp[3*n]`
-/

namespace A072703.P14377568538017681649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A072703.P14377568538017681649

namespace A072703

/-- `5*comp[3*n]` -/
def P14377568538017681649.Spec : Prop :=
  ∀ n, (P14377568538017681649.a n : ℤ) = A072703 (n + 1)

end A072703

/-! ## A072703.P10756516006302940700

`a(n-2)+15` with `a(0)=5, a(1)=10`
-/

namespace A072703.P10756516006302940700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 10] fun n a =>
  a (n - 2) + 15

end

end A072703.P10756516006302940700

namespace A072703

/-- `a(n-2)+15` -/
def P10756516006302940700.Spec : Prop :=
  ∀ n, (P10756516006302940700.a n : ℤ) = A072703 (n + 1)

end A072703

/-! ## A072703.P8826348173116939643

`∑[5*gcd(2, n)]-5`
-/

namespace A072703.P8826348173116939643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A072703.P8826348173116939643

namespace A072703

/-- `∑[5*gcd(2, n)]-5` -/
def P8826348173116939643.Spec : Prop :=
  ∀ n, P8826348173116939643.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P1055227065415950899

`∑[gcd(10, lcm(5, n))]-5`
-/

namespace A072703.P1055227065415950899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (Nat.lcm 5 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A072703.P1055227065415950899

namespace A072703

/-- `∑[gcd(10, lcm(5, n))]-5` -/
def P1055227065415950899.Spec : Prop :=
  ∀ n, P1055227065415950899.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P1017256753042932472

`∑[5*gcd(4, ∏{p}[n, #])]`
-/

namespace A072703.P1017256753042932472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd 4 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P1017256753042932472

namespace A072703

/-- `∑[5*gcd(4, ∏{p}[n, #])]` -/
def P1017256753042932472.Spec : Prop :=
  ∀ n, (P1017256753042932472.a n : ℤ) = A072703 (n + 1)

end A072703

/-! ## A072703.P723561551000956258

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=5, a(2)=10`
-/

namespace A072703.P723561551000956258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 5, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P723561551000956258

namespace A072703

/-- `∑[abs(a(n-2))]` -/
def P723561551000956258.Spec : Prop :=
  ∀ n, (P723561551000956258.a n : ℤ) = A072703 (n + 1)

end A072703

/-! ## A072703.P17486728101509036743

`∑[15-a(n-1)]` with `a(0)=5, a(1)=5`
-/

namespace A072703.P17486728101509036743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P17486728101509036743

namespace A072703

/-- `∑[15-a(n-1)]` -/
def P17486728101509036743.Spec : Prop :=
  ∀ n, P17486728101509036743.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P16385200899467629382

`record[lcm(3, 5*(n+1))/3]`
-/

namespace A072703.P16385200899467629382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (5 * (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072703.P16385200899467629382

namespace A072703

/-- `record[lcm(3, 5*(n+1))/3]` -/
def P16385200899467629382.Spec : Prop :=
  ∀ n, P16385200899467629382.a n = (A072703 (n + 1) : ℚ)

end A072703

/-! ## A072703.P7587884225659895293

`record[5*(n+2-gcd(3, n+1))]`
-/

namespace A072703.P7587884225659895293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 2 : ℤ) - (Nat.gcd 3 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072703.P7587884225659895293

namespace A072703

/-- `record[5*(n+2-gcd(3, n+1))]` -/
def P7587884225659895293.Spec : Prop :=
  ∀ n, P7587884225659895293.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P3419821194621335339

`record[5*(n+1-val(n+1, 3))]`
-/

namespace A072703.P3419821194621335339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 1) 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072703.P3419821194621335339

namespace A072703

/-- `record[5*(n+1-val(n+1, 3))]` -/
def P3419821194621335339.Spec : Prop :=
  ∀ n, P3419821194621335339.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P13806625332674139589

`∑[A040021(n)]`
-/

namespace A072703.P13806625332674139589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P13806625332674139589

namespace A072703

/-- `∑[A040021(n)]` -/
def P13806625332674139589.Spec : Prop :=
  ∀ n, P13806625332674139589.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P10674381018529450354

`∑[A040091(n)/2]`
-/

namespace A072703.P10674381018529450354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040091 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P10674381018529450354

namespace A072703

/-- `∑[A040091(n)/2]` -/
def P10674381018529450354.Spec : Prop :=
  ∀ n, P10674381018529450354.a n = (A072703 (n + 1) : ℚ)

end A072703

/-! ## A072703.P10369166854580234749

`∑[A040211(n)/3]`
-/

namespace A072703.P10369166854580234749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040211 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P10369166854580234749

namespace A072703

/-- `∑[A040211(n)/3]` -/
def P10369166854580234749.Spec : Prop :=
  ∀ n, P10369166854580234749.a n = (A072703 (n + 1) : ℚ)

end A072703

/-! ## A072703.P13742207831462390294

`∑[5*A040001(n)]`
-/

namespace A072703.P13742207831462390294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P13742207831462390294

namespace A072703

/-- `∑[5*A040001(n)]` -/
def P13742207831462390294.Spec : Prop :=
  ∀ n, P13742207831462390294.a n = A072703 (n + 1)

end A072703

/-! ## A072703.P2186793575882612373

`∑[A040381(n)/4]`
-/

namespace A072703.P2186793575882612373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040381 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072703.P2186793575882612373

namespace A072703

/-- `∑[A040381(n)/4]` -/
def P2186793575882612373.Spec : Prop :=
  ∀ n, P2186793575882612373.a n = (A072703 (n + 1) : ℚ)

end A072703

/-!
# A072704: Triangle of number of weakly unimodal partitions/compositions of n into exactly k terms.

The programs for A072704, there is no canonical definition to state claims against.
-/

/-! ## A072704.P11422787923221300134

`A210489(A271439(n))%p?[A047732(n)]`
-/

namespace A072704.P11422787923221300134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210489 (A271439 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A072704.P11422787923221300134

/-! ## A072704.P12196009898573218280

`A210489(A083920(n)%A244529(n+1))`
-/

namespace A072704.P12196009898573218280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (Int.tmod (A083920 n) (A244529 (n + 1))).toNat

end

end A072704.P12196009898573218280

/-! ## A072704.P1914858283385357724

`A210489(A271439(n)%A244529(n+1))`
-/

namespace A072704.P1914858283385357724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (Int.tmod (A271439 n) (A244529 (n + 1))).toNat

end

end A072704.P1914858283385357724

/-! ## A072704.P17892702543939541159

`A210489(A083920(n))%A000203(A292324(n))`
-/

namespace A072704.P17892702543939541159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210489 (A083920 n).toNat) (A000203 (A292324 n).toNat)

end

end A072704.P17892702543939541159

/-! ## A072704.P17353919567090957601

`A001222(A000043(n+1))*A210489(A083920(n))`
-/

namespace A072704.P17353919567090957601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A210489 (A083920 n).toNat

end

end A072704.P17353919567090957601

/-!
# A072705: Triangle of number of unimodal compositions of n into exactly k distinct terms.

The programs for A072705, there is no canonical definition to state claims against.
-/

/-! ## A072705.P6654020197070542540

`A004070(n)*A060016(n+1)`
-/

namespace A072705.P6654020197070542540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A060016 (n + 1)

end

end A072705.P6654020197070542540

/-! ## A072705.P1503107605729920147

`A059268(n)*A060016(n+1)`
-/

namespace A072705.P1503107605729920147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A060016 (n + 1)

end

end A072705.P1503107605729920147

/-! ## A072705.P16591978890778485115

`A060016(n+1)*A144464(n)`
-/

namespace A072705.P16591978890778485115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A144464 n

end

end A072705.P16591978890778485115

/-! ## A072705.P10711324965422480580

`A060016(n+1)*A145111(n)`
-/

namespace A072705.P10711324965422480580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A145111 n

end

end A072705.P10711324965422480580

/-! ## A072705.P16647589426348137642

`A060016(n+1)*A216274(n)`
-/

namespace A072705.P16647589426348137642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A216274 n

end

end A072705.P16647589426348137642

/-! ## A072705.P629061406967129030

`A048887(n+1)*A060016(n+1)`
-/

namespace A072705.P629061406967129030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1) * A060016 (n + 1)

end

end A072705.P629061406967129030

/-! ## A072705.P13514724115199930606

`A059250(n+1)*A060016(n+1)`
-/

namespace A072705.P13514724115199930606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (n + 1) * A060016 (n + 1)

end

end A072705.P13514724115199930606

/-! ## A072705.P17108474247070671725

`A060016(n+1)*A368175(n+1)`
-/

namespace A072705.P17108474247070671725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A368175 (n + 1)

end

end A072705.P17108474247070671725

/-! ## A072705.P12439075566512828890

`A060016(n+1)*A209435(n)`
-/

namespace A072705.P12439075566512828890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A209435 n

end

end A072705.P12439075566512828890

/-! ## A072705.P6538980990536948994

`A060016(n+1)*A318806(n+1)`
-/

namespace A072705.P6538980990536948994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A318806 (n + 1)

end

end A072705.P6538980990536948994

/-! ## A072705.P16805082725451012473

`A060016(n+1)*A171840(n+1)`
-/

namespace A072705.P16805082725451012473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A171840 (n + 1)

end

end A072705.P16805082725451012473

/-! ## A072705.P6637474122724577837

`A060016(n+1)*A233308(n)`
-/

namespace A072705.P6637474122724577837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A233308 n

end

end A072705.P6637474122724577837

/-!
# A072706: Number of unimodal partitions/compositions of n into distinct terms.

The programs for A072706, there is no canonical definition to state claims against.
-/

/-! ## A072706.P6608361708974194242

`ceil(A032302(n)/2)`
-/

namespace A072706.P6608361708974194242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032302 n : ℚ) / 2⌉

end

end A072706.P6608361708974194242

/-! ## A072706.P10470152002618316156

`A032302(abs(1-n)+1)/2`
-/

namespace A072706.P10470152002618316156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032302 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2

end

end A072706.P10470152002618316156

/-! ## A072706.P16884541284520490689

`floor(A032302(round(sqrt(n²+1)))/2)`
-/

namespace A072706.P16884541284520490689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032302 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2⌋

end

end A072706.P16884541284520490689

/-! ## A072706.P644862304884827094

`A032020(n)-A072707(n)`
-/

namespace A072706.P644862304884827094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A072707 n

end

end A072706.P644862304884827094

/-! ## A072706.P8617436713890915110

`abs(A032302(n)/A280560(n))`
-/

namespace A072706.P8617436713890915110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A032302 n : ℚ) / (A280560 n : ℚ)|

end

end A072706.P8617436713890915110

/-! ## A072706.P5869824907330474398

`(A032302(n)+A000007(n))/2`
-/

namespace A072706.P5869824907330474398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032302 n + A000007 n : ℚ) / 2

end

end A072706.P5869824907330474398

/-! ## A072706.P3061915736736958739

`1/A036453(n+1)*A032302(n)`
-/

namespace A072706.P3061915736736958739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A036453 (n + 1) : ℚ) * (A032302 n : ℚ)

end

end A072706.P3061915736736958739

/-! ## A072706.P3817322527964980116

`A333147(n)+A333149(n)-A072707(n)`
-/

namespace A072706.P3817322527964980116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + (A333149 n - A072707 n)

end

end A072706.P3817322527964980116

/-! ## A072706.P2482329809621311974

`abs(A286957(∑[n+3])/A280560(n))`
-/

namespace A072706.P2482329809621311974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A286957 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A280560 n : ℚ)|

end

end A072706.P2482329809621311974

/-! ## A072706.P4884594561409118949

`A286957(∑[n+3])/A036453(n+1)`
-/

namespace A072706.P4884594561409118949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286957 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A072706.P4884594561409118949

/-!
# A072707: Number of non-unimodal compositions of n into distinct terms.

The programs for A072707, there is no canonical definition to state claims against.
-/

/-! ## A072707.P16738392987828366454

`A032020(n)-A072706(n)`
-/

namespace A072707.P16738392987828366454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A072706 n

end

end A072707.P16738392987828366454

/-! ## A072707.P8952694212725582056

`A032020(n)-ceil(A032302(n)/2)`
-/

namespace A072707.P8952694212725582056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - ⌈(A032302 n : ℚ) / 2⌉

end

end A072707.P8952694212725582056

/-! ## A072707.P16238057775241266703

`A216695(n)+1-A072706(n)`
-/

namespace A072707.P16238057775241266703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + (1 - A072706 n)

end

end A072707.P16238057775241266703

/-! ## A072707.P1147891514685423114

`A333147(n)+A333149(n)-A072706(n)`
-/

namespace A072707.P1147891514685423114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + (A333149 n - A072706 n)

end

end A072707.P1147891514685423114

/-! ## A072707.P9237653594723907322

`(A333149(n)+A332874(n))/2`
-/

namespace A072707.P9237653594723907322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333149 n + A332874 n : ℚ) / 2

end

end A072707.P9237653594723907322

/-! ## A072707.P3123639677476311429

`2*A032058(n)-1-A072706(n)`
-/

namespace A072707.P3123639677476311429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032058 n - 1 - A072706 n

end

end A072707.P3123639677476311429

/-!
# A072708: Last digit of F(n) is 6 where F(n) is the n-th Fibonacci number.

The programs for A072708, the canonical program `A072708.P18291931151110653187` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072708 has offset 1).

The definition of A072708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072708.P1004772230655164043

`A072710(n+1)+15`
-/

namespace A072708.P1004772230655164043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072710 (n + 1) + 15

end

end A072708.P1004772230655164043

namespace A072708

/-- `A072710(n+1)+15` -/
def P1004772230655164043.Spec : Prop :=
  ∀ n, P1004772230655164043.a n = A072708 (n + 1)

end A072708

/-! ## A072708.P18291931151110653187

`A072682(n+2)+A008597(n)-A008597(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072708

/-- `A072682(n+2)+A008597(n)-A008597(n+1)` -/
def P18291931151110653187.Spec : Prop :=
  ∀ n, P18291931151110653187.a n = A072708 (n + 1)

theorem P18291931151110653187.correct : P18291931151110653187.Spec := by
  intro n
  simp only [A072708, Nat.add_sub_cancel]

end A072708

/-! ## A072708.P3116483564495360049

`3*(A284307(xor(3, 5*n))+5)`
-/

namespace A072708.P3116483564495360049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A284307 (Nat.xor 3 (5 * n)) + 5)

end

end A072708.P3116483564495360049

namespace A072708

/-- `3*(A284307(xor(3, 5*n))+5)` -/
def P3116483564495360049.Spec : Prop :=
  ∀ n, P3116483564495360049.a n = A072708 (n + 1)

end A072708

/-! ## A072708.P5943439932205793310

`A342903(A072710(n+1))`
-/

namespace A072708.P5943439932205793310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342903 (A072710 (n + 1)).toNat

end

end A072708.P5943439932205793310

namespace A072708

/-- `A342903(A072710(n+1))` -/
def P5943439932205793310.Spec : Prop :=
  ∀ n, P5943439932205793310.a n = A072708 (n + 1)

end A072708

/-! ## A072708.P817923493463567950

`eq[A003893(n), A063808(n)]`
-/

namespace A072708.P817923493463567950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P817923493463567950

namespace A072708

/-- `eq[A003893(n), A063808(n)]` -/
def P817923493463567950.Spec : Prop :=
  ∀ n, (P817923493463567950.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P1818289472373043759

`eq[A082116(n), A138189(n)]`
-/

namespace A072708.P1818289472373043759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P1818289472373043759

namespace A072708

/-- `eq[A082116(n), A138189(n)]` -/
def P1818289472373043759.Spec : Prop :=
  ∀ n, (P1818289472373043759.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P3942356760760826410

`eq[A082116(n), A158613(n)]`
-/

namespace A072708.P3942356760760826410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P3942356760760826410

namespace A072708

/-- `eq[A082116(n), A158613(n)]` -/
def P3942356760760826410.Spec : Prop :=
  ∀ n, (P3942356760760826410.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P6033429025955881922

`eq[A003893(n), A329506(n)]`
-/

namespace A072708.P6033429025955881922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P6033429025955881922

namespace A072708

/-- `eq[A003893(n), A329506(n)]` -/
def P6033429025955881922.Spec : Prop :=
  ∀ n, (P6033429025955881922.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P16973403531084954607

`eq[A003893(n), A329510(n)]`
-/

namespace A072708.P16973403531084954607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P16973403531084954607

namespace A072708

/-- `eq[A003893(n), A329510(n)]` -/
def P16973403531084954607.Spec : Prop :=
  ∀ n, (P16973403531084954607.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P12136801785752569372

`eq[A003893(n), A329516(n)]`
-/

namespace A072708.P12136801785752569372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P12136801785752569372

namespace A072708

/-- `eq[A003893(n), A329516(n)]` -/
def P12136801785752569372.Spec : Prop :=
  ∀ n, (P12136801785752569372.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P10977435116332520229

`eq[A010073(n), A264757(n+1)]`
-/

namespace A072708.P10977435116332520229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P10977435116332520229

namespace A072708

/-- `eq[A010073(n), A264757(n+1)]` -/
def P10977435116332520229.Spec : Prop :=
  ∀ n, (P10977435116332520229.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P16370226925960644598

`eq[A082116(n), A332056(n+1)]`
-/

namespace A072708.P16370226925960644598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P16370226925960644598

namespace A072708

/-- `eq[A082116(n), A332056(n+1)]` -/
def P16370226925960644598.Spec : Prop :=
  ∀ n, (P16370226925960644598.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P14714493910841961961

`eq[A003893(n)+2, A329507(n)]`
-/

namespace A072708.P14714493910841961961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P14714493910841961961

namespace A072708

/-- `eq[A003893(n)+2, A329507(n)]` -/
def P14714493910841961961.Spec : Prop :=
  ∀ n, (P14714493910841961961.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P10191411335595948152

`eq[A329505(n)+2, A003893(n)]`
-/

namespace A072708.P10191411335595948152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P10191411335595948152

namespace A072708

/-- `eq[A329505(n)+2, A003893(n)]` -/
def P10191411335595948152.Spec : Prop :=
  ∀ n, (P10191411335595948152.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P10059541017494342242

`eq[A329509(n)+2, A003893(n)]`
-/

namespace A072708.P10059541017494342242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P10059541017494342242

namespace A072708

/-- `eq[A329509(n)+2, A003893(n)]` -/
def P10059541017494342242.Spec : Prop :=
  ∀ n, (P10059541017494342242.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P4396614370256703539

`eq[2*A113923(n), A003893(n)]`
-/

namespace A072708.P4396614370256703539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P4396614370256703539

namespace A072708

/-- `eq[2*A113923(n), A003893(n)]` -/
def P4396614370256703539.Spec : Prop :=
  ∀ n, (P4396614370256703539.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P5060191395779203499

`eq[A088838(n+1)+2, A003893(n)]`
-/

namespace A072708.P5060191395779203499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088838 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P5060191395779203499

namespace A072708

/-- `eq[A088838(n+1)+2, A003893(n)]` -/
def P5060191395779203499.Spec : Prop :=
  ∀ n, (P5060191395779203499.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P1224047857079714147

`eq[A271621(n+1)+2, A003893(n)]`
-/

namespace A072708.P1224047857079714147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271621 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P1224047857079714147

namespace A072708

/-- `eq[A271621(n+1)+2, A003893(n)]` -/
def P1224047857079714147.Spec : Prop :=
  ∀ n, (P1224047857079714147.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P8796496942374589622

`eq[A082116(n)+2, A347538(n+3)]`
-/

namespace A072708.P8796496942374589622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P8796496942374589622

namespace A072708

/-- `eq[A082116(n)+2, A347538(n+3)]` -/
def P8796496942374589622.Spec : Prop :=
  ∀ n, (P8796496942374589622.a n : ℤ) = A072708 (n + 1)

end A072708

/-! ## A072708.P11558362667469180437

`eq[A060684(n+1)²+2, A003893(n)]`
-/

namespace A072708.P11558362667469180437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1) ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072708.P11558362667469180437

namespace A072708

/-- `eq[A060684(n+1)²+2, A003893(n)]` -/
def P11558362667469180437.Spec : Prop :=
  ∀ n, (P11558362667469180437.a n : ℤ) = A072708 (n + 1)

end A072708

/-!
# A072709: Integers m such that the last digit of Fibonacci(m) is 7.

The programs for A072709, the canonical program `A072709.P15798147248747422225` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072709 has offset 1).

The definition of A072709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072709.P15798147248747422225

`A072711(n+2)-15`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072709

/-- `A072711(n+2)-15` -/
def P15798147248747422225.Spec : Prop :=
  ∀ n, P15798147248747422225.a n = A072709 (n + 1)

theorem P15798147248747422225.correct : P15798147248747422225.Spec := by
  intro n
  simp only [A072709, Nat.add_sub_cancel]

end A072709

/-! ## A072709.P9791821315966753062

`eq[A063808(n)+1, A003893(n)]`
-/

namespace A072709.P9791821315966753062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P9791821315966753062

namespace A072709

/-- `eq[A063808(n)+1, A003893(n)]` -/
def P9791821315966753062.Spec : Prop :=
  ∀ n, (P9791821315966753062.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P11124388831200983568

`eq[A101443(n)+1, A082116(n)]`
-/

namespace A072709.P11124388831200983568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P11124388831200983568

namespace A072709

/-- `eq[A101443(n)+1, A082116(n)]` -/
def P11124388831200983568.Spec : Prop :=
  ∀ n, (P11124388831200983568.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P14561435481915098214

`eq[A329506(n)+1, A003893(n)]`
-/

namespace A072709.P14561435481915098214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P14561435481915098214

namespace A072709

/-- `eq[A329506(n)+1, A003893(n)]` -/
def P14561435481915098214.Spec : Prop :=
  ∀ n, (P14561435481915098214.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P3500771264416733000

`eq[A329510(n)+1, A003893(n)]`
-/

namespace A072709.P3500771264416733000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P3500771264416733000

namespace A072709

/-- `eq[A329510(n)+1, A003893(n)]` -/
def P3500771264416733000.Spec : Prop :=
  ∀ n, (P3500771264416733000.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P16406384920069056371

`eq[A329516(n)+1, A003893(n)]`
-/

namespace A072709.P16406384920069056371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P16406384920069056371

namespace A072709

/-- `eq[A329516(n)+1, A003893(n)]` -/
def P16406384920069056371.Spec : Prop :=
  ∀ n, (P16406384920069056371.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P5291593262934600688

`eq[7, and(A003893(n), A007522(n+1))]`
-/

namespace A072709.P5291593262934600688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003893 n) (A007522 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072709.P5291593262934600688

namespace A072709

/-- `eq[7, and(A003893(n), A007522(n+1))]` -/
def P5291593262934600688.Spec : Prop :=
  ∀ n, (P5291593262934600688.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P5254724652341226694

`eq[or(7, A233284(n+1)), A003893(n)]`
-/

namespace A072709.P5254724652341226694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A233284 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P5254724652341226694

namespace A072709

/-- `eq[or(7, A233284(n+1)), A003893(n)]` -/
def P5254724652341226694.Spec : Prop :=
  ∀ n, (P5254724652341226694.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P17815036791706655886

`eq[A082116(n+5), A095117(A038500(n+3))]`
-/

namespace A072709.P17815036791706655886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A038500 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072709.P17815036791706655886

namespace A072709

/-- `eq[A082116(n+5), A095117(A038500(n+3))]` -/
def P17815036791706655886.Spec : Prop :=
  ∀ n, (P17815036791706655886.a n : ℤ) = A072709 (n + 1)

end A072709

/-! ## A072709.P17455270376322293503

`A023457(A072711(n+2))`
-/

namespace A072709.P17455270376322293503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (A072711 (n + 2)).toNat

end

end A072709.P17455270376322293503

namespace A072709

/-- `A023457(A072711(n+2))` -/
def P17455270376322293503.Spec : Prop :=
  ∀ n, P17455270376322293503.a n = A072709 (n + 1)

end A072709

/-!
# A072710: Last digit of F(n) is 8 where F(n) is the n-th Fibonacci number.

The programs for A072710, the canonical program `A072710.P10047720630133660350` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072710 has offset 1).

The definition of A072710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072710.P10047720630133660350

`A072708(n+1)-15`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072710

/-- `A072708(n+1)-15` -/
def P10047720630133660350.Spec : Prop :=
  ∀ n, P10047720630133660350.a n = A072710 (n + 1)

theorem P10047720630133660350.correct : P10047720630133660350.Spec := by
  intro n
  simp only [A072710, Nat.add_sub_cancel]

end A072710

/-! ## A072710.P6796461788672890241

`3*A284307(xor(3, 5*n))`
-/

namespace A072710.P6796461788672890241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A284307 (Nat.xor 3 (5 * n))

end

end A072710.P6796461788672890241

namespace A072710

/-- `3*A284307(xor(3, 5*n))` -/
def P6796461788672890241.Spec : Prop :=
  ∀ n, P6796461788672890241.a n = A072710 (n + 1)

end A072710

/-! ## A072710.P701745717553668336

`eq[A003893(n), A329507(n)]`
-/

namespace A072710.P701745717553668336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P701745717553668336

namespace A072710

/-- `eq[A003893(n), A329507(n)]` -/
def P701745717553668336.Spec : Prop :=
  ∀ n, (P701745717553668336.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P13118326324973170622

`eq[A003893(n), A329513(n)]`
-/

namespace A072710.P13118326324973170622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P13118326324973170622

namespace A072710

/-- `eq[A003893(n), A329513(n)]` -/
def P13118326324973170622.Spec : Prop :=
  ∀ n, (P13118326324973170622.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P751668523577491695

`eq[A082116(n), A252358(n)]`
-/

namespace A072710.P751668523577491695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P751668523577491695

namespace A072710

/-- `eq[A082116(n), A252358(n)]` -/
def P751668523577491695.Spec : Prop :=
  ∀ n, (P751668523577491695.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P3322721548648934804

`eq[A082116(n), A397751(n)]`
-/

namespace A072710.P3322721548648934804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P3322721548648934804

namespace A072710

/-- `eq[A082116(n), A397751(n)]` -/
def P3322721548648934804.Spec : Prop :=
  ∀ n, (P3322721548648934804.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P8919044021494584721

`eq[A053670(n+1), A082116(n)]`
-/

namespace A072710.P8919044021494584721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P8919044021494584721

namespace A072710

/-- `eq[A053670(n+1), A082116(n)]` -/
def P8919044021494584721.Spec : Prop :=
  ∀ n, (P8919044021494584721.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P16620252871537914582

`eq[A082116(n), A125255(n+1)]`
-/

namespace A072710.P16620252871537914582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P16620252871537914582

namespace A072710

/-- `eq[A082116(n), A125255(n+1)]` -/
def P16620252871537914582.Spec : Prop :=
  ∀ n, (P16620252871537914582.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P522188307846096518

`eq[A082116(n), A275363(n+1)]`
-/

namespace A072710.P522188307846096518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P522188307846096518

namespace A072710

/-- `eq[A082116(n), A275363(n+1)]` -/
def P522188307846096518.Spec : Prop :=
  ∀ n, (P522188307846096518.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P8312576275822557328

`eq[A082116(n), A306224(n+1)]`
-/

namespace A072710.P8312576275822557328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P8312576275822557328

namespace A072710

/-- `eq[A082116(n), A306224(n+1)]` -/
def P8312576275822557328.Spec : Prop :=
  ∀ n, (P8312576275822557328.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P2235419602312441167

`eq[A063808(n)+2, A003893(n)]`
-/

namespace A072710.P2235419602312441167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P2235419602312441167

namespace A072710

/-- `eq[A063808(n)+2, A003893(n)]` -/
def P2235419602312441167.Spec : Prop :=
  ∀ n, (P2235419602312441167.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P10330024484473176745

`eq[A003893(n), A088487(n+2)]`
-/

namespace A072710.P10330024484473176745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088487 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P10330024484473176745

namespace A072710

/-- `eq[A003893(n), A088487(n+2)]` -/
def P10330024484473176745.Spec : Prop :=
  ∀ n, (P10330024484473176745.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P6055238658045870618

`eq[A138189(n)+2, A082116(n)]`
-/

namespace A072710.P6055238658045870618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P6055238658045870618

namespace A072710

/-- `eq[A138189(n)+2, A082116(n)]` -/
def P6055238658045870618.Spec : Prop :=
  ∀ n, (P6055238658045870618.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P5627271452838721581

`eq[A158613(n)+2, A082116(n)]`
-/

namespace A072710.P5627271452838721581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158613 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P5627271452838721581

namespace A072710

/-- `eq[A158613(n)+2, A082116(n)]` -/
def P5627271452838721581.Spec : Prop :=
  ∀ n, (P5627271452838721581.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P4403157245850610925

`eq[A329506(n)+2, A003893(n)]`
-/

namespace A072710.P4403157245850610925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P4403157245850610925

namespace A072710

/-- `eq[A329506(n)+2, A003893(n)]` -/
def P4403157245850610925.Spec : Prop :=
  ∀ n, (P4403157245850610925.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P9330193639966911810

`eq[A329510(n)+2, A003893(n)]`
-/

namespace A072710.P9330193639966911810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P9330193639966911810

namespace A072710

/-- `eq[A329510(n)+2, A003893(n)]` -/
def P9330193639966911810.Spec : Prop :=
  ∀ n, (P9330193639966911810.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P11017203573107599467

`eq[A329516(n)+2, A003893(n)]`
-/

namespace A072710.P11017203573107599467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P11017203573107599467

namespace A072710

/-- `eq[A329516(n)+2, A003893(n)]` -/
def P11017203573107599467.Spec : Prop :=
  ∀ n, (P11017203573107599467.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P6010602954176251600

`eq[A082116(n), A347538(n+3)]`
-/

namespace A072710.P6010602954176251600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P6010602954176251600

namespace A072710

/-- `eq[A082116(n), A347538(n+3)]` -/
def P6010602954176251600.Spec : Prop :=
  ∀ n, (P6010602954176251600.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P8195033588724614028

`eq[2*A329505(n), A003893(n)]`
-/

namespace A072710.P8195033588724614028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P8195033588724614028

namespace A072710

/-- `eq[2*A329505(n), A003893(n)]` -/
def P8195033588724614028.Spec : Prop :=
  ∀ n, (P8195033588724614028.a n : ℤ) = A072710 (n + 1)

end A072710

/-! ## A072710.P1597135666619438423

`eq[2*A329509(n), A003893(n)]`
-/

namespace A072710.P1597135666619438423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072710.P1597135666619438423

namespace A072710

/-- `eq[2*A329509(n), A003893(n)]` -/
def P1597135666619438423.Spec : Prop :=
  ∀ n, (P1597135666619438423.a n : ℤ) = A072710 (n + 1)

end A072710

/-!
# A072711: Integers m such that the last digit of Fibonacci(m) is 9.

The programs for A072711, the canonical program `A072711.P7367915971736303405` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072711 has offset 1).

The definition of A072711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072711.P291194482371529908

`eq[A113923(n)², A003893(n)]`
-/

namespace A072711.P291194482371529908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P291194482371529908

namespace A072711

/-- `eq[A113923(n)², A003893(n)]` -/
def P291194482371529908.Spec : Prop :=
  ∀ n, (P291194482371529908.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P7367915971736303405

`eq[A003893(n), A066586(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072711

/-- `eq[A003893(n), A066586(n+1)]` -/
def P7367915971736303405.Spec : Prop :=
  ∀ n, (P7367915971736303405.a n : ℤ) = A072711 (n + 1)

theorem P7367915971736303405.correct : P7367915971736303405.Spec := by
  intro n
  simp only [A072711, Nat.add_sub_cancel]

end A072711

/-! ## A072711.P15051564270947724127

`eq[A329507(n)+1, A003893(n)]`
-/

namespace A072711.P15051564270947724127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P15051564270947724127

namespace A072711

/-- `eq[A329507(n)+1, A003893(n)]` -/
def P15051564270947724127.Spec : Prop :=
  ∀ n, (P15051564270947724127.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P6120570535748558834

`eq[A329513(n)+1, A003893(n)]`
-/

namespace A072711.P6120570535748558834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P6120570535748558834

namespace A072711

/-- `eq[A329513(n)+1, A003893(n)]` -/
def P6120570535748558834.Spec : Prop :=
  ∀ n, (P6120570535748558834.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P2168519290706385150

`eq[(A101443(n)+1)², A082116(n)]`
-/

namespace A072711.P2168519290706385150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101443 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P2168519290706385150

namespace A072711

/-- `eq[(A101443(n)+1)², A082116(n)]` -/
def P2168519290706385150.Spec : Prop :=
  ∀ n, (P2168519290706385150.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P4826499132818467861

`eq[(A058306(n)+2)², A003893(n)]`
-/

namespace A072711.P4826499132818467861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058306 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P4826499132818467861

namespace A072711

/-- `eq[(A058306(n)+2)², A003893(n)]` -/
def P4826499132818467861.Spec : Prop :=
  ∀ n, (P4826499132818467861.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P9659790302143725746

`eq[(A101443(n)+2)², A003893(n)]`
-/

namespace A072711.P9659790302143725746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101443 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P9659790302143725746

namespace A072711

/-- `eq[(A101443(n)+2)², A003893(n)]` -/
def P9659790302143725746.Spec : Prop :=
  ∀ n, (P9659790302143725746.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P10849099917757744041

`eq[(A071187(n+1)+1)², A003893(n)]`
-/

namespace A072711.P10849099917757744041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071187 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P10849099917757744041

namespace A072711

/-- `eq[(A071187(n+1)+1)², A003893(n)]` -/
def P10849099917757744041.Spec : Prop :=
  ∀ n, (P10849099917757744041.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P7505349641255982829

`eq[(A078832(n+1)+1)², A003893(n)]`
-/

namespace A072711.P7505349641255982829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078832 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P7505349641255982829

namespace A072711

/-- `eq[(A078832(n+1)+1)², A003893(n)]` -/
def P7505349641255982829.Spec : Prop :=
  ∀ n, (P7505349641255982829.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P4705163190229679814

`eq[A003893(n), A017077(A058306(n))]`
-/

namespace A072711.P4705163190229679814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A058306 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P4705163190229679814

namespace A072711

/-- `eq[A003893(n), A017077(A058306(n))]` -/
def P4705163190229679814.Spec : Prop :=
  ∀ n, (P4705163190229679814.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P15043463932407101547

`eq[A187108(A071187(n+1))², A003893(n)]`
-/

namespace A072711.P15043463932407101547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187108 (A071187 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P15043463932407101547

namespace A072711

/-- `eq[A187108(A071187(n+1))², A003893(n)]` -/
def P15043463932407101547.Spec : Prop :=
  ∀ n, (P15043463932407101547.a n : ℤ) = A072711 (n + 1)

end A072711

/-! ## A072711.P4621507877053295311

`eq[A003893(n), A187108(A071187(n+1)+2)]`
-/

namespace A072711.P4621507877053295311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187108 (A071187 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P4621507877053295311

namespace A072711

/-- `eq[A003893(n), A187108(A071187(n+1)+2)]` -/
def P4621507877053295311.Spec : Prop :=
  ∀ n, (P4621507877053295311.a n : ℤ) = A072711 (n + 1)

end A072711

/-!
# A072712: Primes p such that p divides the (right) concatenation of all numbers from 1 to p written in base 10 (most significant digit on left).

The programs for A072712, there is no canonical definition to state claims against.
-/

/-! ## A072712.P8443795350739479425

`p?[A029455(n+1)]`
-/

namespace A072712.P8443795350739479425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072712.P8443795350739479425

/-!
# A072713: a(1)=a(2)=a(3)=a(4)=a(5)=1; for n>5, a(n)*a(n-5) = a(n-1)*a(n-2)*a(n-3)*a(n-4)+1.

The programs for A072713, there is no canonical definition to state claims against.
-/

/-! ## A072713.P2634272174633181323

`A039649(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A072713.P2634272174633181323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n a =>
  A039649 (a (n - 1) ^ 2).toNat

end

end A072713.P2634272174633181323

/-! ## A072713.P7147055603712807708

`A226193(a(n-1))+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A072713.P7147055603712807708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n a =>
  A226193 (a (n - 1)).toNat + 2

end

end A072713.P7147055603712807708

/-! ## A072713.P1893090217249104005

`A005408(C(a(n-1), 2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A072713.P1893090217249104005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n a =>
  A005408 (Nat.choose (a (n - 1)).toNat 2)

end

end A072713.P1893090217249104005

/-! ## A072713.P16919793361217794489

`A000010(a(n-1)²)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A072713.P16919793361217794489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A000010 (a (n - 1) ^ 2).toNat + 1

end

end A072713.P16919793361217794489

/-! ## A072713.P3818878746982714241

`A129871(A274838(n+1)-1)`
-/

namespace A072713.P3818878746982714241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129871 (A274838 (n + 1) - 1).toNat

end

end A072713.P3818878746982714241

/-!
# A072715: Record differences between n-th prime and 2n-th prime.

The programs for A072715, the canonical program `A072715.P8196709911917849842` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072715 has offset 1).

The definition of A072715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072715.P8196709911917849842

`record[A255171(n)+a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072715

/-- `record[A255171(n)+a(n-1)]` -/
def P8196709911917849842.Spec : Prop :=
  ∀ n, P8196709911917849842.a n = A072715 (n + 1)

theorem P8196709911917849842.correct : P8196709911917849842.Spec := by
  intro n
  simp only [A072715, Nat.add_sub_cancel]

end A072715

/-! ## A072715.P7654187744555315108

`record[A072473(n+1)]`
-/

namespace A072715.P7654187744555315108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P7654187744555315108

namespace A072715

/-- `record[A072473(n+1)]` -/
def P7654187744555315108.Spec : Prop :=
  ∀ n, P7654187744555315108.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P5264767151075266481

`record[A066066(n+1)+A000040(n+1)]`
-/

namespace A072715.P5264767151075266481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P5264767151075266481

namespace A072715

/-- `record[A066066(n+1)+A000040(n+1)]` -/
def P5264767151075266481.Spec : Prop :=
  ∀ n, P5264767151075266481.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P5163244087455925867

`record[A031215(n+1)-A000040(n+1)]`
-/

namespace A072715.P5163244087455925867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P5163244087455925867

namespace A072715

/-- `record[A031215(n+1)-A000040(n+1)]` -/
def P5163244087455925867.Spec : Prop :=
  ∀ n, P5163244087455925867.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P17279222609198173574

`record[A066066(n+1)+A008864(n+1)-1]`
-/

namespace A072715.P17279222609198173574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + (A008864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P17279222609198173574

namespace A072715

/-- `record[A066066(n+1)+A008864(n+1)-1]` -/
def P17279222609198173574.Spec : Prop :=
  ∀ n, P17279222609198173574.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P1861076599477701

`record[A000040(2*(n+1))-A000040(n+1)]`
-/

namespace A072715.P1861076599477701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P1861076599477701

namespace A072715

/-- `record[A000040(2*(n+1))-A000040(n+1)]` -/
def P1861076599477701.Spec : Prop :=
  ∀ n, P1861076599477701.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P15751692777945357993

`record[A065091(2*n+1)-A008578(n+2)]`
-/

namespace A072715.P15751692777945357993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1) - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P15751692777945357993

namespace A072715

/-- `record[A065091(2*n+1)-A008578(n+2)]` -/
def P15751692777945357993.Spec : Prop :=
  ∀ n, P15751692777945357993.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P11816667270607152506

`record[A031215(n+1)-record[A051698(n)]]`
-/

namespace A072715.P11816667270607152506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P11816667270607152506

namespace A072715

/-- `record[A031215(n+1)-record[A051698(n)]]` -/
def P11816667270607152506.Spec : Prop :=
  ∀ n, P11816667270607152506.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P3907380121437393536

`record[A204890(A001844(n))]`
-/

namespace A072715.P3907380121437393536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P3907380121437393536

namespace A072715

/-- `record[A204890(A001844(n))]` -/
def P3907380121437393536.Spec : Prop :=
  ∀ n, P3907380121437393536.a n = A072715 (n + 1)

end A072715

/-! ## A072715.P17223347680529552725

`record[A204890(A272267(n+1))]`
-/

namespace A072715.P17223347680529552725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P17223347680529552725

namespace A072715

/-- `record[A204890(A272267(n+1))]` -/
def P17223347680529552725.Spec : Prop :=
  ∀ n, P17223347680529552725.a n = A072715 (n + 1)

end A072715

/-!
# A072716: Integers expressible as (x^3 + y^3 + z^3)/(x*y*z) with positive integers x, y and z. (Alternatively, the integers expressible as x/y + y/z + z/x with positive integers x, y and z.)

The programs for A072716, there is no canonical definition to state claims against.
-/

/-! ## A072716.P14555352957702342686

`A221446(A156889(n))+A001481(n+3)`
-/

namespace A072716.P14555352957702342686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A156889 n).toNat + A001481 (n + 3)

end

end A072716.P14555352957702342686

/-! ## A072716.P11827777002308844033

`eq[A205558(A334032(3*n+4)), A276630(n+1)]`
-/

namespace A072716.P11827777002308844033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A334032 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072716.P11827777002308844033

/-!
# A072720: Number of partitions of n into parts which are each powers of a single number (which may vary between partitions).

The programs for A072720, there is no canonical definition to state claims against.
-/

/-! ## A072720.P2859544469905017832

`a(n-1)+A072721(n)` with `a(0)=1`
-/

namespace A072720.P2859544469905017832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A072721 n

end

end A072720.P2859544469905017832

/-! ## A072720.P16787785243896977267

`∑[A072721(n)]`
-/

namespace A072720.P16787785243896977267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072720.P16787785243896977267

/-! ## A072720.P8365824492971941973

`∑[A322900(n)]-n`
-/

namespace A072720.P8365824492971941973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A072720.P8365824492971941973

/-! ## A072720.P6203993058129616354

`A001489(n)+∑[A322900(n)]`
-/

namespace A072720.P6203993058129616354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072720.P6203993058129616354

/-! ## A072720.P17284168885574598799

`∑[A322900(n)+A057428(n)]`
-/

namespace A072720.P17284168885574598799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072720.P17284168885574598799

/-! ## A072720.P2034397777527554449

`A004525(∑[A004275(A322900(n))])`
-/

namespace A072720.P2034397777527554449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A322900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072720.P2034397777527554449

/-! ## A072720.P4930827359294583091

`A032742(∑[A004275(A322900(n))])`
-/

namespace A072720.P4930827359294583091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A322900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072720.P4930827359294583091

/-! ## A072720.P2967469604143749895

`A078898(∑[A004275(A322900(n))])`
-/

namespace A072720.P2967469604143749895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A322900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072720.P2967469604143749895

/-!
# A072721: Number of partitions of n into parts which are each positive powers of a single number >1 (which may vary between partitions).

The programs for A072721, there is no canonical definition to state claims against.
-/

/-! ## A072721.P16462603458810370469

`A322900(n)-ceil(n/98)`
-/

namespace A072721.P16462603458810370469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n - ⌈(n : ℚ) / 98⌉

end

end A072721.P16462603458810370469

/-! ## A072721.P6283885285124699664

`abs(A322900(n)+A057428(n))`
-/

namespace A072721.P6283885285124699664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322900 n + A057428 n|

end

end A072721.P6283885285124699664

/-! ## A072721.P7157872340900658538

`abs(A054977(n)-A322900(n))`
-/

namespace A072721.P7157872340900658538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054977 n - A322900 n|

end

end A072721.P7157872340900658538

/-! ## A072721.P5474101367947425969

`abs(A057427(n)-A322900(n))`
-/

namespace A072721.P5474101367947425969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A322900 n|

end

end A072721.P5474101367947425969

/-! ## A072721.P17384807307058440657

`A000007(n)+A322900(n)-1`
-/

namespace A072721.P17384807307058440657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A322900 n - 1)

end

end A072721.P17384807307058440657

/-! ## A072721.P10688905626833160594

`A322900(n)+∏{d}[n, A001222(#)]-1`
-/

namespace A072721.P10688905626833160594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n + ∏ d ∈ Nat.divisors (f1 n), A001222 d - 1

end

end A072721.P10688905626833160594

/-! ## A072721.P6172194241985820366

`A001222(a(2%n))+A322900(n)-1` with `a(0)=1`
-/

namespace A072721.P6172194241985820366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (a (2 % n)).toNat + (A322900 n - 1)

end

end A072721.P6172194241985820366

/-! ## A072721.P10283134656760450471

`(A322900(n)-1)^A001222(∑[4*n+1])^C(2, n)`
-/

namespace A072721.P10283134656760450471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322900 n - 1 : ℚ) ^ (A001222 (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.choose 2 n : ℤ)

end

end A072721.P10283134656760450471

/-! ## A072721.P4195497278516132087

`A322900(n)+1-A020639(A000010(n+2))`
-/

namespace A072721.P4195497278516132087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n + 1 - A020639 (A000010 (n + 2)).toNat

end

end A072721.P4195497278516132087

/-!
# A072722: Smallest of 6 consecutive integers divisible respectively by 6 consecutive primes.

The programs for A072722, there is no canonical definition to state claims against.
-/

/-! ## A072722.P11454893902406212636

`∩[A072730(n+1)-1, A072730(n+1)]`
-/

namespace A072722.P11454893902406212636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072730 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072722.P11454893902406212636

/-!
# A072726: Numerator of the rationals >= 1 whose continued fractions consist of only even terms, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

The programs for A072726, there is no canonical definition to state claims against.
-/

/-! ## A072726.P6926386434963934454

`A072727(A004760(n+2))`
-/

namespace A072726.P6926386434963934454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A004760 (n + 2)).toNat

end

end A072726.P6926386434963934454

/-! ## A072726.P9120851485780544823

`A072727(A062383(n)+n)`
-/

namespace A072726.P9120851485780544823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A062383 n + (n : ℤ)).toNat

end

end A072726.P9120851485780544823

/-! ## A072726.P11065972387910244667

`A072727(or(n, A062383(n)))`
-/

namespace A072726.P11065972387910244667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (Int.lor (n : ℤ) (A062383 n)).toNat

end

end A072726.P11065972387910244667

/-! ## A072726.P17024824860784410812

`A072727(A059893(2*n+1))`
-/

namespace A072726.P17024824860784410812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A059893 (2 * n + 1)).toNat

end

end A072726.P17024824860784410812

/-! ## A072726.P2322317085107167708

`A072727(A003817(n)+1+n)`
-/

namespace A072726.P2322317085107167708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A003817 n + 1 + (n : ℤ)).toNat

end

end A072726.P2322317085107167708

/-! ## A072726.P371225021598053470

`A072727(A206332(2*n+1)/2)`
-/

namespace A072726.P371225021598053470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (SequenceMachineLib.roundAway ((A206332 (2 * n + 1) : ℚ) / 2)).toNat

end

end A072726.P371225021598053470

/-! ## A072726.P5726293747131359829

`A072727(A206332(n+1))`
-/

namespace A072726.P5726293747131359829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A206332 (n + 1)).toNat

end

end A072726.P5726293747131359829

/-! ## A072726.P13335551320650303829

`A071585(A000695(n))`
-/

namespace A072726.P13335551320650303829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A000695 n).toNat

end

end A072726.P13335551320650303829

/-! ## A072726.P7624613073986956639

`A093875(A062880(n)+1)`
-/

namespace A072726.P7624613073986956639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A062880 n + 1).toNat

end

end A072726.P7624613073986956639

/-! ## A072726.P3833787358945397163

`A093875(A145812(n+1))`
-/

namespace A072726.P3833787358945397163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A145812 (n + 1)).toNat

end

end A072726.P3833787358945397163

/-!
# A072727: Denominator of the rationals >= 1 whose continued fractions consist of only even terms, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

The programs for A072727, there is no canonical definition to state claims against.
-/

/-! ## A072727.P4831755889312915098

`A072726(A145341(n+1))%A072726(n)`
-/

namespace A072727.P4831755889312915098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072726 (A145341 (n + 1)).toNat) (A072726 n)

end

end A072727.P4831755889312915098

/-! ## A072727.P12465854978636582335

`A072726(A206332(n+1))%A072726(n)`
-/

namespace A072727.P12465854978636582335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072726 (A206332 (n + 1)).toNat) (A072726 n)

end

end A072727.P12465854978636582335

/-! ## A072727.P4795076252091945245

`A071766((2*∑[and(n, -n)²]+n)/3)%(char[3*n]+2*n)`
-/

namespace A072727.P4795076252091945245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)).toNat) (((if ∃ j, f2 j = n then 1 else 0) + 2 * n : ℕ) : ℤ)

end

end A072727.P4795076252091945245

/-! ## A072727.P8060860320898759916

`A071766(A000695(n))%Δ[n²]`
-/

namespace A072727.P8060860320898759916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (A000695 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072727.P8060860320898759916

/-! ## A072727.P4707493238282840139

`A071766(A000695(n))-A000007(n)`
-/

namespace A072727.P4707493238282840139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A000695 n).toNat - A000007 n

end

end A072727.P4707493238282840139

/-! ## A072727.P7660991317607198190

`A057427(n)*A071766(A000695(n))`
-/

namespace A072727.P7660991317607198190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A071766 (A000695 n).toNat

end

end A072727.P7660991317607198190

/-! ## A072727.P16902473289292119809

`and(A071766(A000695(n)), A116362(n))`
-/

namespace A072727.P16902473289292119809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071766 (A000695 n).toNat) (A116362 n)

end

end A072727.P16902473289292119809

/-! ## A072727.P663328110767767582

`char[A052938(n)]*A071766(A000695(n))`
-/

namespace A072727.P663328110767767582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A071766 (A000695 n).toNat

end

end A072727.P663328110767767582

/-! ## A072727.P16260813080007738596

`A071766(A000695(n))-A097331(2*n)`
-/

namespace A072727.P16260813080007738596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A000695 n).toNat - A097331 (2 * n)

end

end A072727.P16260813080007738596

/-! ## A072727.P3044553813287800971

`xor(A000007(2*n), A071766(A000695(n)))`
-/

namespace A072727.P3044553813287800971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A071766 (A000695 n).toNat)

end

end A072727.P3044553813287800971

/-! ## A072727.P8020871964174702067

`char[A003602(n+1)]*A071766(A000695(n))`
-/

namespace A072727.P8020871964174702067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A071766 (A000695 n).toNat

end

end A072727.P8020871964174702067

/-! ## A072727.P11097341974507015955

`and(1, A000040(n+1))*A071766(A000695(n))`
-/

namespace A072727.P11097341974507015955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A071766 (A000695 n).toNat

end

end A072727.P11097341974507015955

/-! ## A072727.P9927092023770722079

`A071766(A000695(n))-floor(1/A018252(n+1))`
-/

namespace A072727.P9927092023770722079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A000695 n).toNat - ⌊1 / (A018252 (n + 1) : ℚ)⌋

end

end A072727.P9927092023770722079

/-! ## A072727.P9968254180485902769

`A071766(A000695(n))-A000035(A311563(n))`
-/

namespace A072727.P9968254180485902769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A000695 n).toNat - A000035 (A311563 n).toNat

end

end A072727.P9968254180485902769

/-! ## A072727.P11208129272333451921

`A071766(A000695(n))-A097331(A001223(n+1))²`
-/

namespace A072727.P11208129272333451921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A000695 n).toNat - A097331 (A001223 (n + 1)).toNat ^ 2

end

end A072727.P11208129272333451921

/-! ## A072727.P7893092736446947668

`A020639(A000040(n+1)-1)+A071766(A000695(n))-2`
-/

namespace A072727.P7893092736446947668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat + (A071766 (A000695 n).toNat - 2)

end

end A072727.P7893092736446947668

/-!
# A072728: Numerator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

The programs for A072728, the canonical program `A072728.P6270051122874775703` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072728 has offset 0).

The definition of A072728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072728.P6270051122874775703

`A071585(eq[0, A334076(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072728

/-- `A071585(eq[0, A334076(n)])` -/
def P6270051122874775703.Spec : Prop :=
  ∀ n, P6270051122874775703.a n = A072728 n

theorem P6270051122874775703.correct : P6270051122874775703.Spec := by
  intro n
  simp only [A072728]

end A072728

/-! ## A072728.P14483620043733246932

`A071585(eq[2*n, A265716(n)])`
-/

namespace A072728.P14483620043733246932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072728.P14483620043733246932

namespace A072728

/-- `A071585(eq[2*n, A265716(n)])` -/
def P14483620043733246932.Spec : Prop :=
  ∀ n, P14483620043733246932.a n = A072728 n

end A072728

/-! ## A072728.P14369904916831131137

`A071585(eq[n, A265716(n)/2])`
-/

namespace A072728.P14369904916831131137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265716 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A072728.P14369904916831131137

namespace A072728

/-- `A071585(eq[n, A265716(n)/2])` -/
def P14369904916831131137.Spec : Prop :=
  ∀ n, P14369904916831131137.a n = A072728 n

end A072728

/-! ## A072728.P6148006945266403357

`A071585(eq[n, A265716(n)-n])`
-/

namespace A072728.P6148006945266403357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072728.P6148006945266403357

namespace A072728

/-- `A071585(eq[n, A265716(n)-n])` -/
def P6148006945266403357.Spec : Prop :=
  ∀ n, P6148006945266403357.a n = A072728 n

end A072728

/-! ## A072728.P16650179931624477007

`A071585(record[A026741(A003754(n+1))])`
-/

namespace A072728.P16650179931624477007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072728.P16650179931624477007

namespace A072728

/-- `A071585(record[A026741(A003754(n+1))])` -/
def P16650179931624477007.Spec : Prop :=
  ∀ n, P16650179931624477007.a n = A072728 n

end A072728

/-! ## A072728.P983811069980073053

`A093875(record[A000265(A052499(n))])`
-/

namespace A072728.P983811069980073053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A052499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072728.P983811069980073053

namespace A072728

/-- `A093875(record[A000265(A052499(n))])` -/
def P983811069980073053.Spec : Prop :=
  ∀ n, P983811069980073053.a n = A072728 n

end A072728

/-! ## A072728.P13715173612491629337

`A093875(record[A266664(A052499(n))])`
-/

namespace A072728.P13715173612491629337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 (A052499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072728.P13715173612491629337

namespace A072728

/-- `A093875(record[A266664(A052499(n))])` -/
def P13715173612491629337.Spec : Prop :=
  ∀ n, P13715173612491629337.a n = A072728 n

end A072728

/-! ## A072728.P3529319929764090398

`A093873(record[lcm(4, A003754(n+1))+1])`
-/

namespace A072728.P3529319929764090398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A003754 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072728.P3529319929764090398

namespace A072728

/-- `A093873(record[lcm(4, A003754(n+1))+1])` -/
def P3529319929764090398.Spec : Prop :=
  ∀ n, P3529319929764090398.a n = A072728 n

end A072728

/-! ## A072728.P8021177851691014207

`A071766(record[or(1, A154435(n))])`
-/

namespace A072728.P8021177851691014207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154435 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072728.P8021177851691014207

namespace A072728

/-- `A071766(record[or(1, A154435(n))])` -/
def P8021177851691014207.Spec : Prop :=
  ∀ n, P8021177851691014207.a n = A072728 n

end A072728

/-! ## A072728.P10244136077426350541

`A071585(record[A154435(n)-A180200(n)])`
-/

namespace A072728.P10244136077426350541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n - A180200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072728.P10244136077426350541

namespace A072728

/-- `A071585(record[A154435(n)-A180200(n)])` -/
def P10244136077426350541.Spec : Prop :=
  ∀ n, P10244136077426350541.a n = A072728 n

end A072728

/-!
# A072729: Denominator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

The programs for A072729, the canonical program `A072729.P1910500847283528743` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072729 has offset 0).

The definition of A072729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072729.P1910500847283528743

`A071766(eq[0, A334076(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A072729

/-- `A071766(eq[0, A334076(n)])` -/
def P1910500847283528743.Spec : Prop :=
  ∀ n, P1910500847283528743.a n = A072729 n

theorem P1910500847283528743.correct : P1910500847283528743.Spec := by
  intro n
  simp only [A072729]

end A072729

/-! ## A072729.P13620708365517560443

`A071766(eq[2*n, A265716(n)])`
-/

namespace A072729.P13620708365517560443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072729.P13620708365517560443

namespace A072729

/-- `A071766(eq[2*n, A265716(n)])` -/
def P13620708365517560443.Spec : Prop :=
  ∀ n, P13620708365517560443.a n = A072729 n

end A072729

/-! ## A072729.P2299929268556351072

`A071766(eq[n, A265716(n)/2])`
-/

namespace A072729.P2299929268556351072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265716 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A072729.P2299929268556351072

namespace A072729

/-- `A071766(eq[n, A265716(n)/2])` -/
def P2299929268556351072.Spec : Prop :=
  ∀ n, P2299929268556351072.a n = A072729 n

end A072729

/-! ## A072729.P8768339178456413999

`A071766(eq[n, A265716(n)-n])`
-/

namespace A072729.P8768339178456413999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072729.P8768339178456413999

namespace A072729

/-- `A071766(eq[n, A265716(n)-n])` -/
def P8768339178456413999.Spec : Prop :=
  ∀ n, P8768339178456413999.a n = A072729 n

end A072729

/-! ## A072729.P1763291498326369408

`A071766(eq[A006257(n), A283165(n)])`
-/

namespace A072729.P1763291498326369408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072729.P1763291498326369408

namespace A072729

/-- `A071766(eq[A006257(n), A283165(n)])` -/
def P1763291498326369408.Spec : Prop :=
  ∀ n, P1763291498326369408.a n = A072729 n

end A072729

/-! ## A072729.P12099680043173187722

`A071766(eq[A165326(n), A227350(n)])`
-/

namespace A072729.P12099680043173187722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072729.P12099680043173187722

namespace A072729

/-- `A071766(eq[A165326(n), A227350(n)])` -/
def P12099680043173187722.Spec : Prop :=
  ∀ n, P12099680043173187722.a n = A072729 n

end A072729

/-! ## A072729.P5459256458433498476

`A071766(record[A026741(A003754(n+1))])`
-/

namespace A072729.P5459256458433498476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072729.P5459256458433498476

namespace A072729

/-- `A071766(record[A026741(A003754(n+1))])` -/
def P5459256458433498476.Spec : Prop :=
  ∀ n, P5459256458433498476.a n = A072729 n

end A072729

/-! ## A072729.P4979462021627993642

`A071766(eq[1, A227350(2*n)])`
-/

namespace A072729.P4979462021627993642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072729.P4979462021627993642

namespace A072729

/-- `A071766(eq[1, A227350(2*n)])` -/
def P4979462021627993642.Spec : Prop :=
  ∀ n, P4979462021627993642.a n = A072729 n

end A072729

/-! ## A072729.P18392920596859785057

`A071766(record[A154435(n)-A180200(n)])`
-/

namespace A072729.P18392920596859785057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n - A180200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072729.P18392920596859785057

namespace A072729

/-- `A071766(record[A154435(n)-A180200(n)])` -/
def P18392920596859785057.Spec : Prop :=
  ∀ n, P18392920596859785057.a n = A072729 n

end A072729

/-!
# A072731: Difference of numbers of composite and prime numbers <= n.

The programs for A072731, the canonical program `A072731.P11631103641081885778` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072731 has offset 1).

The definition of A072731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072731.P11631103641081885778

`A065855(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072731

/-- `A065855(n+1)-A000720(n+1)` -/
def P11631103641081885778.Spec : Prop :=
  ∀ n, P11631103641081885778.a n = A072731 (n + 1)

theorem P11631103641081885778.correct : P11631103641081885778.Spec := by
  intro n
  simp only [A072731, Nat.add_sub_cancel]

end A072731

/-! ## A072731.P12982719060519222116

`A097454(n+1)-1`
-/

namespace A072731.P12982719060519222116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (n + 1) - 1

end

end A072731.P12982719060519222116

namespace A072731

/-- `A097454(n+1)-1` -/
def P12982719060519222116.Spec : Prop :=
  ∀ n, P12982719060519222116.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P5099545634002092277

`A118777(n+1)-2`
-/

namespace A072731.P5099545634002092277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n + 1) - 2

end

end A072731.P5099545634002092277

namespace A072731

/-- `A118777(n+1)-2` -/
def P5099545634002092277.Spec : Prop :=
  ∀ n, P5099545634002092277.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P11051847337447946719

`∑[ratio[A065357(n)]]-1`
-/

namespace A072731.P11051847337447946719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072731.P11051847337447946719

namespace A072731

/-- `∑[ratio[A065357(n)]]-1` -/
def P11051847337447946719.Spec : Prop :=
  ∀ n, P11051847337447946719.a n = (A072731 (n + 1) : ℚ)

end A072731

/-! ## A072731.P13165387759490731538

`n-2*A000720(n+1)`
-/

namespace A072731.P13165387759490731538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A000720 (n + 1)

end

end A072731.P13165387759490731538

namespace A072731

/-- `n-2*A000720(n+1)` -/
def P13165387759490731538.Spec : Prop :=
  ∀ n, P13165387759490731538.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P12920836092656418603

`2*A065855(n+1)-n`
-/

namespace A072731.P12920836092656418603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065855 (n + 1) - (n : ℤ)

end

end A072731.P12920836092656418603

namespace A072731

/-- `2*A065855(n+1)-n` -/
def P12920836092656418603.Spec : Prop :=
  ∀ n, P12920836092656418603.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P17884409439555290792

`∑[1-C(2, A001065(n+1))]`
-/

namespace A072731.P17884409439555290792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A001065 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P17884409439555290792

namespace A072731

/-- `∑[1-C(2, A001065(n+1))]` -/
def P17884409439555290792.Spec : Prop :=
  ∀ n, P17884409439555290792.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P12148042411824173915

`∑[1-C(2, A347129(n+1))]`
-/

namespace A072731.P12148042411824173915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A347129 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P12148042411824173915

namespace A072731

/-- `∑[1-C(2, A347129(n+1))]` -/
def P12148042411824173915.Spec : Prop :=
  ∀ n, P12148042411824173915.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P17330131158160424414

`∑[1-C(2, A348983(n+1))]`
-/

namespace A072731.P17330131158160424414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A348983 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P17330131158160424414

namespace A072731

/-- `∑[1-C(2, A348983(n+1))]` -/
def P17330131158160424414.Spec : Prop :=
  ∀ n, P17330131158160424414.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P9877663246875640749

`n-∑[2*A010051(n+1)]`
-/

namespace A072731.P9877663246875640749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P9877663246875640749

namespace A072731

/-- `n-∑[2*A010051(n+1)]` -/
def P9877663246875640749.Spec : Prop :=
  ∀ n, P9877663246875640749.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P13733229840770486729

`∑[2*A066247(n+1)]-n`
-/

namespace A072731.P13733229840770486729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A072731.P13733229840770486729

namespace A072731

/-- `∑[2*A066247(n+1)]-n` -/
def P13733229840770486729.Spec : Prop :=
  ∀ n, P13733229840770486729.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P481517121356069270

`∑[2%A000005(n+1)]-n`
-/

namespace A072731.P481517121356069270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A072731.P481517121356069270

namespace A072731

/-- `∑[2%A000005(n+1)]-n` -/
def P481517121356069270.Spec : Prop :=
  ∀ n, P481517121356069270.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P14291099333687326060

`n-∑[and(2, A046644(n+1))]`
-/

namespace A072731.P14291099333687326060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A046644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P14291099333687326060

namespace A072731

/-- `n-∑[and(2, A046644(n+1))]` -/
def P14291099333687326060.Spec : Prop :=
  ∀ n, P14291099333687326060.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P8612271286757075574

`n-∑[and(2, A061142(n+1))]`
-/

namespace A072731.P8612271286757075574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A061142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P8612271286757075574

namespace A072731

/-- `n-∑[and(2, A061142(n+1))]` -/
def P8612271286757075574.Spec : Prop :=
  ∀ n, P8612271286757075574.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P5420671440798762793

`∑[1-C(2, A001222(n+1)²)]`
-/

namespace A072731.P5420671440798762793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A001222 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P5420671440798762793

namespace A072731

/-- `∑[1-C(2, A001222(n+1)²)]` -/
def P5420671440798762793.Spec : Prop :=
  ∀ n, P5420671440798762793.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P14611277022812195947

`n-2*∑[char[record[A000010(n+1)]]]`
-/

namespace A072731.P14611277022812195947
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A072731.P14611277022812195947

namespace A072731

/-- `n-2*∑[char[record[A000010(n+1)]]]` -/
def P14611277022812195947.Spec : Prop :=
  ∀ n, P14611277022812195947.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P7113147936415611941

`∑[1-C(2, A000203(n+1)-(n+1))]`
-/

namespace A072731.P7113147936415611941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A000203 (n + 1) - (n + 1 : ℤ)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072731.P7113147936415611941

namespace A072731

/-- `∑[1-C(2, A000203(n+1)-(n+1))]` -/
def P7113147936415611941.Spec : Prop :=
  ∀ n, P7113147936415611941.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P4187442859954201970

`n+2-∑[2*C(A006530(n+1), n+1)]`
-/

namespace A072731.P4187442859954201970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A006530 (n + 1)).toNat (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072731.P4187442859954201970

namespace A072731

/-- `n+2-∑[2*C(A006530(n+1), n+1)]` -/
def P4187442859954201970.Spec : Prop :=
  ∀ n, P4187442859954201970.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P11833711632949602382

`A023444(A118777(n+1))`
-/

namespace A072731.P11833711632949602382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A118777 (n + 1)).toNat

end

end A072731.P11833711632949602382

namespace A072731

/-- `A023444(A118777(n+1))` -/
def P11833711632949602382.Spec : Prop :=
  ∀ n, P11833711632949602382.a n = A072731 (n + 1)

end A072731

/-! ## A072731.P13176292034987359146

`n-A005843(A000720(n+1))`
-/

namespace A072731.P13176292034987359146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A000720 (n + 1)).toNat

end

end A072731.P13176292034987359146

namespace A072731

/-- `n-A005843(A000720(n+1))` -/
def P13176292034987359146.Spec : Prop :=
  ∀ n, P13176292034987359146.a n = A072731 (n + 1)

end A072731

/-!
# A072732: Simple triangle-stretching N X N -> N bijection: push terms in the middle twice as far down to make space for the terms obtained by bisecting the edges, which are thus contracted by the same factor. Do this for all "triangle-shells" successively contained inside each other in A001477.

The programs for A072732, there is no canonical definition to state claims against.
-/

/-! ## A072732.P3307682552223007295

`A072734(A072733(A072734(n)))`
-/

namespace A072732.P3307682552223007295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072734 (A072733 (A072734 n).toNat).toNat

end

end A072732.P3307682552223007295

/-!
# A072733: Simple triangle-stretching N X N -> N bijection: Inverse of A072732.

The programs for A072733, there is no canonical definition to state claims against.
-/

/-! ## A072733.P1090517048171128788

`A072735(A072732(A072735(n)))`
-/

namespace A072733.P1090517048171128788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072735 (A072732 (A072735 n).toNat).toNat

end

end A072733.P1090517048171128788

/-!
# A072734: Simple triangle-stretching N X N -> N bijection, variant of A072732.

The programs for A072734, there is no canonical definition to state claims against.
-/

/-! ## A072734.P7243019389272296048

`A072732(A072735(A072732(n)))`
-/

namespace A072734.P7243019389272296048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072732 (A072735 (A072732 n).toNat).toNat

end

end A072734.P7243019389272296048

/-!
# A072735: Simple triangle-stretching N X N -> N bijection: Inverse of A072734, variant of A072733.

The programs for A072735, there is no canonical definition to state claims against.
-/

/-! ## A072735.P3659835166125774071

`A072733(A072734(A072733(n)))`
-/

namespace A072735.P3659835166125774071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072733 (A072734 (A072733 n).toNat).toNat

end

end A072735.P3659835166125774071

/-!
# A072736: X-projection of the tabular N X N -> N bijection A072732.

The programs for A072736, there is no canonical definition to state claims against.
-/

/-! ## A072736.P12847863817992719250

`A025581(A072733(n))`
-/

namespace A072736.P12847863817992719250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072733 n).toNat

end

end A072736.P12847863817992719250

/-! ## A072736.P5189609440134060497

`A072740(n)-A072783(n)`
-/

namespace A072736.P5189609440134060497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n - A072783 n

end

end A072736.P5189609440134060497

/-! ## A072736.P8317714043496348169

`A072740(n)+A072783(n)*A134824(n)`
-/

namespace A072736.P8317714043496348169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n + A072783 n * A134824 n

end

end A072736.P8317714043496348169

/-! ## A072736.P6199327408160854293

`A072740(n)-A072784(A056943(n+1))`
-/

namespace A072736.P6199327408160854293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n - A072784 (A056943 (n + 1)).toNat

end

end A072736.P6199327408160854293

/-! ## A072736.P5444544051972078441

`A072740(n)-A072784(n-A196199(Δ[n²]))`
-/

namespace A072736.P5444544051972078441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n - A072784 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A072736.P5444544051972078441

/-! ## A072736.P13018027170142207152

`A072740(A072732(A072735(n)))`
-/

namespace A072736.P13018027170142207152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 (A072732 (A072735 n).toNat).toNat

end

end A072736.P13018027170142207152

/-! ## A072736.P6123116414186570687

`A025581(A072735(n))-A072783(n)`
-/

namespace A072736.P6123116414186570687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072735 n).toNat - A072783 n

end

end A072736.P6123116414186570687

/-! ## A072736.P2006469096325951889

`A057554(2*(A072733(n)+1))`
-/

namespace A072736.P2006469096325951889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (A072733 n + 1)).toNat

end

end A072736.P2006469096325951889

/-! ## A072736.P1355807461057818492

`A004736(A072733(n)+1)-1`
-/

namespace A072736.P1355807461057818492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A072733 n + 1).toNat - 1

end

end A072736.P1355807461057818492

/-! ## A072736.P6720591727956534698

`A003056(A072733(n))-A072737(n)`
-/

namespace A072736.P6720591727956534698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A072733 n).toNat - A072737 n

end

end A072736.P6720591727956534698

/-! ## A072736.P4704377416768653563

`A072740(A072734(A072733(A072735(A072734(n)))))`
-/

namespace A072736.P4704377416768653563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 (A072734 (A072733 (A072735 (A072734 n).toNat).toNat).toNat).toNat

end

end A072736.P4704377416768653563

/-! ## A072736.P4727916397280966094

`A072738(A072733(A072733(A072733(A072732(n)))))`
-/

namespace A072736.P4727916397280966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 (A072733 (A072733 (A072733 (A072732 n).toNat).toNat).toNat).toNat

end

end A072736.P4727916397280966094

/-!
# A072737: Y-projection of the tabular N X N -> N bijection A072732.

The programs for A072737, there is no canonical definition to state claims against.
-/

/-! ## A072737.P13451134810804754519

`A002262(A072733(n))`
-/

namespace A072737.P13451134810804754519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072733 n).toNat

end

end A072737.P13451134810804754519

/-! ## A072737.P4991607546966093099

`A072741(n)-A072784(n)`
-/

namespace A072737.P4991607546966093099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072784 n

end

end A072737.P4991607546966093099

/-! ## A072737.P3150244749312819368

`A072741(n)-A072783(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A072737.P3150244749312819368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A072737.P3150244749312819368

/-! ## A072737.P8037733771737019144

`A072741(n)-A072783(A099375(n)+n)`
-/

namespace A072737.P8037733771737019144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 (A099375 n + (n : ℤ)).toNat

end

end A072737.P8037733771737019144

/-! ## A072737.P14508973675583393891

`A072741(n)-A072783(2*A025581(n)+n+1)`
-/

namespace A072737.P14508973675583393891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A072737.P14508973675583393891

/-! ## A072737.P4249954425970451406

`A072741(n)-A072783(A038722(n+1)+A003056(n))`
-/

namespace A072737.P4249954425970451406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 (A038722 (n + 1) + A003056 n).toNat

end

end A072737.P4249954425970451406

/-! ## A072737.P527504622671835961

`A072741(n)-A072783(A061579(n)+A002024(n+1))`
-/

namespace A072737.P527504622671835961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 (A061579 n + A002024 (n + 1)).toNat

end

end A072737.P527504622671835961

/-! ## A072737.P1880281332994995909

`A072741(n)-A072783(n-A196199(Δ[n²]))`
-/

namespace A072737.P1880281332994995909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A072737.P1880281332994995909

/-! ## A072737.P4923198356231701716

`A072741(n)-A072783(n-A196199(2*n+1))^5`
-/

namespace A072737.P4923198356231701716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072783 ((n : ℤ) - A196199 (2 * n + 1)).toNat ^ 5

end

end A072737.P4923198356231701716

/-! ## A072737.P3763466533213160739

`-(A072741(n)-A072783(n-A196199(2*n+1)))*A134824(n)`
-/

namespace A072737.P3763466533213160739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A072741 n - A072783 ((n : ℤ) - A196199 (2 * n + 1)).toNat) * A134824 n)

end

end A072737.P3763466533213160739

/-! ## A072737.P8891755925535748583

`(A072741(n)-A072783(n-A196199(2*n+1)))*A134824(n+2)²`
-/

namespace A072737.P8891755925535748583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072741 n - A072783 ((n : ℤ) - A196199 (2 * n + 1)).toNat) * A134824 (n + 2) ^ 2

end

end A072737.P8891755925535748583

/-! ## A072737.P8603507040172864354

`A072741(A072732(A072735(n)))`
-/

namespace A072737.P8603507040172864354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 (A072732 (A072735 n).toNat).toNat

end

end A072737.P8603507040172864354

/-! ## A072737.P14578186006028577562

`A002262(A072735(n))-A072784(n)`
-/

namespace A072737.P14578186006028577562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072735 n).toNat - A072784 n

end

end A072737.P14578186006028577562

/-! ## A072737.P5127465773152347972

`A072741(A072734(A072733(A072735(A072734(n)))))`
-/

namespace A072737.P5127465773152347972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 (A072734 (A072733 (A072735 (A072734 n).toNat).toNat).toNat).toNat

end

end A072737.P5127465773152347972

/-! ## A072737.P376918579624317684

`A072739(A072733(A072733(A072733(A072732(n)))))`
-/

namespace A072737.P376918579624317684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A072733 (A072733 (A072733 (A072732 n).toNat).toNat).toNat).toNat

end

end A072737.P376918579624317684

/-!
# A072738: X-projection of the tabular N X N -> N bijection A072733.

The programs for A072738, there is no canonical definition to state claims against.
-/

/-! ## A072738.P314721595248465721

`A025581(A072732(n))`
-/

namespace A072738.P314721595248465721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072732 n).toNat

end

end A072738.P314721595248465721

/-! ## A072738.P11471196028648913462

`xor(ceil(2*sqrt(2*n+1))%2, A072781(n))`
-/

namespace A072738.P11471196028648913462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod ⌈2 * Real.sqrt (2 * n + 1 : ℝ)⌉ 2) (A072781 n)

end

end A072738.P11471196028648913462

/-! ## A072738.P10928792306190755709

`A072781(n)-A072785(n)`
-/

namespace A072738.P10928792306190755709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n - A072785 n

end

end A072738.P10928792306190755709

/-! ## A072738.P17567621554518539060

`xor(A072781(n), A340507(n))`
-/

namespace A072738.P17567621554518539060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072781 n) (A340507 n)

end

end A072738.P17567621554518539060

/-! ## A072738.P11824285107709882310

`xor(1-char[A245300(n)], A072781(n))`
-/

namespace A072738.P11824285107709882310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A072781 n)

end

end A072738.P11824285107709882310

/-! ## A072738.P13779095614849959220

`xor(1-A077605(n+1), A072781(n))`
-/

namespace A072738.P13779095614849959220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A077605 (n + 1)) (A072781 n)

end

end A072738.P13779095614849959220

/-! ## A072738.P4780845738669069921

`xor(C(2, A185914(n+1)+2), A072781(n))`
-/

namespace A072738.P4780845738669069921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 (A185914 (n + 1) + 2).toNat : ℤ) (A072781 n)

end

end A072738.P4780845738669069921

/-! ## A072738.P5354300942146005094

`A072781(n)-A056594(floor(sqrt(8*n+1))+2)`
-/

namespace A072738.P5354300942146005094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n - A056594 (Nat.sqrt (8 * n + 1) + 2)

end

end A072738.P5354300942146005094

/-! ## A072738.P1132559448230852142

`A072785(comp[floor(n²/2)])+A072781(n)`
-/

namespace A072738.P1132559448230852142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A072781 n

end

end A072738.P1132559448230852142

/-! ## A072738.P2422071376183041589

`A072781(n)-(3-A063826(2*n))%2`
-/

namespace A072738.P2422071376183041589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n - Int.tmod (3 - A063826 (2 * n)) 2

end

end A072738.P2422071376183041589

/-! ## A072738.P17783602859329580051

`A072781(A072733(A072734(n)))`
-/

namespace A072738.P17783602859329580051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 (A072733 (A072734 n).toNat).toNat

end

end A072738.P17783602859329580051

/-! ## A072738.P12521353039505913980

`A025581(A072785(n)+A072734(n))`
-/

namespace A072738.P12521353039505913980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072785 n + A072734 n).toNat

end

end A072738.P12521353039505913980

/-! ## A072738.P1017356455364395466

`A072736(A072732(A072732(A072732(A072733(n)))))`
-/

namespace A072738.P1017356455364395466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072736 (A072732 (A072732 (A072732 (A072733 n).toNat).toNat).toNat).toNat

end

end A072738.P1017356455364395466

/-! ## A072738.P17106820760071693667

`A072740(A072734(A072732(A072734(A072735(n)))))`
-/

namespace A072738.P17106820760071693667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 (A072734 (A072732 (A072734 (A072735 n).toNat).toNat).toNat).toNat

end

end A072738.P17106820760071693667

/-! ## A072738.P8219177645716661300

`xor(A000007(A052553(n)), A072781(n))`
-/

namespace A072738.P8219177645716661300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A052553 n).toNat) (A072781 n)

end

end A072738.P8219177645716661300

/-!
# A072739: Y-projection of the tabular N X N -> N bijection A072733.

The programs for A072739, there is no canonical definition to state claims against.
-/

/-! ## A072739.P9013061188061074352

`A002262(A072732(n))`
-/

namespace A072739.P9013061188061074352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072732 n).toNat

end

end A072739.P9013061188061074352

/-! ## A072739.P13778615636525744689

`A072782(n)-A072786(n)`
-/

namespace A072739.P13778615636525744689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A072786 n

end

end A072739.P13778615636525744689

/-! ## A072739.P10763021951253758258

`A072782(n)-A163805(floor(sqrt(8*(n+1))))`
-/

namespace A072739.P10763021951253758258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A163805 (Nat.sqrt (8 * (n + 1)))

end

end A072739.P10763021951253758258

/-! ## A072739.P17314103417555263567

`A072782(n)-A056594(ceil(sqrt(8*n+9)))`
-/

namespace A072739.P17314103417555263567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A056594 ⌈Real.sqrt (8 * n + 9 : ℝ)⌉.toNat

end

end A072739.P17314103417555263567

/-! ## A072739.P12751304052242338542

`xor(A072786(n)^A001316(n), A072782(n))`
-/

namespace A072739.P12751304052242338542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A072786 n : ℚ) ^ (A001316 n : ℤ))) (A072782 n)

end

end A072739.P12751304052242338542

/-! ## A072739.P12571574891782259856

`xor(A072786(n)^A090288(n), A072782(n))`
-/

namespace A072739.P12571574891782259856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A072786 n : ℚ) ^ (A090288 n : ℤ))) (A072782 n)

end

end A072739.P12571574891782259856

/-! ## A072739.P3795211604695809864

`xor(A072786(n)^A043024(n+1), A072782(n))`
-/

namespace A072739.P3795211604695809864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A072786 n : ℚ) ^ (A043024 (n + 1) : ℤ))) (A072782 n)

end

end A072739.P3795211604695809864

/-! ## A072739.P12044989286251879959

`A072782(n)-A072785(A056943(n+1))`
-/

namespace A072739.P12044989286251879959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A072785 (A056943 (n + 1)).toNat

end

end A072739.P12044989286251879959

/-! ## A072739.P6890193615557613092

`A072786(A047839(n+1))+A072782(n)`
-/

namespace A072739.P6890193615557613092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 (A047839 (n + 1)).toNat + A072782 n

end

end A072739.P6890193615557613092

/-! ## A072739.P6111156725037526960

`A072782(A072733(A072734(n)))`
-/

namespace A072739.P6111156725037526960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 (A072733 (A072734 n).toNat).toNat

end

end A072739.P6111156725037526960

/-! ## A072739.P5088791995142069572

`A002262(A072734(n)-A072786(n))`
-/

namespace A072739.P5088791995142069572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072734 n - A072786 n).toNat

end

end A072739.P5088791995142069572

/-! ## A072739.P17923201672741722069

`A072782(A072735(A072732(A072734(A072735(n)))))`
-/

namespace A072739.P17923201672741722069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 (A072735 (A072732 (A072734 (A072735 n).toNat).toNat).toNat).toNat

end

end A072739.P17923201672741722069

/-! ## A072739.P1384502354637086100

`A072737(A072732(A072732(A072732(A072733(n)))))`
-/

namespace A072739.P1384502354637086100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072737 (A072732 (A072732 (A072732 (A072733 n).toNat).toNat).toNat).toNat

end

end A072739.P1384502354637086100

/-! ## A072739.P14987251942956838509

`xor(A000007(A030528(n+1)), A072782(n))`
-/

namespace A072739.P14987251942956838509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A030528 (n + 1)).toNat) (A072782 n)

end

end A072739.P14987251942956838509

/-!
# A072740: X-projection of the tabular N X N -> N bijection A072734.

The programs for A072740, there is no canonical definition to state claims against.
-/

/-! ## A072740.P12381765836712893325

`A025581(A072735(n))`
-/

namespace A072740.P12381765836712893325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072735 n).toNat

end

end A072740.P12381765836712893325

/-! ## A072740.P6699970321657745832

`A072783(n)+A072736(n)`
-/

namespace A072740.P6699970321657745832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 n + A072736 n

end

end A072740.P6699970321657745832

/-! ## A072740.P14918298473603022168

`A072736(n)-A072783(n)*A134824(n)`
-/

namespace A072740.P14918298473603022168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072736 n - A072783 n * A134824 n

end

end A072740.P14918298473603022168

/-! ## A072740.P13924180893491872617

`A072784(A056943(n+1))+A072736(n)`
-/

namespace A072740.P13924180893491872617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 (A056943 (n + 1)).toNat + A072736 n

end

end A072740.P13924180893491872617

/-! ## A072740.P15013370100364182754

`A072784(n-A196199(Δ[n²]))+A072736(n)`
-/

namespace A072740.P15013370100364182754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + A072736 n

end

end A072740.P15013370100364182754

/-! ## A072740.P13834348238077643727

`A004736(A072735(n)+1)-1`
-/

namespace A072740.P13834348238077643727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A072735 n + 1).toNat - 1

end

end A072740.P13834348238077643727

/-! ## A072740.P829314593020058026

`A072736(A072732(A072735(A072733(A072732(n)))))`
-/

namespace A072740.P829314593020058026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072736 (A072732 (A072735 (A072733 (A072732 n).toNat).toNat).toNat).toNat

end

end A072740.P829314593020058026

/-! ## A072740.P6395146189277819887

`A072736(A072734(A072733(n)))`
-/

namespace A072740.P6395146189277819887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072736 (A072734 (A072733 n).toNat).toNat

end

end A072740.P6395146189277819887

/-! ## A072740.P12483373688573548048

`A072783(n)+A025581(A072733(n))`
-/

namespace A072740.P12483373688573548048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 n + A025581 (A072733 n).toNat

end

end A072740.P12483373688573548048

/-! ## A072740.P9735828568171564806

`A072783(n)-A196199(A072736(n)²)`
-/

namespace A072740.P9735828568171564806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 n - A196199 (A072736 n ^ 2).toNat

end

end A072740.P9735828568171564806

/-! ## A072740.P14214122262511338762

`A072781(A072735(A072735(A072735(A072734(n)))))`
-/

namespace A072740.P14214122262511338762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 (A072735 (A072735 (A072735 (A072734 n).toNat).toNat).toNat).toNat

end

end A072740.P14214122262511338762

/-!
# A072741: Y-projection of the tabular N X N -> N bijection A072734.

The programs for A072741, there is no canonical definition to state claims against.
-/

/-! ## A072741.P5093983006546789724

`A002262(A072735(n))`
-/

namespace A072741.P5093983006546789724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072735 n).toNat

end

end A072741.P5093983006546789724

/-! ## A072741.P9365303236006602936

`A072784(n)+A072737(n)`
-/

namespace A072741.P9365303236006602936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 n + A072737 n

end

end A072741.P9365303236006602936

/-! ## A072741.P1773786119829742712

`A072783(2*(C(comp[∑[n]]-n, 2)-n)-1+n)+A072737(n)`
-/

namespace A072741.P1773786119829742712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat + A072737 n

end

end A072741.P1773786119829742712

/-! ## A072741.P288271493690664385

`A072783(A099375(n)+n)+A072737(n)`
-/

namespace A072741.P288271493690664385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A099375 n + (n : ℤ)).toNat + A072737 n

end

end A072741.P288271493690664385

/-! ## A072741.P5445525203939723005

`A072783(2*A025581(n)+n+1)+A072737(n)`
-/

namespace A072741.P5445525203939723005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (2 * A025581 n + (n + 1 : ℤ)).toNat + A072737 n

end

end A072741.P5445525203939723005

/-! ## A072741.P17287168377328736959

`A072783(A038722(n+1)+A003056(n))+A072737(n)`
-/

namespace A072741.P17287168377328736959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A038722 (n + 1) + A003056 n).toNat + A072737 n

end

end A072741.P17287168377328736959

/-! ## A072741.P4516504917549063936

`A072783(A004736(n+1)+A025581(n)+n)+A072737(n)`
-/

namespace A072741.P4516504917549063936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A004736 (n + 1) + (A025581 n + (n : ℤ))).toNat + A072737 n

end

end A072741.P4516504917549063936

/-! ## A072741.P17264875861725597519

`A072783(n-A196199(Δ[n²]))+A072737(n)`
-/

namespace A072741.P17264875861725597519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + A072737 n

end

end A072741.P17264875861725597519

/-! ## A072741.P14879017764666276352

`A072737(n)+A072783(n-A196199(2*n+1))^5`
-/

namespace A072741.P14879017764666276352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072737 n + A072783 ((n : ℤ) - A196199 (2 * n + 1)).toNat ^ 5

end

end A072741.P14879017764666276352

/-! ## A072741.P12939987901416959671

`A072737(A072732(A072735(A072733(A072732(n)))))`
-/

namespace A072741.P12939987901416959671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072737 (A072732 (A072735 (A072733 (A072732 n).toNat).toNat).toNat).toNat

end

end A072741.P12939987901416959671

/-! ## A072741.P7060642692216464794

`A072737(A072734(A072733(n)))`
-/

namespace A072741.P7060642692216464794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072737 (A072734 (A072733 n).toNat).toNat

end

end A072741.P7060642692216464794

/-! ## A072741.P1707506034656964782

`A072784(n)+A002262(A072733(n))`
-/

namespace A072741.P1707506034656964782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 n + A002262 (A072733 n).toNat

end

end A072741.P1707506034656964782

/-! ## A072741.P4443333971690130574

`A072784(n)-A196199(A072737(n)²)`
-/

namespace A072741.P4443333971690130574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 n - A196199 (A072737 n ^ 2).toNat

end

end A072741.P4443333971690130574

/-! ## A072741.P4560940787312736094

`A072782(A072735(A072735(A072735(A072734(n)))))`
-/

namespace A072741.P4560940787312736094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 (A072735 (A072735 (A072735 (A072734 n).toNat).toNat).toNat).toNat

end

end A072741.P4560940787312736094

/-!
# A072742: Lesser members of a pair of primes (p, q) such that, for some integer k, (p+q)/2 = 2^k and p > 2^(k-1).

The programs for A072742, there is no canonical definition to state claims against.
-/

/-! ## A072742.P8614862035343547423

`A072743(n+1)-A072744(n+1)`
-/

namespace A072742.P8614862035343547423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072743 (n + 1) - A072744 (n + 1)

end

end A072742.P8614862035343547423

/-! ## A072742.P6703963338104025878

`A072745(n+1)/A072743(n+1)`
-/

namespace A072742.P6703963338104025878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072745 (n + 1) : ℚ) / (A072743 (n + 1) : ℚ)

end

end A072742.P6703963338104025878

/-! ## A072742.P15605525455352096648

`p?[A010078(A006005(n+1))]-A072744(n+1)`
-/

namespace A072742.P15605525455352096648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A072744 (n + 1)

end

end A072742.P15605525455352096648

/-! ## A072742.P12618552039642366533

`p?[A010078(A065091(n+1))]-A072744(n+1)`
-/

namespace A072742.P12618552039642366533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A072744 (n + 1)

end

end A072742.P12618552039642366533

/-! ## A072742.P15698848423934670836

`p?[A010078(A000040(n+2))]-A072744(n+1)`
-/

namespace A072742.P15698848423934670836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A072744 (n + 1)

end

end A072742.P15698848423934670836

/-! ## A072742.P4933167382856284513

`A080079(A072743(n+1))`
-/

namespace A072742.P4933167382856284513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A072743 (n + 1)).toNat

end

end A072742.P4933167382856284513

/-! ## A072742.P5259508499622400271

`p?[A080079(p?[A010078(2*n+1)])]`
-/

namespace A072742.P5259508499622400271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072742.P5259508499622400271

/-! ## A072742.P4045968070232579055

`∏{p}[p?[A010078(A065091(n+1))], A080079(#)]`
-/

namespace A072742.P4045968070232579055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A065091 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080079 p

end

end A072742.P4045968070232579055

/-! ## A072742.P16589976696591947482

`∏{p}[p?[A010078(A000040(n+2))], A080079(#)]`
-/

namespace A072742.P16589976696591947482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A000040 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080079 p

end

end A072742.P16589976696591947482

/-!
# A072743: Greater members of a pair of primes (p, q) such that, for some integer k, (p+q)/2 = 2^k and p > 2^(k-1).

The programs for A072743, there is no canonical definition to state claims against.
-/

/-! ## A072743.P5134576188876763990

`A072744(n+1)+A072742(n+1)`
-/

namespace A072743.P5134576188876763990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072744 (n + 1) + A072742 (n + 1)

end

end A072743.P5134576188876763990

/-! ## A072743.P16221749371775075584

`A072745(n+1)/A072742(n+1)`
-/

namespace A072743.P16221749371775075584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072745 (n + 1) : ℚ) / (A072742 (n + 1) : ℚ)

end

end A072743.P16221749371775075584

/-! ## A072743.P427785850567672856

`p?[A010078(p?[2*n+1])]`
-/

namespace A072743.P427785850567672856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P427785850567672856

/-! ## A072743.P9499746841366838185

`A010078(A072742(n+1))`
-/

namespace A072743.P9499746841366838185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A072742 (n + 1)).toNat

end

end A072743.P9499746841366838185

/-! ## A072743.P17058800972262809269

`p?[A010078(A006005(n+1))]`
-/

namespace A072743.P17058800972262809269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P17058800972262809269

/-! ## A072743.P5057696485286351196

`p?[A010078(A065091(n+1))]`
-/

namespace A072743.P5057696485286351196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P5057696485286351196

/-! ## A072743.P11613207598404513771

`p?[A010078(A000040(n+2))]`
-/

namespace A072743.P11613207598404513771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P11613207598404513771

/-! ## A072743.P17527678461012971786

`p?[A010078(A008864(n+1))+1]`
-/

namespace A072743.P17527678461012971786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A008864 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P17527678461012971786

/-! ## A072743.P18179987837534406702

`p?[A048985(A073582(n+1))-A073582(n+1)]`
-/

namespace A072743.P18179987837534406702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (A073582 (n + 1)).toNat - A073582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P18179987837534406702

/-! ## A072743.P14620955562512340123

`p?[A048985(A100484(n+1))-A100484(n+1)]`
-/

namespace A072743.P14620955562512340123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048985 (A100484 (n + 1)).toNat - A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072743.P14620955562512340123

/-!
# A072744: Difference between the members of a pair of primes (p, q) with p < q and such that, for some integer k, (p+q)/2 = 2^k and p > 2^(k-1).

The programs for A072744, there is no canonical definition to state claims against.
-/

/-! ## A072744.P167984932713825542

`A072743(n+1)-A072742(n+1)`
-/

namespace A072744.P167984932713825542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072743 (n + 1) - A072742 (n + 1)

end

end A072744.P167984932713825542

/-! ## A072744.P4727661015536720213

`A072743(n+1)-A072745(n+1)/A072743(n+1)`
-/

namespace A072744.P4727661015536720213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072743 (n + 1) : ℚ) - (A072745 (n + 1) : ℚ) / (A072743 (n + 1) : ℚ)

end

end A072744.P4727661015536720213

/-! ## A072744.P2547146189830823496

`A072745(n+1)/A072742(n+1)-A072742(n+1)`
-/

namespace A072744.P2547146189830823496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072745 (n + 1) : ℚ) / (A072742 (n + 1) : ℚ) - (A072742 (n + 1) : ℚ)

end

end A072744.P2547146189830823496

/-! ## A072744.P8069782919342034444

`A006257(A072743(n+1))-1`
-/

namespace A072744.P8069782919342034444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A072743 (n + 1)).toNat - 1

end

end A072744.P8069782919342034444

/-! ## A072744.P2250280723635885807

`2*A080079(A072742(n+1))`
-/

namespace A072744.P2250280723635885807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080079 (A072742 (n + 1)).toNat

end

end A072744.P2250280723635885807

/-! ## A072744.P15163590671259880476

`∑{d}[A072742(n+1), A004273(A080079(#))]`
-/

namespace A072744.P15163590671259880476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004273 (A080079 d).toNat

end

end A072744.P15163590671259880476

/-! ## A072744.P15708442613733782139

`p?[A010078(A065091(n+1))]-A072742(n+1)`
-/

namespace A072744.P15708442613733782139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A072742 (n + 1)

end

end A072744.P15708442613733782139

/-! ## A072744.P11820511301827401247

`A010078(p?[A072742(n+1)])-A072742(n+1)`
-/

namespace A072744.P11820511301827401247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A072742 (n + 1)

end

end A072744.P11820511301827401247

/-! ## A072744.P12193154128599907213

`A080079(lcm(2, A072742(n+1)))`
-/

namespace A072744.P12193154128599907213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lcm 2 (A072742 (n + 1)))

end

end A072744.P12193154128599907213

/-! ## A072744.P6657306239166795444

`A035327(2*A072742(n+1))+1`
-/

namespace A072744.P6657306239166795444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (2 * A072742 (n + 1)).toNat + 1

end

end A072744.P6657306239166795444

/-! ## A072744.P10251399807810760130

`A035327(A004273(A072742(n+1)))`
-/

namespace A072744.P10251399807810760130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A004273 (A072742 (n + 1)).toNat).toNat

end

end A072744.P10251399807810760130

/-! ## A072744.P9814253586141318046

`A080079(A072742(n+1)+A072742(n+1))`
-/

namespace A072744.P9814253586141318046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A072742 (n + 1) + A072742 (n + 1)).toNat

end

end A072744.P9814253586141318046

/-!
# A072745: Product of the members of pairs of primes (p, q) with p < q and such that, for some integer k, (p+q)/2 = 2^k and p > 2^(k-1).

The programs for A072745, there is no canonical definition to state claims against.
-/

/-! ## A072745.P11298238700893472519

`A072742(n+1)*A072743(n+1)`
-/

namespace A072745.P11298238700893472519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1) * A072743 (n + 1)

end

end A072745.P11298238700893472519

/-! ## A072745.P9435584581993699758

`lcm(A072742(A000027(n+1)), A072743(n+1))`
-/

namespace A072745.P9435584581993699758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072742 (A000027 (n + 1)).toNat) (A072743 (n + 1))

end

end A072745.P9435584581993699758

/-! ## A072745.P1036334953104664366

`(A072744(n+1)+A072742(n+1))*A072742(n+1)`
-/

namespace A072745.P1036334953104664366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072744 (n + 1) + A072742 (n + 1)) * A072742 (n + 1)

end

end A072745.P1036334953104664366

/-! ## A072745.P13088555025642601720

`(A072743(n+1)-A072744(n+1))*A072743(n+1)`
-/

namespace A072745.P13088555025642601720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072743 (n + 1) - A072744 (n + 1)) * A072743 (n + 1)

end

end A072745.P13088555025642601720

/-! ## A072745.P2873190499414984447

`lcm(A072742(n+1), A072743(A289207(n+3)))`
-/

namespace A072745.P2873190499414984447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072742 (n + 1)) (A072743 (A289207 (n + 3)).toNat)

end

end A072745.P2873190499414984447

/-! ## A072745.P10108442959120126867

`p?[A010078(A128059(n))]*A072742(n+1)`
-/

namespace A072745.P10108442959120126867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A128059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A072742 (n + 1)

end

end A072745.P10108442959120126867

/-! ## A072745.P1978132305609141268

`A010078(p?[A072742(n+1)])*A072742(n+1)`
-/

namespace A072745.P1978132305609141268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A072742 (n + 1)

end

end A072745.P1978132305609141268

/-!
# A072746: Number of pairs of primes (p, q) such that, for some integer k, (p+q)/2 = 2^k, 2^(k-1) < p < q, and p <= n.

The programs for A072746, there is no canonical definition to state claims against.
-/

/-! ## A072746.P7566342933490827798

`∑[char[A072742(n+1)-1]]`
-/

namespace A072746.P7566342933490827798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072742 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P7566342933490827798

/-! ## A072746.P9555168119426104813

`∑[char[A000010(A072742(n+1))]]`
-/

namespace A072746.P9555168119426104813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072742 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P9555168119426104813

/-! ## A072746.P8391092907506900132

`∑[char[A289207(A072742(n+1)+1)]]`
-/

namespace A072746.P8391092907506900132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A072742 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P8391092907506900132

/-! ## A072746.P12036977497912469868

`comp[A072743(n+1)-A072744(n+1)+n-1]-n`
-/

namespace A072746.P12036977497912469868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072743 (n + 1) - A072744 (n + 1) + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A072746.P12036977497912469868

/-! ## A072746.P10404751707285318814

`∑[A010051(A004757(n+1)-A074828(n+1))]`
-/

namespace A072746.P10404751707285318814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004757 (n + 1) - A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072746.P10404751707285318814

/-!
# A072747: Counting factor 2 in the first n squarefree numbers.

The programs for A072747, the canonical program `A072747.P10312719963861894901` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072747 has offset 1).

The definition of A072747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072747.P7248901815195303904

`∑[val(comp[A105570(n)], 2)]`
-/

namespace A072747.P7248901815195303904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P7248901815195303904

namespace A072747

/-- `∑[val(comp[A105570(n)], 2)]` -/
def P7248901815195303904.Spec : Prop :=
  ∀ n, (P7248901815195303904.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P15544988410720880512

`∑[1-A373550(n+1)]`
-/

namespace A072747.P15544988410720880512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P15544988410720880512

namespace A072747

/-- `∑[1-A373550(n+1)]` -/
def P15544988410720880512.Spec : Prop :=
  ∀ n, P15544988410720880512.a n = A072747 (n + 1)

end A072747

/-! ## A072747.P10312719963861894901

`∑[val(A005117(n+1), 2)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072747

/-- `∑[val(A005117(n+1), 2)]` -/
def P10312719963861894901.Spec : Prop :=
  ∀ n, (P10312719963861894901.a n : ℤ) = A072747 (n + 1)

theorem P10312719963861894901.correct : P10312719963861894901.Spec := by
  intro n
  simp only [A072747, Nat.add_sub_cancel]

end A072747

/-! ## A072747.P2166172439514634312

`∑[val(record[A007913(n+1)], 2)]`
-/

namespace A072747.P2166172439514634312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P2166172439514634312

namespace A072747

/-- `∑[val(record[A007913(n+1)], 2)]` -/
def P2166172439514634312.Spec : Prop :=
  ∀ n, (P2166172439514634312.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P4404955255291855966

`∑[val(record[A007947(n+1)], 2)]`
-/

namespace A072747.P4404955255291855966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P4404955255291855966

namespace A072747

/-- `∑[val(record[A007947(n+1)], 2)]` -/
def P4404955255291855966.Spec : Prop :=
  ∀ n, (P4404955255291855966.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P11531966288881072804

`∑[val(record[A055231(n+1)], 2)]`
-/

namespace A072747.P11531966288881072804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P11531966288881072804

namespace A072747

/-- `∑[val(record[A055231(n+1)], 2)]` -/
def P11531966288881072804.Spec : Prop :=
  ∀ n, (P11531966288881072804.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P13368988425140644315

`∑[val(record[A083346(n+1)], 2)]`
-/

namespace A072747.P13368988425140644315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P13368988425140644315

namespace A072747

/-- `∑[val(record[A083346(n+1)], 2)]` -/
def P13368988425140644315.Spec : Prop :=
  ∀ n, (P13368988425140644315.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P12210317547077670500

`∑[val(record[A325814(n+1)], 2)]`
-/

namespace A072747.P12210317547077670500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P12210317547077670500

namespace A072747

/-- `∑[val(record[A325814(n+1)], 2)]` -/
def P12210317547077670500.Spec : Prop :=
  ∀ n, (P12210317547077670500.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P9176046388087024123

`∑[val(record[A015053(n+1)], 2)]`
-/

namespace A072747.P9176046388087024123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P9176046388087024123

namespace A072747

/-- `∑[val(record[A015053(n+1)], 2)]` -/
def P9176046388087024123.Spec : Prop :=
  ∀ n, (P9176046388087024123.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P6967351672626838177

`∑[val(record[A019554(n+1)], 2)]`
-/

namespace A072747.P6967351672626838177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P6967351672626838177

namespace A072747

/-- `∑[val(record[A019554(n+1)], 2)]` -/
def P6967351672626838177.Spec : Prop :=
  ∀ n, (P6967351672626838177.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P2450562219734366685

`∑[val(record[A308056(n+1)], 2)]`
-/

namespace A072747.P2450562219734366685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308056 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P2450562219734366685

namespace A072747

/-- `∑[val(record[A308056(n+1)], 2)]` -/
def P2450562219734366685.Spec : Prop :=
  ∀ n, (P2450562219734366685.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P11967639238868396339

`∑[val(record[A336965(n+1)], 2)]`
-/

namespace A072747.P11967639238868396339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P11967639238868396339

namespace A072747

/-- `∑[val(record[A336965(n+1)], 2)]` -/
def P11967639238868396339.Spec : Prop :=
  ∀ n, (P11967639238868396339.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P886038712671825462

`A285881(A005117(n+1))`
-/

namespace A072747.P886038712671825462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A005117 (n + 1)).toNat

end

end A072747.P886038712671825462

namespace A072747

/-- `A285881(A005117(n+1))` -/
def P886038712671825462.Spec : Prop :=
  ∀ n, P886038712671825462.a n = A072747 (n + 1)

end A072747

/-! ## A072747.P15711865710741115820

`∑[val(A088610(2*n+1), 2)]`
-/

namespace A072747.P15711865710741115820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088610 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P15711865710741115820

namespace A072747

/-- `∑[val(A088610(2*n+1), 2)]` -/
def P15711865710741115820.Spec : Prop :=
  ∀ n, (P15711865710741115820.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P16934133652122946289

`∑[val(record[A128651(n+1)], 2)]`
-/

namespace A072747.P16934133652122946289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P16934133652122946289

namespace A072747

/-- `∑[val(record[A128651(n+1)], 2)]` -/
def P16934133652122946289.Spec : Prop :=
  ∀ n, (P16934133652122946289.a n : ℤ) = A072747 (n + 1)

end A072747

/-! ## A072747.P8124028842722781110

`n+1-A285881(A240603(n+1))`
-/

namespace A072747.P8124028842722781110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285881 (A240603 (n + 1)).toNat

end

end A072747.P8124028842722781110

namespace A072747

/-- `n+1-A285881(A240603(n+1))` -/
def P8124028842722781110.Spec : Prop :=
  ∀ n, P8124028842722781110.a n = A072747 (n + 1)

end A072747

/-! ## A072747.P11846012796941989692

`∑[val(A195085(n+1), 2)]`
-/

namespace A072747.P11846012796941989692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195085 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P11846012796941989692

namespace A072747

/-- `∑[val(A195085(n+1), 2)]` -/
def P11846012796941989692.Spec : Prop :=
  ∀ n, (P11846012796941989692.a n : ℤ) = A072747 (n + 1)

end A072747

/-!
# A072748: Counting factor 3 in the first n squarefree numbers.

The programs for A072748, the canonical program `A072748.P725762028645036703` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072748 has offset 1).

The definition of A072748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072748.P9977645808636192516

`∑[val(A005117(n+1), 3)]`
-/

namespace A072748.P9977645808636192516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P9977645808636192516

namespace A072748

/-- `∑[val(A005117(n+1), 3)]` -/
def P9977645808636192516.Spec : Prop :=
  ∀ n, (P9977645808636192516.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P6755184729411435999

`∑[val(A133466(n+1), 3)]`
-/

namespace A072748.P6755184729411435999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133466 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P6755184729411435999

namespace A072748

/-- `∑[val(A133466(n+1), 3)]` -/
def P6755184729411435999.Spec : Prop :=
  ∀ n, (P6755184729411435999.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P11455120247653853423

`∑[val(A062503(n+1), 9)]`
-/

namespace A072748.P11455120247653853423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062503 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P11455120247653853423

namespace A072748

/-- `∑[val(A062503(n+1), 9)]` -/
def P11455120247653853423.Spec : Prop :=
  ∀ n, (P11455120247653853423.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P14172638656132656820

`∑[val(A062838(n+1), 9)]`
-/

namespace A072748.P14172638656132656820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062838 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P14172638656132656820

namespace A072748

/-- `∑[val(A062838(n+1), 9)]` -/
def P14172638656132656820.Spec : Prop :=
  ∀ n, (P14172638656132656820.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P15061059245894661862

`∑[val(record[A007913(n+1)], 3)]`
-/

namespace A072748.P15061059245894661862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P15061059245894661862

namespace A072748

/-- `∑[val(record[A007913(n+1)], 3)]` -/
def P15061059245894661862.Spec : Prop :=
  ∀ n, (P15061059245894661862.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P16471171521833694103

`∑[val(record[A007947(n+1)], 3)]`
-/

namespace A072748.P16471171521833694103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P16471171521833694103

namespace A072748

/-- `∑[val(record[A007947(n+1)], 3)]` -/
def P16471171521833694103.Spec : Prop :=
  ∀ n, (P16471171521833694103.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P7399693038509882392

`∑[val(record[A055231(n+1)], 3)]`
-/

namespace A072748.P7399693038509882392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P7399693038509882392

namespace A072748

/-- `∑[val(record[A055231(n+1)], 3)]` -/
def P7399693038509882392.Spec : Prop :=
  ∀ n, (P7399693038509882392.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P725762028645036703

`∑[val(eq[1, A005361(n+1)]+1, 3)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072748

/-- `∑[val(eq[1, A005361(n+1)]+1, 3)]` -/
def P725762028645036703.Spec : Prop :=
  ∀ n, (P725762028645036703.a n : ℤ) = A072748 (n + 1)

theorem P725762028645036703.correct : P725762028645036703.Spec := by
  intro n
  simp only [A072748, Nat.add_sub_cancel]

end A072748

/-! ## A072748.P5450585500350482172

`∑[val(comp[A013929(n+1)-1]+1, 3)]`
-/

namespace A072748.P5450585500350482172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P5450585500350482172

namespace A072748

/-- `∑[val(comp[A013929(n+1)-1]+1, 3)]` -/
def P5450585500350482172.Spec : Prop :=
  ∀ n, (P5450585500350482172.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P10999264923090023160

`∑[val(lt[A057521(n+1), 2]+1, 3)]`
-/

namespace A072748.P10999264923090023160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P10999264923090023160

namespace A072748

/-- `∑[val(lt[A057521(n+1), 2]+1, 3)]` -/
def P10999264923090023160.Spec : Prop :=
  ∀ n, (P10999264923090023160.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P3848910521295099464

`∑[val(record[∏{p}[n, #]], 3)]`
-/

namespace A072748.P3848910521295099464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P3848910521295099464

namespace A072748

/-- `∑[val(record[∏{p}[n, #]], 3)]` -/
def P3848910521295099464.Spec : Prop :=
  ∀ n, (P3848910521295099464.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P9449928309008637984

`∑[val(record[A072905(n+1)], 3)]`
-/

namespace A072748.P9449928309008637984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P9449928309008637984

namespace A072748

/-- `∑[val(record[A072905(n+1)], 3)]` -/
def P9449928309008637984.Spec : Prop :=
  ∀ n, (P9449928309008637984.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P3064069987278851524

`∑[val(record[A308056(n+1)], 3)]`
-/

namespace A072748.P3064069987278851524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308056 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P3064069987278851524

namespace A072748

/-- `∑[val(record[A308056(n+1)], 3)]` -/
def P3064069987278851524.Spec : Prop :=
  ∀ n, (P3064069987278851524.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P11633885074985659444

`∑[val(eq[1, A285718(n+1)], 3)]`
-/

namespace A072748.P11633885074985659444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P11633885074985659444

namespace A072748

/-- `∑[val(eq[1, A285718(n+1)], 3)]` -/
def P11633885074985659444.Spec : Prop :=
  ∀ n, (P11633885074985659444.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P8441370219014080171

`∑[val(eq[1, A046951(n+1)]+1, 3)]`
-/

namespace A072748.P8441370219014080171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P8441370219014080171

namespace A072748

/-- `∑[val(eq[1, A046951(n+1)]+1, 3)]` -/
def P8441370219014080171.Spec : Prop :=
  ∀ n, (P8441370219014080171.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P3643354949733213373

`∑[val(eq[1, A351219(n+1)]+1, 3)]`
-/

namespace A072748.P3643354949733213373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P3643354949733213373

namespace A072748

/-- `∑[val(eq[1, A351219(n+1)]+1, 3)]` -/
def P3643354949733213373.Spec : Prop :=
  ∀ n, (P3643354949733213373.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P16628447969285965379

`∑[val(lt[A085731(n+1), 2]+1, 3)]`
-/

namespace A072748.P16628447969285965379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P16628447969285965379

namespace A072748

/-- `∑[val(lt[A085731(n+1), 2]+1, 3)]` -/
def P16628447969285965379.Spec : Prop :=
  ∀ n, (P16628447969285965379.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P4923722858436049121

`∑[A007949(eq[1, ∏{e}[n+1, #]]+1)]`
-/

namespace A072748.P4923722858436049121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P4923722858436049121

namespace A072748

/-- `∑[A007949(eq[1, ∏{e}[n+1, #]]+1)]` -/
def P4923722858436049121.Spec : Prop :=
  ∀ n, P4923722858436049121.a n = A072748 (n + 1)

end A072748

/-! ## A072748.P2538277949903601506

`∑[val(record[(n+1)/A256688(n+1)], 3)]`
-/

namespace A072748.P2538277949903601506
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256688 (n + 1) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P2538277949903601506

namespace A072748

/-- `∑[val(record[(n+1)/A256688(n+1)], 3)]` -/
def P2538277949903601506.Spec : Prop :=
  ∀ n, (P2538277949903601506.a n : ℤ) = A072748 (n + 1)

end A072748

/-! ## A072748.P8694105216993464466

`∑[A007949(record[A007947(n+1)])]`
-/

namespace A072748.P8694105216993464466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P8694105216993464466

namespace A072748

/-- `∑[A007949(record[A007947(n+1)])]` -/
def P8694105216993464466.Spec : Prop :=
  ∀ n, P8694105216993464466.a n = A072748 (n + 1)

end A072748

/-!
# A072749: Count of factors of 5 in the first n squarefree numbers.

The programs for A072749, the canonical program `A072749.P16362701567912148616` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072749 has offset 1).

The definition of A072749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072749.P4643995500935753786

`∑[val(A005117(n+1), 5)]`
-/

namespace A072749.P4643995500935753786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P4643995500935753786

namespace A072749

/-- `∑[val(A005117(n+1), 5)]` -/
def P4643995500935753786.Spec : Prop :=
  ∀ n, (P4643995500935753786.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P1193427544727088872

`∑[val(A133466(n+1), 5)]`
-/

namespace A072749.P1193427544727088872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133466 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P1193427544727088872

namespace A072749

/-- `∑[val(A133466(n+1), 5)]` -/
def P1193427544727088872.Spec : Prop :=
  ∀ n, (P1193427544727088872.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P7125431545566438384

`∑[val(record[A007913(n+1)], 5)]`
-/

namespace A072749.P7125431545566438384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P7125431545566438384

namespace A072749

/-- `∑[val(record[A007913(n+1)], 5)]` -/
def P7125431545566438384.Spec : Prop :=
  ∀ n, (P7125431545566438384.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P4347269792706215627

`∑[val(record[A007947(n+1)], 5)]`
-/

namespace A072749.P4347269792706215627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P4347269792706215627

namespace A072749

/-- `∑[val(record[A007947(n+1)], 5)]` -/
def P4347269792706215627.Spec : Prop :=
  ∀ n, (P4347269792706215627.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P10805992367018111382

`∑[val(record[A055231(n+1)], 5)]`
-/

namespace A072749.P10805992367018111382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P10805992367018111382

namespace A072749

/-- `∑[val(record[A055231(n+1)], 5)]` -/
def P10805992367018111382.Spec : Prop :=
  ∀ n, (P10805992367018111382.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P16362701567912148616

`∑[val(eq[1, A005361(n+1)]+1, 5)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072749

/-- `∑[val(eq[1, A005361(n+1)]+1, 5)]` -/
def P16362701567912148616.Spec : Prop :=
  ∀ n, (P16362701567912148616.a n : ℤ) = A072749 (n + 1)

theorem P16362701567912148616.correct : P16362701567912148616.Spec := by
  intro n
  simp only [A072749, Nat.add_sub_cancel]

end A072749

/-! ## A072749.P15317534833479790645

`∑[val(comp[A013929(n+1)-1]+1, 5)]`
-/

namespace A072749.P15317534833479790645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P15317534833479790645

namespace A072749

/-- `∑[val(comp[A013929(n+1)-1]+1, 5)]` -/
def P15317534833479790645.Spec : Prop :=
  ∀ n, (P15317534833479790645.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P6141287227599248347

`∑[val(record[∏{p}[n, #]], 5)]`
-/

namespace A072749.P6141287227599248347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P6141287227599248347

namespace A072749

/-- `∑[val(record[∏{p}[n, #]], 5)]` -/
def P6141287227599248347.Spec : Prop :=
  ∀ n, (P6141287227599248347.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P15071779134423820125

`∑[val(eq[n, ∏{p}[n, #]], 5)]`
-/

namespace A072749.P15071779134423820125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j = f3 j) n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P15071779134423820125

namespace A072749

/-- `∑[val(eq[n, ∏{p}[n, #]], 5)]` -/
def P15071779134423820125.Spec : Prop :=
  ∀ n, (P15071779134423820125.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P7588043157959983124

`∑[A079998(eq[n, ∏{p}[n, #]])]`
-/

namespace A072749.P7588043157959983124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P7588043157959983124

namespace A072749

/-- `∑[A079998(eq[n, ∏{p}[n, #]])]` -/
def P7588043157959983124.Spec : Prop :=
  ∀ n, P7588043157959983124.a n = A072749 (n + 1)

end A072749

/-! ## A072749.P10214661889119990918

`∑[val(record[A336965(n+1)], 5)]`
-/

namespace A072749.P10214661889119990918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P10214661889119990918

namespace A072749

/-- `∑[val(record[A336965(n+1)], 5)]` -/
def P10214661889119990918.Spec : Prop :=
  ∀ n, (P10214661889119990918.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P7901054877906061239

`∑[val(eq[1, A285718(n+1)], 5)]`
-/

namespace A072749.P7901054877906061239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P7901054877906061239

namespace A072749

/-- `∑[val(eq[1, A285718(n+1)], 5)]` -/
def P7901054877906061239.Spec : Prop :=
  ∀ n, (P7901054877906061239.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P10934092641568002133

`∑[val(eq[1, A046951(n+1)]+1, 5)]`
-/

namespace A072749.P10934092641568002133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P10934092641568002133

namespace A072749

/-- `∑[val(eq[1, A046951(n+1)]+1, 5)]` -/
def P10934092641568002133.Spec : Prop :=
  ∀ n, (P10934092641568002133.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P9515691088247336424

`∑[val(eq[1, A351219(n+1)]+1, 5)]`
-/

namespace A072749.P9515691088247336424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P9515691088247336424

namespace A072749

/-- `∑[val(eq[1, A351219(n+1)]+1, 5)]` -/
def P9515691088247336424.Spec : Prop :=
  ∀ n, (P9515691088247336424.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P5400924491536722458

`∑[val(record[(n+1)/A256688(n+1)], 5)]`
-/

namespace A072749.P5400924491536722458
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A256688 (n + 1) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P5400924491536722458

namespace A072749

/-- `∑[val(record[(n+1)/A256688(n+1)], 5)]` -/
def P5400924491536722458.Spec : Prop :=
  ∀ n, (P5400924491536722458.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P812566345822876627

`∑[val(A088610(2*n+1), 5)]`
-/

namespace A072749.P812566345822876627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088610 (2 * n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P812566345822876627

namespace A072749

/-- `∑[val(A088610(2*n+1), 5)]` -/
def P812566345822876627.Spec : Prop :=
  ∀ n, (P812566345822876627.a n : ℤ) = A072749 (n + 1)

end A072749

/-! ## A072749.P16568422955252986813

`∑[val(lt[A255231(n+1)², 2]+1, 5)]`
-/

namespace A072749.P16568422955252986813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P16568422955252986813

namespace A072749

/-- `∑[val(lt[A255231(n+1)², 2]+1, 5)]` -/
def P16568422955252986813.Spec : Prop :=
  ∀ n, (P16568422955252986813.a n : ℤ) = A072749 (n + 1)

end A072749

/-!
# A072750: Counting factor 7 in the first n squarefree numbers.

The programs for A072750, the canonical program `A072750.P10876359717229383901` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072750 has offset 1).

The definition of A072750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072750.P4651278901531667081

`∑[val(comp[A105570(n)], 7)]`
-/

namespace A072750.P4651278901531667081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P4651278901531667081

namespace A072750

/-- `∑[val(comp[A105570(n)], 7)]` -/
def P4651278901531667081.Spec : Prop :=
  ∀ n, (P4651278901531667081.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P10876359717229383901

`∑[val(A005117(n+1), 7)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072750

/-- `∑[val(A005117(n+1), 7)]` -/
def P10876359717229383901.Spec : Prop :=
  ∀ n, (P10876359717229383901.a n : ℤ) = A072750 (n + 1)

theorem P10876359717229383901.correct : P10876359717229383901.Spec := by
  intro n
  simp only [A072750, Nat.add_sub_cancel]

end A072750

/-! ## A072750.P5667347917509373324

`∑[val(A133466(n+1), 7)]`
-/

namespace A072750.P5667347917509373324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133466 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P5667347917509373324

namespace A072750

/-- `∑[val(A133466(n+1), 7)]` -/
def P5667347917509373324.Spec : Prop :=
  ∀ n, (P5667347917509373324.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P3806819001902648082

`∑[val(A062503(n+1), 49)]`
-/

namespace A072750.P3806819001902648082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062503 (n + 1)).toNat 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P3806819001902648082

namespace A072750

/-- `∑[val(A062503(n+1), 49)]` -/
def P3806819001902648082.Spec : Prop :=
  ∀ n, (P3806819001902648082.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P9309928891946644485

`∑[val(record[A007913(n+1)], 7)]`
-/

namespace A072750.P9309928891946644485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P9309928891946644485

namespace A072750

/-- `∑[val(record[A007913(n+1)], 7)]` -/
def P9309928891946644485.Spec : Prop :=
  ∀ n, (P9309928891946644485.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P3026796420377672491

`∑[val(record[A007947(n+1)], 7)]`
-/

namespace A072750.P3026796420377672491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P3026796420377672491

namespace A072750

/-- `∑[val(record[A007947(n+1)], 7)]` -/
def P3026796420377672491.Spec : Prop :=
  ∀ n, (P3026796420377672491.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P12919035108000643395

`∑[val(record[A055231(n+1)], 7)]`
-/

namespace A072750.P12919035108000643395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P12919035108000643395

namespace A072750

/-- `∑[val(record[A055231(n+1)], 7)]` -/
def P12919035108000643395.Spec : Prop :=
  ∀ n, (P12919035108000643395.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P1869258750595512042

`∑[val(record[A083346(n+1)], 7)]`
-/

namespace A072750.P1869258750595512042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P1869258750595512042

namespace A072750

/-- `∑[val(record[A083346(n+1)], 7)]` -/
def P1869258750595512042.Spec : Prop :=
  ∀ n, (P1869258750595512042.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P5671923800151795122

`∑[val(record[A325814(n+1)], 7)]`
-/

namespace A072750.P5671923800151795122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P5671923800151795122

namespace A072750

/-- `∑[val(record[A325814(n+1)], 7)]` -/
def P5671923800151795122.Spec : Prop :=
  ∀ n, (P5671923800151795122.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P14621141970265542273

`∑[val(record[∏{p}[n, #]], 7)]`
-/

namespace A072750.P14621141970265542273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P14621141970265542273

namespace A072750

/-- `∑[val(record[∏{p}[n, #]], 7)]` -/
def P14621141970265542273.Spec : Prop :=
  ∀ n, (P14621141970265542273.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P16592827897361661819

`∑[val(record[A015053(n+1)], 7)]`
-/

namespace A072750.P16592827897361661819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P16592827897361661819

namespace A072750

/-- `∑[val(record[A015053(n+1)], 7)]` -/
def P16592827897361661819.Spec : Prop :=
  ∀ n, (P16592827897361661819.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P11825355810713367334

`∑[val(record[A019554(n+1)], 7)]`
-/

namespace A072750.P11825355810713367334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P11825355810713367334

namespace A072750

/-- `∑[val(record[A019554(n+1)], 7)]` -/
def P11825355810713367334.Spec : Prop :=
  ∀ n, (P11825355810713367334.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P6947370283503030295

`∑[val(record[A308056(n+1)], 7)]`
-/

namespace A072750.P6947370283503030295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308056 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P6947370283503030295

namespace A072750

/-- `∑[val(record[A308056(n+1)], 7)]` -/
def P6947370283503030295.Spec : Prop :=
  ∀ n, (P6947370283503030295.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P8623752908564961978

`∑[val(A088610(2*n+1), 7)]`
-/

namespace A072750.P8623752908564961978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088610 (2 * n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P8623752908564961978

namespace A072750

/-- `∑[val(A088610(2*n+1), 7)]` -/
def P8623752908564961978.Spec : Prop :=
  ∀ n, (P8623752908564961978.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P9957582689897627123

`∑[val(record[A128651(n+1)], 7)]`
-/

namespace A072750.P9957582689897627123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P9957582689897627123

namespace A072750

/-- `∑[val(record[A128651(n+1)], 7)]` -/
def P9957582689897627123.Spec : Prop :=
  ∀ n, (P9957582689897627123.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P2215054583454540123

`∑[val(record[A285734(n+2)], 7)]`
-/

namespace A072750.P2215054583454540123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285734 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P2215054583454540123

namespace A072750

/-- `∑[val(record[A285734(n+2)], 7)]` -/
def P2215054583454540123.Spec : Prop :=
  ∀ n, (P2215054583454540123.a n : ℤ) = A072750 (n + 1)

end A072750

/-! ## A072750.P12311714988157736354

`∑[val(A195085(n+1), 7)]`
-/

namespace A072750.P12311714988157736354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195085 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P12311714988157736354

namespace A072750

/-- `∑[val(A195085(n+1), 7)]` -/
def P12311714988157736354.Spec : Prop :=
  ∀ n, (P12311714988157736354.a n : ℤ) = A072750 (n + 1)

end A072750

/-!
# A072751: Greatest of the most frequent prime factors of squarefree numbers <= n; a(1)=1.

The programs for A072751, there is no canonical definition to state claims against.
-/

/-! ## A072751.P14393991371721190880

`floor(A301758(n+1)/A301703(n+1))`
-/

namespace A072751.P14393991371721190880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301758 (n + 1) : ℚ) / (A301703 (n + 1) : ℚ)⌋

end

end A072751.P14393991371721190880

/-!
# A072752: Maximum gap in one-stage prime-sieves.

The programs for A072752, there is no canonical definition to state claims against.
-/

/-! ## A072752.P15550414102400254580

`(A058989(n+2)-1)/2`
-/

namespace A072752.P15550414102400254580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058989 (n + 2) - 1 : ℚ) / 2

end

end A072752.P15550414102400254580

/-! ## A072752.P8498706419285869219

`(A048670(n+2)-2)/2`
-/

namespace A072752.P8498706419285869219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048670 (n + 2) - 2 : ℚ) / 2

end

end A072752.P8498706419285869219

/-! ## A072752.P438497311122040577

`floor(A058989(n+2)/2)`
-/

namespace A072752.P438497311122040577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058989 (n + 2) : ℚ) / 2⌋

end

end A072752.P438497311122040577

/-! ## A072752.P4793270331480728423

`∑[Δ[A048670(n+1)]/2]`
-/

namespace A072752.P4793270331480728423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048670 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072752.P4793270331480728423

/-! ## A072752.P17098384911921639843

`∑[Δ[A058989(n+1)]/2]`
-/

namespace A072752.P17098384911921639843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058989 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072752.P17098384911921639843

/-! ## A072752.P9337415572170375506

`A004524(A058989(n+2))`
-/

namespace A072752.P9337415572170375506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A058989 (n + 2)).toNat

end

end A072752.P9337415572170375506

/-! ## A072752.P18417690153825207981

`A046667(A048670(n+2))`
-/

namespace A072752.P18417690153825207981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A048670 (n + 2)).toNat

end

end A072752.P18417690153825207981

/-! ## A072752.P13977442987373815677

`A004526(A048670(n+2)-1)`
-/

namespace A072752.P13977442987373815677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048670 (n + 2) - 1).toNat

end

end A072752.P13977442987373815677

/-! ## A072752.P13894324383201218297

`A001281(A048670(n+2)-2)`
-/

namespace A072752.P13894324383201218297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048670 (n + 2) - 2).toNat

end

end A072752.P13894324383201218297

/-! ## A072752.P7318820197716763908

`A004525(A048670(n+2)-2)`
-/

namespace A072752.P7318820197716763908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048670 (n + 2) - 2).toNat

end

end A072752.P7318820197716763908

/-!
# A072753: Maximum gap in two-stage prime-sieves.

The programs for A072753, there is no canonical definition to state claims against.
-/

/-! ## A072753.P5111304071166798475

`(A288815(n+3)-6)/6`
-/

namespace A072753.P5111304071166798475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288815 (n + 3) - 6 : ℚ) / 6

end

end A072753.P5111304071166798475

/-!
# A072755: Denominators of continued fraction convergents to Copeland-Erdos constant.

The programs for A072755, there is no canonical definition to state claims against.
-/

/-! ## A072755.P2845007041507888673

`A047781(n)+A029579(A006088(n))`
-/

namespace A072755.P2845007041507888673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 n + A029579 (A006088 n).toNat

end

end A072755.P2845007041507888673

/-!
# A072756: a(n) = least nonnegative integer not a(k) and not a(k)+floor(a(k)/2) for k

The programs for A072756, the canonical program `A072756.P6856512345765162209` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072756 has offset 0).

The definition of A072756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072756.P6856512345765162209

`comp[A072757(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072756

/-- `comp[A072757(n)]` -/
def P6856512345765162209.Spec : Prop :=
  ∀ n, (P6856512345765162209.a n : ℤ) = A072756 n

theorem P6856512345765162209.correct : P6856512345765162209.Spec := by
  intro n
  simp only [A072756]

end A072756

/-! ## A072756.P538367239507975839

`comp[A026344(n+1)+1]`
-/

namespace A072756.P538367239507975839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072756.P538367239507975839

namespace A072756

/-- `comp[A026344(n+1)+1]` -/
def P538367239507975839.Spec : Prop :=
  ∀ n, (P538367239507975839.a n : ℤ) = A072756 n

end A072756

/-! ## A072756.P14533594427059430021

`comp[eq[0, A087088(n+1)%2]+2]`
-/

namespace A072756.P14533594427059430021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A072756.P14533594427059430021

namespace A072756

/-- `comp[eq[0, A087088(n+1)%2]+2]` -/
def P14533594427059430021.Spec : Prop :=
  ∀ n, (P14533594427059430021.a n : ℤ) = A072756 n

end A072756

/-! ## A072756.P7370539219936399125

`A072758(A004275(n))`
-/

namespace A072756.P7370539219936399125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (A004275 n).toNat

end

end A072756.P7370539219936399125

namespace A072756

/-- `A072758(A004275(n))` -/
def P7370539219936399125.Spec : Prop :=
  ∀ n, P7370539219936399125.a n = A072756 n

end A072756

/-! ## A072756.P11344208634914923104

`A004396(comp[A026343(n+1)+1])`
-/

namespace A072756.P11344208634914923104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072756.P11344208634914923104

namespace A072756

/-- `A004396(comp[A026343(n+1)+1])` -/
def P11344208634914923104.Spec : Prop :=
  ∀ n, P11344208634914923104.a n = A072756 n

end A072756

/-! ## A072756.P11372773603565990676

`A008615(4*comp[A026343(n+1)+1])`
-/

namespace A072756.P11372773603565990676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072756.P11372773603565990676

namespace A072756

/-- `A008615(4*comp[A026343(n+1)+1])` -/
def P11372773603565990676.Spec : Prop :=
  ∀ n, P11372773603565990676.a n = A072756 n

end A072756

/-! ## A072756.P14699726379130915476

`A004396(A104463(n))`
-/

namespace A072756.P14699726379130915476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104463 n).toNat

end

end A072756.P14699726379130915476

namespace A072756

/-- `A004396(A104463(n))` -/
def P14699726379130915476.Spec : Prop :=
  ∀ n, P14699726379130915476.a n = A072756 n

end A072756

/-!
# A072757: Complement of A072756.

The programs for A072757, the canonical program `A072757.P10660546183651895635` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072757 has offset 0).

The definition of A072757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072757.P10660546183651895635

`A026344(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072757

/-- `A026344(n+1)+1` -/
def P10660546183651895635.Spec : Prop :=
  ∀ n, P10660546183651895635.a n = A072757 n

theorem P10660546183651895635.correct : P10660546183651895635.Spec := by
  intro n
  simp only [A072757]

end A072757

/-! ## A072757.P4816914569444909171

`eq[0, A087088(n+1)%2]+2`
-/

namespace A072757.P4816914569444909171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A072757.P4816914569444909171

namespace A072757

/-- `eq[0, A087088(n+1)%2]+2` -/
def P4816914569444909171.Spec : Prop :=
  ∀ n, (P4816914569444909171.a n : ℤ) = A072757 n

end A072757

/-! ## A072757.P1755049851283583433

`A007494(A026343(n+1))+1`
-/

namespace A072757.P1755049851283583433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A026343 (n + 1)).toNat + 1

end

end A072757.P1755049851283583433

namespace A072757

/-- `A007494(A026343(n+1))+1` -/
def P1755049851283583433.Spec : Prop :=
  ∀ n, P1755049851283583433.a n = A072757 n

end A072757

/-! ## A072757.P9622377943600206339

`A032766(A072756(n+2))`
-/

namespace A072757.P9622377943600206339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A072756 (n + 2)).toNat

end

end A072757.P9622377943600206339

namespace A072757

/-- `A032766(A072756(n+2))` -/
def P9622377943600206339.Spec : Prop :=
  ∀ n, P9622377943600206339.a n = A072757 n

end A072757

/-! ## A072757.P17880423133260108896

`A032766(A026343(n+1)+1)`
-/

namespace A072757.P17880423133260108896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A026343 (n + 1) + 1).toNat

end

end A072757.P17880423133260108896

namespace A072757

/-- `A032766(A026343(n+1)+1)` -/
def P17880423133260108896.Spec : Prop :=
  ∀ n, P17880423133260108896.a n = A072757 n

end A072757

/-! ## A072757.P9957820410855061229

`A072758(2*n+3)`
-/

namespace A072757.P9957820410855061229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (2 * n + 3)

end

end A072757.P9957820410855061229

namespace A072757

/-- `A072758(2*n+3)` -/
def P9957820410855061229.Spec : Prop :=
  ∀ n, P9957820410855061229.a n = A072757 n

end A072757

/-! ## A072757.P4233680899528800133

`eq[2, and(6, -a(A092942(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A072757.P4233680899528800133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Int.land 6 (-f2 (A092942 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072757.P4233680899528800133

namespace A072757

/-- `eq[2, and(6, -a(A092942(n)))]` -/
def P4233680899528800133.Spec : Prop :=
  ∀ n, (P4233680899528800133.a n : ℤ) = A072757 n

end A072757

/-! ## A072757.P8925044000111874463

`A020725(A026344(n+1))`
-/

namespace A072757.P8925044000111874463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A026344 (n + 1)).toNat

end

end A072757.P8925044000111874463

namespace A072757

/-- `A020725(A026344(n+1))` -/
def P8925044000111874463.Spec : Prop :=
  ∀ n, P8925044000111874463.a n = A072757 n

end A072757

/-! ## A072757.P1214249815868657745

`eq[1, A000007(a(A092942(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A072757.P1214249815868657745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000007 (f2 (A092942 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072757.P1214249815868657745

namespace A072757

/-- `eq[1, A000007(a(A092942(n)))]` -/
def P1214249815868657745.Spec : Prop :=
  ∀ n, (P1214249815868657745.a n : ℤ) = A072757 n

end A072757

/-! ## A072757.P12564827320394123914

`A104463(n+2)`
-/

namespace A072757.P12564827320394123914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 (n + 2)

end

end A072757.P12564827320394123914

namespace A072757

/-- `A104463(n+2)` -/
def P12564827320394123914.Spec : Prop :=
  ∀ n, P12564827320394123914.a n = A072757 n

end A072757

/-!
# A072758: a(0)=0, a(1)=1 and for k>1, a(2k)=least positive integer not a(j) for j

The programs for A072758, there is no canonical definition to state claims against.
-/

/-! ## A072758.P16555245899302373185

`A104464(n)%(3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A072758.P16555245899302373185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A104464 n) (3 * a (n - 1))

end

end A072758.P16555245899302373185

/-! ## A072758.P1659650692253438571

`A104464(round(sqrt(n²+1)))%(n²+1)`
-/

namespace A072758.P1659650692253438571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104464 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (n ^ 2 + 1 : ℤ)

end

end A072758.P1659650692253438571

/-! ## A072758.P15504998910082226098

`A104464(A028310(n))-floor(acot(n))`
-/

namespace A072758.P15504998910082226098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A072758.P15504998910082226098

/-! ## A072758.P9540999770915749271

`A104464(A000007(a(n-1))+n)` with `a(0)=0, a(1)=1`
-/

namespace A072758.P9540999770915749271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A104464 (A000007 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A072758.P9540999770915749271

/-! ## A072758.P13493632340055980527

`A104464(n)+A000038(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A072758.P13493632340055980527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A104464 n + A000038 (a (n - 1)).toNat

end

end A072758.P13493632340055980527

/-! ## A072758.P7023049179035630980

`A104464(A028310(n))-A000007(n)`
-/

namespace A072758.P7023049179035630980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A028310 n).toNat - A000007 n

end

end A072758.P7023049179035630980

/-! ## A072758.P8675933280581714474

`A104464(A000007(n)+n)-A000007(n)`
-/

namespace A072758.P8675933280581714474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A072758.P8675933280581714474

/-! ## A072758.P9080098767404178927

`A000040(n+1)%2*A104464(A028310(n))`
-/

namespace A072758.P9080098767404178927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A104464 (A028310 n).toNat

end

end A072758.P9080098767404178927

/-! ## A072758.P4499349475303422248

`A104464(A028310(n))+A008683(lcm(2, (n+1)²))`
-/

namespace A072758.P4499349475303422248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A028310 n).toNat + A008683 (Nat.lcm 2 ((n + 1) ^ 2))

end

end A072758.P4499349475303422248

/-!
# A072760: Smallest of 7 consecutive integers divisible respectively by 7 consecutive primes.

The programs for A072760, there is no canonical definition to state claims against.
-/

/-! ## A072760.P13463586946371314649

`∩[A072722(n+1)-1, A072722(n+1)]`
-/

namespace A072760.P13463586946371314649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072722 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072760.P13463586946371314649

/-!
# A072762: n coded as binary word of length=n with k-th bit set iff k is prime (1<=k<=n), decimal value.

The programs for A072762, the canonical program `A072762.P10691074695677222829` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072762 has offset 1).

The definition of A072762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072762.P10691074695677222829

`a(n-1)*2+A010051(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072762

/-- `a(n-1)*2+A010051(n+1)` -/
def P10691074695677222829.Spec : Prop :=
  ∀ n, P10691074695677222829.a n = A072762 (n + 1)

theorem P10691074695677222829.correct : P10691074695677222829.Spec := by
  intro n
  simp only [A072762, Nat.add_sub_cancel]

end A072762

/-! ## A072762.P1271902743757210553

`char[p?[comp[n²]]-1]+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P1271902743757210553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A072762.P1271902743757210553

namespace A072762

/-- `char[p?[comp[n²]]-1]+2*a(n-1)` -/
def P1271902743757210553.Spec : Prop :=
  ∀ n, (P1271902743757210553.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P16925264974138810043

`C(2, A000005(n+1))+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P16925264974138810043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose 2 (A000005 (n + 1)).toNat + 2 * a (n - 1)

end

end A072762.P16925264974138810043

namespace A072762

/-- `C(2, A000005(n+1))+2*a(n-1)` -/
def P16925264974138810043.Spec : Prop :=
  ∀ n, (P16925264974138810043.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P10587127801936647784

`C(A000010(n+1), n)+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P10587127801936647784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (A000010 (n + 1)).toNat n + 2 * a (n - 1)

end

end A072762.P10587127801936647784

namespace A072762

/-- `C(A000010(n+1), n)+2*a(n-1)` -/
def P10587127801936647784.Spec : Prop :=
  ∀ n, (P10587127801936647784.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P14018054837070822675

`char[A006530(n+1)-1]+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P14018054837070822675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A072762.P14018054837070822675

namespace A072762

/-- `char[A006530(n+1)-1]+2*a(n-1)` -/
def P14018054837070822675.Spec : Prop :=
  ∀ n, (P14018054837070822675.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P2919114114826102007

`C(A014963(n+1), n+1)+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P2919114114826102007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (A014963 (n + 1)).toNat (n + 1) + 2 * a (n - 1)

end

end A072762.P2919114114826102007

namespace A072762

/-- `C(A014963(n+1), n+1)+2*a(n-1)` -/
def P2919114114826102007.Spec : Prop :=
  ∀ n, (P2919114114826102007.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P12445857012240344875

`C(n+2, A000203(n+1))+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P12445857012240344875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 2) (A000203 (n + 1)).toNat + 2 * a (n - 1)

end

end A072762.P12445857012240344875

namespace A072762

/-- `C(n+2, A000203(n+1))+2*a(n-1)` -/
def P12445857012240344875.Spec : Prop :=
  ∀ n, (P12445857012240344875.a n : ℤ) = A072762 (n + 1)

end A072762

/-! ## A072762.P17376968426028320093

`∑[A010051(n+1)/A000079(n)]*A000079(n)`
-/

namespace A072762.P17376968426028320093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A072762.P17376968426028320093

namespace A072762

/-- `∑[A010051(n+1)/A000079(n)]*A000079(n)` -/
def P17376968426028320093.Spec : Prop :=
  ∀ n, P17376968426028320093.a n = (A072762 (n + 1) : ℚ)

end A072762

/-! ## A072762.P15246943074243214063

`∑[A010051(n+1)/A011782(n)]*A011782(n)`
-/

namespace A072762.P15246943074243214063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011782 n : ℚ)

end

end A072762.P15246943074243214063

namespace A072762

/-- `∑[A010051(n+1)/A011782(n)]*A011782(n)` -/
def P15246943074243214063.Spec : Prop :=
  ∀ n, P15246943074243214063.a n = (A072762 (n + 1) : ℚ)

end A072762

/-! ## A072762.P3416481310357506903

`A126646(n)-A118255(n+1)`
-/

namespace A072762.P3416481310357506903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A118255 (n + 1)

end

end A072762.P3416481310357506903

namespace A072762

/-- `A126646(n)-A118255(n+1)` -/
def P3416481310357506903.Spec : Prop :=
  ∀ n, P3416481310357506903.a n = A072762 (n + 1)

end A072762

/-! ## A072762.P7231320371792949511

`A000225(n+1)-A118255(n+1)`
-/

namespace A072762.P7231320371792949511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A118255 (n + 1)

end

end A072762.P7231320371792949511

namespace A072762

/-- `A000225(n+1)-A118255(n+1)` -/
def P7231320371792949511.Spec : Prop :=
  ∀ n, P7231320371792949511.a n = A072762 (n + 1)

end A072762

/-! ## A072762.P13277703566476574036

`A064084(n+1)*A064085(n+1)-A118255(n+1)`
-/

namespace A072762.P13277703566476574036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064084 (n + 1) * A064085 (n + 1) - A118255 (n + 1)

end

end A072762.P13277703566476574036

namespace A072762

/-- `A064084(n+1)*A064085(n+1)-A118255(n+1)` -/
def P13277703566476574036.Spec : Prop :=
  ∀ n, P13277703566476574036.a n = A072762 (n + 1)

end A072762

/-!
# A072764: Tabular N X N -> N bijection induced by Lisp/Scheme function 'cons' combining the two planar binary trees/general trees/parenthesizations encoded by A014486(X) and A014486(Y).

The programs for A072764, there is no canonical definition to state claims against.
-/

/-! ## A072764.P5218252646155489211

`A069770(A072766(n))`
-/

namespace A072764.P5218252646155489211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A072766 n).toNat

end

end A072764.P5218252646155489211

/-! ## A072764.P12201405520542950353

`A072766(A072765(A072766(A072772(A072795(n)))))`
-/

namespace A072764.P12201405520542950353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (A072765 (A072766 (A072772 (A072795 n).toNat).toNat).toNat).toNat

end

end A072764.P12201405520542950353

/-! ## A072764.P12378264483518326761

`A072766(A072765(A072766(A072766(A072767(n)))))`
-/

namespace A072764.P12378264483518326761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (A072765 (A072766 (A072766 (A072767 n).toNat).toNat).toNat).toNat

end

end A072764.P12378264483518326761

/-! ## A072764.P10760327740333568486

`A069770(A071652(n)%A075962(n))`
-/

namespace A072764.P10760327740333568486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (Int.tmod (A071652 n) (A075962 n)).toNat

end

end A072764.P10760327740333568486

/-!
# A072765: Inverse permutation to A072764.

The programs for A072765, there is no canonical definition to state claims against.
-/

/-! ## A072765.P6921634194256954490

`A072767(A069770(n))`
-/

namespace A072765.P6921634194256954490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072767 (A069770 n).toNat

end

end A072765.P6921634194256954490

/-! ## A072765.P601937255771416235

`A072767(A072764(A072767(n)))`
-/

namespace A072765.P601937255771416235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072767 (A072764 (A072767 n).toNat).toNat

end

end A072765.P601937255771416235

/-! ## A072765.P11900244646563913924

`A072767(A082345(n))%record[A080540(n)]`
-/

namespace A072765.P11900244646563913924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072767 (A082345 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A072765.P11900244646563913924

/-! ## A072765.P17087111854547165520

`A072767(A082345(n)%A027763(n+1))`
-/

namespace A072765.P17087111854547165520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072767 (Int.tmod (A082345 n) (A027763 (n + 1))).toNat

end

end A072765.P17087111854547165520

/-! ## A072765.P3059064169374499852

`A072767(A129612(n)%A027763(n+1))`
-/

namespace A072765.P3059064169374499852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072767 (Int.tmod (A129612 n) (A027763 (n + 1))).toNat

end

end A072765.P3059064169374499852

/-!
# A072766: Transpose of A072764, 'cons' with arguments swapped.

The programs for A072766, there is no canonical definition to state claims against.
-/

/-! ## A072766.P14690115886610359957

`A069770(A072764(n))`
-/

namespace A072766.P14690115886610359957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A072764 n).toNat

end

end A072766.P14690115886610359957

/-! ## A072766.P1131431763614243379

`A072764(A072767(A072764(A072772(A072795(n)))))`
-/

namespace A072766.P1131431763614243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (A072767 (A072764 (A072772 (A072795 n).toNat).toNat).toNat).toNat

end

end A072766.P1131431763614243379

/-! ## A072766.P18355871018717494711

`A072764(A072767(A072764(A072764(A072765(n)))))`
-/

namespace A072766.P18355871018717494711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (A072767 (A072764 (A072764 (A072765 n).toNat).toNat).toNat).toNat

end

end A072766.P18355871018717494711

/-! ## A072766.P10569896636838546767

`A122327(A072764(n)+A025469(n))`
-/

namespace A072766.P10569896636838546767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122327 (A072764 n + A025469 n).toNat

end

end A072766.P10569896636838546767

/-! ## A072766.P17256085062143826733

`A071652(n)*A329900(A283089(n+1))`
-/

namespace A072766.P17256085062143826733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071652 n * A329900 (A283089 (n + 1)).toNat

end

end A072766.P17256085062143826733

/-!
# A072767: Inverse permutation to A072766.

The programs for A072767, there is no canonical definition to state claims against.
-/

/-! ## A072767.P12437575564428521522

`A072765(A069770(n))`
-/

namespace A072767.P12437575564428521522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072765 (A069770 n).toNat

end

end A072767.P12437575564428521522

/-! ## A072767.P8328227157253904681

`A072765(A072766(A072765(n)))`
-/

namespace A072767.P8328227157253904681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072765 (A072766 (A072765 n).toNat).toNat

end

end A072767.P8328227157253904681

/-! ## A072767.P3587868955043537092

`A072765(A082345(n)%A027763(n+1))`
-/

namespace A072767.P3587868955043537092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072765 (Int.tmod (A082345 n) (A027763 (n + 1))).toNat

end

end A072767.P3587868955043537092

/-! ## A072767.P15772024621560041316

`A072765(A129612(n)%A027763(n+1))`
-/

namespace A072767.P15772024621560041316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072765 (Int.tmod (A129612 n) (A027763 (n + 1))).toNat

end

end A072767.P15772024621560041316

/-!
# A072768: The RASTxx transformation of the sequence A072643.

The programs for A072768, there is no canonical definition to state claims against.
-/

/-! ## A072768.P12132226005654170849

`A071673(n+1)-A072769(n+1)`
-/

namespace A072768.P12132226005654170849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A072769 (n + 1)

end

end A072768.P12132226005654170849

/-! ## A072768.P11970875922305198765

`A072643(A072764(n+1))`
-/

namespace A072768.P11970875922305198765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072764 (n + 1)).toNat

end

end A072768.P11970875922305198765

/-! ## A072768.P12773288247319050107

`A072643(A072766(n+1))`
-/

namespace A072768.P12773288247319050107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072766 (n + 1)).toNat

end

end A072768.P12773288247319050107

/-! ## A072768.P9342793421443384509

`A323665(A345254(n+1))`
-/

namespace A072768.P9342793421443384509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A345254 (n + 1)).toNat

end

end A072768.P9342793421443384509

/-! ## A072768.P9303891532117244483

`A323665(A135764(n+1))`
-/

namespace A072768.P9303891532117244483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A135764 (n + 1)).toNat

end

end A072768.P9303891532117244483

/-! ## A072768.P11369718792884462236

`A323665(A253551(n+1))`
-/

namespace A072768.P11369718792884462236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A253551 (n + 1)).toNat

end

end A072768.P11369718792884462236

/-! ## A072768.P16138001522062571149

`A323665(A054582(n))`
-/

namespace A072768.P16138001522062571149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A054582 n).toNat

end

end A072768.P16138001522062571149

/-! ## A072768.P6204673657277951837

`A323665(A118416(n+1)/A059268(n))`
-/

namespace A072768.P6204673657277951837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (SequenceMachineLib.roundAway ((A118416 (n + 1) : ℚ) / (A059268 n : ℚ))).toNat

end

end A072768.P6204673657277951837

/-!
# A072769: Differences between A071673 and A072768.

The programs for A072769, there is no canonical definition to state claims against.
-/

/-! ## A072769.P17716897488816668642

`A071673(n+1)-A072768(n+1)`
-/

namespace A072769.P17716897488816668642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A072768 (n + 1)

end

end A072769.P17716897488816668642

/-! ## A072769.P1841356288737141176

`A071673(n+1)-A071673(A071651(A072764(n+1)))`
-/

namespace A072769.P1841356288737141176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A071673 (A071651 (A072764 (n + 1)).toNat).toNat

end

end A072769.P1841356288737141176

/-! ## A072769.P16551943900772174453

`A071673(n+1)-A323665(A135764(n+1))`
-/

namespace A072769.P16551943900772174453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A323665 (A135764 (n + 1)).toNat

end

end A072769.P16551943900772174453

/-! ## A072769.P9180140744883201496

`A071673(n+1)-A323665(A054582(n))`
-/

namespace A072769.P9180140744883201496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A323665 (A054582 n).toNat

end

end A072769.P9180140744883201496

/-! ## A072769.P3657084318536335123

`A071673(n+1)-A323665(A118416(n+1)/A059268(n))`
-/

namespace A072769.P3657084318536335123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (n + 1) - A323665 (SequenceMachineLib.roundAway ((A118416 (n + 1) : ℚ) / (A059268 n : ℚ))).toNat

end

end A072769.P3657084318536335123

/-! ## A072769.P16337598339140430553

`A240465(lcm(4, A146985(n)))`
-/

namespace A072769.P16337598339140430553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (Int.lcm 4 (A146985 n))

end

end A072769.P16337598339140430553

/-! ## A072769.P830875610420380887

`A049310(A046854(A030111(A074829(n+1))))`
-/

namespace A072769.P830875610420380887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A046854 (A030111 (A074829 (n + 1)).toNat).toNat).toNat

end

end A072769.P830875610420380887

/-! ## A072769.P10981415911076147724

`C(A242072(2*n), 9)`
-/

namespace A072769.P10981415911076147724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242072 (2 * n)).toNat 9

end

end A072769.P10981415911076147724

/-! ## A072769.P14234815622346274715

`A070204(A036026(n))`
-/

namespace A072769.P14234815622346274715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (A036026 n).toNat

end

end A072769.P14234815622346274715

/-!
# A072770: Triangle A072768 computed modulo 2.

The programs for A072770, there is no canonical definition to state claims against.
-/

/-! ## A072770.P7991936848624718942

`A072768(n+1)%2`
-/

namespace A072770.P7991936848624718942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072768 (n + 1)) 2

end

end A072770.P7991936848624718942

/-! ## A072770.P6237902518198294659

`and(1, A072768(C(n+1, n)))`
-/

namespace A072770.P6237902518198294659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072768 (Nat.choose (n + 1) n))

end

end A072770.P6237902518198294659

/-! ## A072770.P4039874842774807184

`and(1, A072768(-xor(n, -1)))`
-/

namespace A072770.P4039874842774807184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072768 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A072770.P4039874842774807184

/-! ## A072770.P11864194408432081375

`and(1, A072768(char[1]+1+n))`
-/

namespace A072770.P11864194408432081375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072768 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A072770.P11864194408432081375

/-! ## A072770.P17883602055790611071

`A000035(A072768(n+1))`
-/

namespace A072770.P17883602055790611071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072768 (n + 1)).toNat

end

end A072770.P17883602055790611071

/-! ## A072770.P3009765155307964730

`and(A072768(n+1), A282997(n+1))`
-/

namespace A072770.P3009765155307964730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A282997 (n + 1))

end

end A072770.P3009765155307964730

/-! ## A072770.P7308664691031032165

`and(A072768(n+1), A084777(A072768(n+1)²))`
-/

namespace A072770.P7308664691031032165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A084777 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P7308664691031032165

/-! ## A072770.P4039448508875465715

`and(A072768(n+1), A113859(A072768(n+1)²))`
-/

namespace A072770.P4039448508875465715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A113859 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P4039448508875465715

/-! ## A072770.P16444985127544561019

`and(A072768(n+1), A121442(A072768(n+1)²))`
-/

namespace A072770.P16444985127544561019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A121442 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P16444985127544561019

/-! ## A072770.P716054122286164671

`and(A072768(n+1), A124698(A072768(n+1)²))`
-/

namespace A072770.P716054122286164671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A124698 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P716054122286164671

/-! ## A072770.P5020860773311377085

`and(A072768(n+1), A156581(A072768(n+1)²))`
-/

namespace A072770.P5020860773311377085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A156581 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P5020860773311377085

/-! ## A072770.P10929149459702634969

`and(A072768(n+1), A172196(A072768(n+1)²))`
-/

namespace A072770.P10929149459702634969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A172196 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P10929149459702634969

/-! ## A072770.P3732750543788253940

`and(A072768(n+1), A174389(A072768(n+1)²))`
-/

namespace A072770.P3732750543788253940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A174389 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P3732750543788253940

/-! ## A072770.P2410998009306935182

`and(A072768(n+1), A195744(A072768(n+1)²))`
-/

namespace A072770.P2410998009306935182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A195744 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P2410998009306935182

/-! ## A072770.P8454205419886994667

`and(A072768(n+1), A085601(A072768(n+1)²))`
-/

namespace A072770.P8454205419886994667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A085601 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P8454205419886994667

/-! ## A072770.P15912393603719267678

`and(A072768(n+1), A087289(A072768(n+1)²))`
-/

namespace A072770.P15912393603719267678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A087289 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P15912393603719267678

/-! ## A072770.P915750218939672046

`and(A072768(n+1), A092440(A072768(n+1)²))`
-/

namespace A072770.P915750218939672046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A092440 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P915750218939672046

/-! ## A072770.P706737903960983536

`and(A072768(n+1), A092896(A072768(n+1)²))`
-/

namespace A072770.P706737903960983536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A092896 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P706737903960983536

/-! ## A072770.P2537664564566941645

`and(A072768(n+1), A140413(A072768(n+1)²))`
-/

namespace A072770.P2537664564566941645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A140413 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P2537664564566941645

/-! ## A072770.P10639214554929152471

`and(A072768(n+1), A171590(A072768(n+1)²))`
-/

namespace A072770.P10639214554929152471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072768 (n + 1)) (A171590 (A072768 (n + 1) ^ 2).toNat)

end

end A072770.P10639214554929152471

/-!
# A072771: X-projection of the tabular N X N -> N bijection A072764 and Y-projection of its transpose A072766.

The programs for A072771, there is no canonical definition to state claims against.
-/

/-! ## A072771.P4688118017303853655

`A072767(n+1)+A072772(n+1)-A072765(n+1)`
-/

namespace A072771.P4688118017303853655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072767 (n + 1) + (A072772 (n + 1) - A072765 (n + 1))

end

end A072771.P4688118017303853655

/-! ## A072771.P15015288547272710618

`A072772(A069768(n+1))`
-/

namespace A072771.P15015288547272710618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A069768 (n + 1)).toNat

end

end A072771.P15015288547272710618

/-! ## A072771.P14631846785704278839

`A072772(A069770(n+1))`
-/

namespace A072771.P14631846785704278839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A069770 (n + 1)).toNat

end

end A072771.P14631846785704278839

/-! ## A072771.P568934953544338289

`A072772(A082346(n+1))`
-/

namespace A072771.P568934953544338289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A082346 (n + 1)).toNat

end

end A072771.P568934953544338289

/-! ## A072771.P3429432738600547343

`A072772(A129611(n+1))`
-/

namespace A072771.P3429432738600547343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A129611 (n + 1)).toNat

end

end A072771.P3429432738600547343

/-! ## A072771.P6756829817800778262

`A072772(A154451(n+1))`
-/

namespace A072771.P6756829817800778262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A154451 (n + 1)).toNat

end

end A072771.P6756829817800778262

/-! ## A072771.P10505127056188237533

`A072772(A154456(n+1))`
-/

namespace A072771.P10505127056188237533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A154456 (n + 1)).toNat

end

end A072771.P10505127056188237533

/-! ## A072771.P13537355498594076642

`A072772(A154457(n+1))`
-/

namespace A072771.P13537355498594076642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A154457 (n + 1)).toNat

end

end A072771.P13537355498594076642

/-! ## A072771.P11061909613493954140

`A002262(A072767(n+1)-1)`
-/

namespace A072771.P11061909613493954140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072767 (n + 1) - 1).toNat

end

end A072771.P11061909613493954140

/-! ## A072771.P16168889253444035165

`A072772(A072764(A072767(n+1)))`
-/

namespace A072771.P16168889253444035165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A072764 (A072767 (n + 1)).toNat).toNat

end

end A072771.P16168889253444035165

/-! ## A072771.P11268697755822895008

`A004736(A072765(n+1))-1`
-/

namespace A072771.P11268697755822895008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A072765 (n + 1)).toNat - 1

end

end A072771.P11268697755822895008

/-! ## A072771.P17795731667506231840

`A025581(A072765(n+1)-1)`
-/

namespace A072771.P17795731667506231840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072765 (n + 1) - 1).toNat

end

end A072771.P17795731667506231840

/-! ## A072771.P14615902737067127157

`A072772(A072766(A072765(n+1)))`
-/

namespace A072771.P14615902737067127157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072772 (A072766 (A072765 (n + 1)).toNat).toNat

end

end A072771.P14615902737067127157

/-! ## A072771.P9364281408334472568

`A033999(2*n+1)+A004736(A072765(n+1))`
-/

namespace A072771.P9364281408334472568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A004736 (A072765 (n + 1)).toNat

end

end A072771.P9364281408334472568

/-! ## A072771.P3673883611624705932

`A002262(A038722(A072765(n+1)+1))`
-/

namespace A072771.P3673883611624705932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A038722 (A072765 (n + 1) + 1).toNat).toNat

end

end A072771.P3673883611624705932

/-!
# A072772: Y-projection of the tabular N X N -> N bijection A072764 and X-projection of its transpose A072766.

The programs for A072772, there is no canonical definition to state claims against.
-/

/-! ## A072772.P14529102277242056813

`A072765(n+1)+A072771(n+1)-A072767(n+1)`
-/

namespace A072772.P14529102277242056813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072765 (n + 1) + (A072771 (n + 1) - A072767 (n + 1))

end

end A072772.P14529102277242056813

/-! ## A072772.P5295857275257299010

`A072771(A069767(n+1))`
-/

namespace A072772.P5295857275257299010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A069767 (n + 1)).toNat

end

end A072772.P5295857275257299010

/-! ## A072772.P5176758036117570588

`A072771(A069770(n+1))`
-/

namespace A072772.P5176758036117570588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A069770 (n + 1)).toNat

end

end A072772.P5176758036117570588

/-! ## A072772.P1240561747557589982

`A072771(A082345(n+1))`
-/

namespace A072772.P1240561747557589982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A082345 (n + 1)).toNat

end

end A072772.P1240561747557589982

/-! ## A072772.P11749910413041306751

`A072771(A057502(A057509(n+1)))`
-/

namespace A072772.P11749910413041306751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A057502 (A057509 (n + 1)).toNat).toNat

end

end A072772.P11749910413041306751

/-! ## A072772.P14078690692873901296

`A072771(A129612(n+1))`
-/

namespace A072772.P14078690692873901296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A129612 (n + 1)).toNat

end

end A072772.P14078690692873901296

/-! ## A072772.P11683899884432956083

`A072771(A154452(n+1))`
-/

namespace A072772.P11683899884432956083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A154452 (n + 1)).toNat

end

end A072772.P11683899884432956083

/-! ## A072772.P6348845333993201569

`A072771(A154458(n+1))`
-/

namespace A072772.P6348845333993201569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A154458 (n + 1)).toNat

end

end A072772.P6348845333993201569

/-! ## A072772.P11039272686630402317

`A002260(A072765(n+1))-1`
-/

namespace A072772.P11039272686630402317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A072765 (n + 1)).toNat - 1

end

end A072772.P11039272686630402317

/-! ## A072772.P15777825718853932768

`A134824(n+2)+A002260(A072765(n+1))`
-/

namespace A072772.P15777825718853932768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002260 (A072765 (n + 1)).toNat

end

end A072772.P15777825718853932768

/-! ## A072772.P3687662061490068939

`A025581(A072767(n+1)-1)`
-/

namespace A072772.P3687662061490068939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072767 (n + 1) - 1).toNat

end

end A072772.P3687662061490068939

/-! ## A072772.P10031834055204982028

`A072771(A072764(A072767(n+1)))`
-/

namespace A072772.P10031834055204982028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A072764 (A072767 (n + 1)).toNat).toNat

end

end A072772.P10031834055204982028

/-! ## A072772.P11604775108881815428

`A002262(A072765(n+1)-1)`
-/

namespace A072772.P11604775108881815428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072765 (n + 1) - 1).toNat

end

end A072772.P11604775108881815428

/-! ## A072772.P1000291823538364188

`val(A055235(A072765(n+1)-1), 3)`
-/

namespace A072772.P1000291823538364188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055235 (A072765 (n + 1) - 1).toNat).toNat 3

end

end A072772.P1000291823538364188

/-! ## A072772.P8106750850330058902

`A072771(A072766(A072765(n+1)))`
-/

namespace A072772.P8106750850330058902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A072766 (A072765 (n + 1)).toNat).toNat

end

end A072772.P8106750850330058902

/-!
# A072773: The upper triangular region of A072764.

The programs for A072773, there is no canonical definition to state claims against.
-/

/-! ## A072773.P320774478821799962

`A072764(A245300(n)+1)`
-/

namespace A072773.P320774478821799962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (A245300 n + 1).toNat

end

end A072773.P320774478821799962

/-! ## A072773.P7110056320864501893

`A072764((A214661(n+1)+1)/2)`
-/

namespace A072773.P7110056320864501893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A072773.P7110056320864501893

/-! ## A072773.P15900844298471508580

`A072766(A245300(n)+A004736(n+1))`
-/

namespace A072773.P15900844298471508580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (A245300 n + A004736 (n + 1)).toNat

end

end A072773.P15900844298471508580

/-! ## A072773.P14287242297290272947

`A072764(A008619(A214661(n+1)))`
-/

namespace A072773.P14287242297290272947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A072773.P14287242297290272947

/-!
# A072774: Powers of squarefree numbers.

The programs for A072774, the canonical program `A072774.P8652726476267271771` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072774 has offset 1).

The definition of A072774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072774.P1737393794649963033

`A072775(n+1)^A072776(n+1)`
-/

namespace A072774.P1737393794649963033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072775 (n + 1) : ℚ) ^ (A072776 (n + 1) : ℤ)

end

end A072774.P1737393794649963033

namespace A072774

/-- `A072775(n+1)^A072776(n+1)` -/
def P1737393794649963033.Spec : Prop :=
  ∀ n, P1737393794649963033.a n = (A072774 (n + 1) : ℚ)

end A072774

/-! ## A072774.P8652726476267271771

`eq[1, A066636(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072774

/-- `eq[1, A066636(n+1)]+1` -/
def P8652726476267271771.Spec : Prop :=
  ∀ n, (P8652726476267271771.a n : ℤ) = A072774 (n + 1)

theorem P8652726476267271771.correct : P8652726476267271771.Spec := by
  intro n
  simp only [A072774, Nat.add_sub_cancel]

end A072774

/-! ## A072774.P4000894319052705663

`eq[1, A309004(n+1)]+1`
-/

namespace A072774.P4000894319052705663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072774.P4000894319052705663

namespace A072774

/-- `eq[1, A309004(n+1)]+1` -/
def P4000894319052705663.Spec : Prop :=
  ∀ n, (P4000894319052705663.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P10269133147888278914

`lt[A062977(n+1), 1]+1`
-/

namespace A072774.P10269133147888278914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072774.P10269133147888278914

namespace A072774

/-- `lt[A062977(n+1), 1]+1` -/
def P10269133147888278914.Spec : Prop :=
  ∀ n, (P10269133147888278914.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P4308768936349647288

`lt[A304455(n+1), 3]+1`
-/

namespace A072774.P4308768936349647288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072774.P4308768936349647288

namespace A072774

/-- `lt[A304455(n+1), 3]+1` -/
def P4308768936349647288.Spec : Prop :=
  ∀ n, (P4308768936349647288.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P12809880333895047595

`lt[A323014(n+1), 4]+1`
-/

namespace A072774.P12809880333895047595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072774.P12809880333895047595

namespace A072774

/-- `lt[A323014(n+1), 4]+1` -/
def P12809880333895047595.Spec : Prop :=
  ∀ n, (P12809880333895047595.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P8256236295257868405

`∪[A062770(n+1), A001779(n)]`
-/

namespace A072774.P8256236295257868405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072774.P8256236295257868405

namespace A072774

/-- `∪[A062770(n+1), A001779(n)]` -/
def P8256236295257868405.Spec : Prop :=
  ∀ n, (P8256236295257868405.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P6795034969362725263

`∪[A062770(n+1), A002523(n)]`
-/

namespace A072774.P6795034969362725263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072774.P6795034969362725263

namespace A072774

/-- `∪[A062770(n+1), A002523(n)]` -/
def P6795034969362725263.Spec : Prop :=
  ∀ n, (P6795034969362725263.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P2317794239031528999

`∪[A062770(n+1), A016817(n)]`
-/

namespace A072774.P2317794239031528999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072774.P2317794239031528999

namespace A072774

/-- `∪[A062770(n+1), A016817(n)]` -/
def P2317794239031528999.Spec : Prop :=
  ∀ n, (P2317794239031528999.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P9033326013127354759

`∪[A062770(n+1), A017284(n)]`
-/

namespace A072774.P9033326013127354759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072774.P9033326013127354759

namespace A072774

/-- `∪[A062770(n+1), A017284(n)]` -/
def P9033326013127354759.Spec : Prop :=
  ∀ n, (P9033326013127354759.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P4010852145769841109

`lt[A001222(A329601(n+1)), 2]+1`
-/

namespace A072774.P4010852145769841109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329601 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072774.P4010852145769841109

namespace A072774

/-- `lt[A001222(A329601(n+1)), 2]+1` -/
def P4010852145769841109.Spec : Prop :=
  ∀ n, (P4010852145769841109.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P17022471362886559327

`eq[A051903(n+1), A051904(n+1)]+1`
-/

namespace A072774.P17022471362886559327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072774.P17022471362886559327

namespace A072774

/-- `eq[A051903(n+1), A051904(n+1)]+1` -/
def P17022471362886559327.Spec : Prop :=
  ∀ n, (P17022471362886559327.a n : ℤ) = A072774 (n + 1)

end A072774

/-! ## A072774.P11107657786537810250

`A062770(A028310(n))-A000007(n)`
-/

namespace A072774.P11107657786537810250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (A028310 n).toNat - A000007 n

end

end A072774.P11107657786537810250

namespace A072774

/-- `A062770(A028310(n))-A000007(n)` -/
def P11107657786537810250.Spec : Prop :=
  ∀ n, P11107657786537810250.a n = A072774 (n + 1)

end A072774

/-! ## A072774.P3670278117567131186

`A062770(A028310(n))/A054977(n)`
-/

namespace A072774.P3670278117567131186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062770 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A072774.P3670278117567131186

namespace A072774

/-- `A062770(A028310(n))/A054977(n)` -/
def P3670278117567131186.Spec : Prop :=
  ∀ n, P3670278117567131186.a n = (A072774 (n + 1) : ℚ)

end A072774

/-! ## A072774.P2902166938428622225

`A062770(A028310(n))-A012245(2*n+1)`
-/

namespace A072774.P2902166938428622225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (A028310 n).toNat - A012245 (2 * n + 1)

end

end A072774.P2902166938428622225

namespace A072774

/-- `A062770(A028310(n))-A012245(2*n+1)` -/
def P2902166938428622225.Spec : Prop :=
  ∀ n, P2902166938428622225.a n = A072774 (n + 1)

end A072774

/-! ## A072774.P2963517581054780305

`A062770(A028310(n))/gcd(2, A000040(n+1))`
-/

namespace A072774.P2963517581054780305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062770 (A028310 n).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A072774.P2963517581054780305

namespace A072774

/-- `A062770(A028310(n))/gcd(2, A000040(n+1))` -/
def P2963517581054780305.Spec : Prop :=
  ∀ n, P2963517581054780305.a n = (A072774 (n + 1) : ℚ)

end A072774

/-! ## A072774.P16633751741875220835

`record[A062759(n+1)]`
-/

namespace A072774.P16633751741875220835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072774.P16633751741875220835

namespace A072774

/-- `record[A062759(n+1)]` -/
def P16633751741875220835.Spec : Prop :=
  ∀ n, P16633751741875220835.a n = A072774 (n + 1)

end A072774

/-! ## A072774.P8773523318124017763

`record[A327526(n+1)]`
-/

namespace A072774.P8773523318124017763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072774.P8773523318124017763

namespace A072774

/-- `record[A327526(n+1)]` -/
def P8773523318124017763.Spec : Prop :=
  ∀ n, P8773523318124017763.a n = A072774 (n + 1)

end A072774

/-! ## A072774.P13807145881894117769

`record[A375931(n+1)]`
-/

namespace A072774.P13807145881894117769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072774.P13807145881894117769

namespace A072774

/-- `record[A375931(n+1)]` -/
def P13807145881894117769.Spec : Prop :=
  ∀ n, P13807145881894117769.a n = A072774 (n + 1)

end A072774

/-! ## A072774.P6154895000541315196

`filter[n+1, A384667(#)]`
-/

namespace A072774.P6154895000541315196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j) = 1) n)

end

end A072774.P6154895000541315196

namespace A072774

/-- `filter[n+1, A384667(#)]` -/
def P6154895000541315196.Spec : Prop :=
  ∀ n, (P6154895000541315196.a n : ℤ) = A072774 (n + 1)

end A072774

/-!
# A072775: Squarefree kernels of powers of squarefree numbers.

The programs for A072775, the canonical program `A072775.P1959638679732390770` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072775 has offset 1).

The definition of A072775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072775.P1959638679732390770

`∏{p}[A072774(n+1), #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072775

/-- `∏{p}[A072774(n+1), #]` -/
def P1959638679732390770.Spec : Prop :=
  ∀ n, (P1959638679732390770.a n : ℤ) = A072775 (n + 1)

theorem P1959638679732390770.correct : P1959638679732390770.Spec := by
  intro n
  simp only [A072775, Nat.add_sub_cancel]

end A072775

/-! ## A072775.P6143160382789824148

`A007947(A072774(n+1))`
-/

namespace A072775.P6143160382789824148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072774 (n + 1)).toNat

end

end A072775.P6143160382789824148

namespace A072775

/-- `A007947(A072774(n+1))` -/
def P6143160382789824148.Spec : Prop :=
  ∀ n, P6143160382789824148.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P3682560321090442223

`A007947(lt[A062977(n+1), 1]+1)`
-/

namespace A072775.P3682560321090442223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A072775.P3682560321090442223

namespace A072775

/-- `A007947(lt[A062977(n+1), 1]+1)` -/
def P3682560321090442223.Spec : Prop :=
  ∀ n, P3682560321090442223.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P16733467304940937859

`A052410(A072774(2*n+1-n))`
-/

namespace A072775.P16733467304940937859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A072774 (2 * n + 1 - n)).toNat

end

end A072775.P16733467304940937859

namespace A072775

/-- `A052410(A072774(2*n+1-n))` -/
def P16733467304940937859.Spec : Prop :=
  ∀ n, P16733467304940937859.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P9138336201820463408

`A007947(record[A062759(n+1)])`
-/

namespace A072775.P9138336201820463408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072775.P9138336201820463408

namespace A072775

/-- `A007947(record[A062759(n+1)])` -/
def P9138336201820463408.Spec : Prop :=
  ∀ n, P9138336201820463408.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P14575757802170903601

`filter[A052410(n+1), A008966(#)]`
-/

namespace A072775.P14575757802170903601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072775.P14575757802170903601

namespace A072775

/-- `filter[A052410(n+1), A008966(#)]` -/
def P14575757802170903601.Spec : Prop :=
  ∀ n, P14575757802170903601.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P7874630657464569338

`filter[A304776(n+1), A008966(#)]`
-/

namespace A072775.P7874630657464569338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072775.P7874630657464569338

namespace A072775

/-- `filter[A304776(n+1), A008966(#)]` -/
def P7874630657464569338.Spec : Prop :=
  ∀ n, P7874630657464569338.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P8006651469558829577

`filter[A052410(n+1), A384667(#)]`
-/

namespace A072775.P8006651469558829577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A072775.P8006651469558829577

namespace A072775

/-- `filter[A052410(n+1), A384667(#)]` -/
def P8006651469558829577.Spec : Prop :=
  ∀ n, P8006651469558829577.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P9983053531519374283

`filter[A304776(n+1), A384667(#)]`
-/

namespace A072775.P9983053531519374283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A072775.P9983053531519374283

namespace A072775

/-- `filter[A304776(n+1), A384667(#)]` -/
def P9983053531519374283.Spec : Prop :=
  ∀ n, P9983053531519374283.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P2430895274742325626

`A052410(record[A064549(n+1)/A052410(n+1)])`
-/

namespace A072775.P2430895274742325626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A052410 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A072775.P2430895274742325626

namespace A072775

/-- `A052410(record[A064549(n+1)/A052410(n+1)])` -/
def P2430895274742325626.Spec : Prop :=
  ∀ n, P2430895274742325626.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P13965537908496076885

`A052410(A072774(n+1)²)`
-/

namespace A072775.P13965537908496076885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A072774 (n + 1) ^ 2).toNat

end

end A072775.P13965537908496076885

namespace A072775

/-- `A052410(A072774(n+1)²)` -/
def P13965537908496076885.Spec : Prop :=
  ∀ n, P13965537908496076885.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P2477534603224374366

`A052410(A072774(n+1)*A072774(n+1))`
-/

namespace A072775.P2477534603224374366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A072774 (n + 1) * A072774 (n + 1)).toNat

end

end A072775.P2477534603224374366

namespace A072775

/-- `A052410(A072774(n+1)*A072774(n+1))` -/
def P2477534603224374366.Spec : Prop :=
  ∀ n, P2477534603224374366.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P6168909587208152083

`A052410(A052410(A072774(A304481(A304481(n+1)))))`
-/

namespace A072775.P6168909587208152083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A052410 (A072774 (A304481 (A304481 (n + 1)).toNat).toNat).toNat).toNat

end

end A072775.P6168909587208152083

namespace A072775

/-- `A052410(A052410(A072774(A304481(A304481(n+1)))))` -/
def P6168909587208152083.Spec : Prop :=
  ∀ n, P6168909587208152083.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P1405673854598979053

`A072774(n+1)²/A354090(A072774(n+1)²)`
-/

namespace A072775.P1405673854598979053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072774 (n + 1) ^ 2 : ℚ) / (A354090 (A072774 (n + 1) ^ 2).toNat : ℚ)

end

end A072775.P1405673854598979053

namespace A072775

/-- `A072774(n+1)²/A354090(A072774(n+1)²)` -/
def P1405673854598979053.Spec : Prop :=
  ∀ n, P1405673854598979053.a n = (A072775 (n + 1) : ℚ)

end A072775

/-! ## A072775.P2453794403128375035

`filter[A304768(n+1), A008966(#)]`
-/

namespace A072775.P2453794403128375035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072775.P2453794403128375035

namespace A072775

/-- `filter[A304768(n+1), A008966(#)]` -/
def P2453794403128375035.Spec : Prop :=
  ∀ n, P2453794403128375035.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P15070644246336034752

`A304776(A072774(A295417(A295417(n+1))))`
-/

namespace A072775.P15070644246336034752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (A072774 (A295417 (A295417 (n + 1)).toNat).toNat).toNat

end

end A072775.P15070644246336034752

namespace A072775

/-- `A304776(A072774(A295417(A295417(n+1))))` -/
def P15070644246336034752.Spec : Prop :=
  ∀ n, P15070644246336034752.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P2566974854965872136

`filter[A304768(n+1), A384667(#)]`
-/

namespace A072775.P2566974854965872136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A072775.P2566974854965872136

namespace A072775

/-- `filter[A304768(n+1), A384667(#)]` -/
def P2566974854965872136.Spec : Prop :=
  ∀ n, P2566974854965872136.a n = A072775 (n + 1)

end A072775

/-! ## A072775.P15718508514958798082

`A304776(A072774(n+1)²)`
-/

namespace A072775.P15718508514958798082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (A072774 (n + 1) ^ 2).toNat

end

end A072775.P15718508514958798082

namespace A072775

/-- `A304776(A072774(n+1)²)` -/
def P15718508514958798082.Spec : Prop :=
  ∀ n, P15718508514958798082.a n = A072775 (n + 1)

end A072775

/-!
# A072776: Exponents of powers of squarefree numbers.

The programs for A072776, the canonical program `A072776.P6165041741874190605` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072776 has offset 1).

The definition of A072776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072776.P6165041741874190605

`A051904(A072774(n+1)+A010051(2*(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072776

/-- `A051904(A072774(n+1)+A010051(2*(n+1)))` -/
def P6165041741874190605.Spec : Prop :=
  ∀ n, P6165041741874190605.a n = A072776 (n + 1)

theorem P6165041741874190605.correct : P6165041741874190605.Spec := by
  intro n
  simp only [A072776, Nat.add_sub_cancel]

end A072776

/-! ## A072776.P7403766700086641465

`A072411(A072774(n+1))`
-/

namespace A072776.P7403766700086641465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A072774 (n + 1)).toNat

end

end A072776.P7403766700086641465

namespace A072776

/-- `A072411(A072774(n+1))` -/
def P7403766700086641465.Spec : Prop :=
  ∀ n, P7403766700086641465.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P13862685655568085264

`A072411(record[A007947(n+1)^A051904(n+1)])`
-/

namespace A072776.P13862685655568085264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A072776.P13862685655568085264

namespace A072776

/-- `A072411(record[A007947(n+1)^A051904(n+1)])` -/
def P13862685655568085264.Spec : Prop :=
  ∀ n, P13862685655568085264.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P6581048043041939713

`A072411(record[A007947(n+1)^A052409(n+1)])`
-/

namespace A072776.P6581048043041939713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A052409 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A072776.P6581048043041939713

namespace A072776

/-- `A072411(record[A007947(n+1)^A052409(n+1)])` -/
def P6581048043041939713.Spec : Prop :=
  ∀ n, P6581048043041939713.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P12627762324805452329

`A051903(A072774(n+1)-A051904(n²+1)+1)`
-/

namespace A072776.P12627762324805452329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A072774 (n + 1) - A051904 (n ^ 2 + 1) + 1).toNat

end

end A072776.P12627762324805452329

namespace A072776

/-- `A051903(A072774(n+1)-A051904(n²+1)+1)` -/
def P12627762324805452329.Spec : Prop :=
  ∀ n, P12627762324805452329.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P4999742742194652018

`A051904(A072774(n+1)-A051904(n²+1)+1)`
-/

namespace A072776.P4999742742194652018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A072774 (n + 1) - A051904 (n ^ 2 + 1) + 1).toNat

end

end A072776.P4999742742194652018

namespace A072776

/-- `A051904(A072774(n+1)-A051904(n²+1)+1)` -/
def P4999742742194652018.Spec : Prop :=
  ∀ n, P4999742742194652018.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P11460578783238497794

`A052409(A072774(n+1)-A052409(n²+1)+1)`
-/

namespace A072776.P11460578783238497794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A072774 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A072776.P11460578783238497794

namespace A072776

/-- `A052409(A072774(n+1)-A052409(n²+1)+1)` -/
def P11460578783238497794.Spec : Prop :=
  ∀ n, P11460578783238497794.a n = A072776 (n + 1)

end A072776

/-! ## A072776.P147342537233516051

`A051903(A000040(n+1)*A072774(n+1))`
-/

namespace A072776.P147342537233516051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1) * A072774 (n + 1)).toNat

end

end A072776.P147342537233516051

namespace A072776

/-- `A051903(A000040(n+1)*A072774(n+1))` -/
def P147342537233516051.Spec : Prop :=
  ∀ n, P147342537233516051.a n = A072776 (n + 1)

end A072776

/-!
# A072777: Powers of squarefree numbers that are not squarefree.

The programs for A072777, there is no canonical definition to state claims against.
-/

/-! ## A072777.P7531501878227957206

`∪[A340674(n+1), A390540(n+1)]`
-/

namespace A072777.P7531501878227957206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P7531501878227957206

/-! ## A072777.P14683111366570333131

`∪[A384517(n+1), A384518(n+1)]`
-/

namespace A072777.P14683111366570333131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P14683111366570333131

/-! ## A072777.P6489452028212630142

`∪[A384517(n+1), A390540(n+1)]`
-/

namespace A072777.P6489452028212630142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P6489452028212630142

/-! ## A072777.P13615175074788057793

`∪[A000040(n+2)², A076292(n+2)]`
-/

namespace A072777.P13615175074788057793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P13615175074788057793

/-! ## A072777.P12223046690500287341

`∪[A067126(n+2)², A076292(n+2)]`
-/

namespace A072777.P12223046690500287341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P12223046690500287341

/-! ## A072777.P2184797253972368055

`A076292(n+2)`
-/

namespace A072777.P2184797253972368055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

end

end A072777.P2184797253972368055

/-! ## A072777.P6373383440350808369

`record[A076292(or(n, A000038(n)))]`
-/

namespace A072777.P6373383440350808369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072777.P6373383440350808369

/-! ## A072777.P5108503886635082748

`record[A076292(abs(n-A000038(n)))]`
-/

namespace A072777.P5108503886635082748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072777.P5108503886635082748

/-! ## A072777.P10021773198566685469

`∩[A001597(n+1), A375142(n+1)]`
-/

namespace A072777.P10021773198566685469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P10021773198566685469

/-! ## A072777.P16928034010390435146

`∩[A001694(n+1), A375142(n+1)]`
-/

namespace A072777.P16928034010390435146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P16928034010390435146

/-! ## A072777.P3481655291403143291

`∩[A375142(n+1), A396856(n+1)]`
-/

namespace A072777.P3481655291403143291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P3481655291403143291

/-! ## A072777.P10977976751906027359

`filter[A062770(n+1), A087049(#)]`
-/

namespace A072777.P10977976751906027359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A072777.P10977976751906027359

/-! ## A072777.P12196038742608496767

`A072774(lt[A072775(n+1), n]+1)`
-/

namespace A072777.P12196038742608496767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A072777.P12196038742608496767

/-! ## A072777.P8670584463943274838

`∩[A001597(n+1), A062770(n+1)]`
-/

namespace A072777.P8670584463943274838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P8670584463943274838

/-! ## A072777.P5436251847463307275

`∩[A001694(n+1), A062770(n+1)]`
-/

namespace A072777.P5436251847463307275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P5436251847463307275

/-! ## A072777.P6862239044628630719

`∩[A013929(n+1), A062770(n+1)]`
-/

namespace A072777.P6862239044628630719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P6862239044628630719

/-! ## A072777.P11925812801873032459

`∩[A013929(n+1), A072774(n+1)]`
-/

namespace A072777.P11925812801873032459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P11925812801873032459

/-! ## A072777.P13068759476260470797

`∩[A057109(n+1), A062770(n+1)]`
-/

namespace A072777.P13068759476260470797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P13068759476260470797

/-! ## A072777.P17481183958852637424

`∩[A057109(n+1), A072774(n+1)]`
-/

namespace A072777.P17481183958852637424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072777.P17481183958852637424

/-!
# A072778: Number of powers of squarefree numbers <= n.

The programs for A072778, the canonical program `A072778.P14682315086091063845` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072778 has offset 1).

The definition of A072778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072778.P14917149486572465382

`∑[char[∏{p}[n+1, #]^∏{e}[n+1, #]-1]]`
-/

namespace A072778.P14917149486572465382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f3 n), p) ^ (∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p) : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P14917149486572465382

namespace A072778

/-- `∑[char[∏{p}[n+1, #]^∏{e}[n+1, #]-1]]` -/
def P14917149486572465382.Spec : Prop :=
  ∀ n, (P14917149486572465382.a n : ℤ) = A072778 (n + 1)

end A072778

/-! ## A072778.P9494021841043624592

`∑[A384667(n+1)]`
-/

namespace A072778.P9494021841043624592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P9494021841043624592

namespace A072778

/-- `∑[A384667(n+1)]` -/
def P9494021841043624592.Spec : Prop :=
  ∀ n, P9494021841043624592.a n = A072778 (n + 1)

end A072778

/-! ## A072778.P9764316297342230544

`∑[floor(acot(A363127(n+1)))]`
-/

namespace A072778.P9764316297342230544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A363127 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P9764316297342230544

namespace A072778

/-- `∑[floor(acot(A363127(n+1)))]` -/
def P9764316297342230544.Spec : Prop :=
  ∀ n, P9764316297342230544.a n = A072778 (n + 1)

end A072778

/-! ## A072778.P17390525842446885195

`∑[floor(1/A062760(n+1))]`
-/

namespace A072778.P17390525842446885195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A062760 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P17390525842446885195

namespace A072778

/-- `∑[floor(1/A062760(n+1))]` -/
def P17390525842446885195.Spec : Prop :=
  ∀ n, P17390525842446885195.a n = A072778 (n + 1)

end A072778

/-! ## A072778.P3564353418432971103

`∑[abs(A008683(A052410(n+1)))]`
-/

namespace A072778.P3564353418432971103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A052410 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P3564353418432971103

namespace A072778

/-- `∑[abs(A008683(A052410(n+1)))]` -/
def P3564353418432971103.Spec : Prop :=
  ∀ n, P3564353418432971103.a n = A072778 (n + 1)

end A072778

/-! ## A072778.P14682315086091063845

`∑[C(A071625(n+1), A071625(n+1)²)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072778

/-- `∑[C(A071625(n+1), A071625(n+1)²)]` -/
def P14682315086091063845.Spec : Prop :=
  ∀ n, (P14682315086091063845.a n : ℤ) = A072778 (n + 1)

theorem P14682315086091063845.correct : P14682315086091063845.Spec := by
  intro n
  simp only [A072778, Nat.add_sub_cancel]

end A072778

/-! ## A072778.P7689992194954974774

`A384667((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A072778.P7689992194954974774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384667 ((n + 1) ^ 2) + a (n - 1)

end

end A072778.P7689992194954974774

namespace A072778

/-- `A384667((n+1)²)+a(n-1)` -/
def P7689992194954974774.Spec : Prop :=
  ∀ n, P7689992194954974774.a n = A072778 (n + 1)

end A072778

/-!
# A072779: a(n) = sigma_2(n) + phi(n) * sigma(n).

The programs for A072779, the canonical program `A072779.P8933871589259974098` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072779 has offset 1).

The definition of A072779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072779.P8933871589259974098

`A001157(n+1)+A000203(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072779

/-- `A001157(n+1)+A000203(n+1)*A000010(n+1)` -/
def P8933871589259974098.Spec : Prop :=
  ∀ n, P8933871589259974098.a n = A072779 (n + 1)

theorem P8933871589259974098.correct : P8933871589259974098.Spec := by
  intro n
  simp only [A072779, Nat.add_sub_cancel]

end A072779

/-! ## A072779.P18433108227055858820

`∑{d}[n+1, #*(A000010(n+1)+#)]`
-/

namespace A072779.P18433108227055858820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000010 (n + 1) + (d : ℤ))

end

end A072779.P18433108227055858820

namespace A072779

/-- `∑{d}[n+1, #*(A000010(n+1)+#)]` -/
def P18433108227055858820.Spec : Prop :=
  ∀ n, P18433108227055858820.a n = A072779 (n + 1)

end A072779

/-! ## A072779.P3774492573159623070

`A072780(n+1)+∑[A016825(n)]`
-/

namespace A072779.P3774492573159623070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072780 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072779.P3774492573159623070

namespace A072779

/-- `A072780(n+1)+∑[A016825(n)]` -/
def P3774492573159623070.Spec : Prop :=
  ∀ n, P3774492573159623070.a n = A072779 (n + 1)

end A072779

/-! ## A072779.P17692705425776379946

`A062354(n+1)+A001157(n+1)`
-/

namespace A072779.P17692705425776379946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) + A001157 (n + 1)

end

end A072779.P17692705425776379946

namespace A072779

/-- `A062354(n+1)+A001157(n+1)` -/
def P17692705425776379946.Spec : Prop :=
  ∀ n, P17692705425776379946.a n = A072779 (n + 1)

end A072779

/-! ## A072779.P1312803223036304626

`A001157(n+1)+n²-A324331(n+1)`
-/

namespace A072779.P1312803223036304626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + ((n ^ 2 : ℤ) - A324331 (n + 1))

end

end A072779.P1312803223036304626

namespace A072779

/-- `A001157(n+1)+n²-A324331(n+1)` -/
def P1312803223036304626.Spec : Prop :=
  ∀ n, P1312803223036304626.a n = A072779 (n + 1)

end A072779

/-! ## A072779.P17578625184110395598

`A093907(A005408(n))+A072780(n+1)`
-/

namespace A072779.P17578625184110395598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A005408 n).toNat + A072780 (n + 1)

end

end A072779.P17578625184110395598

namespace A072779

/-- `A093907(A005408(n))+A072780(n+1)` -/
def P17578625184110395598.Spec : Prop :=
  ∀ n, P17578625184110395598.a n = A072779 (n + 1)

end A072779

/-!
# A072780: a(n) = sigma_2(n) + phi(n) * sigma(n) - 2*n^2, which is A072779(n) - 2*n^2.

The programs for A072780, the canonical program `A072780.P12519312314475494721` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072780 has offset 1).

The definition of A072780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072779, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072780.P12519312314475494721

`A072779(n+1)-2*(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072780

/-- `A072779(n+1)-2*(n+1)²` -/
def P12519312314475494721.Spec : Prop :=
  ∀ n, P12519312314475494721.a n = A072780 (n + 1)

theorem P12519312314475494721.correct : P12519312314475494721.Spec := by
  intro n
  simp only [A072780, Nat.add_sub_cancel]

end A072780

/-! ## A072780.P12264612200501179575

`A072779(n+1)%(n+1)²`
-/

namespace A072780.P12264612200501179575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072779 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A072780.P12264612200501179575

namespace A072780

/-- `A072779(n+1)%(n+1)²` -/
def P12264612200501179575.Spec : Prop :=
  ∀ n, P12264612200501179575.a n = A072780 (n + 1)

end A072780

/-! ## A072780.P3452318476665337395

`A067558(n+1)-A069249(n+1)`
-/

namespace A072780.P3452318476665337395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - A069249 (n + 1)

end

end A072780.P3452318476665337395

namespace A072780

/-- `A067558(n+1)-A069249(n+1)` -/
def P3452318476665337395.Spec : Prop :=
  ∀ n, P3452318476665337395.a n = A072780 (n + 1)

end A072780

/-! ## A072780.P14925732068034116651

`A001157(n+1)-(A069249(n+1)+(n+1)²)`
-/

namespace A072780.P14925732068034116651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - (A069249 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A072780.P14925732068034116651

namespace A072780

/-- `A001157(n+1)-(A069249(n+1)+(n+1)²)` -/
def P14925732068034116651.Spec : Prop :=
  ∀ n, P14925732068034116651.a n = A072780 (n + 1)

end A072780

/-! ## A072780.P14885420197156527632

`(A062354(n+1)+A001157(n+1))%(n+1)²`
-/

namespace A072780.P14885420197156527632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062354 (n + 1) + A001157 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A072780.P14885420197156527632

namespace A072780

/-- `(A062354(n+1)+A001157(n+1))%(n+1)²` -/
def P14885420197156527632.Spec : Prop :=
  ∀ n, P14885420197156527632.a n = A072780 (n + 1)

end A072780

/-!
# A072781: X-projection of the tabular N X N -> N bijection A072735.

The programs for A072781, there is no canonical definition to state claims against.
-/

/-! ## A072781.P1766333991207694554

`A025581(A072734(n))`
-/

namespace A072781.P1766333991207694554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072734 n).toNat

end

end A072781.P1766333991207694554

/-! ## A072781.P14497757309288469398

`A072785(n)+A072738(n)`
-/

namespace A072781.P14497757309288469398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 n + A072738 n

end

end A072781.P14497757309288469398

/-! ## A072781.P13383015130788796190

`xor(A072738(n), A340507(n))`
-/

namespace A072781.P13383015130788796190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072738 n) (A340507 n)

end

end A072781.P13383015130788796190

/-! ## A072781.P1144633368552141748

`xor(1-char[record[A116942(n)]], A072738(n))`
-/

namespace A072781.P1144633368552141748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A072738 n)

end

end A072781.P1144633368552141748

/-! ## A072781.P6116964929926480482

`A072738(n)+A056594(floor(sqrt(8*n+1))+2)`
-/

namespace A072781.P6116964929926480482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 n + A056594 (Nat.sqrt (8 * n + 1) + 2)

end

end A072781.P6116964929926480482

/-! ## A072781.P3921879977252788948

`A072738(n)-A072785(comp[floor(n²/2)])`
-/

namespace A072781.P3921879977252788948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 n - A072785 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072781.P3921879977252788948

/-! ## A072781.P7250766774565587844

`xor(A023969(A133280(n)), A072738(n))`
-/

namespace A072781.P7250766774565587844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023969 (A133280 n).toNat) (A072738 n)

end

end A072781.P7250766774565587844

/-! ## A072781.P15875673218990422722

`A072738(n)+(3-A063826(2*n))%2`
-/

namespace A072781.P15875673218990422722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 n + Int.tmod (3 - A063826 (2 * n)) 2

end

end A072781.P15875673218990422722

/-! ## A072781.P4255155257061485451

`xor(A023969(A195437(n)), A072738(n))`
-/

namespace A072781.P4255155257061485451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023969 (A195437 n).toNat) (A072738 n)

end

end A072781.P4255155257061485451

/-! ## A072781.P12969154650878780744

`A072738(A072735(A072732(n)))`
-/

namespace A072781.P12969154650878780744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 (A072735 (A072732 n).toNat).toNat

end

end A072781.P12969154650878780744

/-! ## A072781.P10959443336483631238

`A072785(n)+A025581(A072732(n))`
-/

namespace A072781.P10959443336483631238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 n + A025581 (A072732 n).toNat

end

end A072781.P10959443336483631238

/-! ## A072781.P4370755804252024649

`A025581(A072732(n)-A072785(n))`
-/

namespace A072781.P4370755804252024649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072732 n - A072785 n).toNat

end

end A072781.P4370755804252024649

/-! ## A072781.P8874064682588373534

`A072738(A072733(A072734(A072732(A072733(n)))))`
-/

namespace A072781.P8874064682588373534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072738 (A072733 (A072734 (A072732 (A072733 n).toNat).toNat).toNat).toNat

end

end A072781.P8874064682588373534

/-! ## A072781.P17341052172965296961

`xor(A071028(A017089(n)), A072738(n))`
-/

namespace A072781.P17341052172965296961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071028 (A017089 n).toNat) (A072738 n)

end

end A072781.P17341052172965296961

/-! ## A072781.P15128935504864223904

`A072740(A072734(A072734(A072734(A072735(n)))))`
-/

namespace A072781.P15128935504864223904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 (A072734 (A072734 (A072734 (A072735 n).toNat).toNat).toNat).toNat

end

end A072781.P15128935504864223904

/-! ## A072781.P4749362436317762106

`xor(A000007(A052553(n)), A072738(n))`
-/

namespace A072781.P4749362436317762106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A052553 n).toNat) (A072738 n)

end

end A072781.P4749362436317762106

/-!
# A072782: Y-projection of the tabular N X N -> N bijection A072735.

The programs for A072782, there is no canonical definition to state claims against.
-/

/-! ## A072782.P6164628744427729266

`A002262(A072734(n))`
-/

namespace A072782.P6164628744427729266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072734 n).toNat

end

end A072782.P6164628744427729266

/-! ## A072782.P17306607563918072710

`A072786(n)+A072739(n)`
-/

namespace A072782.P17306607563918072710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 n + A072739 n

end

end A072782.P17306607563918072710

/-! ## A072782.P4337969264321634300

`A163805(floor(sqrt(8*(n+1))))+A072739(n)`
-/

namespace A072782.P4337969264321634300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.sqrt (8 * (n + 1))) + A072739 n

end

end A072782.P4337969264321634300

/-! ## A072782.P2852802135935605724

`A072739(n)+A056594(ceil(sqrt(8*n+9)))`
-/

namespace A072782.P2852802135935605724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 n + A056594 ⌈Real.sqrt (8 * n + 9 : ℝ)⌉.toNat

end

end A072782.P2852802135935605724

/-! ## A072782.P4718919539211234069

`A072785(A056943(n+1))+A072739(n)`
-/

namespace A072782.P4718919539211234069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (A056943 (n + 1)).toNat + A072739 n

end

end A072782.P4718919539211234069

/-! ## A072782.P15592477073008473949

`A072739(n)+Δ[A056023(n+1)]%A064645(n)`
-/

namespace A072782.P15592477073008473949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 n + Int.tmod (f1 (n + 1) - f1 n) (A064645 n)

end

end A072782.P15592477073008473949

/-! ## A072782.P17718049894116113291

`xor(A023969(2*(n+1)), A072739(n))`
-/

namespace A072782.P17718049894116113291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023969 (2 * (n + 1))) (A072739 n)

end

end A072782.P17718049894116113291

/-! ## A072782.P15759263306235292037

`A072739(A072735(A072732(n)))`
-/

namespace A072782.P15759263306235292037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A072735 (A072732 n).toNat).toNat

end

end A072782.P15759263306235292037

/-! ## A072782.P15183473657518214602

`A002262(A072786(n)+A072732(n))`
-/

namespace A072782.P15183473657518214602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072786 n + A072732 n).toNat

end

end A072782.P15183473657518214602

/-! ## A072782.P5486836350852425137

`A072737(A072732(A072734(A072732(A072733(n)))))`
-/

namespace A072782.P5486836350852425137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072737 (A072732 (A072734 (A072732 (A072733 n).toNat).toNat).toNat).toNat

end

end A072782.P5486836350852425137

/-! ## A072782.P15240395581251001927

`A072741(A072734(A072734(A072734(A072735(n)))))`
-/

namespace A072782.P15240395581251001927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 (A072734 (A072734 (A072734 (A072735 n).toNat).toNat).toNat).toNat

end

end A072782.P15240395581251001927

/-! ## A072782.P13442295664840142378

`xor(A000007(A030528(n+1)), A072739(n))`
-/

namespace A072782.P13442295664840142378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A030528 (n + 1)).toNat) (A072739 n)

end

end A072782.P13442295664840142378

/-!
# A072783: Differences between A072740 and A072736.

The programs for A072783, the canonical program `A072783.P12718214040334104581` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072783 has offset 0).

The definition of A072783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072783.P8109243514455012250

`A072740(n)-A072736(n)`
-/

namespace A072783.P8109243514455012250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n - A072736 n

end

end A072783.P8109243514455012250

namespace A072783

/-- `A072740(n)-A072736(n)` -/
def P8109243514455012250.Spec : Prop :=
  ∀ n, P8109243514455012250.a n = A072783 n

end A072783

/-! ## A072783.P12718214040334104581

`Δ[A059841(A051777(n+1))]%A010766(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072783

/-- `Δ[A059841(A051777(n+1))]%A010766(n+1)` -/
def P12718214040334104581.Spec : Prop :=
  ∀ n, P12718214040334104581.a n = A072783 n

theorem P12718214040334104581.correct : P12718214040334104581.Spec := by
  intro n
  simp only [A072783]

end A072783

/-! ## A072783.P14034460118725223659

`A072784(A056943(n+1))`
-/

namespace A072783.P14034460118725223659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 (A056943 (n + 1)).toNat

end

end A072783.P14034460118725223659

namespace A072783

/-- `A072784(A056943(n+1))` -/
def P14034460118725223659.Spec : Prop :=
  ∀ n, P14034460118725223659.a n = A072783 n

end A072783

/-! ## A072783.P11174803695189028516

`-A072785(A004273(A246694(n)))`
-/

namespace A072783.P11174803695189028516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A072785 (A004273 (A246694 n).toNat).toNat

end

end A072783.P11174803695189028516

namespace A072783

/-- `-A072785(A004273(A246694(n)))` -/
def P11174803695189028516.Spec : Prop :=
  ∀ n, P11174803695189028516.a n = A072783 n

end A072783

/-! ## A072783.P1870775995042040581

`A072784(n-A196199(Δ[n²]))`
-/

namespace A072783.P1870775995042040581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A072783.P1870775995042040581

namespace A072783

/-- `A072784(n-A196199(Δ[n²]))` -/
def P1870775995042040581.Spec : Prop :=
  ∀ n, P1870775995042040581.a n = A072783 n

end A072783

/-! ## A072783.P10152150018885856766

`A072786(A072735(n))`
-/

namespace A072783.P10152150018885856766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 (A072735 n).toNat

end

end A072783.P10152150018885856766

namespace A072783

/-- `A072786(A072735(n))` -/
def P10152150018885856766.Spec : Prop :=
  ∀ n, P10152150018885856766.a n = A072783 n

end A072783

/-! ## A072783.P7390283015038999133

`A002262(n)-A072739(A072735(n))`
-/

namespace A072783.P7390283015038999133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A072739 (A072735 n).toNat

end

end A072783.P7390283015038999133

namespace A072783

/-- `A002262(n)-A072739(A072735(n))` -/
def P7390283015038999133.Spec : Prop :=
  ∀ n, P7390283015038999133.a n = A072783 n

end A072783

/-! ## A072783.P18358866531662301776

`A025581(A072735(n))-A072736(n)`
-/

namespace A072783.P18358866531662301776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072735 n).toNat - A072736 n

end

end A072783.P18358866531662301776

namespace A072783

/-- `A025581(A072735(n))-A072736(n)` -/
def P18358866531662301776.Spec : Prop :=
  ∀ n, P18358866531662301776.a n = A072783 n

end A072783

/-! ## A072783.P11008363832189707522

`A002262(n)-A072782(A072733(n))`
-/

namespace A072783.P11008363832189707522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A072782 (A072733 n).toNat

end

end A072783.P11008363832189707522

namespace A072783

/-- `A002262(n)-A072782(A072733(n))` -/
def P11008363832189707522.Spec : Prop :=
  ∀ n, P11008363832189707522.a n = A072783 n

end A072783

/-! ## A072783.P3554253176334786642

`A072740(n)-A025581(A072733(n))`
-/

namespace A072783.P3554253176334786642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072740 n - A025581 (A072733 n).toNat

end

end A072783.P3554253176334786642

namespace A072783

/-- `A072740(n)-A025581(A072733(n))` -/
def P3554253176334786642.Spec : Prop :=
  ∀ n, P3554253176334786642.a n = A072783 n

end A072783

/-! ## A072783.P9224537140591980925

`A072786(A072733(A072734(A072733(n))))`
-/

namespace A072783.P9224537140591980925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 (A072733 (A072734 (A072733 n).toNat).toNat).toNat

end

end A072783.P9224537140591980925

namespace A072783

/-- `A072786(A072733(A072734(A072733(n))))` -/
def P9224537140591980925.Spec : Prop :=
  ∀ n, P9224537140591980925.a n = A072783 n

end A072783

/-! ## A072783.P1431668711472259654

`A025581(A072735(n))-A025581(A072733(n))`
-/

namespace A072783.P1431668711472259654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A072735 n).toNat - A025581 (A072733 n).toNat

end

end A072783.P1431668711472259654

namespace A072783

/-- `A025581(A072735(n))-A025581(A072733(n))` -/
def P1431668711472259654.Spec : Prop :=
  ∀ n, P1431668711472259654.a n = A072783 n

end A072783

/-! ## A072783.P4037851842211766246

`A196199(A072736(n)²)+A072740(n)`
-/

namespace A072783.P4037851842211766246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A072736 n ^ 2).toNat + A072740 n

end

end A072783.P4037851842211766246

namespace A072783

/-- `A196199(A072736(n)²)+A072740(n)` -/
def P4037851842211766246.Spec : Prop :=
  ∀ n, P4037851842211766246.a n = A072783 n

end A072783

/-!
# A072784: Differences between A072741 and A072737.

The programs for A072784, the canonical program `A072784.P13335699993100895541` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072784 has offset 0).

The definition of A072784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072784.P7009031261989445208

`A072741(n)-A072737(n)`
-/

namespace A072784.P7009031261989445208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A072737 n

end

end A072784.P7009031261989445208

namespace A072784

/-- `A072741(n)-A072737(n)` -/
def P7009031261989445208.Spec : Prop :=
  ∀ n, P7009031261989445208.a n = A072784 n

end A072784

/-! ## A072784.P786480438364583251

`A072741(n)+-A072737(n)%A000124(n)`
-/

namespace A072784.P786480438364583251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n + Int.tmod (-A072737 n) (A000124 n)

end

end A072784.P786480438364583251

namespace A072784

/-- `A072741(n)+-A072737(n)%A000124(n)` -/
def P786480438364583251.Spec : Prop :=
  ∀ n, P786480438364583251.a n = A072784 n

end A072784

/-! ## A072784.P18161961011548923423

`A072783(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A072784.P18161961011548923423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A072784.P18161961011548923423

namespace A072784

/-- `A072783(2*(C(comp[∑[n]]-n, 2)-n)-1+n)` -/
def P18161961011548923423.Spec : Prop :=
  ∀ n, P18161961011548923423.a n = A072784 n

end A072784

/-! ## A072784.P13335699993100895541

`A072783(A099375(n)+n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072784

/-- `A072783(A099375(n)+n)` -/
def P13335699993100895541.Spec : Prop :=
  ∀ n, P13335699993100895541.a n = A072784 n

theorem P13335699993100895541.correct : P13335699993100895541.Spec := by
  intro n
  simp only [A072784]

end A072784

/-! ## A072784.P3442367184945933351

`A072783(2*A025581(n)+n+1)`
-/

namespace A072784.P3442367184945933351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (2 * A025581 n + (n + 1 : ℤ)).toNat

end

end A072784.P3442367184945933351

namespace A072784

/-- `A072783(2*A025581(n)+n+1)` -/
def P3442367184945933351.Spec : Prop :=
  ∀ n, P3442367184945933351.a n = A072784 n

end A072784

/-! ## A072784.P17781554913695485921

`A072783(A038722(n+1)+A003056(n))`
-/

namespace A072784.P17781554913695485921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A038722 (n + 1) + A003056 n).toNat

end

end A072784.P17781554913695485921

namespace A072784

/-- `A072783(A038722(n+1)+A003056(n))` -/
def P17781554913695485921.Spec : Prop :=
  ∀ n, P17781554913695485921.a n = A072784 n

end A072784

/-! ## A072784.P8139228917099774290

`A072783(A061579(n)+A002024(n+1))`
-/

namespace A072784.P8139228917099774290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A061579 n + A002024 (n + 1)).toNat

end

end A072784.P8139228917099774290

namespace A072784

/-- `A072783(A061579(n)+A002024(n+1))` -/
def P8139228917099774290.Spec : Prop :=
  ∀ n, P8139228917099774290.a n = A072784 n

end A072784

/-! ## A072784.P16196843268586727564

`A072783(n-A196199(Δ[n²]))`
-/

namespace A072784.P16196843268586727564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 ((n : ℤ) - A196199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A072784.P16196843268586727564

namespace A072784

/-- `A072783(n-A196199(Δ[n²]))` -/
def P16196843268586727564.Spec : Prop :=
  ∀ n, P16196843268586727564.a n = A072784 n

end A072784

/-! ## A072784.P7282830443407762181

`A072783(n-A196199(2*n+1))^5`
-/

namespace A072784.P7282830443407762181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 ((n : ℤ) - A196199 (2 * n + 1)).toNat ^ 5

end

end A072784.P7282830443407762181

namespace A072784

/-- `A072783(n-A196199(2*n+1))^5` -/
def P7282830443407762181.Spec : Prop :=
  ∀ n, P7282830443407762181.a n = A072784 n

end A072784

/-! ## A072784.P16141757241793124867

`A072783(A023443(n)+1-A196199(2*n+1))%5`
-/

namespace A072784.P16141757241793124867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072783 (A023443 n + 1 - A196199 (2 * n + 1)).toNat) 5

end

end A072784.P16141757241793124867

namespace A072784

/-- `A072783(A023443(n)+1-A196199(2*n+1))%5` -/
def P16141757241793124867.Spec : Prop :=
  ∀ n, P16141757241793124867.a n = A072784 n

end A072784

/-! ## A072784.P10159084728494738024

`A072783(n+2-A196199(2*(n+1)+1))%5`
-/

namespace A072784.P10159084728494738024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072783 ((n + 2 : ℤ) - A196199 (2 * (n + 1) + 1)).toNat) 5

end

end A072784.P10159084728494738024

namespace A072784

/-- `A072783(n+2-A196199(2*(n+1)+1))%5` -/
def P10159084728494738024.Spec : Prop :=
  ∀ n, P10159084728494738024.a n = A072784 n

end A072784

/-! ## A072784.P14307919913937362180

`A072785(A072735(n))`
-/

namespace A072784.P14307919913937362180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (A072735 n).toNat

end

end A072784.P14307919913937362180

namespace A072784

/-- `A072785(A072735(n))` -/
def P14307919913937362180.Spec : Prop :=
  ∀ n, P14307919913937362180.a n = A072784 n

end A072784

/-! ## A072784.P10285071361252042831

`A002262(A072735(n))-A072737(n)`
-/

namespace A072784.P10285071361252042831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072735 n).toNat - A072737 n

end

end A072784.P10285071361252042831

namespace A072784

/-- `A002262(A072735(n))-A072737(n)` -/
def P10285071361252042831.Spec : Prop :=
  ∀ n, P10285071361252042831.a n = A072784 n

end A072784

/-! ## A072784.P11425888406188563330

`A025581(n)-A072738(A072735(n))`
-/

namespace A072784.P11425888406188563330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A072738 (A072735 n).toNat

end

end A072784.P11425888406188563330

namespace A072784

/-- `A025581(n)-A072738(A072735(n))` -/
def P11425888406188563330.Spec : Prop :=
  ∀ n, P11425888406188563330.a n = A072784 n

end A072784

/-! ## A072784.P11438819144122418803

`A072741(n)-A002262(A072733(n))`
-/

namespace A072784.P11438819144122418803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072741 n - A002262 (A072733 n).toNat

end

end A072784.P11438819144122418803

namespace A072784

/-- `A072741(n)-A002262(A072733(n))` -/
def P11438819144122418803.Spec : Prop :=
  ∀ n, P11438819144122418803.a n = A072784 n

end A072784

/-! ## A072784.P6616892533967467964

`A025581(n)-A072781(A072733(n))`
-/

namespace A072784.P6616892533967467964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A072781 (A072733 n).toNat

end

end A072784.P6616892533967467964

namespace A072784

/-- `A025581(n)-A072781(A072733(n))` -/
def P6616892533967467964.Spec : Prop :=
  ∀ n, P6616892533967467964.a n = A072784 n

end A072784

/-! ## A072784.P5088539223343283550

`A072785(A072733(A072734(A072733(n))))`
-/

namespace A072784.P5088539223343283550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (A072733 (A072734 (A072733 n).toNat).toNat).toNat

end

end A072784.P5088539223343283550

namespace A072784

/-- `A072785(A072733(A072734(A072733(n))))` -/
def P5088539223343283550.Spec : Prop :=
  ∀ n, P5088539223343283550.a n = A072784 n

end A072784

/-! ## A072784.P12360480046816115062

`A196199(A072737(n)²)+A072741(n)`
-/

namespace A072784.P12360480046816115062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A072737 n ^ 2).toNat + A072741 n

end

end A072784.P12360480046816115062

namespace A072784

/-- `A196199(A072737(n)²)+A072741(n)` -/
def P12360480046816115062.Spec : Prop :=
  ∀ n, P12360480046816115062.a n = A072784 n

end A072784

/-!
# A072785: Differences between A072781 and A072738.

The programs for A072785, the canonical program `A072785.P15503271718453110488` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072785 has offset 0).

The definition of A072785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072785.P984616955167417427

`(-round(n/∑[char[∑[n]]]²))^(comp[∑[n]]+n)`
-/

namespace A072785.P984616955167417427
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))) ^ (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n)

end

end A072785.P984616955167417427

namespace A072785

/-- `(-round(n/∑[char[∑[n]]]²))^(comp[∑[n]]+n)` -/
def P984616955167417427.Spec : Prop :=
  ∀ n, P984616955167417427.a n = A072785 n

end A072785

/-! ## A072785.P15503271718453110488

`-A056594(floor(sqrt(8*n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072785

/-- `-A056594(floor(sqrt(8*n+1)))` -/
def P15503271718453110488.Spec : Prop :=
  ∀ n, P15503271718453110488.a n = A072785 n

theorem P15503271718453110488.correct : P15503271718453110488.Spec := by
  intro n
  simp only [A072785]

end A072785

/-! ## A072785.P16785841437232163676

`A056594(floor(sqrt(8*n+1))+2)`
-/

namespace A072785.P16785841437232163676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Nat.sqrt (8 * n + 1) + 2)

end

end A072785.P16785841437232163676

namespace A072785

/-- `A056594(floor(sqrt(8*n+1))+2)` -/
def P16785841437232163676.Spec : Prop :=
  ∀ n, P16785841437232163676.a n = A072785 n

end A072785

/-! ## A072785.P17906777668290172331

`A062157(round(n/∑[char[∑[n]]]²)*∑[char[∑[n]]])`
-/

namespace A072785.P17906777668290172331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ)) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A072785.P17906777668290172331

namespace A072785

/-- `A062157(round(n/∑[char[∑[n]]]²)*∑[char[∑[n]]])` -/
def P17906777668290172331.Spec : Prop :=
  ∀ n, P17906777668290172331.a n = A072785 n

end A072785

/-! ## A072785.P16479604576561704373

`A101455(A261491(n+1))`
-/

namespace A072785.P16479604576561704373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A261491 (n + 1)).toNat

end

end A072785.P16479604576561704373

namespace A072785

/-- `A101455(A261491(n+1))` -/
def P16479604576561704373.Spec : Prop :=
  ∀ n, P16479604576561704373.a n = A072785 n

end A072785

/-! ## A072785.P18053904717300192994

`A072781(n)-A072738(n)`
-/

namespace A072785.P18053904717300192994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n - A072738 n

end

end A072785.P18053904717300192994

namespace A072785

/-- `A072781(n)-A072738(n)` -/
def P18053904717300192994.Spec : Prop :=
  ∀ n, P18053904717300192994.a n = A072785 n

end A072785

/-! ## A072785.P8231337260380355192

`A163805(ceil(sqrt(A017089(n))))`
-/

namespace A072785.P8231337260380355192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 ⌈Real.sqrt (A017089 n : ℝ)⌉.toNat

end

end A072785.P8231337260380355192

namespace A072785

/-- `A163805(ceil(sqrt(A017089(n))))` -/
def P8231337260380355192.Spec : Prop :=
  ∀ n, P8231337260380355192.a n = A072785 n

end A072785

/-! ## A072785.P7758636121200193793

`A163805(ceil(sqrt(A017101(n))))`
-/

namespace A072785.P7758636121200193793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 ⌈Real.sqrt (A017101 n : ℝ)⌉.toNat

end

end A072785.P7758636121200193793

namespace A072785

/-- `A163805(ceil(sqrt(A017101(n))))` -/
def P7758636121200193793.Spec : Prop :=
  ∀ n, P7758636121200193793.a n = A072785 n

end A072785

/-! ## A072785.P2363047677115823875

`A163805(ceil(sqrt(A017113(n))))`
-/

namespace A072785.P2363047677115823875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 ⌈Real.sqrt (A017113 n : ℝ)⌉.toNat

end

end A072785.P2363047677115823875

namespace A072785

/-- `A163805(ceil(sqrt(A017113(n))))` -/
def P2363047677115823875.Spec : Prop :=
  ∀ n, P2363047677115823875.a n = A072785 n

end A072785

/-! ## A072785.P13825985133773074602

`round(A002262(n)/∑[A010816(n)])`
-/

namespace A072785.P13825985133773074602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002262 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A072785.P13825985133773074602

namespace A072785

/-- `round(A002262(n)/∑[A010816(n)])` -/
def P13825985133773074602.Spec : Prop :=
  ∀ n, P13825985133773074602.a n = A072785 n

end A072785

/-! ## A072785.P8231921835599792708

`xor(A072738(n), A340507(n))-A072738(n)`
-/

namespace A072785.P8231921835599792708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072738 n) (A340507 n) - A072738 n

end

end A072785.P8231921835599792708

namespace A072785

/-- `xor(A072738(n), A340507(n))-A072738(n)` -/
def P8231921835599792708.Spec : Prop :=
  ∀ n, P8231921835599792708.a n = A072785 n

end A072785

/-! ## A072785.P158932859528032034

`A072781(n)-xor(A072781(n), A340507(n))`
-/

namespace A072785.P158932859528032034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072781 n - Int.xor (A072781 n) (A340507 n)

end

end A072785.P158932859528032034

namespace A072785

/-- `A072781(n)-xor(A072781(n), A340507(n))` -/
def P158932859528032034.Spec : Prop :=
  ∀ n, P158932859528032034.a n = A072785 n

end A072785

/-! ## A072785.P633233093033173022

`(3-A063826(2*n))%2`
-/

namespace A072785.P633233093033173022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - A063826 (2 * n)) 2

end

end A072785.P633233093033173022

namespace A072785

/-- `(3-A063826(2*n))%2` -/
def P633233093033173022.Spec : Prop :=
  ∀ n, P633233093033173022.a n = A072785 n

end A072785

/-! ## A072785.P12759305085611842605

`A046978(2*A055086(2*n))`
-/

namespace A072785.P12759305085611842605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (2 * A055086 (2 * n)).toNat

end

end A072785.P12759305085611842605

namespace A072785

/-- `A046978(2*A055086(2*n))` -/
def P12759305085611842605.Spec : Prop :=
  ∀ n, P12759305085611842605.a n = A072785 n

end A072785

/-! ## A072785.P12728016805637559494

`A274923(2*(n+1))+A268038(2*n+1)`
-/

namespace A072785.P12728016805637559494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (2 * (n + 1)) + A268038 (2 * n + 1)

end

end A072785.P12728016805637559494

namespace A072785

/-- `A274923(2*(n+1))+A268038(2*n+1)` -/
def P12728016805637559494.Spec : Prop :=
  ∀ n, P12728016805637559494.a n = A072785 n

end A072785

/-! ## A072785.P7005425685781868122

`A268038(2*n+1)-A268038(2*(n+1))`
-/

namespace A072785.P7005425685781868122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (2 * n + 1) - A268038 (2 * (n + 1))

end

end A072785.P7005425685781868122

namespace A072785

/-- `A268038(2*n+1)-A268038(2*(n+1))` -/
def P7005425685781868122.Spec : Prop :=
  ∀ n, P7005425685781868122.a n = A072785 n

end A072785

/-! ## A072785.P17490608831174679056

`A274923(2*(n+1))-A274923(2*n+1)`
-/

namespace A072785.P17490608831174679056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (2 * (n + 1)) - A274923 (2 * n + 1)

end

end A072785.P17490608831174679056

namespace A072785

/-- `A274923(2*(n+1))-A274923(2*n+1)` -/
def P17490608831174679056.Spec : Prop :=
  ∀ n, P17490608831174679056.a n = A072785 n

end A072785

/-! ## A072785.P3573172627403908460

`floor(Δ[A274923(2*n+1)/2])`
-/

namespace A072785.P3573172627403908460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274923 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A072785.P3573172627403908460

namespace A072785

/-- `floor(Δ[A274923(2*n+1)/2])` -/
def P3573172627403908460.Spec : Prop :=
  ∀ n, P3573172627403908460.a n = A072785 n

end A072785

/-! ## A072785.P18115928563696803824

`A072784(A072784(n)²*A072734(n))`
-/

namespace A072785.P18115928563696803824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 (A072784 n ^ 2 * A072734 n).toNat

end

end A072785.P18115928563696803824

namespace A072785

/-- `A072784(A072784(n)²*A072734(n))` -/
def P18115928563696803824.Spec : Prop :=
  ∀ n, P18115928563696803824.a n = A072785 n

end A072785

/-! ## A072785.P5671940643713307847

`A072784(A072734(n))`
-/

namespace A072785.P5671940643713307847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 (A072734 n).toNat

end

end A072785.P5671940643713307847

namespace A072785

/-- `A072784(A072734(n))` -/
def P5671940643713307847.Spec : Prop :=
  ∀ n, P5671940643713307847.a n = A072785 n

end A072785

/-!
# A072786: Differences between A072782 and A072739.

The programs for A072786, the canonical program `A072786.P12697164587006630375` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072786 has offset 0).

The definition of A072786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072786.P12697164587006630375

`abs(1-and(3, floor(sqrt(8*(n+1)))))-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072786

/-- `abs(1-and(3, floor(sqrt(8*(n+1)))))-1` -/
def P12697164587006630375.Spec : Prop :=
  ∀ n, P12697164587006630375.a n = A072786 n

theorem P12697164587006630375.correct : P12697164587006630375.Spec := by
  intro n
  simp only [A072786]

end A072786

/-! ## A072786.P5978559067632147886

`cos((3-floor(sqrt(8*(n+1))))*π/2)`
-/

namespace A072786.P5978559067632147886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((3 - (Nat.sqrt (8 * (n + 1)) : ℤ) : ℝ) * (Real.pi / 2))

end

end A072786.P5978559067632147886

namespace A072786

/-- `cos((3-floor(sqrt(8*(n+1))))*π/2)` -/
def P5978559067632147886.Spec : Prop :=
  ∀ n, P5978559067632147886.a n = (A072786 n : ℝ)

end A072786

/-! ## A072786.P13705534446412558652

`A163805(floor(sqrt(8*(n+1))))`
-/

namespace A072786.P13705534446412558652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.sqrt (8 * (n + 1)))

end

end A072786.P13705534446412558652

namespace A072786

/-- `A163805(floor(sqrt(8*(n+1))))` -/
def P13705534446412558652.Spec : Prop :=
  ∀ n, P13705534446412558652.a n = A072786 n

end A072786

/-! ## A072786.P15690917338506014957

`A056594(ceil(sqrt(8*n+9)))`
-/

namespace A072786.P15690917338506014957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ⌈Real.sqrt (8 * n + 9 : ℝ)⌉.toNat

end

end A072786.P15690917338506014957

namespace A072786

/-- `A056594(ceil(sqrt(8*n+9)))` -/
def P15690917338506014957.Spec : Prop :=
  ∀ n, P15690917338506014957.a n = A072786 n

end A072786

/-! ## A072786.P9862371453450984103

`A072782(n)-A072739(n)`
-/

namespace A072786.P9862371453450984103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A072739 n

end

end A072786.P9862371453450984103

namespace A072786

/-- `A072782(n)-A072739(n)` -/
def P9862371453450984103.Spec : Prop :=
  ∀ n, P9862371453450984103.a n = A072786 n

end A072786

/-! ## A072786.P7316279082303138048

`Δ[A316668(n+1)]%A026835(n+1)`
-/

namespace A072786.P7316279082303138048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A026835 (n + 1))

end

end A072786.P7316279082303138048

namespace A072786

/-- `Δ[A316668(n+1)]%A026835(n+1)` -/
def P7316279082303138048.Spec : Prop :=
  ∀ n, P7316279082303138048.a n = A072786 n

end A072786

/-! ## A072786.P4131789590301147398

`A072785(A056943(n+1))`
-/

namespace A072786.P4131789590301147398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 (A056943 (n + 1)).toNat

end

end A072786.P4131789590301147398

namespace A072786

/-- `A072785(A056943(n+1))` -/
def P4131789590301147398.Spec : Prop :=
  ∀ n, P4131789590301147398.a n = A072786 n

end A072786

/-! ## A072786.P1811950108957737811

`Δ[A056023(n+1)]%A064645(n)`
-/

namespace A072786.P1811950108957737811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A064645 n)

end

end A072786.P1811950108957737811

namespace A072786

/-- `Δ[A056023(n+1)]%A064645(n)` -/
def P1811950108957737811.Spec : Prop :=
  ∀ n, P1811950108957737811.a n = A072786 n

end A072786

/-! ## A072786.P14658016115654374641

`A072785(n-(A002262(n+1)+A002262(n)))`
-/

namespace A072786.P14658016115654374641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 ((n : ℤ) - (A002262 (n + 1) + A002262 n)).toNat

end

end A072786.P14658016115654374641

namespace A072786

/-- `A072785(n-(A002262(n+1)+A002262(n)))` -/
def P14658016115654374641.Spec : Prop :=
  ∀ n, P14658016115654374641.a n = A072786 n

end A072786

/-! ## A072786.P14772158760155837270

`A267598(2*n)-∑[char[∑[n]]]%2`
-/

namespace A072786.P14772158760155837270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (2 * n) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A072786.P14772158760155837270

namespace A072786

/-- `A267598(2*n)-∑[char[∑[n]]]%2` -/
def P14772158760155837270.Spec : Prop :=
  ∀ n, P14772158760155837270.a n = A072786 n

end A072786

/-! ## A072786.P9296051569653199955

`A266300(2*n+1)-A266300(A183570(2*n))`
-/

namespace A072786.P9296051569653199955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (2 * n + 1) - A266300 (A183570 (2 * n)).toNat

end

end A072786.P9296051569653199955

namespace A072786

/-- `A266300(2*n+1)-A266300(A183570(2*n))` -/
def P9296051569653199955.Spec : Prop :=
  ∀ n, P9296051569653199955.a n = A072786 n

end A072786

/-! ## A072786.P17375377754990408156

`A266434(2*(n+1))-A266434(A157502(n+1))`
-/

namespace A072786.P17375377754990408156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (2 * (n + 1)) - A266434 (A157502 (n + 1)).toNat

end

end A072786.P17375377754990408156

namespace A072786

/-- `A266434(2*(n+1))-A266434(A157502(n+1))` -/
def P17375377754990408156.Spec : Prop :=
  ∀ n, P17375377754990408156.a n = A072786 n

end A072786

/-! ## A072786.P16324044414609492877

`A072783(A072734(n))`
-/

namespace A072786.P16324044414609492877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072783 (A072734 n).toNat

end

end A072786.P16324044414609492877

namespace A072786

/-- `A072783(A072734(n))` -/
def P16324044414609492877.Spec : Prop :=
  ∀ n, P16324044414609492877.a n = A072786 n

end A072786

/-! ## A072786.P2884910308585899465

`A002262(A072734(n))-A072739(n)`
-/

namespace A072786.P2884910308585899465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A072734 n).toNat - A072739 n

end

end A072786.P2884910308585899465

namespace A072786

/-- `A002262(A072734(n))-A072739(n)` -/
def P2884910308585899465.Spec : Prop :=
  ∀ n, P2884910308585899465.a n = A072786 n

end A072786

/-! ## A072786.P18342803524577203711

`A072782(n)-A002262(A072732(n))`
-/

namespace A072786.P18342803524577203711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072782 n - A002262 (A072732 n).toNat

end

end A072786.P18342803524577203711

namespace A072786

/-- `A072782(n)-A002262(A072732(n))` -/
def P18342803524577203711.Spec : Prop :=
  ∀ n, P18342803524577203711.a n = A072786 n

end A072786

/-! ## A072786.P15381172755717910522

`A025581(n)-A072740(A072732(n))`
-/

namespace A072786.P15381172755717910522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A072740 (A072732 n).toNat

end

end A072786.P15381172755717910522

namespace A072786

/-- `A025581(n)-A072740(A072732(n))` -/
def P15381172755717910522.Spec : Prop :=
  ∀ n, P15381172755717910522.a n = A072786 n

end A072786

/-! ## A072786.P3227200595368903504

`A025581(n)-A072736(A072734(n))`
-/

namespace A072786.P3227200595368903504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A072736 (A072734 n).toNat

end

end A072786.P3227200595368903504

namespace A072786

/-- `A025581(n)-A072736(A072734(n))` -/
def P3227200595368903504.Spec : Prop :=
  ∀ n, P3227200595368903504.a n = A072786 n

end A072786

/-! ## A072786.P18044690542328154956

`A072736(A072732(n))-A072736(A072734(n))`
-/

namespace A072786.P18044690542328154956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072736 (A072732 n).toNat - A072736 (A072734 n).toNat

end

end A072786.P18044690542328154956

namespace A072786

/-- `A072736(A072732(n))-A072736(A072734(n))` -/
def P18044690542328154956.Spec : Prop :=
  ∀ n, P18044690542328154956.a n = A072786 n

end A072786

/-!
# A072789: The size of the parenthesizations obtained with the global ranking/unranking scheme presented in A072787-A072788.

The programs for A072789, there is no canonical definition to state claims against.
-/

/-! ## A072789.P13734919858676799921

`A072643(A072788(n+1))`
-/

namespace A072789.P13734919858676799921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A072788 (n + 1)).toNat

end

end A072789.P13734919858676799921

/-! ## A072789.P5374674398665155549

`A064415(lt[A288207(n+1), A325830(n)])`
-/

namespace A072789.P5374674398665155549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072789.P5374674398665155549

/-! ## A072789.P6306365033708705273

`A001221(A005117(3*n+1)*A103854(n+1))`
-/

namespace A072789.P6306365033708705273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005117 (3 * n + 1) * A103854 (n + 1)).toNat

end

end A072789.P6306365033708705273

/-! ## A072789.P10235631360595147009

`A083399(A083399(n+1)*A193147(n))`
-/

namespace A072789.P10235631360595147009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A083399 (n + 1) * A193147 n).toNat

end

end A072789.P10235631360595147009

/-! ## A072789.P17752653697394007102

`A083399(lcm(A083399(n+1), A193147(n)))`
-/

namespace A072789.P17752653697394007102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Int.lcm (A083399 (n + 1)) (A193147 n))

end

end A072789.P17752653697394007102

/-!
# A072790: Maximum position in A072789 where the value n occurs.

The programs for A072790, there is no canonical definition to state claims against.
-/

/-! ## A072790.P6158984558046649137

`∑[record[A253580(A000588(n))]]`
-/

namespace A072790.P6158984558046649137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A000588 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072790.P6158984558046649137

/-! ## A072790.P11458453770917695853

`∑[record[A253580(A217274(n))]]`
-/

namespace A072790.P11458453770917695853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A217274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072790.P11458453770917695853

/-!
# A072791: Binary widths of A072790.

The programs for A072791, there is no canonical definition to state claims against.
-/

/-! ## A072791.P664789661303984147

`ceil(log2(A072790(n)+1))`
-/

namespace A072791.P664789661303984147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A072790 n + 1 : ℝ)⌉

end

end A072791.P664789661303984147

/-! ## A072791.P3604148758470397269

`A160044(∑[∏[A086376(n)]])`
-/

namespace A072791.P3604148758470397269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072791.P3604148758470397269

/-! ## A072791.P3409120982854748075

`A160044(∑[∏[A160089(n)]])`
-/

namespace A072791.P3409120982854748075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072791.P3409120982854748075

/-! ## A072791.P6465509554712874534

`A307011(n+4)+A003056(A148149(n))`
-/

namespace A072791.P6465509554712874534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (n + 4) + A003056 (A148149 n).toNat

end

end A072791.P6465509554712874534

/-! ## A072791.P12061479049878589101

`ceil((sqrt(A181959(n)/720)-1)/2)+n`
-/

namespace A072791.P12061479049878589101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt ((A181959 n : ℚ) / 720 : ℝ) - 1) / 2⌉ + (n : ℤ)

end

end A072791.P12061479049878589101

/-!
# A072792: Triangle A072789 computed modulo 2.

The programs for A072792, there is no canonical definition to state claims against.
-/

/-! ## A072792.P8773195782290092290

`A072789(n+1)%2`
-/

namespace A072792.P8773195782290092290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072789 (n + 1)) 2

end

end A072792.P8773195782290092290

/-! ## A072792.P11340487460418537975

`and(1, A072789(Δ[n²]-n))`
-/

namespace A072792.P11340487460418537975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A072792.P11340487460418537975

/-! ## A072792.P10615931020241862299

`A000035(A072789(n+1))`
-/

namespace A072792.P10615931020241862299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072789 (n + 1)).toNat

end

end A072792.P10615931020241862299

/-! ## A072792.P14575328453588361494

`and(A072789(n+1), A282997(n+1))`
-/

namespace A072792.P14575328453588361494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A282997 (n + 1))

end

end A072792.P14575328453588361494

/-! ## A072792.P1701770702212086394

`and(A072789(n+1), A083672(A072789(n+1)²))`
-/

namespace A072792.P1701770702212086394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A083672 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P1701770702212086394

/-! ## A072792.P6250764162474099142

`and(A072789(n+1), A084058(A072789(n+1)²))`
-/

namespace A072792.P6250764162474099142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A084058 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P6250764162474099142

/-! ## A072792.P8829965416295305141

`and(A072789(n+1), A084777(A072789(n+1)²))`
-/

namespace A072792.P8829965416295305141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A084777 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P8829965416295305141

/-! ## A072792.P8725709751200424276

`and(A072789(n+1), A085601(A072789(n+1)²))`
-/

namespace A072792.P8725709751200424276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A085601 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P8725709751200424276

/-! ## A072792.P3651452584248137421

`and(A072789(n+1), A087289(A072789(n+1)²))`
-/

namespace A072792.P3651452584248137421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A087289 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P3651452584248137421

/-! ## A072792.P9863488249390909759

`and(A072789(n+1), A092440(A072789(n+1)²))`
-/

namespace A072792.P9863488249390909759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A092440 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P9863488249390909759

/-! ## A072792.P431925934980112923

`and(A072789(n+1), A092896(A072789(n+1)²))`
-/

namespace A072792.P431925934980112923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A092896 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P431925934980112923

/-! ## A072792.P13807871700258816766

`and(A072789(n+1), A098334(A072789(n+1)²))`
-/

namespace A072792.P13807871700258816766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A098334 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P13807871700258816766

/-! ## A072792.P1110406971198627705

`and(A072789(n+1), A113859(A072789(n+1)²))`
-/

namespace A072792.P1110406971198627705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A113859 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P1110406971198627705

/-! ## A072792.P15015401958370331026

`and(A072789(n+1), A121442(A072789(n+1)²))`
-/

namespace A072792.P15015401958370331026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A121442 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P15015401958370331026

/-! ## A072792.P15404508653279842228

`and(A072789(n+1), A140413(A072789(n+1)²))`
-/

namespace A072792.P15404508653279842228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A140413 (A072789 (n + 1) ^ 2).toNat)

end

end A072792.P15404508653279842228

/-! ## A072792.P7030607627303935559

`and(A072789(n+1), A195744(n))`
-/

namespace A072792.P7030607627303935559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A195744 n)

end

end A072792.P7030607627303935559

/-! ## A072792.P9143544818411893332

`and(A072789(n+1), A305155(n))`
-/

namespace A072792.P9143544818411893332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A305155 n)

end

end A072792.P9143544818411893332

/-! ## A072792.P132394123455086998

`and(A072789(n+1), A122041(n+1))`
-/

namespace A072792.P132394123455086998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A122041 (n + 1))

end

end A072792.P132394123455086998

/-! ## A072792.P18262216083609188522

`and(A072789(n+1), A196657(n))`
-/

namespace A072792.P18262216083609188522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A196657 n)

end

end A072792.P18262216083609188522

/-! ## A072792.P14554323471589719147

`and(A072789(n+1), A305262(n))`
-/

namespace A072792.P14554323471589719147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072789 (n + 1)) (A305262 n)

end

end A072792.P14554323471589719147

/-!
# A072793: Simple tabular N X N -> N bijection: first interleave the bits as with A054238, then apply the bijection A048680.

The programs for A072793, there is no canonical definition to state claims against.
-/

/-! ## A072793.P12121929174227184305

`A048680(A054238(n))`
-/

namespace A072793.P12121929174227184305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A054238 n).toNat

end

end A072793.P12121929174227184305

/-! ## A072793.P371651007175702355

`A072646(A072637(A054238(A072637(A072636(n)))))`
-/

namespace A072793.P371651007175702355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072646 (A072637 (A054238 (A072637 (A072636 n).toNat).toNat).toNat).toNat

end

end A072793.P371651007175702355

/-!
# A072794: Inverse permutation to A072793.

The programs for A072794, there is no canonical definition to state claims against.
-/

/-! ## A072794.P10484823354240628422

`A054239(A048679(n))`
-/

namespace A072794.P10484823354240628422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A048679 n).toNat

end

end A072794.P10484823354240628422

/-! ## A072794.P16951674245242577765

`A054239(A304100(comp[floor(ϕ*n)-1])-1)`
-/

namespace A072794.P16951674245242577765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A304100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1).toNat

end

end A072794.P16951674245242577765

/-! ## A072794.P591033486966140515

`A054239(A087808(eq[0, and(n, 2*n)]))`
-/

namespace A072794.P591033486966140515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A072794.P591033486966140515

/-! ## A072794.P1556835433703152670

`A054239(A087808(record[xor(n, 2*n)/3]))`
-/

namespace A072794.P1556835433703152670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A072794.P1556835433703152670

/-! ## A072794.P15214907601482470320

`A054239(A087808(record[n-and(n, 2*n)]))`
-/

namespace A072794.P15214907601482470320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072794.P15214907601482470320

/-! ## A072794.P13675844529843860323

`A054239(A087808(record[-or(2*n, -n)]))`
-/

namespace A072794.P13675844529843860323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072794.P13675844529843860323

/-! ## A072794.P5007209306449534943

`A054239(A087808(record[and(n, -(2*n+1))]))`
-/

namespace A072794.P5007209306449534943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072794.P5007209306449534943

/-! ## A072794.P16209920582182516483

`A054239(A087808(record[n/(and(n, 2*n)+1)]))`
-/

namespace A072794.P16209920582182516483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land n (2 * n) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A087808 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A072794.P16209920582182516483

/-! ## A072794.P5838044627088288118

`A054239(∑{p}[A277006(n), A048675(#)])`
-/

namespace A072794.P5838044627088288118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A072794.P5838044627088288118

/-!
# A072795: A014486-indices of the plane binary trees AND plane general trees whose left subtree is just a stick: \. thus corresponding to the parenthesizations whose first element (of the top-level list) is an empty parenthesization: ().

The programs for A072795, the canonical program `A072795.P2013222351577719000` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072795 has offset 0).

The definition of A072795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072795.P2013222351577719000

`n+A000108(A072643(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072795

/-- `n+A000108(A072643(n))` -/
def P2013222351577719000.Spec : Prop :=
  ∀ n, P2013222351577719000.a n = A072795 n

theorem P2013222351577719000.correct : P2013222351577719000.Spec := by
  intro n
  simp only [A072795]

end A072795

/-! ## A072795.P6188358066190901194

`A069770(A057548(n))`
-/

namespace A072795.P6188358066190901194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057548 n).toNat

end

end A072795.P6188358066190901194

namespace A072795

/-- `A069770(A057548(n))` -/
def P6188358066190901194.Spec : Prop :=
  ∀ n, P6188358066190901194.a n = A072795 n

end A072795

/-! ## A072795.P9299701777655531019

`A080300(A083937(n))`
-/

namespace A072795.P9299701777655531019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A083937 n).toNat

end

end A072795.P9299701777655531019

namespace A072795

/-- `A080300(A083937(n))` -/
def P9299701777655531019.Spec : Prop :=
  ∀ n, P9299701777655531019.a n = A072795 n

end A072795

/-! ## A072795.P2860923451379115796

`A028303(A162550(n))+n`
-/

namespace A072795.P2860923451379115796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A162550 n).toNat + (n : ℤ)

end

end A072795.P2860923451379115796

namespace A072795

/-- `A028303(A162550(n))+n` -/
def P2860923451379115796.Spec : Prop :=
  ∀ n, P2860923451379115796.a n = A072795 n

end A072795

/-! ## A072795.P10932758451848704179

`A060693(A370291(n))+n`
-/

namespace A072795.P10932758451848704179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A370291 n).toNat + (n : ℤ)

end

end A072795.P10932758451848704179

namespace A072795

/-- `A060693(A370291(n))+n` -/
def P10932758451848704179.Spec : Prop :=
  ∀ n, P10932758451848704179.a n = A072795 n

end A072795

/-! ## A072795.P8304212471632479004

`A085223(n)-A085196(n)`
-/

namespace A072795.P8304212471632479004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 n - A085196 n

end

end A072795.P8304212471632479004

namespace A072795

/-- `A085223(n)-A085196(n)` -/
def P8304212471632479004.Spec : Prop :=
  ∀ n, P8304212471632479004.a n = A072795 n

end A072795

/-! ## A072795.P15174880427448748567

`A082853(n)+A014137(A072643(n))`
-/

namespace A072795.P15174880427448748567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 n + A014137 (A072643 n).toNat

end

end A072795.P15174880427448748567

namespace A072795

/-- `A082853(n)+A014137(A072643(n))` -/
def P15174880427448748567.Spec : Prop :=
  ∀ n, P15174880427448748567.a n = A072795 n

end A072795

/-! ## A072795.P15858922278749917051

`eq[1, A072800(n)%4]`
-/

namespace A072795.P15858922278749917051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072800 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072795.P15858922278749917051

namespace A072795

/-- `eq[1, A072800(n)%4]` -/
def P15858922278749917051.Spec : Prop :=
  ∀ n, (P15858922278749917051.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P494749323906453173

`A080067(A057505(n))`
-/

namespace A072795.P494749323906453173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080067 (A057505 n).toNat

end

end A072795.P494749323906453173

namespace A072795

/-- `A080067(A057505(n))` -/
def P494749323906453173.Spec : Prop :=
  ∀ n, P494749323906453173.a n = A072795 n

end A072795

/-! ## A072795.P15564008799556816121

`A193693(n)+A193694(n)+n`
-/

namespace A072795.P15564008799556816121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 n + (A193694 n + (n : ℤ))

end

end A072795.P15564008799556816121

namespace A072795

/-- `A193693(n)+A193694(n)+n` -/
def P15564008799556816121.Spec : Prop :=
  ∀ n, P15564008799556816121.a n = A072795 n

end A072795

/-! ## A072795.P3711941234572627275

`A082853(A057163(A082852(n)))+n+1`
-/

namespace A072795.P3711941234572627275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A057163 (A082852 n).toNat).toNat + (n + 1 : ℤ)

end

end A072795.P3711941234572627275

namespace A072795

/-- `A082853(A057163(A082852(n)))+n+1` -/
def P3711941234572627275.Spec : Prop :=
  ∀ n, P3711941234572627275.a n = A072795 n

end A072795

/-! ## A072795.P12881491887541752668

`eq[1, A083924(n)]`
-/

namespace A072795.P12881491887541752668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072795.P12881491887541752668

namespace A072795

/-- `eq[1, A083924(n)]` -/
def P12881491887541752668.Spec : Prop :=
  ∀ n, (P12881491887541752668.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P8573050463211211793

`filter[n+1, A083924(#)]`
-/

namespace A072795.P8573050463211211793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083924 (f1 j) = 1) n)

end

end A072795.P8573050463211211793

namespace A072795

/-- `filter[n+1, A083924(#)]` -/
def P8573050463211211793.Spec : Prop :=
  ∀ n, (P8573050463211211793.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P8360775265575990655

`lt[and(n, -2), A057501(n)]`
-/

namespace A072795.P8360775265575990655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072795.P8360775265575990655

namespace A072795

/-- `lt[and(n, -2), A057501(n)]` -/
def P8360775265575990655.Spec : Prop :=
  ∀ n, (P8360775265575990655.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P13792465479973044162

`lt[and(n, -2), A074680(n)]`
-/

namespace A072795.P13792465479973044162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072795.P13792465479973044162

namespace A072795

/-- `lt[and(n, -2), A074680(n)]` -/
def P13792465479973044162.Spec : Prop :=
  ∀ n, (P13792465479973044162.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P7139985968820230939

`lt[abs(1-n), A057503(n)]`
-/

namespace A072795.P7139985968820230939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072795.P7139985968820230939

namespace A072795

/-- `lt[abs(1-n), A057503(n)]` -/
def P7139985968820230939.Spec : Prop :=
  ∀ n, (P7139985968820230939.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P11699061587026438445

`lt[n, A057501(n+1)]+1`
-/

namespace A072795.P11699061587026438445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072795.P11699061587026438445

namespace A072795

/-- `lt[n, A057501(n+1)]+1` -/
def P11699061587026438445.Spec : Prop :=
  ∀ n, (P11699061587026438445.a n : ℤ) = A072795 n

end A072795

/-! ## A072795.P13657957737126015482

`A057510(A085223(n))`
-/

namespace A072795.P13657957737126015482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A085223 n).toNat

end

end A072795.P13657957737126015482

namespace A072795

/-- `A057510(A085223(n))` -/
def P13657957737126015482.Spec : Prop :=
  ∀ n, P13657957737126015482.a n = A072795 n

end A072795

/-! ## A072795.P9094818759279290385

`A085168(A085225(n))`
-/

namespace A072795.P9094818759279290385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085225 n).toNat

end

end A072795.P9094818759279290385

namespace A072795

/-- `A085168(A085225(n))` -/
def P9094818759279290385.Spec : Prop :=
  ∀ n, P9094818759279290385.a n = A072795 n

end A072795

/-! ## A072795.P16256541033066582371

`A057164(A085223(A057164(n)))`
-/

namespace A072795.P16256541033066582371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085223 (A057164 n).toNat).toNat

end

end A072795.P16256541033066582371

namespace A072795

/-- `A057164(A085223(A057164(n)))` -/
def P16256541033066582371.Spec : Prop :=
  ∀ n, P16256541033066582371.a n = A072795 n

end A072795

/-!
# A072796: Self-inverse permutation of natural numbers induced by the Catalan bijection swapping the two leftmost subtrees in the general tree context of the parenthesizations encoded by A014486. See illustrations in the comments.

The programs for A072796, there is no canonical definition to state claims against.
-/

/-! ## A072796.P15738625122314494046

`A073282(A057163(n))`
-/

namespace A072796.P15738625122314494046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A057163 n).toNat

end

end A072796.P15738625122314494046

/-! ## A072796.P11772499731421172422

`A057163(A073283(n))`
-/

namespace A072796.P11772499731421172422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073283 n).toNat

end

end A072796.P11772499731421172422

/-! ## A072796.P5969527336796078757

`A073270(A069770(n))`
-/

namespace A072796.P5969527336796078757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A069770 n).toNat

end

end A072796.P5969527336796078757

/-! ## A072796.P9738567291883179124

`A069770(A073269(n))`
-/

namespace A072796.P9738567291883179124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073269 n).toNat

end

end A072796.P9738567291883179124

/-! ## A072796.P11565241287604334623

`A073281(A073270(n))`
-/

namespace A072796.P11565241287604334623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073281 (A073270 n).toNat

end

end A072796.P11565241287604334623

/-! ## A072796.P233878590343290572

`A073269(A073281(n))`
-/

namespace A072796.P233878590343290572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A073281 n).toNat

end

end A072796.P233878590343290572

/-! ## A072796.P13757352020446009461

`A057163(A072797(A073206(A057163(A073194(n)))))`
-/

namespace A072796.P13757352020446009461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072797 (A073206 (A057163 (A073194 n).toNat).toNat).toNat).toNat

end

end A072796.P13757352020446009461

/-! ## A072796.P7402390581427644596

`A057163(A072797(A073207(A057163(A073197(n)))))`
-/

namespace A072796.P7402390581427644596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072797 (A073207 (A057163 (A073197 n).toNat).toNat).toNat).toNat

end

end A072796.P7402390581427644596

/-! ## A072796.P18432155227642504600

`A057163(A072797(A073210(A057163(A073198(n)))))`
-/

namespace A072796.P18432155227642504600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072797 (A073210 (A057163 (A073198 n).toNat).toNat).toNat).toNat

end

end A072796.P18432155227642504600

/-! ## A072796.P16601418341330589915

`A057164(A129608(A057164(n)))`
-/

namespace A072796.P16601418341330589915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A129608 (A057164 n).toNat).toNat

end

end A072796.P16601418341330589915

/-! ## A072796.P16496725271552165752

`A057508(A129608(A057508(n)))`
-/

namespace A072796.P16496725271552165752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A129608 (A057508 n).toNat).toNat

end

end A072796.P16496725271552165752

/-! ## A072796.P16058585316646721634

`A085175(A129608(A085175(n)))`
-/

namespace A072796.P16058585316646721634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A129608 (A085175 n).toNat).toNat

end

end A072796.P16058585316646721634

/-! ## A072796.P17611395307687881483

`A057510(A057510(A129608(A057509(A057509(n)))))`
-/

namespace A072796.P17611395307687881483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A057510 (A129608 (A057509 (A057509 n).toNat).toNat).toNat).toNat

end

end A072796.P17611395307687881483

/-!
# A072797: Self-inverse permutation of natural numbers induced by a Catalan bijection acting on binary trees as encoded by A014486. See comments and examples for details.

The programs for A072797, there is no canonical definition to state claims against.
-/

/-! ## A072797.P12525029700294313332

`A057163(A072796(A057163(n)))`
-/

namespace A072797.P12525029700294313332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A072796 (A057163 n).toNat).toNat

end

end A072797.P12525029700294313332

/-! ## A072797.P625697913120126067

`A073270(n)+n-A074680(n)`
-/

namespace A072797.P625697913120126067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 n + ((n : ℤ) - A074680 n)

end

end A072797.P625697913120126067

/-! ## A072797.P3115152515147503982

`A073283(A057163(n))`
-/

namespace A072797.P3115152515147503982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A057163 n).toNat

end

end A072797.P3115152515147503982

/-! ## A072797.P9893112498180933578

`A057163(A073282(n))`
-/

namespace A072797.P9893112498180933578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073282 n).toNat

end

end A072797.P9893112498180933578

/-! ## A072797.P1296222922526174323

`A074679(A073270(n))`
-/

namespace A072797.P1296222922526174323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A073270 n).toNat

end

end A072797.P1296222922526174323

/-! ## A072797.P1312219753789000486

`A073269(A074680(n))`
-/

namespace A072797.P1312219753789000486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A074680 n).toNat

end

end A072797.P1312219753789000486

/-! ## A072797.P6393402809511121213

`A073283(A073283(A072796(n)))`
-/

namespace A072797.P6393402809511121213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073283 (A073283 (A072796 n).toNat).toNat

end

end A072797.P6393402809511121213

/-! ## A072797.P17967343787685108739

`A154454(A154451(A072796(A069767(n))))`
-/

namespace A072797.P17967343787685108739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A154451 (A072796 (A069767 n).toNat).toNat).toNat

end

end A072797.P17967343787685108739

/-! ## A072797.P6150003132175414199

`A089855(A089854(n))`
-/

namespace A072797.P6150003132175414199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A089854 n).toNat

end

end A072797.P6150003132175414199

/-! ## A072797.P4087281390635709040

`A089856(A089855(n))`
-/

namespace A072797.P4087281390635709040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A089855 n).toNat

end

end A072797.P4087281390635709040

/-!
# A072798: Self-inverse permutation of nonnegative integers obtained by contracting the permutation A069787 induced by the telescoping Catalan bijection DeepRev1CarSide.

The programs for A072798, there is no canonical definition to state claims against.
-/

/-! ## A072798.P18059518367082079723

`A072799(n+1)-1`
-/

namespace A072798.P18059518367082079723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072799 (n + 1) - 1

end

end A072798.P18059518367082079723

/-! ## A072798.P8812599238321192142

`A023443(A072799(n+1))`
-/

namespace A072798.P8812599238321192142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072799 (n + 1)).toNat

end

end A072798.P8812599238321192142

/-! ## A072798.P15716102531566797365

`A057918(A072799(n+1)²)`
-/

namespace A072798.P15716102531566797365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A072799 (n + 1) ^ 2).toNat

end

end A072798.P15716102531566797365

/-! ## A072798.P10457979506574200830

`A088226(A072799(n+1)²)`
-/

namespace A072798.P10457979506574200830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A072799 (n + 1) ^ 2).toNat

end

end A072798.P10457979506574200830

/-! ## A072798.P2810703920284046013

`A214526(A072799(n+1)²)`
-/

namespace A072798.P2810703920284046013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A072799 (n + 1) ^ 2).toNat

end

end A072798.P2810703920284046013

/-! ## A072798.P174901935530506839

`A259361(A072799(n+1)²)`
-/

namespace A072798.P174901935530506839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A072799 (n + 1) ^ 2).toNat

end

end A072798.P174901935530506839

/-! ## A072798.P2432833864061606596

`A023444(A072799(n+1)+1)`
-/

namespace A072798.P2432833864061606596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A072799 (n + 1) + 1).toNat

end

end A072798.P2432833864061606596

/-! ## A072798.P15289117196250778964

`A289207(A072799(n+1)+1)`
-/

namespace A072798.P15289117196250778964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A072799 (n + 1) + 1).toNat

end

end A072798.P15289117196250778964

/-! ## A072798.P52220995935978395

`A046667(2*A072799(n+1))`
-/

namespace A072798.P52220995935978395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A072799 (n + 1)).toNat

end

end A072798.P52220995935978395

/-! ## A072798.P10559736066049248881

`A023452(A072799(n+1)+9)`
-/

namespace A072798.P10559736066049248881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A072799 (n + 1) + 9).toNat

end

end A072798.P10559736066049248881

/-!
# A072799: Self-inverse permutation of natural numbers: A072798(n-1)+1. (one-based).

The programs for A072799, there is no canonical definition to state claims against.
-/

/-! ## A072799.P5945432577018863858

`A072798(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072799.P5945432577018863858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072798 n + 1

end

end A072799.P5945432577018863858

/-! ## A072799.P14644560173944500838

`A008619(2*A072798(n))`
-/

namespace A072799.P14644560173944500838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A072798 n).toNat

end

end A072799.P14644560173944500838

/-! ## A072799.P7538613792433244916

`A027656(2*A072798(n))`
-/

namespace A072799.P7538613792433244916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A072798 n).toNat

end

end A072799.P7538613792433244916

/-! ## A072799.P1413558498485485976

`A028242(2*A072798(n))`
-/

namespace A072799.P1413558498485485976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A072798 n).toNat

end

end A072799.P1413558498485485976

/-! ## A072799.P13894258647770749065

`A029579(2*A072798(n))`
-/

namespace A072799.P13894258647770749065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A072798 n).toNat

end

end A072799.P13894258647770749065

/-! ## A072799.P16878154020792064368

`A131732(2*A072798(n))`
-/

namespace A072799.P16878154020792064368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A072798 n).toNat

end

end A072799.P16878154020792064368

/-! ## A072799.P14982307448931461691

`A008611(3*A072798(n))`
-/

namespace A072799.P14982307448931461691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A072798 n).toNat

end

end A072799.P14982307448931461691

/-! ## A072799.P2339634247828556454

`A008620(3*A072798(n))`
-/

namespace A072799.P2339634247828556454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A072798 n).toNat

end

end A072799.P2339634247828556454

/-! ## A072799.P11722855074683273495

`2-(A007318(C(2, n))-A072798(n))`
-/

namespace A072799.P11722855074683273495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A072798 n)

end

end A072799.P11722855074683273495

/-! ## A072799.P17983162845560213318

`1-(A008683(Δ[(2*n)²])-A072798(n))`
-/

namespace A072799.P17983162845560213318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072798 n)

end

end A072799.P17983162845560213318

