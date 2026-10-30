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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076601: a(1)=3, a(n_even)=(a(n-1)^2-1)/2; a(n_odd)=a(n-1)+1.

The programs for A076601, there is no canonical definition to state claims against.
-/

/-! ## A076601.P13927789749031321332

`lcm(a(n-1)+1, xor(1, a(n-1)))` with `a(0)=3`
-/

namespace A076601.P13927789749031321332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm (a (n - 1) + 1) (Nat.xor 1 (a (n - 1)))

end

end A076601.P13927789749031321332

/-! ## A076601.P8621554547527574086

`A053630(A080513(n))-A000035(n)`
-/

namespace A076601.P8621554547527574086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053630 (A080513 n).toNat - A000035 n

end

end A076601.P8621554547527574086

/-! ## A076601.P6598058648169878806

`xor(A000035(n+2), A053630(A080513(n)))`
-/

namespace A076601.P6598058648169878806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (n + 2)) (A053630 (A080513 n).toNat)

end

end A076601.P6598058648169878806

/-! ## A076601.P4167770153076688147

`∪[A053630(n+1), A053631(n+2)]`
-/

namespace A076601.P4167770153076688147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053631 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076601.P4167770153076688147

/-! ## A076601.P3347603042716213184

`∪[A053631(n+1)+1, A127690(n+1)]`
-/

namespace A076601.P3347603042716213184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053631 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076601.P3347603042716213184

/-!
# A076602: a(1)=7, a(n_even)=(a(n-1)^2-1)/2; a(n_odd)=a(n-1)+1.

The programs for A076602, there is no canonical definition to state claims against.
-/

/-! ## A076602.P14017738242697574247

`lcm(a(n-1)+1, xor(1, a(n-1)))` with `a(0)=7`
-/

namespace A076602.P14017738242697574247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lcm (a (n - 1) + 1) (Nat.xor 1 (a (n - 1)))

end

end A076602.P14017738242697574247

/-! ## A076602.P16069999463914217156

`(a(n-1)+1)*A057979(a(n-1))` with `a(0)=7`
-/

namespace A076602.P16069999463914217156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (a (n - 1) + 1) * A057979 (a (n - 1)).toNat

end

end A076602.P16069999463914217156

/-!
# A076603: a(1)=9, a(n_even)=(a(n-1)^2-1)/2; a(n_odd)=a(n-1)+1.

The programs for A076603, there is no canonical definition to state claims against.
-/

/-! ## A076603.P18230157692062440796

`lcm(a(n-1)+1, xor(1, a(n-1)))` with `a(0)=9`
-/

namespace A076603.P18230157692062440796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lcm (a (n - 1) + 1) (Nat.xor 1 (a (n - 1)))

end

end A076603.P18230157692062440796

/-! ## A076603.P13395091775342541115

`(a(n-1)+1)*A057979(a(n-1))` with `a(0)=9`
-/

namespace A076603.P13395091775342541115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + 1) * A057979 (a (n - 1)).toNat

end

end A076603.P13395091775342541115

/-!
# A076604: a(1) = 11, a(n_even) = (a(n-1)^2-1)/2; a(n_odd) = a(n-1)+1.

The programs for A076604, there is no canonical definition to state claims against.
-/

/-! ## A076604.P13144275956190599496

`lcm(a(n-1)+1, xor(1, a(n-1)))` with `a(0)=11`
-/

namespace A076604.P13144275956190599496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.lcm (a (n - 1) + 1) (Nat.xor 1 (a (n - 1)))

end

end A076604.P13144275956190599496

/-! ## A076604.P776962151658110390

`(a(n-1)+1)*A057979(a(n-1))` with `a(0)=11`
-/

namespace A076604.P776962151658110390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  (a (n - 1) + 1) * A057979 (a (n - 1)).toNat

end

end A076604.P776962151658110390

/-!
# A076605: Largest prime divisor of n^2 - 1.

The programs for A076605, the canonical program `A076605.P15984416530963121362` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076605 has offset 2).

The definition of A076605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076605.P15839036368106541616

`A006530(A002034(n+3)*A006530(n+1))`
-/

namespace A076605.P15839036368106541616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002034 (n + 3) * A006530 (n + 1)).toNat

end

end A076605.P15839036368106541616

namespace A076605

/-- `A006530(A002034(n+3)*A006530(n+1))` -/
def P15839036368106541616.Spec : Prop :=
  ∀ n, P15839036368106541616.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P15984416530963121362

`A006530(A006530(n+1)*A006530(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A076605

/-- `A006530(A006530(n+1)*A006530(n+3))` -/
def P15984416530963121362.Spec : Prop :=
  ∀ n, P15984416530963121362.a n = A076605 (n + 2)

theorem P15984416530963121362.correct : P15984416530963121362.Spec := by
  intro n
  simp only [A076605, Nat.add_sub_cancel]

end A076605

/-! ## A076605.P15684674253730329241

`A006530(lcm(A006530(n+1), A006530(n+3)))`
-/

namespace A076605.P15684674253730329241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A006530 (n + 1)) (A006530 (n + 3)))

end

end A076605.P15684674253730329241

namespace A076605

/-- `A006530(lcm(A006530(n+1), A006530(n+3)))` -/
def P15684674253730329241.Spec : Prop :=
  ∀ n, P15684674253730329241.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P6709323179509706844

`A006530((n+1)*A006530(n+3))`
-/

namespace A076605.P6709323179509706844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A006530 (n + 3)).toNat

end

end A076605.P6709323179509706844

namespace A076605

/-- `A006530((n+1)*A006530(n+3))` -/
def P6709323179509706844.Spec : Prop :=
  ∀ n, P6709323179509706844.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P13934455286169094777

`A006530(lcm(n+1, A006530(n+3)))`
-/

namespace A076605.P13934455286169094777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (n + 1 : ℤ) (A006530 (n + 3)))

end

end A076605.P13934455286169094777

namespace A076605

/-- `A006530(lcm(n+1, A006530(n+3)))` -/
def P13934455286169094777.Spec : Prop :=
  ∀ n, P13934455286169094777.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P15835201690045922220

`A006530(lcm(n+1, n+3))`
-/

namespace A076605.P15835201690045922220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lcm (n + 1) (n + 3))

end

end A076605.P15835201690045922220

namespace A076605

/-- `A006530(lcm(n+1, n+3))` -/
def P15835201690045922220.Spec : Prop :=
  ∀ n, P15835201690045922220.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P12895053659948686267

`A006530(A070260(n+1))`
-/

namespace A076605.P12895053659948686267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070260 (n + 1)).toNat

end

end A076605.P12895053659948686267

namespace A076605

/-- `A006530(A070260(n+1))` -/
def P12895053659948686267.Spec : Prop :=
  ∀ n, P12895053659948686267.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P11655720784573700264

`A006530(A066830(n+2))`
-/

namespace A076605.P11655720784573700264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066830 (n + 2)).toNat

end

end A076605.P11655720784573700264

namespace A076605

/-- `A006530(A066830(n+2))` -/
def P11655720784573700264.Spec : Prop :=
  ∀ n, P11655720784573700264.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P16346271600115171379

`A006530(A142705(n+2))`
-/

namespace A076605.P16346271600115171379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A142705 (n + 2)).toNat

end

end A076605.P16346271600115171379

namespace A076605

/-- `A006530(A142705(n+2))` -/
def P16346271600115171379.Spec : Prop :=
  ∀ n, P16346271600115171379.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P17034950536752416248

`A006530((n+2)²-1)`
-/

namespace A076605.P17034950536752416248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2) ^ 2 - 1)

end

end A076605.P17034950536752416248

namespace A076605

/-- `A006530((n+2)²-1)` -/
def P17034950536752416248.Spec : Prop :=
  ∀ n, P17034950536752416248.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P16648521916905169501

`A006530(∑[2*n+3])%(n+4)`
-/

namespace A076605.P16648521916905169501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 4 : ℤ)

end

end A076605.P16648521916905169501

namespace A076605

/-- `A006530(∑[2*n+3])%(n+4)` -/
def P16648521916905169501.Spec : Prop :=
  ∀ n, P16648521916905169501.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P15365724930861516297

`A006530(∑[n+3+n])+C(2, n+3)`
-/

namespace A076605.P15365724930861516297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (n + 3) : ℤ)

end

end A076605.P15365724930861516297

namespace A076605

/-- `A006530(∑[n+3+n])+C(2, n+3)` -/
def P15365724930861516297.Spec : Prop :=
  ∀ n, P15365724930861516297.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P946441693888850305

`A000040(A061395((n+2)²-1))`
-/

namespace A076605.P946441693888850305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 2) ^ 2 - 1)).toNat

end

end A076605.P946441693888850305

namespace A076605

/-- `A000040(A061395((n+2)²-1))` -/
def P946441693888850305.Spec : Prop :=
  ∀ n, P946441693888850305.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P13380181995007623868

`A000015(A006530(∑[2*n+3]))`
-/

namespace A076605.P13380181995007623868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076605.P13380181995007623868

namespace A076605

/-- `A000015(A006530(∑[2*n+3]))` -/
def P13380181995007623868.Spec : Prop :=
  ∀ n, P13380181995007623868.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P11644936092412742537

`A000027(A006530(∑[a(n-1)+2]))` with `a(0)=3`
-/

namespace A076605.P11644936092412742537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076605.P11644936092412742537

namespace A076605

/-- `A000027(A006530(∑[a(n-1)+2]))` -/
def P11644936092412742537.Spec : Prop :=
  ∀ n, P11644936092412742537.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P14758369809860972411

`A117366(A008578(A061395((n+1)*(n+3))))`
-/

namespace A076605.P14758369809860972411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A008578 (A061395 ((n + 1) * (n + 3))).toNat).toNat

end

end A076605.P14758369809860972411

namespace A076605

/-- `A117366(A008578(A061395((n+1)*(n+3))))` -/
def P14758369809860972411.Spec : Prop :=
  ∀ n, P14758369809860972411.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P10557548523810269216

`gcd(A006530(A054000(n+2)), A054000(n+2))`
-/

namespace A076605.P10557548523810269216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (A054000 (n + 2)).toNat) (A054000 (n + 2))

end

end A076605.P10557548523810269216

namespace A076605

/-- `gcd(A006530(A054000(n+2)), A054000(n+2))` -/
def P10557548523810269216.Spec : Prop :=
  ∀ n, (P10557548523810269216.a n : ℤ) = A076605 (n + 2)

end A076605

/-! ## A076605.P5642206551283340777

`A243057(A345941((n+1)*(n+3)))`
-/

namespace A076605.P5642206551283340777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A345941 ((n + 1) * (n + 3))).toNat

end

end A076605.P5642206551283340777

namespace A076605

/-- `A243057(A345941((n+1)*(n+3)))` -/
def P5642206551283340777.Spec : Prop :=
  ∀ n, P5642206551283340777.a n = A076605 (n + 2)

end A076605

/-! ## A076605.P11603526254445411313

`A111089(A198148(n+1))`
-/

namespace A076605.P11603526254445411313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A198148 (n + 1)).toNat

end

end A076605.P11603526254445411313

namespace A076605

/-- `A111089(A198148(n+1))` -/
def P11603526254445411313.Spec : Prop :=
  ∀ n, P11603526254445411313.a n = A076605 (n + 2)

end A076605

/-!
# A076606: Min { largest prime factor of n-1, largest prime factor of n+1 }.

The programs for A076606, there is no canonical definition to state claims against.
-/

/-! ## A076606.P11137415787694247593

`A020639(A085392(n+4)*A345941(n+2))`
-/

namespace A076606.P11137415787694247593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085392 (n + 4) * A345941 (n + 2)).toNat

end

end A076606.P11137415787694247593

/-! ## A076606.P17424763662780471468

`A020639(A006530(n+2)*A006530(n+4))`
-/

namespace A076606.P17424763662780471468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006530 (n + 2) * A006530 (n + 4)).toNat

end

end A076606.P17424763662780471468

/-! ## A076606.P6524939016680166270

`A020639(A053585(n+2)*A053585(n+4))`
-/

namespace A076606.P6524939016680166270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 2) * A053585 (n + 4)).toNat

end

end A076606.P6524939016680166270

/-! ## A076606.P4508372115916935908

`A020639(A111089(n+2)*A111089(n+4))`
-/

namespace A076606.P4508372115916935908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111089 (n + 2) * A111089 (n + 4)).toNat

end

end A076606.P4508372115916935908

/-! ## A076606.P4597819199466542933

`A020639(A345941(n+2)*A345941(n+4))`
-/

namespace A076606.P4597819199466542933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 2) * A345941 (n + 4)).toNat

end

end A076606.P4597819199466542933

/-! ## A076606.P8572394422608672447

`A020639(lcm(A053585(n+2), A053585(n+4)))`
-/

namespace A076606.P8572394422608672447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A053585 (n + 2)) (A053585 (n + 4)))

end

end A076606.P8572394422608672447

/-! ## A076606.P6633396790112473678

`A067695(A006530(n+2)*A085392(n+4))`
-/

namespace A076606.P6633396790112473678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A006530 (n + 2) * A085392 (n + 4)).toNat

end

end A076606.P6633396790112473678

/-! ## A076606.P1290487094274205402

`A107286(A006530(n+2)*A006530(n+4))`
-/

namespace A076606.P1290487094274205402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A006530 (n + 2) * A006530 (n + 4)).toNat

end

end A076606.P1290487094274205402

/-! ## A076606.P4658595997975071015

`A117365(A117366(n+2)*A117366(n+4))`
-/

namespace A076606.P4658595997975071015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117366 (n + 2) * A117366 (n + 4)).toNat

end

end A076606.P4658595997975071015

/-!
# A076608: Number of nonprimes k < n such that also n-k is not a prime.

The programs for A076608, the canonical program `A076608.P14954693056762481998` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076608 has offset 1).

The definition of A076608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076608.P12605014013292917198

`A302479(n+1)+A062610(n+1)`
-/

namespace A076608.P12605014013292917198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (n + 1) + A062610 (n + 1)

end

end A076608.P12605014013292917198

namespace A076608

/-- `A302479(n+1)+A062610(n+1)` -/
def P12605014013292917198.Spec : Prop :=
  ∀ n, P12605014013292917198.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P10390215899505807775

`A073610(n+1)+A118777(n)-1`
-/

namespace A076608.P10390215899505807775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1) + (A118777 n - 1)

end

end A076608.P10390215899505807775

namespace A076608

/-- `A073610(n+1)+A118777(n)-1` -/
def P10390215899505807775.Spec : Prop :=
  ∀ n, P10390215899505807775.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P11402421824789801692

`A347788(n+1)-A005171(n+1)`
-/

namespace A076608.P11402421824789801692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (n + 1) - A005171 (n + 1)

end

end A076608.P11402421824789801692

namespace A076608

/-- `A347788(n+1)-A005171(n+1)` -/
def P11402421824789801692.Spec : Prop :=
  ∀ n, P11402421824789801692.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P797561451105703752

`n-(A230980(n)+A062602(n+1))`
-/

namespace A076608.P797561451105703752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A230980 n + A062602 (n + 1))

end

end A076608.P797561451105703752

namespace A076608

/-- `n-(A230980(n)+A062602(n+1))` -/
def P797561451105703752.Spec : Prop :=
  ∀ n, P797561451105703752.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P10176555414825275460

`A347788(n+1)-char[A018252(n+1)-1]`
-/

namespace A076608.P10176555414825275460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A076608.P10176555414825275460

namespace A076608

/-- `A347788(n+1)-char[A018252(n+1)-1]` -/
def P10176555414825275460.Spec : Prop :=
  ∀ n, P10176555414825275460.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P12920664687533973701

`A073610(n+1)+A023443(A118777(n))`
-/

namespace A076608.P12920664687533973701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1) + A023443 (A118777 n).toNat

end

end A076608.P12920664687533973701

namespace A076608

/-- `A073610(n+1)+A023443(A118777(n))` -/
def P12920664687533973701.Spec : Prop :=
  ∀ n, P12920664687533973701.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P14954693056762481998

`A062298(n+1)-(A062602(n+1)+A005171(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A076608

/-- `A062298(n+1)-(A062602(n+1)+A005171(n+1))` -/
def P14954693056762481998.Spec : Prop :=
  ∀ n, P14954693056762481998.a n = A076608 (n + 1)

theorem P14954693056762481998.correct : P14954693056762481998.Spec := by
  intro n
  simp only [A076608, Nat.add_sub_cancel]

end A076608

/-! ## A076608.P15591281786359893315

`A010051(n+1)+A065855(n+1)-A062602(n+1)`
-/

namespace A076608.P15591281786359893315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A065855 (n + 1) - A062602 (n + 1))

end

end A076608.P15591281786359893315

namespace A076608

/-- `A010051(n+1)+A065855(n+1)-A062602(n+1)` -/
def P15591281786359893315.Spec : Prop :=
  ∀ n, P15591281786359893315.a n = A076608 (n + 1)

theorem P15591281786359893315.correct : P15591281786359893315.Spec := by
  intro n
  simp only [A076608, Nat.add_sub_cancel, A076608.P15591281786359893315.a, A076608.P14954693056762481998.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062298, A062298.P8226643735375377344.a, A062602, A062602.P15976741372333884415.a, A065855, A065855.P16805213270251966039.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A295629, A295629.P18345784372025408051.a, A004526, A004526.P10084182425416171735.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076608

/-! ## A076608.P9934806286824660507

`A171691(n+1)+A302479(n+1)-A005171(n+1)`
-/

namespace A076608.P9934806286824660507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (n + 1) + (A302479 (n + 1) - A005171 (n + 1))

end

end A076608.P9934806286824660507

namespace A076608

/-- `A171691(n+1)+A302479(n+1)-A005171(n+1)` -/
def P9934806286824660507.Spec : Prop :=
  ∀ n, P9934806286824660507.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P803828150679349648

`A185279(n+1)+A345039(n+1)+A302479(n+1)`
-/

namespace A076608.P803828150679349648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (n + 1) + (A345039 (n + 1) + A302479 (n + 1))

end

end A076608.P803828150679349648

namespace A076608

/-- `A185279(n+1)+A345039(n+1)+A302479(n+1)` -/
def P803828150679349648.Spec : Prop :=
  ∀ n, P803828150679349648.a n = A076608 (n + 1)

end A076608

/-! ## A076608.P11069014732199104656

`A302479(n+1)+A347788(n+1)-A358638(n+1)`
-/

namespace A076608.P11069014732199104656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (n + 1) + (A347788 (n + 1) - A358638 (n + 1))

end

end A076608.P11069014732199104656

namespace A076608

/-- `A302479(n+1)+A347788(n+1)-A358638(n+1)` -/
def P11069014732199104656.Spec : Prop :=
  ∀ n, P11069014732199104656.a n = A076608 (n + 1)

end A076608

/-!
# A076609: Palindromic numbers with prime middle digit.

The programs for A076609, there is no canonical definition to state claims against.
-/

/-! ## A076609.P13380930630880264873

`A056525(A260181(n+1))`
-/

namespace A076609.P13380930630880264873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A260181 (n + 1)).toNat

end

end A076609.P13380930630880264873

/-! ## A076609.P10772140074523326131

`A056525(A056527(2*(n+1))-A047466(n+3))`
-/

namespace A076609.P10772140074523326131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A056527 (2 * (n + 1)) - A047466 (n + 3)).toNat

end

end A076609.P10772140074523326131

/-! ## A076609.P12046841694045308028

`A056142(A260181(n+1)%A232447(n+1))`
-/

namespace A076609.P12046841694045308028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (Int.tmod (A260181 (n + 1)) (A232447 (n + 1))).toNat

end

end A076609.P12046841694045308028

/-! ## A076609.P3356631232162617918

`A004151(A117058(n+1))`
-/

namespace A076609.P3356631232162617918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A117058 (n + 1)).toNat

end

end A076609.P3356631232162617918

/-!
# A076610: Numbers having only prime factors of form prime(prime); a(1)=1.

The programs for A076610, the canonical program `A076610.P12819238282953885969` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076610 has offset 1).

The definition of A076610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 741 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076610.P11957102006233816567

`eq[A001222(n+1), A257994(n+1)]+1`
-/

namespace A076610.P11957102006233816567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P11957102006233816567

namespace A076610

/-- `eq[A001222(n+1), A257994(n+1)]+1` -/
def P11957102006233816567.Spec : Prop :=
  ∀ n, (P11957102006233816567.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P12819238282953885969

`record[A360325(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A076610

/-- `record[A360325(n+1)]` -/
def P12819238282953885969.Spec : Prop :=
  ∀ n, P12819238282953885969.a n = A076610 (n + 1)

theorem P12819238282953885969.correct : P12819238282953885969.Spec := by
  intro n
  simp only [A076610, Nat.add_sub_cancel]

end A076610

/-! ## A076610.P4640824005079231899

`eq[1, char[A064988(n+1)]]`
-/

namespace A076610.P4640824005079231899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076610.P4640824005079231899

namespace A076610

/-- `eq[1, char[A064988(n+1)]]` -/
def P4640824005079231899.Spec : Prop :=
  ∀ n, (P4640824005079231899.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P14368985649300634449

`eq[1, A355742(n+1)]+1`
-/

namespace A076610.P14368985649300634449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076610.P14368985649300634449

namespace A076610

/-- `eq[1, A355742(n+1)]+1` -/
def P14368985649300634449.Spec : Prop :=
  ∀ n, (P14368985649300634449.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P12130810393410755333

`lt[A360329(n+1), 2]+1`
-/

namespace A076610.P12130810393410755333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076610.P12130810393410755333

namespace A076610

/-- `lt[A360329(n+1), 2]+1` -/
def P12130810393410755333.Spec : Prop :=
  ∀ n, (P12130810393410755333.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P7267430931992645880

`lt[A360330(n+1), 2]+1`
-/

namespace A076610.P7267430931992645880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360330 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076610.P7267430931992645880

namespace A076610

/-- `lt[A360330(n+1), 2]+1` -/
def P7267430931992645880.Spec : Prop :=
  ∀ n, (P7267430931992645880.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P2184166459189758272

`lt[A360331(n+1), 2]+1`
-/

namespace A076610.P2184166459189758272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360331 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076610.P2184166459189758272

namespace A076610

/-- `lt[A360331(n+1), 2]+1` -/
def P2184166459189758272.Spec : Prop :=
  ∀ n, (P2184166459189758272.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P5307720534629061999

`filter[2*n+1, A355742(#)]`
-/

namespace A076610.P5307720534629061999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355742 (f1 j) = 1) n)

end

end A076610.P5307720534629061999

namespace A076610

/-- `filter[2*n+1, A355742(#)]` -/
def P5307720534629061999.Spec : Prop :=
  ∀ n, (P5307720534629061999.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P14327213367070977567

`filter[2*n+1, A360329(#)]`
-/

namespace A076610.P14327213367070977567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360329 (f1 j) = 1) n)

end

end A076610.P14327213367070977567

namespace A076610

/-- `filter[2*n+1, A360329(#)]` -/
def P14327213367070977567.Spec : Prop :=
  ∀ n, (P14327213367070977567.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P563018042431980324

`filter[2*n+1, A360330(#)]`
-/

namespace A076610.P563018042431980324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360330 (f1 j) = 1) n)

end

end A076610.P563018042431980324

namespace A076610

/-- `filter[2*n+1, A360330(#)]` -/
def P563018042431980324.Spec : Prop :=
  ∀ n, (P563018042431980324.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P6578159039889134695

`filter[2*n+1, A360331(#)]`
-/

namespace A076610.P6578159039889134695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360331 (f1 j) = 1) n)

end

end A076610.P6578159039889134695

namespace A076610

/-- `filter[2*n+1, A360331(#)]` -/
def P6578159039889134695.Spec : Prop :=
  ∀ n, (P6578159039889134695.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P3964575657522419315

`lt[n, A360327(n+1)]+1`
-/

namespace A076610.P3964575657522419315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076610.P3964575657522419315

namespace A076610

/-- `lt[n, A360327(n+1)]+1` -/
def P3964575657522419315.Spec : Prop :=
  ∀ n, (P3964575657522419315.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P2675045218322950446

`record[gcd(n+1, A064988(A003963(n+1)))]`
-/

namespace A076610.P2675045218322950446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064988 (A003963 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076610.P2675045218322950446

namespace A076610

/-- `record[gcd(n+1, A064988(A003963(n+1)))]` -/
def P2675045218322950446.Spec : Prop :=
  ∀ n, (P2675045218322950446.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P395550550855194090

`eq[A000005(n+1), A000005(A295665(n+1))]+1`
-/

namespace A076610.P395550550855194090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P395550550855194090

namespace A076610

/-- `eq[A000005(n+1), A000005(A295665(n+1))]+1` -/
def P395550550855194090.Spec : Prop :=
  ∀ n, (P395550550855194090.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P8761753946459164856

`eq[A001221(n+1), A001221(A295665(n+1))]+1`
-/

namespace A076610.P8761753946459164856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P8761753946459164856

namespace A076610

/-- `eq[A001221(n+1), A001221(A295665(n+1))]+1` -/
def P8761753946459164856.Spec : Prop :=
  ∀ n, (P8761753946459164856.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P4014990003390956980

`eq[A001222(n+1), A001222(A295665(n+1))]+1`
-/

namespace A076610.P4014990003390956980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P4014990003390956980

namespace A076610

/-- `eq[A001222(n+1), A001222(A295665(n+1))]+1` -/
def P4014990003390956980.Spec : Prop :=
  ∀ n, (P4014990003390956980.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P4390906712422599414

`eq[A007425(n+1), A007425(A295665(n+1))]+1`
-/

namespace A076610.P4390906712422599414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P4390906712422599414

namespace A076610

/-- `eq[A007425(n+1), A007425(A295665(n+1))]+1` -/
def P4390906712422599414.Spec : Prop :=
  ∀ n, (P4390906712422599414.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P1778897444380990403

`eq[A032741(n+1), A032741(A295665(n+1))]+1`
-/

namespace A076610.P1778897444380990403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P1778897444380990403

namespace A076610

/-- `eq[A032741(n+1), A032741(A295665(n+1))]+1` -/
def P1778897444380990403.Spec : Prop :=
  ∀ n, (P1778897444380990403.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P13642548601444685698

`eq[A067824(n+1), A067824(A295665(n+1))]+1`
-/

namespace A076610.P13642548601444685698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A295665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076610.P13642548601444685698

namespace A076610

/-- `eq[A067824(n+1), A067824(A295665(n+1))]+1` -/
def P13642548601444685698.Spec : Prop :=
  ∀ n, (P13642548601444685698.a n : ℤ) = A076610 (n + 1)

end A076610

/-! ## A076610.P11959358162737099730

`∩[2*n+1, A302540(n+1)]`
-/

namespace A076610.P11959358162737099730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076610.P11959358162737099730

namespace A076610

/-- `∩[2*n+1, A302540(n+1)]` -/
def P11959358162737099730.Spec : Prop :=
  ∀ n, (P11959358162737099730.a n : ℤ) = A076610 (n + 1)

end A076610

/-!
# A076611: Palindromic primes with prime middle digit.

The programs for A076611, there is no canonical definition to state claims against.
-/

/-! ## A076611.P11297155591583217756

`∩[A002385(n+1), A076609(n+1)]`
-/

namespace A076611.P11297155591583217756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P11297155591583217756

/-! ## A076611.P3333804371677499981

`∩[A072299(n+1), A076609(n+1)]`
-/

namespace A076611.P3333804371677499981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P3333804371677499981

/-! ## A076611.P17008508017852145486

`∩[A076609(n+1), A350836(n+1)]`
-/

namespace A076611.P17008508017852145486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P17008508017852145486

/-! ## A076611.P12014778156091047645

`∩[A076609(n+1), A232183(n+1)]`
-/

namespace A076611.P12014778156091047645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P12014778156091047645

/-! ## A076611.P6563353870997029140

`∩[A069217(n+1), A076609(n+1)]`
-/

namespace A076611.P6563353870997029140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P6563353870997029140

/-! ## A076611.P3327263882836820039

`∩[A076609(n+1), A180440(n+1)]`
-/

namespace A076611.P3327263882836820039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P3327263882836820039

/-! ## A076611.P18044241466697432819

`∩[A076609(n+1), A077652(n+1)]`
-/

namespace A076611.P18044241466697432819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076611.P18044241466697432819

/-! ## A076611.P9181620209537865804

`p?[A076609(n+1)]`
-/

namespace A076611.P9181620209537865804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076611.P9181620209537865804

/-! ## A076611.P12699462496945744277

`p?[record[A076609(A038568(n))]]`
-/

namespace A076611.P12699462496945744277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076611.P12699462496945744277

/-! ## A076611.P11461022430698938047

`p?[record[A076609(A291766(n))]]`
-/

namespace A076611.P11461022430698938047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076611.P11461022430698938047

/-!
# A076612: Palindromic numbers with nonprime middle digit.

The programs for A076612, there is no canonical definition to state claims against.
-/

/-! ## A076612.P4789663892501323675

`∩[A084985(n+1), A308493(n+1)]`
-/

namespace A076612.P4789663892501323675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076612.P4789663892501323675

/-! ## A076612.P9225433592490075911

`A084985(A084545(n+1)%A069085(n+1))`
-/

namespace A076612.P9225433592490075911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (Int.tmod (A084545 (n + 1)) (A069085 (n + 1))).toNat

end

end A076612.P9225433592490075911

/-! ## A076612.P15110012761145209268

`∩[A084985(n+1), A171120(n+1)]`
-/

namespace A076612.P15110012761145209268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076612.P15110012761145209268

/-!
# A076613: Palindromic primes with nonprime middle digit.

The programs for A076613, there is no canonical definition to state claims against.
-/

/-! ## A076613.P15223952901206113975

`∩[A002385(n+1), A076612(n+1)]`
-/

namespace A076613.P15223952901206113975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P15223952901206113975

/-! ## A076613.P17306144088677276838

`∩[A072299(n+1), A076612(n+1)]`
-/

namespace A076613.P17306144088677276838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P17306144088677276838

/-! ## A076613.P14124127590738810379

`∩[A076612(n+1), A232183(n+1)]`
-/

namespace A076613.P14124127590738810379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P14124127590738810379

/-! ## A076613.P6607074750966321830

`∩[A076612(n+1), A180440(n+1)]`
-/

namespace A076613.P6607074750966321830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P6607074750966321830

/-! ## A076613.P17110405073521094904

`∩[A076612(n+1), A208362(n+1)]`
-/

namespace A076613.P17110405073521094904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P17110405073521094904

/-! ## A076613.P1311433021463145814

`∩[A076612(n+1), A077652(n+1)]`
-/

namespace A076613.P1311433021463145814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P1311433021463145814

/-! ## A076613.P11810058761317789140

`∩[A076612(n+1), A120533(n+1)]`
-/

namespace A076613.P11810058761317789140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P11810058761317789140

/-! ## A076613.P10366626462028642827

`p?[A076612(n+1)]`
-/

namespace A076613.P10366626462028642827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076613.P10366626462028642827

/-! ## A076613.P5865655757631007573

`filter[A076612(n+1), A010051(#)]`
-/

namespace A076613.P5865655757631007573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A076613.P5865655757631007573

/-! ## A076613.P9232796160051567660

`∩[A000040(n+1), A076612(n+1)]`
-/

namespace A076613.P9232796160051567660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076613.P9232796160051567660

/-!
# A076615: Number of permutations of {1,2,...,n} that result in a binary search tree with the minimum possible height.

The programs for A076615, there is no canonical definition to state claims against.
-/

/-! ## A076615.P10015172558871201751

`A195581(∑[n]+ceil(log2(n+1)))`
-/

namespace A076615.P10015172558871201751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈Real.logb 2 (n + 1 : ℝ)⌉).toNat

end

end A076615.P10015172558871201751

/-! ## A076615.P15897607390096927933

`filter[A244108(n), A328102(#)]`
-/

namespace A076615.P15897607390096927933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328102 (f1 j).toNat = 1) n)

end

end A076615.P15897607390096927933

/-! ## A076615.P14982596992090324574

`A244108(lt[A232466(n+1), A055013(2*(n+1))])`
-/

namespace A076615.P14982596992090324574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076615.P14982596992090324574

/-!
# A076616: Number of permutations of {1,2,...,n} that result in a binary search tree (when elements of the permutation are inserted in that order) of height n-1 (i.e., the second largest possible height).

The programs for A076616, the canonical program `A076616.P17967597849480191040` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076616 has offset 0).

The definition of A076616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076616.P17565966229429334099

`ogf((2x^3+4x^4-8x^5)/(1-6x+12x^2-8x^3))`
-/

namespace A076616.P17565966229429334099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, 4, -8] [1, -6, 12, -8] n

end

end A076616.P17565966229429334099

namespace A076616

/-- `ogf((2x^3+4x^4-8x^5)/(1-6x+12x^2-8x^3))` -/
def P17565966229429334099.Spec : Prop :=
  ∀ n, P17565966229429334099.a n = A076616 n

end A076616

/-! ## A076616.P17967597849480191040

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=16, a(5)=64`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076616

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P17967597849480191040.Spec : Prop :=
  ∀ n, P17967597849480191040.a n = A076616 n

theorem P17967597849480191040.correct : P17967597849480191040.Spec := by
  intro n
  simp only [A076616]

end A076616

/-! ## A076616.P9844580881192079017

`Δ[A178987(A233583(A233583(n+1)))]`
-/

namespace A076616.P9844580881192079017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (A233583 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076616.P9844580881192079017

namespace A076616

/-- `Δ[A178987(A233583(A233583(n+1)))]` -/
def P9844580881192079017.Spec : Prop :=
  ∀ n, P9844580881192079017.a n = A076616 n

end A076616

/-! ## A076616.P7845650325854487158

`(A080929(n)%A084851(n))%A080929(n)`
-/

namespace A076616.P7845650325854487158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A080929 n) (A084851 n)) (A080929 n)

end

end A076616.P7845650325854487158

namespace A076616

/-- `(A080929(n)%A084851(n))%A080929(n)` -/
def P7845650325854487158.Spec : Prop :=
  ∀ n, P7845650325854487158.a n = A076616 n

end A076616

/-! ## A076616.P4002789772424615821

`A166444(n)*A289207(A161680(n))`
-/

namespace A076616.P4002789772424615821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n * A289207 (A161680 n).toNat

end

end A076616.P4002789772424615821

namespace A076616

/-- `A166444(n)*A289207(A161680(n))` -/
def P4002789772424615821.Spec : Prop :=
  ∀ n, P4002789772424615821.a n = A076616 n

end A076616

/-! ## A076616.P15728601796060176164

`A195581(abs(2-A000217(n+1)))`
-/

namespace A076616.P15728601796060176164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 |2 - A000217 (n + 1)|.toNat

end

end A076616.P15728601796060176164

namespace A076616

/-- `A195581(abs(2-A000217(n+1)))` -/
def P15728601796060176164.Spec : Prop :=
  ∀ n, P15728601796060176164.a n = A076616 n

end A076616

/-! ## A076616.P1302973681522289465

`A195581(A034856(A028310(n)))`
-/

namespace A076616.P1302973681522289465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 (A034856 (A028310 n).toNat).toNat

end

end A076616.P1302973681522289465

namespace A076616

/-- `A195581(A034856(A028310(n)))` -/
def P1302973681522289465.Spec : Prop :=
  ∀ n, P1302973681522289465.a n = A076616 n

end A076616

/-! ## A076616.P15334682541533432709

`A195581(eq[A025581(n), A033185(n+1)])`
-/

namespace A076616.P15334682541533432709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076616.P15334682541533432709

namespace A076616

/-- `A195581(eq[A025581(n), A033185(n+1)])` -/
def P15334682541533432709.Spec : Prop :=
  ∀ n, P15334682541533432709.a n = A076616 n

end A076616

/-!
# A076617: Numbers k such that sum of the divisors d of k divides 1 + 2 + ... + k = k(k+1)/2.

The programs for A076617, there is no canonical definition to state claims against.
-/

/-! ## A076617.P12325275830800050101

`lt[C(n+2, 2)%A000203(n+1), 1]+1`
-/

namespace A076617.P12325275830800050101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 2) 2 : ℤ) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076617.P12325275830800050101

/-! ## A076617.P7782999257273872000

`eq[0, A232324(n+1)]+1`
-/

namespace A076617.P7782999257273872000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076617.P7782999257273872000

/-! ## A076617.P17208646205831105048

`eq[A000007(n), A232324(A028310(n))]`
-/

namespace A076617.P17208646205831105048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076617.P17208646205831105048

/-! ## A076617.P4630661061229229608

`eq[A000038(n), A232324(A028310(n))]`
-/

namespace A076617.P4630661061229229608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076617.P4630661061229229608

/-! ## A076617.P1236361422549464092

`lt[A232324(n+1), A233267(2*n+3)]+1`
-/

namespace A076617.P1236361422549464092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233267 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A076617.P1236361422549464092

/-!
# A076618: Least x>1 such that x^d == 1 (mod d) for each divisor d of n.

The programs for A076618, the canonical program `A076618.P8099091245670450071` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076618 has offset 1).

The definition of A076618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076618.P8099091245670450071

`A007947(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076618

/-- `A007947(n+1)+1` -/
def P8099091245670450071.Spec : Prop :=
  ∀ n, P8099091245670450071.a n = A076618 (n + 1)

theorem P8099091245670450071.correct : P8099091245670450071.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel]

end A076618

/-! ## A076618.P13940865272049711957

`∏{p}[1+n, #]+1`
-/

namespace A076618.P13940865272049711957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 1

end

end A076618.P13940865272049711957

namespace A076618

/-- `∏{p}[1+n, #]+1` -/
def P13940865272049711957.Spec : Prop :=
  ∀ n, (P13940865272049711957.a n : ℤ) = A076618 (n + 1)

theorem P13940865272049711957.correct : P13940865272049711957.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel, A076618.P13940865272049711957.f1, A076618.P13940865272049711957.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076618

/-! ## A076618.P4798545386932627258

`exp(∑{p}[1+n, log(#)])+1`
-/

namespace A076618.P4798545386932627258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)) + 1

end

end A076618.P4798545386932627258

namespace A076618

/-- `exp(∑{p}[1+n, log(#)])+1` -/
def P4798545386932627258.Spec : Prop :=
  ∀ n, P4798545386932627258.a n = (A076618 (n + 1) : ℝ)

end A076618

/-! ## A076618.P12854993384348608970

`2^∑{p}[n+1, log2(#)]+1`
-/

namespace A076618.P12854993384348608970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) + 1

end

end A076618.P12854993384348608970

namespace A076618

/-- `2^∑{p}[n+1, log2(#)]+1` -/
def P12854993384348608970.Spec : Prop :=
  ∀ n, P12854993384348608970.a n = (A076618 (n + 1) : ℝ)

end A076618

/-! ## A076618.P15203853258113722555

`1+A007947(n+1)`
-/

namespace A076618.P15203853258113722555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007947 (n + 1)

end

end A076618.P15203853258113722555

namespace A076618

/-- `1+A007947(n+1)` -/
def P15203853258113722555.Spec : Prop :=
  ∀ n, P15203853258113722555.a n = A076618 (n + 1)

theorem P15203853258113722555.correct : P15203853258113722555.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel, A076618.P15203853258113722555.a, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076618

/-! ## A076618.P8015506517244446181

`A075423(n+1)+2`
-/

namespace A076618.P8015506517244446181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1) + 2

end

end A076618.P8015506517244446181

namespace A076618

/-- `A075423(n+1)+2` -/
def P8015506517244446181.Spec : Prop :=
  ∀ n, P8015506517244446181.a n = A076618 (n + 1)

theorem P8015506517244446181.correct : P8015506517244446181.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel, A076618.P8015506517244446181.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076618

/-! ## A076618.P14233776694062100529

`A073353(n+1)-n`
-/

namespace A076618.P14233776694062100529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n : ℤ)

end

end A076618.P14233776694062100529

namespace A076618

/-- `A073353(n+1)-n` -/
def P14233776694062100529.Spec : Prop :=
  ∀ n, P14233776694062100529.a n = A076618 (n + 1)

theorem P14233776694062100529.correct : P14233776694062100529.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel, A076618.P14233776694062100529.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A073353, A073353.P4516188460080726977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076618

/-! ## A076618.P6339540173130431006

`A020725(∏{p}[n+1, #])`
-/

namespace A076618.P6339540173130431006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P6339540173130431006

namespace A076618

/-- `A020725(∏{p}[n+1, #])` -/
def P6339540173130431006.Spec : Prop :=
  ∀ n, P6339540173130431006.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P14641208734198536322

`A039696(∏{p}[n+1, #])`
-/

namespace A076618.P14641208734198536322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039696 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P14641208734198536322

namespace A076618

/-- `A039696(∏{p}[n+1, #])` -/
def P14641208734198536322.Spec : Prop :=
  ∀ n, P14641208734198536322.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P13607984279543132464

`A076332(∏{p}[n+1, #])`
-/

namespace A076618.P13607984279543132464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076332 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P13607984279543132464

namespace A076618

/-- `A076332(∏{p}[n+1, #])` -/
def P13607984279543132464.Spec : Prop :=
  ∀ n, P13607984279543132464.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P14890026621899816262

`A097377(∏{p}[n+1, #])`
-/

namespace A076618.P14890026621899816262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P14890026621899816262

namespace A076618

/-- `A097377(∏{p}[n+1, #])` -/
def P14890026621899816262.Spec : Prop :=
  ∀ n, P14890026621899816262.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P15743689553872611093

`A105587(∏{p}[n+1, #])`
-/

namespace A076618.P15743689553872611093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P15743689553872611093

namespace A076618

/-- `A105587(∏{p}[n+1, #])` -/
def P15743689553872611093.Spec : Prop :=
  ∀ n, P15743689553872611093.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P1728199612915868822

`A373185(∏{p}[n+1, #])`
-/

namespace A076618.P1728199612915868822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373185 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076618.P1728199612915868822

namespace A076618

/-- `A373185(∏{p}[n+1, #])` -/
def P1728199612915868822.Spec : Prop :=
  ∀ n, P1728199612915868822.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P12118068523235833905

`abs(A062953(n+1))+1`
-/

namespace A076618.P12118068523235833905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1)| + 1

end

end A076618.P12118068523235833905

namespace A076618

/-- `abs(A062953(n+1))+1` -/
def P12118068523235833905.Spec : Prop :=
  ∀ n, P12118068523235833905.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P9573241643976850759

`sqrt(A078615(n+1))+1`
-/

namespace A076618.P9573241643976850759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) + 1

end

end A076618.P9573241643976850759

namespace A076618

/-- `sqrt(A078615(n+1))+1` -/
def P9573241643976850759.Spec : Prop :=
  ∀ n, P9573241643976850759.a n = (A076618 (n + 1) : ℝ)

end A076618

/-! ## A076618.P4990144584284982088

`2-A066503(n+1)+n`
-/

namespace A076618.P4990144584284982088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A066503 (n + 1) + (n : ℤ)

end

end A076618.P4990144584284982088

namespace A076618

/-- `2-A066503(n+1)+n` -/
def P4990144584284982088.Spec : Prop :=
  ∀ n, P4990144584284982088.a n = A076618 (n + 1)

theorem P4990144584284982088.correct : P4990144584284982088.Spec := by
  intro n
  simp only [A076618, Nat.add_sub_cancel, A076618.P4990144584284982088.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076618

/-! ## A076618.P15941441266370434040

`A076334(n)+a(n-1)` with `a(0)=2`
-/

namespace A076618.P15941441266370434040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A076334 n + a (n - 1)

end

end A076618.P15941441266370434040

namespace A076618

/-- `A076334(n)+a(n-1)` -/
def P15941441266370434040.Spec : Prop :=
  ∀ n, P15941441266370434040.a n = A076618 (n + 1)

theorem P15941441266370434040.correct : P15941441266370434040.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A076618, Nat.add_sub_cancel, A076618.P15941441266370434040.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076334, A076334.P17741654376477125512.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A076618, Nat.add_sub_cancel, A076618.P15941441266370434040.a, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076334, A076334.P17741654376477125512.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A076618

/-! ## A076618.P13876852976875037430

`∏{d}[n+1, A089026(#)]+1`
-/

namespace A076618.P13876852976875037430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 d + 1

end

end A076618.P13876852976875037430

namespace A076618

/-- `∏{d}[n+1, A089026(#)]+1` -/
def P13876852976875037430.Spec : Prop :=
  ∀ n, P13876852976875037430.a n = A076618 (n + 1)

end A076618

/-! ## A076618.P4991778007352975990

`(n+1)/A003557(n+1)+1`
-/

namespace A076618.P4991778007352975990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ) + 1

end

end A076618.P4991778007352975990

namespace A076618

/-- `(n+1)/A003557(n+1)+1` -/
def P4991778007352975990.Spec : Prop :=
  ∀ n, P4991778007352975990.a n = (A076618 (n + 1) : ℚ)

end A076618

/-! ## A076618.P1881235705369343568

`A064549(n+1)/(n+1)+1`
-/

namespace A076618.P1881235705369343568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A076618.P1881235705369343568

namespace A076618

/-- `A064549(n+1)/(n+1)+1` -/
def P1881235705369343568.Spec : Prop :=
  ∀ n, P1881235705369343568.a n = (A076618 (n + 1) : ℚ)

end A076618

/-!
# A076619: Least x>1 such that x^d == 1 (mod d) for each divisor d of n, for all nonsquarefree numbers n (cf. A013929).

The programs for A076619, the canonical program `A076619.P16719581789657697159` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076619 has offset 1).

The definition of A076619 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076619.P16719581789657697159

`A076333(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076619

/-- `A076333(n+1)+1` -/
def P16719581789657697159.Spec : Prop :=
  ∀ n, P16719581789657697159.a n = A076619 (n + 1)

theorem P16719581789657697159.correct : P16719581789657697159.Spec := by
  intro n
  simp only [A076619, Nat.add_sub_cancel]

end A076619

/-! ## A076619.P2339885814314271967

`A076618(A013929(n+1))`
-/

namespace A076619.P2339885814314271967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A013929 (n + 1)).toNat

end

end A076619.P2339885814314271967

namespace A076619

/-- `A076618(A013929(n+1))` -/
def P2339885814314271967.Spec : Prop :=
  ∀ n, P2339885814314271967.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P10096807093463357911

`∏{p}[A013929(n+1), #]+1`
-/

namespace A076619.P10096807093463357911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A076619.P10096807093463357911

namespace A076619

/-- `∏{p}[A013929(n+1), #]+1` -/
def P10096807093463357911.Spec : Prop :=
  ∀ n, (P10096807093463357911.a n : ℤ) = A076619 (n + 1)

end A076619

/-! ## A076619.P17876947944373842628

`∏{p}[A015049(n+1), #]+1`
-/

namespace A076619.P17876947944373842628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A076619.P17876947944373842628

namespace A076619

/-- `∏{p}[A015049(n+1), #]+1` -/
def P17876947944373842628.Spec : Prop :=
  ∀ n, (P17876947944373842628.a n : ℤ) = A076619 (n + 1)

end A076619

/-! ## A076619.P16244547163766327458

`∏{p}[A015050(n+1), #]+1`
-/

namespace A076619.P16244547163766327458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A076619.P16244547163766327458

namespace A076619

/-- `∏{p}[A015050(n+1), #]+1` -/
def P16244547163766327458.Spec : Prop :=
  ∀ n, (P16244547163766327458.a n : ℤ) = A076619 (n + 1)

end A076619

/-! ## A076619.P8596794574519384636

`∏{p}[A015051(n+1), #]+1`
-/

namespace A076619.P8596794574519384636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A076619.P8596794574519384636

namespace A076619

/-- `∏{p}[A015051(n+1), #]+1` -/
def P8596794574519384636.Spec : Prop :=
  ∀ n, (P8596794574519384636.a n : ℤ) = A076619 (n + 1)

end A076619

/-! ## A076619.P10350263413751419215

`∏{p}[lt[1, A005361(n+1)]+1, #]+1`
-/

namespace A076619.P10350263413751419215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + 1

end

end A076619.P10350263413751419215

namespace A076619

/-- `∏{p}[lt[1, A005361(n+1)]+1, #]+1` -/
def P10350263413751419215.Spec : Prop :=
  ∀ n, (P10350263413751419215.a n : ℤ) = A076619 (n + 1)

end A076619

/-! ## A076619.P2792318239959376613

`A007947(A015049(n+1))+1`
-/

namespace A076619.P2792318239959376613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A015049 (n + 1)).toNat + 1

end

end A076619.P2792318239959376613

namespace A076619

/-- `A007947(A015049(n+1))+1` -/
def P2792318239959376613.Spec : Prop :=
  ∀ n, P2792318239959376613.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P18295126577701980522

`A007947(A015051(n+1))+1`
-/

namespace A076619.P18295126577701980522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A015051 (n + 1)).toNat + 1

end

end A076619.P18295126577701980522

namespace A076619

/-- `A007947(A015051(n+1))+1` -/
def P18295126577701980522.Spec : Prop :=
  ∀ n, P18295126577701980522.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P12708235114442987191

`A007947(A362041(n+1))+1`
-/

namespace A076619.P12708235114442987191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A362041 (n + 1)).toNat + 1

end

end A076619.P12708235114442987191

namespace A076619

/-- `A007947(A362041(n+1))+1` -/
def P12708235114442987191.Spec : Prop :=
  ∀ n, P12708235114442987191.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P14968603028426602843

`A007947(lt[1, A005361(n+1)]+1)+1`
-/

namespace A076619.P14968603028426602843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A076619.P14968603028426602843

namespace A076619

/-- `A007947(lt[1, A005361(n+1)]+1)+1` -/
def P14968603028426602843.Spec : Prop :=
  ∀ n, P14968603028426602843.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P13313398714245786169

`A013929(n+1)/A084936(n+1)+1`
-/

namespace A076619.P13313398714245786169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A084936 (n + 1) : ℚ) + 1

end

end A076619.P13313398714245786169

namespace A076619

/-- `A013929(n+1)/A084936(n+1)+1` -/
def P13313398714245786169.Spec : Prop :=
  ∀ n, P13313398714245786169.a n = (A076619 (n + 1) : ℚ)

end A076619

/-! ## A076619.P2807321558075290300

`A007947(lt[A008683(n+1)², 1]+1)+1`
-/

namespace A076619.P2807321558075290300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 1

end

end A076619.P2807321558075290300

namespace A076619

/-- `A007947(lt[A008683(n+1)², 1]+1)+1` -/
def P2807321558075290300.Spec : Prop :=
  ∀ n, P2807321558075290300.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P11335151116973839624

`A007947(A162966(n+2))+1`
-/

namespace A076619.P11335151116973839624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A162966 (n + 2)).toNat + 1

end

end A076619.P11335151116973839624

namespace A076619

/-- `A007947(A162966(n+2))+1` -/
def P11335151116973839624.Spec : Prop :=
  ∀ n, P11335151116973839624.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P8568570865050369346

`A076618(A015049(n+1))`
-/

namespace A076619.P8568570865050369346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A015049 (n + 1)).toNat

end

end A076619.P8568570865050369346

namespace A076619

/-- `A076618(A015049(n+1))` -/
def P8568570865050369346.Spec : Prop :=
  ∀ n, P8568570865050369346.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P15563938844420577915

`A076618(A015050(n+1))`
-/

namespace A076619.P15563938844420577915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A015050 (n + 1)).toNat

end

end A076619.P15563938844420577915

namespace A076619

/-- `A076618(A015050(n+1))` -/
def P15563938844420577915.Spec : Prop :=
  ∀ n, P15563938844420577915.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P15871610896536684997

`A076618(A015051(n+1))`
-/

namespace A076619.P15871610896536684997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A015051 (n + 1)).toNat

end

end A076619.P15871610896536684997

namespace A076619

/-- `A076618(A015051(n+1))` -/
def P15871610896536684997.Spec : Prop :=
  ∀ n, P15871610896536684997.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P2712755839443927914

`A020725(A076333(n+1))`
-/

namespace A076619.P2712755839443927914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A076333 (n + 1)).toNat

end

end A076619.P2712755839443927914

namespace A076619

/-- `A020725(A076333(n+1))` -/
def P2712755839443927914.Spec : Prop :=
  ∀ n, P2712755839443927914.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P17987771236473564199

`A076618(A384064(n+1))`
-/

namespace A076619.P17987771236473564199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A384064 (n + 1)).toNat

end

end A076619.P17987771236473564199

namespace A076619

/-- `A076618(A384064(n+1))` -/
def P17987771236473564199.Spec : Prop :=
  ∀ n, P17987771236473564199.a n = A076619 (n + 1)

end A076619

/-! ## A076619.P15966925150240226495

`A076618(A362041(n+1))`
-/

namespace A076619.P15966925150240226495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A362041 (n + 1)).toNat

end

end A076619.P15966925150240226495

namespace A076619

/-- `A076618(A362041(n+1))` -/
def P15966925150240226495.Spec : Prop :=
  ∀ n, P15966925150240226495.a n = A076619 (n + 1)

end A076619

/-!
# A076620: Coefficient of x^a(n) in (x+1)*(x+2)*...*(x+n) is the largest one.

The programs for A076620, there is no canonical definition to state claims against.
-/

/-! ## A076620.P15616216145078000731

`∑[char[A341803(n+1)-1]]`
-/

namespace A076620.P15616216145078000731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341803 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076620.P15616216145078000731

/-! ## A076620.P16166889836809107697

`∑[char[A341803(n)-1]]-1`
-/

namespace A076620.P16166889836809107697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341803 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A076620.P16166889836809107697

/-! ## A076620.P14975488199414195995

`A247808(∑[char[A341803(n)-1]])`
-/

namespace A076620.P14975488199414195995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341803 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076620.P14975488199414195995

/-! ## A076620.P3272309668740319350

`floor(log2(log2(A304705(2*n+3))))`
-/

namespace A076620.P3272309668740319350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A304705 (2 * n + 3) : ℝ))⌋

end

end A076620.P3272309668740319350

/-! ## A076620.P12647125877728281725

`A004218(A164875(n+1)-A164884(n))`
-/

namespace A076620.P12647125877728281725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A164875 (n + 1) - A164884 n).toNat

end

end A076620.P12647125877728281725

/-! ## A076620.P818039906384265173

`A004218(∑[A008955(∏{e}[n+1, #+1])])`
-/

namespace A076620.P818039906384265173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P818039906384265173

/-! ## A076620.P5815635484139018094

`A004218(∑[A279890(∏{e}[n+1, #+1])])`
-/

namespace A076620.P5815635484139018094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279890 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P5815635484139018094

/-! ## A076620.P14115551566740372149

`A004218(∑[A000570(∏{e}[n+1, #+1])])`
-/

namespace A076620.P14115551566740372149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000570 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P14115551566740372149

/-! ## A076620.P844840829504656422

`A004218(∑[A149497(A005361(n+1))])`
-/

namespace A076620.P844840829504656422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149497 (A005361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P844840829504656422

/-! ## A076620.P18114159208481496669

`A000523(A056811(∑[n+4]))`
-/

namespace A076620.P18114159208481496669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A056811 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076620.P18114159208481496669

/-! ## A076620.P12099459983021264852

`A000195(A000196(∑[n+7]))`
-/

namespace A076620.P12099459983021264852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076620.P12099459983021264852

/-! ## A076620.P17667062688415357987

`A000520(∑[or(3, A154124(n))])`
-/

namespace A076620.P17667062688415357987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A154124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P17667062688415357987

/-! ## A076620.P17204578152418005452

`A000520(∑[A154124(n)+2])`
-/

namespace A076620.P17204578152418005452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P17204578152418005452

/-! ## A076620.P14459880422233106277

`A225541(∑[A328830(or(3, n²))])`
-/

namespace A076620.P14459880422233106277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (Nat.lor 3 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076620.P14459880422233106277

/-! ## A076620.P17699831102282057662

`A056556(A319951(n)+A135660(n+1))`
-/

namespace A076620.P17699831102282057662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A319951 n + A135660 (n + 1)).toNat

end

end A076620.P17699831102282057662

/-!
# A076621: Least square greater than the product of two successive primes.

The programs for A076621, the canonical program `A076621.P15526451203050093730` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076621 has offset 1).

The definition of A076621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076621.P5236045588916043212

`A006094(n+1)+A074927(n+1)`
-/

namespace A076621.P5236045588916043212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A074927 (n + 1)

end

end A076621.P5236045588916043212

namespace A076621

/-- `A006094(n+1)+A074927(n+1)` -/
def P5236045588916043212.Spec : Prop :=
  ∀ n, P5236045588916043212.a n = A076621 (n + 1)

theorem P5236045588916043212.correct : P5236045588916043212.Spec := by
  intro n
  simp only [A076621, Nat.add_sub_cancel, A076621.P5236045588916043212.a, A076621.P15526451203050093730.a, A006094, A006094.P10257567645245129766.a, A048761, A048761.P914736112300567897.a, A074927, A074927.P44526691509878723.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A076621

/-! ## A076621.P15526451203050093730

`A048761(A006094(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076621

/-- `A048761(A006094(n+1))` -/
def P15526451203050093730.Spec : Prop :=
  ∀ n, P15526451203050093730.a n = A076621 (n + 1)

theorem P15526451203050093730.correct : P15526451203050093730.Spec := by
  intro n
  simp only [A076621, Nat.add_sub_cancel]

end A076621

/-! ## A076621.P14029864594725106460

`(A078444(n+1)+1)²`
-/

namespace A076621.P14029864594725106460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078444 (n + 1) + 1) ^ 2

end

end A076621.P14029864594725106460

namespace A076621

/-- `(A078444(n+1)+1)²` -/
def P14029864594725106460.Spec : Prop :=
  ∀ n, P14029864594725106460.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P6731057825486989971

`floor(sqrt(A126199(n+1)))²`
-/

namespace A076621.P6731057825486989971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A126199 (n + 1)) ^ 2

end

end A076621.P6731057825486989971

namespace A076621

/-- `floor(sqrt(A126199(n+1)))²` -/
def P6731057825486989971.Spec : Prop :=
  ∀ n, P6731057825486989971.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P2929845450743256884

`floor(sqrt(A180617(n+1)))²`
-/

namespace A076621.P2929845450743256884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A180617 (n + 1)) ^ 2

end

end A076621.P2929845450743256884

namespace A076621

/-- `floor(sqrt(A180617(n+1)))²` -/
def P2929845450743256884.Spec : Prop :=
  ∀ n, P2929845450743256884.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P2610124788411796178

`floor(sqrt(A286624(n+1)))²`
-/

namespace A076621.P2610124788411796178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A286624 (n + 1)) ^ 2

end

end A076621.P2610124788411796178

namespace A076621

/-- `floor(sqrt(A286624(n+1)))²` -/
def P2610124788411796178.Spec : Prop :=
  ∀ n, P2610124788411796178.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P13079052775947442953

`floor(sqrt(A292926(n+1)))²`
-/

namespace A076621.P13079052775947442953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292926 (n + 1)) ^ 2

end

end A076621.P13079052775947442953

namespace A076621

/-- `floor(sqrt(A292926(n+1)))²` -/
def P13079052775947442953.Spec : Prop :=
  ∀ n, P13079052775947442953.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P5086884886533892305

`ceil(A001043(n+1)/2)²`
-/

namespace A076621.P5086884886533892305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001043 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A076621.P5086884886533892305

namespace A076621

/-- `ceil(A001043(n+1)/2)²` -/
def P5086884886533892305.Spec : Prop :=
  ∀ n, P5086884886533892305.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P13888716921669250728

`(A162800(n)+A115061(n+1))²`
-/

namespace A076621.P13888716921669250728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 n + A115061 (n + 1)) ^ 2

end

end A076621.P13888716921669250728

namespace A076621

/-- `(A162800(n)+A115061(n+1))²` -/
def P13888716921669250728.Spec : Prop :=
  ∀ n, P13888716921669250728.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P4768934024335065988

`(A130291(n+1)+A005097(n+1))²`
-/

namespace A076621.P4768934024335065988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130291 (n + 1) + A005097 (n + 1)) ^ 2

end

end A076621.P4768934024335065988

namespace A076621

/-- `(A130291(n+1)+A005097(n+1))²` -/
def P4768934024335065988.Spec : Prop :=
  ∀ n, P4768934024335065988.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P15538778106389156600

`(A111333(n+1)-A283623(n+1))²`
-/

namespace A076621.P15538778106389156600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111333 (n + 1) - A283623 (n + 1)) ^ 2

end

end A076621.P15538778106389156600

namespace A076621

/-- `(A111333(n+1)-A283623(n+1))²` -/
def P15538778106389156600.Spec : Prop :=
  ∀ n, P15538778106389156600.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P8303966813265476438

`ceil(sqrt(A023515(n+2)))²`
-/

namespace A076621.P8303966813265476438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023515 (n + 2) : ℝ)⌉ ^ 2

end

end A076621.P8303966813265476438

namespace A076621

/-- `ceil(sqrt(A023515(n+2)))²` -/
def P8303966813265476438.Spec : Prop :=
  ∀ n, P8303966813265476438.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P14652740253885697065

`ceil(sqrt(A023523(n+2)))²`
-/

namespace A076621.P14652740253885697065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023523 (n + 2) : ℝ)⌉ ^ 2

end

end A076621.P14652740253885697065

namespace A076621

/-- `ceil(sqrt(A023523(n+2)))²` -/
def P14652740253885697065.Spec : Prop :=
  ∀ n, P14652740253885697065.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P11603113380559488450

`ceil(sqrt(A116570(2*n)))²`
-/

namespace A076621.P11603113380559488450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A116570 (2 * n) : ℝ)⌉ ^ 2

end

end A076621.P11603113380559488450

namespace A076621

/-- `ceil(sqrt(A116570(2*n)))²` -/
def P11603113380559488450.Spec : Prop :=
  ∀ n, P11603113380559488450.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P16775181096963018573

`ceil(sqrt(A033476(2*n+1)))²`
-/

namespace A076621.P16775181096963018573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A033476 (2 * n + 1) : ℝ)⌉ ^ 2

end

end A076621.P16775181096963018573

namespace A076621

/-- `ceil(sqrt(A033476(2*n+1)))²` -/
def P16775181096963018573.Spec : Prop :=
  ∀ n, P16775181096963018573.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P11360368898355918739

`ceil(sqrt(A333747(2*n+1)))²`
-/

namespace A076621.P11360368898355918739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A333747 (2 * n + 1) : ℝ)⌉ ^ 2

end

end A076621.P11360368898355918739

namespace A076621

/-- `ceil(sqrt(A333747(2*n+1)))²` -/
def P11360368898355918739.Spec : Prop :=
  ∀ n, P11360368898355918739.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P10765521331925070547

`A063932(A008864(n+1))²`
-/

namespace A076621.P10765521331925070547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (A008864 (n + 1)).toNat ^ 2

end

end A076621.P10765521331925070547

namespace A076621

/-- `A063932(A008864(n+1))²` -/
def P10765521331925070547.Spec : Prop :=
  ∀ n, P10765521331925070547.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P13603617753886438992

`A008794(A092949(n+1))`
-/

namespace A076621.P13603617753886438992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A092949 (n + 1)).toNat

end

end A076621.P13603617753886438992

namespace A076621

/-- `A008794(A092949(n+1))` -/
def P13603617753886438992.Spec : Prop :=
  ∀ n, P13603617753886438992.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P5510464417963042922

`A001057(A001043(n+1))²`
-/

namespace A076621.P5510464417963042922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A001043 (n + 1)).toNat ^ 2

end

end A076621.P5510464417963042922

namespace A076621

/-- `A001057(A001043(n+1))²` -/
def P5510464417963042922.Spec : Prop :=
  ∀ n, P5510464417963042922.a n = A076621 (n + 1)

end A076621

/-! ## A076621.P15336326714598515713

`A008619(A001043(n+1)-1)²`
-/

namespace A076621.P15336326714598515713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001043 (n + 1) - 1).toNat ^ 2

end

end A076621.P15336326714598515713

namespace A076621

/-- `A008619(A001043(n+1)-1)²` -/
def P15336326714598515713.Spec : Prop :=
  ∀ n, P15336326714598515713.a n = A076621 (n + 1)

end A076621

/-!
# A076622: Coefficient of x^a(n) in (x-1)*(x-2)*...*(x-n) is the largest one (not in absolute value).

The programs for A076622, there is no canonical definition to state claims against.
-/

/-! ## A076622.P2058330018482470749

`A012265(A086520(3*n+2))%(2*A257564(n)+2)`
-/

namespace A076622.P2058330018482470749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012265 (A086520 (3 * n + 2)).toNat) (2 * A257564 n + 2)

end

end A076622.P2058330018482470749

/-! ## A076622.P14830651060707553301

`∑[A033999(A303784((n+2)²))]`
-/

namespace A076622.P14830651060707553301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A303784 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076622.P14830651060707553301

/-! ## A076622.P6946774901129371864

`A008611(A325933(n))%A117835(n+2)`
-/

namespace A076622.P6946774901129371864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A325933 n).toNat) (A117835 (n + 2))

end

end A076622.P6946774901129371864

/-! ## A076622.P4768608988273135987

`gcd(A000038(6*n²), A008611(A325933(n)))`
-/

namespace A076622.P4768608988273135987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (6 * n ^ 2)) (A008611 (A325933 n).toNat)

end

end A076622.P4768608988273135987

/-! ## A076622.P6517774869840655375

`A084115(A060547(n+1))`
-/

namespace A076622.P6517774869840655375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (A060547 (n + 1)).toNat

end

end A076622.P6517774869840655375

/-!
# A076623: Total number of left truncatable primes (without zeros) in base n.

The programs for A076623, there is no canonical definition to state claims against.
-/

/-! ## A076623.P7890314595784866271

`xor(A057567(A287491(n)), A287600(n))`
-/

namespace A076623.P7890314595784866271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057567 (A287491 n).toNat) (A287600 n)

end

end A076623.P7890314595784866271

/-!
# A076624: Numbers k such that the sum of the non-divisors of k between 1 and k is a perfect square.

The programs for A076624, there is no canonical definition to state claims against.
-/

/-! ## A076624.P3945586284534248881

`∩[A191120(n+1), ∑[A293012(n)]]`
-/

namespace A076624.P3945586284534248881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076624.P3945586284534248881

/-! ## A076624.P3225284417137761028

`A256632(A278666(n))`
-/

namespace A076624.P3225284417137761028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256632 (A278666 n).toNat

end

end A076624.P3225284417137761028

/-!
# A076625: Maximum of the absolute values of the coefficients of P(n,x) where P(n,x) = 4^(n-1)*Product_{k=0..n} (x - cos(k*Pi/n)^2).

The programs for A076625, there is no canonical definition to state claims against.
-/

/-! ## A076625.P6350812260696741298

`A029936(A150935(n+1))`
-/

namespace A076625.P6350812260696741298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029936 (A150935 (n + 1)).toNat

end

end A076625.P6350812260696741298

/-!
# A076626: Array of coefficients of polynomials p(n,x) = 2^(n-1)*Product_{i=0..n} (x - cos(i*Pi/n)) of degree (n+1) with P(-1,x) = 1, P(0,x) = 0.

The programs for A076626, there is no canonical definition to state claims against.
-/

/-! ## A076626.P7573620140193143149

`2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1, a(4)=0, a(5)=1`
-/

namespace A076626.P7573620140193143149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1, 0, 1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A076626.P7573620140193143149

/-! ## A076626.P2794658282627712916

`A136523(n)-A137422(n)`
-/

namespace A076626.P2794658282627712916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 n - A137422 n

end

end A076626.P2794658282627712916

/-! ## A076626.P17629277302884377191

`A201863(∑[2*n]%comp[∑[n]])`
-/

namespace A076626.P17629277302884377191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201863 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A076626.P17629277302884377191

/-! ## A076626.P5423209350741274351

`A201863(∑[char[∑[n]]]²-(n+1))`
-/

namespace A076626.P5423209350741274351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201863 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A076626.P5423209350741274351

/-! ## A076626.P15043806804582062964

`and(-1, A201863(A061579(n)))`
-/

namespace A076626.P15043806804582062964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201863 (A061579 n).toNat)

end

end A076626.P15043806804582062964

/-! ## A076626.P18317161839080895521

`A128174(n+1)*A201863(A061579(n))`
-/

namespace A076626.P18317161839080895521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A201863 (A061579 n).toNat

end

end A076626.P18317161839080895521

/-! ## A076626.P14134705727236316825

`A000108(C(2, n))*A201863(A061579(n))`
-/

namespace A076626.P14134705727236316825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A201863 (A061579 n).toNat

end

end A076626.P14134705727236316825

/-! ## A076626.P9352991794541411809

`A007318(C(2, n))*A201863(A061579(n))`
-/

namespace A076626.P9352991794541411809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201863 (A061579 n).toNat

end

end A076626.P9352991794541411809

/-!
# A076627: a(n) = tau(n)*(n-tau(n)), where tau(n) = number of divisors of n (A000005).

The programs for A076627, the canonical program `A076627.P17176873405788614129` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076627 has offset 1).

The definition of A076627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*(n+1-A000005(n+1))` (program `A076627.P17176873405788614129`, by `A076627.P17176873405788614129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076627.P920160520709160437

`A000005(n+1)*A049820(n+1)`
-/

namespace A076627.P920160520709160437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A049820 (n + 1)

end

end A076627.P920160520709160437

namespace A076627

/-- `A000005(n+1)*A049820(n+1)` -/
def P920160520709160437.Spec : Prop :=
  ∀ n, P920160520709160437.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P17176873405788614129

`A000005(n+1)*(n+1-A000005(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A076627

/-- `A000005(n+1)*(n+1-A000005(n+1))` -/
def P17176873405788614129.Spec : Prop :=
  ∀ n, P17176873405788614129.a n = A076627 (n + 1)

theorem P17176873405788614129.correct : P17176873405788614129.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel]

end A076627

/-! ## A076627.P17014992742785977943

`(n-∑{d}[n+1, n²%#])*∏{e}[n+1, #+1]`
-/

namespace A076627.P17014992742785977943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A076627.P17014992742785977943

namespace A076627

/-- `(n-∑{d}[n+1, n²%#])*∏{e}[n+1, #+1]` -/
def P17014992742785977943.Spec : Prop :=
  ∀ n, P17014992742785977943.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P15597370846217718363

`(n+1-∏{e}[n+1, #+1])*∏{e}[n+1, #+1]`
-/

namespace A076627.P15597370846217718363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A076627.P15597370846217718363

namespace A076627

/-- `(n+1-∏{e}[n+1, #+1])*∏{e}[n+1, #+1]` -/
def P15597370846217718363.Spec : Prop :=
  ∀ n, P15597370846217718363.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P16620007517440471756

`∑[n+1]-A349360(n+1)`
-/

namespace A076627.P16620007517440471756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A349360 (n + 1)

end

end A076627.P16620007517440471756

namespace A076627

/-- `∑[n+1]-A349360(n+1)` -/
def P16620007517440471756.Spec : Prop :=
  ∀ n, P16620007517440471756.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P8999610126490703122

`(n-∑{d}[n+1, n²%#])*Δ[A006218(n)]`
-/

namespace A076627.P8999610126490703122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ)) * (f2 (n + 1) - f2 n)

end

end A076627.P8999610126490703122

namespace A076627

/-- `(n-∑{d}[n+1, n²%#])*Δ[A006218(n)]` -/
def P8999610126490703122.Spec : Prop :=
  ∀ n, P8999610126490703122.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P16479178600638233410

`(n+1)*∏{e}[n+1, #+1]-A035116(n+1)`
-/

namespace A076627.P16479178600638233410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) - A035116 (n + 1)

end

end A076627.P16479178600638233410

namespace A076627

/-- `(n+1)*∏{e}[n+1, #+1]-A035116(n+1)` -/
def P16479178600638233410.Spec : Prop :=
  ∀ n, P16479178600638233410.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P5582143935494347903

`A253145(n)%A349360(n+1)`
-/

namespace A076627.P5582143935494347903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A349360 (n + 1))

end

end A076627.P5582143935494347903

namespace A076627

/-- `A253145(n)%A349360(n+1)` -/
def P5582143935494347903.Spec : Prop :=
  ∀ n, P5582143935494347903.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P14148980772750540463

`Δ[A006218(n)]*A049820(n+1)`
-/

namespace A076627.P14148980772750540463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049820 (n + 1)

end

end A076627.P14148980772750540463

namespace A076627

/-- `Δ[A006218(n)]*A049820(n+1)` -/
def P14148980772750540463.Spec : Prop :=
  ∀ n, P14148980772750540463.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P6613652904491388670

`Δ[A054519(n)]*A049820(n+1)`
-/

namespace A076627.P6613652904491388670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049820 (n + 1)

end

end A076627.P6613652904491388670

namespace A076627

/-- `Δ[A054519(n)]*A049820(n+1)` -/
def P6613652904491388670.Spec : Prop :=
  ∀ n, P6613652904491388670.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P15045617969261855074

`A038040(n+1)-A035116(n+1)`
-/

namespace A076627.P15045617969261855074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A035116 (n + 1)

end

end A076627.P15045617969261855074

namespace A076627

/-- `A038040(n+1)-A035116(n+1)` -/
def P15045617969261855074.Spec : Prop :=
  ∀ n, P15045617969261855074.a n = A076627 (n + 1)

theorem P15045617969261855074.correct : P15045617969261855074.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel, A076627.P15045617969261855074.a, A076627.P17176873405788614129.a, A000005, A000005.P16091521709108585461.a, A035116, A035116.P9275486073209873569.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076627

/-! ## A076627.P5624489705408247318

`A152211(n+1)-A162664(n+1)`
-/

namespace A076627.P5624489705408247318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A162664 (n + 1)

end

end A076627.P5624489705408247318

namespace A076627

/-- `A152211(n+1)-A162664(n+1)` -/
def P5624489705408247318.Spec : Prop :=
  ∀ n, P5624489705408247318.a n = A076627 (n + 1)

theorem P5624489705408247318.correct : P5624489705408247318.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel, A076627.P5624489705408247318.a, A076627.P17176873405788614129.a, A000005, A000005.P16091521709108585461.a, A152211, A152211.P8934016512484736310.a, A162664, A162664.P15212923218758059815.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076627

/-! ## A076627.P7212553870801767315

`A038040(n+1)-Δ[A006218(n)]²`
-/

namespace A076627.P7212553870801767315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A076627.P7212553870801767315

namespace A076627

/-- `A038040(n+1)-Δ[A006218(n)]²` -/
def P7212553870801767315.Spec : Prop :=
  ∀ n, P7212553870801767315.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P4986161212706692279

`A038040(n+1)-A000005(n+1)²`
-/

namespace A076627.P4986161212706692279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000005 (n + 1) ^ 2

end

end A076627.P4986161212706692279

namespace A076627

/-- `A038040(n+1)-A000005(n+1)²` -/
def P4986161212706692279.Spec : Prop :=
  ∀ n, P4986161212706692279.a n = A076627 (n + 1)

theorem P4986161212706692279.correct : P4986161212706692279.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel, A076627.P4986161212706692279.a, A076627.P17176873405788614129.a, A000005, A000005.P16091521709108585461.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076627

/-! ## A076627.P2012095200410582453

`A038040(n+1)-A329484(n+1)²`
-/

namespace A076627.P2012095200410582453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A329484 (n + 1) ^ 2

end

end A076627.P2012095200410582453

namespace A076627

/-- `A038040(n+1)-A329484(n+1)²` -/
def P2012095200410582453.Spec : Prop :=
  ∀ n, P2012095200410582453.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P7996950843074157192

`(A062968(n+1)-1)*A000005(n+1)`
-/

namespace A076627.P7996950843074157192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062968 (n + 1) - 1) * A000005 (n + 1)

end

end A076627.P7996950843074157192

namespace A076627

/-- `(A062968(n+1)-1)*A000005(n+1)` -/
def P7996950843074157192.Spec : Prop :=
  ∀ n, P7996950843074157192.a n = A076627 (n + 1)

theorem P7996950843074157192.correct : P7996950843074157192.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel, A076627.P7996950843074157192.a, A076627.P17176873405788614129.a, A000005, A000005.P16091521709108585461.a, A062968, A062968.P12745258028289340812.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A049820, A049820.P9428372222244335888.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076627

/-! ## A076627.P15649394557500616612

`(A070824(n+1)+2)*A049820(n+1)`
-/

namespace A076627.P15649394557500616612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070824 (n + 1) + 2) * A049820 (n + 1)

end

end A076627.P15649394557500616612

namespace A076627

/-- `(A070824(n+1)+2)*A049820(n+1)` -/
def P15649394557500616612.Spec : Prop :=
  ∀ n, P15649394557500616612.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P7992323013043279754

`(A334954(n+1)-1)*A049820(n+1)`
-/

namespace A076627.P7992323013043279754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334954 (n + 1) - 1) * A049820 (n + 1)

end

end A076627.P7992323013043279754

namespace A076627

/-- `(A334954(n+1)-1)*A049820(n+1)` -/
def P7992323013043279754.Spec : Prop :=
  ∀ n, P7992323013043279754.a n = A076627 (n + 1)

end A076627

/-! ## A076627.P16633089305094738097

`(A059292(n+1)-2)*A000005(n+1)`
-/

namespace A076627.P16633089305094738097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059292 (n + 1) - 2) * A000005 (n + 1)

end

end A076627.P16633089305094738097

namespace A076627

/-- `(A059292(n+1)-2)*A000005(n+1)` -/
def P16633089305094738097.Spec : Prop :=
  ∀ n, P16633089305094738097.a n = A076627 (n + 1)

theorem P16633089305094738097.correct : P16633089305094738097.Spec := by
  intro n
  simp only [A076627, Nat.add_sub_cancel, A076627.P16633089305094738097.a, A076627.P17176873405788614129.a, A000005, A000005.P16091521709108585461.a, A059292, A059292.P13391037705740320393.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A049820, A049820.P9428372222244335888.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A076627

/-! ## A076627.P15721659414320175175

`(n-A032741(n+1))*A320111(2*(n+1))`
-/

namespace A076627.P15721659414320175175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A032741 (n + 1)) * A320111 (2 * (n + 1))

end

end A076627.P15721659414320175175

namespace A076627

/-- `(n-A032741(n+1))*A320111(2*(n+1))` -/
def P15721659414320175175.Spec : Prop :=
  ∀ n, P15721659414320175175.a n = A076627 (n + 1)

end A076627

/-!
# A076628: a(n) = 2^(2^(n-1))*b(n) where b(1) = 1/2 and b(n+1) = b(n) - b(n)^2.

The programs for A076628, the canonical program `A076628.P11420652309390720790` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076628 has offset 1).

The definition of A076628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076628.P11420652309390720790

`a(n-1)*(2^2^(n-1)-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076628

/-- `a(n-1)*(2^2^(n-1)-a(n-1))` -/
def P11420652309390720790.Spec : Prop :=
  ∀ n, P11420652309390720790.a n = (A076628 (n + 1) : ℝ)

end A076628

/-! ## A076628.P7314667446990529926

`∏[A100441(n+1)]`
-/

namespace A076628.P7314667446990529926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076628.P7314667446990529926

namespace A076628

/-- `∏[A100441(n+1)]` -/
def P7314667446990529926.Spec : Prop :=
  ∀ n, P7314667446990529926.a n = A076628 (n + 1)

end A076628

/-! ## A076628.P8111164525230491297

`A058891(n+1)-A167424(n)`
-/

namespace A076628.P8111164525230491297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) - A167424 n

end

end A076628.P8111164525230491297

namespace A076628

/-- `A058891(n+1)-A167424(n)` -/
def P8111164525230491297.Spec : Prop :=
  ∀ n, P8111164525230491297.a n = A076628 (n + 1)

end A076628

/-! ## A076628.P10193220774452163635

`A001146(n)-A100441(n+2)`
-/

namespace A076628.P10193220774452163635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A100441 (n + 2)

end

end A076628.P10193220774452163635

namespace A076628

/-- `A001146(n)-A100441(n+2)` -/
def P10193220774452163635.Spec : Prop :=
  ∀ n, P10193220774452163635.a n = A076628 (n + 1)

end A076628

/-!
# A076631: Solve 2^n - 2 = 7(x^2 - x) + (y^2 - y) for (x,y) with x>0, y>0; a(n) = value of y.

The programs for A076631, the canonical program `A076631.P15648461787183763039` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076631 has offset 1).

The definition of A076631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076631.P11788578660972484572

`ceil(A077021(n+3)/2)`
-/

namespace A076631.P11788578660972484572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077021 (n + 3) : ℚ) / 2⌉

end

end A076631.P11788578660972484572

namespace A076631

/-- `ceil(A077021(n+3)/2)` -/
def P11788578660972484572.Spec : Prop :=
  ∀ n, P11788578660972484572.a n = A076631 (n + 1)

end A076631

/-! ## A076631.P15648461787183763039

`ceil(abs(1-2*A105225(n))/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076631

/-- `ceil(abs(1-2*A105225(n))/2)` -/
def P15648461787183763039.Spec : Prop :=
  ∀ n, P15648461787183763039.a n = A076631 (n + 1)

theorem P15648461787183763039.correct : P15648461787183763039.Spec := by
  intro n
  simp only [A076631, Nat.add_sub_cancel]

end A076631

/-! ## A076631.P2330315776283640224

`ceil(abs(Δ[A105225(n+1)])/2)`
-/

namespace A076631.P2330315776283640224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|f1 (n + 1) - f1 n| : ℚ) / 2⌉

end

end A076631.P2330315776283640224

namespace A076631

/-- `ceil(abs(Δ[A105225(n+1)])/2)` -/
def P2330315776283640224.Spec : Prop :=
  ∀ n, P2330315776283640224.a n = A076631 (n + 1)

end A076631

/-! ## A076631.P11462785930902585820

`ceil(abs(Δ[A105579(n+1)/2]))`
-/

namespace A076631.P11462785930902585820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105579 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|f1 (n + 1) - f1 n|⌉

end

end A076631.P11462785930902585820

namespace A076631

/-- `ceil(abs(Δ[A105579(n+1)/2]))` -/
def P11462785930902585820.Spec : Prop :=
  ∀ n, P11462785930902585820.a n = A076631 (n + 1)

end A076631

/-! ## A076631.P11056040254820194776

`ceil(abs(A002249(n+1)/2))`
-/

namespace A076631.P11056040254820194776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A002249 (n + 1) : ℚ) / 2|⌉

end

end A076631.P11056040254820194776

namespace A076631

/-- `ceil(abs(A002249(n+1)/2))` -/
def P11056040254820194776.Spec : Prop :=
  ∀ n, P11056040254820194776.a n = A076631 (n + 1)

end A076631

/-!
# A076632: Solve 2^n - 2 = 7(x^2 - x) + (y^2 - y) for (x,y) with x>0, y>0; sequence gives value of x.

The programs for A076632, the canonical program `A076632.P14404458359531555987` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076632 has offset 1).

The definition of A076632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076632.P9720559872886412567

`(abs(∑[ogf((1-x)/(1+x+2x^2))])+1)/2`
-/

namespace A076632.P9720559872886412567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 1, 2] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∑ j ∈ Finset.range (n + 1), f1 j| + 1 : ℤ) : ℚ) / 2

end

end A076632.P9720559872886412567

namespace A076632

/-- `(abs(∑[ogf((1-x)/(1+x+2x^2))])+1)/2` -/
def P9720559872886412567.Spec : Prop :=
  ∀ n, P9720559872886412567.a n = (A076632 (n + 1) : ℚ)

end A076632

/-! ## A076632.P12603535764031682333

`ceil(A077020(n+3)/2)`
-/

namespace A076632.P12603535764031682333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077020 (n + 3) : ℚ) / 2⌉

end

end A076632.P12603535764031682333

namespace A076632

/-- `ceil(A077020(n+3)/2)` -/
def P12603535764031682333.Spec : Prop :=
  ∀ n, P12603535764031682333.a n = A076632 (n + 1)

end A076632

/-! ## A076632.P14404458359531555987

`ceil(abs(∑[A078020(n)/2]))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076632

/-- `ceil(abs(∑[A078020(n)/2]))` -/
def P14404458359531555987.Spec : Prop :=
  ∀ n, P14404458359531555987.a n = A076632 (n + 1)

theorem P14404458359531555987.correct : P14404458359531555987.Spec := by
  intro n
  simp only [A076632, Nat.add_sub_cancel]

end A076632

/-! ## A076632.P7821000996819166205

`ceil(abs(A001607(n+1)/2))`
-/

namespace A076632.P7821000996819166205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A001607 (n + 1) : ℚ) / 2|⌉

end

end A076632.P7821000996819166205

namespace A076632

/-- `ceil(abs(A001607(n+1)/2))` -/
def P7821000996819166205.Spec : Prop :=
  ∀ n, P7821000996819166205.a n = A076632 (n + 1)

end A076632

/-! ## A076632.P13429407467767998277

`ceil(abs(∑[A078050(n)/2]))`
-/

namespace A076632.P13429407467767998277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078050 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|∑ j ∈ Finset.range (n + 1), f1 j|⌉

end

end A076632.P13429407467767998277

namespace A076632

/-- `ceil(abs(∑[A078050(n)/2]))` -/
def P13429407467767998277.Spec : Prop :=
  ∀ n, P13429407467767998277.a n = A076632 (n + 1)

end A076632

/-!
# A076633: Incorrect guess for index of n-th local maxima (in decreasing order) of f(k) = (sigma(k) - H_k)/(exp(H_k)log(H_k)), where H_k = 1 + 1/2 + 1/3 + ... + 1/k.

The programs for A076633, there is no canonical definition to state claims against.
-/

/-! ## A076633.P4907299699487950988

`A278222(A007482(n+2)*A185105(n+1))`
-/

namespace A076633.P4907299699487950988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A007482 (n + 2) * A185105 (n + 1)).toNat

end

end A076633.P4907299699487950988

/-! ## A076633.P13308080459507545125

`A189686(A000040(n+3)-Δ[A027052(3*n+4)])`
-/

namespace A076633.P13308080459507545125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189686 (A000040 (n + 3) - (f1 (n + 1) - f1 n)).toNat

end

end A076633.P13308080459507545125

/-!
# A076634: Coefficient of x^a(n) in (x+1/2)*(x+2/2)*...*(x+n/2) is the largest one.

The programs for A076634, there is no canonical definition to state claims against.
-/

/-! ## A076634.P6494909368648890377

`A062153(A167614(n+1)-(A363694(n+1)+A258376(n+1)))`
-/

namespace A076634.P6494909368648890377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A167614 (n + 1) - (A363694 (n + 1) + A258376 (n + 1))).toNat

end

end A076634.P6494909368648890377

/-! ## A076634.P2585046618928415233

`A029836(A089646(1+n))`
-/

namespace A076634.P2585046618928415233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (A089646 (1 + n)).toNat

end

end A076634.P2585046618928415233

/-! ## A076634.P10762455601947936435

`floor(log2(A357929(n+1)-8))`
-/

namespace A076634.P10762455601947936435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A357929 (n + 1) - 8).toNat

end

end A076634.P10762455601947936435

/-! ## A076634.P8617312212432873

`A127321(A301899(n+1)+A166546(n+1))`
-/

namespace A076634.P8617312212432873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A301899 (n + 1) + A166546 (n + 1)).toNat

end

end A076634.P8617312212432873

/-! ## A076634.P16265713284701050742

`floor(log2(A254075(n+2)))`
-/

namespace A076634.P16265713284701050742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A254075 (n + 2)).toNat

end

end A076634.P16265713284701050742

/-! ## A076634.P11967241968445216162

`A255121(A246046(n+1)+A001478(n+1))`
-/

namespace A076634.P11967241968445216162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A246046 (n + 1) + A001478 (n + 1)).toNat

end

end A076634.P11967241968445216162

/-! ## A076634.P3290078223638614406

`A000195(A367225(n+1)+A004125(n+1))`
-/

namespace A076634.P3290078223638614406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A367225 (n + 1) + A004125 (n + 1)).toNat

end

end A076634.P3290078223638614406

/-! ## A076634.P10335824548353300629

`ceil(log2(A366320(n+2)))`
-/

namespace A076634.P10335824548353300629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A366320 (n + 2) : ℝ)⌉

end

end A076634.P10335824548353300629

/-! ## A076634.P9516898690972564356

`A235224(A333190(n))`
-/

namespace A076634.P9516898690972564356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A333190 n).toNat

end

end A076634.P9516898690972564356

/-! ## A076634.P3608561686653624198

`floor(log(A179429(n+2)))`
-/

namespace A076634.P3608561686653624198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A179429 (n + 2) : ℝ)⌋

end

end A076634.P3608561686653624198

/-!
# A076636: a(1) = 1, a(2n) = smallest prime > (2n-1)-th partial sum of the sequence itself and a(2n+1) = smallest composite number > 2n-th partial sum of the sequence.

The programs for A076636, there is no canonical definition to state claims against.
-/

/-! ## A076636.P6603883281108224672

`A112778(A303118(n+2)+A215143(n))`
-/

namespace A076636.P6603883281108224672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A303118 (n + 2) + A215143 n).toNat

end

end A076636.P6603883281108224672

/-!
# A076637: Numerators of harmonic numbers when these numerators are divisible by squares of primes >= 5 in the case of Wolstenholme's Theorem.

The programs for A076637, there is no canonical definition to state claims against.
-/

/-! ## A076637.P17510808707325843155

`A120285(n+3)`
-/

namespace A076637.P17510808707325843155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120285 (n + 3)

end

end A076637.P17510808707325843155

/-! ## A076637.P10252168834689063101

`A001008(lt[4, ∑{p}[1+n, C(#, n)]])`
-/

namespace A076637.P10252168834689063101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076637.P10252168834689063101

/-! ## A076637.P16652865454991051626

`A001008(lt[3, ∏{d}[n+1, #^(#-n)]])`
-/

namespace A076637.P16652865454991051626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A076637.P16652865454991051626

/-! ## A076637.P16488721438326168703

`A001008(lt[2, n*∑{e}[1+n, #]!%2])`
-/

namespace A076637.P16488721438326168703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076637.P16488721438326168703

/-! ## A076637.P17386412054865549955

`A001008(eq[(n+1)*floor((floor((n+1)/2)+2^(n+1))/(n+1))-2^(n+1), -2])`
-/

namespace A076637.P17386412054865549955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(⌊(n + 1 : ℚ) / 2⌋ + (2 ^ (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)⌋ - (2 ^ (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A076637.P17386412054865549955

/-!
# A076638: Denominators of harmonic numbers when the numerators are divisible by squares of primes >= 5 in the case of Wolstenholme's Theorem.

The programs for A076638, there is no canonical definition to state claims against.
-/

/-! ## A076638.P14568685185956738075

`A185399(n+3)`
-/

namespace A076638.P14568685185956738075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185399 (n + 3)

end

end A076638.P14568685185956738075

/-! ## A076638.P12242229515686815102

`A128438(p?[2*n+5])`
-/

namespace A076638.P12242229515686815102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128438 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076638.P12242229515686815102

/-! ## A076638.P7523597025054613681

`A027611(A066047(n+1))`
-/

namespace A076638.P7523597025054613681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A066047 (n + 1)).toNat

end

end A076638.P7523597025054613681

/-! ## A076638.P17456587720457846677

`A027611(A215848(n+1))`
-/

namespace A076638.P17456587720457846677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A215848 (n + 1)).toNat

end

end A076638.P17456587720457846677

/-! ## A076638.P5499044844753828347

`A027611(A240710(n+1))`
-/

namespace A076638.P5499044844753828347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A240710 (n + 1)).toNat

end

end A076638.P5499044844753828347

/-!
# A076639: Numbers that are neither primes nor interprimes.

The programs for A076639, the canonical program `A076639.P6644122428526586313` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076639 has offset 1).

The definition of A076639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076639.P6644122428526586313

`comp[A063934(1+n)-1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076639

/-- `comp[A063934(1+n)-1]+1` -/
def P6644122428526586313.Spec : Prop :=
  ∀ n, (P6644122428526586313.a n : ℤ) = A076639 (n + 1)

theorem P6644122428526586313.correct : P6644122428526586313.Spec := by
  intro n
  simp only [A076639, Nat.add_sub_cancel]

end A076639

/-! ## A076639.P7124447304070632836

`comp[∪[p?[2*n+1], A162800(n)]]`
-/

namespace A076639.P7124447304070632836
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A076639.P7124447304070632836

namespace A076639

/-- `comp[∪[p?[2*n+1], A162800(n)]]` -/
def P7124447304070632836.Spec : Prop :=
  ∀ n, (P7124447304070632836.a n : ℤ) = A076639 (n + 1)

end A076639

/-! ## A076639.P2774305994105193428

`A018252(comp[A024678(n+1)-1]+1)`
-/

namespace A076639.P2774305994105193428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A076639.P2774305994105193428

namespace A076639

/-- `A018252(comp[A024678(n+1)-1]+1)` -/
def P2774305994105193428.Spec : Prop :=
  ∀ n, P2774305994105193428.a n = A076639 (n + 1)

end A076639

/-! ## A076639.P7433632497275778889

`lt[A346399(n+1), 1]+1`
-/

namespace A076639.P7433632497275778889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076639.P7433632497275778889

namespace A076639

/-- `lt[A346399(n+1), 1]+1` -/
def P7433632497275778889.Spec : Prop :=
  ∀ n, (P7433632497275778889.a n : ℤ) = A076639 (n + 1)

end A076639

/-! ## A076639.P16394917210515789611

`lt[abs(n-A007920(n)), A051697(n)]`
-/

namespace A076639.P16394917210515789611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A007920 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076639.P16394917210515789611

namespace A076639

/-- `lt[abs(n-A007920(n)), A051697(n)]` -/
def P16394917210515789611.Spec : Prop :=
  ∀ n, (P16394917210515789611.a n : ℤ) = A076639 (n + 1)

end A076639

/-! ## A076639.P4107124800500991895

`A333998(n+1)/2`
-/

namespace A076639.P4107124800500991895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333998 (n + 1) : ℚ) / 2

end

end A076639.P4107124800500991895

namespace A076639

/-- `A333998(n+1)/2` -/
def P4107124800500991895.Spec : Prop :=
  ∀ n, P4107124800500991895.a n = (A076639 (n + 1) : ℚ)

end A076639

/-! ## A076639.P16761053169628578064

`A001281(A333998(n+1))`
-/

namespace A076639.P16761053169628578064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A333998 (n + 1)).toNat

end

end A076639.P16761053169628578064

namespace A076639

/-- `A001281(A333998(n+1))` -/
def P16761053169628578064.Spec : Prop :=
  ∀ n, P16761053169628578064.a n = A076639 (n + 1)

end A076639

/-!
# A076640: a(1)=1, a(n) = a(n-phi(n)) + 1.

The programs for A076640, the canonical program `A076640.P16940052079035633537` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076640 has offset 1).

The definition of A076640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-A000010(n+1))` (program `A076640.P2890691185910199973`, by `A076640.P2890691185910199973.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076640.P10692691478282624648

`A053475(n+1)-1`
-/

namespace A076640.P10692691478282624648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - 1

end

end A076640.P10692691478282624648

namespace A076640

/-- `A053475(n+1)-1` -/
def P10692691478282624648.Spec : Prop :=
  ∀ n, P10692691478282624648.a n = A076640 (n + 1)

theorem P10692691478282624648.correct : P10692691478282624648.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P10692691478282624648.a, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A053475, A053475.P4915054486335898870.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076640

/-! ## A076640.P2890691185910199973

`1+a(n-A000010(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076640.P2890691185910199973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a ((n : ℤ) - A000010 (n + 1)).toNat

end

end A076640.P2890691185910199973

namespace A076640

/-- `1+a(n-A000010(n+1))` -/
def P2890691185910199973.Spec : Prop :=
  ∀ n, (P2890691185910199973.a n : ℤ) = A076640 (n + 1)

theorem P2890691185910199973.correct : P2890691185910199973.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P2890691185910199973.a, A076640.P16940052079035633537.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076640

/-! ## A076640.P16940052079035633537

`a(n-A000010(n+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076640

/-- `a(n-A000010(n+1))+1` -/
def P16940052079035633537.Spec : Prop :=
  ∀ n, (P16940052079035633537.a n : ℤ) = A076640 (n + 1)

theorem P16940052079035633537.correct : P16940052079035633537.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel]

end A076640

/-! ## A076640.P1884284390373274482

`a(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` with `a(0)=1`
-/

namespace A076640.P1884284390373274482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + 1

end

end A076640.P1884284390373274482

namespace A076640

/-- `a(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` -/
def P1884284390373274482.Spec : Prop :=
  ∀ n, (P1884284390373274482.a n : ℤ) = A076640 (n + 1)

end A076640

/-! ## A076640.P13204320116237080867

`A071575(n+1)+1`
-/

namespace A076640.P13204320116237080867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (n + 1) + 1

end

end A076640.P13204320116237080867

namespace A076640

/-- `A071575(n+1)+1` -/
def P13204320116237080867.Spec : Prop :=
  ∀ n, P13204320116237080867.a n = A076640 (n + 1)

theorem P13204320116237080867.correct : P13204320116237080867.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P13204320116237080867.a, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A071575, A071575.P1413525790656994869.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076640

/-! ## A076640.P14548901893435725759

`a(A016035(n+1))+1` with `a(0)=1`
-/

namespace A076640.P14548901893435725759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A016035 (n + 1)).toNat + 1

end

end A076640.P14548901893435725759

namespace A076640

/-- `a(A016035(n+1))+1` -/
def P14548901893435725759.Spec : Prop :=
  ∀ n, (P14548901893435725759.a n : ℤ) = A076640 (n + 1)

end A076640

/-! ## A076640.P7792721017988745750

`a(A219428(n+1))+1` with `a(0)=1`
-/

namespace A076640.P7792721017988745750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A219428 (n + 1)).toNat + 1

end

end A076640.P7792721017988745750

namespace A076640

/-- `a(A219428(n+1))+1` -/
def P7792721017988745750.Spec : Prop :=
  ∀ n, (P7792721017988745750.a n : ℤ) = A076640 (n + 1)

end A076640

/-! ## A076640.P16526768200747563638

`a(A051953(n+1)-1)+1` with `a(0)=1`
-/

namespace A076640.P16526768200747563638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A051953 (n + 1) - 1).toNat + 1

end

end A076640.P16526768200747563638

namespace A076640

/-- `a(A051953(n+1)-1)+1` -/
def P16526768200747563638.Spec : Prop :=
  ∀ n, (P16526768200747563638.a n : ℤ) = A076640 (n + 1)

theorem P16526768200747563638.correct : P16526768200747563638.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P16526768200747563638.a, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076640

/-! ## A076640.P5282427607792666666

`a(n+1-A039649(n+1))+1` with `a(0)=1`
-/

namespace A076640.P5282427607792666666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n + 1 : ℤ) - A039649 (n + 1)).toNat + 1

end

end A076640.P5282427607792666666

namespace A076640

/-- `a(n+1-A039649(n+1))+1` -/
def P5282427607792666666.Spec : Prop :=
  ∀ n, (P5282427607792666666.a n : ℤ) = A076640 (n + 1)

theorem P5282427607792666666.correct : P5282427607792666666.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P5282427607792666666.a, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076640

/-! ## A076640.P1715280936998871874

`a(n-(A109606(n+1)+1))+1` with `a(0)=1`
-/

namespace A076640.P1715280936998871874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - (A109606 (n + 1) + 1)).toNat + 1

end

end A076640.P1715280936998871874

namespace A076640

/-- `a(n-(A109606(n+1)+1))+1` -/
def P1715280936998871874.Spec : Prop :=
  ∀ n, (P1715280936998871874.a n : ℤ) = A076640 (n + 1)

theorem P1715280936998871874.correct : P1715280936998871874.Spec := by
  intro n
  simp only [A076640, Nat.add_sub_cancel, A076640.P1715280936998871874.a, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076640

/-! ## A076640.P14697384741690320693

`A023444(A053475(n+1)+1)`
-/

namespace A076640.P14697384741690320693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053475 (n + 1) + 1).toNat

end

end A076640.P14697384741690320693

namespace A076640

/-- `A023444(A053475(n+1)+1)` -/
def P14697384741690320693.Spec : Prop :=
  ∀ n, P14697384741690320693.a n = A076640 (n + 1)

end A076640

/-! ## A076640.P16607802762441780690

`A007318(C(A053475(n+1), 2)+1)`
-/

namespace A076640.P16607802762441780690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A053475 (n + 1)).toNat 2 + 1)

end

end A076640.P16607802762441780690

namespace A076640

/-- `A007318(C(A053475(n+1), 2)+1)` -/
def P16607802762441780690.Spec : Prop :=
  ∀ n, P16607802762441780690.a n = A076640 (n + 1)

end A076640

/-! ## A076640.P15007802116758685974

`A057428(A053475(n+1)²)+A053475(n+1)`
-/

namespace A076640.P15007802116758685974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A053475 (n + 1) ^ 2).toNat + A053475 (n + 1)

end

end A076640.P15007802116758685974

namespace A076640

/-- `A057428(A053475(n+1)²)+A053475(n+1)` -/
def P15007802116758685974.Spec : Prop :=
  ∀ n, P15007802116758685974.a n = A076640 (n + 1)

end A076640

/-! ## A076640.P17116328647461363332

`A057428(n+1)+A053475(n+1)`
-/

namespace A076640.P17116328647461363332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053475 (n + 1)

end

end A076640.P17116328647461363332

namespace A076640

/-- `A057428(n+1)+A053475(n+1)` -/
def P17116328647461363332.Spec : Prop :=
  ∀ n, P17116328647461363332.a n = A076640 (n + 1)

end A076640

/-! ## A076640.P16837357165583577116

`1+a(∑{#}[n, 1-floor(1/gcd(n+1, #))]-1)` with `a(0)=1`
-/

namespace A076640.P16837357165583577116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋) - 1).toNat

end

end A076640.P16837357165583577116

namespace A076640

/-- `1+a(∑{#}[n, 1-floor(1/gcd(n+1, #))]-1)` -/
def P16837357165583577116.Spec : Prop :=
  ∀ n, (P16837357165583577116.a n : ℤ) = A076640 (n + 1)

end A076640

/-! ## A076640.P720289274511145869

`a(n-A282634(∑[n]+1))+1` with `a(0)=1`
-/

namespace A076640.P720289274511145869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + 1

end

end A076640.P720289274511145869

namespace A076640

/-- `a(n-A282634(∑[n]+1))+1` -/
def P720289274511145869.Spec : Prop :=
  ∀ n, (P720289274511145869.a n : ℤ) = A076640 (n + 1)

end A076640

/-! ## A076640.P2687705527394077033

`A072828(n+1)%A053475(n+1)`
-/

namespace A076640.P2687705527394077033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A053475 (n + 1))

end

end A076640.P2687705527394077033

namespace A076640

/-- `A072828(n+1)%A053475(n+1)` -/
def P2687705527394077033.Spec : Prop :=
  ∀ n, P2687705527394077033.a n = A076640 (n + 1)

end A076640

/-!
# A076641: Integers read backwards, but with repetitions omitted.

The programs for A076641, there is no canonical definition to state claims against.
-/

/-! ## A076641.P1679715738281995798

`A004086(comp[10*(n+1)])`
-/

namespace A076641.P1679715738281995798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076641.P1679715738281995798

/-! ## A076641.P17042225193215462621

`A004086(A342851(n+1))%(n+1)²`
-/

namespace A076641.P17042225193215462621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A342851 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A076641.P17042225193215462621

/-! ## A076641.P431764680537240247

`A001511(or(5, n))*A004086(A342851(n+1))`
-/

namespace A076641.P431764680537240247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lor 5 n) * A004086 (A342851 (n + 1)).toNat

end

end A076641.P431764680537240247

/-! ## A076641.P4135903651433360624

`A004086(A342851(n+1))*A019425(A019425(n))`
-/

namespace A076641.P4135903651433360624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A342851 (n + 1)).toNat * A019425 (A019425 n).toNat

end

end A076641.P4135903651433360624

/-! ## A076641.P1691305513226124617

`A004086(A342851(n+1))+A000007(n+1)`
-/

namespace A076641.P1691305513226124617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A342851 (n + 1)).toNat + A000007 (n + 1)

end

end A076641.P1691305513226124617

/-! ## A076641.P2565537564995616008

`A184616(A184616(n))+A004086(A342851(n+1))`
-/

namespace A076641.P2565537564995616008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A184616 n).toNat + A004086 (A342851 (n + 1)).toNat

end

end A076641.P2565537564995616008

/-! ## A076641.P4810402871079482322

`A001511(2*n+1)*A004086(A342851(n+1))`
-/

namespace A076641.P4810402871079482322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A004086 (A342851 (n + 1)).toNat

end

end A076641.P4810402871079482322

/-! ## A076641.P4559296086418489435

`A014963(A139249(n+1))*A004086(A342851(n+1))`
-/

namespace A076641.P4559296086418489435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A139249 (n + 1)).toNat * A004086 (A342851 (n + 1)).toNat

end

end A076641.P4559296086418489435

/-! ## A076641.P14273122185842394392

`A321474(record[A051162(A091703(n))])`
-/

namespace A076641.P14273122185842394392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A091703 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076641.P14273122185842394392

/-!
# A076642: Coefficient of x^a(n) in (x+1/3!)*(x+2/3!)*...*(x+n/3!) is the largest one.

The programs for A076642, there is no canonical definition to state claims against.
-/

/-! ## A076642.P4911938669473850448

`round(∑[A133310(n)/A342790(n+1)])`
-/

namespace A076642.P4911938669473850448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) / (A342790 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076642.P4911938669473850448

/-! ## A076642.P5065332356610801701

`A004257(A189375(n+1))`
-/

namespace A076642.P5065332356610801701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A189375 (n + 1)).toNat

end

end A076642.P5065332356610801701

/-! ## A076642.P3987743643775935799

`∑[Δ[A004257(A189375(n))]²]`
-/

namespace A076642.P3987743643775935799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A189375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076642.P3987743643775935799

/-! ## A076642.P3677019383423162730

`A000523(A324524(n+1)+A099798(n+1))`
-/

namespace A076642.P3677019383423162730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A324524 (n + 1) + A099798 (n + 1)).toNat

end

end A076642.P3677019383423162730

/-! ## A076642.P4044314093751694196

`A000523(∑[A029001(n)+1])`
-/

namespace A076642.P4044314093751694196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029001 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076642.P4044314093751694196

/-!
# A076643: Positive integers read backwards, but omit a number if it is <= an earlier number.

The programs for A076643, there is no canonical definition to state claims against.
-/

/-! ## A076643.P7268352192349051392

`record[A004086(n+1)]`
-/

namespace A076643.P7268352192349051392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P7268352192349051392

/-! ## A076643.P8620219298477456306

`record[gcd(C(n, n²), A004086(n))]`
-/

namespace A076643.P8620219298477456306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A004086 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P8620219298477456306

/-! ## A076643.P2076789345177250180

`A004086(A070698(n+1))`
-/

namespace A076643.P2076789345177250180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A070698 (n + 1)).toNat

end

end A076643.P2076789345177250180

/-! ## A076643.P6512902865534742790

`record[A056964(n+1)-(n+1)]`
-/

namespace A076643.P6512902865534742790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P6512902865534742790

/-! ## A076643.P3632262631739088495

`record[A076641(n+1)]`
-/

namespace A076643.P3632262631739088495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P3632262631739088495

/-! ## A076643.P7486434384967989788

`∑[runs[A340835(n+1)]]`
-/

namespace A076643.P7486434384967989788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340835 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076643.P7486434384967989788

/-! ## A076643.P8736382831208648806

`record[1-A056965(n+1)+n]`
-/

namespace A076643.P8736382831208648806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056965 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P8736382831208648806

/-! ## A076643.P18054242302088037443

`record[A028310(A004086(n))]`
-/

namespace A076643.P18054242302088037443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P18054242302088037443

/-! ## A076643.P1642833186060022454

`record[A068637(A068636(n+1))]`
-/

namespace A076643.P1642833186060022454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (A068636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P1642833186060022454

/-! ## A076643.P5952733970624521630

`record[A028310(n-A056965(n))]`
-/

namespace A076643.P5952733970624521630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076643.P5952733970624521630

/-!
# A076644: a(1)=1; for n>1, a(n) = a(n-floor(sqrt(n))) + n.

The programs for A076644, the canonical program `A076644.P6144891086237743198` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076644 has offset 1).

The definition of A076644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-floor(sqrt(n+1)))+n+1` (program `A076644.P6144891086237743198`, by `A076644.P6144891086237743198.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076644.P6144891086237743198

`a(n-floor(sqrt(n+1)))+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076644

/-- `a(n-floor(sqrt(n+1)))+n+1` -/
def P6144891086237743198.Spec : Prop :=
  ∀ n, (P6144891086237743198.a n : ℤ) = A076644 (n + 1)

theorem P6144891086237743198.correct : P6144891086237743198.Spec := by
  intro n
  simp only [A076644, Nat.add_sub_cancel]

end A076644

/-! ## A076644.P3905677846655957962

`n+1+a(n-A000196(n+1))` with `a(0)=1`
-/

namespace A076644.P3905677846655957962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a ((n : ℤ) - A000196 (n + 1)).toNat

end

end A076644.P3905677846655957962

namespace A076644

/-- `n+1+a(n-A000196(n+1))` -/
def P3905677846655957962.Spec : Prop :=
  ∀ n, (P3905677846655957962.a n : ℤ) = A076644 (n + 1)

end A076644

/-! ## A076644.P8462614897854542739

`a(n-floor(sqrt(n+1)))+1+n` with `a(0)=1`
-/

namespace A076644.P8462614897854542739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Nat.sqrt (n + 1)) + 1 + n

end

end A076644.P8462614897854542739

namespace A076644

/-- `a(n-floor(sqrt(n+1)))+1+n` -/
def P8462614897854542739.Spec : Prop :=
  ∀ n, (P8462614897854542739.a n : ℤ) = A076644 (n + 1)

theorem P8462614897854542739.correct : P8462614897854542739.Spec := by
  intro n
  simp only [A076644, Nat.add_sub_cancel, A076644.P8462614897854542739.a, A076644.P6144891086237743198.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076644

/-! ## A076644.P4487613072250213148

`1+a(n-floor((n+1)^(1/2)))+n` with `a(0)=1`
-/

namespace A076644.P4487613072250213148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a ((n : ℤ) - ⌊(n + 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋).toNat + n

end

end A076644.P4487613072250213148

namespace A076644

/-- `1+a(n-floor((n+1)^(1/2)))+n` -/
def P4487613072250213148.Spec : Prop :=
  ∀ n, (P4487613072250213148.a n : ℤ) = A076644 (n + 1)

end A076644

/-! ## A076644.P5759737234397277000

`∑[A082375(n)+1]`
-/

namespace A076644.P5759737234397277000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P5759737234397277000

namespace A076644

/-- `∑[A082375(n)+1]` -/
def P5759737234397277000.Spec : Prop :=
  ∀ n, P5759737234397277000.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P17149434342169851975

`∑[A122196(1+n)]`
-/

namespace A076644.P17149434342169851975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P17149434342169851975

namespace A076644

/-- `∑[A122196(1+n)]` -/
def P17149434342169851975.Spec : Prop :=
  ∀ n, P17149434342169851975.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P3906844012818251890

`∑[ceil(A152204(n)/2)]`
-/

namespace A076644.P3906844012818251890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152204 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P3906844012818251890

namespace A076644

/-- `∑[ceil(A152204(n)/2)]` -/
def P3906844012818251890.Spec : Prop :=
  ∀ n, P3906844012818251890.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P6323967467983541806

`∑[A000463(A152204(n))]`
-/

namespace A076644.P6323967467983541806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A152204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P6323967467983541806

namespace A076644

/-- `∑[A000463(A152204(n))]` -/
def P6323967467983541806.Spec : Prop :=
  ∀ n, P6323967467983541806.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P2289130257114335997

`∑[A008619(2*A082375(n))]`
-/

namespace A076644.P2289130257114335997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P2289130257114335997

namespace A076644

/-- `∑[A008619(2*A082375(n))]` -/
def P2289130257114335997.Spec : Prop :=
  ∀ n, P2289130257114335997.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P2166047701363697347

`A122196(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A076644.P2166047701363697347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122196 (n + 1) + a (A023443 n).toNat

end

end A076644.P2166047701363697347

namespace A076644

/-- `A122196(n+1)+a(A023443(n))` -/
def P2166047701363697347.Spec : Prop :=
  ∀ n, P2166047701363697347.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P12868629412288517212

`∑[A004736(comp[comp[n²]+n]+1)]`
-/

namespace A076644.P12868629412288517212
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P12868629412288517212

namespace A076644

/-- `∑[A004736(comp[comp[n²]+n]+1)]` -/
def P12868629412288517212.Spec : Prop :=
  ∀ n, P12868629412288517212.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P3375716176733636139

`∑[A025581(comp[n²]+n)+1]`
-/

namespace A076644.P3375716176733636139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P3375716176733636139

namespace A076644

/-- `∑[A025581(comp[n²]+n)+1]` -/
def P3375716176733636139.Spec : Prop :=
  ∀ n, P3375716176733636139.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P8391902409460973808

`∑[A025581(lt[1, A238801(n)])]`
-/

namespace A076644.P8391902409460973808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P8391902409460973808

namespace A076644

/-- `∑[A025581(lt[1, A238801(n)])]` -/
def P8391902409460973808.Spec : Prop :=
  ∀ n, P8391902409460973808.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P12421806228470118160

`∑[A130517(A274427(n+1))]`
-/

namespace A076644.P12421806228470118160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A274427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P12421806228470118160

namespace A076644

/-- `∑[A130517(A274427(n+1))]` -/
def P12421806228470118160.Spec : Prop :=
  ∀ n, P12421806228470118160.a n = A076644 (n + 1)

end A076644

/-! ## A076644.P11924783232441142413

`∑[val(A062052(n+1), 2)+1]`
-/

namespace A076644.P11924783232441142413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062052 (n + 1)).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P11924783232441142413

namespace A076644

/-- `∑[val(A062052(n+1), 2)+1]` -/
def P11924783232441142413.Spec : Prop :=
  ∀ n, (P11924783232441142413.a n : ℤ) = A076644 (n + 1)

end A076644

/-! ## A076644.P14848844965708701519

`∑[A088226(A227453(n+1))]`
-/

namespace A076644.P14848844965708701519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A227453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076644.P14848844965708701519

namespace A076644

/-- `∑[A088226(A227453(n+1))]` -/
def P14848844965708701519.Spec : Prop :=
  ∀ n, P14848844965708701519.a n = A076644 (n + 1)

end A076644

/-!
# A076645: Irregular triangle read by rows of ways to write 0 as 1 +- 2 +- 3 +- 4 +- ... +- k for some k, where signs alternate except that there is one instance of two consecutive positive terms.

The programs for A076645, the canonical program `A076645.P4693110428907207431` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076645 has offset 1).

The definition of A076645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076645.P4693110428907207431

`A033999(A294317(n))*A210530(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076645

/-- `A033999(A294317(n))*A210530(n+1)` -/
def P4693110428907207431.Spec : Prop :=
  ∀ n, P4693110428907207431.a n = A076645 (n + 1)

theorem P4693110428907207431.correct : P4693110428907207431.Spec := by
  intro n
  simp only [A076645, Nat.add_sub_cancel]

end A076645

/-! ## A076645.P16497963407091765099

`A009531(A158405(n+1))*A210530(n+1)`
-/

namespace A076645.P16497963407091765099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A210530 (n + 1)

end

end A076645.P16497963407091765099

namespace A076645

/-- `A009531(A158405(n+1))*A210530(n+1)` -/
def P16497963407091765099.Spec : Prop :=
  ∀ n, P16497963407091765099.a n = A076645 (n + 1)

end A076645

/-! ## A076645.P17677066271283599789

`A062157(A114751(n+1))*A210530(n+1)`
-/

namespace A076645.P17677066271283599789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A114751 (n + 1)).toNat * A210530 (n + 1)

end

end A076645.P17677066271283599789

namespace A076645

/-- `A062157(A114751(n+1))*A210530(n+1)` -/
def P17677066271283599789.Spec : Prop :=
  ∀ n, P17677066271283599789.a n = A076645 (n + 1)

end A076645

/-! ## A076645.P9523209054723899892

`A033999(A061885(n))*A210530(n+1)`
-/

namespace A076645.P9523209054723899892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A210530 (n + 1)

end

end A076645.P9523209054723899892

namespace A076645

/-- `A033999(A061885(n))*A210530(n+1)` -/
def P9523209054723899892.Spec : Prop :=
  ∀ n, P9523209054723899892.a n = A076645 (n + 1)

end A076645

/-! ## A076645.P10515483995991000446

`A011594(A059268(n))*A210530(n+1)`
-/

namespace A076645.P10515483995991000446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (A059268 n).toNat * A210530 (n + 1)

end

end A076645.P10515483995991000446

namespace A076645

/-- `A011594(A059268(n))*A210530(n+1)` -/
def P10515483995991000446.Spec : Prop :=
  ∀ n, P10515483995991000446.a n = A076645 (n + 1)

end A076645

/-!
# A076646: Numbers n such that sigma(n) * antisigma(n) is a perfect square, where antisigma(n) = sum of the non-divisors of n that are between 1 and n.

The programs for A076646, there is no canonical definition to state claims against.
-/

/-! ## A076646.P3943021588053746886

`record[A226378(A233583(n+1)+A089894(n))]`
-/

namespace A076646.P3943021588053746886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A233583 (n + 1) + A089894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076646.P3943021588053746886

/-! ## A076646.P13815220023300793716

`A076617(n+1)%A076588(A076592(n+1))`
-/

namespace A076646.P13815220023300793716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076617 (n + 1)) (A076588 (A076592 (n + 1)).toNat)

end

end A076646.P13815220023300793716

/-!
# A076649: Number of digits required to write the prime factors of n.

The programs for A076649, the canonical program `A076649.P8873919623367228431` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076649 has offset 1).

The definition of A076649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076649.P10308120845308819763

`∑{digits}[A037276(n+1), floor(atan(n+1))^#]`
-/

namespace A076649.P10308120845308819763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊Real.arctan (n + 1 : ℝ)⌋ ^ x).sum

end

end A076649.P10308120845308819763

namespace A076649

/-- `∑{digits}[A037276(n+1), floor(atan(n+1))^#]` -/
def P10308120845308819763.Spec : Prop :=
  ∀ n, P10308120845308819763.a n = A076649 (n + 1)

end A076649

/-! ## A076649.P8873919623367228431

`∑{d}[n+1, A004218(A014963(#))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076649

/-- `∑{d}[n+1, A004218(A014963(#))]` -/
def P8873919623367228431.Spec : Prop :=
  ∀ n, P8873919623367228431.a n = A076649 (n + 1)

theorem P8873919623367228431.correct : P8873919623367228431.Spec := by
  intro n
  simp only [A076649, Nat.add_sub_cancel]

end A076649

/-! ## A076649.P1591608658478351797

`A280827(n+1)+A055642(n+1)`
-/

namespace A076649.P1591608658478351797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (n + 1) + A055642 (n + 1)

end

end A076649.P1591608658478351797

namespace A076649

/-- `A280827(n+1)+A055642(n+1)` -/
def P1591608658478351797.Spec : Prop :=
  ∀ n, P1591608658478351797.a n = A076649 (n + 1)

theorem P1591608658478351797.correct : P1591608658478351797.Spec := by
  intro n
  simp only [A076649, Nat.add_sub_cancel, A076649.P1591608658478351797.a, A076649.P8873919623367228431.f1, A076649.P8873919623367228431.a, A004218, A004218.P13942540286173673531.a, A014963, A014963.P5975177236000282614.a, A055642, A055642.P2478179801723442865.a, A280827, A280827.P9212601761894822098.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, A080304, A080304.P9910366703239988167.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076649

/-! ## A076649.P2369808039958460259

`A004216(n+1)+A280827(n+1)+1`
-/

namespace A076649.P2369808039958460259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + (A280827 (n + 1) + 1)

end

end A076649.P2369808039958460259

namespace A076649

/-- `A004216(n+1)+A280827(n+1)+1` -/
def P2369808039958460259.Spec : Prop :=
  ∀ n, P2369808039958460259.a n = A076649 (n + 1)

theorem P2369808039958460259.correct : P2369808039958460259.Spec := by
  intro n
  simp only [A076649, Nat.add_sub_cancel, A076649.P2369808039958460259.a, A076649.P8873919623367228431.f1, A076649.P8873919623367228431.a, A004216, A004216.P11701108540860389608.a, A004218, A004218.P13942540286173673531.a, A014963, A014963.P5975177236000282614.a, A280827, A280827.P9212601761894822098.a, A055642, A055642.P2478179801723442865.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P2815951119682625865.f1, A166142.P2815951119682625865.a, A080304, A080304.P9910366703239988167.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, A055615, A055615.P8993130195977213181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076649

/-! ## A076649.P2777845791758229684

`A280827(n+1)+A004218(n+2)`
-/

namespace A076649.P2777845791758229684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (n + 1) + A004218 (n + 2)

end

end A076649.P2777845791758229684

namespace A076649

/-- `A280827(n+1)+A004218(n+2)` -/
def P2777845791758229684.Spec : Prop :=
  ∀ n, P2777845791758229684.a n = A076649 (n + 1)

end A076649

/-! ## A076649.P8439570793983770123

`A095407(A328617(n+1))+A046660(n+1)`
-/

namespace A076649.P8439570793983770123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A328617 (n + 1)).toNat + A046660 (n + 1)

end

end A076649.P8439570793983770123

namespace A076649

/-- `A095407(A328617(n+1))+A046660(n+1)` -/
def P8439570793983770123.Spec : Prop :=
  ∀ n, P8439570793983770123.a n = A076649 (n + 1)

end A076649

/-! ## A076649.P14541198000930266421

`A276502(2*(n+1))+A280827(2*(n+1))-1`
-/

namespace A076649.P14541198000930266421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (2 * (n + 1)) + (A280827 (2 * (n + 1)) - 1)

end

end A076649.P14541198000930266421

namespace A076649

/-- `A276502(2*(n+1))+A280827(2*(n+1))-1` -/
def P14541198000930266421.Spec : Prop :=
  ∀ n, P14541198000930266421.a n = A076649 (n + 1)

end A076649

/-!
# A076650: m-morphic numbers for any m equal to 26 (mod 50).

The programs for A076650, there is no canonical definition to state claims against.
-/

/-! ## A076650.P15936507790681552271

`A137735(A068408(n+3)²)`
-/

namespace A076650.P15936507790681552271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A068408 (n + 3) ^ 2).toNat

end

end A076650.P15936507790681552271

/-! ## A076650.P9471465725475487392

`∩[A068408(n+1), A099649(n+1)]`
-/

namespace A076650.P9471465725475487392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076650.P9471465725475487392

/-! ## A076650.P807092694343171332

`∩[A068408(n+1), A243912(n+1)]`
-/

namespace A076650.P807092694343171332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076650.P807092694343171332

/-! ## A076650.P3958824760473215615

`∩[A238712(n+1), A187127(n+4)]`
-/

namespace A076650.P3958824760473215615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187127 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076650.P3958824760473215615

/-! ## A076650.P14858629338286904474

`A068408(n+3)%Δ[A068365(n+1)]`
-/

namespace A076650.P14858629338286904474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068408 (n + 3)) (f1 (n + 1) - f1 n)

end

end A076650.P14858629338286904474

/-!
# A076651: a(n) = floor( sqrt( p * (p+2) / 2)) where p is the lesser of the twin primes.

The programs for A076651, the canonical program `A076651.P13933827491870522384` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076651 has offset 1).

The definition of A076651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076651.P13999940798070611883

`floor(sqrt(A120876(n+1)))`
-/

namespace A076651.P13999940798070611883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120876 (n + 1))

end

end A076651.P13999940798070611883

namespace A076651

/-- `floor(sqrt(A120876(n+1)))` -/
def P13999940798070611883.Spec : Prop :=
  ∀ n, P13999940798070611883.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P13933827491870522384

`floor(sqrt(2)*A040040(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076651

/-- `floor(sqrt(2)*A040040(n+1))` -/
def P13933827491870522384.Spec : Prop :=
  ∀ n, P13933827491870522384.a n = A076651 (n + 1)

theorem P13933827491870522384.correct : P13933827491870522384.Spec := by
  intro n
  simp only [A076651, Nat.add_sub_cancel]

end A076651

/-! ## A076651.P14576669679291641523

`floor(A014574(n+1)/sqrt(2))`
-/

namespace A076651.P14576669679291641523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014574 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A076651.P14576669679291641523

namespace A076651

/-- `floor(A014574(n+1)/sqrt(2))` -/
def P14576669679291641523.Spec : Prop :=
  ∀ n, P14576669679291641523.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P15252157517354722560

`floor(sqrt(A037074(n+1)/2))`
-/

namespace A076651.P15252157517354722560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A037074 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A076651.P15252157517354722560

namespace A076651

/-- `floor(sqrt(A037074(n+1)/2))` -/
def P15252157517354722560.Spec : Prop :=
  ∀ n, P15252157517354722560.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P4365500064307970590

`floor(sqrt(A063533(n+1))/2)`
-/

namespace A076651.P4365500064307970590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A063533 (n + 1) : ℝ) / 2⌋

end

end A076651.P4365500064307970590

namespace A076651

/-- `floor(sqrt(A063533(n+1))/2)` -/
def P4365500064307970590.Spec : Prop :=
  ∀ n, P4365500064307970590.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P17667361743923677088

`floor(sqrt(A071142(n+1))/2)`
-/

namespace A076651.P17667361743923677088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A071142 (n + 1) : ℝ) / 2⌋

end

end A076651.P17667361743923677088

namespace A076651

/-- `floor(sqrt(A071142(n+1))/2)` -/
def P17667361743923677088.Spec : Prop :=
  ∀ n, P17667361743923677088.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P15026088268635191278

`floor(sqrt(A075369(n+1)/2))`
-/

namespace A076651.P15026088268635191278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A075369 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A076651.P15026088268635191278

namespace A076651

/-- `floor(sqrt(A075369(n+1)/2))` -/
def P15026088268635191278.Spec : Prop :=
  ∀ n, P15026088268635191278.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P11823001230670812040

`floor(sqrt(A120875(n+1)/2))`
-/

namespace A076651.P11823001230670812040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A120875 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A076651.P11823001230670812040

namespace A076651

/-- `floor(sqrt(A120875(n+1)/2))` -/
def P11823001230670812040.Spec : Prop :=
  ∀ n, P11823001230670812040.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P9195949122324008345

`floor(sqrt(A184417(n+1))/2)`
-/

namespace A076651.P9195949122324008345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A184417 (n + 1) : ℝ) / 2⌋

end

end A076651.P9195949122324008345

namespace A076651

/-- `floor(sqrt(A184417(n+1))/2)` -/
def P9195949122324008345.Spec : Prop :=
  ∀ n, P9195949122324008345.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P3973561930186034771

`floor(sqrt(sqrt(A094949(n+1))/2))`
-/

namespace A076651.P3973561930186034771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A094949 (n + 1) : ℝ) / 2)⌋

end

end A076651.P3973561930186034771

namespace A076651

/-- `floor(sqrt(sqrt(A094949(n+1))/2))` -/
def P3973561930186034771.Spec : Prop :=
  ∀ n, P3973561930186034771.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P9981907727905444802

`floor((A001359(n+1)+1)/sqrt(2))`
-/

namespace A076651.P9981907727905444802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001359 (n + 1) + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A076651.P9981907727905444802

namespace A076651

/-- `floor((A001359(n+1)+1)/sqrt(2))` -/
def P9981907727905444802.Spec : Prop :=
  ∀ n, P9981907727905444802.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P5544586370910979282

`floor((A006512(n+1)-1)/sqrt(2))`
-/

namespace A076651.P5544586370910979282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006512 (n + 1) - 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A076651.P5544586370910979282

namespace A076651

/-- `floor((A006512(n+1)-1)/sqrt(2))` -/
def P5544586370910979282.Spec : Prop :=
  ∀ n, P5544586370910979282.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P14247601125624392111

`floor(sqrt(2)*A168497(n+2))`
-/

namespace A076651.P14247601125624392111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A168497 (n + 2) : ℝ)⌋

end

end A076651.P14247601125624392111

namespace A076651

/-- `floor(sqrt(2)*A168497(n+2))` -/
def P14247601125624392111.Spec : Prop :=
  ∀ n, P14247601125624392111.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P10486800714508548778

`floor(sqrt(A134020(n+2)/2))`
-/

namespace A076651.P10486800714508548778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A134020 (n + 2) : ℚ) / 2 : ℝ)⌋

end

end A076651.P10486800714508548778

namespace A076651

/-- `floor(sqrt(A134020(n+2)/2))` -/
def P10486800714508548778.Spec : Prop :=
  ∀ n, P10486800714508548778.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P17743222667394488643

`floor((p?[A000040(n+1)+2]-1)*sqrt(2/4))`
-/

namespace A076651.P17743222667394488643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℝ) * Real.sqrt ((2 : ℚ) / 4 : ℝ)⌋

end

end A076651.P17743222667394488643

namespace A076651

/-- `floor((p?[A000040(n+1)+2]-1)*sqrt(2/4))` -/
def P17743222667394488643.Spec : Prop :=
  ∀ n, P17743222667394488643.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P16547589568571235829

`floor(A090679(n+1)/2)`
-/

namespace A076651.P16547589568571235829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090679 (n + 1) : ℚ) / 2⌋

end

end A076651.P16547589568571235829

namespace A076651

/-- `floor(A090679(n+1)/2)` -/
def P16547589568571235829.Spec : Prop :=
  ∀ n, P16547589568571235829.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P14011408811716644073

`floor((p?[A207790(2*(n+1))+2]-1)*sqrt(2/4))`
-/

namespace A076651.P14011408811716644073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℝ) * Real.sqrt ((2 : ℚ) / 4 : ℝ)⌋

end

end A076651.P14011408811716644073

namespace A076651

/-- `floor((p?[A207790(2*(n+1))+2]-1)*sqrt(2/4))` -/
def P14011408811716644073.Spec : Prop :=
  ∀ n, P14011408811716644073.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P16464627331433559192

`A001951(A040040(n+1))`
-/

namespace A076651.P16464627331433559192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A040040 (n + 1)).toNat

end

end A076651.P16464627331433559192

namespace A076651

/-- `A001951(A040040(n+1))` -/
def P16464627331433559192.Spec : Prop :=
  ∀ n, P16464627331433559192.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P1973850098734660386

`A001951(A168497(n+2))`
-/

namespace A076651.P1973850098734660386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A168497 (n + 2)).toNat

end

end A076651.P1973850098734660386

namespace A076651

/-- `A001951(A168497(n+2))` -/
def P1973850098734660386.Spec : Prop :=
  ∀ n, P1973850098734660386.a n = A076651 (n + 1)

end A076651

/-! ## A076651.P11329950232658974874

`A001951(A014574(n+1)/2)`
-/

namespace A076651.P11329950232658974874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A076651.P11329950232658974874

namespace A076651

/-- `A001951(A014574(n+1)/2)` -/
def P11329950232658974874.Spec : Prop :=
  ∀ n, P11329950232658974874.a n = A076651 (n + 1)

end A076651

/-!
# A076654: Smallest natural number not a multiple of 10, not occurring earlier and starting with the end of the previous term.

The programs for A076654, there is no canonical definition to state claims against.
-/

/-! ## A076654.P895023691404863522

`A004086(A360470(n+1)%A306872(n+1))`
-/

namespace A076654.P895023691404863522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A360470 (n + 1)) (A306872 (n + 1))).toNat

end

end A076654.P895023691404863522

/-! ## A076654.P11538001466267306385

`A004086(A327723(n+3)%A050688(n+5))`
-/

namespace A076654.P11538001466267306385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A327723 (n + 3)) (A050688 (n + 5))).toNat

end

end A076654.P11538001466267306385

/-! ## A076654.P1396798748862468697

`A347400(A360470(n+1))`
-/

namespace A076654.P1396798748862468697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (A360470 (n + 1)).toNat

end

end A076654.P1396798748862468697

/-! ## A076654.P4165423392348400957

`A347400(A327723(n+3))`
-/

namespace A076654.P4165423392348400957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (A327723 (n + 3)).toNat

end

end A076654.P4165423392348400957

/-!
# A076656: a(1) = 2; a(n) is smallest prime > 3*a(n-1).

The programs for A076656, there is no canonical definition to state claims against.
-/

/-! ## A076656.P4617040277482290886

`A229610(∑[n]+1)`
-/

namespace A076656.P4617040277482290886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076656.P4617040277482290886

/-! ## A076656.P4133530835801345439

`record[A229610(n+1)]`
-/

namespace A076656.P4133530835801345439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076656.P4133530835801345439

/-! ## A076656.P4110194662395646696

`A151800(3*a(n-1))` with `a(0)=2`
-/

namespace A076656.P4110194662395646696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (3 * a (n - 1)).toNat

end

end A076656.P4110194662395646696

/-! ## A076656.P15866063004506101157

`A151800(lcm(3, a(n-1)))` with `a(0)=2`
-/

namespace A076656.P15866063004506101157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (Int.lcm 3 (a (n - 1)))

end

end A076656.P15866063004506101157

/-! ## A076656.P15050585371861574953

`A151800(a(n-1)/sqrt(1/9))` with `a(0)=2`
-/

namespace A076656.P15050585371861574953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ))).toNat

end

end A076656.P15050585371861574953

/-!
# A076657: a(n) = (1/24) * binomial(2n,n)*(16^n-binomial(2n,n)^2). Right side of identity involving series A005148.

The programs for A076657, the canonical program `A076657.P17315579403826063075` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076657 has offset 0).

The definition of A076657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076657.P11284387552961234402

`∑{#}[n-1, C(2*n-2*(#+1), n-(#+1))^3*A005148(#+1)]`
-/

namespace A076657.P11284387552961234402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((2 * n : ℤ) - (2 * (k + 1) : ℤ)).toNat ((n : ℤ) - (k + 1 : ℤ)).toNat ^ 3 : ℤ) * A005148 (k + 1)

end

end A076657.P11284387552961234402

namespace A076657

/-- `∑{#}[n-1, C(2*n-2*(#+1), n-(#+1))^3*A005148(#+1)]` -/
def P11284387552961234402.Spec : Prop :=
  ∀ n, P11284387552961234402.a n = A076657 n

end A076657

/-! ## A076657.P17315579403826063075

`C(2*n, n)*(16^n-C(2*n, n)²)/24`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076657

/-- `C(2*n, n)*(16^n-C(2*n, n)²)/24` -/
def P17315579403826063075.Spec : Prop :=
  ∀ n, P17315579403826063075.a n = (A076657 n : ℚ)

end A076657

/-!
# A076658: Numerator of f(n), where for n > 2, f(n) = (n-1)/f(n-1) + (n-2)/f(n-2), with f(1)=1, f(2)=2.

The programs for A076658, there is no canonical definition to state claims against.
-/

/-! ## A076658.P12348632641510702762

`A004001(A174589(n+1)+n)`
-/

namespace A076658.P12348632641510702762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A174589 (n + 1) + (n : ℤ)).toNat

end

end A076658.P12348632641510702762

/-! ## A076658.P10349398897321208529

`A028310(∑{p}[A088991(n+1), #])`
-/

namespace A076658.P10349398897321208529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076658.P10349398897321208529

/-!
# A076659: Denominator of f(n), where for n>2, f(n) = (n-1)/f(n-1)+(n-2)/f(n-2), with f(1) = 1, f(2) = 2.

The programs for A076659, there is no canonical definition to state claims against.
-/

/-! ## A076659.P3072387933924967748

`A132210(floor(sqrt(n!)))`
-/

namespace A076659.P3072387933924967748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132210 (Nat.sqrt (Nat.factorial n))

end

end A076659.P3072387933924967748

/-! ## A076659.P7437751425655816730

`floor(sqrt(A226187(2^n)))`
-/

namespace A076659.P7437751425655816730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A226187 (2 ^ n))

end

end A076659.P7437751425655816730

/-!
# A076662: First differences of A007066.

The programs for A076662, the canonical program `A076662.P5818485262052889704` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076662 has offset 1).

The definition of A076662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076662.P1310055506918030722

`Δ[ceil(ϕ²*n)]`
-/

namespace A076662.P1310055506918030722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 2 * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076662.P1310055506918030722

namespace A076662

/-- `Δ[ceil(ϕ²*n)]` -/
def P1310055506918030722.Spec : Prop :=
  ∀ n, P1310055506918030722.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P18003300163017926720

`runs[floor(n/ϕ²)]`
-/

namespace A076662.P18003300163017926720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A076662.P18003300163017926720

namespace A076662

/-- `runs[floor(n/ϕ²)]` -/
def P18003300163017926720.Spec : Prop :=
  ∀ n, (P18003300163017926720.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P10118654289411795729

`or(2, Δ[ceil(n/ϕ)])`
-/

namespace A076662.P10118654289411795729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A076662.P10118654289411795729

namespace A076662

/-- `or(2, Δ[ceil(n/ϕ)])` -/
def P10118654289411795729.Spec : Prop :=
  ∀ n, P10118654289411795729.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P2662660299411027480

`xor(2, Δ[ceil(n/ϕ)])`
-/

namespace A076662.P2662660299411027480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A076662.P2662660299411027480

namespace A076662

/-- `xor(2, Δ[ceil(n/ϕ)])` -/
def P2662660299411027480.Spec : Prop :=
  ∀ n, P2662660299411027480.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P3064525076401884664

`runs[floor(n/ϕ)]+1`
-/

namespace A076662.P3064525076401884664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1

end

end A076662.P3064525076401884664

namespace A076662

/-- `runs[floor(n/ϕ)]+1` -/
def P3064525076401884664.Spec : Prop :=
  ∀ n, (P3064525076401884664.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P17395078772316966025

`Δ[ceil(ϕ*n)]!+1`
-/

namespace A076662.P17395078772316966025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat + 1

end

end A076662.P17395078772316966025

namespace A076662

/-- `Δ[ceil(ϕ*n)]!+1` -/
def P17395078772316966025.Spec : Prop :=
  ∀ n, (P17395078772316966025.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P17314739687194981133

`dr(Δ[ceil(n/ϕ)])+2`
-/

namespace A076662.P17314739687194981133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) + 2

end

end A076662.P17314739687194981133

namespace A076662

/-- `dr(Δ[ceil(n/ϕ)])+2` -/
def P17314739687194981133.Spec : Prop :=
  ∀ n, (P17314739687194981133.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P17404684523372487538

`(Δ[ceil(n/ϕ)]+2)%4`
-/

namespace A076662.P17404684523372487538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 2) 4

end

end A076662.P17404684523372487538

namespace A076662

/-- `(Δ[ceil(n/ϕ)]+2)%4` -/
def P17404684523372487538.Spec : Prop :=
  ∀ n, P17404684523372487538.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P11580047617109065439

`and(3, Δ[ceil(n/ϕ)]+2)`
-/

namespace A076662.P11580047617109065439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n + 2)

end

end A076662.P11580047617109065439

namespace A076662

/-- `and(3, Δ[ceil(n/ϕ)]+2)` -/
def P11580047617109065439.Spec : Prop :=
  ∀ n, P11580047617109065439.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P10447794609441346262

`3-dr(Δ[floor(n/ϕ²)])`
-/

namespace A076662.P10447794609441346262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℤ)

end

end A076662.P10447794609441346262

namespace A076662

/-- `3-dr(Δ[floor(n/ϕ²)])` -/
def P10447794609441346262.Spec : Prop :=
  ∀ n, P10447794609441346262.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P5818485262052889704

`Δ[n+1-a(a(n-1))]+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076662

/-- `Δ[n+1-a(a(n-1))]+2` -/
def P5818485262052889704.Spec : Prop :=
  ∀ n, P5818485262052889704.a n = A076662 (n + 1)

theorem P5818485262052889704.correct : P5818485262052889704.Spec := by
  intro n
  simp only [A076662, Nat.add_sub_cancel]

end A076662

/-! ## A076662.P5366455364986340640

`A114986(n)+2`
-/

namespace A076662.P5366455364986340640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n + 2

end

end A076662.P5366455364986340640

namespace A076662

/-- `A114986(n)+2` -/
def P5366455364986340640.Spec : Prop :=
  ∀ n, P5366455364986340640.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P14318736978230630526

`Δ[A004956(n)]+1`
-/

namespace A076662.P14318736978230630526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A076662.P14318736978230630526

namespace A076662

/-- `Δ[A004956(n)]+1` -/
def P14318736978230630526.Spec : Prop :=
  ∀ n, P14318736978230630526.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P13273133781212702199

`char[A066096(n)]+2`
-/

namespace A076662.P13273133781212702199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A076662.P13273133781212702199

namespace A076662

/-- `char[A066096(n)]+2` -/
def P13273133781212702199.Spec : Prop :=
  ∀ n, (P13273133781212702199.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P9537903108495527379

`a(A026272(n))` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A076662.P9537903108495527379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2] fun n a =>
  a (A026272 n).toNat

end

end A076662.P9537903108495527379

namespace A076662

/-- `a(A026272(n))` -/
def P9537903108495527379.Spec : Prop :=
  ∀ n, (P9537903108495527379.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P8774054222185363033

`3-A188432(n+1)`
-/

namespace A076662.P8774054222185363033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A188432 (n + 1)

end

end A076662.P8774054222185363033

namespace A076662

/-- `3-A188432(n+1)` -/
def P8774054222185363033.Spec : Prop :=
  ∀ n, P8774054222185363033.a n = A076662 (n + 1)

theorem P8774054222185363033.correct : P8774054222185363033.Spec := by
  intro n
  simp only [A076662, Nat.add_sub_cancel, A076662.P8774054222185363033.a, A076662.P5818485262052889704.f1, A076662.P5818485262052889704.a, A188432, A188432.P16977430927504118558.f1, A188432.P16977430927504118558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076662

/-! ## A076662.P12989615091263234865

`A000040(Δ[ceil(ϕ*n)])`
-/

namespace A076662.P12989615091263234865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A076662.P12989615091263234865

namespace A076662

/-- `A000040(Δ[ceil(ϕ*n)])` -/
def P12989615091263234865.Spec : Prop :=
  ∀ n, P12989615091263234865.a n = A076662 (n + 1)

end A076662

/-! ## A076662.P6440155286420406603

`char[A120613(n+1)]+2`
-/

namespace A076662.P6440155286420406603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A076662.P6440155286420406603

namespace A076662

/-- `char[A120613(n+1)]+2` -/
def P6440155286420406603.Spec : Prop :=
  ∀ n, (P6440155286420406603.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P835676841229014163

`char[∑[A284749(n+1)]]+2`
-/

namespace A076662.P835676841229014163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A076662.P835676841229014163

namespace A076662

/-- `char[∑[A284749(n+1)]]+2` -/
def P835676841229014163.Spec : Prop :=
  ∀ n, (P835676841229014163.a n : ℤ) = A076662 (n + 1)

end A076662

/-! ## A076662.P18270870785613658489

`char[comp[A001950(n+1)]]+2`
-/

namespace A076662.P18270870785613658489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2

end

end A076662.P18270870785613658489

namespace A076662

/-- `char[comp[A001950(n+1)]]+2` -/
def P18270870785613658489.Spec : Prop :=
  ∀ n, (P18270870785613658489.a n : ℤ) = A076662 (n + 1)

end A076662

/-!
# A076663: a(n) = sum of sigma(e) where e ranges over all non-divisors of n that are between 1 and n.

The programs for A076663, the canonical program `A076663.P9173981958373011071` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076663 has offset 1).

The definition of A076663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076663.P9173981958373011071

`A024916(n+1)-A007429(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076663

/-- `A024916(n+1)-A007429(n+1)` -/
def P9173981958373011071.Spec : Prop :=
  ∀ n, P9173981958373011071.a n = A076663 (n + 1)

theorem P9173981958373011071.correct : P9173981958373011071.Spec := by
  intro n
  simp only [A076663, Nat.add_sub_cancel]

end A076663

/-! ## A076663.P6812704807088508495

`∑[∑{d}[n, #]]-A211779(n+1)`
-/

namespace A076663.P6812704807088508495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211779 (n + 1)

end

end A076663.P6812704807088508495

namespace A076663

/-- `∑[∑{d}[n, #]]-A211779(n+1)` -/
def P6812704807088508495.Spec : Prop :=
  ∀ n, P6812704807088508495.a n = A076663 (n + 1)

end A076663

/-! ## A076663.P16434093942701773519

`∑[∑{d}[n+1, #]]-∑{d}[n+1, A000203(#)]`
-/

namespace A076663.P16434093942701773519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f3 n), A000203 d

end

end A076663.P16434093942701773519

namespace A076663

/-- `∑[∑{d}[n+1, #]]-∑{d}[n+1, A000203(#)]` -/
def P16434093942701773519.Spec : Prop :=
  ∀ n, P16434093942701773519.a n = A076663 (n + 1)

end A076663

/-! ## A076663.P11007105188284149356

`∑[∑{d}[n+1, #]]-(A211780(n+1)+1+n)`
-/

namespace A076663.P11007105188284149356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A211780 (n + 1) + 1 + (n : ℤ))

end

end A076663.P11007105188284149356

namespace A076663

/-- `∑[∑{d}[n+1, #]]-(A211780(n+1)+1+n)` -/
def P11007105188284149356.Spec : Prop :=
  ∀ n, P11007105188284149356.a n = A076663 (n + 1)

end A076663

/-! ## A076663.P7113631501849694774

`∑[∑{d}[n+1, #]]-∑{d}[n+1, (n+1)/#*A000005(#)]`
-/

namespace A076663.P7113631501849694774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ) * (A000005 d : ℚ)

end

end A076663.P7113631501849694774

namespace A076663

/-- `∑[∑{d}[n+1, #]]-∑{d}[n+1, (n+1)/#*A000005(#)]` -/
def P7113631501849694774.Spec : Prop :=
  ∀ n, P7113631501849694774.a n = (A076663 (n + 1) : ℚ)

end A076663

/-! ## A076663.P16630554495979855418

`A160664(n)-(A211779(n+1)+1)`
-/

namespace A076663.P16630554495979855418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - (A211779 (n + 1) + 1)

end

end A076663.P16630554495979855418

namespace A076663

/-- `A160664(n)-(A211779(n+1)+1)` -/
def P16630554495979855418.Spec : Prop :=
  ∀ n, P16630554495979855418.a n = A076663 (n + 1)

end A076663

/-! ## A076663.P13338469803853948687

`∑[A000203(n+1)]-A007429(n+1)`
-/

namespace A076663.P13338469803853948687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007429 (n + 1)

end

end A076663.P13338469803853948687

namespace A076663

/-- `∑[A000203(n+1)]-A007429(n+1)` -/
def P13338469803853948687.Spec : Prop :=
  ∀ n, P13338469803853948687.a n = A076663 (n + 1)

end A076663

/-! ## A076663.P11405997446903719956

`∑{#}[n, n+1-(n+1)%(#+1)]-A007429(n+1)`
-/

namespace A076663.P11405997446903719956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1 : ℤ) - (((n + 1) % (k + 1) : ℕ) : ℤ)) - A007429 (n + 1)

end

end A076663.P11405997446903719956

namespace A076663

/-- `∑{#}[n, n+1-(n+1)%(#+1)]-A007429(n+1)` -/
def P11405997446903719956.Spec : Prop :=
  ∀ n, P11405997446903719956.a n = A076663 (n + 1)

end A076663

/-!
# A076664: a(n) = Sum_{k=1..n} antisigma(k), where antisigma(i) = sum of the nondivisors of i that are between 1 and i.

The programs for A076664, the canonical program `A076664.P133885836827351204` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076664 has offset 1).

The definition of A076664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076664.P133885836827351204

`A000292(n+1)-A024916(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076664

/-- `A000292(n+1)-A024916(n+1)` -/
def P133885836827351204.Spec : Prop :=
  ∀ n, P133885836827351204.a n = A076664 (n + 1)

theorem P133885836827351204.correct : P133885836827351204.Spec := by
  intro n
  simp only [A076664, Nat.add_sub_cancel]

end A076664

/-! ## A076664.P3676738086973983573

`∑[∑[n+1-Δ[∑{d}[n, #]]]]`
-/

namespace A076664.P3676738086973983573
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P3676738086973983573

namespace A076664

/-- `∑[∑[n+1-Δ[∑{d}[n, #]]]]` -/
def P3676738086973983573.Spec : Prop :=
  ∀ n, P3676738086973983573.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P11551052664697729275

`∑[∑[n+1]-∑{d}[n+1, #]]`
-/

namespace A076664.P11551052664697729275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P11551052664697729275

namespace A076664

/-- `∑[∑[n+1]-∑{d}[n+1, #]]` -/
def P11551052664697729275.Spec : Prop :=
  ∀ n, P11551052664697729275.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P12979391338933390043

`∑[A024816(n+1)]`
-/

namespace A076664.P12979391338933390043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P12979391338933390043

namespace A076664

/-- `∑[A024816(n+1)]` -/
def P12979391338933390043.Spec : Prop :=
  ∀ n, P12979391338933390043.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P5306839117726015113

`∑[∑[n]-A001065(n+1)]`
-/

namespace A076664.P5306839117726015113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P5306839117726015113

namespace A076664

/-- `∑[∑[n]-A001065(n+1)]` -/
def P5306839117726015113.Spec : Prop :=
  ∀ n, P5306839117726015113.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P8948453578194928861

`∑[∑[n]]-A153485(n+1)`
-/

namespace A076664.P8948453578194928861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1)

end

end A076664.P8948453578194928861

namespace A076664

/-- `∑[∑[n]]-A153485(n+1)` -/
def P8948453578194928861.Spec : Prop :=
  ∀ n, P8948453578194928861.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P1779355869149163458

`∑[A235799(n+1)-∑[n]]`
-/

namespace A076664.P1779355869149163458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P1779355869149163458

namespace A076664

/-- `∑[A235799(n+1)-∑[n]]` -/
def P1779355869149163458.Spec : Prop :=
  ∀ n, P1779355869149163458.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P7700803290122656891

`∑[C(n, 2)-A237588(n+1)]`
-/

namespace A076664.P7700803290122656891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P7700803290122656891

namespace A076664

/-- `∑[C(n, 2)-A237588(n+1)]` -/
def P7700803290122656891.Spec : Prop :=
  ∀ n, P7700803290122656891.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P7490012375729240310

`∑[∑[n+1]-A000203(n+1)]`
-/

namespace A076664.P7490012375729240310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P7490012375729240310

namespace A076664

/-- `∑[∑[n+1]-A000203(n+1)]` -/
def P7490012375729240310.Spec : Prop :=
  ∀ n, P7490012375729240310.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P15205342417274056915

`∑[∑[n+1]-A245092(2*n+1)]`
-/

namespace A076664.P15205342417274056915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P15205342417274056915

namespace A076664

/-- `∑[∑[n+1]-A245092(2*n+1)]` -/
def P15205342417274056915.Spec : Prop :=
  ∀ n, P15205342417274056915.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P11282571236773102890

`∑[∑[n+1]-(A155085(n+1)-(n+1))]`
-/

namespace A076664.P11282571236773102890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P11282571236773102890

namespace A076664

/-- `∑[∑[n+1]-(A155085(n+1)-(n+1))]` -/
def P11282571236773102890.Spec : Prop :=
  ∀ n, P11282571236773102890.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P1374913691072242877

`∑[∑[n+1]-A064987(n+1)/(n+1)]`
-/

namespace A076664.P1374913691072242877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P1374913691072242877

namespace A076664

/-- `∑[∑[n+1]-A064987(n+1)/(n+1)]` -/
def P1374913691072242877.Spec : Prop :=
  ∀ n, P1374913691072242877.a n = (A076664 (n + 1) : ℚ)

end A076664

/-! ## A076664.P10802263214435929842

`A005581(n)-A244049(n+1)`
-/

namespace A076664.P10802263214435929842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n - A244049 (n + 1)

end

end A076664.P10802263214435929842

namespace A076664

/-- `A005581(n)-A244049(n+1)` -/
def P10802263214435929842.Spec : Prop :=
  ∀ n, P10802263214435929842.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P2329153522623135171

`A111490(n+1)-A254749(n+1)`
-/

namespace A076664.P2329153522623135171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) - A254749 (n + 1)

end

end A076664.P2329153522623135171

namespace A076664

/-- `A111490(n+1)-A254749(n+1)` -/
def P2329153522623135171.Spec : Prop :=
  ∀ n, P2329153522623135171.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P14190672420634972737

`A354801(n+1)-A081498(n+1)`
-/

namespace A076664.P14190672420634972737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354801 (n + 1) - A081498 (n + 1)

end

end A076664.P14190672420634972737

namespace A076664

/-- `A354801(n+1)-A081498(n+1)` -/
def P14190672420634972737.Spec : Prop :=
  ∀ n, P14190672420634972737.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P7908853837264380108

`A099738(n+1)-A167541(n+6)`
-/

namespace A076664.P7908853837264380108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099738 (n + 1) - A167541 (n + 6)

end

end A076664.P7908853837264380108

namespace A076664

/-- `A099738(n+1)-A167541(n+6)` -/
def P7908853837264380108.Spec : Prop :=
  ∀ n, P7908853837264380108.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P14576695079486174607

`∑[∑[A163553(n+1)]-A163553(n+1)]`
-/

namespace A076664.P14576695079486174607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A163553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076664.P14576695079486174607

namespace A076664

/-- `∑[∑[A163553(n+1)]-A163553(n+1)]` -/
def P14576695079486174607.Spec : Prop :=
  ∀ n, P14576695079486174607.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P3680698760801383385

`A000330(n)-(A123329(n)+A072481(n))`
-/

namespace A076664.P3680698760801383385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - (A123329 n + A072481 n)

end

end A076664.P3680698760801383385

namespace A076664

/-- `A000330(n)-(A123329(n)+A072481(n))` -/
def P3680698760801383385.Spec : Prop :=
  ∀ n, P3680698760801383385.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P9195370755747122327

`A004125(n+1)+A000292(n)-A000217(n)`
-/

namespace A076664.P9195370755747122327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A000292 n - A000217 n)

end

end A076664.P9195370755747122327

namespace A076664

/-- `A004125(n+1)+A000292(n)-A000217(n)` -/
def P9195370755747122327.Spec : Prop :=
  ∀ n, P9195370755747122327.a n = A076664 (n + 1)

end A076664

/-! ## A076664.P1527580225592052122

`A072481(n+1)+A123329(n)-A153485(n+1)`
-/

namespace A076664.P1527580225592052122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 (n + 1) + (A123329 n - A153485 (n + 1))

end

end A076664.P1527580225592052122

namespace A076664

/-- `A072481(n+1)+A123329(n)-A153485(n+1)` -/
def P1527580225592052122.Spec : Prop :=
  ∀ n, P1527580225592052122.a n = A076664 (n + 1)

end A076664

/-!
# A076669: Primes of the form n^2*totient(n)+1 (or A053191(n) + 1).

The programs for A076669, there is no canonical definition to state claims against.
-/

/-! ## A076669.P1916485089728969466

`p?[A053191(n+1)+1]`
-/

namespace A076669.P1916485089728969466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076669.P1916485089728969466

/-! ## A076669.P7081311965419283742

`p?[(n+1)*A000010((n+1)²)+1]`
-/

namespace A076669.P7081311965419283742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076669.P7081311965419283742

/-! ## A076669.P12857180045346543389

`p?[ceil(A000010(n+1)/acot((n+1)²))]`
-/

namespace A076669.P12857180045346543389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076669.P12857180045346543389

/-! ## A076669.P8128122640882964790

`p?[(n+1)*(n+1)*A000010(lcm(2, n+1))+1]`
-/

namespace A076669.P8128122640882964790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.lcm 2 (n + 1))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076669.P8128122640882964790

/-! ## A076669.P91582819675036442

`p?[(n+1)*(n+1)*A000010(C(n+1, n))+1]`
-/

namespace A076669.P91582819675036442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.choose (n + 1) n)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076669.P91582819675036442

/-!
# A076671: Smallest a(n) > a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, with a(1)=5.

The programs for A076671, there is no canonical definition to state claims against.
-/

/-! ## A076671.P5495936966481921883

`sqrt(A072471(n+1))`
-/

namespace A076671.P5495936966481921883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072471 (n + 1) : ℝ)

end

end A076671.P5495936966481921883

/-! ## A076671.P16388671399650192099

`ceil(A076674(n+1)/ceil(acot(n)))`
-/

namespace A076671.P16388671399650192099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076674 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)⌉

end

end A076671.P16388671399650192099

/-! ## A076671.P3545158386836013393

`A076674(n+1)-A000038(n)²`
-/

namespace A076671.P3545158386836013393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076674 (n + 1) - A000038 n ^ 2

end

end A076671.P3545158386836013393

/-! ## A076671.P15408484672554581308

`ceil(A076674(n+1)/A054977(n))`
-/

namespace A076671.P15408484672554581308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076674 (n + 1) : ℚ) / (A054977 n : ℚ)⌉

end

end A076671.P15408484672554581308

/-! ## A076671.P1408007098739779008

`A076674(n+1)-4*A000007(n)`
-/

namespace A076671.P1408007098739779008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076674 (n + 1) - 4 * A000007 n

end

end A076671.P1408007098739779008

/-!
# A076672: Smallest a(n)>a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, a(1)=6.

The programs for A076672, there is no canonical definition to state claims against.
-/

/-! ## A076672.P8591045673750155724

`A076600(a(n-1))` with `a(0)=6`
-/

namespace A076672.P8591045673750155724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A076600 (a (n - 1)).toNat

end

end A076672.P8591045673750155724

/-! ## A076672.P13191402064169844846

`record[A076600(a(A049820(n+1)))]` with `a(0)=6`
-/

namespace A076672.P13191402064169844846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A076600 (f1 (A049820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076672.P13191402064169844846

/-! ## A076672.P4796842637982728810

`A076674(n+2)/A000032(A076710(n+3))`
-/

namespace A076672.P4796842637982728810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076674 (n + 2) : ℚ) / (A000032 (A076710 (n + 3)).toNat : ℚ)

end

end A076672.P4796842637982728810

/-! ## A076672.P12420252383366117432

`A076671(n+2)/A046698(A121295(n))`
-/

namespace A076672.P12420252383366117432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076671 (n + 2) : ℚ) / (A046698 (A121295 (n + 10)).toNat : ℚ)

end

end A076672.P12420252383366117432

/-! ## A076672.P16310072957805948775

`A196272(A122189(n))+A063928(A076671(n+2))`
-/

namespace A076672.P16310072957805948775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 (A122189 n).toNat + A063928 (A076671 (n + 2)).toNat

end

end A076672.P16310072957805948775

/-!
# A076673: Smallest a(n)>a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, a(1)=7.

The programs for A076673, there is no canonical definition to state claims against.
-/

/-! ## A076673.P12033535375551963677

`A076675(n+1)-C(3, (n+1)²)`
-/

namespace A076673.P12033535375551963677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076675 (n + 1) - (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A076673.P12033535375551963677

/-! ## A076673.P4839827663053926407

`A076675(n+1)-3*A000007(n)`
-/

namespace A076673.P4839827663053926407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076675 (n + 1) - 3 * A000007 n

end

end A076673.P4839827663053926407

/-! ## A076673.P10225539748680184842

`A076675(n+1)-3*A151878(n)`
-/

namespace A076673.P10225539748680184842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076675 (n + 1) - 3 * A151878 n

end

end A076673.P10225539748680184842

/-! ## A076673.P11518529094845965072

`A076675(n+1)-3*A008683(A000118(n))`
-/

namespace A076673.P11518529094845965072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076675 (n + 1) - 3 * A008683 (A000118 n).toNat

end

end A076673.P11518529094845965072

/-! ## A076673.P3105803817487243769

`A076600(a(n-1))` with `a(0)=7`
-/

namespace A076673.P3105803817487243769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A076600 (a (n - 1)).toNat

end

end A076673.P3105803817487243769

/-!
# A076674: Smallest a(n)>a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, a(1)=9.

The programs for A076674, there is no canonical definition to state claims against.
-/

/-! ## A076674.P5391192773377913287

`A076671(n+1)+4*floor(acot(n))`
-/

namespace A076674.P5391192773377913287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076671 (n + 1) + 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A076674.P5391192773377913287

/-! ## A076674.P8583324025245160725

`A076671(n+1)+A000038(n)²`
-/

namespace A076674.P8583324025245160725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076671 (n + 1) + A000038 n ^ 2

end

end A076674.P8583324025245160725

/-! ## A076674.P18026034642957176469

`A076671(n+1)+4*A000007(n)`
-/

namespace A076674.P18026034642957176469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076671 (n + 1) + 4 * A000007 n

end

end A076674.P18026034642957176469

/-! ## A076674.P945089997027783655

`A076671(n+1)+4*A151933(n)`
-/

namespace A076674.P945089997027783655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076671 (n + 1) + 4 * A151933 n

end

end A076674.P945089997027783655

/-! ## A076674.P16540580403426703318

`floor(A076671(n+1)^sqrt(A054977(n)))`
-/

namespace A076674.P16540580403426703318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076671 (n + 1) : ℝ) ^ (Real.sqrt (A054977 n : ℝ))⌋

end

end A076674.P16540580403426703318

/-!
# A076675: Smallest a(n)>a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, a(1)=10.

The programs for A076675, there is no canonical definition to state claims against.
-/

/-! ## A076675.P8274163339756732655

`C(3, (n+1)²)+A076673(n+1)`
-/

namespace A076675.P8274163339756732655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 ((n + 1) ^ 2) : ℤ) + A076673 (n + 1)

end

end A076675.P8274163339756732655

/-! ## A076675.P3303659298526263244

`A076673(n+1)+3*A000007(n)`
-/

namespace A076675.P3303659298526263244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076673 (n + 1) + 3 * A000007 n

end

end A076675.P3303659298526263244

/-! ## A076675.P9741880301342747074

`A076673(n+1)+3*A151878(n)`
-/

namespace A076675.P9741880301342747074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076673 (n + 1) + 3 * A151878 n

end

end A076675.P9741880301342747074

/-! ## A076675.P3459610892694503019

`A076673(n+1)+C(3, A076712(n+1))`
-/

namespace A076675.P3459610892694503019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076673 (n + 1) + (Nat.choose 3 (A076712 (n + 1)).toNat : ℤ)

end

end A076675.P3459610892694503019

/-! ## A076675.P4938185549343626129

`A076673(n+1)+A014197(A107153(n+1))`
-/

namespace A076675.P4938185549343626129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076673 (n + 1) + A014197 (A107153 (n + 1)).toNat

end

end A076675.P4938185549343626129

/-!
# A076676: Smallest a(n)>a(n-1) such that a(n)^2+a(n-1)^2 is a perfect square, a(1)=11.

The programs for A076676, there is no canonical definition to state claims against.
-/

/-! ## A076676.P10692298345090888815

`A076600(a(n-1))` with `a(0)=11`
-/

namespace A076676.P10692298345090888815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A076600 (a (n - 1)).toNat

end

end A076676.P10692298345090888815

/-! ## A076676.P4292233867492773599

`A076675(3%comp[∑[n]]+n)+A000007(n)`
-/

namespace A076676.P4292233867492773599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076675 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + A000007 n

end

end A076676.P4292233867492773599

/-! ## A076676.P10211280758584493874

`A076673(n+3)%A001157(∑[A272923(n)])`
-/

namespace A076676.P10211280758584493874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076673 (n + 3)) (A001157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A076676.P10211280758584493874

/-! ## A076676.P18037854908758099066

`A076675(n+3)%A076713(A076671(n+1))`
-/

namespace A076676.P18037854908758099066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076675 (n + 3)) (A076713 (A076671 (n + 1)).toNat)

end

end A076676.P18037854908758099066

/-!
# A076677: a(0)=a(1)=1 a(n)=a(n-1)+floor(sqrt(a(n-2))).

The programs for A076677, the canonical program `A076677.P15264883113489441662` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076677 has offset 0).

The definition of A076677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-2)))` (program `A076677.P15264883113489441662`, by `A076677.P15264883113489441662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076677.P15264883113489441662

`a(n-1)+floor(sqrt(a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076677

/-- `a(n-1)+floor(sqrt(a(n-2)))` -/
def P15264883113489441662.Spec : Prop :=
  ∀ n, (P15264883113489441662.a n : ℤ) = A076677 n

theorem P15264883113489441662.correct : P15264883113489441662.Spec := by
  intro n
  simp only [A076677]

end A076677

/-! ## A076677.P2019061533687517870

`1*a(n-1)+floor(sqrt(a(n-2)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076677.P2019061533687517870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 * a (n - 1) + Nat.sqrt (a (n - 2))

end

end A076677.P2019061533687517870

namespace A076677

/-- `1*a(n-1)+floor(sqrt(a(n-2)))` -/
def P2019061533687517870.Spec : Prop :=
  ∀ n, (P2019061533687517870.a n : ℤ) = A076677 n

theorem P2019061533687517870.correct : P2019061533687517870.Spec := by
  intro n
  simp only [A076677, Nat.add_sub_cancel, A076677.P2019061533687517870.a, A076677.P15264883113489441662.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076677

/-! ## A076677.P174898707447195843

`floor(a(n-1)+root(a(n-2), 2))` with `a(0)=1, a(1)=1`
-/

namespace A076677.P174898707447195843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 2) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A076677.P174898707447195843

namespace A076677

/-- `floor(a(n-1)+root(a(n-2), 2))` -/
def P174898707447195843.Spec : Prop :=
  ∀ n, P174898707447195843.a n = A076677 n

end A076677

/-! ## A076677.P3795207645828288776

`round(a(n-1)+sqrt(a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A076677.P3795207645828288776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (a (n - 3) : ℝ))

end

end A076677.P3795207645828288776

namespace A076677

/-- `round(a(n-1)+sqrt(a(n-3)))` -/
def P3795207645828288776.Spec : Prop :=
  ∀ n, P3795207645828288776.a n = A076677 n

end A076677

/-! ## A076677.P15738267546924494723

`floor(a(n-1)+a(n-2)^(1/2))` with `a(0)=1, a(1)=1`
-/

namespace A076677.P15738267546924494723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 2) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A076677.P15738267546924494723

namespace A076677

/-- `floor(a(n-1)+a(n-2)^(1/2))` -/
def P15738267546924494723.Spec : Prop :=
  ∀ n, P15738267546924494723.a n = A076677 n

end A076677

/-! ## A076677.P7272185998849910685

`floor(2*a(n-1)-(a(n-1)-sqrt(a(n-2))))` with `a(0)=1, a(1)=1`
-/

namespace A076677.P7272185998849910685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) - ((a (n - 1) : ℝ) - Real.sqrt (a (n - 2) : ℝ))⌋

end

end A076677.P7272185998849910685

namespace A076677

/-- `floor(2*a(n-1)-(a(n-1)-sqrt(a(n-2))))` -/
def P7272185998849910685.Spec : Prop :=
  ∀ n, P7272185998849910685.a n = A076677 n

end A076677

/-! ## A076677.P18229301499216282037

`A000194(a(n-3))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A076677.P18229301499216282037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000194 (a (n - 3)).toNat + a (n - 1)

end

end A076677.P18229301499216282037

namespace A076677

/-- `A000194(a(n-3))+a(n-1)` -/
def P18229301499216282037.Spec : Prop :=
  ∀ n, P18229301499216282037.a n = A076677 n

end A076677

/-! ## A076677.P6327253639161510192

`A000196(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A076677.P6327253639161510192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000196 (a (n - 2)).toNat + a (n - 1)

end

end A076677.P6327253639161510192

namespace A076677

/-- `A000196(a(n-2))+a(n-1)` -/
def P6327253639161510192.Spec : Prop :=
  ∀ n, P6327253639161510192.a n = A076677 n

end A076677

/-!
# A076678: a(0)=a(1)=1 a(n)=floor(sqrt(a(n-1)))+a(n-2).

The programs for A076678, the canonical program `A076678.P11111365367546002313` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076678 has offset 0).

The definition of A076678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-1)))+a(n-2)` (program `A076678.P11111365367546002313`, by `A076678.P11111365367546002313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076678.P11111365367546002313

`floor(sqrt(a(n-1)))+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A076678

/-- `floor(sqrt(a(n-1)))+a(n-2)` -/
def P11111365367546002313.Spec : Prop :=
  ∀ n, (P11111365367546002313.a n : ℤ) = A076678 n

theorem P11111365367546002313.correct : P11111365367546002313.Spec := by
  intro n
  simp only [A076678]

end A076678

/-! ## A076678.P4902215459758857753

`1*floor(sqrt(a(n-1)))+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076678.P4902215459758857753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 * Nat.sqrt (a (n - 1)) + a (n - 2)

end

end A076678.P4902215459758857753

namespace A076678

/-- `1*floor(sqrt(a(n-1)))+a(n-2)` -/
def P4902215459758857753.Spec : Prop :=
  ∀ n, (P4902215459758857753.a n : ℤ) = A076678 n

theorem P4902215459758857753.correct : P4902215459758857753.Spec := by
  intro n
  simp only [A076678, Nat.add_sub_cancel, A076678.P4902215459758857753.a, A076678.P11111365367546002313.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076678

/-! ## A076678.P2507385006681369194

`floor(a(n-2)+root(a(n-1), 2))` with `a(0)=1, a(1)=1`
-/

namespace A076678.P2507385006681369194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A076678.P2507385006681369194

namespace A076678

/-- `floor(a(n-2)+root(a(n-1), 2))` -/
def P2507385006681369194.Spec : Prop :=
  ∀ n, P2507385006681369194.a n = A076678 n

end A076678

/-! ## A076678.P16109790250386935023

`round(a(n-2)+sqrt(a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A076678.P16109790250386935023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.sqrt (a (n - 3) : ℝ))

end

end A076678.P16109790250386935023

namespace A076678

/-- `round(a(n-2)+sqrt(a(n-3)))` -/
def P16109790250386935023.Spec : Prop :=
  ∀ n, P16109790250386935023.a n = A076678 n

end A076678

/-! ## A076678.P654651086832978377

`floor(a(n-2)+a(n-1)^(1/2))` with `a(0)=1, a(1)=1`
-/

namespace A076678.P654651086832978377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A076678.P654651086832978377

namespace A076678

/-- `floor(a(n-2)+a(n-1)^(1/2))` -/
def P654651086832978377.Spec : Prop :=
  ∀ n, P654651086832978377.a n = A076678 n

end A076678

/-! ## A076678.P6523121297427903178

`floor(2*a(n-2)-(a(n-2)-sqrt(a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A076678.P6523121297427903178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(2 * a (n - 2) : ℝ) - ((a (n - 2) : ℝ) - Real.sqrt (a (n - 1) : ℝ))⌋

end

end A076678.P6523121297427903178

namespace A076678

/-- `floor(2*a(n-2)-(a(n-2)-sqrt(a(n-1))))` -/
def P6523121297427903178.Spec : Prop :=
  ∀ n, P6523121297427903178.a n = A076678 n

end A076678

/-! ## A076678.P12536089123291331647

`A097471(n)+a(n-1)` with `a(0)=1`
-/

namespace A076678.P12536089123291331647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097471 n + a (n - 1)

end

end A076678.P12536089123291331647

namespace A076678

/-- `A097471(n)+a(n-1)` -/
def P12536089123291331647.Spec : Prop :=
  ∀ n, P12536089123291331647.a n = A076678 n

end A076678

/-! ## A076678.P8986383003001005965

`∑[A097471(n+1)]+1-A097471(n+1)`
-/

namespace A076678.P8986383003001005965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A097471 (n + 1))

end

end A076678.P8986383003001005965

namespace A076678

/-- `∑[A097471(n+1)]+1-A097471(n+1)` -/
def P8986383003001005965.Spec : Prop :=
  ∀ n, P8986383003001005965.a n = A076678 n

end A076678

/-! ## A076678.P18094013085647140051

`A000194(a(n-3))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A076678.P18094013085647140051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000194 (a (n - 3)).toNat + a (n - 2)

end

end A076678.P18094013085647140051

namespace A076678

/-- `A000194(a(n-3))+a(n-2)` -/
def P18094013085647140051.Spec : Prop :=
  ∀ n, P18094013085647140051.a n = A076678 n

end A076678

/-! ## A076678.P10270034181772210055

`A000196(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A076678.P10270034181772210055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000196 (a (n - 1)).toNat + a (n - 2)

end

end A076678.P10270034181772210055

namespace A076678

/-- `A000196(a(n-1))+a(n-2)` -/
def P10270034181772210055.Spec : Prop :=
  ∀ n, P10270034181772210055.a n = A076678 n

end A076678

/-!
# A076679: Numbers k such that 3*k! + 1 is prime.

The programs for A076679, there is no canonical definition to state claims against.
-/

/-! ## A076679.P8298086114132482054

`eq[A267537(n)+2, A051888(n)]`
-/

namespace A076679.P8298086114132482054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076679.P8298086114132482054

/-! ## A076679.P13509805774737790467

`eq[A002375(A051888(n)), A267537(n)]`
-/

namespace A076679.P13509805774737790467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A051888 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076679.P13509805774737790467

/-! ## A076679.P2364441802309172175

`eq[A051888(n), A300402(A053644(n))]`
-/

namespace A076679.P2364441802309172175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 (A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076679.P2364441802309172175

/-! ## A076679.P5797512202568009298

`lt[A245695(A051888(n)), A255826(n+1)]`
-/

namespace A076679.P5797512202568009298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245695 (A051888 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076679.P5797512202568009298

/-! ## A076679.P1525665411561619436

`eq[A051888(n), A300402(n)]`
-/

namespace A076679.P1525665411561619436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076679.P1525665411561619436

/-!
# A076680: Numbers k such that 4*k! + 1 is prime.

The programs for A076680, there is no canonical definition to state claims against.
-/

/-! ## A076680.P4858230971565208002

`eq[A171099(n), A186035(n)]`
-/

namespace A076680.P4858230971565208002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076680.P4858230971565208002

/-! ## A076680.P9401106639111775913

`eq[A171099(n), A266678(n)]`
-/

namespace A076680.P9401106639111775913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076680.P9401106639111775913

/-! ## A076680.P6487359988172558163

`eq[A171099(n), A267537(n)]`
-/

namespace A076680.P6487359988172558163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076680.P6487359988172558163

/-! ## A076680.P4384601561977639712

`eq[A171099(n), A267936(n)]`
-/

namespace A076680.P4384601561977639712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076680.P4384601561977639712

/-! ## A076680.P8877524151036578641

`eq[A171099(n), A329684(n)]`
-/

namespace A076680.P8877524151036578641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076680.P8877524151036578641

/-!
# A076684: Odd terms in A027941.

The programs for A076684, the canonical program `A076684.P7035979636447743545` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076684 has offset 0).

The definition of A076684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076684.P10314273509071290780

`ogf((1+14x+x^2)/(1-19x+19x^2-x^3))`
-/

namespace A076684.P10314273509071290780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14, 1] [1, -19, 19, -1] n

end

end A076684.P10314273509071290780

namespace A076684

/-- `ogf((1+14x+x^2)/(1-19x+19x^2-x^3))` -/
def P10314273509071290780.Spec : Prop :=
  ∀ n, P10314273509071290780.a n = A076684 n

end A076684

/-! ## A076684.P7035979636447743545

`A000045(6*n+3)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076684

/-- `A000045(6*n+3)-1` -/
def P7035979636447743545.Spec : Prop :=
  ∀ n, P7035979636447743545.a n = A076684 n

theorem P7035979636447743545.correct : P7035979636447743545.Spec := by
  intro n
  simp only [A076684]

end A076684

/-! ## A076684.P7793283457346527357

`A134495(n)-1`
-/

namespace A076684.P7793283457346527357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134495 n - 1

end

end A076684.P7793283457346527357

namespace A076684

/-- `A134495(n)-1` -/
def P7793283457346527357.Spec : Prop :=
  ∀ n, P7793283457346527357.a n = A076684 n

end A076684

/-! ## A076684.P15477828146418950348

`A054451(6*n)`
-/

namespace A076684.P15477828146418950348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (6 * n)

end

end A076684.P15477828146418950348

namespace A076684

/-- `A054451(6*n)` -/
def P15477828146418950348.Spec : Prop :=
  ∀ n, P15477828146418950348.a n = A076684 n

end A076684

/-! ## A076684.P4897010771462603284

`A140413(Δ[n²])`
-/

namespace A076684.P4897010771462603284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076684.P4897010771462603284

namespace A076684

/-- `A140413(Δ[n²])` -/
def P4897010771462603284.Spec : Prop :=
  ∀ n, P4897010771462603284.a n = A076684 n

end A076684

/-! ## A076684.P6900842956551955122

`Δ[A207832(n)]-1`
-/

namespace A076684.P6900842956551955122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A076684.P6900842956551955122

namespace A076684

/-- `Δ[A207832(n)]-1` -/
def P6900842956551955122.Spec : Prop :=
  ∀ n, P6900842956551955122.a n = A076684 n

end A076684

/-! ## A076684.P10157562350058385036

`2*A007805(n)-1`
-/

namespace A076684.P10157562350058385036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007805 n - 1

end

end A076684.P10157562350058385036

namespace A076684

/-- `2*A007805(n)-1` -/
def P10157562350058385036.Spec : Prop :=
  ∀ n, P10157562350058385036.a n = A076684 n

end A076684

/-! ## A076684.P13293203133244109199

`A027941(3*n+1)`
-/

namespace A076684.P13293203133244109199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (3 * n + 1)

end

end A076684.P13293203133244109199

namespace A076684

/-- `A027941(3*n+1)` -/
def P13293203133244109199.Spec : Prop :=
  ∀ n, P13293203133244109199.a n = A076684 n

theorem P13293203133244109199.correct : P13293203133244109199.Spec := by
  intro n
  simp only [A076684, Nat.add_sub_cancel, A076684.P13293203133244109199.a, A076684.P7035979636447743545.a, A000045, A000045.P11838749114346432762.a, A027941, A027941.P8226647174057246379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076684

/-! ## A076684.P5017404948890933879

`A293064(3*(n+1))`
-/

namespace A076684.P5017404948890933879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (3 * (n + 1))

end

end A076684.P5017404948890933879

namespace A076684

/-- `A293064(3*(n+1))` -/
def P5017404948890933879.Spec : Prop :=
  ∀ n, P5017404948890933879.a n = A076684 n

end A076684

/-! ## A076684.P11265621076392917616

`A048575(3*n)-1`
-/

namespace A076684.P11265621076392917616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (3 * n) - 1

end

end A076684.P11265621076392917616

namespace A076684

/-- `A048575(3*n)-1` -/
def P11265621076392917616.Spec : Prop :=
  ∀ n, P11265621076392917616.a n = A076684 n

end A076684

/-!
# A076685: a(n) = max(core(n),phi(n)) where core(n) is the squarefree part of n.

The programs for A076685, there is no canonical definition to state claims against.
-/

/-! ## A076685.P596352816028457306

`A327171(n+1)/A076686(n+1)`
-/

namespace A076685.P596352816028457306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A076686 (n + 1) : ℚ)

end

end A076685.P596352816028457306

/-! ## A076685.P5573834090639185510

`A299822(A350390(n+1))/A076686(n+1)`
-/

namespace A076685.P5573834090639185510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (A350390 (n + 1)).toNat : ℚ) / (A076686 (n + 1) : ℚ)

end

end A076685.P5573834090639185510

/-! ## A076685.P4214493590139667

`A000010(n+1)+A007913(n+1)-A076686(n+1)`
-/

namespace A076685.P4214493590139667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A007913 (n + 1) - A076686 (n + 1))

end

end A076685.P4214493590139667

/-! ## A076685.P12375161088671771572

`A019554(n+1)/A076686(n+1)*A000010(A019554(n+1))`
-/

namespace A076685.P12375161088671771572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A076686 (n + 1) : ℚ) * (A000010 (A019554 (n + 1)).toNat : ℚ)

end

end A076685.P12375161088671771572

/-! ## A076685.P2835391355474601540

`A000010(A053143(n+1))/A076686(n+1)`
-/

namespace A076685.P2835391355474601540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A053143 (n + 1)).toNat : ℚ) / (A076686 (n + 1) : ℚ)

end

end A076685.P2835391355474601540

/-! ## A076685.P10734237412305091754

`A000010(A019554(n+1)²)/A076686(n+1)`
-/

namespace A076685.P10734237412305091754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A019554 (n + 1) ^ 2).toNat : ℚ) / (A076686 (n + 1) : ℚ)

end

end A076685.P10734237412305091754

/-!
# A076686: a(n) = min(core(n),phi(n)) where core(n) is the squarefree part of n.

The programs for A076686, there is no canonical definition to state claims against.
-/

/-! ## A076686.P237828016841251630

`A327171(n+1)/A076685(n+1)`
-/

namespace A076686.P237828016841251630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A076685 (n + 1) : ℚ)

end

end A076686.P237828016841251630

/-! ## A076686.P17804938075831413685

`A002618(A019554(n+1))/A076685(n+1)`
-/

namespace A076686.P17804938075831413685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (A019554 (n + 1)).toNat : ℚ) / (A076685 (n + 1) : ℚ)

end

end A076686.P17804938075831413685

/-! ## A076686.P6449913439502841351

`A299822(A350390(n+1))/A076685(n+1)`
-/

namespace A076686.P6449913439502841351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (A350390 (n + 1)).toNat : ℚ) / (A076685 (n + 1) : ℚ)

end

end A076686.P6449913439502841351

/-! ## A076686.P1587233098306766654

`A000010(n+1)+A007913(n+1)-A076685(n+1)`
-/

namespace A076686.P1587233098306766654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A007913 (n + 1) - A076685 (n + 1))

end

end A076686.P1587233098306766654

/-! ## A076686.P16711940840771417609

`A000010(A053143(n+1))/A076685(n+1)`
-/

namespace A076686.P16711940840771417609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A053143 (n + 1)).toNat : ℚ) / (A076685 (n + 1) : ℚ)

end

end A076686.P16711940840771417609

/-! ## A076686.P13352145089638580344

`A076685(A019554(n+1)²)/A076685(n+1)`
-/

namespace A076686.P13352145089638580344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076685 (A019554 (n + 1) ^ 2).toNat : ℚ) / (A076685 (n + 1) : ℚ)

end

end A076686.P13352145089638580344

/-!
# A076687: Coefficients in asymptotic (divergent) expansion for Sum_{k=1..n} 1/C(n,k)^2.

The programs for A076687, there is no canonical definition to state claims against.
-/

/-! ## A076687.P4246829611681406881

`and(A147900(n+1), A210528(A147896(n+1)))`
-/

namespace A076687.P4246829611681406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147900 (n + 1)) (A210528 (A147896 (n + 1)).toNat)

end

end A076687.P4246829611681406881

/-! ## A076687.P4595472770346265820

`and(A147908(n+1), A210528(A147896(n+1)))`
-/

namespace A076687.P4595472770346265820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147908 (n + 1)) (A210528 (A147896 (n + 1)).toNat)

end

end A076687.P4595472770346265820

/-!
# A076688: a(n) = 2^(2^n-n-2).

The programs for A076688, there is no canonical definition to state claims against.
-/

/-! ## A076688.P10453931541689985159

`2^(∑[∑[2^n]]-1)`
-/

namespace A076688.P10453931541689985159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)

end

end A076688.P10453931541689985159

/-! ## A076688.P8294299925140739626

`∏[2*a(n-1)²]` with `a(0)=1, a(1)=8`
-/

namespace A076688.P8294299925140739626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076688.P8294299925140739626

/-! ## A076688.P13231298852536118474

`∏[∏[a(n-1)²]]/2` with `a(0)=2`
-/

namespace A076688.P13231298852536118474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A076688.P13231298852536118474

/-!
# A076690: Nearest integer to average of the smallest and largest prime factors of n (0.5 is rounded to 1).

The programs for A076690, there is no canonical definition to state claims against.
-/

/-! ## A076690.P5626342900876540281

`ceil((A020639(n+2)+A006530(n+2))/2)`
-/

namespace A076690.P5626342900876540281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 2) + A006530 (n + 2) : ℚ) / 2⌉

end

end A076690.P5626342900876540281

/-! ## A076690.P2198207562309051244

`ceil(A074320(n+2)/2)`
-/

namespace A076690.P2198207562309051244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074320 (n + 2) : ℚ) / 2⌉

end

end A076690.P2198207562309051244

/-! ## A076690.P2817122997175000979

`A067620(A088835(n+2))`
-/

namespace A076690.P2817122997175000979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (A088835 (n + 2)).toNat

end

end A076690.P2817122997175000979

/-! ## A076690.P14397958808769644036

`A065033(A074320(n+2))`
-/

namespace A076690.P14397958808769644036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A074320 (n + 2)).toNat

end

end A076690.P14397958808769644036

/-! ## A076690.P13372018033808132784

`A004526(A074320(n+2)+1)`
-/

namespace A076690.P13372018033808132784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074320 (n + 2) + 1).toNat

end

end A076690.P13372018033808132784

/-! ## A076690.P11128704086270720927

`A008619(A074320(n+2)-1)`
-/

namespace A076690.P11128704086270720927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074320 (n + 2) - 1).toNat

end

end A076690.P11128704086270720927

/-! ## A076690.P2238664217193699973

`round(A074320((char[2*n]+1)*(n+2))/2)`
-/

namespace A076690.P2238664217193699973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074320 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 2)) : ℚ) / 2)

end

end A076690.P2238664217193699973

/-! ## A076690.P426194892273351869

`A067629(A066048(n+2))`
-/

namespace A076690.P426194892273351869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A066048 (n + 2)).toNat

end

end A076690.P426194892273351869

/-!
# A076692: Numbers k such that average of prime(k) and prime(k+1) is a perfect square.

The programs for A076692, there is no canonical definition to state claims against.
-/

/-! ## A076692.P2884498648522978980

`A038107(A075190(n+1))`
-/

namespace A076692.P2884498648522978980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A075190 (n + 1)).toNat

end

end A076692.P2884498648522978980

/-! ## A076692.P10010865303379134996

`A038107(sqrt(A069495(n+1)))`
-/

namespace A076692.P10010865303379134996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.roundAway (Real.sqrt (A069495 (n + 1) : ℝ))).toNat

end

end A076692.P10010865303379134996

/-! ## A076692.P12299134998139567273

`A038107(ceil(sqrt(A225195(n+1))))`
-/

namespace A076692.P12299134998139567273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 ⌈Real.sqrt (A225195 (n + 1) : ℝ)⌉.toNat

end

end A076692.P12299134998139567273

/-! ## A076692.P15389930354771650671

`A038107(round(sqrt(A225195(n+1))))`
-/

namespace A076692.P15389930354771650671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.roundAway (Real.sqrt (A225195 (n + 1) : ℝ))).toNat

end

end A076692.P15389930354771650671

/-! ## A076692.P15410166845371229536

`A038107(record[gcd(n+2, A056928(n+2))])`
-/

namespace A076692.P15410166845371229536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A056928 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076692.P15410166845371229536

/-!
# A076693: Numbers n such that the average of prime(n) and prime(n+1) is a perfect cube.

The programs for A076693, there is no canonical definition to state claims against.
-/

/-! ## A076693.P5531403144412831649

`A038098(A075191(n+1))`
-/

namespace A076693.P5531403144412831649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A075191 (n + 1)).toNat

end

end A076693.P5531403144412831649

/-! ## A076693.P3352747424489722567

`A038098(root(A234240(n+1), 3))`
-/

namespace A076693.P3352747424489722567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (SequenceMachineLib.roundAway ((A234240 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A076693.P3352747424489722567

/-!
# A076694: a(n) = n - sum of the distinct prime factors of n.

The programs for A076694, the canonical program `A076694.P8693598391704263352` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076694 has offset 1).

The definition of A076694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076694.P8693598391704263352

`n+1-A008472(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076694

/-- `n+1-A008472(n+1)` -/
def P8693598391704263352.Spec : Prop :=
  ∀ n, P8693598391704263352.a n = A076694 (n + 1)

theorem P8693598391704263352.correct : P8693598391704263352.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel]

end A076694

/-! ## A076694.P11735034487421448842

`∑[1-Δ[∑{p}[n, #]]]`
-/

namespace A076694.P11735034487421448842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076694.P11735034487421448842

namespace A076694

/-- `∑[1-Δ[∑{p}[n, #]]]` -/
def P11735034487421448842.Spec : Prop :=
  ∀ n, P11735034487421448842.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P17708889515532606005

`1-∑{p}[n+1, #]+n`
-/

namespace A076694.P17708889515532606005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n : ℤ)

end

end A076694.P17708889515532606005

namespace A076694

/-- `1-∑{p}[n+1, #]+n` -/
def P17708889515532606005.Spec : Prop :=
  ∀ n, P17708889515532606005.a n = A076694 (n + 1)

theorem P17708889515532606005.correct : P17708889515532606005.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel, A076694.P17708889515532606005.f1, A076694.P17708889515532606005.a, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076694

/-! ## A076694.P10908079386202667223

`1-(∑{p}[xor(n, -1), #]-n)`
-/

namespace A076694.P10908079386202667223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - (n : ℤ))

end

end A076694.P10908079386202667223

namespace A076694

/-- `1-(∑{p}[xor(n, -1), #]-n)` -/
def P10908079386202667223.Spec : Prop :=
  ∀ n, P10908079386202667223.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P16987891379507101359

`1-(∑{p}[n-Δ[n²], #]-n)`
-/

namespace A076694.P16987891379507101359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - (n : ℤ))

end

end A076694.P16987891379507101359

namespace A076694

/-- `1-(∑{p}[n-Δ[n²], #]-n)` -/
def P16987891379507101359.Spec : Prop :=
  ∀ n, P16987891379507101359.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P14287350273762761949

`xor(-1, ∑{p}[n+1, #])+n+2`
-/

namespace A076694.P14287350273762761949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A076694.P14287350273762761949

namespace A076694

/-- `xor(-1, ∑{p}[n+1, #])+n+2` -/
def P14287350273762761949.Spec : Prop :=
  ∀ n, P14287350273762761949.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P12016632321493068687

`1-Δ[A024924(n)]+n`
-/

namespace A076694.P12016632321493068687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A076694.P12016632321493068687

namespace A076694

/-- `1-Δ[A024924(n)]+n` -/
def P12016632321493068687.Spec : Prop :=
  ∀ n, P12016632321493068687.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P7064552475319904376

`2-A074372(n+1)+n`
-/

namespace A076694.P7064552475319904376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A074372 (n + 1) + (n : ℤ)

end

end A076694.P7064552475319904376

namespace A076694

/-- `2-A074372(n+1)+n` -/
def P7064552475319904376.Spec : Prop :=
  ∀ n, P7064552475319904376.a n = A076694 (n + 1)

theorem P7064552475319904376.correct : P7064552475319904376.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel, A076694.P7064552475319904376.a, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076694

/-! ## A076694.P15472775415355840816

`1-sqrt(A235323(n+1))+n`
-/

namespace A076694.P15472775415355840816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A235323 (n + 1) : ℝ) + (n : ℝ)

end

end A076694.P15472775415355840816

namespace A076694

/-- `1-sqrt(A235323(n+1))+n` -/
def P15472775415355840816.Spec : Prop :=
  ∀ n, P15472775415355840816.a n = (A076694 (n + 1) : ℝ)

end A076694

/-! ## A076694.P9854306035543253763

`2*(n+1)-A075653(n+1)`
-/

namespace A076694.P9854306035543253763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A075653 (n + 1)

end

end A076694.P9854306035543253763

namespace A076694

/-- `2*(n+1)-A075653(n+1)` -/
def P9854306035543253763.Spec : Prop :=
  ∀ n, P9854306035543253763.a n = A076694 (n + 1)

theorem P9854306035543253763.correct : P9854306035543253763.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel, A076694.P9854306035543253763.a, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075653, A075653.P2659253384492111030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076694

/-! ## A076694.P16810548724168670159

`2*n+3-A254340(n+1)`
-/

namespace A076694.P16810548724168670159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A254340 (n + 1)

end

end A076694.P16810548724168670159

namespace A076694

/-- `2*n+3-A254340(n+1)` -/
def P16810548724168670159.Spec : Prop :=
  ∀ n, P16810548724168670159.a n = A076694 (n + 1)

theorem P16810548724168670159.correct : P16810548724168670159.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel, A076694.P16810548724168670159.a, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A254340, A254340.P17394909543363864002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076694

/-! ## A076694.P11247258795105816573

`n+1-∑{d}[n+1, A061397(#)]`
-/

namespace A076694.P11247258795105816573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A076694.P11247258795105816573

namespace A076694

/-- `n+1-∑{d}[n+1, A061397(#)]` -/
def P11247258795105816573.Spec : Prop :=
  ∀ n, P11247258795105816573.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P17625563429748293340

`n+1-A001414(∏{p}[n+1, #])`
-/

namespace A076694.P17625563429748293340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076694.P17625563429748293340

namespace A076694

/-- `n+1-A001414(∏{p}[n+1, #])` -/
def P17625563429748293340.Spec : Prop :=
  ∀ n, P17625563429748293340.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P15947176046486080129

`n+1-A008475(∏{p}[n+1, #])`
-/

namespace A076694.P15947176046486080129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A076694.P15947176046486080129

namespace A076694

/-- `n+1-A008475(∏{p}[n+1, #])` -/
def P15947176046486080129.Spec : Prop :=
  ∀ n, P15947176046486080129.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P16452516785317493635

`∑{p}[n+1, #*A008683(#)]+n+1`
-/

namespace A076694.P16452516785317493635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A008683 p + (n + 1 : ℤ)

end

end A076694.P16452516785317493635

namespace A076694

/-- `∑{p}[n+1, #*A008683(#)]+n+1` -/
def P16452516785317493635.Spec : Prop :=
  ∀ n, P16452516785317493635.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P1573182884933806772

`A004442(n)-A005069(n+1)`
-/

namespace A076694.P1573182884933806772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n - A005069 (n + 1)

end

end A076694.P1573182884933806772

namespace A076694

/-- `A004442(n)-A005069(n+1)` -/
def P1573182884933806772.Spec : Prop :=
  ∀ n, P1573182884933806772.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P16412816475069604417

`n-A023443(A008472(n+1))`
-/

namespace A076694.P16412816475069604417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A008472 (n + 1)).toNat

end

end A076694.P16412816475069604417

namespace A076694

/-- `n-A023443(A008472(n+1))` -/
def P16412816475069604417.Spec : Prop :=
  ∀ n, P16412816475069604417.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P12737049619888885192

`Δ[A000096(n)-A024924(n)]-1`
-/

namespace A076694.P12737049619888885192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A076694.P12737049619888885192

namespace A076694

/-- `Δ[A000096(n)-A024924(n)]-1` -/
def P12737049619888885192.Spec : Prop :=
  ∀ n, P12737049619888885192.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P11842818155256199622

`A340901(A007947(n+1))+n+1`
-/

namespace A076694.P11842818155256199622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340901 (A007947 (n + 1)).toNat + (n + 1 : ℤ)

end

end A076694.P11842818155256199622

namespace A076694

/-- `A340901(A007947(n+1))+n+1` -/
def P11842818155256199622.Spec : Prop :=
  ∀ n, P11842818155256199622.a n = A076694 (n + 1)

end A076694

/-! ## A076694.P9427358568179592725

`A280292(n+1)+A075255(n+1)`
-/

namespace A076694.P9427358568179592725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A075255 (n + 1)

end

end A076694.P9427358568179592725

namespace A076694

/-- `A280292(n+1)+A075255(n+1)` -/
def P9427358568179592725.Spec : Prop :=
  ∀ n, P9427358568179592725.a n = A076694 (n + 1)

theorem P9427358568179592725.correct : P9427358568179592725.Spec := by
  intro n
  simp only [A076694, Nat.add_sub_cancel, A076694.P9427358568179592725.a, A076694.P8693598391704263352.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075255, A075255.P12137973761347593222.a, A280292, A280292.P17147228295463227534.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076694

/-!
# A076695: Dimension of S2(G0(p)) where p runs through the odd primes >= 13, G0(N) is the Hecke subgroup of SL2(Z), consisting of 2 X 2 matrices (a,b; c,d) with c == 0 (mod N).

The programs for A076695, the canonical program `A076695.P7345591826054415002` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076695 has offset 1).

The definition of A076695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076695.P7345591826054415002

`floor(A107323(n+6)/12)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076695

/-- `floor(A107323(n+6)/12)` -/
def P7345591826054415002.Spec : Prop :=
  ∀ n, P7345591826054415002.a n = A076695 (n + 1)

theorem P7345591826054415002.correct : P7345591826054415002.Spec := by
  intro n
  simp only [A076695, Nat.add_sub_cancel]

end A076695

/-! ## A076695.P18057288696421623645

`A116563(n+6)`
-/

namespace A076695.P18057288696421623645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116563 (n + 6)

end

end A076695.P18057288696421623645

namespace A076695

/-- `A116563(n+6)` -/
def P18057288696421623645.Spec : Prop :=
  ∀ n, P18057288696421623645.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P12817322476821263042

`A001617(p?[a(n-1)+2])` with `a(0)=13`
-/

namespace A076695.P12817322476821263042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076695.P12817322476821263042

namespace A076695

/-- `A001617(p?[a(n-1)+2])` -/
def P12817322476821263042.Spec : Prop :=
  ∀ n, P12817322476821263042.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P16356961591509980575

`A001617(A000040(n+6))`
-/

namespace A076695.P16356961591509980575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A000040 (n + 6)).toNat

end

end A076695.P16356961591509980575

namespace A076695

/-- `A001617(A000040(n+6))` -/
def P16356961591509980575.Spec : Prop :=
  ∀ n, P16356961591509980575.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P6303468787989191373

`A001617(record[A006530(n+15)])`
-/

namespace A076695.P6303468787989191373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076695.P6303468787989191373

namespace A076695

/-- `A001617(record[A006530(n+15)])` -/
def P6303468787989191373.Spec : Prop :=
  ∀ n, P6303468787989191373.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P6903260799550829191

`A008612(A101448(n+2))`
-/

namespace A076695.P6903260799550829191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A101448 (n + 2)).toNat

end

end A076695.P6903260799550829191

namespace A076695

/-- `A008612(A101448(n+2))` -/
def P6903260799550829191.Spec : Prop :=
  ∀ n, P6903260799550829191.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P18401928408237793883

`A127788(p?[a(n-1)+2])` with `a(0)=13`
-/

namespace A076695.P18401928408237793883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076695.P18401928408237793883

namespace A076695

/-- `A127788(p?[a(n-1)+2])` -/
def P18401928408237793883.Spec : Prop :=
  ∀ n, P18401928408237793883.a n = A076695 (n + 1)

end A076695

/-! ## A076695.P9601421991896101350

`A008679(A000040(n+6)+1)-1`
-/

namespace A076695.P9601421991896101350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A000040 (n + 6) + 1).toNat - 1

end

end A076695.P9601421991896101350

namespace A076695

/-- `A008679(A000040(n+6)+1)-1` -/
def P9601421991896101350.Spec : Prop :=
  ∀ n, P9601421991896101350.a n = A076695 (n + 1)

end A076695

/-!
# A076697: Indices of record values in A079451, largest prime factor of Lucas numbers A000032.

The programs for A076697, there is no canonical definition to state claims against.
-/

/-! ## A076697.P11221825320706435418

`eq[A086599(n), A259094(A251559(n+1))]`
-/

namespace A076697.P11221825320706435418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A251559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076697.P11221825320706435418

/-! ## A076697.P2720906048481193174

`eq[1, A194086(n)%A007444(n+1)]`
-/

namespace A076697.P2720906048481193174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194086 n) (A007444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076697.P2720906048481193174

/-! ## A076697.P6792769279631662141

`eq[A086599(n), A152271(A275281(n))]`
-/

namespace A076697.P6792769279631662141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A275281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076697.P6792769279631662141

/-! ## A076697.P4543750371559065481

`eq[A086599(n), A107038(A086582(n))]`
-/

namespace A076697.P4543750371559065481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 (A086582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076697.P4543750371559065481

/-! ## A076697.P14889665097406591619

`eq[A030600(A023551(n+1)), A086599(n)]`
-/

namespace A076697.P14889665097406591619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030600 (A023551 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076697.P14889665097406591619

/-!
# A076698: a(1) = 2, a(n+1) = smallest squarefree number == 1 (mod a(n)) and > a(n).

The programs for A076698, there is no canonical definition to state claims against.
-/

/-! ## A076698.P1592253974435015709

`A076986(a(n-1))` with `a(0)=2`
-/

namespace A076698.P1592253974435015709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A076986 (a (n - 1)).toNat

end

end A076698.P1592253974435015709

/-! ## A076698.P4861825506153944560

`record[A076986(a(A117365(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A076698.P4861825506153944560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A076986 (f1 (A117365 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076698.P4861825506153944560

/-!
# A076699: T(n,k) = Table of coefficients of x^k in cyclotomic(n,x).

The programs for A076699, there is no canonical definition to state claims against.
-/

/-! ## A076699.P6697134708458316565

`(A343660(n+1)-A343639(n))^A006516(n)`
-/

namespace A076699.P6697134708458316565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343660 (n + 1) - A343639 n : ℚ) ^ (A006516 n : ℤ)

end

end A076699.P6697134708458316565

/-! ## A076699.P10617263806579628552

`(A343660(n+1)-A343639(n))^∑[A050182(n)]`
-/

namespace A076699.P10617263806579628552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050182 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343660 (n + 1) - A343639 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A076699.P10617263806579628552

/-! ## A076699.P12177165441240674375

`(A343660(n+1)-A343639(n))^Δ[A011782(n)]`
-/

namespace A076699.P12177165441240674375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343660 (n + 1) - A343639 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A076699.P12177165441240674375

/-! ## A076699.P11247763147493405107

`(A343660(n+1)-A343639(n))^record[A087207(n+1)]`
-/

namespace A076699.P11247763147493405107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343660 (n + 1) - A343639 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A076699.P11247763147493405107

/-! ## A076699.P5652856562233106410

`A258277(C(char[1]+n, A353667(n+1)))`
-/

namespace A076699.P5652856562233106410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258277 (Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + n) (A353667 (n + 1)).toNat)

end

end A076699.P5652856562233106410

