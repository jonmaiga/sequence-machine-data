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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001500: Number of stochastic matrices of integers: n X n arrays of nonnegative integers with all row and column sums equal to 3.

The programs for A001500, there is no canonical definition to state claims against.
-/

/-! ## A001500.P18196734636784539152

`A257493(∑[n+3]+n+3)`
-/

namespace A001500.P18196734636784539152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001500.P18196734636784539152

/-! ## A001500.P3814198857946048506

`lcm(A027935(n), A257493(A046691(n+2)))`
-/

namespace A001500.P3814198857946048506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027935 n) (A257493 (A046691 (n + 2)).toNat)

end

end A001500.P3814198857946048506

/-! ## A001500.P3558073673830808650

`A257493(A046691(n+2))%A122653(3*(n+1))`
-/

namespace A001500.P3558073673830808650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257493 (A046691 (n + 2)).toNat) (A122653 (3 * (n + 1)))

end

end A001500.P3558073673830808650

/-!
# A001501: Number of n X n 0-1 matrices with all column and row sums equal to 3.

The programs for A001501, there is no canonical definition to state claims against.
-/

/-! ## A001501.P7248043737487000872

`A319574((C(n, floor(n/2))-a(n-1))²)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A001501.P7248043737487000872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A319574 (((Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - a (n - 1)) ^ 2).toNat

end

end A001501.P7248043737487000872

/-! ## A001501.P6715235783030056484

`A320193(A092402(ceil(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A001501.P6715235783030056484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A320193 (A092402 ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉.toNat).toNat

end

end A001501.P6715235783030056484

/-!
# A001504: a(n) = (3*n+1)*(3*n+2).

The programs for A001504, the canonical program `A001504.P13639601878872911563` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001504 has offset 0).

The definition of A001504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(3*n+2)` (program `A001504.P13639601878872911563`, by `A001504.P13639601878872911563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001504.P12109346221106006321

`18*n+a(n-1)` with `a(0)=2`
-/

namespace A001504.P12109346221106006321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  18 * n + a (n - 1)

end

end A001504.P12109346221106006321

namespace A001504

/-- `18*n+a(n-1)` -/
def P12109346221106006321.Spec : Prop :=
  ∀ n, (P12109346221106006321.a n : ℤ) = A001504 n

theorem P12109346221106006321.correct : P12109346221106006321.Spec := by
  intro n
  induction n with
  | zero => simp [A001504, A001504.P12109346221106006321.a, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001504, Nat.add_sub_cancel, A001504.P12109346221106006321.a, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001504

/-! ## A001504.P13639601878872911563

`(3*n+1)*(3*n+2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001504

/-- `(3*n+1)*(3*n+2)` -/
def P13639601878872911563.Spec : Prop :=
  ∀ n, (P13639601878872911563.a n : ℤ) = A001504 n

theorem P13639601878872911563.correct : P13639601878872911563.Spec := by
  intro n
  simp only [A001504]

end A001504

/-! ## A001504.P17130917655331145021

`A144410(n)/4`
-/

namespace A001504.P17130917655331145021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144410 n : ℚ) / 4

end

end A001504.P17130917655331145021

namespace A001504

/-- `A144410(n)/4` -/
def P17130917655331145021.Spec : Prop :=
  ∀ n, P17130917655331145021.a n = (A001504 n : ℚ)

end A001504

/-! ## A001504.P17163794022000239826

`xor(1, Δ[3*n^3])`
-/

namespace A001504.P17163794022000239826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001504.P17163794022000239826

namespace A001504

/-- `xor(1, Δ[3*n^3])` -/
def P17163794022000239826.Spec : Prop :=
  ∀ n, P17163794022000239826.a n = A001504 n

end A001504

/-! ## A001504.P18008365991798738711

`∑[a(n-1)+18]` with `a(0)=2, a(1)=18`
-/

namespace A001504.P18008365991798738711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 18] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001504.P18008365991798738711

namespace A001504

/-- `∑[a(n-1)+18]` -/
def P18008365991798738711.Spec : Prop :=
  ∀ n, (P18008365991798738711.a n : ℤ) = A001504 n

end A001504

/-! ## A001504.P9443394707995994165

`xor(1, (6*n+3)²)/4`
-/

namespace A001504.P9443394707995994165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((6 * n + 3) ^ 2) : ℚ) / 4

end

end A001504.P9443394707995994165

namespace A001504

/-- `xor(1, (6*n+3)²)/4` -/
def P9443394707995994165.Spec : Prop :=
  ∀ n, P9443394707995994165.a n = (A001504 n : ℚ)

end A001504

/-! ## A001504.P2877745533034044221

`(∑[n]/tan(acot(36))+4)/2`
-/

namespace A001504.P2877745533034044221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (36 : ℝ)) + 4) / 2

end

end A001504.P2877745533034044221

namespace A001504

/-- `(∑[n]/tan(acot(36))+4)/2` -/
def P2877745533034044221.Spec : Prop :=
  ∀ n, P2877745533034044221.a n = (A001504 n : ℝ)

end A001504

/-! ## A001504.P4845244833353461203

`A163758(n)+2`
-/

namespace A001504.P4845244833353461203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n + 2

end

end A001504.P4845244833353461203

namespace A001504

/-- `A163758(n)+2` -/
def P4845244833353461203.Spec : Prop :=
  ∀ n, P4845244833353461203.a n = A001504 n

end A001504

/-! ## A001504.P2551440609370594852

`Δ[A117642(n)]-1`
-/

namespace A001504.P2551440609370594852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001504.P2551440609370594852

namespace A001504

/-- `Δ[A117642(n)]-1` -/
def P2551440609370594852.Spec : Prop :=
  ∀ n, P2551440609370594852.a n = A001504 n

end A001504

/-! ## A001504.P9925579500102407333

`A069131(n+1)+1`
-/

namespace A001504.P9925579500102407333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1) + 1

end

end A001504.P9925579500102407333

namespace A001504

/-- `A069131(n+1)+1` -/
def P9925579500102407333.Spec : Prop :=
  ∀ n, P9925579500102407333.a n = A001504 n

end A001504

/-! ## A001504.P16018900125134049105

`3*A003215(n)-1`
-/

namespace A001504.P16018900125134049105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003215 n - 1

end

end A001504.P16018900125134049105

namespace A001504

/-- `3*A003215(n)-1` -/
def P16018900125134049105.Spec : Prop :=
  ∀ n, P16018900125134049105.a n = A001504 n

end A001504

/-! ## A001504.P9248851613649938150

`3*A028896(n)+2`
-/

namespace A001504.P9248851613649938150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028896 n + 2

end

end A001504.P9248851613649938150

namespace A001504

/-- `3*A028896(n)+2` -/
def P9248851613649938150.Spec : Prop :=
  ∀ n, P9248851613649938150.a n = A001504 n

end A001504

/-! ## A001504.P2865497608092791144

`A162940(n)/2+2`
-/

namespace A001504.P2865497608092791144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162940 n : ℚ) / 2 + 2

end

end A001504.P2865497608092791144

namespace A001504

/-- `A162940(n)/2+2` -/
def P2865497608092791144.Spec : Prop :=
  ∀ n, P2865497608092791144.a n = (A001504 n : ℚ)

end A001504

/-! ## A001504.P4632332059716318161

`A164016(n)/2-1`
-/

namespace A001504.P4632332059716318161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164016 n : ℚ) / 2 - 1

end

end A001504.P4632332059716318161

namespace A001504

/-- `A164016(n)/2-1` -/
def P4632332059716318161.Spec : Prop :=
  ∀ n, P4632332059716318161.a n = (A001504 n : ℚ)

end A001504

/-! ## A001504.P14796066834798650315

`A154262(n+1)+n`
-/

namespace A001504.P14796066834798650315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 (n + 1) + (n : ℤ)

end

end A001504.P14796066834798650315

namespace A001504

/-- `A154262(n+1)+n` -/
def P14796066834798650315.Spec : Prop :=
  ∀ n, P14796066834798650315.a n = A001504 n

end A001504

/-! ## A001504.P18111530648037533428

`A017413(n)+A013656(n)`
-/

namespace A001504.P18111530648037533428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n + A013656 n

end

end A001504.P18111530648037533428

namespace A001504

/-- `A017413(n)+A013656(n)` -/
def P18111530648037533428.Spec : Prop :=
  ∀ n, P18111530648037533428.a n = A001504 n

end A001504

/-! ## A001504.P17738798584702864312

`A016778(n)+A016777(n)`
-/

namespace A001504.P17738798584702864312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n + A016777 n

end

end A001504.P17738798584702864312

namespace A001504

/-- `A016778(n)+A016777(n)` -/
def P17738798584702864312.Spec : Prop :=
  ∀ n, P17738798584702864312.a n = A001504 n

end A001504

/-! ## A001504.P8448133309527849026

`A017185(n)+A016766(n)`
-/

namespace A001504.P8448133309527849026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n + A016766 n

end

end A001504.P8448133309527849026

namespace A001504

/-- `A017185(n)+A016766(n)` -/
def P8448133309527849026.Spec : Prop :=
  ∀ n, P8448133309527849026.a n = A001504 n

end A001504

/-! ## A001504.P8412537650700319798

`A028387(n)+A014634(n)`
-/

namespace A001504.P8412537650700319798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + A014634 n

end

end A001504.P8412537650700319798

namespace A001504

/-- `A028387(n)+A014634(n)` -/
def P8412537650700319798.Spec : Prop :=
  ∀ n, P8412537650700319798.a n = A001504 n

end A001504

/-! ## A001504.P2254032259636874959

`A035008(n)+A014206(n)`
-/

namespace A001504.P2254032259636874959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n + A014206 n

end

end A001504.P2254032259636874959

namespace A001504

/-- `A035008(n)+A014206(n)` -/
def P2254032259636874959.Spec : Prop :=
  ∀ n, P2254032259636874959.a n = A001504 n

end A001504

/-!
# A001505: a(n) = (4*n+1)*(4*n+2)*(4*n+3).

The programs for A001505, the canonical program `A001505.P15095402176341557133` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001505 has offset 0).

The definition of A001505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+2)*(4*n+3)` (program `A001505.P15095402176341557133`, by `A001505.P15095402176341557133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001505.P15095402176341557133

`(4*n+1)*(4*n+2)*(4*n+3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001505

/-- `(4*n+1)*(4*n+2)*(4*n+3)` -/
def P15095402176341557133.Spec : Prop :=
  ∀ n, (P15095402176341557133.a n : ℤ) = A001505 n

theorem P15095402176341557133.correct : P15095402176341557133.Spec := by
  intro n
  simp only [A001505]

end A001505

/-! ## A001505.P16731830485602592230

`A054777(n+1)/A008586(n+1)`
-/

namespace A001505.P16731830485602592230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054777 (n + 1) : ℚ) / (A008586 (n + 1) : ℚ)

end

end A001505.P16731830485602592230

namespace A001505

/-- `A054777(n+1)/A008586(n+1)` -/
def P16731830485602592230.Spec : Prop :=
  ∀ n, P16731830485602592230.a n = (A001505 n : ℚ)

end A001505

/-! ## A001505.P4936301107361893722

`C((4*n+2)², 2)/(2*n+1)`
-/

namespace A001505.P4936301107361893722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((4 * n + 2) ^ 2) 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A001505.P4936301107361893722

namespace A001505

/-- `C((4*n+2)², 2)/(2*n+1)` -/
def P4936301107361893722.Spec : Prop :=
  ∀ n, P4936301107361893722.a n = (A001505 n : ℚ)

end A001505

/-! ## A001505.P8897273048119765015

`∑[6*A010021(n)]`
-/

namespace A001505.P8897273048119765015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A010021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001505.P8897273048119765015

namespace A001505

/-- `∑[6*A010021(n)]` -/
def P8897273048119765015.Spec : Prop :=
  ∀ n, P8897273048119765015.a n = A001505 n

end A001505

/-! ## A001505.P12833192565562203959

`A016827(n)-(4*n+2)`
-/

namespace A001505.P12833192565562203959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n - (4 * n + 2 : ℤ)

end

end A001505.P12833192565562203959

namespace A001505

/-- `A016827(n)-(4*n+2)` -/
def P12833192565562203959.Spec : Prop :=
  ∀ n, P12833192565562203959.a n = A001505 n

end A001505

/-! ## A001505.P5672128348361545566

`lcm(A001539(n), A016825(n))`
-/

namespace A001505.P5672128348361545566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001539 n) (A016825 n)

end

end A001505.P5672128348361545566

namespace A001505

/-- `lcm(A001539(n), A016825(n))` -/
def P5672128348361545566.Spec : Prop :=
  ∀ n, (P5672128348361545566.a n : ℤ) = A001505 n

end A001505

/-! ## A001505.P13578972364266595666

`lcm(A014634(n), A017137(n))`
-/

namespace A001505.P13578972364266595666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014634 n) (A017137 n)

end

end A001505.P13578972364266595666

namespace A001505

/-- `lcm(A014634(n), A017137(n))` -/
def P13578972364266595666.Spec : Prop :=
  ∀ n, (P13578972364266595666.a n : ℤ) = A001505 n

end A001505

/-! ## A001505.P1619056241364048273

`lcm(A004767(n), A157870(n))`
-/

namespace A001505.P1619056241364048273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004767 n) (A157870 n)

end

end A001505.P1619056241364048273

namespace A001505

/-- `lcm(A004767(n), A157870(n))` -/
def P1619056241364048273.Spec : Prop :=
  ∀ n, (P1619056241364048273.a n : ℤ) = A001505 n

end A001505

/-! ## A001505.P13708324234095682742

`lcm(A016813(n), A256833(n))`
-/

namespace A001505.P13708324234095682742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016813 n) (A256833 n)

end

end A001505.P13708324234095682742

namespace A001505

/-- `lcm(A016813(n), A256833(n))` -/
def P13708324234095682742.Spec : Prop :=
  ∀ n, (P13708324234095682742.a n : ℤ) = A001505 n

end A001505

/-! ## A001505.P404300983841882702

`A193248(n+1)+A006221(n)`
-/

namespace A001505.P404300983841882702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193248 (n + 1) + A006221 n

end

end A001505.P404300983841882702

namespace A001505

/-- `A193248(n+1)+A006221(n)` -/
def P404300983841882702.Spec : Prop :=
  ∀ n, P404300983841882702.a n = A001505 n

end A001505

/-! ## A001505.P12631137366564363057

`A016832(n)/A016829(n)-A016825(n)`
-/

namespace A001505.P12631137366564363057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016832 n : ℚ) / (A016829 n : ℚ) - (A016825 n : ℚ)

end

end A001505.P12631137366564363057

namespace A001505

/-- `A016832(n)/A016829(n)-A016825(n)` -/
def P12631137366564363057.Spec : Prop :=
  ∀ n, P12631137366564363057.a n = (A001505 n : ℚ)

end A001505

/-! ## A001505.P3439952709833097204

`A016834(n)/A016831(n)-A016825(n)`
-/

namespace A001505.P3439952709833097204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016834 n : ℚ) / (A016831 n : ℚ) - (A016825 n : ℚ)

end

end A001505.P3439952709833097204

namespace A001505

/-- `A016834(n)/A016831(n)-A016825(n)` -/
def P3439952709833097204.Spec : Prop :=
  ∀ n, P3439952709833097204.a n = (A001505 n : ℚ)

end A001505

/-! ## A001505.P4319112841825227011

`A016835(n)/A016832(n)-A016825(n)`
-/

namespace A001505.P4319112841825227011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016835 n : ℚ) / (A016832 n : ℚ) - (A016825 n : ℚ)

end

end A001505.P4319112841825227011

namespace A001505

/-- `A016835(n)/A016832(n)-A016825(n)` -/
def P4319112841825227011.Spec : Prop :=
  ∀ n, P4319112841825227011.a n = (A001505 n : ℚ)

end A001505

/-! ## A001505.P14266866874487545074

`A254473(2*n)-A016755(2*n)`
-/

namespace A001505.P14266866874487545074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254473 (2 * n) - A016755 (2 * n)

end

end A001505.P14266866874487545074

namespace A001505

/-- `A254473(2*n)-A016755(2*n)` -/
def P14266866874487545074.Spec : Prop :=
  ∀ n, P14266866874487545074.a n = A001505 n

end A001505

/-! ## A001505.P6015053415053488819

`A069072(2*n)`
-/

namespace A001505.P6015053415053488819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069072 (2 * n)

end

end A001505.P6015053415053488819

namespace A001505

/-- `A069072(2*n)` -/
def P6015053415053488819.Spec : Prop :=
  ∀ n, P6015053415053488819.a n = A001505 n

end A001505

/-! ## A001505.P5817189975069021346

`A331433(4*n)`
-/

namespace A001505.P5817189975069021346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331433 (4 * n)

end

end A001505.P5817189975069021346

namespace A001505

/-- `A331433(4*n)` -/
def P5817189975069021346.Spec : Prop :=
  ∀ n, P5817189975069021346.a n = A001505 n

end A001505

/-! ## A001505.P9833543310728019400

`A007531(3*(n+1)+n)`
-/

namespace A001505.P9833543310728019400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (3 * (n + 1) + n)

end

end A001505.P9833543310728019400

namespace A001505

/-- `A007531(3*(n+1)+n)` -/
def P9833543310728019400.Spec : Prop :=
  ∀ n, P9833543310728019400.a n = A001505 n

end A001505

/-! ## A001505.P5321053049819695560

`A033931(3*n+n+1)`
-/

namespace A001505.P5321053049819695560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (3 * n + (n + 1))

end

end A001505.P5321053049819695560

namespace A001505

/-- `A033931(3*n+n+1)` -/
def P5321053049819695560.Spec : Prop :=
  ∀ n, P5321053049819695560.a n = A001505 n

end A001505

/-! ## A001505.P11685772456289395462

`A055522(8*n+4)`
-/

namespace A001505.P11685772456289395462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055522 (8 * n + 4)

end

end A001505.P11685772456289395462

namespace A001505

/-- `A055522(8*n+4)` -/
def P11685772456289395462.Spec : Prop :=
  ∀ n, P11685772456289395462.a n = A001505 n

end A001505

/-! ## A001505.P14481270822286758315

`A060423(A017137(n))`
-/

namespace A001505.P14481270822286758315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060423 (A017137 n).toNat

end

end A001505.P14481270822286758315

namespace A001505

/-- `A060423(A017137(n))` -/
def P14481270822286758315.Spec : Prop :=
  ∀ n, P14481270822286758315.a n = A001505 n

end A001505

/-!
# A001506: a(n) is the number of c-nets with n+1 vertices and 2n edges, n >= 1.

The programs for A001506, there is no canonical definition to state claims against.
-/

/-! ## A001506.P12529270355978709644

`A210252(∑[n+1])`
-/

namespace A001506.P12529270355978709644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001506.P12529270355978709644

/-! ## A001506.P9328247268371490348

`((n+1)%2)!*A210252(A000217(n+1))`
-/

namespace A001506.P9328247268371490348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) % 2) : ℤ) * A210252 (A000217 (n + 1)).toNat

end

end A001506.P9328247268371490348

/-! ## A001506.P9851907988057200184

`A178334(n)*A210252(A000217(n+1))`
-/

namespace A001506.P9851907988057200184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A210252 (A000217 (n + 1)).toNat

end

end A001506.P9851907988057200184

/-! ## A001506.P7285749569547300365

`A007318(A000217(n))*A210252(A000217(n+1))`
-/

namespace A001506.P7285749569547300365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A210252 (A000217 (n + 1)).toNat

end

end A001506.P7285749569547300365

/-! ## A001506.P17647439836125980802

`A001221(A048883(n))*A210252(A000217(n+1))`
-/

namespace A001506.P17647439836125980802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048883 n).toNat * A210252 (A000217 (n + 1)).toNat

end

end A001506.P17647439836125980802

/-! ## A001506.P618996791855999880

`A210252(A000217(n+1))+A010894(A131818(n+1))`
-/

namespace A001506.P618996791855999880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210252 (A000217 (n + 1)).toNat + A010894 ((A131818 (n + 1)).toNat + 21)

end

end A001506.P618996791855999880

/-! ## A001506.P8745388638438089340

`A290326(n²+4-n)`
-/

namespace A001506.P8745388638438089340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290326 ((n ^ 2 : ℤ) + (4 - (n : ℤ))).toNat

end

end A001506.P8745388638438089340

/-!
# A001507: a(n) is the number of c-nets with n+1 vertices and 2n+1 edges, n >= 1.

The programs for A001507, there is no canonical definition to state claims against.
-/

/-! ## A001507.P14828850245214009492

`A210252(∑[n+2])`
-/

namespace A001507.P14828850245214009492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001507.P14828850245214009492

/-! ## A001507.P13732038785854094109

`A290326(n²+5-n)`
-/

namespace A001507.P13732038785854094109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290326 ((n ^ 2 : ℤ) + (5 - (n : ℤ))).toNat

end

end A001507.P13732038785854094109

/-!
# A001508: a(n) is the number of c-nets with n+1 vertices and 2n+2 edges, n >= 1.

The programs for A001508, there is no canonical definition to state claims against.
-/

/-! ## A001508.P3105517609753310826

`A210252(∑[n+3]+1)`
-/

namespace A001508.P3105517609753310826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001508.P3105517609753310826

/-! ## A001508.P1605195527130276672

`ceil(sin(n)²)*A210252(A034856(n+2))`
-/

namespace A001508.P1605195527130276672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A210252 (A034856 (n + 2)).toNat

end

end A001508.P1605195527130276672

/-! ## A001508.P16547664015899601422

`A002828(n²)*A210252(A034856(n+2))`
-/

namespace A001508.P16547664015899601422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A210252 (A034856 (n + 2)).toNat

end

end A001508.P16547664015899601422

/-! ## A001508.P6710478305213939448

`A210252(A034856(n+2))+A004018(4*n+3)`
-/

namespace A001508.P6710478305213939448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210252 (A034856 (n + 2)).toNat + A004018 (4 * n + 3)

end

end A001508.P6710478305213939448

/-! ## A001508.P10099250582911221738

`gcd(3, A000040(n+2))*A210252(A034856(n+2))`
-/

namespace A001508.P10099250582911221738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000040 (n + 2)) : ℤ) * A210252 (A034856 (n + 2)).toNat

end

end A001508.P10099250582911221738

/-! ## A001508.P16110797355023318550

`A007318(A000217(n))*A210252(A034856(n+2))`
-/

namespace A001508.P16110797355023318550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A210252 (A034856 (n + 2)).toNat

end

end A001508.P16110797355023318550

/-! ## A001508.P4560006567043735188

`A014963(A000217(n+11))*A210252(A034856(n+2))`
-/

namespace A001508.P4560006567043735188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 11)).toNat * A210252 (A034856 (n + 2)).toNat

end

end A001508.P4560006567043735188

/-! ## A001508.P13965576840135157703

`A290326((n+2)²-n)`
-/

namespace A001508.P13965576840135157703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290326 ((n + 2) ^ 2 - n)

end

end A001508.P13965576840135157703

/-! ## A001508.P1009032995072649222

`A210252(A034856(n+2))%A106651(n+3)`
-/

namespace A001508.P1009032995072649222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210252 (A034856 (n + 2)).toNat) (A106651 (n + 3))

end

end A001508.P1009032995072649222

/-!
# A001509: a(n) = (5*n + 1)*(5*n + 2)*(5*n + 3).

The programs for A001509, the canonical program `A001509.P16139964964467998840` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001509 has offset 0).

The definition of A001509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+2)*(5*n+3)` (program `A001509.P16139964964467998840`, by `A001509.P16139964964467998840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001509.P16139964964467998840

`(5*n+1)*(5*n+2)*(5*n+3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001509

/-- `(5*n+1)*(5*n+2)*(5*n+3)` -/
def P16139964964467998840.Spec : Prop :=
  ∀ n, (P16139964964467998840.a n : ℤ) = A001509 n

theorem P16139964964467998840.correct : P16139964964467998840.Spec := by
  intro n
  simp only [A001509]

end A001509

/-! ## A001509.P10250638822831192553

`A016875(n)-A016873(n)`
-/

namespace A001509.P10250638822831192553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n - A016873 n

end

end A001509.P10250638822831192553

namespace A001509

/-- `A016875(n)-A016873(n)` -/
def P10250638822831192553.Spec : Prop :=
  ∀ n, P10250638822831192553.a n = A001509 n

end A001509

/-! ## A001509.P3522367412447327304

`A001512(n)/A016897(n)`
-/

namespace A001509.P3522367412447327304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001512 n : ℚ) / (A016897 n : ℚ)

end

end A001509.P3522367412447327304

namespace A001509

/-- `A001512(n)/A016897(n)` -/
def P3522367412447327304.Spec : Prop :=
  ∀ n, P3522367412447327304.a n = (A001509 n : ℚ)

end A001509

/-! ## A001509.P6146275877410317389

`A016876(n)/A016873(n)-A016873(n)`
-/

namespace A001509.P6146275877410317389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016876 n : ℚ) / (A016873 n : ℚ) - (A016873 n : ℚ)

end

end A001509.P6146275877410317389

namespace A001509

/-- `A016876(n)/A016873(n)-A016873(n)` -/
def P6146275877410317389.Spec : Prop :=
  ∀ n, P6146275877410317389.a n = (A001509 n : ℚ)

end A001509

/-! ## A001509.P8000639507923113469

`A007531(5*n+3)`
-/

namespace A001509.P8000639507923113469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (5 * n + 3)

end

end A001509.P8000639507923113469

namespace A001509

/-- `A007531(5*n+3)` -/
def P8000639507923113469.Spec : Prop :=
  ∀ n, P8000639507923113469.a n = A001509 n

end A001509

/-! ## A001509.P5194669127512783715

`A280058(A016885(n))/2`
-/

namespace A001509.P5194669127512783715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 (A016885 n).toNat : ℚ) / 2

end

end A001509.P5194669127512783715

namespace A001509

/-- `A280058(A016885(n))/2` -/
def P5194669127512783715.Spec : Prop :=
  ∀ n, P5194669127512783715.a n = (A001509 n : ℚ)

end A001509

/-! ## A001509.P10320576363308086416

`record[A007531(A185452(n+1))]`
-/

namespace A001509.P10320576363308086416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A185452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001509.P10320576363308086416

namespace A001509

/-- `record[A007531(A185452(n+1))]` -/
def P10320576363308086416.Spec : Prop :=
  ∀ n, P10320576363308086416.a n = A001509 n

end A001509

/-! ## A001509.P4017786845134282000

`A055522(A017317(n))`
-/

namespace A001509.P4017786845134282000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055522 (A017317 n).toNat

end

end A001509.P4017786845134282000

namespace A001509

/-- `A055522(A017317(n))` -/
def P4017786845134282000.Spec : Prop :=
  ∀ n, P4017786845134282000.a n = A001509 n

end A001509

/-! ## A001509.P5952062109000391540

`A060423(A017341(n))`
-/

namespace A001509.P5952062109000391540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060423 (A017341 n).toNat

end

end A001509.P5952062109000391540

namespace A001509

/-- `A060423(A017341(n))` -/
def P5952062109000391540.Spec : Prop :=
  ∀ n, P5952062109000391540.a n = A001509 n

end A001509

/-! ## A001509.P1113588005284023480

`A185292(A139606(n))`
-/

namespace A001509.P1113588005284023480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185292 (A139606 n).toNat

end

end A001509.P1113588005284023480

namespace A001509

/-- `A185292(A139606(n))` -/
def P1113588005284023480.Spec : Prop :=
  ∀ n, P1113588005284023480.a n = A001509 n

end A001509

/-! ## A001509.P6781516367565852995

`A213042(A128471(n))`
-/

namespace A001509.P6781516367565852995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (A128471 n).toNat

end

end A001509.P6781516367565852995

namespace A001509

/-- `A213042(A128471(n))` -/
def P6781516367565852995.Spec : Prop :=
  ∀ n, P6781516367565852995.a n = A001509 n

end A001509

/-! ## A001509.P7052922324539715885

`A309686(A128467(n))`
-/

namespace A001509.P7052922324539715885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (A128467 n).toNat

end

end A001509.P7052922324539715885

namespace A001509

/-- `A309686(A128467(n))` -/
def P7052922324539715885.Spec : Prop :=
  ∀ n, P7052922324539715885.a n = A001509 n

end A001509

/-!
# A001510: a(n) = 2*a(n-1)*(a(n-1)-1) for n > 1, with a(0) = 1, a(1) = 2.

The programs for A001510, the canonical program `A001510.P13508503870916234391` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001510 has offset 0).

The definition of A001510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*(a(n-1)-1)` (program `A001510.P13508503870916234391`, by `A001510.P13508503870916234391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001510.P13508503870916234391

`2*a(n-1)*(a(n-1)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001510

/-- `2*a(n-1)*(a(n-1)-1)` -/
def P13508503870916234391.Spec : Prop :=
  ∀ n, P13508503870916234391.a n = A001510 n

theorem P13508503870916234391.correct : P13508503870916234391.Spec := by
  intro n
  simp only [A001510]

end A001510

/-! ## A001510.P14754637326116435332

`ceil(ϕ^2^n/2)`
-/

namespace A001510.P14754637326116435332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 2 ^ n / 2⌉

end

end A001510.P14754637326116435332

namespace A001510

/-- `ceil(ϕ^2^n/2)` -/
def P14754637326116435332.Spec : Prop :=
  ∀ n, P14754637326116435332.a n = A001510 n

end A001510

/-! ## A001510.P4939630818764765839

`4*C(a(n-1), 2)` with `a(0)=1, a(1)=2`
-/

namespace A001510.P4939630818764765839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * Nat.choose (a (n - 1)) 2

end

end A001510.P4939630818764765839

namespace A001510

/-- `4*C(a(n-1), 2)` -/
def P4939630818764765839.Spec : Prop :=
  ∀ n, (P4939630818764765839.a n : ℤ) = A001510 n

end A001510

/-! ## A001510.P7811176975763181042

`2*(a(n-1)²-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A001510.P7811176975763181042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) ^ 2 - a (n - 1))

end

end A001510.P7811176975763181042

namespace A001510

/-- `2*(a(n-1)²-a(n-1))` -/
def P7811176975763181042.Spec : Prop :=
  ∀ n, P7811176975763181042.a n = A001510 n

theorem P7811176975763181042.correct : P7811176975763181042.Spec := by
  intro n
  simp only [A001510, Nat.add_sub_cancel, A001510.P7811176975763181042.a, A001510.P13508503870916234391.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001510

/-! ## A001510.P10543392777519830667

`A173495(2^n)`
-/

namespace A001510.P10543392777519830667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (2 ^ n)

end

end A001510.P10543392777519830667

namespace A001510

/-- `A173495(2^n)` -/
def P10543392777519830667.Spec : Prop :=
  ∀ n, P10543392777519830667.a n = A001510 n

end A001510

/-!
# A001511: The ruler function: exponent of the highest power of 2 dividing 2n. Equivalently, the 2-adic valuation of 2n.

The programs for A001511, the canonical program `A001511.P17146462531039486101` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001511 has offset 1).

The definition of A001511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001511.P1508912547284914581

`A007814(n+1)+1`
-/

namespace A001511.P1508912547284914581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

end

end A001511.P1508912547284914581

namespace A001511

/-- `A007814(n+1)+1` -/
def P1508912547284914581.Spec : Prop :=
  ∀ n, P1508912547284914581.a n = A001511 (n + 1)

end A001511

/-! ## A001511.P17146462531039486101

`log2(A006519(n+1))+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001511

/-- `log2(A006519(n+1))+1` -/
def P17146462531039486101.Spec : Prop :=
  ∀ n, P17146462531039486101.a n = (A001511 (n + 1) : ℝ)

end A001511

/-! ## A001511.P960494588725935454

`A000005(n+1)/A001227(n+1)`
-/

namespace A001511.P960494588725935454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A001511.P960494588725935454

namespace A001511

/-- `A000005(n+1)/A001227(n+1)` -/
def P960494588725935454.Spec : Prop :=
  ∀ n, P960494588725935454.a n = (A001511 (n + 1) : ℚ)

end A001511

/-! ## A001511.P2587603500761833952

`A181988(n+1)/A003602(n+1)`
-/

namespace A001511.P2587603500761833952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181988 (n + 1) : ℚ) / (A003602 (n + 1) : ℚ)

end

end A001511.P2587603500761833952

namespace A001511

/-- `A181988(n+1)/A003602(n+1)` -/
def P2587603500761833952.Spec : Prop :=
  ∀ n, P2587603500761833952.a n = (A001511 (n + 1) : ℚ)

end A001511

/-! ## A001511.P17671785711008742478

`1+A183063(n+1)/A001227(n+1)`
-/

namespace A001511.P17671785711008742478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A001511.P17671785711008742478

namespace A001511

/-- `1+A183063(n+1)/A001227(n+1)` -/
def P17671785711008742478.Spec : Prop :=
  ∀ n, P17671785711008742478.a n = (A001511 (n + 1) : ℚ)

end A001511

/-! ## A001511.P3406948332763790225

`A050603(2*n)`
-/

namespace A001511.P3406948332763790225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (2 * n)

end

end A001511.P3406948332763790225

namespace A001511

/-- `A050603(2*n)` -/
def P3406948332763790225.Spec : Prop :=
  ∀ n, P3406948332763790225.a n = A001511 (n + 1)

end A001511

/-! ## A001511.P1725535923407965479

`A094267(2*n)`
-/

namespace A001511.P1725535923407965479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (2 * n)

end

end A001511.P1725535923407965479

namespace A001511

/-- `A094267(2*n)` -/
def P1725535923407965479.Spec : Prop :=
  ∀ n, P1725535923407965479.a n = A001511 (n + 1)

end A001511

/-! ## A001511.P16231080862580759384

`val(n+1, 2)+1`
-/

namespace A001511.P16231080862580759384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

end

end A001511.P16231080862580759384

namespace A001511

/-- `val(n+1, 2)+1` -/
def P16231080862580759384.Spec : Prop :=
  ∀ n, (P16231080862580759384.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P16938428087518459360

`val(record[abs(xor(n, -2))], 2)`
-/

namespace A001511.P16938428087518459360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A001511.P16938428087518459360

namespace A001511

/-- `val(record[abs(xor(n, -2))], 2)` -/
def P16938428087518459360.Spec : Prop :=
  ∀ n, (P16938428087518459360.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P18011875682134873573

`val(∑[2*or(3, n)], 2)`
-/

namespace A001511.P18011875682134873573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A001511.P18011875682134873573

namespace A001511

/-- `val(∑[2*or(3, n)], 2)` -/
def P18011875682134873573.Spec : Prop :=
  ∀ n, (P18011875682134873573.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P1623277430812394425

`log2(xor(n, n+1)+1)`
-/

namespace A001511.P1623277430812394425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A001511.P1623277430812394425

namespace A001511

/-- `log2(xor(n, n+1)+1)` -/
def P1623277430812394425.Spec : Prop :=
  ∀ n, P1623277430812394425.a n = (A001511 (n + 1) : ℝ)

end A001511

/-! ## A001511.P9321151280286439546

`val(1-Δ[-n²], 2)`
-/

namespace A001511.P9321151280286439546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - (f1 (n + 1) - f1 n)).toNat 2

end

end A001511.P9321151280286439546

namespace A001511

/-- `val(1-Δ[-n²], 2)` -/
def P9321151280286439546.Spec : Prop :=
  ∀ n, (P9321151280286439546.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P14003332449571210645

`∑{e}[xor(n, -(n+2)), #]`
-/

namespace A001511.P14003332449571210645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A001511.P14003332449571210645

namespace A001511

/-- `∑{e}[xor(n, -(n+2)), #]` -/
def P14003332449571210645.Spec : Prop :=
  ∀ n, (P14003332449571210645.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P10712764360366999847

`∑{e}[xor(n, n+1)+1, #]`
-/

namespace A001511.P10712764360366999847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A001511.P10712764360366999847

namespace A001511

/-- `∑{e}[xor(n, n+1)+1, #]` -/
def P10712764360366999847.Spec : Prop :=
  ∀ n, (P10712764360366999847.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P17999493750306032675

`∏{e}[xor(n, n+1)+1, #]`
-/

namespace A001511.P17999493750306032675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A001511.P17999493750306032675

namespace A001511

/-- `∏{e}[xor(n, n+1)+1, #]` -/
def P17999493750306032675.Spec : Prop :=
  ∀ n, (P17999493750306032675.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P10778868473619200097

`Δ[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A001511.P10778868473619200097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001511.P10778868473619200097

namespace A001511

/-- `Δ[a(floor(n/2))+n]` -/
def P10778868473619200097.Spec : Prop :=
  ∀ n, P10778868473619200097.a n = A001511 (n + 1)

end A001511

/-! ## A001511.P9622878409978823160

`log2(or(n, n+1)-n)+1`
-/

namespace A001511.P9622878409978823160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) + 1

end

end A001511.P9622878409978823160

namespace A001511

/-- `log2(or(n, n+1)-n)+1` -/
def P9622878409978823160.Spec : Prop :=
  ∀ n, P9622878409978823160.a n = (A001511 (n + 1) : ℝ)

end A001511

/-! ## A001511.P9234792344292312937

`n%2*a(floor(n/2))+1` with `a(0)=1`
-/

namespace A001511.P9234792344292312937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A001511.P9234792344292312937

namespace A001511

/-- `n%2*a(floor(n/2))+1` -/
def P9234792344292312937.Spec : Prop :=
  ∀ n, (P9234792344292312937.a n : ℤ) = A001511 (n + 1)

end A001511

/-! ## A001511.P16798720187888667177

`log2(n+1-and(n, n+1))+1`
-/

namespace A001511.P16798720187888667177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℝ) + 1

end

end A001511.P16798720187888667177

namespace A001511

/-- `log2(n+1-and(n, n+1))+1` -/
def P16798720187888667177.Spec : Prop :=
  ∀ n, P16798720187888667177.a n = (A001511 (n + 1) : ℝ)

end A001511

/-! ## A001511.P14919013018041131112

`∑{e}[and(n+1, -(n+1)), #]+1`
-/

namespace A001511.P14919013018041131112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A001511.P14919013018041131112

namespace A001511

/-- `∑{e}[and(n+1, -(n+1)), #]+1` -/
def P14919013018041131112.Spec : Prop :=
  ∀ n, (P14919013018041131112.a n : ℤ) = A001511 (n + 1)

end A001511

/-!
# A001512: a(n) = (5*n+1)*(5*n+2)*(5*n+3)*(5*n+4).

The programs for A001512, the canonical program `A001512.P12810526949206369475` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001512 has offset 0).

The definition of A001512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)` (program `A001512.P12810526949206369475`, by `A001512.P12810526949206369475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001512.P12810526949206369475

`(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001512

/-- `(5*n+1)*(5*n+2)*(5*n+3)*(5*n+4)` -/
def P12810526949206369475.Spec : Prop :=
  ∀ n, (P12810526949206369475.a n : ℤ) = A001512 n

theorem P12810526949206369475.correct : P12810526949206369475.Spec := by
  intro n
  simp only [A001512]

end A001512

/-! ## A001512.P17778394844800331870

`(A001545(n)+1)²-1`
-/

namespace A001512.P17778394844800331870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001545 n + 1) ^ 2 - 1

end

end A001512.P17778394844800331870

namespace A001512

/-- `(A001545(n)+1)²-1` -/
def P17778394844800331870.Spec : Prop :=
  ∀ n, P17778394844800331870.a n = A001512 n

end A001512

/-! ## A001512.P16934861401561176970

`(1-A177059(n))²-1`
-/

namespace A001512.P16934861401561176970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A177059 n) ^ 2 - 1

end

end A001512.P16934861401561176970

namespace A001512

/-- `(1-A177059(n))²-1` -/
def P16934861401561176970.Spec : Prop :=
  ∀ n, P16934861401561176970.a n = A001512 n

end A001512

/-! ## A001512.P14410295188552586039

`(A001539(n)+A001504(n))²-1`
-/

namespace A001512.P14410295188552586039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001539 n + A001504 n) ^ 2 - 1

end

end A001512.P14410295188552586039

namespace A001512

/-- `(A001539(n)+A001504(n))²-1` -/
def P14410295188552586039.Spec : Prop :=
  ∀ n, P14410295188552586039.a n = A001512 n

end A001512

/-! ## A001512.P15075568144850858796

`A001509(n)+A001509(n)*A016885(n)`
-/

namespace A001512.P15075568144850858796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n + A001509 n * A016885 n

end

end A001512.P15075568144850858796

namespace A001512

/-- `A001509(n)+A001509(n)*A016885(n)` -/
def P15075568144850858796.Spec : Prop :=
  ∀ n, P15075568144850858796.a n = A001512 n

end A001512

/-! ## A001512.P2538378877004856430

`A001509(n)*A008587(n+1)-A001509(n)`
-/

namespace A001512.P2538378877004856430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001509 n * A008587 (n + 1) - A001509 n

end

end A001512.P2538378877004856430

namespace A001512

/-- `A001509(n)*A008587(n+1)-A001509(n)` -/
def P2538378877004856430.Spec : Prop :=
  ∀ n, P2538378877004856430.a n = A001512 n

end A001512

/-! ## A001512.P17970546669333187415

`A052762(5*n+4)`
-/

namespace A001512.P17970546669333187415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (5 * n + 4)

end

end A001512.P17970546669333187415

namespace A001512

/-- `A052762(5*n+4)` -/
def P17970546669333187415.Spec : Prop :=
  ∀ n, P17970546669333187415.a n = A001512 n

end A001512

/-! ## A001512.P3075896937037538758

`A028387(5*n+1)²-1`
-/

namespace A001512.P3075896937037538758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (5 * n + 1) ^ 2 - 1

end

end A001512.P3075896937037538758

namespace A001512

/-- `A028387(5*n+1)²-1` -/
def P3075896937037538758.Spec : Prop :=
  ∀ n, P3075896937037538758.a n = A001512 n

end A001512

/-! ## A001512.P9257385238529572592

`A158874(5*n+1)/(n+1)`
-/

namespace A001512.P9257385238529572592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158874 (5 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001512.P9257385238529572592

namespace A001512

/-- `A158874(5*n+1)/(n+1)` -/
def P9257385238529572592.Spec : Prop :=
  ∀ n, P9257385238529572592.a n = (A001512 n : ℚ)

end A001512

/-! ## A001512.P12094707238016521945

`A052787(A008706(n+1))/A008706(n+1)`
-/

namespace A001512.P12094707238016521945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (A008706 (n + 1)).toNat : ℚ) / (A008706 (n + 1) : ℚ)

end

end A001512.P12094707238016521945

namespace A001512

/-- `A052787(A008706(n+1))/A008706(n+1)` -/
def P12094707238016521945.Spec : Prop :=
  ∀ n, P12094707238016521945.a n = (A001512 n : ℚ)

end A001512

/-! ## A001512.P13727584696753500407

`A117465(A017341(n))`
-/

namespace A001512.P13727584696753500407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (A017341 n).toNat

end

end A001512.P13727584696753500407

namespace A001512

/-- `A117465(A017341(n))` -/
def P13727584696753500407.Spec : Prop :=
  ∀ n, P13727584696753500407.a n = A001512 n

end A001512

/-! ## A001512.P13406207321744127953

`A004652(A017329(n))²-A017329(n)²`
-/

namespace A001512.P13406207321744127953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A017329 n).toNat ^ 2 - A017329 n ^ 2

end

end A001512.P13406207321744127953

namespace A001512

/-- `A004652(A017329(n))²-A017329(n)²` -/
def P13406207321744127953.Spec : Prop :=
  ∀ n, P13406207321744127953.a n = A001512 n

end A001512

/-!
# A001513: a(n) = (6*n+1)*(6*n+5).

The programs for A001513, the canonical program `A001513.P5743200650267435422` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001513 has offset 0).

The definition of A001513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)*(6*n+5)` (program `A001513.P5743200650267435422`, by `A001513.P5743200650267435422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001513.P4991068777717066050

`72*n+a(n-1)` with `a(0)=5`
-/

namespace A001513.P4991068777717066050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  72 * n + a (n - 1)

end

end A001513.P4991068777717066050

namespace A001513

/-- `72*n+a(n-1)` -/
def P4991068777717066050.Spec : Prop :=
  ∀ n, (P4991068777717066050.a n : ℤ) = A001513 n

theorem P4991068777717066050.correct : P4991068777717066050.Spec := by
  intro n
  induction n with
  | zero => simp [A001513, A001513.P4991068777717066050.a, A001513.P5743200650267435422.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001513, Nat.add_sub_cancel, A001513.P4991068777717066050.a, A001513.P5743200650267435422.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001513

/-! ## A001513.P5743200650267435422

`(6*n+1)*(6*n+5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001513

/-- `(6*n+1)*(6*n+5)` -/
def P5743200650267435422.Spec : Prop :=
  ∀ n, (P5743200650267435422.a n : ℤ) = A001513 n

theorem P5743200650267435422.correct : P5743200650267435422.Spec := by
  intro n
  simp only [A001513]

end A001513

/-! ## A001513.P12666107637508761337

`A144410(n)-3`
-/

namespace A001513.P12666107637508761337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144410 n - 3

end

end A001513.P12666107637508761337

namespace A001513

/-- `A144410(n)-3` -/
def P12666107637508761337.Spec : Prop :=
  ∀ n, P12666107637508761337.a n = A001513 n

end A001513

/-! ## A001513.P12340863096036730276

`A016946(n)-4`
-/

namespace A001513.P12340863096036730276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n - 4

end

end A001513.P12340863096036730276

namespace A001513

/-- `A016946(n)-4` -/
def P12340863096036730276.Spec : Prop :=
  ∀ n, P12340863096036730276.a n = A001513 n

end A001513

/-! ## A001513.P16170400204840715529

`A016945(n)²-4`
-/

namespace A001513.P16170400204840715529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 - 4

end

end A001513.P16170400204840715529

namespace A001513

/-- `A016945(n)²-4` -/
def P16170400204840715529.Spec : Prop :=
  ∀ n, P16170400204840715529.a n = A001513 n

end A001513

/-! ## A001513.P6147537532948315152

`sqrt(A016948(n))-4`
-/

namespace A001513.P6147537532948315152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016948 n : ℝ) - 4

end

end A001513.P6147537532948315152

namespace A001513

/-- `sqrt(A016948(n))-4` -/
def P6147537532948315152.Spec : Prop :=
  ∀ n, P6147537532948315152.a n = (A001513 n : ℝ)

end A001513

/-! ## A001513.P6363511192204340396

`2*A162940(n)+5`
-/

namespace A001513.P6363511192204340396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162940 n + 5

end

end A001513.P6363511192204340396

namespace A001513

/-- `2*A162940(n)+5` -/
def P6363511192204340396.Spec : Prop :=
  ∀ n, P6363511192204340396.a n = A001513 n

end A001513

/-! ## A001513.P3191414418245579698

`4*A001504(n)-3`
-/

namespace A001513.P3191414418245579698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001504 n - 3

end

end A001513.P3191414418245579698

namespace A001513

/-- `4*A001504(n)-3` -/
def P3191414418245579698.Spec : Prop :=
  ∀ n, P3191414418245579698.a n = A001513 n

end A001513

/-! ## A001513.P7632166072832337628

`4*A163758(n)+5`
-/

namespace A001513.P7632166072832337628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163758 n + 5

end

end A001513.P7632166072832337628

namespace A001513

/-- `4*A163758(n)+5` -/
def P7632166072832337628.Spec : Prop :=
  ∀ n, P7632166072832337628.a n = A001513 n

end A001513

/-! ## A001513.P16960345400531755694

`A017594(n)/4-4`
-/

namespace A001513.P16960345400531755694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017594 n : ℚ) / 4 - 4

end

end A001513.P16960345400531755694

namespace A001513

/-- `A017594(n)/4-4` -/
def P16960345400531755694.Spec : Prop :=
  ∀ n, P16960345400531755694.a n = (A001513 n : ℚ)

end A001513

/-! ## A001513.P7872586645918809045

`4*A069131(n+1)+1`
-/

namespace A001513.P7872586645918809045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A069131 (n + 1) + 1

end

end A001513.P7872586645918809045

namespace A001513

/-- `4*A069131(n+1)+1` -/
def P7872586645918809045.Spec : Prop :=
  ∀ n, P7872586645918809045.a n = A001513 n

end A001513

/-! ## A001513.P7434754440008582565

`3*A069190(n+1)+2`
-/

namespace A001513.P7434754440008582565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069190 (n + 1) + 2

end

end A001513.P7434754440008582565

namespace A001513

/-- `3*A069190(n+1)+2` -/
def P7434754440008582565.Spec : Prop :=
  ∀ n, P7434754440008582565.a n = A001513 n

end A001513

/-! ## A001513.P10631708722236998651

`2*A195316(n+1)+3`
-/

namespace A001513.P10631708722236998651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195316 (n + 1) + 3

end

end A001513.P10631708722236998651

namespace A001513

/-- `2*A195316(n+1)+3` -/
def P10631708722236998651.Spec : Prop :=
  ∀ n, P10631708722236998651.a n = A001513 n

end A001513

/-! ## A001513.P15997255742215923761

`A017533(n)+A016934(n)`
-/

namespace A001513.P15997255742215923761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n + A016934 n

end

end A001513.P15997255742215923761

namespace A001513

/-- `A017533(n)+A016934(n)` -/
def P15997255742215923761.Spec : Prop :=
  ∀ n, P15997255742215923761.a n = A001513 n

end A001513

/-! ## A001513.P11217233102753587265

`A016958(n)-A017653(n)`
-/

namespace A001513.P11217233102753587265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n - A017653 n

end

end A001513.P11217233102753587265

namespace A001513

/-- `A016958(n)-A017653(n)` -/
def P11217233102753587265.Spec : Prop :=
  ∀ n, P11217233102753587265.a n = A001513 n

end A001513

/-! ## A001513.P693195849029314994

`A085026(n)-A017545(n)`
-/

namespace A001513.P693195849029314994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085026 n - A017545 n

end

end A001513.P693195849029314994

namespace A001513

/-- `A085026(n)-A017545(n)` -/
def P693195849029314994.Spec : Prop :=
  ∀ n, P693195849029314994.a n = A001513 n

end A001513

/-! ## A001513.P11033912833803929229

`A152161(n)-A017114(n)`
-/

namespace A001513.P11033912833803929229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152161 n - A017114 n

end

end A001513.P11033912833803929229

namespace A001513

/-- `A152161(n)-A017114(n)` -/
def P11033912833803929229.Spec : Prop :=
  ∀ n, P11033912833803929229.a n = A001513 n

end A001513

/-! ## A001513.P4216984850442929200

`A304505(n)-A106839(n)`
-/

namespace A001513.P4216984850442929200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304505 n - A106839 n

end

end A001513.P4216984850442929200

namespace A001513

/-- `A304505(n)-A106839(n)` -/
def P4216984850442929200.Spec : Prop :=
  ∀ n, P4216984850442929200.a n = A001513 n

end A001513

/-! ## A001513.P11246262332917533722

`A304504(n)-A179436(n)`
-/

namespace A001513.P11246262332917533722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304504 n - A179436 n

end

end A001513.P11246262332917533722

namespace A001513

/-- `A304504(n)-A179436(n)` -/
def P11246262332917533722.Spec : Prop :=
  ∀ n, P11246262332917533722.a n = A001513 n

end A001513

/-! ## A001513.P7466463460478033783

`A144449(n)-A348845(n)`
-/

namespace A001513.P7466463460478033783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144449 n - A348845 n

end

end A001513.P7466463460478033783

namespace A001513

/-- `A144449(n)-A348845(n)` -/
def P7466463460478033783.Spec : Prop :=
  ∀ n, P7466463460478033783.a n = A001513 n

end A001513

/-!
# A001514: Bessel polynomial {y_n}'(1).

The programs for A001514, there is no canonical definition to state claims against.
-/

/-! ## A001514.P12069220272956802337

`(A144647(n)-A001515(n))/2`
-/

namespace A001514.P12069220272956802337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144647 n - A001515 n : ℚ) / 2

end

end A001514.P12069220272956802337

/-! ## A001514.P4299862875168387101

`A001515(n+1)-(n+2)*A144301(n+1)`
-/

namespace A001514.P4299862875168387101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 (n + 1) - (n + 2 : ℤ) * A144301 (n + 1)

end

end A001514.P4299862875168387101

/-! ## A001514.P18111209133396514370

`A144505(A034856(n+1))-A000007(n)`
-/

namespace A001514.P18111209133396514370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (A034856 (n + 1)).toNat - A000007 n

end

end A001514.P18111209133396514370

/-! ## A001514.P7839182488964164659

`lcm(A062157(n), A144505(A034856(n+1)))`
-/

namespace A001514.P7839182488964164659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A144505 (A034856 (n + 1)).toNat)

end

end A001514.P7839182488964164659

/-! ## A001514.P3767924895887236211

`and(A057428(n), A144505(A034856(n+1)))`
-/

namespace A001514.P3767924895887236211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A144505 (A034856 (n + 1)).toNat)

end

end A001514.P3767924895887236211

/-! ## A001514.P1408292517242968596

`char[A324346(n)]*A144505(A034856(n+1))`
-/

namespace A001514.P1408292517242968596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144505 (A034856 (n + 1)).toNat

end

end A001514.P1408292517242968596

/-! ## A001514.P9920749234196673318

`A144505(A034856(n+1))-A008683((n+1)²)`
-/

namespace A001514.P9920749234196673318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (A034856 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A001514.P9920749234196673318

/-!
# A001515: Bessel polynomial y_n(x) evaluated at x=1.

The programs for A001515, the canonical program `A001515.P13632434155631710170` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001515 has offset 0).

The definition of A001515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001515.P13632434155631710170

`(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001515

/-- `(2*n-1)*a(n-1)+a(n-2)` -/
def P13632434155631710170.Spec : Prop :=
  ∀ n, P13632434155631710170.a n = A001515 n

theorem P13632434155631710170.correct : P13632434155631710170.Spec := by
  intro n
  simp only [A001515]

end A001515

/-! ## A001515.P1494904269197104801

`A144301(n+1)`
-/

namespace A001515.P1494904269197104801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (n + 1)

end

end A001515.P1494904269197104801

namespace A001515

/-- `A144301(n+1)` -/
def P1494904269197104801.Spec : Prop :=
  ∀ n, P1494904269197104801.a n = A001515 n

end A001515

/-! ## A001515.P8312842997349772293

`A105749(n)/n!`
-/

namespace A001515.P8312842997349772293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105749 n : ℚ) / (Nat.factorial n : ℚ)

end

end A001515.P8312842997349772293

namespace A001515

/-- `A105749(n)/n!` -/
def P8312842997349772293.Spec : Prop :=
  ∀ n, P8312842997349772293.a n = (A001515 n : ℚ)

end A001515

/-! ## A001515.P16521506237888740340

`a(n-2)-(1-2*n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001515.P16521506237888740340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (1 - (2 * n : ℤ)) * a (n - 1)

end

end A001515.P16521506237888740340

namespace A001515

/-- `a(n-2)-(1-2*n)*a(n-1)` -/
def P16521506237888740340.Spec : Prop :=
  ∀ n, P16521506237888740340.a n = A001515 n

end A001515

/-! ## A001515.P18324727127123684513

`record[A144502(n)]`
-/

namespace A001515.P18324727127123684513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001515.P18324727127123684513

namespace A001515

/-- `record[A144502(n)]` -/
def P18324727127123684513.Spec : Prop :=
  ∀ n, P18324727127123684513.a n = A001515 n

end A001515

/-! ## A001515.P747109860919578023

`A144502(∑[n+1])`
-/

namespace A001515.P747109860919578023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001515.P747109860919578023

namespace A001515

/-- `A144502(∑[n+1])` -/
def P747109860919578023.Spec : Prop :=
  ∀ n, P747109860919578023.a n = A001515 n

end A001515

/-! ## A001515.P12585312655536388028

`A144505(∑[n+1])`
-/

namespace A001515.P12585312655536388028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001515.P12585312655536388028

namespace A001515

/-- `A144505(∑[n+1])` -/
def P12585312655536388028.Spec : Prop :=
  ∀ n, P12585312655536388028.a n = A001515 n

end A001515

/-! ## A001515.P1974709940931924757

`A336400(n)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001515.P1974709940931924757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A336400 n - a (n - 1)

end

end A001515.P1974709940931924757

namespace A001515

/-- `A336400(n)-a(n-1)` -/
def P1974709940931924757.Spec : Prop :=
  ∀ n, P1974709940931924757.a n = A001515 n

end A001515

/-! ## A001515.P9827148084790492437

`A144498(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001515.P9827148084790492437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144498 (n - 1) + a (n - 1)

end

end A001515.P9827148084790492437

namespace A001515

/-- `A144498(n-1)+a(n-1)` -/
def P9827148084790492437.Spec : Prop :=
  ∀ n, P9827148084790492437.a n = A001515 n

end A001515

/-! ## A001515.P3254739558849334487

`record[A144301(A008611(n))]`
-/

namespace A001515.P3254739558849334487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001515.P3254739558849334487

namespace A001515

/-- `record[A144301(A008611(n))]` -/
def P3254739558849334487.Spec : Prop :=
  ∀ n, P3254739558849334487.a n = A001515 n

end A001515

/-!
# A001516: Bessel polynomial {y_n}''(1).

The programs for A001516, there is no canonical definition to state claims against.
-/

/-! ## A001516.P8539511224759071090

`2*A144659(n)`
-/

namespace A001516.P8539511224759071090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144659 n

end

end A001516.P8539511224759071090

/-! ## A001516.P2581694964965941299

`6*A144507(n+3)`
-/

namespace A001516.P2581694964965941299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A144507 (n + 3)

end

end A001516.P2581694964965941299

/-! ## A001516.P15901643518371430251

`A144659(A028310(n))+A144659(n)`
-/

namespace A001516.P15901643518371430251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144659 (A028310 n).toNat + A144659 n

end

end A001516.P15901643518371430251

/-! ## A001516.P2009381829483177293

`A144659(A033619(n+1))+A144659(n)`
-/

namespace A001516.P2009381829483177293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144659 (A033619 (n + 1)).toNat + A144659 n

end

end A001516.P2009381829483177293

/-! ## A001516.P5887719134764191643

`A144659(A130734(n+1))+A144659(n)`
-/

namespace A001516.P5887719134764191643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144659 (A130734 (n + 1)).toNat + A144659 n

end

end A001516.P5887719134764191643

/-! ## A001516.P9178514236635081969

`A144659(n)+A144659(n)%A001518(n)`
-/

namespace A001516.P9178514236635081969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144659 n + Int.tmod (A144659 n) (A001518 n)

end

end A001516.P9178514236635081969

/-!
# A001517: Bessel polynomials y_n(x) (see A001498) evaluated at 2.

The programs for A001517, the canonical program `A001517.P12125180970183693212` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001517 has offset 0).

The definition of A001517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001517.P12125180970183693212

`(4*n-2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001517

/-- `(4*n-2)*a(n-1)+a(n-2)` -/
def P12125180970183693212.Spec : Prop :=
  ∀ n, P12125180970183693212.a n = A001517 n

theorem P12125180970183693212.correct : P12125180970183693212.Spec := by
  intro n
  simp only [A001517]

end A001517

/-! ## A001517.P15556085603659186543

`a(n-2)-(2-4*n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A001517.P15556085603659186543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - (2 - (4 * n : ℤ)) * a (n - 1)

end

end A001517.P15556085603659186543

namespace A001517

/-- `a(n-2)-(2-4*n)*a(n-1)` -/
def P15556085603659186543.Spec : Prop :=
  ∀ n, P15556085603659186543.a n = A001517 n

end A001517

/-! ## A001517.P12015698360964619192

`record[A316773(n)]`
-/

namespace A001517.P12015698360964619192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001517.P12015698360964619192

namespace A001517

/-- `record[A316773(n)]` -/
def P12015698360964619192.Spec : Prop :=
  ∀ n, P12015698360964619192.a n = A001517 n

end A001517

/-! ## A001517.P18193822387481460043

`A080893(n+1)`
-/

namespace A001517.P18193822387481460043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080893 (n + 1)

end

end A001517.P18193822387481460043

namespace A001517

/-- `A080893(n+1)` -/
def P18193822387481460043.Spec : Prop :=
  ∀ n, P18193822387481460043.a n = A001517 n

end A001517

/-! ## A001517.P9401042585572480390

`A113873(3*n)`
-/

namespace A001517.P9401042585572480390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (3 * n)

end

end A001517.P9401042585572480390

namespace A001517

/-- `A113873(3*n)` -/
def P9401042585572480390.Spec : Prop :=
  ∀ n, P9401042585572480390.a n = A001517 n

end A001517

/-! ## A001517.P16846766752245159835

`A316773(∑[n+1])`
-/

namespace A001517.P16846766752245159835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001517.P16846766752245159835

namespace A001517

/-- `A316773(∑[n+1])` -/
def P16846766752245159835.Spec : Prop :=
  ∀ n, P16846766752245159835.a n = A001517 n

end A001517

/-! ## A001517.P90806204691252886

`2*A278070(n)-a(n-1)` with `a(0)=1`
-/

namespace A001517.P90806204691252886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A278070 n - a (n - 1)

end

end A001517.P90806204691252886

namespace A001517

/-- `2*A278070(n)-a(n-1)` -/
def P90806204691252886.Spec : Prop :=
  ∀ n, P90806204691252886.a n = A001517 n

end A001517

/-! ## A001517.P7737011199701177344

`ratio[A080893(n)]*A080893(n)`
-/

namespace A001517.P7737011199701177344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080893 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A080893 n : ℚ)

end

end A001517.P7737011199701177344

namespace A001517

/-- `ratio[A080893(n)]*A080893(n)` -/
def P7737011199701177344.Spec : Prop :=
  ∀ n, P7737011199701177344.a n = (A001517 n : ℚ)

end A001517

/-! ## A001517.P14787629704494209108

`2*A079165(n)-abs(A002119(n))`
-/

namespace A001517.P14787629704494209108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079165 n - |A002119 n|

end

end A001517.P14787629704494209108

namespace A001517

/-- `2*A079165(n)-abs(A002119(n))` -/
def P14787629704494209108.Spec : Prop :=
  ∀ n, P14787629704494209108.a n = A001517 n

end A001517

/-! ## A001517.P15340379481296537648

`A079166(A167614(n+2))`
-/

namespace A001517.P15340379481296537648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079166 (A167614 (n + 2)).toNat

end

end A001517.P15340379481296537648

namespace A001517

/-- `A079166(A167614(n+2))` -/
def P15340379481296537648.Spec : Prop :=
  ∀ n, P15340379481296537648.a n = A001517 n

end A001517

/-!
# A001518: Bessel polynomial y_n(3).

The programs for A001518, the canonical program `A001518.P10128289756906692139` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001518 has offset 0).

The definition of A001518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001518.P10128289756906692139

`3*(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001518

/-- `3*(2*n-1)*a(n-1)+a(n-2)` -/
def P10128289756906692139.Spec : Prop :=
  ∀ n, P10128289756906692139.a n = A001518 n

theorem P10128289756906692139.correct : P10128289756906692139.Spec := by
  intro n
  simp only [A001518]

end A001518

/-!
# A001519: a(n) = 3*a(n-1) - a(n-2) for n >= 2, with a(0) = a(1) = 1.

The programs for A001519, the canonical program `A001519.P3024448327137573148` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001519 has offset 0).

The definition of A001519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A001519.P3024448327137573148`, by `A001519.P3024448327137573148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001519.P3024448327137573148

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001519

/-- `3*a(n-1)-a(n-2)` -/
def P3024448327137573148.Spec : Prop :=
  ∀ n, P3024448327137573148.a n = A001519 n

theorem P3024448327137573148.correct : P3024448327137573148.Spec := by
  intro n
  simp only [A001519]

end A001519

/-! ## A001519.P4127049120401798796

`A001906(n+1)-2*A001906(n)`
-/

namespace A001519.P4127049120401798796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - 2 * A001906 n

end

end A001519.P4127049120401798796

namespace A001519

/-- `A001906(n+1)-2*A001906(n)` -/
def P4127049120401798796.Spec : Prop :=
  ∀ n, P4127049120401798796.a n = A001519 n

end A001519

/-! ## A001519.P15942352073235330870

`floor(ϕ²*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001519.P15942352073235330870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A001519.P15942352073235330870

namespace A001519

/-- `floor(ϕ²*a(n-1))` -/
def P15942352073235330870.Spec : Prop :=
  ∀ n, P15942352073235330870.a n = A001519 n

end A001519

/-! ## A001519.P666297215598002704

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001519.P666297215598002704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A001519.P666297215598002704

namespace A001519

/-- `round(ϕ²*a(n-1))` -/
def P666297215598002704.Spec : Prop :=
  ∀ n, P666297215598002704.a n = A001519 n

end A001519

/-! ## A001519.P7861087702882315061

`floor(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001519.P7861087702882315061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A001519.P7861087702882315061

namespace A001519

/-- `floor(ϕ*ϕ*a(n-1))` -/
def P7861087702882315061.Spec : Prop :=
  ∀ n, P7861087702882315061.a n = A001519 n

end A001519

/-! ## A001519.P9587700194588747173

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A001519.P9587700194588747173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001519.P9587700194588747173

namespace A001519

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P9587700194588747173.Spec : Prop :=
  ∀ n, P9587700194588747173.a n = A001519 n

end A001519

/-! ## A001519.P15359238073798843049

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001519.P15359238073798843049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A001519.P15359238073798843049

namespace A001519

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P15359238073798843049.Spec : Prop :=
  ∀ n, P15359238073798843049.a n = A001519 n

end A001519

/-! ## A001519.P7881001376888815319

`Δ[record[a(n-2)+2-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A001519.P7881001376888815319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001519.P7881001376888815319

namespace A001519

/-- `Δ[record[a(n-2)+2-a(n-1)]]` -/
def P7881001376888815319.Spec : Prop :=
  ∀ n, P7881001376888815319.a n = A001519 n

end A001519

/-! ## A001519.P2032503381175300167

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001519.P2032503381175300167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A001519.P2032503381175300167

namespace A001519

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P2032503381175300167.Spec : Prop :=
  ∀ n, P2032503381175300167.a n = A001519 n

theorem P2032503381175300167.correct : P2032503381175300167.Spec := by
  intro n
  simp only [A001519, Nat.add_sub_cancel, A001519.P2032503381175300167.a, A001519.P3024448327137573148.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001519

/-! ## A001519.P3593636741175642747

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001519.P3593636741175642747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A001519.P3593636741175642747

namespace A001519

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P3593636741175642747.Spec : Prop :=
  ∀ n, P3593636741175642747.a n = A001519 n

theorem P3593636741175642747.correct : P3593636741175642747.Spec := by
  intro n
  simp only [A001519, Nat.add_sub_cancel, A001519.P3593636741175642747.a, A001519.P3024448327137573148.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001519

/-! ## A001519.P8353119104681395085

`A032908(n)-1`
-/

namespace A001519.P8353119104681395085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n - 1

end

end A001519.P8353119104681395085

namespace A001519

/-- `A032908(n)-1` -/
def P8353119104681395085.Spec : Prop :=
  ∀ n, P8353119104681395085.a n = A001519 n

end A001519

/-! ## A001519.P15350897854169866635

`A212804(2*n)`
-/

namespace A001519.P15350897854169866635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n)

end

end A001519.P15350897854169866635

namespace A001519

/-- `A212804(2*n)` -/
def P15350897854169866635.Spec : Prop :=
  ∀ n, P15350897854169866635.a n = A001519 n

end A001519

/-! ## A001519.P9543888370532364654

`A247309(3*n)`
-/

namespace A001519.P9543888370532364654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (3 * n)

end

end A001519.P9543888370532364654

namespace A001519

/-- `A247309(3*n)` -/
def P9543888370532364654.Spec : Prop :=
  ∀ n, P9543888370532364654.a n = A001519 n

end A001519

/-! ## A001519.P4666909526853938222

`A247049(6*n)`
-/

namespace A001519.P4666909526853938222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (6 * n)

end

end A001519.P4666909526853938222

namespace A001519

/-- `A247049(6*n)` -/
def P4666909526853938222.Spec : Prop :=
  ∀ n, P4666909526853938222.a n = A001519 n

end A001519

/-! ## A001519.P9085962276995718108

`Δ[A078024(2*n)]`
-/

namespace A001519.P9085962276995718108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001519.P9085962276995718108

namespace A001519

/-- `Δ[A078024(2*n)]` -/
def P9085962276995718108.Spec : Prop :=
  ∀ n, P9085962276995718108.a n = A001519 n

end A001519

/-! ## A001519.P9068192483315428845

`A293064(n+1)+1`
-/

namespace A001519.P9068192483315428845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 1) + 1

end

end A001519.P9068192483315428845

namespace A001519

/-- `A293064(n+1)+1` -/
def P9068192483315428845.Spec : Prop :=
  ∀ n, P9068192483315428845.a n = A001519 n

end A001519

/-! ## A001519.P15261279856301873479

`A119282(2*n)+1`
-/

namespace A001519.P15261279856301873479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (2 * n) + 1

end

end A001519.P15261279856301873479

namespace A001519

/-- `A119282(2*n)+1` -/
def P15261279856301873479.Spec : Prop :=
  ∀ n, P15261279856301873479.a n = A001519 n

end A001519

/-! ## A001519.P13121497204362611542

`A051792(4*(n+1))`
-/

namespace A001519.P13121497204362611542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (4 * (n + 1))

end

end A001519.P13121497204362611542

namespace A001519

/-- `A051792(4*(n+1))` -/
def P13121497204362611542.Spec : Prop :=
  ∀ n, P13121497204362611542.a n = A001519 n

end A001519

/-!
# A001520: a(n) = (6*n+1)*(6*n+3)*(6*n+5).

The programs for A001520, the canonical program `A001520.P8182625526630946054` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001520 has offset 0).

The definition of A001520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)*(6*n+3)*(6*n+5)` (program `A001520.P8182625526630946054`, by `A001520.P8182625526630946054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001520.P8182625526630946054

`(6*n+1)*(6*n+3)*(6*n+5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001520

/-- `(6*n+1)*(6*n+3)*(6*n+5)` -/
def P8182625526630946054.Spec : Prop :=
  ∀ n, (P8182625526630946054.a n : ℤ) = A001520 n

theorem P8182625526630946054.correct : P8182625526630946054.Spec := by
  intro n
  simp only [A001520]

end A001520

/-! ## A001520.P12908440457161000808

`lcm(A001513(n), A016945(n))`
-/

namespace A001520.P12908440457161000808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001513 n) (A016945 n)

end

end A001520.P12908440457161000808

namespace A001520

/-- `lcm(A001513(n), A016945(n))` -/
def P12908440457161000808.Spec : Prop :=
  ∀ n, (P12908440457161000808.a n : ℤ) = A001520 n

end A001520

/-! ## A001520.P7785684148530498101

`A016947(n)-A073762(n+1)`
-/

namespace A001520.P7785684148530498101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n - A073762 (n + 1)

end

end A001520.P7785684148530498101

namespace A001520

/-- `A016947(n)-A073762(n+1)` -/
def P7785684148530498101.Spec : Prop :=
  ∀ n, P7785684148530498101.a n = A001520 n

end A001520

/-! ## A001520.P15821640735414374732

`A016947(n)-Δ[A158463(n)]`
-/

namespace A001520.P15821640735414374732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n - (f1 (n + 1) - f1 n)

end

end A001520.P15821640735414374732

namespace A001520

/-- `A016947(n)-Δ[A158463(n)]` -/
def P15821640735414374732.Spec : Prop :=
  ∀ n, P15821640735414374732.a n = A001520 n

end A001520

/-! ## A001520.P13888352808758807312

`record[A047270(n+1)*A142599(n+1)]`
-/

namespace A001520.P13888352808758807312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1) * A142599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001520.P13888352808758807312

namespace A001520

/-- `record[A047270(n+1)*A142599(n+1)]` -/
def P13888352808758807312.Spec : Prop :=
  ∀ n, P13888352808758807312.a n = A001520 n

end A001520

/-! ## A001520.P8434362769850956963

`A061550(3*n)`
-/

namespace A001520.P8434362769850956963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 (3 * n)

end

end A001520.P8434362769850956963

namespace A001520

/-- `A061550(3*n)` -/
def P8434362769850956963.Spec : Prop :=
  ∀ n, P8434362769850956963.a n = A001520 n

end A001520

/-! ## A001520.P14878264028182476133

`A370912(4*n+2*n+1)`
-/

namespace A001520.P14878264028182476133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 (4 * n + (2 * n + 1))

end

end A001520.P14878264028182476133

namespace A001520

/-- `A370912(4*n+2*n+1)` -/
def P14878264028182476133.Spec : Prop :=
  ∀ n, P14878264028182476133.a n = A001520 n

end A001520

/-! ## A001520.P312263369536737041

`A121670(6*n+3)-(6*n+3)`
-/

namespace A001520.P312263369536737041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121670 (6 * n + 3) - (6 * n + 3 : ℤ)

end

end A001520.P312263369536737041

namespace A001520

/-- `A121670(6*n+3)-(6*n+3)` -/
def P312263369536737041.Spec : Prop :=
  ∀ n, P312263369536737041.a n = A001520 n

end A001520

/-! ## A001520.P16769425799431734268

`lcm(6*n+3, A171621(6*n+3))`
-/

namespace A001520.P16769425799431734268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (6 * n + 3 : ℤ) (A171621 (6 * n + 3))

end

end A001520.P16769425799431734268

namespace A001520

/-- `lcm(6*n+3, A171621(6*n+3))` -/
def P16769425799431734268.Spec : Prop :=
  ∀ n, (P16769425799431734268.a n : ℤ) = A001520 n

end A001520

/-! ## A001520.P17905153664532494285

`A090197(A016921(n))+A016921(2*n)`
-/

namespace A001520.P17905153664532494285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (A016921 n).toNat + A016921 (2 * n)

end

end A001520.P17905153664532494285

namespace A001520

/-- `A090197(A016921(n))+A016921(2*n)` -/
def P17905153664532494285.Spec : Prop :=
  ∀ n, P17905153664532494285.a n = A001520 n

end A001520

/-! ## A001520.P15611673168662262808

`record[A061037(A068219(n+1))*A068219(n+1)]`
-/

namespace A001520.P15611673168662262808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (A068219 (n + 1)).toNat * A068219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001520.P15611673168662262808

namespace A001520

/-- `record[A061037(A068219(n+1))*A068219(n+1)]` -/
def P15611673168662262808.Spec : Prop :=
  ∀ n, P15611673168662262808.a n = A001520 n

end A001520

/-! ## A001520.P3659743709730014125

`A034828(12*n+6)-A073762(n+1)`
-/

namespace A001520.P3659743709730014125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (12 * n + 6) - A073762 (n + 1)

end

end A001520.P3659743709730014125

namespace A001520

/-- `A034828(12*n+6)-A073762(n+1)` -/
def P3659743709730014125.Spec : Prop :=
  ∀ n, P3659743709730014125.a n = A001520 n

end A001520

/-!
# A001521: a(1) = 1; thereafter a(n+1) = floor(sqrt(2*a(n)*(a(n)+1))).

The programs for A001521, the canonical program `A001521.P14387190889647212559` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001521 has offset 1).

The definition of A001521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001521.P18329163047749545198

`∑[round(2^(n/2-1))]`
-/

namespace A001521.P18329163047749545198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 2 - 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001521.P18329163047749545198

namespace A001521

/-- `∑[round(2^(n/2-1))]` -/
def P18329163047749545198.Spec : Prop :=
  ∀ n, P18329163047749545198.a n = A001521 (n + 1)

end A001521

/-! ## A001521.P17091045243735365787

`A116601(n+1)+A017912(n)`
-/

namespace A001521.P17091045243735365787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1) + A017912 n

end

end A001521.P17091045243735365787

namespace A001521

/-- `A116601(n+1)+A017912(n)` -/
def P17091045243735365787.Spec : Prop :=
  ∀ n, P17091045243735365787.a n = A001521 (n + 1)

end A001521

/-! ## A001521.P14387190889647212559

`floor(A017910(n)+A017910(n+1)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001521

/-- `floor(A017910(n)+A017910(n+1)/2)` -/
def P14387190889647212559.Spec : Prop :=
  ∀ n, P14387190889647212559.a n = A001521 (n + 1)

theorem P14387190889647212559.correct : P14387190889647212559.Spec := by
  intro n
  simp only [A001521, Nat.add_sub_cancel]

end A001521

/-! ## A001521.P6329311721066171521

`floor(A091522(n+1)/3)`
-/

namespace A001521.P6329311721066171521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091522 (n + 1) : ℚ) / 3⌋

end

end A001521.P6329311721066171521

namespace A001521

/-- `floor(A091522(n+1)/3)` -/
def P6329311721066171521.Spec : Prop :=
  ∀ n, P6329311721066171521.a n = A001521 (n + 1)

end A001521

/-! ## A001521.P520305058627839684

`floor(A091523(n+1)/5)`
-/

namespace A001521.P520305058627839684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091523 (n + 1) : ℚ) / 5⌋

end

end A001521.P520305058627839684

namespace A001521

/-- `floor(A091523(n+1)/5)` -/
def P520305058627839684.Spec : Prop :=
  ∀ n, P520305058627839684.a n = A001521 (n + 1)

end A001521

/-! ## A001521.P12275784652551236198

`floor(2*sqrt(C(a(n-1)+1, 2)))` with `a(0)=1`
-/

namespace A001521.P12275784652551236198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * Real.sqrt (Nat.choose (a (n - 1) + 1).toNat 2 : ℝ)⌋

end

end A001521.P12275784652551236198

namespace A001521

/-- `floor(2*sqrt(C(a(n-1)+1, 2)))` -/
def P12275784652551236198.Spec : Prop :=
  ∀ n, P12275784652551236198.a n = A001521 (n + 1)

end A001521

/-! ## A001521.P7067211442527415367

`floor(sqrt(2*(a(n-1)+a(n-1)²)))` with `a(0)=1`
-/

namespace A001521.P7067211442527415367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.sqrt (2 * (a (n - 1) + a (n - 1) ^ 2))

end

end A001521.P7067211442527415367

namespace A001521

/-- `floor(sqrt(2*(a(n-1)+a(n-1)²)))` -/
def P7067211442527415367.Spec : Prop :=
  ∀ n, (P7067211442527415367.a n : ℤ) = A001521 (n + 1)

end A001521

/-! ## A001521.P18011081855517090329

`A191432(∑[n]+1)`
-/

namespace A001521.P18011081855517090329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001521.P18011081855517090329

namespace A001521

/-- `A191432(∑[n]+1)` -/
def P18011081855517090329.Spec : Prop :=
  ∀ n, P18011081855517090329.a n = A001521 (n + 1)

end A001521

/-!
# A001522: Number of n-stacks with strictly receding walls, or the number of Type A partitions of n in the sense of Auluck (1951).

The programs for A001522, there is no canonical definition to state claims against.
-/

/-! ## A001522.P3387660510346485836

`A000041(n)-A064428(n)%A000041(n)`
-/

namespace A001522.P3387660510346485836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - Int.tmod (A064428 n) (A000041 n)

end

end A001522.P3387660510346485836

/-! ## A001522.P17851344477389443386

`A035363(2*n)-A064428(A028310(n))`
-/

namespace A001522.P17851344477389443386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A064428 (A028310 n).toNat

end

end A001522.P17851344477389443386

/-! ## A001522.P16497717673831160086

`A300788(comp[2*(n+1)])`
-/

namespace A001522.P16497717673831160086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300788 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A001522.P16497717673831160086

/-! ## A001522.P681479067242279021

`gcd(C(2, n+2), A300788(A004273(n)))`
-/

namespace A001522.P681479067242279021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A300788 (A004273 n).toNat)

end

end A001522.P681479067242279021

/-! ## A001522.P1211396072309024803

`gcd(A000038(n), A300788(A004273(n)))`
-/

namespace A001522.P1211396072309024803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300788 (A004273 n).toNat)

end

end A001522.P1211396072309024803

/-! ## A001522.P5951210782660937402

`or(A000007(n), A300788(A004273(n)))`
-/

namespace A001522.P5951210782660937402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300788 (A004273 n).toNat)

end

end A001522.P5951210782660937402

/-! ## A001522.P17164401270599664132

`lcm(A187307(3*n), A300788(A004273(n)))`
-/

namespace A001522.P17164401270599664132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A187307 (3 * n)) (A300788 (A004273 n).toNat)

end

end A001522.P17164401270599664132

/-! ## A001522.P3275253094882448979

`A188674(n)+A374782(n)-A064428(n)`
-/

namespace A001522.P3275253094882448979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188674 n + (A374782 n - A064428 n)

end

end A001522.P3275253094882448979

/-! ## A001522.P12659602283262633831

`A064428(n)+A188674(n)-A188674(n+1)`
-/

namespace A001522.P12659602283262633831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064428 n + (A188674 n - A188674 (n + 1))

end

end A001522.P12659602283262633831

/-! ## A001522.P2815329657586143371

`A300788(A004273(n))%A136412(n)`
-/

namespace A001522.P2815329657586143371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300788 (A004273 n).toNat) (A136412 n)

end

end A001522.P2815329657586143371

/-! ## A001522.P8502173862535313078

`A010052(A000290(n))*A300788(A004273(n))`
-/

namespace A001522.P8502173862535313078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A300788 (A004273 n).toNat

end

end A001522.P8502173862535313078

/-!
# A001523: Number of stacks, or planar partitions of n; also number of weakly unimodal compositions of n.

The programs for A001523, there is no canonical definition to state claims against.
-/

/-! ## A001523.P8159058403085143874

`A000007(n)+A006330(n)-A114921(n)`
-/

namespace A001523.P8159058403085143874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A006330 n - A114921 n)

end

end A001523.P8159058403085143874

/-! ## A001523.P10307528081356024733

`A000712(n)+A006330(n)*A057428(n)`
-/

namespace A001523.P10307528081356024733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + A006330 n * A057428 n

end

end A001523.P10307528081356024733

/-! ## A001523.P12586637589262617015

`A000712(n)-A006330(n)*A057427(n)`
-/

namespace A001523.P12586637589262617015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A006330 n * A057427 n

end

end A001523.P12586637589262617015

/-! ## A001523.P6443751871535885900

`A342528(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001523.P6443751871535885900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A342528 (n - 1) + a (n - 1)

end

end A001523.P6443751871535885900

/-! ## A001523.P10810633079609557582

`A011782(n)-A115981(n)`
-/

namespace A001523.P10810633079609557582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A115981 n

end

end A001523.P10810633079609557582

/-! ## A001523.P5652215667183236562

`A332726(n)+A332727(n)-A115981(n)`
-/

namespace A001523.P5652215667183236562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A115981 n)

end

end A001523.P5652215667183236562

/-! ## A001523.P9084251265697709431

`A332836(n)+A332871(n)-A115981(n)`
-/

namespace A001523.P9084251265697709431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332836 n + (A332871 n - A115981 n)

end

end A001523.P9084251265697709431

/-! ## A001523.P14087448335451088711

`A335470(n)+A335471(n)-A115981(n)`
-/

namespace A001523.P14087448335451088711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335470 n + (A335471 n - A115981 n)

end

end A001523.P14087448335451088711

/-! ## A001523.P7145818046937448248

`A000712(n)-and(A000225(n), A006330(n))`
-/

namespace A001523.P7145818046937448248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - Int.land (A000225 n) (A006330 n)

end

end A001523.P7145818046937448248

/-! ## A001523.P12457292702096725383

`A006330(n)-and(A000225(n), A114921(n))`
-/

namespace A001523.P12457292702096725383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - Int.land (A000225 n) (A114921 n)

end

end A001523.P12457292702096725383

/-! ## A001523.P11586199719620901787

`A335472(n)+A335473(n)-A115981(n)`
-/

namespace A001523.P11586199719620901787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 n + (A335473 n - A115981 n)

end

end A001523.P11586199719620901787

/-! ## A001523.P8020861554861105686

`A059623(∑[n]+1)`
-/

namespace A001523.P8020861554861105686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001523.P8020861554861105686

/-!
# A001524: Number of stacks, or arrangements of n pennies in contiguous rows, each touching 2 in row below.

The programs for A001524, there is no canonical definition to state claims against.
-/

/-! ## A001524.P4739773383933048274

`A143184(n)-A340659(A028310(n))`
-/

namespace A001524.P4739773383933048274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n - A340659 (A028310 n).toNat

end

end A001524.P4739773383933048274

/-! ## A001524.P7881209315365197426

`A000007(n)+A143184(n)-A340659(n)`
-/

namespace A001524.P7881209315365197426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A143184 n - A340659 n)

end

end A001524.P7881209315365197426

/-! ## A001524.P4420538260488596657

`A143184(A000038(n)+n)-A340659(n)`
-/

namespace A001524.P4420538260488596657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 (A000038 n + (n : ℤ)).toNat - A340659 n

end

end A001524.P4420538260488596657

/-! ## A001524.P9061985897306428152

`gcd(A143184(n)-A340659(n), A130706(n))`
-/

namespace A001524.P9061985897306428152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143184 n - A340659 n) (A130706 n)

end

end A001524.P9061985897306428152

/-! ## A001524.P6191466551963723285

`A036987(2*n)+A143184(n)-A340659(n)`
-/

namespace A001524.P6191466551963723285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (A143184 n - A340659 n)

end

end A001524.P6191466551963723285

/-! ## A001524.P6683221023163046023

`and(1, A055932(n+1))+A143184(n)-A340659(n)`
-/

namespace A001524.P6683221023163046023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055932 (n + 1)) + (A143184 n - A340659 n)

end

end A001524.P6683221023163046023

/-!
# A001525: a(n) = (3n)!/(3!n!).

The programs for A001525, there is no canonical definition to state claims against.
-/

/-! ## A001525.P9262260061491112204

`3*(3*n+1)*(3*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A001525.P9262260061491112204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((3 * n + 1) * ((3 * n + 2) * a (n - 1)))

end

end A001525.P9262260061491112204

/-! ## A001525.P10474704163580040105

`A355990(3*(n+1))`
-/

namespace A001525.P10474704163580040105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355990 (3 * (n + 1))

end

end A001525.P10474704163580040105

/-! ## A001525.P6970509384753705936

`A093434(n+1)/3`
-/

namespace A001525.P6970509384753705936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093434 (n + 1) : ℚ) / 3

end

end A001525.P6970509384753705936

/-! ## A001525.P2748030730436284689

`A064350(n+1)/6`
-/

namespace A001525.P2748030730436284689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064350 (n + 1) : ℚ) / 6

end

end A001525.P2748030730436284689

/-! ## A001525.P3659041214201183665

`(n+1)/2*A082787(n+1)`
-/

namespace A001525.P3659041214201183665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A082787 (n + 1) : ℚ)

end

end A001525.P3659041214201183665

/-!
# A001526: a(n) = (7*n+1)*(7*n+6).

The programs for A001526, the canonical program `A001526.P12617765537680755072` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001526 has offset 0).

The definition of A001526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)*(7*n+6)` (program `A001526.P12617765537680755072`, by `A001526.P12617765537680755072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001526.P10536274130935233496

`98*n+a(n-1)` with `a(0)=6`
-/

namespace A001526.P10536274130935233496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  98 * n + a (n - 1)

end

end A001526.P10536274130935233496

namespace A001526

/-- `98*n+a(n-1)` -/
def P10536274130935233496.Spec : Prop :=
  ∀ n, (P10536274130935233496.a n : ℤ) = A001526 n

theorem P10536274130935233496.correct : P10536274130935233496.Spec := by
  intro n
  induction n with
  | zero => simp [A001526, A001526.P10536274130935233496.a, A001526.P12617765537680755072.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001526, Nat.add_sub_cancel, A001526.P10536274130935233496.a, A001526.P12617765537680755072.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001526

/-! ## A001526.P12617765537680755072

`(7*n+1)*(7*n+6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001526

/-- `(7*n+1)*(7*n+6)` -/
def P12617765537680755072.Spec : Prop :=
  ∀ n, (P12617765537680755072.a n : ℤ) = A001526 n

theorem P12617765537680755072.correct : P12617765537680755072.Spec := by
  intro n
  simp only [A001526]

end A001526

/-! ## A001526.P7515398312979606100

`A177060(n)-4`
-/

namespace A001526.P7515398312979606100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177060 n - 4

end

end A001526.P7515398312979606100

namespace A001526

/-- `A177060(n)-4` -/
def P7515398312979606100.Spec : Prop :=
  ∀ n, P7515398312979606100.a n = A001526 n

end A001526

/-! ## A001526.P5385119316634583114

`A177071(n)-6`
-/

namespace A001526.P5385119316634583114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177071 n - 6

end

end A001526.P5385119316634583114

namespace A001526

/-- `A177071(n)-6` -/
def P5385119316634583114.Spec : Prop :=
  ∀ n, P5385119316634583114.a n = A001526 n

end A001526

/-! ## A001526.P13433084594123412720

`A162942(n)+A061792(n)`
-/

namespace A001526.P13433084594123412720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 n + A061792 n

end

end A001526.P13433084594123412720

namespace A001526

/-- `A162942(n)+A061792(n)` -/
def P13433084594123412720.Spec : Prop :=
  ∀ n, P13433084594123412720.a n = A001526 n

end A001526

/-! ## A001526.P7243590906184221272

`A001533(n)-A389799(n+1)`
-/

namespace A001526.P7243590906184221272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001533 n - A389799 (n + 1)

end

end A001526.P7243590906184221272

namespace A001526

/-- `A001533(n)-A389799(n+1)` -/
def P7243590906184221272.Spec : Prop :=
  ∀ n, P7243590906184221272.a n = A001526 n

end A001526

/-! ## A001526.P6579645483816475626

`A158481(n+1)-A158066(n+1)`
-/

namespace A001526.P6579645483816475626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158481 (n + 1) - A158066 (n + 1)

end

end A001526.P6579645483816475626

namespace A001526

/-- `A158481(n+1)-A158066(n+1)` -/
def P6579645483816475626.Spec : Prop :=
  ∀ n, P6579645483816475626.a n = A001526 n

end A001526

/-! ## A001526.P1887169107101444603

`A016993(n)+A016993(n)*A017041(n)`
-/

namespace A001526.P1887169107101444603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + A016993 n * A017041 n

end

end A001526.P1887169107101444603

namespace A001526

/-- `A016993(n)+A016993(n)*A017041(n)` -/
def P1887169107101444603.Spec : Prop :=
  ∀ n, P1887169107101444603.a n = A001526 n

end A001526

/-! ## A001526.P11332571188584825335

`A017005(n)*A017053(n)-A017053(n)`
-/

namespace A001526.P11332571188584825335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017053 n - A017053 n

end

end A001526.P11332571188584825335

namespace A001526

/-- `A017005(n)*A017053(n)-A017053(n)` -/
def P11332571188584825335.Spec : Prop :=
  ∀ n, P11332571188584825335.a n = A001526 n

end A001526

/-! ## A001526.P18362940569926014234

`A016993(n)*A017058(n)/A017057(n)`
-/

namespace A001526.P18362940569926014234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016993 n * A017058 n : ℚ) / (A017057 n : ℚ)

end

end A001526.P18362940569926014234

namespace A001526

/-- `A016993(n)*A017058(n)/A017057(n)` -/
def P18362940569926014234.Spec : Prop :=
  ∀ n, P18362940569926014234.a n = (A001526 n : ℚ)

end A001526

/-! ## A001526.P9062350444753339413

`A017030(n)-A017017(n+1)`
-/

namespace A001526.P9062350444753339413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n - A017017 (n + 1)

end

end A001526.P9062350444753339413

namespace A001526

/-- `A017030(n)-A017017(n+1)` -/
def P9062350444753339413.Spec : Prop :=
  ∀ n, P9062350444753339413.a n = A001526 n

end A001526

/-! ## A001526.P12241823884551935723

`A104675(7*n)`
-/

namespace A001526.P12241823884551935723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (7 * n)

end

end A001526.P12241823884551935723

namespace A001526

/-- `A104675(7*n)` -/
def P12241823884551935723.Spec : Prop :=
  ∀ n, P12241823884551935723.a n = A001526 n

end A001526

/-! ## A001526.P11580570001608896592

`A028557(A016993(n))`
-/

namespace A001526.P11580570001608896592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (A016993 n).toNat

end

end A001526.P11580570001608896592

namespace A001526

/-- `A028557(A016993(n))` -/
def P11580570001608896592.Spec : Prop :=
  ∀ n, P11580570001608896592.a n = A001526 n

end A001526

/-!
# A001527: a(n) = 2 * Sum_{i=0..n} C(2^n-1, i).

The programs for A001527, there is no canonical definition to state claims against.
-/

/-! ## A001527.P17953493608188899469

`2*A046855(n)`
-/

namespace A001527.P17953493608188899469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046855 n

end

end A001527.P17953493608188899469

/-! ## A001527.P2044667416464540335

`A136556(n)+A066384(n)`
-/

namespace A001527.P2044667416464540335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136556 n + A066384 n

end

end A001527.P2044667416464540335

/-! ## A001527.P3933273858647845307

`A046855(n)+A046855(A256577(n))`
-/

namespace A001527.P3933273858647845307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046855 n + A046855 (A256577 n).toNat

end

end A001527.P3933273858647845307

/-! ## A001527.P14235991433725502985

`A046855(A004885(n+1))+A046855(n)`
-/

namespace A001527.P14235991433725502985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046855 (A004885 (n + 1)).toNat + A046855 n

end

end A001527.P14235991433725502985

/-! ## A001527.P5401971964446786624

`A046855(n)+A046855(n)%A046846(n+1)`
-/

namespace A001527.P5401971964446786624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046855 n + Int.tmod (A046855 n) (A046846 (n + 1))

end

end A001527.P5401971964446786624

/-!
# A001528: NPN-equivalence classes of switching functions of exactly n variables.

The programs for A001528, there is no canonical definition to state claims against.
-/

/-! ## A001528.P1623828802088813686

`A000618(n)-A317795(n)`
-/

namespace A001528.P1623828802088813686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n - A317795 n

end

end A001528.P1623828802088813686

/-!
# A001529: NPN-equivalence classes of threshold functions of n or fewer variables.

The programs for A001529, there is no canonical definition to state claims against.
-/

/-! ## A001529.P342862277359295666

`∑[A001530(n)]`
-/

namespace A001529.P342862277359295666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001529.P342862277359295666

/-! ## A001529.P3788062791547699201

`(A109456(n)+A000617(n))/2`
-/

namespace A001529.P3788062791547699201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109456 n + A000617 n : ℚ) / 2

end

end A001529.P3788062791547699201

/-! ## A001529.P3459297265800673710

`A001530(n)+a(A235049(n))` with `a(0)=1`
-/

namespace A001529.P3459297265800673710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001530 n + a (A235049 n).toNat

end

end A001529.P3459297265800673710

/-!
# A001530: NPN-equivalence classes of threshold functions of exactly n variables.

The programs for A001530, there is no canonical definition to state claims against.
-/

/-! ## A001530.P3129449941056545417

`Δ[A001529(A235049(n))%A001529(n)]`
-/

namespace A001530.P3129449941056545417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001529 (A235049 n).toNat) (A001529 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001530.P3129449941056545417

/-! ## A001530.P2113754071496150198

`A097755(A351437(n))`
-/

namespace A001530.P2113754071496150198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (A351437 n).toNat

end

end A001530.P2113754071496150198

/-! ## A001530.P16691129743070642059

`A243866(xor(A244133(n), A380365(n)))`
-/

namespace A001530.P16691129743070642059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (Int.xor (A244133 n) (A380365 n)).toNat

end

end A001530.P16691129743070642059

/-!
# A001532: Number of NP-equivalence classes of self-dual threshold functions of n or fewer variables; number of majority (i.e., decisive and weighted) games with n players.

The programs for A001532, there is no canonical definition to state claims against.
-/

/-! ## A001532.P10308169574627856106

`∑[A003184(n+1)]`
-/

namespace A001532.P10308169574627856106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001532.P10308169574627856106

/-! ## A001532.P17631440061628605511

`A003184(n+1)+a(A235049(n))` with `a(0)=1`
-/

namespace A001532.P17631440061628605511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003184 (n + 1) + a (A235049 n).toNat

end

end A001532.P17631440061628605511

/-! ## A001532.P11548801486382994155

`A000027(A109456(n)+A003184(n+1))`
-/

namespace A001532.P11548801486382994155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109456 n + A003184 (n + 1)).toNat

end

end A001532.P11548801486382994155

/-! ## A001532.P16262172645149716763

`A109456(A004881(n+1))+A003184(n+1)`
-/

namespace A001532.P16262172645149716763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109456 (A004881 (n + 1)).toNat + A003184 (n + 1)

end

end A001532.P16262172645149716763

/-!
# A001533: a(n) = (8*n+1)*(8*n+7).

The programs for A001533, the canonical program `A001533.P14335588399281398662` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001533 has offset 0).

The definition of A001533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)*(8*n+7)` (program `A001533.P14335588399281398662`, by `A001533.P14335588399281398662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001533.P17828855880961022348

`128*n+a(n-1)` with `a(0)=7`
-/

namespace A001533.P17828855880961022348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  128 * n + a (n - 1)

end

end A001533.P17828855880961022348

namespace A001533

/-- `128*n+a(n-1)` -/
def P17828855880961022348.Spec : Prop :=
  ∀ n, (P17828855880961022348.a n : ℤ) = A001533 n

theorem P17828855880961022348.correct : P17828855880961022348.Spec := by
  intro n
  induction n with
  | zero => simp [A001533, A001533.P17828855880961022348.a, A001533.P14335588399281398662.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001533, Nat.add_sub_cancel, A001533.P17828855880961022348.a, A001533.P14335588399281398662.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001533

/-! ## A001533.P14335588399281398662

`(8*n+1)*(8*n+7)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001533

/-- `(8*n+1)*(8*n+7)` -/
def P14335588399281398662.Spec : Prop :=
  ∀ n, (P14335588399281398662.a n : ℤ) = A001533 n

theorem P14335588399281398662.correct : P14335588399281398662.Spec := by
  intro n
  simp only [A001533]

end A001533

/-! ## A001533.P17461961260843728101

`4*A001539(n)-5`
-/

namespace A001533.P17461961260843728101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001539 n - 5

end

end A001533.P17461961260843728101

namespace A001533

/-- `4*A001539(n)-5` -/
def P17461961260843728101.Spec : Prop :=
  ∀ n, P17461961260843728101.a n = A001533 n

end A001533

/-! ## A001533.P2437994850455257945

`A028560(8*n+1)`
-/

namespace A001533.P2437994850455257945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (8 * n + 1)

end

end A001533.P2437994850455257945

namespace A001533

/-- `A028560(8*n+1)` -/
def P2437994850455257945.Spec : Prop :=
  ∀ n, P2437994850455257945.a n = A001533 n

end A001533

/-! ## A001533.P1847215325336025848

`record[lcm(4, n+1)²-9]`
-/

namespace A001533.P1847215325336025848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) ^ 2 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001533.P1847215325336025848

namespace A001533

/-- `record[lcm(4, n+1)²-9]` -/
def P1847215325336025848.Spec : Prop :=
  ∀ n, P1847215325336025848.a n = A001533 n

end A001533

/-! ## A001533.P13523171719739441510

`∑[n*(2%a(n-1))^7]` with `a(0)=7`
-/

namespace A001533.P13523171719739441510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  n * (2 % f1 (n - 1)) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001533.P13523171719739441510

namespace A001533

/-- `∑[n*(2%a(n-1))^7]` -/
def P13523171719739441510.Spec : Prop :=
  ∀ n, (P13523171719739441510.a n : ℤ) = A001533 n

end A001533

/-! ## A001533.P12503157767262784234

`A177065(n)-8`
-/

namespace A001533.P12503157767262784234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177065 n - 8

end

end A001533.P12503157767262784234

namespace A001533

/-- `A177065(n)-8` -/
def P12503157767262784234.Spec : Prop :=
  ∀ n, P12503157767262784234.a n = A001533 n

end A001533

/-! ## A001533.P13690081001827534220

`A017114(n)-9`
-/

namespace A001533.P13690081001827534220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n - 9

end

end A001533.P13690081001827534220

namespace A001533

/-- `A017114(n)-9` -/
def P13690081001827534220.Spec : Prop :=
  ∀ n, P13690081001827534220.a n = A001533 n

end A001533

/-! ## A001533.P11020535622452812952

`4*A195315(n+1)+3`
-/

namespace A001533.P11020535622452812952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A195315 (n + 1) + 3

end

end A001533.P11020535622452812952

namespace A001533

/-- `4*A195315(n+1)+3` -/
def P11020535622452812952.Spec : Prop :=
  ∀ n, P11020535622452812952.a n = A001533 n

end A001533

/-! ## A001533.P523004094142519073

`A001546(n)/A177065(n)`
-/

namespace A001533.P523004094142519073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001546 n : ℚ) / (A177065 n : ℚ)

end

end A001533.P523004094142519073

namespace A001533

/-- `A001546(n)/A177065(n)` -/
def P523004094142519073.Spec : Prop :=
  ∀ n, P523004094142519073.a n = (A001533 n : ℚ)

end A001533

/-! ## A001533.P6263404404758139393

`A389799(n+1)+A001526(n)`
-/

namespace A001533.P6263404404758139393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389799 (n + 1) + A001526 n

end

end A001533.P6263404404758139393

namespace A001533

/-- `A389799(n+1)+A001526(n)` -/
def P6263404404758139393.Spec : Prop :=
  ∀ n, P6263404404758139393.a n = A001533 n

end A001533

/-! ## A001533.P5169048747966993508

`A017152(n)%A158684(n+1)`
-/

namespace A001533.P5169048747966993508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017152 n) (A158684 (n + 1))

end

end A001533.P5169048747966993508

namespace A001533

/-- `A017152(n)%A158684(n+1)` -/
def P5169048747966993508.Spec : Prop :=
  ∀ n, P5169048747966993508.a n = A001533 n

end A001533

/-! ## A001533.P15019965664497954197

`A158684(n+1)-A157330(n+1)`
-/

namespace A001533.P15019965664497954197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (n + 1) - A157330 (n + 1)

end

end A001533.P15019965664497954197

namespace A001533

/-- `A158684(n+1)-A157330(n+1)` -/
def P15019965664497954197.Spec : Prop :=
  ∀ n, P15019965664497954197.a n = A001533 n

end A001533

/-! ## A001533.P4592529508072330999

`A158488(n+1)-A158071(n+1)`
-/

namespace A001533.P4592529508072330999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158488 (n + 1) - A158071 (n + 1)

end

end A001533.P4592529508072330999

namespace A001533

/-- `A158488(n+1)-A158071(n+1)` -/
def P4592529508072330999.Spec : Prop :=
  ∀ n, P4592529508072330999.a n = A001533 n

end A001533

/-! ## A001533.P454304941991975649

`A141759(2*n)-8`
-/

namespace A001533.P454304941991975649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (2 * n) - 8

end

end A001533.P454304941991975649

namespace A001533

/-- `A141759(2*n)-8` -/
def P454304941991975649.Spec : Prop :=
  ∀ n, P454304941991975649.a n = A001533 n

end A001533

/-! ## A001533.P5161562389538078713

`A114444(2*n)+7`
-/

namespace A001533.P5161562389538078713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114444 (2 * n) + 7

end

end A001533.P5161562389538078713

namespace A001533

/-- `A114444(2*n)+7` -/
def P5161562389538078713.Spec : Prop :=
  ∀ n, P5161562389538078713.a n = A001533 n

end A001533

/-! ## A001533.P17358717418573626729

`A174994(2*n)-9`
-/

namespace A001533.P17358717418573626729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174994 (2 * n) - 9

end

end A001533.P17358717418573626729

namespace A001533

/-- `A174994(2*n)-9` -/
def P17358717418573626729.Spec : Prop :=
  ∀ n, P17358717418573626729.a n = A001533 n

end A001533

/-! ## A001533.P2773085064827893987

`A158443(2*n+1)-5`
-/

namespace A001533.P2773085064827893987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158443 (2 * n + 1) - 5

end

end A001533.P2773085064827893987

namespace A001533

/-- `A158443(2*n+1)-5` -/
def P2773085064827893987.Spec : Prop :=
  ∀ n, P2773085064827893987.a n = A001533 n

end A001533

/-! ## A001533.P5041773065243279875

`A016802(2*n+1)-9`
-/

namespace A001533.P5041773065243279875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (2 * n + 1) - 9

end

end A001533.P5041773065243279875

namespace A001533

/-- `A016802(2*n+1)-9` -/
def P5041773065243279875.Spec : Prop :=
  ∀ n, P5041773065243279875.a n = A001533 n

end A001533

/-! ## A001533.P9881048884171237497

`A174683(2*n+1)-9`
-/

namespace A001533.P9881048884171237497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174683 (2 * n + 1) - 9

end

end A001533.P9881048884171237497

namespace A001533

/-- `A174683(2*n+1)-9` -/
def P9881048884171237497.Spec : Prop :=
  ∀ n, P9881048884171237497.a n = A001533 n

end A001533

/-!
# A001534: a(n) = (9*n+1)*(9*n+8).

The programs for A001534, the canonical program `A001534.P15553985815723360597` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001534 has offset 0).

The definition of A001534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)*(9*n+8)` (program `A001534.P15553985815723360597`, by `A001534.P15553985815723360597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001534.P13279585884787547502

`162*n+a(n-1)` with `a(0)=8`
-/

namespace A001534.P13279585884787547502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  162 * n + a (n - 1)

end

end A001534.P13279585884787547502

namespace A001534

/-- `162*n+a(n-1)` -/
def P13279585884787547502.Spec : Prop :=
  ∀ n, (P13279585884787547502.a n : ℤ) = A001534 n

theorem P13279585884787547502.correct : P13279585884787547502.Spec := by
  intro n
  induction n with
  | zero => simp [A001534, A001534.P13279585884787547502.a, A001534.P15553985815723360597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001534, Nat.add_sub_cancel, A001534.P13279585884787547502.a, A001534.P15553985815723360597.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001534

/-! ## A001534.P15553985815723360597

`(9*n+1)*(9*n+8)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001534

/-- `(9*n+1)*(9*n+8)` -/
def P15553985815723360597.Spec : Prop :=
  ∀ n, (P15553985815723360597.a n : ℤ) = A001534 n

theorem P15553985815723360597.correct : P15553985815723360597.Spec := by
  intro n
  simp only [A001534]

end A001534

/-! ## A001534.P13911667706323392536

`A177072(n)-6`
-/

namespace A001534.P13911667706323392536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177072 n - 6

end

end A001534.P13911667706323392536

namespace A001534

/-- `A177072(n)-6` -/
def P13911667706323392536.Spec : Prop :=
  ∀ n, P13911667706323392536.a n = A001534 n

end A001534

/-! ## A001534.P8966567714784234244

`A157888(n+1)-A158123(n+1)`
-/

namespace A001534.P8966567714784234244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157888 (n + 1) - A158123 (n + 1)

end

end A001534.P8966567714784234244

namespace A001534

/-- `A157888(n+1)-A158123(n+1)` -/
def P8966567714784234244.Spec : Prop :=
  ∀ n, P8966567714784234244.a n = A001534 n

end A001534

/-! ## A001534.P11935994236226928017

`A017257(n)+A008591(n)*A017257(n)`
-/

namespace A001534.P11935994236226928017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n + A008591 n * A017257 n

end

end A001534.P11935994236226928017

namespace A001534

/-- `A017257(n)+A008591(n)*A017257(n)` -/
def P11935994236226928017.Spec : Prop :=
  ∀ n, P11935994236226928017.a n = A001534 n

end A001534

/-! ## A001534.P11589604858527767819

`A017173(n)+A017173(n)*A017245(n)`
-/

namespace A001534.P11589604858527767819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n + A017173 n * A017245 n

end

end A001534.P11589604858527767819

namespace A001534

/-- `A017173(n)+A017173(n)*A017245(n)` -/
def P11589604858527767819.Spec : Prop :=
  ∀ n, P11589604858527767819.a n = A001534 n

end A001534

/-! ## A001534.P12248720525777126289

`A017185(n)*A017257(n)-A017257(n)`
-/

namespace A001534.P12248720525777126289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A017257 n - A017257 n

end

end A001534.P12248720525777126289

namespace A001534

/-- `A017185(n)*A017257(n)-A017257(n)` -/
def P12248720525777126289.Spec : Prop :=
  ∀ n, P12248720525777126289.a n = A001534 n

end A001534

/-! ## A001534.P17214556088582946655

`A008591(n+1)*A017173(n)-A017173(n)`
-/

namespace A001534.P17214556088582946655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) * A017173 n - A017173 n

end

end A001534.P17214556088582946655

namespace A001534

/-- `A008591(n+1)*A017173(n)-A017173(n)` -/
def P17214556088582946655.Spec : Prop :=
  ∀ n, P17214556088582946655.a n = A001534 n

end A001534

/-! ## A001534.P17630548756507981064

`A017234(n)-A017173(A008585(n+1))`
-/

namespace A001534.P17630548756507981064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017234 n - A017173 (A008585 (n + 1)).toNat

end

end A001534.P17630548756507981064

namespace A001534

/-- `A017234(n)-A017173(A008585(n+1))` -/
def P17630548756507981064.Spec : Prop :=
  ∀ n, P17630548756507981064.a n = A001534 n

end A001534

/-! ## A001534.P11661501677846784208

`A017222(n)-A016789(A016789(n+1))`
-/

namespace A001534.P11661501677846784208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017222 n - A016789 (A016789 (n + 1)).toNat

end

end A001534.P11661501677846784208

namespace A001534

/-- `A017222(n)-A016789(A016789(n+1))` -/
def P11661501677846784208.Spec : Prop :=
  ∀ n, P11661501677846784208.a n = A001534 n

end A001534

/-! ## A001534.P917791143797985081

`A028563(A017173(n))`
-/

namespace A001534.P917791143797985081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 (A017173 n).toNat

end

end A001534.P917791143797985081

namespace A001534

/-- `A028563(A017173(n))` -/
def P917791143797985081.Spec : Prop :=
  ∀ n, P917791143797985081.a n = A001534 n

end A001534

/-!
# A001535: a(n) = (10n+1)*(10n+9).

The programs for A001535, the canonical program `A001535.P12452821338296333738` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001535 has offset 0).

The definition of A001535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+1)*(10*n+9)` (program `A001535.P12452821338296333738`, by `A001535.P12452821338296333738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001535.P12452821338296333738

`(10*n+1)*(10*n+9)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001535

/-- `(10*n+1)*(10*n+9)` -/
def P12452821338296333738.Spec : Prop :=
  ∀ n, (P12452821338296333738.a n : ℤ) = A001535 n

theorem P12452821338296333738.correct : P12452821338296333738.Spec := by
  intro n
  simp only [A001535]

end A001535

/-! ## A001535.P13223794894139834958

`A017330(n)-16`
-/

namespace A001535.P13223794894139834958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n - 16

end

end A001535.P13223794894139834958

namespace A001535

/-- `A017330(n)-16` -/
def P13223794894139834958.Spec : Prop :=
  ∀ n, P13223794894139834958.a n = A001535 n

end A001535

/-! ## A001535.P3056042140675892647

`5*A195317(n+1)+4`
-/

namespace A001535.P3056042140675892647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A195317 (n + 1) + 4

end

end A001535.P3056042140675892647

namespace A001535

/-- `5*A195317(n+1)+4` -/
def P3056042140675892647.Spec : Prop :=
  ∀ n, P3056042140675892647.a n = A001535 n

end A001535

/-! ## A001535.P17758249672470507299

`A317095(n)+A017306(n)`
-/

namespace A001535.P17758249672470507299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 n + A017306 n

end

end A001535.P17758249672470507299

namespace A001535

/-- `A317095(n)+A017306(n)` -/
def P17758249672470507299.Spec : Prop :=
  ∀ n, P17758249672470507299.a n = A001535 n

end A001535

/-! ## A001535.P7504403664921558370

`lcm(A017281(n), A017377(n))`
-/

namespace A001535.P7504403664921558370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017281 n) (A017377 n)

end

end A001535.P7504403664921558370

namespace A001535

/-- `lcm(A017281(n), A017377(n))` -/
def P7504403664921558370.Spec : Prop :=
  ∀ n, (P7504403664921558370.a n : ℤ) = A001535 n

end A001535

/-! ## A001535.P14905479457600618902

`A017377(n)+A008592(n)*A017377(n)`
-/

namespace A001535.P14905479457600618902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + A008592 n * A017377 n

end

end A001535.P14905479457600618902

namespace A001535

/-- `A017377(n)+A008592(n)*A017377(n)` -/
def P14905479457600618902.Spec : Prop :=
  ∀ n, P14905479457600618902.a n = A001535 n

end A001535

/-! ## A001535.P9767265652578670042

`A017293(n)*A017377(n)-A017377(n)`
-/

namespace A001535.P9767265652578670042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n * A017377 n - A017377 n

end

end A001535.P9767265652578670042

namespace A001535

/-- `A017293(n)*A017377(n)-A017377(n)` -/
def P9767265652578670042.Spec : Prop :=
  ∀ n, P9767265652578670042.a n = A001535 n

end A001535

/-! ## A001535.P2038673908075624435

`A008592(n+1)*A017281(n)-A017281(n)`
-/

namespace A001535.P2038673908075624435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) * A017281 n - A017281 n

end

end A001535.P2038673908075624435

namespace A001535

/-- `A008592(n+1)*A017281(n)-A017281(n)` -/
def P2038673908075624435.Spec : Prop :=
  ∀ n, P2038673908075624435.a n = A001535 n

end A001535

/-! ## A001535.P8505616247698704074

`A145923(5*n)`
-/

namespace A001535.P8505616247698704074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145923 (5 * n)

end

end A001535.P8505616247698704074

namespace A001535

/-- `A145923(5*n)` -/
def P8505616247698704074.Spec : Prop :=
  ∀ n, P8505616247698704074.a n = A001535 n

end A001535

/-! ## A001535.P9190559508535018984

`A061041(5*(2*n+1))`
-/

namespace A001535.P9190559508535018984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (5 * (2 * n + 1))

end

end A001535.P9190559508535018984

namespace A001535

/-- `A061041(5*(2*n+1))` -/
def P9190559508535018984.Spec : Prop :=
  ∀ n, P9190559508535018984.a n = A001535 n

end A001535

/-! ## A001535.P3998336871398278824

`A174680(5*(2*n+1))`
-/

namespace A001535.P3998336871398278824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (5 * (2 * n + 1))

end

end A001535.P3998336871398278824

namespace A001535

/-- `A174680(5*(2*n+1))` -/
def P3998336871398278824.Spec : Prop :=
  ∀ n, P3998336871398278824.a n = A001535 n

end A001535

/-! ## A001535.P9021228227814378130

`A225948(5*(2*n+1))`
-/

namespace A001535.P9021228227814378130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (5 * (2 * n + 1))

end

end A001535.P9021228227814378130

namespace A001535

/-- `A225948(5*(2*n+1))` -/
def P9021228227814378130.Spec : Prop :=
  ∀ n, P9021228227814378130.a n = A001535 n

end A001535

/-! ## A001535.P7751324153203693580

`A277384(5*(2*n+1))`
-/

namespace A001535.P7751324153203693580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (5 * (2 * n + 1))

end

end A001535.P7751324153203693580

namespace A001535

/-- `A277384(5*(2*n+1))` -/
def P7751324153203693580.Spec : Prop :=
  ∀ n, P7751324153203693580.a n = A001535 n

end A001535

/-! ## A001535.P7438746399049212753

`A028566(A017281(n))`
-/

namespace A001535.P7438746399049212753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (A017281 n).toNat

end

end A001535.P7438746399049212753

namespace A001535

/-- `A028566(A017281(n))` -/
def P7438746399049212753.Spec : Prop :=
  ∀ n, P7438746399049212753.a n = A001535 n

end A001535

/-!
# A001536: a(n) = (11*n+1)*(11*n+10).

The programs for A001536, the canonical program `A001536.P8020118159744092333` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001536 has offset 0).

The definition of A001536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n+1)*(11*n+10)` (program `A001536.P8020118159744092333`, by `A001536.P8020118159744092333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001536.P454410282333167122

`242*n+a(n-1)` with `a(0)=10`
-/

namespace A001536.P454410282333167122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  242 * n + a (n - 1)

end

end A001536.P454410282333167122

namespace A001536

/-- `242*n+a(n-1)` -/
def P454410282333167122.Spec : Prop :=
  ∀ n, (P454410282333167122.a n : ℤ) = A001536 n

theorem P454410282333167122.correct : P454410282333167122.Spec := by
  intro n
  induction n with
  | zero => simp [A001536, A001536.P454410282333167122.a, A001536.P8020118159744092333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001536, Nat.add_sub_cancel, A001536.P454410282333167122.a, A001536.P8020118159744092333.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001536

/-! ## A001536.P8020118159744092333

`(11*n+1)*(11*n+10)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001536

/-- `(11*n+1)*(11*n+10)` -/
def P8020118159744092333.Spec : Prop :=
  ∀ n, (P8020118159744092333.a n : ℤ) = A001536 n

theorem P8020118159744092333.correct : P8020118159744092333.Spec := by
  intro n
  simp only [A001536]

end A001536

/-! ## A001536.P13128739638284587242

`2*11*11*A000217(n)+10`
-/

namespace A001536.P13128739638284587242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (11 * (11 * A000217 n)) + 10

end

end A001536.P13128739638284587242

namespace A001536

/-- `2*11*11*A000217(n)+10` -/
def P13128739638284587242.Spec : Prop :=
  ∀ n, P13128739638284587242.a n = A001536 n

end A001536

/-! ## A001536.P15102728021169463464

`A017509(n)+A008593(n)*A017509(n)`
-/

namespace A001536.P15102728021169463464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n + A008593 n * A017509 n

end

end A001536.P15102728021169463464

namespace A001536

/-- `A017509(n)+A008593(n)*A017509(n)` -/
def P15102728021169463464.Spec : Prop :=
  ∀ n, P15102728021169463464.a n = A001536 n

end A001536

/-! ## A001536.P7478785572736171438

`A017401(n)+A017401(n)*A017497(n)`
-/

namespace A001536.P7478785572736171438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + A017401 n * A017497 n

end

end A001536.P7478785572736171438

namespace A001536

/-- `A017401(n)+A017401(n)*A017497(n)` -/
def P7478785572736171438.Spec : Prop :=
  ∀ n, P7478785572736171438.a n = A001536 n

end A001536

/-! ## A001536.P4952195984145705155

`A017413(n)*A017509(n)-A017509(n)`
-/

namespace A001536.P4952195984145705155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n * A017509 n - A017509 n

end

end A001536.P4952195984145705155

namespace A001536

/-- `A017413(n)*A017509(n)-A017509(n)` -/
def P4952195984145705155.Spec : Prop :=
  ∀ n, P4952195984145705155.a n = A001536 n

end A001536

/-! ## A001536.P5847746670291310332

`A017401(n)*A017511(n)/A017510(n)`
-/

namespace A001536.P5847746670291310332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017401 n * A017511 n : ℚ) / (A017510 n : ℚ)

end

end A001536.P5847746670291310332

namespace A001536

/-- `A017401(n)*A017511(n)/A017510(n)` -/
def P5847746670291310332.Spec : Prop :=
  ∀ n, P5847746670291310332.a n = (A001536 n : ℚ)

end A001536

/-! ## A001536.P3299288705711055394

`A017401(n)*A017512(n)/A017511(n)`
-/

namespace A001536.P3299288705711055394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017401 n * A017512 n : ℚ) / (A017511 n : ℚ)

end

end A001536.P3299288705711055394

namespace A001536

/-- `A017401(n)*A017512(n)/A017511(n)` -/
def P3299288705711055394.Spec : Prop :=
  ∀ n, P3299288705711055394.a n = (A001536 n : ℚ)

end A001536

/-! ## A001536.P7302170175428038445

`A008593(n+1)*A017401(n)-A017401(n)`
-/

namespace A001536.P7302170175428038445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (n + 1) * A017401 n - A017401 n

end

end A001536.P7302170175428038445

namespace A001536

/-- `A008593(n+1)*A017401(n)-A017401(n)` -/
def P7302170175428038445.Spec : Prop :=
  ∀ n, P7302170175428038445.a n = A001536 n

end A001536

/-! ## A001536.P10115310656350219821

`A017425(n)*A017497(n)-A017461(n+1)`
-/

namespace A001536.P10115310656350219821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n * A017497 n - A017461 (n + 1)

end

end A001536.P10115310656350219821

namespace A001536

/-- `A017425(n)*A017497(n)-A017461(n+1)` -/
def P10115310656350219821.Spec : Prop :=
  ∀ n, P10115310656350219821.a n = A001536 n

end A001536

/-! ## A001536.P18403243931945290704

`A028569(11*n+1)`
-/

namespace A001536.P18403243931945290704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 (11 * n + 1)

end

end A001536.P18403243931945290704

namespace A001536

/-- `A028569(11*n+1)` -/
def P18403243931945290704.Spec : Prop :=
  ∀ n, P18403243931945290704.a n = A001536 n

end A001536

/-! ## A001536.P10511876172105325470

`A017510(n)-A008591(A017509(n))`
-/

namespace A001536.P10511876172105325470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n - A008591 (A017509 n).toNat

end

end A001536.P10511876172105325470

namespace A001536

/-- `A017510(n)-A008591(A017509(n))` -/
def P10511876172105325470.Spec : Prop :=
  ∀ n, P10511876172105325470.a n = A001536 n

end A001536

/-! ## A001536.P7281289866456782910

`∑[A008593(A008593(2*n))]+10`
-/

namespace A001536.P7281289866456782910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A008593 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10

end

end A001536.P7281289866456782910

namespace A001536

/-- `∑[A008593(A008593(2*n))]+10` -/
def P7281289866456782910.Spec : Prop :=
  ∀ n, P7281289866456782910.a n = A001536 n

end A001536

/-!
# A001538: a(n) = (12*n+1)*(12*n+11).

The programs for A001538, the canonical program `A001538.P9993227814495907394` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001538 has offset 0).

The definition of A001538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12*n+1)*(12*n+11)` (program `A001538.P9993227814495907394`, by `A001538.P9993227814495907394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001538.P9977131712451006748

`288*n+a(n-1)` with `a(0)=11`
-/

namespace A001538.P9977131712451006748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  288 * n + a (n - 1)

end

end A001538.P9977131712451006748

namespace A001538

/-- `288*n+a(n-1)` -/
def P9977131712451006748.Spec : Prop :=
  ∀ n, (P9977131712451006748.a n : ℤ) = A001538 n

theorem P9977131712451006748.correct : P9977131712451006748.Spec := by
  intro n
  induction n with
  | zero => simp [A001538, A001538.P9977131712451006748.a, A001538.P9993227814495907394.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001538, Nat.add_sub_cancel, A001538.P9977131712451006748.a, A001538.P9993227814495907394.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001538

/-! ## A001538.P9993227814495907394

`(12*n+1)*(12*n+11)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001538

/-- `(12*n+1)*(12*n+11)` -/
def P9993227814495907394.Spec : Prop :=
  ∀ n, (P9993227814495907394.a n : ℤ) = A001538 n

theorem P9993227814495907394.correct : P9993227814495907394.Spec := by
  intro n
  simp only [A001538]

end A001538

/-! ## A001538.P11435445855392635440

`(9*A001533(n)-19)/4`
-/

namespace A001538.P11435445855392635440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A001533 n - 19 : ℚ) / 4

end

end A001538.P11435445855392635440

namespace A001538

/-- `(9*A001533(n)-19)/4` -/
def P11435445855392635440.Spec : Prop :=
  ∀ n, P11435445855392635440.a n = (A001538 n : ℚ)

end A001538

/-! ## A001538.P7809481971089268655

`A017605(n)²-A142241(n+1)`
-/

namespace A001538.P7809481971089268655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n ^ 2 - A142241 (n + 1)

end

end A001538.P7809481971089268655

namespace A001538

/-- `A017605(n)²-A142241(n+1)` -/
def P7809481971089268655.Spec : Prop :=
  ∀ n, P7809481971089268655.a n = A001538 n

end A001538

/-! ## A001538.P13127050581810379578

`A017653(n)+A008594(n)*A017653(n)`
-/

namespace A001538.P13127050581810379578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + A008594 n * A017653 n

end

end A001538.P13127050581810379578

namespace A001538

/-- `A017653(n)+A008594(n)*A017653(n)` -/
def P13127050581810379578.Spec : Prop :=
  ∀ n, P13127050581810379578.a n = A001538 n

end A001538

/-! ## A001538.P239660579131233872

`A017533(n)+A017533(n)*A017641(n)`
-/

namespace A001538.P239660579131233872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n + A017533 n * A017641 n

end

end A001538.P239660579131233872

namespace A001538

/-- `A017533(n)+A017533(n)*A017641(n)` -/
def P239660579131233872.Spec : Prop :=
  ∀ n, P239660579131233872.a n = A001538 n

end A001538

/-! ## A001538.P11750149941097297764

`A017545(n)*A017653(n)-A017653(n)`
-/

namespace A001538.P11750149941097297764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n * A017653 n - A017653 n

end

end A001538.P11750149941097297764

namespace A001538

/-- `A017545(n)*A017653(n)-A017653(n)` -/
def P11750149941097297764.Spec : Prop :=
  ∀ n, P11750149941097297764.a n = A001538 n

end A001538

/-! ## A001538.P2364867914819001591

`A008594(n+1)*A017533(n)-A017533(n)`
-/

namespace A001538.P2364867914819001591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) * A017533 n - A017533 n

end

end A001538.P2364867914819001591

namespace A001538

/-- `A008594(n+1)*A017533(n)-A017533(n)` -/
def P2364867914819001591.Spec : Prop :=
  ∀ n, P2364867914819001591.a n = A001538 n

end A001538

/-! ## A001538.P11147843651608638443

`A158637(n+1)-A158480(A016921(n+1))`
-/

namespace A001538.P11147843651608638443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158637 (n + 1) - A158480 (A016921 (n + 1)).toNat

end

end A001538.P11147843651608638443

namespace A001538

/-- `A158637(n+1)-A158480(A016921(n+1))` -/
def P11147843651608638443.Spec : Prop :=
  ∀ n, P11147843651608638443.a n = A001538 n

end A001538

/-! ## A001538.P1361534217875521714

`A098603(A017533(n))`
-/

namespace A001538.P1361534217875521714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 (A017533 n).toNat

end

end A001538.P1361534217875521714

namespace A001538

/-- `A098603(A017533(n))` -/
def P1361534217875521714.Spec : Prop :=
  ∀ n, P1361534217875521714.a n = A001538 n

end A001538

/-! ## A001538.P13480396620924631474

`A098603(A008594(n)+1)`
-/

namespace A001538.P13480396620924631474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 (A008594 n + 1).toNat

end

end A001538.P13480396620924631474

namespace A001538

/-- `A098603(A008594(n)+1)` -/
def P13480396620924631474.Spec : Prop :=
  ∀ n, P13480396620924631474.a n = A001538 n

end A001538

/-!
# A001539: a(n) = (4*n+1)*(4*n+3).

The programs for A001539, the canonical program `A001539.P2367673173120689746` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001539 has offset 0).

The definition of A001539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+3)` (program `A001539.P2367673173120689746`, by `A001539.P2367673173120689746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001539.P9746637796377401797

`32*n+a(n-1)` with `a(0)=3`
-/

namespace A001539.P9746637796377401797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  32 * n + a (n - 1)

end

end A001539.P9746637796377401797

namespace A001539

/-- `32*n+a(n-1)` -/
def P9746637796377401797.Spec : Prop :=
  ∀ n, (P9746637796377401797.a n : ℤ) = A001539 n

theorem P9746637796377401797.correct : P9746637796377401797.Spec := by
  intro n
  induction n with
  | zero => simp [A001539, A001539.P9746637796377401797.a, A001539.P2367673173120689746.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001539, Nat.add_sub_cancel, A001539.P9746637796377401797.a, A001539.P2367673173120689746.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001539

/-! ## A001539.P2367673173120689746

`(4*n+1)*(4*n+3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001539

/-- `(4*n+1)*(4*n+3)` -/
def P2367673173120689746.Spec : Prop :=
  ∀ n, (P2367673173120689746.a n : ℤ) = A001539 n

theorem P2367673173120689746.correct : P2367673173120689746.Spec := by
  intro n
  simp only [A001539]

end A001539

/-! ## A001539.P480974330987143290

`A016826(n)-1`
-/

namespace A001539.P480974330987143290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n - 1

end

end A001539.P480974330987143290

namespace A001539

/-- `A016826(n)-1` -/
def P480974330987143290.Spec : Prop :=
  ∀ n, P480974330987143290.a n = A001539 n

end A001539

/-! ## A001539.P6231452038693579045

`(A001533(n)+5)/4`
-/

namespace A001539.P6231452038693579045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001533 n + 5 : ℚ) / 4

end

end A001539.P6231452038693579045

namespace A001539

/-- `(A001533(n)+5)/4` -/
def P6231452038693579045.Spec : Prop :=
  ∀ n, P6231452038693579045.a n = (A001539 n : ℚ)

end A001539

/-! ## A001539.P2298822498963509308

`(A001538(n)+16)/9`
-/

namespace A001539.P2298822498963509308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001538 n + 16 : ℚ) / 9

end

end A001539.P2298822498963509308

namespace A001539

/-- `(A001538(n)+16)/9` -/
def P2298822498963509308.Spec : Prop :=
  ∀ n, P2298822498963509308.a n = (A001539 n : ℚ)

end A001539

/-! ## A001539.P12430191876992009687

`or(3, ∑[32*n])`
-/

namespace A001539.P12430191876992009687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001539.P12430191876992009687

namespace A001539

/-- `or(3, ∑[32*n])` -/
def P12430191876992009687.Spec : Prop :=
  ∀ n, (P12430191876992009687.a n : ℤ) = A001539 n

end A001539

/-! ## A001539.P18042628425561828593

`xor(3, ∑[32*n])`
-/

namespace A001539.P18042628425561828593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001539.P18042628425561828593

namespace A001539

/-- `xor(3, ∑[32*n])` -/
def P18042628425561828593.Spec : Prop :=
  ∀ n, (P18042628425561828593.a n : ℤ) = A001539 n

end A001539

/-! ## A001539.P11024485822575699273

`record[lcm(n+1, xor(3, n))]`
-/

namespace A001539.P11024485822575699273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.xor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001539.P11024485822575699273

namespace A001539

/-- `record[lcm(n+1, xor(3, n))]` -/
def P11024485822575699273.Spec : Prop :=
  ∀ n, (P11024485822575699273.a n : ℤ) = A001539 n

end A001539

/-! ## A001539.P16639146746175303688

`record[xor(1, n)*xor(3, n)]`
-/

namespace A001539.P16639146746175303688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001539.P16639146746175303688

namespace A001539

/-- `record[xor(1, n)*xor(3, n)]` -/
def P16639146746175303688.Spec : Prop :=
  ∀ n, (P16639146746175303688.a n : ℤ) = A001539 n

end A001539

/-! ## A001539.P1528010483858547350

`∑[a(n-1)+32]` with `a(0)=3, a(1)=32`
-/

namespace A001539.P1528010483858547350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 32] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001539.P1528010483858547350

namespace A001539

/-- `∑[a(n-1)+32]` -/
def P1528010483858547350.Spec : Prop :=
  ∀ n, (P1528010483858547350.a n : ℤ) = A001539 n

end A001539

/-! ## A001539.P1792881113247031721

`record[lcm(2, 1-n)²-1]`
-/

namespace A001539.P1792881113247031721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (n : ℤ)) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001539.P1792881113247031721

namespace A001539

/-- `record[lcm(2, 1-n)²-1]` -/
def P1792881113247031721.Spec : Prop :=
  ∀ n, P1792881113247031721.a n = A001539 n

end A001539

/-! ## A001539.P6426383247342860381

`-or(1, -(4*n+2)²)`
-/

namespace A001539.P6426383247342860381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((4 * n + 2) ^ 2 : ℤ))

end

end A001539.P6426383247342860381

namespace A001539

/-- `-or(1, -(4*n+2)²)` -/
def P6426383247342860381.Spec : Prop :=
  ∀ n, P6426383247342860381.a n = A001539 n

end A001539

/-! ## A001539.P5216900252219327074

`A195315(n+1)+2`
-/

namespace A001539.P5216900252219327074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195315 (n + 1) + 2

end

end A001539.P5216900252219327074

namespace A001539

/-- `A195315(n+1)+2` -/
def P5216900252219327074.Spec : Prop :=
  ∀ n, P5216900252219327074.a n = A001539 n

end A001539

/-! ## A001539.P4829063782063095736

`2*A035008(n)+3`
-/

namespace A001539.P4829063782063095736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035008 n + 3

end

end A001539.P4829063782063095736

namespace A001539

/-- `2*A035008(n)+3` -/
def P4829063782063095736.Spec : Prop :=
  ∀ n, P4829063782063095736.a n = A001539 n

end A001539

/-! ## A001539.P12606055390296049672

`4*A016754(n)-1`
-/

namespace A001539.P12606055390296049672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016754 n - 1

end

end A001539.P12606055390296049672

namespace A001539

/-- `4*A016754(n)-1` -/
def P12606055390296049672.Spec : Prop :=
  ∀ n, P12606055390296049672.a n = A001539 n

end A001539

/-! ## A001539.P9721065787831720715

`A017114(n)/4-1`
-/

namespace A001539.P9721065787831720715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017114 n : ℚ) / 4 - 1

end

end A001539.P9721065787831720715

namespace A001539

/-- `A017114(n)/4-1` -/
def P9721065787831720715.Spec : Prop :=
  ∀ n, P9721065787831720715.a n = (A001539 n : ℚ)

end A001539

/-! ## A001539.P9396566259724865109

`4*A033996(n)+3`
-/

namespace A001539.P9396566259724865109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033996 n + 3

end

end A001539.P9396566259724865109

namespace A001539

/-- `4*A033996(n)+3` -/
def P9396566259724865109.Spec : Prop :=
  ∀ n, P9396566259724865109.a n = A001539 n

end A001539

/-! ## A001539.P12097883211146568813

`2*A108099(n)-5`
-/

namespace A001539.P12097883211146568813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108099 n - 5

end

end A001539.P12097883211146568813

namespace A001539

/-- `2*A108099(n)-5` -/
def P12097883211146568813.Spec : Prop :=
  ∀ n, P12097883211146568813.a n = A001539 n

end A001539

/-! ## A001539.P13580517843330868288

`(A177065(n)-3)/4`
-/

namespace A001539.P13580517843330868288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177065 n - 3 : ℚ) / 4

end

end A001539.P13580517843330868288

namespace A001539

/-- `(A177065(n)-3)/4` -/
def P13580517843330868288.Spec : Prop :=
  ∀ n, P13580517843330868288.a n = (A001539 n : ℚ)

end A001539

/-! ## A001539.P11319427132521470294

`4*A069894(n)-5`
-/

namespace A001539.P11319427132521470294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A069894 n - 5

end

end A001539.P11319427132521470294

namespace A001539

/-- `4*A069894(n)-5` -/
def P11319427132521470294.Spec : Prop :=
  ∀ n, P11319427132521470294.a n = A001539 n

end A001539

/-!
# A001540: Number of transpositions needed to generate permutations of length n.

The programs for A001540, there is no canonical definition to state claims against.
-/

/-! ## A001540.P5742814428800308325

`or(1, (n+1)*(a(n-1)+1))-1` with `a(0)=0`
-/

namespace A001540.P5742814428800308325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 ((n + 1 : ℤ) * (a (n - 1) + 1)) - 1

end

end A001540.P5742814428800308325

/-! ## A001540.P5775800630807948305

`n*(a(n-1)+a(n-2)+2)` with `a(0)=0, a(1)=2`
-/

namespace A001540.P5775800630807948305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  n * (a (n - 1) + (a (n - 2) + 2))

end

end A001540.P5775800630807948305

/-! ## A001540.P6239099136859766790

`a(n-1)*(n+1)+A000035(n)+n` with `a(0)=0`
-/

namespace A001540.P6239099136859766790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (n + 1 : ℤ) + (A000035 n + (n : ℤ))

end

end A001540.P6239099136859766790

/-! ## A001540.P3942921412795086148

`∑[A088128(n)-A000166(n)]`
-/

namespace A001540.P3942921412795086148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088128 n - A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001540.P3942921412795086148

/-! ## A001540.P12809471116645502351

`A088128(n)+A186763(n)-1`
-/

namespace A001540.P12809471116645502351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088128 n + (A186763 n - 1)

end

end A001540.P12809471116645502351

/-! ## A001540.P17736151563000067351

`A000166(n+1)+A186763(n+1)-1`
-/

namespace A001540.P17736151563000067351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A186763 (n + 1) - 1)

end

end A001540.P17736151563000067351

/-! ## A001540.P6515349453413492877

`A000522(n+1)-(A186763(n+1)+1)`
-/

namespace A001540.P6515349453413492877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) - (A186763 (n + 1) + 1)

end

end A001540.P6515349453413492877

/-!
# A001541: a(0) = 1, a(1) = 3; for n > 1, a(n) = 6*a(n-1) - a(n-2).

The programs for A001541, the canonical program `A001541.P3730671586373433410` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001541 has offset 0).

The definition of A001541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A001541.P3730671586373433410`, by `A001541.P3730671586373433410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001541.P3730671586373433410

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001541

/-- `6*a(n-1)-a(n-2)` -/
def P3730671586373433410.Spec : Prop :=
  ∀ n, P3730671586373433410.a n = A001541 n

theorem P3730671586373433410.correct : P3730671586373433410.Spec := by
  intro n
  simp only [A001541]

end A001541

/-! ## A001541.P16696150289870112409

`A001333(2*n)`
-/

namespace A001541.P16696150289870112409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n)

end

end A001541.P16696150289870112409

namespace A001541

/-- `A001333(2*n)` -/
def P16696150289870112409.Spec : Prop :=
  ∀ n, P16696150289870112409.a n = A001541 n

end A001541

/-! ## A001541.P111045387730876610

`2*A001108(n)+1`
-/

namespace A001541.P111045387730876610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001108 n + 1

end

end A001541.P111045387730876610

namespace A001541

/-- `2*A001108(n)+1` -/
def P111045387730876610.Spec : Prop :=
  ∀ n, P111045387730876610.a n = A001541 n

end A001541

/-! ## A001541.P18384650205728273536

`A000129(n)²*4+(-1)^n`
-/

namespace A001541.P18384650205728273536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2 * 4 + (-1) ^ n

end

end A001541.P18384650205728273536

namespace A001541

/-- `A000129(n)²*4+(-1)^n` -/
def P18384650205728273536.Spec : Prop :=
  ∀ n, P18384650205728273536.a n = A001541 n

end A001541

/-! ## A001541.P4213853152711504458

`((3+2*sqrt(2))^n+(3-2*sqrt(2))^n)/2`
-/

namespace A001541.P4213853152711504458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A001541.P4213853152711504458

namespace A001541

/-- `((3+2*sqrt(2))^n+(3-2*sqrt(2))^n)/2` -/
def P4213853152711504458.Spec : Prop :=
  ∀ n, P4213853152711504458.a n = (A001541 n : ℝ)

end A001541

/-! ## A001541.P2335910493585668469

`cosh(n*log(3+2*sqrt(2)))`
-/

namespace A001541.P2335910493585668469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n : ℝ) * Real.log (3 + 2 * Real.sqrt (2 : ℝ)))

end

end A001541.P2335910493585668469

namespace A001541

/-- `cosh(n*log(3+2*sqrt(2)))` -/
def P2335910493585668469.Spec : Prop :=
  ∀ n, P2335910493585668469.a n = (A001541 n : ℝ)

end A001541

/-! ## A001541.P1657740491681204986

`sqrt(A055997(2*n+1))`
-/

namespace A001541.P1657740491681204986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055997 (2 * n + 1) : ℝ)

end

end A001541.P1657740491681204986

namespace A001541

/-- `sqrt(A055997(2*n+1))` -/
def P1657740491681204986.Spec : Prop :=
  ∀ n, P1657740491681204986.a n = (A001541 n : ℝ)

end A001541

/-! ## A001541.P14452785826412853448

`sqrt(8*A001109(n)²+1)`
-/

namespace A001541.P14452785826412853448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A001109 n ^ 2 + 1 : ℝ)

end

end A001541.P14452785826412853448

namespace A001541

/-- `sqrt(8*A001109(n)²+1)` -/
def P14452785826412853448.Spec : Prop :=
  ∀ n, P14452785826412853448.a n = (A001541 n : ℝ)

end A001541

/-! ## A001541.P4620208246685597509

`floor(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=3`
-/

namespace A001541.P4620208246685597509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A001541.P4620208246685597509

namespace A001541

/-- `floor(a(n-1)/(3-sqrt(8)))` -/
def P4620208246685597509.Spec : Prop :=
  ∀ n, P4620208246685597509.a n = A001541 n

end A001541

/-! ## A001541.P83927929817414651

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=3`
-/

namespace A001541.P83927929817414651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A001541.P83927929817414651

namespace A001541

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P83927929817414651.Spec : Prop :=
  ∀ n, P83927929817414651.a n = A001541 n

end A001541

/-! ## A001541.P9136170800337473053

`record[a(n-2)-(a(n-1)+a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A001541.P9136170800337473053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001541.P9136170800337473053

namespace A001541

/-- `record[a(n-2)-(a(n-1)+a(n-1))]` -/
def P9136170800337473053.Spec : Prop :=
  ∀ n, P9136170800337473053.a n = A001541 n

end A001541

/-! ## A001541.P909100012265334888

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A001541.P909100012265334888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001541.P909100012265334888

namespace A001541

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P909100012265334888.Spec : Prop :=
  ∀ n, P909100012265334888.a n = A001541 n

end A001541

/-! ## A001541.P3696384625970615471

`record[A123335(n)]`
-/

namespace A001541.P3696384625970615471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001541.P3696384625970615471

namespace A001541

/-- `record[A123335(n)]` -/
def P3696384625970615471.Spec : Prop :=
  ∀ n, P3696384625970615471.a n = A001541 n

end A001541

/-! ## A001541.P5851333844148689938

`A079496(2*n)`
-/

namespace A001541.P5851333844148689938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (2 * n)

end

end A001541.P5851333844148689938

namespace A001541

/-- `A079496(2*n)` -/
def P5851333844148689938.Spec : Prop :=
  ∀ n, P5851333844148689938.a n = A001541 n

end A001541

/-! ## A001541.P17078043621141231351

`A123335(2*n)`
-/

namespace A001541.P17078043621141231351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (2 * n)

end

end A001541.P17078043621141231351

namespace A001541

/-- `A123335(2*n)` -/
def P17078043621141231351.Spec : Prop :=
  ∀ n, P17078043621141231351.a n = A001541 n

end A001541

/-! ## A001541.P1959898456366512629

`A119016(4*n)`
-/

namespace A001541.P1959898456366512629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (4 * n)

end

end A001541.P1959898456366512629

namespace A001541

/-- `A119016(4*n)` -/
def P1959898456366512629.Spec : Prop :=
  ∀ n, P1959898456366512629.a n = A001541 n

end A001541

/-! ## A001541.P6056196408030580589

`A126354(Δ[n²])`
-/

namespace A001541.P6056196408030580589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001541.P6056196408030580589

namespace A001541

/-- `A126354(Δ[n²])` -/
def P6056196408030580589.Spec : Prop :=
  ∀ n, P6056196408030580589.a n = A001541 n

end A001541

/-! ## A001541.P11954788008596475121

`record[A126354(n+1)]`
-/

namespace A001541.P11954788008596475121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001541.P11954788008596475121

namespace A001541

/-- `record[A126354(n+1)]` -/
def P11954788008596475121.Spec : Prop :=
  ∀ n, P11954788008596475121.a n = A001541 n

end A001541

/-! ## A001541.P11376115355932080174

`A082639(n+1)+1`
-/

namespace A001541.P11376115355932080174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (n + 1) + 1

end

end A001541.P11376115355932080174

namespace A001541

/-- `A082639(n+1)+1` -/
def P11376115355932080174.Spec : Prop :=
  ∀ n, P11376115355932080174.a n = A001541 n

end A001541

/-!
# A001542: a(n) = 6*a(n-1) - a(n-2) for n > 1, a(0)=0 and a(1)=2.

The programs for A001542, the canonical program `A001542.P12377176778292333708` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001542 has offset 0).

The definition of A001542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A001542.P12377176778292333708`, by `A001542.P12377176778292333708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001542.P12377176778292333708

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001542

/-- `6*a(n-1)-a(n-2)` -/
def P12377176778292333708.Spec : Prop :=
  ∀ n, P12377176778292333708.a n = A001542 n

theorem P12377176778292333708.correct : P12377176778292333708.Spec := by
  intro n
  simp only [A001542]

end A001542

/-! ## A001542.P1226442091760080226

`2*A001109(n)`
-/

namespace A001542.P1226442091760080226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001109 n

end

end A001542.P1226442091760080226

namespace A001542

/-- `2*A001109(n)` -/
def P1226442091760080226.Spec : Prop :=
  ∀ n, P1226442091760080226.a n = A001542 n

end A001542

/-! ## A001542.P9307866530953736202

`A000129(n)*A002203(n)`
-/

namespace A001542.P9307866530953736202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A002203 n

end

end A001542.P9307866530953736202

namespace A001542

/-- `A000129(n)*A002203(n)` -/
def P9307866530953736202.Spec : Prop :=
  ∀ n, P9307866530953736202.a n = A001542 n

end A001542

/-! ## A001542.P5714026856896824515

`((3+2*sqrt(2))^n-(3-2*sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A001542.P5714026856896824515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) ^ n - (3 - 2 * Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A001542.P5714026856896824515

namespace A001542

/-- `((3+2*sqrt(2))^n-(3-2*sqrt(2))^n)/(2*sqrt(2))` -/
def P5714026856896824515.Spec : Prop :=
  ∀ n, P5714026856896824515.a n = (A001542 n : ℝ)

end A001542

/-! ## A001542.P804748199674182043

`A001652(n)+A046090(n)-A001653(n+1)`
-/

namespace A001542.P804748199674182043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + A046090 n - A001653 (n + 1)

end

end A001542.P804748199674182043

namespace A001542

/-- `A001652(n)+A046090(n)-A001653(n+1)` -/
def P804748199674182043.Spec : Prop :=
  ∀ n, P804748199674182043.a n = A001542 n

end A001542

/-! ## A001542.P12789896342937606131

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=0, a(1)=2`
-/

namespace A001542.P12789896342937606131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A001542.P12789896342937606131

namespace A001542

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P12789896342937606131.Spec : Prop :=
  ∀ n, P12789896342937606131.a n = A001542 n

end A001542

/-! ## A001542.P6672574883487822166

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=2, a(2)=10`
-/

namespace A001542.P6672574883487822166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001542.P6672574883487822166

namespace A001542

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P6672574883487822166.Spec : Prop :=
  ∀ n, P6672574883487822166.a n = A001542 n

end A001542

/-! ## A001542.P12236537315524086042

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=0, a(1)=-1`
-/

namespace A001542.P12236537315524086042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001542.P12236537315524086042

namespace A001542

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P12236537315524086042.Spec : Prop :=
  ∀ n, P12236537315524086042.a n = A001542 n

end A001542

/-! ## A001542.P14514502226907733569

`1-A182188(n)`
-/

namespace A001542.P14514502226907733569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182188 n

end

end A001542.P14514502226907733569

namespace A001542

/-- `1-A182188(n)` -/
def P14514502226907733569.Spec : Prop :=
  ∀ n, P14514502226907733569.a n = A001542 n

end A001542

/-! ## A001542.P14087350548588909093

`A182189(n)-1`
-/

namespace A001542.P14087350548588909093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n - 1

end

end A001542.P14087350548588909093

namespace A001542

/-- `A182189(n)-1` -/
def P14087350548588909093.Spec : Prop :=
  ∀ n, P14087350548588909093.a n = A001542 n

end A001542

/-! ## A001542.P11309410619682652722

`A000129(2*n)`
-/

namespace A001542.P11309410619682652722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n)

end

end A001542.P11309410619682652722

namespace A001542

/-- `A000129(2*n)` -/
def P11309410619682652722.Spec : Prop :=
  ∀ n, P11309410619682652722.a n = A001542 n

end A001542

/-! ## A001542.P4279835215354872068

`A002965(4*n)`
-/

namespace A001542.P4279835215354872068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (4 * n)

end

end A001542.P4279835215354872068

namespace A001542

/-- `A002965(4*n)` -/
def P4279835215354872068.Spec : Prop :=
  ∀ n, P4279835215354872068.a n = A001542 n

end A001542

/-! ## A001542.P13474052308358834887

`A135153(4*n)`
-/

namespace A001542.P13474052308358834887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (4 * n)

end

end A001542.P13474052308358834887

namespace A001542

/-- `A135153(4*n)` -/
def P13474052308358834887.Spec : Prop :=
  ∀ n, P13474052308358834887.a n = A001542 n

end A001542

/-! ## A001542.P13068200338746274590

`A249576(6*n)`
-/

namespace A001542.P13068200338746274590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (6 * n)

end

end A001542.P13068200338746274590

namespace A001542

/-- `A249576(6*n)` -/
def P13068200338746274590.Spec : Prop :=
  ∀ n, P13068200338746274590.a n = A001542 n

end A001542

/-! ## A001542.P17975021689451338670

`A116560(12*n)`
-/

namespace A001542.P17975021689451338670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (12 * n)

end

end A001542.P17975021689451338670

namespace A001542

/-- `A116560(12*n)` -/
def P17975021689451338670.Spec : Prop :=
  ∀ n, P17975021689451338670.a n = A001542 n

end A001542

/-! ## A001542.P11858145080165985694

`abs(A176981(Δ[n²]))`
-/

namespace A001542.P11858145080165985694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A001542.P11858145080165985694

namespace A001542

/-- `abs(A176981(Δ[n²]))` -/
def P11858145080165985694.Spec : Prop :=
  ∀ n, P11858145080165985694.a n = A001542 n

end A001542

/-! ## A001542.P10710209656855973166

`A126354(2*(n+1))`
-/

namespace A001542.P10710209656855973166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 (2 * (n + 1))

end

end A001542.P10710209656855973166

namespace A001542

/-- `A126354(2*(n+1))` -/
def P10710209656855973166.Spec : Prop :=
  ∀ n, P10710209656855973166.a n = A001542 n

end A001542

/-! ## A001542.P1641582525156839301

`A111954(2*n)-1`
-/

namespace A001542.P1641582525156839301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (2 * n) - 1

end

end A001542.P1641582525156839301

namespace A001542

/-- `A111954(2*n)-1` -/
def P1641582525156839301.Spec : Prop :=
  ∀ n, P1641582525156839301.a n = A001542 n

end A001542

/-! ## A001542.P174754873291903766

`A174191(2*n)-1`
-/

namespace A001542.P174754873291903766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (2 * n) - 1

end

end A001542.P174754873291903766

namespace A001542

/-- `A174191(2*n)-1` -/
def P174754873291903766.Spec : Prop :=
  ∀ n, P174754873291903766.a n = A001542 n

end A001542

/-!
# A001543: a(0) = 1, a(n) = 5 + Product_{i=0..n-1} a(i) for n > 0.

The programs for A001543, the canonical program `A001543.P1453245124516605314` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001543 has offset 0).

The definition of A001543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001543.P1453245124516605314

`a(n-1)*(a(n-1)-5)+5` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001543

/-- `a(n-1)*(a(n-1)-5)+5` -/
def P1453245124516605314.Spec : Prop :=
  ∀ n, P1453245124516605314.a n = A001543 n

theorem P1453245124516605314.correct : P1453245124516605314.Spec := by
  intro n
  simp only [A001543]

end A001543

/-! ## A001543.P2420670402265739727

`5-(5-a(n-1))*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A001543.P2420670402265739727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 - (5 - a (n - 1)) * a (n - 1)

end

end A001543.P2420670402265739727

namespace A001543

/-- `5-(5-a(n-1))*a(n-1)` -/
def P2420670402265739727.Spec : Prop :=
  ∀ n, P2420670402265739727.a n = A001543 n

theorem P2420670402265739727.correct : P2420670402265739727.Spec := by
  intro n
  simp only [A001543, Nat.add_sub_cancel, A001543.P2420670402265739727.a, A001543.P1453245124516605314.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001543

/-! ## A001543.P14701328301301122505

`ratio[(a(n-1)+5)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A001543.P14701328301301122505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (f1 (n - 1) + 5) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A001543.P14701328301301122505

namespace A001543

/-- `ratio[(a(n-1)+5)*a(n-1)]` -/
def P14701328301301122505.Spec : Prop :=
  ∀ n, P14701328301301122505.a n = (A001543 n : ℚ)

end A001543

/-! ## A001543.P5575479074130450420

`ratio[lcm(a(n-1)+10, a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A001543.P5575479074130450420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.lcm (f1 (n - 1) + 10) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A001543.P5575479074130450420

namespace A001543

/-- `ratio[lcm(a(n-1)+10, a(n-1))]` -/
def P5575479074130450420.Spec : Prop :=
  ∀ n, P5575479074130450420.a n = (A001543 n : ℚ)

end A001543

/-!
# A001544: A nonlinear recurrence: a(n) = a(n-1)^2 - 6*a(n-1) + 6, with a(0) = 1, a(1) = 7.

The programs for A001544, the canonical program `A001544.P14509805045045010423` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001544 has offset 0).

The definition of A001544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001544.P14509805045045010423

`a(n-1)*(a(n-1)-6)+6` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001544

/-- `a(n-1)*(a(n-1)-6)+6` -/
def P14509805045045010423.Spec : Prop :=
  ∀ n, P14509805045045010423.a n = A001544 n

theorem P14509805045045010423.correct : P14509805045045010423.Spec := by
  intro n
  simp only [A001544]

end A001544

/-! ## A001544.P6092759817113181491

`(3-a(n-1))²-3` with `a(0)=1, a(1)=7`
-/

namespace A001544.P6092759817113181491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (3 - a (n - 1)) ^ 2 - 3

end

end A001544.P6092759817113181491

namespace A001544

/-- `(3-a(n-1))²-3` -/
def P6092759817113181491.Spec : Prop :=
  ∀ n, P6092759817113181491.a n = A001544 n

theorem P6092759817113181491.correct : P6092759817113181491.Spec := by
  intro n
  simp only [A001544, Nat.add_sub_cancel, A001544.P6092759817113181491.a, A001544.P14509805045045010423.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001544

/-! ## A001544.P18306792406127506112

`(3-a(n-1))^2-3` with `a(0)=1, a(1)=7`
-/

namespace A001544.P18306792406127506112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (3 - a (n - 1)) ^ 2 - 3

end

end A001544.P18306792406127506112

namespace A001544

/-- `(3-a(n-1))^2-3` -/
def P18306792406127506112.Spec : Prop :=
  ∀ n, P18306792406127506112.a n = A001544 n

theorem P18306792406127506112.correct : P18306792406127506112.Spec := by
  intro n
  simp only [A001544, Nat.add_sub_cancel, A001544.P18306792406127506112.a, A001544.P14509805045045010423.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001544

/-! ## A001544.P7720990581002071623

`6-(6-a(n-1))*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A001544.P7720990581002071623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 - (6 - a (n - 1)) * a (n - 1)

end

end A001544.P7720990581002071623

namespace A001544

/-- `6-(6-a(n-1))*a(n-1)` -/
def P7720990581002071623.Spec : Prop :=
  ∀ n, P7720990581002071623.a n = A001544 n

theorem P7720990581002071623.correct : P7720990581002071623.Spec := by
  intro n
  simp only [A001544, Nat.add_sub_cancel, A001544.P7720990581002071623.a, A001544.P14509805045045010423.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001544

/-!
# A001545: a(n) = (5*n+1)*(5*n+4).

The programs for A001545, the canonical program `A001545.P4596200827424455748` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001545 has offset 0).

The definition of A001545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+4)` (program `A001545.P4596200827424455748`, by `A001545.P4596200827424455748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001545.P3645839279298788223

`50*n+a(n-1)` with `a(0)=4`
-/

namespace A001545.P3645839279298788223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  50 * n + a (n - 1)

end

end A001545.P3645839279298788223

namespace A001545

/-- `50*n+a(n-1)` -/
def P3645839279298788223.Spec : Prop :=
  ∀ n, (P3645839279298788223.a n : ℤ) = A001545 n

theorem P3645839279298788223.correct : P3645839279298788223.Spec := by
  intro n
  induction n with
  | zero => simp [A001545, A001545.P3645839279298788223.a, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001545, Nat.add_sub_cancel, A001545.P3645839279298788223.a, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001545

/-! ## A001545.P4596200827424455748

`(5*n+1)*(5*n+4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001545

/-- `(5*n+1)*(5*n+4)` -/
def P4596200827424455748.Spec : Prop :=
  ∀ n, (P4596200827424455748.a n : ℤ) = A001545 n

theorem P4596200827424455748.correct : P4596200827424455748.Spec := by
  intro n
  simp only [A001545]

end A001545

/-! ## A001545.P268749959564160498

`50*A000217(n)+4`
-/

namespace A001545.P268749959564160498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A000217 n + 4

end

end A001545.P268749959564160498

namespace A001545

/-- `50*A000217(n)+4` -/
def P268749959564160498.Spec : Prop :=
  ∀ n, P268749959564160498.a n = A001545 n

end A001545

/-! ## A001545.P16680779094107886654

`∑[a(n-1)+50]` with `a(0)=4, a(1)=50`
-/

namespace A001545.P16680779094107886654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 50] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001545.P16680779094107886654

namespace A001545

/-- `∑[a(n-1)+50]` -/
def P16680779094107886654.Spec : Prop :=
  ∀ n, (P16680779094107886654.a n : ℤ) = A001545 n

end A001545

/-! ## A001545.P7146071365689674223

`A177059(n)-2`
-/

namespace A001545.P7146071365689674223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n - 2

end

end A001545.P7146071365689674223

namespace A001545

/-- `A177059(n)-2` -/
def P7146071365689674223.Spec : Prop :=
  ∀ n, P7146071365689674223.a n = A001545 n

end A001545

/-! ## A001545.P4127873260801968781

`floor(sqrt(A001512(n)))`
-/

namespace A001545.P4127873260801968781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001512 n)

end

end A001545.P4127873260801968781

namespace A001545

/-- `floor(sqrt(A001512(n)))` -/
def P4127873260801968781.Spec : Prop :=
  ∀ n, P4127873260801968781.a n = A001545 n

end A001545

/-! ## A001545.P6985420983248318219

`5*A124080(n)+4`
-/

namespace A001545.P6985420983248318219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A124080 n + 4

end

end A001545.P6985420983248318219

namespace A001545

/-- `5*A124080(n)+4` -/
def P6985420983248318219.Spec : Prop :=
  ∀ n, P6985420983248318219.a n = A001545 n

end A001545

/-! ## A001545.P10743388847033443232

`(A152161(n)-5)/4`
-/

namespace A001545.P10743388847033443232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152161 n - 5 : ℚ) / 4

end

end A001545.P10743388847033443232

namespace A001545

/-- `(A152161(n)-5)/4` -/
def P10743388847033443232.Spec : Prop :=
  ∀ n, P10743388847033443232.a n = (A001545 n : ℚ)

end A001545

/-! ## A001545.P14776649957850578084

`A016874(n)+5*n`
-/

namespace A001545.P14776649957850578084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016874 n + (5 * n : ℤ)

end

end A001545.P14776649957850578084

namespace A001545

/-- `A016874(n)+5*n` -/
def P14776649957850578084.Spec : Prop :=
  ∀ n, P14776649957850578084.a n = A001545 n

end A001545

/-! ## A001545.P11581287705971352151

`5*A062786(n+1)-1`
-/

namespace A001545.P11581287705971352151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A062786 (n + 1) - 1

end

end A001545.P11581287705971352151

namespace A001545

/-- `5*A062786(n+1)-1` -/
def P11581287705971352151.Spec : Prop :=
  ∀ n, P11581287705971352151.a n = A001545 n

end A001545

/-! ## A001545.P10692585659610039593

`A124437(n+1)/2+4`
-/

namespace A001545.P10692585659610039593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124437 (n + 1) : ℚ) / 2 + 4

end

end A001545.P10692585659610039593

namespace A001545

/-- `A124437(n+1)/2+4` -/
def P10692585659610039593.Spec : Prop :=
  ∀ n, P10692585659610039593.a n = (A001545 n : ℚ)

end A001545

/-! ## A001545.P12805280455404684047

`A017413(n)+A007533(n)`
-/

namespace A001545.P12805280455404684047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n + A007533 n

end

end A001545.P12805280455404684047

namespace A001545

/-- `A017413(n)+A007533(n)` -/
def P12805280455404684047.Spec : Prop :=
  ∀ n, P12805280455404684047.a n = A001545 n

end A001545

/-! ## A001545.P14462151639600324981

`A163758(n)+A016826(n)`
-/

namespace A001545.P14462151639600324981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n + A016826 n

end

end A001545.P14462151639600324981

namespace A001545

/-- `A163758(n)+A016826(n)` -/
def P14462151639600324981.Spec : Prop :=
  ∀ n, P14462151639600324981.a n = A001545 n

end A001545

/-! ## A001545.P10197473699205094315

`A173308(n)+A108099(n)`
-/

namespace A001545.P10197473699205094315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173308 n + A108099 n

end

end A001545.P10197473699205094315

namespace A001545

/-- `A173308(n)+A108099(n)` -/
def P10197473699205094315.Spec : Prop :=
  ∀ n, P10197473699205094315.a n = A001545 n

end A001545

/-! ## A001545.P3769458690535520345

`A262221(n)+A061793(n)`
-/

namespace A001545.P3769458690535520345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n + A061793 n

end

end A001545.P3769458690535520345

namespace A001545

/-- `A262221(n)+A061793(n)` -/
def P3769458690535520345.Spec : Prop :=
  ∀ n, P3769458690535520345.a n = A001545 n

end A001545

/-! ## A001545.P8371225513557711075

`A085025(n)-A017293(n)`
-/

namespace A001545.P8371225513557711075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085025 n - A017293 n

end

end A001545.P8371225513557711075

namespace A001545

/-- `A085025(n)-A017293(n)` -/
def P8371225513557711075.Spec : Prop :=
  ∀ n, P8371225513557711075.a n = A001545 n

end A001545

/-! ## A001545.P14418204180754533117

`A177060(n)-A260955(n)`
-/

namespace A001545.P14418204180754533117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177060 n - A260955 n

end

end A001545.P14418204180754533117

namespace A001545

/-- `A177060(n)-A260955(n)` -/
def P14418204180754533117.Spec : Prop :=
  ∀ n, P14418204180754533117.a n = A001545 n

end A001545

/-! ## A001545.P9519867425279155512

`A001512(n)/A177059(n)`
-/

namespace A001545.P9519867425279155512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001512 n : ℚ) / (A177059 n : ℚ)

end

end A001545.P9519867425279155512

namespace A001545

/-- `A001512(n)/A177059(n)` -/
def P9519867425279155512.Spec : Prop :=
  ∀ n, P9519867425279155512.a n = (A001545 n : ℚ)

end A001545

/-! ## A001545.P11542324656507245435

`A069131(n+1)+A001539(n)`
-/

namespace A001545.P11542324656507245435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1) + A001539 n

end

end A001545.P11542324656507245435

namespace A001545

/-- `A069131(n+1)+A001539(n)` -/
def P11542324656507245435.Spec : Prop :=
  ∀ n, P11542324656507245435.a n = A001545 n

end A001545

/-! ## A001545.P15009056431638667462

`A195314(n+1)+A006222(n)`
-/

namespace A001545.P15009056431638667462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195314 (n + 1) + A006222 n

end

end A001545.P15009056431638667462

namespace A001545

/-- `A195314(n+1)+A006222(n)` -/
def P15009056431638667462.Spec : Prop :=
  ∀ n, P15009056431638667462.a n = A001545 n

end A001545

/-!
# A001546: a(n) = (8*n+1)*(8*n+3)*(8*n+5)*(8*n+7).

The programs for A001546, the canonical program `A001546.P1125380540475014133` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001546 has offset 0).

The definition of A001546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)*(8*n+3)*(8*n+5)*(8*n+7)` (program `A001546.P1125380540475014133`, by `A001546.P1125380540475014133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001546.P1125380540475014133

`(8*n+1)*(8*n+3)*(8*n+5)*(8*n+7)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001546

/-- `(8*n+1)*(8*n+3)*(8*n+5)*(8*n+7)` -/
def P1125380540475014133.Spec : Prop :=
  ∀ n, (P1125380540475014133.a n : ℤ) = A001546 n

theorem P1125380540475014133.correct : P1125380540475014133.Spec := by
  intro n
  simp only [A001546]

end A001546

/-! ## A001546.P7820239461252649743

`lcm(A001533(n), A177065(n))`
-/

namespace A001546.P7820239461252649743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001533 n) (A177065 n)

end

end A001546.P7820239461252649743

namespace A001546

/-- `lcm(A001533(n), A177065(n))` -/
def P7820239461252649743.Spec : Prop :=
  ∀ n, (P7820239461252649743.a n : ℤ) = A001546 n

end A001546

/-! ## A001546.P9059132613962906823

`A154633(2*n)`
-/

namespace A001546.P9059132613962906823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154633 (2 * n)

end

end A001546.P9059132613962906823

namespace A001546

/-- `A154633(2*n)` -/
def P9059132613962906823.Spec : Prop :=
  ∀ n, P9059132613962906823.a n = A001546 n

end A001546

/-! ## A001546.P6446136311705029974

`A190577(8*n+1)`
-/

namespace A001546.P6446136311705029974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190577 (8 * n + 1)

end

end A001546.P6446136311705029974

namespace A001546

/-- `A190577(8*n+1)` -/
def P6446136311705029974.Spec : Prop :=
  ∀ n, P6446136311705029974.a n = A001546 n

end A001546

/-! ## A001546.P7353401516427820129

`A117465(8*n+5)`
-/

namespace A001546.P7353401516427820129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (8 * n + 5)

end

end A001546.P7353401516427820129

namespace A001546

/-- `A117465(8*n+5)` -/
def P7353401516427820129.Spec : Prop :=
  ∀ n, P7353401516427820129.a n = A001546 n

end A001546

/-! ## A001546.P3676308480210974045

`lcm(3, A117465(A004770(n+1)))`
-/

namespace A001546.P3676308480210974045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A117465 (A004770 (n + 1)).toNat)

end

end A001546.P3676308480210974045

namespace A001546

/-- `lcm(3, A117465(A004770(n+1)))` -/
def P3676308480210974045.Spec : Prop :=
  ∀ n, (P3676308480210974045.a n : ℤ) = A001546 n

end A001546

/-!
# A001547: a(n) = (7*n+1)*(7*n+2)*(7*n+4).

The programs for A001547, the canonical program `A001547.P17451694999999469565` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001547 has offset 0).

The definition of A001547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)*(7*n+2)*(7*n+4)` (program `A001547.P17451694999999469565`, by `A001547.P17451694999999469565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001547.P17451694999999469565

`(7*n+1)*(7*n+2)*(7*n+4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001547

/-- `(7*n+1)*(7*n+2)*(7*n+4)` -/
def P17451694999999469565.Spec : Prop :=
  ∀ n, (P17451694999999469565.a n : ℤ) = A001547 n

theorem P17451694999999469565.correct : P17451694999999469565.Spec := by
  intro n
  simp only [A001547]

end A001547

/-! ## A001547.P6342453988533788505

`A016994(n)+A017007(n)-1`
-/

namespace A001547.P6342453988533788505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n + (A017007 n - 1)

end

end A001547.P6342453988533788505

namespace A001547

/-- `A016994(n)+A017007(n)-1` -/
def P6342453988533788505.Spec : Prop :=
  ∀ n, P6342453988533788505.a n = A001547 n

end A001547

/-! ## A001547.P13022354677944208565

`A016993(n)*A017018(n)-A016993(n)`
-/

namespace A001547.P13022354677944208565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A017018 n - A016993 n

end

end A001547.P13022354677944208565

namespace A001547

/-- `A016993(n)*A017018(n)-A016993(n)` -/
def P13022354677944208565.Spec : Prop :=
  ∀ n, P13022354677944208565.a n = A001547 n

end A001547

/-! ## A001547.P7204467588362547147

`A317637(7*n+1)`
-/

namespace A001547.P7204467588362547147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 (7 * n + 1)

end

end A001547.P7204467588362547147

namespace A001547

/-- `A317637(7*n+1)` -/
def P7204467588362547147.Spec : Prop :=
  ∀ n, P7204467588362547147.a n = A001547 n

end A001547

/-! ## A001547.P18210909463418849087

`A085490(A017005(n))-A017005(n)`
-/

namespace A001547.P18210909463418849087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A017005 n).toNat - A017005 n

end

end A001547.P18210909463418849087

namespace A001547

/-- `A085490(A017005(n))-A017005(n)` -/
def P18210909463418849087.Spec : Prop :=
  ∀ n, P18210909463418849087.a n = A001547 n

end A001547

/-! ## A001547.P17878169480212287067

`A152619(A016993(n))-A016993(n)`
-/

namespace A001547.P17878169480212287067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152619 (A016993 n).toNat - A016993 n

end

end A001547.P17878169480212287067

namespace A001547

/-- `A152619(A016993(n))-A016993(n)` -/
def P17878169480212287067.Spec : Prop :=
  ∀ n, P17878169480212287067.a n = A001547 n

end A001547

/-!
# A001548: Number of connected linear spaces with n (unlabeled) points.

The programs for A001548, there is no canonical definition to state claims against.
-/

/-! ## A001548.P6111497508103466040

`A228944(a(n-1)-(a(n-3)²-a(n-1)²))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A001548.P6111497508103466040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 1] fun n a =>
  A228944 (a (n - 1) - (a (n - 3) ^ 2 - a (n - 1) ^ 2)).toNat

end

end A001548.P6111497508103466040

/-! ## A001548.P6333881685103490375

`A339376(A194279(n+1))`
-/

namespace A001548.P6333881685103490375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 (A194279 (n + 1)).toNat

end

end A001548.P6333881685103490375

/-! ## A001548.P18211706459168992089

`A064876(A302126((2-n)²))`
-/

namespace A001548.P18211706459168992089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A302126 ((2 - (n : ℤ)) ^ 2).toNat).toNat

end

end A001548.P18211706459168992089

/-! ## A001548.P5692710677140087863

`A069160(A119611(n+1)+3)`
-/

namespace A001548.P5692710677140087863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069160 (A119611 (n + 1) + 3).toNat

end

end A001548.P5692710677140087863

/-! ## A001548.P13074136531736160248

`round(A019536(n+1)/A368097(n+2))`
-/

namespace A001548.P13074136531736160248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A019536 (n + 1) : ℚ) / (A368097 (n + 2) : ℚ))

end

end A001548.P13074136531736160248

/-!
# A001549: Related to Gilbreath conjecture.

The programs for A001549, there is no canonical definition to state claims against.
-/

/-! ## A001549.P6177103253431993864

`record[A133310(n)+A000232(A133310(n))]`
-/

namespace A001549.P6177103253431993864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n + A000232 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P6177103253431993864

/-! ## A001549.P11852519721247395118

`record[A003603(n+1)+A000232(A003603(n+1))]`
-/

namespace A001549.P11852519721247395118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1) + A000232 (A003603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P11852519721247395118

/-! ## A001549.P16469286206666268416

`record[A094727(n+1)+A000232(A094727(n+1))]`
-/

namespace A001549.P16469286206666268416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A000232 (A094727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P16469286206666268416

/-! ## A001549.P15052116555850451772

`record[A026238(n+2)+A000232(A026238(n+2))]`
-/

namespace A001549.P15052116555850451772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) + A000232 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P15052116555850451772

/-! ## A001549.P8212139148827193797

`record[A228179(n+2)+A000232(A228179(n+2))]`
-/

namespace A001549.P8212139148827193797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (n + 2) + A000232 (A228179 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P8212139148827193797

/-! ## A001549.P2546475212677628544

`record[A092543(n+1)+A000232(A092543(n+1))]`
-/

namespace A001549.P2546475212677628544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + A000232 (A092543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001549.P2546475212677628544

/-!
# A001550: a(n) = 1^n + 2^n + 3^n.

The programs for A001550, the canonical program `A001550.P1461169715829142149` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001550 has offset 0).

The definition of A001550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001550.P1461169715829142149

`1+2^n+3^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001550

/-- `1+2^n+3^n` -/
def P1461169715829142149.Spec : Prop :=
  ∀ n, (P1461169715829142149.a n : ℤ) = A001550 n

theorem P1461169715829142149.correct : P1461169715829142149.Spec := by
  intro n
  simp only [A001550]

end A001550

/-! ## A001550.P17198147807007519775

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=3, a(1)=3, a(2)=8`
-/

namespace A001550.P17198147807007519775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 8] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001550.P17198147807007519775

namespace A001550

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P17198147807007519775.Spec : Prop :=
  ∀ n, P17198147807007519775.a n = A001550 n

end A001550

/-! ## A001550.P6047415548762501639

`abs(1-A173657(n))`
-/

namespace A001550.P6047415548762501639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A173657 n|

end

end A001550.P6047415548762501639

namespace A001550

/-- `abs(1-A173657(n))` -/
def P6047415548762501639.Spec : Prop :=
  ∀ n, P6047415548762501639.a n = A001550 n

end A001550

/-! ## A001550.P13112679806934535768

`Δ[A094374(n)+n]`
-/

namespace A001550.P13112679806934535768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001550.P13112679806934535768

namespace A001550

/-- `Δ[A094374(n)+n]` -/
def P13112679806934535768.Spec : Prop :=
  ∀ n, P13112679806934535768.a n = A001550 n

end A001550

/-! ## A001550.P15185865133537310379

`Δ[A099754(n)+n]`
-/

namespace A001550.P15185865133537310379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001550.P15185865133537310379

namespace A001550

/-- `Δ[A099754(n)+n]` -/
def P15185865133537310379.Spec : Prop :=
  ∀ n, P15185865133537310379.a n = A001550 n

end A001550

/-! ## A001550.P13342041800373223244

`∑{d}[-a(n-1), A000005(#)^n]` with `a(0)=4`
-/

namespace A001550.P13342041800373223244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d ^ n

end

end A001550.P13342041800373223244

namespace A001550

/-- `∑{d}[-a(n-1), A000005(#)^n]` -/
def P13342041800373223244.Spec : Prop :=
  ∀ n, P13342041800373223244.a n = A001550 n

end A001550

/-! ## A001550.P5484251450405051987

`abs(2*(A099754(n)+1)-A052548(n))`
-/

namespace A001550.P5484251450405051987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A099754 n + 1) - A052548 n|

end

end A001550.P5484251450405051987

namespace A001550

/-- `abs(2*(A099754(n)+1)-A052548(n))` -/
def P5484251450405051987.Spec : Prop :=
  ∀ n, P5484251450405051987.a n = A001550 n

end A001550

/-! ## A001550.P11095048099178740909

`abs(2*(A007051(n)+A000051(n))-A052548(n))`
-/

namespace A001550.P11095048099178740909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A007051 n + A000051 n) - A052548 n|

end

end A001550.P11095048099178740909

namespace A001550

/-- `abs(2*(A007051(n)+A000051(n))-A052548(n))` -/
def P11095048099178740909.Spec : Prop :=
  ∀ n, P11095048099178740909.a n = A001550 n

end A001550

/-! ## A001550.P14642174140846047463

`abs(2*(A115098(n)+A000079(n))-A052548(n))`
-/

namespace A001550.P14642174140846047463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A115098 n + A000079 n) - A052548 n|

end

end A001550.P14642174140846047463

namespace A001550

/-- `abs(2*(A115098(n)+A000079(n))-A052548(n))` -/
def P14642174140846047463.Spec : Prop :=
  ∀ n, P14642174140846047463.a n = A001550 n

end A001550

/-! ## A001550.P14115669114751736681

`(A134350(n)+5)/2`
-/

namespace A001550.P14115669114751736681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134350 n + 5 : ℚ) / 2

end

end A001550.P14115669114751736681

namespace A001550

/-- `(A134350(n)+5)/2` -/
def P14115669114751736681.Spec : Prop :=
  ∀ n, P14115669114751736681.a n = (A001550 n : ℚ)

end A001550

/-! ## A001550.P11001050161393545279

`Δ[A120846(n)-A003462(n)]`
-/

namespace A001550.P11001050161393545279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120846 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001550.P11001050161393545279

namespace A001550

/-- `Δ[A120846(n)-A003462(n)]` -/
def P11001050161393545279.Spec : Prop :=
  ∀ n, P11001050161393545279.a n = A001550 n

end A001550

/-! ## A001550.P13104211761304339758

`Δ[A005126(n)+A000244(n)/2]`
-/

namespace A001550.P13104211761304339758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005126 n : ℚ) + (A000244 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001550.P13104211761304339758

namespace A001550

/-- `Δ[A005126(n)+A000244(n)/2]` -/
def P13104211761304339758.Spec : Prop :=
  ∀ n, P13104211761304339758.a n = (A001550 n : ℚ)

end A001550

/-! ## A001550.P9581058709346147907

`(A052919(n+1)+A000051(n+1))/2`
-/

namespace A001550.P9581058709346147907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052919 (n + 1) + A000051 (n + 1) : ℚ) / 2

end

end A001550.P9581058709346147907

namespace A001550

/-- `(A052919(n+1)+A000051(n+1))/2` -/
def P9581058709346147907.Spec : Prop :=
  ∀ n, P9581058709346147907.a n = (A001550 n : ℚ)

end A001550

/-! ## A001550.P10106012830381267902

`(A083318(n+1)+A052919(n+1))/2`
-/

namespace A001550.P10106012830381267902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083318 (n + 1) + A052919 (n + 1) : ℚ) / 2

end

end A001550.P10106012830381267902

namespace A001550

/-- `(A083318(n+1)+A052919(n+1))/2` -/
def P10106012830381267902.Spec : Prop :=
  ∀ n, P10106012830381267902.a n = (A001550 n : ℚ)

end A001550

/-! ## A001550.P17912316211639195004

`A199110(n)%A304168(n+1)`
-/

namespace A001550.P17912316211639195004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199110 n) (A304168 (n + 1))

end

end A001550.P17912316211639195004

namespace A001550

/-- `A199110(n)%A304168(n+1)` -/
def P17912316211639195004.Spec : Prop :=
  ∀ n, P17912316211639195004.a n = A001550 n

end A001550

/-! ## A001550.P11664084873557892459

`record[A137688(n)+A140303(n)+1]`
-/

namespace A001550.P11664084873557892459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (A140303 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001550.P11664084873557892459

namespace A001550

/-- `record[A137688(n)+A140303(n)+1]` -/
def P11664084873557892459.Spec : Prop :=
  ∀ n, P11664084873557892459.a n = A001550 n

end A001550

/-!
# A001551: a(n) = 1^n + 2^n + 3^n + 4^n.

The programs for A001551, the canonical program `A001551.P17165524038092359861` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001551 has offset 0).

The definition of A001551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001551.P17165524038092359861

`1+2^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001551

/-- `1+2^n+3^n+4^n` -/
def P17165524038092359861.Spec : Prop :=
  ∀ n, (P17165524038092359861.a n : ℤ) = A001551 n

theorem P17165524038092359861.correct : P17165524038092359861.Spec := by
  intro n
  simp only [A001551]

end A001551

/-! ## A001551.P1112784310848266437

`2*A196836(n)`
-/

namespace A001551.P1112784310848266437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196836 n

end

end A001551.P1112784310848266437

namespace A001551

/-- `2*A196836(n)` -/
def P1112784310848266437.Spec : Prop :=
  ∀ n, P1112784310848266437.a n = A001551 n

end A001551

/-! ## A001551.P3471147034978328226

`lcm(2, A074526(n)+1)`
-/

namespace A001551.P3471147034978328226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A074526 n + 1)

end

end A001551.P3471147034978328226

namespace A001551

/-- `lcm(2, A074526(n)+1)` -/
def P3471147034978328226.Spec : Prop :=
  ∀ n, (P3471147034978328226.a n : ℤ) = A001551 n

end A001551

/-! ## A001551.P3163928013981225877

`abs(A254028(n)-A254030(n))`
-/

namespace A001551.P3163928013981225877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254028 n - A254030 n|

end

end A001551.P3163928013981225877

namespace A001551

/-- `abs(A254028(n)-A254030(n))` -/
def P3163928013981225877.Spec : Prop :=
  ∀ n, P3163928013981225877.a n = A001551 n

end A001551

/-! ## A001551.P15946259978772684671

`2*(A007582(n)+A007051(n))`
-/

namespace A001551.P15946259978772684671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007582 n + A007051 n)

end

end A001551.P15946259978772684671

namespace A001551

/-- `2*(A007582(n)+A007051(n))` -/
def P15946259978772684671.Spec : Prop :=
  ∀ n, P15946259978772684671.a n = A001551 n

end A001551

/-! ## A001551.P7800714745672448154

`2*(A053154(n)+A034472(n))`
-/

namespace A001551.P7800714745672448154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053154 n + A034472 n)

end

end A001551.P7800714745672448154

namespace A001551

/-- `2*(A053154(n)+A034472(n))` -/
def P7800714745672448154.Spec : Prop :=
  ∀ n, P7800714745672448154.a n = A001551 n

end A001551

/-! ## A001551.P5806632385331385245

`2*(A134169(n)+A094374(n))`
-/

namespace A001551.P5806632385331385245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134169 n + A094374 n)

end

end A001551.P5806632385331385245

namespace A001551

/-- `2*(A134169(n)+A094374(n))` -/
def P5806632385331385245.Spec : Prop :=
  ∀ n, P5806632385331385245.a n = A001551 n

end A001551

/-! ## A001551.P10453067738819187307

`2*(A124302(n+1)+A005418(2*n+1))`
-/

namespace A001551.P10453067738819187307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A124302 (n + 1) + A005418 (2 * n + 1))

end

end A001551.P10453067738819187307

namespace A001551

/-- `2*(A124302(n+1)+A005418(2*n+1))` -/
def P10453067738819187307.Spec : Prop :=
  ∀ n, P10453067738819187307.a n = A001551 n

end A001551

/-! ## A001551.P15417279940976610989

`2*(A007581(n+1)-A056473(2*(n+1)))`
-/

namespace A001551.P15417279940976610989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007581 (n + 1) - A056473 (2 * (n + 1)))

end

end A001551.P15417279940976610989

namespace A001551

/-- `2*(A007581(n+1)-A056473(2*(n+1)))` -/
def P15417279940976610989.Spec : Prop :=
  ∀ n, P15417279940976610989.a n = A001551 n

end A001551

/-! ## A001551.P5249897823641367170

`2*(A007581(n+1)-A056510(2*n+1))`
-/

namespace A001551.P5249897823641367170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007581 (n + 1) - A056510 (2 * n + 1))

end

end A001551.P5249897823641367170

namespace A001551

/-- `2*(A007581(n+1)-A056510(2*n+1))` -/
def P5249897823641367170.Spec : Prop :=
  ∀ n, P5249897823641367170.a n = A001551 n

end A001551

/-! ## A001551.P15525334809966565052

`(A052539(n)+A007689(n))*A000035(2*n+1)`
-/

namespace A001551.P15525334809966565052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052539 n + A007689 n) * A000035 (2 * n + 1)

end

end A001551.P15525334809966565052

namespace A001551

/-- `(A052539(n)+A007689(n))*A000035(2*n+1)` -/
def P15525334809966565052.Spec : Prop :=
  ∀ n, P15525334809966565052.a n = A001551 n

end A001551

/-!
# A001552: a(n) = 1^n + 2^n + ... + 5^n.

The programs for A001552, the canonical program `A001552.P2305574518595139067` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001552 has offset 0).

The definition of A001552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001552.P2305574518595139067

`1+2^n+3^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001552

/-- `1+2^n+3^n+4^n+5^n` -/
def P2305574518595139067.Spec : Prop :=
  ∀ n, (P2305574518595139067.a n : ℤ) = A001552 n

theorem P2305574518595139067.correct : P2305574518595139067.Spec := by
  intro n
  simp only [A001552]

end A001552

/-! ## A001552.P12373387227870559051

`abs(A254030(n)-A254031(n))`
-/

namespace A001552.P12373387227870559051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254030 n - A254031 n|

end

end A001552.P12373387227870559051

namespace A001552

/-- `abs(A254030(n)-A254031(n))` -/
def P12373387227870559051.Spec : Prop :=
  ∀ n, P12373387227870559051.a n = A001552 n

end A001552

/-! ## A001552.P17597643915340398668

`or(1, A074547(n)+A000051(n))`
-/

namespace A001552.P17597643915340398668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074547 n + A000051 n)

end

end A001552.P17597643915340398668

namespace A001552

/-- `or(1, A074547(n)+A000051(n))` -/
def P17597643915340398668.Spec : Prop :=
  ∀ n, P17597643915340398668.a n = A001552 n

end A001552

/-! ## A001552.P1504130440942514326

`xor(1, A074532(n)+A000244(n))`
-/

namespace A001552.P1504130440942514326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074532 n + A000244 n)

end

end A001552.P1504130440942514326

namespace A001552

/-- `xor(1, A074532(n)+A000244(n))` -/
def P1504130440942514326.Spec : Prop :=
  ∀ n, P1504130440942514326.a n = A001552 n

end A001552

/-! ## A001552.P16033289177564478672

`(A074547(n)+A000051(n))*A007318(∑[n])`
-/

namespace A001552.P16033289177564478672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074547 n + A000051 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001552.P16033289177564478672

namespace A001552

/-- `(A074547(n)+A000051(n))*A007318(∑[n])` -/
def P16033289177564478672.Spec : Prop :=
  ∀ n, P16033289177564478672.a n = A001552 n

end A001552

/-!
# A001553: a(n) = 1^n + 2^n + ... + 6^n.

The programs for A001553, the canonical program `A001553.P11361571009777096566` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001553 has offset 0).

The definition of A001553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001553.P11361571009777096566

`1+2^n+3^n+4^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001553

/-- `1+2^n+3^n+4^n+5^n+6^n` -/
def P11361571009777096566.Spec : Prop :=
  ∀ n, (P11361571009777096566.a n : ℤ) = A001553 n

theorem P11361571009777096566.correct : P11361571009777096566.Spec := by
  intro n
  simp only [A001553]

end A001553

/-! ## A001553.P14795256501546449762

`abs(A254031(n)-A254144(n))`
-/

namespace A001553.P14795256501546449762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254031 n - A254144 n|

end

end A001553.P14795256501546449762

namespace A001553

/-- `abs(A254031(n)-A254144(n))` -/
def P14795256501546449762.Spec : Prop :=
  ∀ n, P14795256501546449762.a n = A001553 n

end A001553

/-! ## A001553.P6366879756129611618

`lcm(A001579(n)+A001576(n), abs(1-n)-n)`
-/

namespace A001553.P6366879756129611618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001579 n + A001576 n) (|1 - (n : ℤ)| - (n : ℤ))

end

end A001553.P6366879756129611618

namespace A001553

/-- `lcm(A001579(n)+A001576(n), abs(1-n)-n)` -/
def P6366879756129611618.Spec : Prop :=
  ∀ n, (P6366879756129611618.a n : ℤ) = A001553 n

end A001553

/-! ## A001553.P17867991770329817943

`or(A001579(n)+A001576(n), A304273(n+1))`
-/

namespace A001553.P17867991770329817943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001579 n + A001576 n) (A304273 (n + 1))

end

end A001553.P17867991770329817943

namespace A001553

/-- `or(A001579(n)+A001576(n), A304273(n+1))` -/
def P17867991770329817943.Spec : Prop :=
  ∀ n, P17867991770329817943.a n = A001553 n

end A001553

/-! ## A001553.P15504787548991533191

`(A254031(n)-A254144(n))*A033999(2*n+1)`
-/

namespace A001553.P15504787548991533191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254031 n - A254144 n) * A033999 (2 * n + 1)

end

end A001553.P15504787548991533191

namespace A001553

/-- `(A254031(n)-A254144(n))*A033999(2*n+1)` -/
def P15504787548991533191.Spec : Prop :=
  ∀ n, P15504787548991533191.a n = A001553 n

end A001553

/-! ## A001553.P9936099854488676852

`abs(A001556(n)-A074580(n))`
-/

namespace A001553.P9936099854488676852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001556 n - A074580 n|

end

end A001553.P9936099854488676852

namespace A001553

/-- `abs(A001556(n)-A074580(n))` -/
def P9936099854488676852.Spec : Prop :=
  ∀ n, P9936099854488676852.a n = A001553 n

end A001553

/-! ## A001553.P16641215203175197120

`A308477(A000124(n+7)-(n+1))`
-/

namespace A001553.P16641215203175197120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A001553.P16641215203175197120

namespace A001553

/-- `A308477(A000124(n+7)-(n+1))` -/
def P16641215203175197120.Spec : Prop :=
  ∀ n, P16641215203175197120.a n = A001553 n

end A001553

/-!
# A001554: a(n) = 1^n + 2^n + ... + 7^n.

The programs for A001554, the canonical program `A001554.P2025650633643354615` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001554 has offset 0).

The definition of A001554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001554.P2025650633643354615

`1+2^n+3^n+4^n+5^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001554

/-- `1+2^n+3^n+4^n+5^n+6^n+7^n` -/
def P2025650633643354615.Spec : Prop :=
  ∀ n, (P2025650633643354615.a n : ℤ) = A001554 n

theorem P2025650633643354615.correct : P2025650633643354615.Spec := by
  intro n
  simp only [A001554]

end A001554

/-! ## A001554.P1304439309984769074

`abs(A254144(n)-A254145(n))`
-/

namespace A001554.P1304439309984769074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254144 n - A254145 n|

end

end A001554.P1304439309984769074

namespace A001554

/-- `abs(A254144(n)-A254145(n))` -/
def P1304439309984769074.Spec : Prop :=
  ∀ n, P1304439309984769074.a n = A001554 n

end A001554

/-! ## A001554.P16821432461754920086

`and(A001553(n)+A000420(n), gcd(2, n)-3)`
-/

namespace A001554.P16821432461754920086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001553 n + A000420 n) ((Nat.gcd 2 n : ℤ) - 3)

end

end A001554.P16821432461754920086

namespace A001554

/-- `and(A001553(n)+A000420(n), gcd(2, n)-3)` -/
def P16821432461754920086.Spec : Prop :=
  ∀ n, P16821432461754920086.a n = A001554 n

end A001554

/-! ## A001554.P16353035303252463659

`(A001553(n)+A000420(n))*char[A008482(n)]`
-/

namespace A001554.P16353035303252463659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n + A000420 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001554.P16353035303252463659

namespace A001554

/-- `(A001553(n)+A000420(n))*char[A008482(n)]` -/
def P16353035303252463659.Spec : Prop :=
  ∀ n, P16353035303252463659.a n = A001554 n

end A001554

/-! ## A001554.P3962627940246254342

`(A001553(n)+A000420(n))*A193592(C(n, 2))`
-/

namespace A001554.P3962627940246254342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n + A000420 n) * A193592 (Nat.choose n 2)

end

end A001554.P3962627940246254342

namespace A001554

/-- `(A001553(n)+A000420(n))*A193592(C(n, 2))` -/
def P3962627940246254342.Spec : Prop :=
  ∀ n, P3962627940246254342.a n = A001554 n

end A001554

/-! ## A001554.P14461773740970306591

`(A001553(n)+A000420(n))*A219347(C(n, 2))`
-/

namespace A001554.P14461773740970306591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n + A000420 n) * A219347 (Nat.choose n 2)

end

end A001554.P14461773740970306591

namespace A001554

/-- `(A001553(n)+A000420(n))*A219347(C(n, 2))` -/
def P14461773740970306591.Spec : Prop :=
  ∀ n, P14461773740970306591.a n = A001554 n

end A001554

/-! ## A001554.P13180471899281565103

`(A001553(n)+A000420(n))*A007913(lcm(2, n+1)²)`
-/

namespace A001554.P13180471899281565103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n + A000420 n) * A007913 (Nat.lcm 2 (n + 1) ^ 2)

end

end A001554.P13180471899281565103

namespace A001554

/-- `(A001553(n)+A000420(n))*A007913(lcm(2, n+1)²)` -/
def P13180471899281565103.Spec : Prop :=
  ∀ n, P13180471899281565103.a n = A001554 n

end A001554

/-! ## A001554.P2939849882027718732

`(A001553(n)+A000420(n))*A007318(A000217(n+2))`
-/

namespace A001554.P2939849882027718732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n + A000420 n) * A007318 (A000217 (n + 2)).toNat

end

end A001554.P2939849882027718732

namespace A001554

/-- `(A001553(n)+A000420(n))*A007318(A000217(n+2))` -/
def P2939849882027718732.Spec : Prop :=
  ∀ n, P2939849882027718732.a n = A001554 n

end A001554

/-!
# A001555: a(n) = 1^n + 2^n + ... + 8^n.

The programs for A001555, the canonical program `A001555.P13748076003785863365` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001555 has offset 0).

The definition of A001555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001555.P13748076003785863365

`A001554(n)+A001018(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001555

/-- `A001554(n)+A001018(n)` -/
def P13748076003785863365.Spec : Prop :=
  ∀ n, P13748076003785863365.a n = A001555 n

theorem P13748076003785863365.correct : P13748076003785863365.Spec := by
  intro n
  simp only [A001555]

end A001555

/-! ## A001555.P4391403026598181187

`7^n+8^n+6^n+5^n+4^n+3^n+2^n+1`
-/

namespace A001555.P4391403026598181187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 8 ^ n + 6 ^ n + 5 ^ n + 4 ^ n + 3 ^ n + 2 ^ n + 1

end

end A001555.P4391403026598181187

namespace A001555

/-- `7^n+8^n+6^n+5^n+4^n+3^n+2^n+1` -/
def P4391403026598181187.Spec : Prop :=
  ∀ n, (P4391403026598181187.a n : ℤ) = A001555 n

end A001555

/-! ## A001555.P10471976648822410278

`abs(A254145(n)-A254146(n))`
-/

namespace A001555.P10471976648822410278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254145 n - A254146 n|

end

end A001555.P10471976648822410278

namespace A001555

/-- `abs(A254145(n)-A254146(n))` -/
def P10471976648822410278.Spec : Prop :=
  ∀ n, P10471976648822410278.a n = A001555 n

end A001555

/-! ## A001555.P3015953047858536797

`record[A267470(n+1)%A267470(A233583(n+1))]`
-/

namespace A001555.P3015953047858536797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267470 (n + 1)) (A267470 (A233583 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001555.P3015953047858536797

namespace A001555

/-- `record[A267470(n+1)%A267470(A233583(n+1))]` -/
def P3015953047858536797.Spec : Prop :=
  ∀ n, P3015953047858536797.a n = A001555 n

end A001555

/-! ## A001555.P8442934157890792707

`abs(A001019(n)-A001556(n))`
-/

namespace A001555.P8442934157890792707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A001556 n|

end

end A001555.P8442934157890792707

namespace A001555

/-- `abs(A001019(n)-A001556(n))` -/
def P8442934157890792707.Spec : Prop :=
  ∀ n, P8442934157890792707.a n = A001555 n

end A001555

/-!
# A001556: a(n) = 1^n + 2^n + ... + 9^n.

The programs for A001556, the canonical program `A001556.P2048726826330034795` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001556 has offset 0).

The definition of A001556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001556.P2048726826330034795

`A001555(n)+A001019(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001556

/-- `A001555(n)+A001019(n)` -/
def P2048726826330034795.Spec : Prop :=
  ∀ n, P2048726826330034795.a n = A001556 n

theorem P2048726826330034795.correct : P2048726826330034795.Spec := by
  intro n
  simp only [A001556]

end A001556

/-! ## A001556.P12312314635553171948

`A254147(n)-A254146(n)`
-/

namespace A001556.P12312314635553171948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n - A254146 n

end

end A001556.P12312314635553171948

namespace A001556

/-- `A254147(n)-A254146(n)` -/
def P12312314635553171948.Spec : Prop :=
  ∀ n, P12312314635553171948.a n = A001556 n

end A001556

/-! ## A001556.P18236256756472887767

`A001555(n)+A000244(n)²`
-/

namespace A001556.P18236256756472887767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + A000244 n ^ 2

end

end A001556.P18236256756472887767

namespace A001556

/-- `A001555(n)+A000244(n)²` -/
def P18236256756472887767.Spec : Prop :=
  ∀ n, P18236256756472887767.a n = A001556 n

end A001556

/-! ## A001556.P11893450378081130566

`A001555(n)+Δ[A002452(n)]`
-/

namespace A001556.P11893450378081130566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + (f1 (n + 1) - f1 n)

end

end A001556.P11893450378081130566

namespace A001556

/-- `A001555(n)+Δ[A002452(n)]` -/
def P11893450378081130566.Spec : Prop :=
  ∀ n, P11893450378081130566.a n = A001556 n

end A001556

/-! ## A001556.P8968045427265442611

`A001555(n)+A000244(2*n)`
-/

namespace A001556.P8968045427265442611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + A000244 (2 * n)

end

end A001556.P8968045427265442611

namespace A001556

/-- `A001555(n)+A000244(2*n)` -/
def P8968045427265442611.Spec : Prop :=
  ∀ n, P8968045427265442611.a n = A001556 n

end A001556

/-! ## A001556.P15070508331868173454

`A270369(n+1)-A147996(n+1)`
-/

namespace A001556.P15070508331868173454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 (n + 1) - A147996 (n + 1)

end

end A001556.P15070508331868173454

namespace A001556

/-- `A270369(n+1)-A147996(n+1)` -/
def P15070508331868173454.Spec : Prop :=
  ∀ n, P15070508331868173454.a n = A001556 n

end A001556

/-! ## A001556.P1160718636627591480

`A001576(n)+A074580(n)+A001579(n)`
-/

namespace A001556.P1160718636627591480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n + (A074580 n + A001579 n)

end

end A001556.P1160718636627591480

namespace A001556

/-- `A001576(n)+A074580(n)+A001579(n)` -/
def P1160718636627591480.Spec : Prop :=
  ∀ n, P1160718636627591480.a n = A001556 n

end A001556

/-! ## A001556.P706657872578527010

`A001550(n)+A074580(n)+A074561(n)`
-/

namespace A001556.P706657872578527010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n + (A074580 n + A074561 n)

end

end A001556.P706657872578527010

namespace A001556

/-- `A001550(n)+A074580(n)+A074561(n)` -/
def P706657872578527010.Spec : Prop :=
  ∀ n, P706657872578527010.a n = A001556 n

end A001556

/-! ## A001556.P7408465287817283668

`A001557(n)-A011557(n)`
-/

namespace A001556.P7408465287817283668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001557 n - A011557 n

end

end A001556.P7408465287817283668

namespace A001556

/-- `A001557(n)-A011557(n)` -/
def P7408465287817283668.Spec : Prop :=
  ∀ n, P7408465287817283668.a n = A001556 n

end A001556

/-!
# A001557: a(n) = 1^n + 2^n + ... + 10^n.

The programs for A001557, the canonical program `A001557.P6866617434651115240` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001557 has offset 0).

The definition of A001557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001557.P6866617434651115240

`A001556(n)+A011557(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001557

/-- `A001556(n)+A011557(n)` -/
def P6866617434651115240.Spec : Prop :=
  ∀ n, P6866617434651115240.a n = A001557 n

theorem P6866617434651115240.correct : P6866617434651115240.Spec := by
  intro n
  simp only [A001557]

end A001557

/-! ## A001557.P16915299363869916748

`A221904(n)+A001555(n)`
-/

namespace A001557.P16915299363869916748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221904 n + A001555 n

end

end A001557.P16915299363869916748

namespace A001557

/-- `A221904(n)+A001555(n)` -/
def P16915299363869916748.Spec : Prop :=
  ∀ n, P16915299363869916748.a n = A001557 n

end A001557

/-! ## A001557.P12555689982924685866

`A254148(n)-A254147(n)`
-/

namespace A001557.P12555689982924685866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254148 n - A254147 n

end

end A001557.P12555689982924685866

namespace A001557

/-- `A254148(n)-A254147(n)` -/
def P12555689982924685866.Spec : Prop :=
  ∀ n, P12555689982924685866.a n = A001557 n

end A001557

/-! ## A001557.P17089494057134289176

`10^n+A001555(n)+A000244(n)²`
-/

namespace A001557.P17089494057134289176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A001555 n + A000244 n ^ 2)

end

end A001557.P17089494057134289176

namespace A001557

/-- `10^n+A001555(n)+A000244(n)²` -/
def P17089494057134289176.Spec : Prop :=
  ∀ n, P17089494057134289176.a n = A001557 n

end A001557

/-! ## A001557.P7168736890495298179

`10^n+A001555(n)+A000244(2*n)`
-/

namespace A001557.P7168736890495298179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A001555 n + A000244 (2 * n))

end

end A001557.P7168736890495298179

namespace A001557

/-- `10^n+A001555(n)+A000244(2*n)` -/
def P7168736890495298179.Spec : Prop :=
  ∀ n, P7168736890495298179.a n = A001557 n

end A001557

/-! ## A001557.P9055457688214893552

`A001019(n)+A011557(n)+A001555(n)`
-/

namespace A001557.P9055457688214893552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A011557 n + A001555 n)

end

end A001557.P9055457688214893552

namespace A001557

/-- `A001019(n)+A011557(n)+A001555(n)` -/
def P9055457688214893552.Spec : Prop :=
  ∀ n, P9055457688214893552.a n = A001557 n

end A001557

/-! ## A001557.P5012299167521202847

`10^n+A001550(n)+A074580(n)+A074561(n)`
-/

namespace A001557.P5012299167521202847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A001550 n + (A074580 n + A074561 n))

end

end A001557.P5012299167521202847

namespace A001557

/-- `10^n+A001550(n)+A074580(n)+A074561(n)` -/
def P5012299167521202847.Spec : Prop :=
  ∀ n, P5012299167521202847.a n = A001557 n

end A001557

/-! ## A001557.P3813981938051291247

`A308477(A000217(n+10)+11)`
-/

namespace A001557.P3813981938051291247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000217 (n + 10) + 11).toNat

end

end A001557.P3813981938051291247

namespace A001557

/-- `A308477(A000217(n+10)+11)` -/
def P3813981938051291247.Spec : Prop :=
  ∀ n, P3813981938051291247.a n = A001557 n

end A001557

/-!
# A001558: Number of hill-free Dyck paths of semilength n+3 and having length of first descent equal to 1 (a hill in a Dyck path is a peak at level 1).

The programs for A001558, the canonical program `A001558.P12122410934121705503` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001558 has offset 0).

The definition of A001558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001558.P12122410934121705503

`A000957(n+4)-A000957(n+3)-A000957(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001558

/-- `A000957(n+4)-A000957(n+3)-A000957(n+2)` -/
def P12122410934121705503.Spec : Prop :=
  ∀ n, P12122410934121705503.a n = A001558 n

theorem P12122410934121705503.correct : P12122410934121705503.Spec := by
  intro n
  simp only [A001558]

end A001558

/-! ## A001558.P14930253452159887797

`Δ[A289589(n+2)]`
-/

namespace A001558.P14930253452159887797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289589 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001558.P14930253452159887797

namespace A001558

/-- `Δ[A289589(n+2)]` -/
def P14930253452159887797.Spec : Prop :=
  ∀ n, P14930253452159887797.a n = A001558 n

end A001558

/-! ## A001558.P18073785895522658309

`A118973(n+2)-A104629(n)`
-/

namespace A001558.P18073785895522658309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118973 (n + 2) - A104629 n

end

end A001558.P18073785895522658309

namespace A001558

/-- `A118973(n+2)-A104629(n)` -/
def P18073785895522658309.Spec : Prop :=
  ∀ n, P18073785895522658309.a n = A001558 n

end A001558

/-! ## A001558.P3320862597672439374

`Δ[A104629(n)]-A000957(n+2)`
-/

namespace A001558.P3320862597672439374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000957 (n + 2)

end

end A001558.P3320862597672439374

namespace A001558

/-- `Δ[A104629(n)]-A000957(n+2)` -/
def P3320862597672439374.Spec : Prop :=
  ∀ n, P3320862597672439374.a n = A001558 n

end A001558

/-! ## A001558.P17870108649694207946

`A104629(n+1)-A000958(n+2)`
-/

namespace A001558.P17870108649694207946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 (n + 1) - A000958 (n + 2)

end

end A001558.P17870108649694207946

namespace A001558

/-- `A104629(n+1)-A000958(n+2)` -/
def P17870108649694207946.Spec : Prop :=
  ∀ n, P17870108649694207946.a n = A001558 n

end A001558

/-! ## A001558.P10364612866790727440

`A122920(n+1)-A000957(n+2)`
-/

namespace A001558.P10364612866790727440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 (n + 1) - A000957 (n + 2)

end

end A001558.P10364612866790727440

namespace A001558

/-- `A122920(n+1)-A000957(n+2)` -/
def P10364612866790727440.Spec : Prop :=
  ∀ n, P10364612866790727440.a n = A001558 n

end A001558

/-! ## A001558.P10128131458948216307

`A071724(n+2)-A104629(n+1)`
-/

namespace A001558.P10128131458948216307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 2) - A104629 (n + 1)

end

end A001558.P10128131458948216307

namespace A001558

/-- `A071724(n+2)-A104629(n+1)` -/
def P10128131458948216307.Spec : Prop :=
  ∀ n, P10128131458948216307.a n = A001558 n

end A001558

/-! ## A001558.P7601115460778567052

`A000958(n+3)-A000108(n+2)`
-/

namespace A001558.P7601115460778567052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 3) - A000108 (n + 2)

end

end A001558.P7601115460778567052

namespace A001558

/-- `A000958(n+3)-A000108(n+2)` -/
def P7601115460778567052.Spec : Prop :=
  ∀ n, P7601115460778567052.a n = A001558 n

end A001558

/-! ## A001558.P10928592565624865273

`A118973(n+2)-A000957(n+3)`
-/

namespace A001558.P10928592565624865273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118973 (n + 2) - A000957 (n + 3)

end

end A001558.P10928592565624865273

namespace A001558

/-- `A118973(n+2)-A000957(n+3)` -/
def P10928592565624865273.Spec : Prop :=
  ∀ n, P10928592565624865273.a n = A001558 n

end A001558

/-! ## A001558.P14488262288784742291

`A122920(n+1)+A122920(n)-A104629(n)`
-/

namespace A001558.P14488262288784742291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 (n + 1) + (A122920 n - A104629 n)

end

end A001558.P14488262288784742291

namespace A001558

/-- `A122920(n+1)+A122920(n)-A104629(n)` -/
def P14488262288784742291.Spec : Prop :=
  ∀ n, P14488262288784742291.a n = A001558 n

end A001558

/-! ## A001558.P7318840997282631961

`A122920(n+1)+A135336(n)-A135336(n+1)`
-/

namespace A001558.P7318840997282631961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 (n + 1) + (A135336 n - A135336 (n + 1))

end

end A001558.P7318840997282631961

namespace A001558

/-- `A122920(n+1)+A135336(n)-A135336(n+1)` -/
def P7318840997282631961.Spec : Prop :=
  ∀ n, P7318840997282631961.a n = A001558 n

end A001558

/-! ## A001558.P7848600282604380338

`A114495(n+2)+A114495(n+2)-A389115(n)`
-/

namespace A001558.P7848600282604380338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114495 (n + 2) + (A114495 (n + 2) - A389115 n)

end

end A001558.P7848600282604380338

namespace A001558

/-- `A114495(n+2)+A114495(n+2)-A389115(n)` -/
def P7848600282604380338.Spec : Prop :=
  ∀ n, P7848600282604380338.a n = A001558 n

end A001558

/-! ## A001558.P5976696740916619738

`2*A172025(n)-A172061(n)`
-/

namespace A001558.P5976696740916619738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172025 n - A172061 n

end

end A001558.P5976696740916619738

namespace A001558

/-- `2*A172025(n)-A172061(n)` -/
def P5976696740916619738.Spec : Prop :=
  ∀ n, P5976696740916619738.a n = A001558 n

end A001558

/-! ## A001558.P1646802131333828829

`A065602(∑[n+2]+5)`
-/

namespace A001558.P1646802131333828829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065602 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001558.P1646802131333828829

namespace A001558

/-- `A065602(∑[n+2]+5)` -/
def P1646802131333828829.Spec : Prop :=
  ∀ n, P1646802131333828829.a n = A001558 n

end A001558

/-! ## A001558.P4245011497234052777

`record[Δ[record[A167772(n)]]]`
-/

namespace A001558.P4245011497234052777
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001558.P4245011497234052777

namespace A001558

/-- `record[Δ[record[A167772(n)]]]` -/
def P4245011497234052777.Spec : Prop :=
  ∀ n, P4245011497234052777.a n = A001558 n

end A001558

/-! ## A001558.P7562133583102054226

`A167772(A167614(n+2))`
-/

namespace A001558.P7562133583102054226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A167614 (n + 2)).toNat

end

end A001558.P7562133583102054226

namespace A001558

/-- `A167772(A167614(n+2))` -/
def P7562133583102054226.Spec : Prop :=
  ∀ n, P7562133583102054226.a n = A001558 n

end A001558

/-! ## A001558.P2420621847939983868

`A167772(eq[6, A180662(n)])`
-/

namespace A001558.P2420621847939983868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001558.P2420621847939983868

namespace A001558

/-- `A167772(eq[6, A180662(n)])` -/
def P2420621847939983868.Spec : Prop :=
  ∀ n, P2420621847939983868.a n = A001558 n

end A001558

/-! ## A001558.P11492158700876714965

`A167772(A340266(n+2)+1)`
-/

namespace A001558.P11492158700876714965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A340266 (n + 2) + 1).toNat

end

end A001558.P11492158700876714965

namespace A001558

/-- `A167772(A340266(n+2)+1)` -/
def P11492158700876714965.Spec : Prop :=
  ∀ n, P11492158700876714965.a n = A001558 n

end A001558

/-!
# A001559: a(0) = 1, a(1) = 4; thereafter a(n)*(2n + 10) - a(n-1)*(11n + 35) + a(n-2)*(8n + 2) + a(n-3)*(15n + 7) + a(n-4)*(4n - 2) = 0.

The programs for A001559, the canonical program `A001559.P3290663552833298120` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001559 has offset 0).

The definition of A001559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001559.P15983837409792640629

`A391408(n)+A391408(n)-A114495(n+2)`
-/

namespace A001559.P15983837409792640629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391408 n + (A391408 n - A114495 (n + 2))

end

end A001559.P15983837409792640629

namespace A001559

/-- `A391408(n)+A391408(n)-A114495(n+2)` -/
def P15983837409792640629.Spec : Prop :=
  ∀ n, P15983837409792640629.a n = A001559 n

end A001559

/-! ## A001559.P3290663552833298120

`A001558(n+1)-A104629(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001559

/-- `A001558(n+1)-A104629(n+1)` -/
def P3290663552833298120.Spec : Prop :=
  ∀ n, P3290663552833298120.a n = A001559 n

theorem P3290663552833298120.correct : P3290663552833298120.Spec := by
  intro n
  simp only [A001559]

end A001559

/-! ## A001559.P6853216164987746513

`A122920(n+2)-A000958(n+3)`
-/

namespace A001559.P6853216164987746513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122920 (n + 2) - A000958 (n + 3)

end

end A001559.P6853216164987746513

namespace A001559

/-- `A122920(n+2)-A000958(n+3)` -/
def P6853216164987746513.Spec : Prop :=
  ∀ n, P6853216164987746513.a n = A001559 n

end A001559

/-! ## A001559.P9921372819849403588

`(A001558(n)+A000344(n+2))/2`
-/

namespace A001559.P9921372819849403588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001558 n + A000344 (n + 2) : ℚ) / 2

end

end A001559.P9921372819849403588

namespace A001559

/-- `(A001558(n)+A000344(n+2))/2` -/
def P9921372819849403588.Spec : Prop :=
  ∀ n, P9921372819849403588.a n = (A001559 n : ℚ)

end A001559

/-! ## A001559.P7281588988995453188

`A071724(n+3)-A000958(n+4)`
-/

namespace A001559.P7281588988995453188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 3) - A000958 (n + 4)

end

end A001559.P7281588988995453188

namespace A001559

/-- `A071724(n+3)-A000958(n+4)` -/
def P7281588988995453188.Spec : Prop :=
  ∀ n, P7281588988995453188.a n = A001559 n

end A001559

/-! ## A001559.P17565511646086121173

`A001558(n+1)-(A001558(n)+A000958(n+2))`
-/

namespace A001559.P17565511646086121173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001558 (n + 1) - (A001558 n + A000958 (n + 2))

end

end A001559.P17565511646086121173

namespace A001559

/-- `A001558(n+1)-(A001558(n)+A000958(n+2))` -/
def P17565511646086121173.Spec : Prop :=
  ∀ n, P17565511646086121173.a n = A001559 n

end A001559

/-! ## A001559.P7011401699120741741

`2*A172061(n)-A172062(n)`
-/

namespace A001559.P7011401699120741741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172061 n - A172062 n

end

end A001559.P7011401699120741741

namespace A001559

/-- `2*A172061(n)-A172062(n)` -/
def P7011401699120741741.Spec : Prop :=
  ∀ n, P7011401699120741741.a n = A001559 n

end A001559

/-! ## A001559.P17178550123579811748

`A126093(∑[n+2]+3)`
-/

namespace A001559.P17178550123579811748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126093 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001559.P17178550123579811748

namespace A001559

/-- `A126093(∑[n+2]+3)` -/
def P17178550123579811748.Spec : Prop :=
  ∀ n, P17178550123579811748.a n = A001559 n

end A001559

/-! ## A001559.P16803444889013085507

`A065602(A167614(n+2)+2)`
-/

namespace A001559.P16803444889013085507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065602 (A167614 (n + 2) + 2).toNat

end

end A001559.P16803444889013085507

namespace A001559

/-- `A065602(A167614(n+2)+2)` -/
def P16803444889013085507.Spec : Prop :=
  ∀ n, P16803444889013085507.a n = A001559 n

end A001559

/-! ## A001559.P2035752028477525864

`A065602(A000217(n+3)+5)`
-/

namespace A001559.P2035752028477525864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065602 (A000217 (n + 3) + 5).toNat

end

end A001559.P2035752028477525864

namespace A001559

/-- `A065602(A000217(n+3)+5)` -/
def P2035752028477525864.Spec : Prop :=
  ∀ n, P2035752028477525864.a n = A001559 n

end A001559

/-! ## A001559.P3245350231783083400

`A167772(A000124(n+4)+3)`
-/

namespace A001559.P3245350231783083400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A000124 (n + 4) + 3).toNat

end

end A001559.P3245350231783083400

namespace A001559

/-- `A167772(A000124(n+4)+3)` -/
def P3245350231783083400.Spec : Prop :=
  ∀ n, P3245350231783083400.a n = A001559 n

end A001559

/-! ## A001559.P595652511741310039

`A167772(A000096(n+3)+5)`
-/

namespace A001559.P595652511741310039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A000096 (n + 3) + 5).toNat

end

end A001559.P595652511741310039

namespace A001559

/-- `A167772(A000096(n+3)+5)` -/
def P595652511741310039.Spec : Prop :=
  ∀ n, P595652511741310039.a n = A001559 n

end A001559

/-! ## A001559.P16219515116567998341

`A167772(A000217(n+5)-(n+1))`
-/

namespace A001559.P16219515116567998341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A001559.P16219515116567998341

namespace A001559

/-- `A167772(A000217(n+5)-(n+1))` -/
def P16219515116567998341.Spec : Prop :=
  ∀ n, P16219515116567998341.a n = A001559 n

end A001559

/-!
# A001560: Numbers with an even number of partitions.

The programs for A001560, there is no canonical definition to state claims against.
-/

/-! ## A001560.P6784294127414528840

`comp[A052002(n+1)]`
-/

namespace A001560.P6784294127414528840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001560.P6784294127414528840

/-! ## A001560.P16512074034936277426

`∪[A127219(n+1), A163096(n+1)]`
-/

namespace A001560.P16512074034936277426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001560.P16512074034936277426

/-! ## A001560.P3663788649816154656

`∪[A237278(n+1), A237280(n+1)]`
-/

namespace A001560.P3663788649816154656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001560.P3663788649816154656

/-! ## A001560.P7130499980316195711

`lt[0, A278478(n)]`
-/

namespace A001560.P7130499980316195711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001560.P7130499980316195711

/-! ## A001560.P14053663870856235214

`lt[0, A355676(n)]`
-/

namespace A001560.P14053663870856235214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001560.P14053663870856235214

/-! ## A001560.P3602230890822261238

`eq[1, (1-A121062(n))²]`
-/

namespace A001560.P3602230890822261238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A121062 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001560.P3602230890822261238

/-! ## A001560.P890694385300388222

`eq[0, A040051(n)]`
-/

namespace A001560.P890694385300388222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001560.P890694385300388222

/-! ## A001560.P6011723635296631930

`lt[and(1, A260221(n)), 1]`
-/

namespace A001560.P6011723635296631930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260221 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001560.P6011723635296631930

/-! ## A001560.P12965513789270576575

`eq[A000007(n+1), A000007(A278478(n))]`
-/

namespace A001560.P12965513789270576575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A278478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001560.P12965513789270576575

/-! ## A001560.P9199691921856192526

`eq[2, A087173(n+1)]+1`
-/

namespace A001560.P9199691921856192526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001560.P9199691921856192526

/-! ## A001560.P15748752425547132077

`eq[0, A000041(n)%2]`
-/

namespace A001560.P15748752425547132077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001560.P15748752425547132077

/-! ## A001560.P922211703274497549

`eq[1, gcd(2, A000065(n))]`
-/

namespace A001560.P922211703274497549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000065 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001560.P922211703274497549

/-! ## A001560.P3077150938507234334

`lt[and(1, ∑[A002865(n)]), 1]`
-/

namespace A001560.P3077150938507234334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A001560.P3077150938507234334

/-! ## A001560.P12005392412576341317

`lt[A000041(n+1)%2, 1]+1`
-/

namespace A001560.P12005392412576341317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A001560.P12005392412576341317

/-! ## A001560.P9734075416653694333

`eq[0, and(1, A000041(n+2))]+2`
-/

namespace A001560.P9734075416653694333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A001560.P9734075416653694333

/-! ## A001560.P7898593399327995698

`eq[0, and(1, A000041(2*n-n))]`
-/

namespace A001560.P7898593399327995698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 (2 * n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001560.P7898593399327995698

/-! ## A001560.P11693010184171429486

`eq[lcm(2, A183011(n)), A183011(n)]`
-/

namespace A001560.P11693010184171429486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183011 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001560.P11693010184171429486

/-!
# A001561: a(n) = (7*n+3)*(7*n+5)*(7*n+6).

The programs for A001561, the canonical program `A001561.P9645186876632002026` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001561 has offset 0).

The definition of A001561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)*(7*n+5)*(7*n+6)` (program `A001561.P9645186876632002026`, by `A001561.P9645186876632002026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001561.P9645186876632002026

`(7*n+3)*(7*n+5)*(7*n+6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001561

/-- `(7*n+3)*(7*n+5)*(7*n+6)` -/
def P9645186876632002026.Spec : Prop :=
  ∀ n, (P9645186876632002026.a n : ℤ) = A001561 n

theorem P9645186876632002026.correct : P9645186876632002026.Spec := by
  intro n
  simp only [A001561]

end A001561

/-! ## A001561.P13333138656922943846

`A017043(n)+1-A017054(n)`
-/

namespace A001561.P13333138656922943846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n + (1 - A017054 n)

end

end A001561.P13333138656922943846

namespace A001561

/-- `A017043(n)+1-A017054(n)` -/
def P13333138656922943846.Spec : Prop :=
  ∀ n, P13333138656922943846.a n = A001561 n

end A001561

/-! ## A001561.P3374351135167425402

`A017030(n)*A017053(n)-A017053(n)`
-/

namespace A001561.P3374351135167425402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n * A017053 n - A017053 n

end

end A001561.P3374351135167425402

namespace A001561

/-- `A017030(n)*A017053(n)-A017053(n)` -/
def P3374351135167425402.Spec : Prop :=
  ∀ n, P3374351135167425402.a n = A001561 n

end A001561

/-! ## A001561.P16837131180607672606

`A123972(A017041(n))-1`
-/

namespace A001561.P16837131180607672606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123972 (A017041 n).toNat - 1

end

end A001561.P16837131180607672606

namespace A001561

/-- `A123972(A017041(n))-1` -/
def P16837131180607672606.Spec : Prop :=
  ∀ n, P16837131180607672606.a n = A001561 n

end A001561

/-! ## A001561.P11328648798188870301

`A017043(n)-A005563(A017041(n))`
-/

namespace A001561.P11328648798188870301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n - A005563 (A017041 n).toNat

end

end A001561.P11328648798188870301

namespace A001561

/-- `A017043(n)-A005563(A017041(n))` -/
def P11328648798188870301.Spec : Prop :=
  ∀ n, P11328648798188870301.a n = A001561 n

end A001561

/-!
# A001562: Numbers n such that (10^n + 1)/11 is a prime.

The programs for A001562, there is no canonical definition to state claims against.
-/

/-! ## A001562.P15024757263421164897

`2*A054416(n+1)+1`
-/

namespace A001562.P15024757263421164897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054416 (n + 1) + 1

end

end A001562.P15024757263421164897

/-! ## A001562.P16829881478436154891

`A054416(n+1)+A054416(n+1)+A007318(∑[n])`
-/

namespace A001562.P16829881478436154891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054416 (n + 1) + (A054416 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A001562.P16829881478436154891

/-! ## A001562.P16992701198063646517

`A000108(C(2, n+2))+A054416(n+1)+A054416(n+1)`
-/

namespace A001562.P16992701198063646517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) + (A054416 (n + 1) + A054416 (n + 1))

end

end A001562.P16992701198063646517

/-! ## A001562.P12896777777933252424

`p?[A138920(n+1)]`
-/

namespace A001562.P12896777777933252424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001562.P12896777777933252424

/-! ## A001562.P5247708501591979508

`p?[A309358(n+1)]`
-/

namespace A001562.P5247708501591979508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001562.P5247708501591979508

/-!
# A001563: a(n) = n*n! = (n+1)! - n!.

The programs for A001563, the canonical program `A001563.P7265670906522758193` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001563 has offset 0).

The definition of A001563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*n!` (program `A001563.P7265670906522758193`, by `A001563.P7265670906522758193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001563.P7265670906522758193

`n*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001563

/-- `n*n!` -/
def P7265670906522758193.Spec : Prop :=
  ∀ n, (P7265670906522758193.a n : ℤ) = A001563 n

theorem P7265670906522758193.correct : P7265670906522758193.Spec := by
  intro n
  simp only [A001563]

end A001563

/-! ## A001563.P11962663784522868147

`(n+1)!-n!`
-/

namespace A001563.P11962663784522868147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (Nat.factorial n : ℤ)

end

end A001563.P11962663784522868147

namespace A001563

/-- `(n+1)!-n!` -/
def P11962663784522868147.Spec : Prop :=
  ∀ n, P11962663784522868147.a n = A001563 n

theorem P11962663784522868147.correct : P11962663784522868147.Spec := by
  intro n
  simp only [A001563, Nat.add_sub_cancel, A001563.P11962663784522868147.a, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001563

/-! ## A001563.P17787542451717601220

`Δ[n!]`
-/

namespace A001563.P17787542451717601220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001563.P17787542451717601220

namespace A001563

/-- `Δ[n!]` -/
def P17787542451717601220.Spec : Prop :=
  ∀ n, P17787542451717601220.a n = A001563 n

theorem P17787542451717601220.correct : P17787542451717601220.Spec := by
  intro n
  simp only [A001563, Nat.add_sub_cancel, A001563.P17787542451717601220.f1, A001563.P17787542451717601220.a, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001563

/-! ## A001563.P6593961113532266349

`Δ[n*a(n-1)]` with `a(0)=1`
-/

namespace A001563.P6593961113532266349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001563.P6593961113532266349

namespace A001563

/-- `Δ[n*a(n-1)]` -/
def P6593961113532266349.Spec : Prop :=
  ∀ n, P6593961113532266349.a n = A001563 n

end A001563

/-! ## A001563.P8429046356697088786

`n*∏[round(1/acot(n))]`
-/

namespace A001563.P8429046356697088786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001563.P8429046356697088786

namespace A001563

/-- `n*∏[round(1/acot(n))]` -/
def P8429046356697088786.Spec : Prop :=
  ∀ n, P8429046356697088786.a n = A001563 n

end A001563

/-! ## A001563.P2951895932355762871

`Δ[∏[C(n, a(n-1))]]` with `a(0)=1`
-/

namespace A001563.P2951895932355762871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.choose n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001563.P2951895932355762871

namespace A001563

/-- `Δ[∏[C(n, a(n-1))]]` -/
def P2951895932355762871.Spec : Prop :=
  ∀ n, P2951895932355762871.a n = A001563 n

end A001563

/-! ## A001563.P8045695967772708580

`n*∏[gcd(n, ∏[n+1])]`
-/

namespace A001563.P8045695967772708580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001563.P8045695967772708580

namespace A001563

/-- `n*∏[gcd(n, ∏[n+1])]` -/
def P8045695967772708580.Spec : Prop :=
  ∀ n, (P8045695967772708580.a n : ℤ) = A001563 n

end A001563

/-! ## A001563.P5800267671092397171

`n/(n+1)*∏[n+1]`
-/

namespace A001563.P5800267671092397171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A001563.P5800267671092397171

namespace A001563

/-- `n/(n+1)*∏[n+1]` -/
def P5800267671092397171.Spec : Prop :=
  ∀ n, P5800267671092397171.a n = (A001563 n : ℚ)

end A001563

/-! ## A001563.P5525877670198641441

`Δ[∏[floor(cosh(log(2*n+1)))]]`
-/

namespace A001563.P5525877670198641441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (2 * n + 1 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001563.P5525877670198641441

namespace A001563

/-- `Δ[∏[floor(cosh(log(2*n+1)))]]` -/
def P5525877670198641441.Spec : Prop :=
  ∀ n, P5525877670198641441.a n = A001563 n

end A001563

/-!
# A001564: 2nd differences of factorial numbers.

The programs for A001564, the canonical program `A001564.P4879143712675295352` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001564 has offset 0).

The definition of A001564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001564.P4879143712675295352

`(1+n+n²)*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001564

/-- `(1+n+n²)*n!` -/
def P4879143712675295352.Spec : Prop :=
  ∀ n, (P4879143712675295352.a n : ℤ) = A001564 n

theorem P4879143712675295352.correct : P4879143712675295352.Spec := by
  intro n
  simp only [A001564]

end A001564

/-! ## A001564.P8158378267620577134

`A001563(n+1)-A001563(n)`
-/

namespace A001564.P8158378267620577134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) - A001563 n

end

end A001564.P8158378267620577134

namespace A001564

/-- `A001563(n+1)-A001563(n)` -/
def P8158378267620577134.Spec : Prop :=
  ∀ n, P8158378267620577134.a n = A001564 n

end A001564

/-! ## A001564.P16874466807902473318

`Δ[Δ[n!]]`
-/

namespace A001564.P16874466807902473318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001564.P16874466807902473318

namespace A001564

/-- `Δ[Δ[n!]]` -/
def P16874466807902473318.Spec : Prop :=
  ∀ n, P16874466807902473318.a n = A001564 n

theorem P16874466807902473318.correct : P16874466807902473318.Spec := by
  intro n
  simp only [A001564, Nat.add_sub_cancel, A001564.P16874466807902473318.f2, A001564.P16874466807902473318.f1, A001564.P16874466807902473318.a, A001564.P4879143712675295352.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001564

/-! ## A001564.P16663482397595040251

`n!*or(1, ∑[2*n])`
-/

namespace A001564.P16663482397595040251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001564.P16663482397595040251

namespace A001564

/-- `n!*or(1, ∑[2*n])` -/
def P16663482397595040251.Spec : Prop :=
  ∀ n, (P16663482397595040251.a n : ℤ) = A001564 n

end A001564

/-! ## A001564.P2164441729938252416

`n!*xor(1, ∑[2*n])`
-/

namespace A001564.P2164441729938252416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001564.P2164441729938252416

namespace A001564

/-- `n!*xor(1, ∑[2*n])` -/
def P2164441729938252416.Spec : Prop :=
  ∀ n, (P2164441729938252416.a n : ℤ) = A001564 n

end A001564

/-! ## A001564.P10301153934678094844

`Δ[Δ[n*a(n-1)]]` with `a(0)=1`
-/

namespace A001564.P10301153934678094844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001564.P10301153934678094844

namespace A001564

/-- `Δ[Δ[n*a(n-1)]]` -/
def P10301153934678094844.Spec : Prop :=
  ∀ n, P10301153934678094844.a n = A001564 n

end A001564

/-! ## A001564.P47446499921252922

`n!+n*(n+1)!`
-/

namespace A001564.P47446499921252922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + n * Nat.factorial (n + 1)

end

end A001564.P47446499921252922

namespace A001564

/-- `n!+n*(n+1)!` -/
def P47446499921252922.Spec : Prop :=
  ∀ n, (P47446499921252922.a n : ℤ) = A001564 n

theorem P47446499921252922.correct : P47446499921252922.Spec := by
  intro n
  simp only [A001564, Nat.add_sub_cancel, A001564.P47446499921252922.a, A001564.P4879143712675295352.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001564

/-! ## A001564.P16492699999102891211

`Δ[n/(n+1)*∏[n+1]]`
-/

namespace A001564.P16492699999102891211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001564.P16492699999102891211

namespace A001564

/-- `Δ[n/(n+1)*∏[n+1]]` -/
def P16492699999102891211.Spec : Prop :=
  ∀ n, P16492699999102891211.a n = (A001564 n : ℚ)

end A001564

/-! ## A001564.P7094918582490406737

`∏[n+3-(n-1)/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A001564.P7094918582490406737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 3 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001564.P7094918582490406737

namespace A001564

/-- `∏[n+3-(n-1)/a(n-1)]` -/
def P7094918582490406737.Spec : Prop :=
  ∀ n, P7094918582490406737.a n = (A001564 n : ℚ)

end A001564

/-! ## A001564.P11426222877428275722

`A068106(∑[n+3])`
-/

namespace A001564.P11426222877428275722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001564.P11426222877428275722

namespace A001564

/-- `A068106(∑[n+3])` -/
def P11426222877428275722.Spec : Prop :=
  ∀ n, P11426222877428275722.a n = A001564 n

end A001564

/-!
# A001565: 3rd differences of factorial numbers.

The programs for A001565, the canonical program `A001565.P13638913885383872891` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001565 has offset 0).

The definition of A001565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001565.P13638913885383872891

`(n^3+3*n²+5*n+2)*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001565

/-- `(n^3+3*n²+5*n+2)*n!` -/
def P13638913885383872891.Spec : Prop :=
  ∀ n, (P13638913885383872891.a n : ℤ) = A001565 n

theorem P13638913885383872891.correct : P13638913885383872891.Spec := by
  intro n
  simp only [A001565]

end A001565

/-! ## A001565.P11959722135558025271

`Δ[Δ[Δ[n!]]]`
-/

namespace A001565.P11959722135558025271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001565.P11959722135558025271

namespace A001565

/-- `Δ[Δ[Δ[n!]]]` -/
def P11959722135558025271.Spec : Prop :=
  ∀ n, P11959722135558025271.a n = A001565 n

theorem P11959722135558025271.correct : P11959722135558025271.Spec := by
  intro n
  simp only [A001565, Nat.add_sub_cancel, A001565.P11959722135558025271.f3, A001565.P11959722135558025271.f2, A001565.P11959722135558025271.f1, A001565.P11959722135558025271.a, A001565.P13638913885383872891.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001565

/-! ## A001565.P6655216249557345783

`Δ[Δ[Δ[n*a(n-1)]]]` with `a(0)=1`
-/

namespace A001565.P6655216249557345783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  n * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001565.P6655216249557345783

namespace A001565

/-- `Δ[Δ[Δ[n*a(n-1)]]]` -/
def P6655216249557345783.Spec : Prop :=
  ∀ n, P6655216249557345783.a n = A001565 n

end A001565

/-! ## A001565.P14694479275857295909

`Δ[Δ[n/(n+1)*∏[n+1]]]`
-/

namespace A001565.P14694479275857295909
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001565.P14694479275857295909

namespace A001565

/-- `Δ[Δ[n/(n+1)*∏[n+1]]]` -/
def P14694479275857295909.Spec : Prop :=
  ∀ n, P14694479275857295909.a n = (A001565 n : ℚ)

end A001565

/-! ## A001565.P4493064610915926943

`A116853(∑[n+3])`
-/

namespace A001565.P4493064610915926943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001565.P4493064610915926943

namespace A001565

/-- `A116853(∑[n+3])` -/
def P4493064610915926943.Spec : Prop :=
  ∀ n, P4493064610915926943.a n = A001565 n

end A001565

/-! ## A001565.P2527080391223534598

`A061312(∑[n+2]+3)`
-/

namespace A001565.P2527080391223534598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061312 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001565.P2527080391223534598

namespace A001565

/-- `A061312(∑[n+2]+3)` -/
def P2527080391223534598.Spec : Prop :=
  ∀ n, P2527080391223534598.a n = A001565 n

end A001565

/-! ## A001565.P6305925656234422519

`Δ[2*A001564(n)]/2`
-/

namespace A001565.P6305925656234422519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001564 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A001565.P6305925656234422519

namespace A001565

/-- `Δ[2*A001564(n)]/2` -/
def P6305925656234422519.Spec : Prop :=
  ∀ n, P6305925656234422519.a n = (A001565 n : ℚ)

end A001565

/-! ## A001565.P376693028333801909

`A068106(∑[n+3]+n+3)`
-/

namespace A001565.P376693028333801909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001565.P376693028333801909

namespace A001565

/-- `A068106(∑[n+3]+n+3)` -/
def P376693028333801909.Spec : Prop :=
  ∀ n, P376693028333801909.a n = A001565 n

end A001565

/-! ## A001565.P6573671655343350400

`A047920(A167614(n+2))`
-/

namespace A001565.P6573671655343350400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A167614 (n + 2)).toNat

end

end A001565.P6573671655343350400

namespace A001565

/-- `A047920(A167614(n+2))` -/
def P6573671655343350400.Spec : Prop :=
  ∀ n, P6573671655343350400.a n = A001565 n

end A001565

/-! ## A001565.P3992616156306155148

`A000142(n)*A094792(n)`
-/

namespace A001565.P3992616156306155148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A094792 n

end

end A001565.P3992616156306155148

namespace A001565

/-- `A000142(n)*A094792(n)` -/
def P3992616156306155148.Spec : Prop :=
  ∀ n, P3992616156306155148.a n = A001565 n

end A001565

/-!
# A001566: a(0) = 3; thereafter, a(n) = a(n-1)^2 - 2.

The programs for A001566, the canonical program `A001566.P13627623403973856705` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001566 has offset 0).

The definition of A001566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A001566.P13627623403973856705`, by `A001566.P13627623403973856705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001566.P13627623403973856705

`a(n-1)²-2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001566

/-- `a(n-1)²-2` -/
def P13627623403973856705.Spec : Prop :=
  ∀ n, P13627623403973856705.a n = A001566 n

theorem P13627623403973856705.correct : P13627623403973856705.Spec := by
  intro n
  simp only [A001566]

end A001566

/-! ## A001566.P10399958627131355337

`ceil((ϕ^2^n)²)`
-/

namespace A001566.P10399958627131355337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ 2 ^ n) ^ 2⌉

end

end A001566.P10399958627131355337

namespace A001566

/-- `ceil((ϕ^2^n)²)` -/
def P10399958627131355337.Spec : Prop :=
  ∀ n, P10399958627131355337.a n = A001566 n

end A001566

/-! ## A001566.P4487892782943904180

`A213681(n)/2`
-/

namespace A001566.P4487892782943904180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213681 n : ℚ) / 2

end

end A001566.P4487892782943904180

namespace A001566

/-- `A213681(n)/2` -/
def P4487892782943904180.Spec : Prop :=
  ∀ n, P4487892782943904180.a n = (A001566 n : ℚ)

end A001566

/-! ## A001566.P10313066698869637436

`A005248(2^n)`
-/

namespace A001566.P10313066698869637436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (2 ^ n)

end

end A001566.P10313066698869637436

namespace A001566

/-- `A005248(2^n)` -/
def P10313066698869637436.Spec : Prop :=
  ∀ n, P10313066698869637436.a n = A001566 n

end A001566

/-!
# A001567: Fermat pseudoprimes to base 2, also called Sarrus numbers or Poulet numbers.

The programs for A001567, there is no canonical definition to state claims against.
-/

/-! ## A001567.P5143609461663719484

`∪[A050217(n+1), A080747(n+1)]`
-/

namespace A001567.P5143609461663719484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P5143609461663719484

/-! ## A001567.P17877249840748195851

`∪[A066488(n+1), A080747(n+1)]`
-/

namespace A001567.P17877249840748195851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P17877249840748195851

/-! ## A001567.P10252966687280373872

`∪[A002997(n+1), A153508(n+1)]`
-/

namespace A001567.P10252966687280373872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P10252966687280373872

/-! ## A001567.P8276804546004679413

`∪[A020230(n+1), A178723(n+1)]`
-/

namespace A001567.P8276804546004679413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P8276804546004679413

/-! ## A001567.P12231907370299177346

`∪[A006970(n+1), A227136(n+1)]`
-/

namespace A001567.P12231907370299177346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P12231907370299177346

/-! ## A001567.P13520880528131719332

`∪[A080747(n+1), A153508(n+1)]`
-/

namespace A001567.P13520880528131719332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P13520880528131719332

/-! ## A001567.P7672032799417187929

`∪[A177884(n+1), A178723(n+1)]`
-/

namespace A001567.P7672032799417187929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P7672032799417187929

/-! ## A001567.P17661454471575075150

`A300101(n+1)*A306413(n+1)+1`
-/

namespace A001567.P17661454471575075150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300101 (n + 1) * A306413 (n + 1) + 1

end

end A001567.P17661454471575075150

/-! ## A001567.P84472050089171431

`∩[A020136(n+1), A020137(n+1)]`
-/

namespace A001567.P84472050089171431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P84472050089171431

/-! ## A001567.P11946455565659205006

`∩[A020136(n+1), A020160(n+1)]`
-/

namespace A001567.P11946455565659205006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P11946455565659205006

/-! ## A001567.P7434024228621745208

`∩[A020137(n+1), A020160(n+1)]`
-/

namespace A001567.P7434024228621745208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P7434024228621745208

/-! ## A001567.P15550186512060078411

`∩[A020137(n+1), A020144(n+1)]`
-/

namespace A001567.P15550186512060078411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P15550186512060078411

/-! ## A001567.P15763289915242876059

`∩[A020136(n+1), A122785(n+1)]`
-/

namespace A001567.P15763289915242876059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P15763289915242876059

/-! ## A001567.P6465176791553926291

`∩[A020144(n+1), A122785(n+1)]`
-/

namespace A001567.P6465176791553926291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P6465176791553926291

/-! ## A001567.P398181165303557337

`∩[A020144(n+1), A020160(n+1)]`
-/

namespace A001567.P398181165303557337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P398181165303557337

/-! ## A001567.P13476708831060442496

`∩[A020136(n+1), A306259(n+1)]`
-/

namespace A001567.P13476708831060442496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P13476708831060442496

/-! ## A001567.P17866994995447849995

`∩[A020160(n+1), A122785(n+1)]`
-/

namespace A001567.P17866994995447849995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P17866994995447849995

/-! ## A001567.P4253069448934540372

`∩[A020160(n+1), A020192(n+1)]`
-/

namespace A001567.P4253069448934540372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001567.P4253069448934540372

/-!
# A001569: Sum_{n>=0} a(n)*x^n/n!^2 = BesselI(0,2*(1-exp(x))^(1/2)).

The programs for A001569, there is no canonical definition to state claims against.
-/

/-! ## A001569.P6456702296064439804

`A008617(A015574(n))-n`
-/

namespace A001569.P6456702296064439804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A015574 n).toNat - (n : ℤ)

end

end A001569.P6456702296064439804

/-! ## A001569.P7204284762152558910

`A168377(∑[A090882(∏{p}[n+1, #])])`
-/

namespace A001569.P7204284762152558910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001569.P7204284762152558910

/-!
# A001570: Numbers k such that k^2 is centered hexagonal.

The programs for A001570, the canonical program `A001570.P2871570791347874611` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001570 has offset 1).

The definition of A001570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001570.P2871570791347874611

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001570

/-- `14*a(n-1)-a(n-2)` -/
def P2871570791347874611.Spec : Prop :=
  ∀ n, P2871570791347874611.a n = A001570 (n + 1)

theorem P2871570791347874611.correct : P2871570791347874611.Spec := by
  intro n
  simp only [A001570, Nat.add_sub_cancel]

end A001570

/-! ## A001570.P1663118764799422530

`4*A076140(n)+1`
-/

namespace A001570.P1663118764799422530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A076140 n + 1

end

end A001570.P1663118764799422530

namespace A001570

/-- `4*A076140(n)+1` -/
def P1663118764799422530.Spec : Prop :=
  ∀ n, P1663118764799422530.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P17252846525359864397

`12*A076139(n)+1`
-/

namespace A001570.P17252846525359864397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A076139 n + 1

end

end A001570.P17252846525359864397

namespace A001570

/-- `12*A076139(n)+1` -/
def P17252846525359864397.Spec : Prop :=
  ∀ n, P17252846525359864397.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P12688280991085523310

`A001075(n)*A001075(n+1)-1`
-/

namespace A001570.P12688280991085523310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n * A001075 (n + 1) - 1

end

end A001570.P12688280991085523310

namespace A001570

/-- `A001075(n)*A001075(n+1)-1` -/
def P12688280991085523310.Spec : Prop :=
  ∀ n, P12688280991085523310.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P1130301912001302404

`A102871(n)²+(A102871(n)-1)²`
-/

namespace A001570.P1130301912001302404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n ^ 2 + (A102871 n - 1) ^ 2

end

end A001570.P1130301912001302404

namespace A001570

/-- `A102871(n)²+(A102871(n)-1)²` -/
def P1130301912001302404.Spec : Prop :=
  ∀ n, P1130301912001302404.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P2297678456131449984

`floor((sqrt(3)+2)²*a(n-1))` with `a(0)=1`
-/

namespace A001570.P2297678456131449984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A001570.P2297678456131449984

namespace A001570

/-- `floor((sqrt(3)+2)²*a(n-1))` -/
def P2297678456131449984.Spec : Prop :=
  ∀ n, P2297678456131449984.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P16344360206636252631

`record[A108946(n)]`
-/

namespace A001570.P16344360206636252631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001570.P16344360206636252631

namespace A001570

/-- `record[A108946(n)]` -/
def P16344360206636252631.Spec : Prop :=
  ∀ n, P16344360206636252631.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P3265438592614815275

`A122571(n+2)`
-/

namespace A001570.P3265438592614815275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122571 (n + 2)

end

end A001570.P3265438592614815275

namespace A001570

/-- `A122571(n+2)` -/
def P3265438592614815275.Spec : Prop :=
  ∀ n, P3265438592614815275.a n = A001570 (n + 1)

end A001570

/-! ## A001570.P2694158612531978618

`A041017(2*n)`
-/

namespace A001570.P2694158612531978618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 (2 * n)

end

end A001570.P2694158612531978618

namespace A001570

/-- `A041017(2*n)` -/
def P2694158612531978618.Spec : Prop :=
  ∀ n, P2694158612531978618.a n = A001570 (n + 1)

end A001570

/-!
# A001571: a(n) = 4*a(n-1) - a(n-2) + 1, with a(0) = 0, a(1) = 2.

The programs for A001571, the canonical program `A001571.P17712931005654912009` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001571 has offset 0).

The definition of A001571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)+1` (program `A001571.P17712931005654912009`, by `A001571.P17712931005654912009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001571.P17712931005654912009

`4*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001571

/-- `4*a(n-1)-a(n-2)+1` -/
def P17712931005654912009.Spec : Prop :=
  ∀ n, P17712931005654912009.a n = A001571 n

theorem P17712931005654912009.correct : P17712931005654912009.Spec := by
  intro n
  simp only [A001571]

end A001571

/-! ## A001571.P6976514800818074140

`(A001834(n)-1)/2`
-/

namespace A001571.P6976514800818074140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001834 n - 1 : ℚ) / 2

end

end A001571.P6976514800818074140

namespace A001571

/-- `(A001834(n)-1)/2` -/
def P6976514800818074140.Spec : Prop :=
  ∀ n, P6976514800818074140.a n = (A001571 n : ℚ)

end A001571

/-! ## A001571.P12808338811860825795

`floor((sqrt(3)+2)*a(n-1))+2` with `a(0)=0`
-/

namespace A001571.P12808338811860825795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 2

end

end A001571.P12808338811860825795

namespace A001571

/-- `floor((sqrt(3)+2)*a(n-1))+2` -/
def P12808338811860825795.Spec : Prop :=
  ∀ n, P12808338811860825795.a n = A001571 n

end A001571

/-! ## A001571.P13429253246768443060

`ceil((sqrt(3)+2)*a(n-1))+1` with `a(0)=0, a(1)=2`
-/

namespace A001571.P13429253246768443060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 1

end

end A001571.P13429253246768443060

namespace A001571

/-- `ceil((sqrt(3)+2)*a(n-1))+1` -/
def P13429253246768443060.Spec : Prop :=
  ∀ n, P13429253246768443060.a n = A001571 n

end A001571

/-! ## A001571.P16400818313083719452

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=0, a(1)=2`
-/

namespace A001571.P16400818313083719452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001571.P16400818313083719452

namespace A001571

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P16400818313083719452.Spec : Prop :=
  ∀ n, P16400818313083719452.a n = A001571 n

end A001571

/-! ## A001571.P17089855127152878927

`1-(a(n-2)-4*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A001571.P17089855127152878927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - 4 * a (n - 1))

end

end A001571.P17089855127152878927

namespace A001571

/-- `1-(a(n-2)-4*a(n-1))` -/
def P17089855127152878927.Spec : Prop :=
  ∀ n, P17089855127152878927.a n = A001571 n

end A001571

/-! ## A001571.P1064419571638587906

`A082840(n)+1`
-/

namespace A001571.P1064419571638587906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + 1

end

end A001571.P1064419571638587906

namespace A001571

/-- `A082840(n)+1` -/
def P1064419571638587906.Spec : Prop :=
  ∀ n, P1064419571638587906.a n = A001571 n

end A001571

/-! ## A001571.P1951984036456746237

`A102871(n)-1`
-/

namespace A001571.P1951984036456746237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n - 1

end

end A001571.P1951984036456746237

namespace A001571

/-- `A102871(n)-1` -/
def P1951984036456746237.Spec : Prop :=
  ∀ n, P1951984036456746237.a n = A001571 n

end A001571

/-! ## A001571.P5323271828244788471

`∑[A001075(n)]-1`
-/

namespace A001571.P5323271828244788471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001571.P5323271828244788471

namespace A001571

/-- `∑[A001075(n)]-1` -/
def P5323271828244788471.Spec : Prop :=
  ∀ n, P5323271828244788471.a n = A001571 n

end A001571

/-! ## A001571.P4349232251930685308

`∑[A092184(n)]+n`
-/

namespace A001571.P4349232251930685308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A001571.P4349232251930685308

namespace A001571

/-- `∑[A092184(n)]+n` -/
def P4349232251930685308.Spec : Prop :=
  ∀ n, P4349232251930685308.a n = A001571 n

end A001571

/-! ## A001571.P13268457030138292787

`∑[A121401(n)-1]-1`
-/

namespace A001571.P13268457030138292787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001571.P13268457030138292787

namespace A001571

/-- `∑[A121401(n)-1]-1` -/
def P13268457030138292787.Spec : Prop :=
  ∀ n, P13268457030138292787.a n = A001571 n

end A001571

/-! ## A001571.P1859320049100078177

`∑[A002531(2*n)]-1`
-/

namespace A001571.P1859320049100078177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001571.P1859320049100078177

namespace A001571

/-- `∑[A002531(2*n)]-1` -/
def P1859320049100078177.Spec : Prop :=
  ∀ n, P1859320049100078177.a n = A001571 n

end A001571

/-! ## A001571.P13164856998847398803

`A107401(2*(n+1))-1`
-/

namespace A001571.P13164856998847398803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * (n + 1)) - 1

end

end A001571.P13164856998847398803

namespace A001571

/-- `A107401(2*(n+1))-1` -/
def P13164856998847398803.Spec : Prop :=
  ∀ n, P13164856998847398803.a n = A001571 n

end A001571

/-! ## A001571.P14212528602858017098

`∑[A005246(2*n+1)]-1`
-/

namespace A001571.P14212528602858017098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001571.P14212528602858017098

namespace A001571

/-- `∑[A005246(2*n+1)]-1` -/
def P14212528602858017098.Spec : Prop :=
  ∀ n, P14212528602858017098.a n = A001571 n

end A001571

/-! ## A001571.P12911718830207028667

`∑[abs(A108413(2*n+1))]-1`
-/

namespace A001571.P12911718830207028667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001571.P12911718830207028667

namespace A001571

/-- `∑[abs(A108413(2*n+1))]-1` -/
def P12911718830207028667.Spec : Prop :=
  ∀ n, P12911718830207028667.a n = A001571 n

end A001571

/-! ## A001571.P5204118327192727564

`A061278(n)+A001353(n)`
-/

namespace A001571.P5204118327192727564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + A001353 n

end

end A001571.P5204118327192727564

namespace A001571

/-- `A061278(n)+A001353(n)` -/
def P5204118327192727564.Spec : Prop :=
  ∀ n, P5204118327192727564.a n = A001571 n

end A001571

/-! ## A001571.P1417042882433950203

`A061278(n)-A106707(n)`
-/

namespace A001571.P1417042882433950203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n - A106707 n

end

end A001571.P1417042882433950203

namespace A001571

/-- `A061278(n)-A106707(n)` -/
def P1417042882433950203.Spec : Prop :=
  ∀ n, P1417042882433950203.a n = A001571 n

end A001571

/-! ## A001571.P11115350605559280237

`A061278(n)+Δ[A101879(n)]`
-/

namespace A001571.P11115350605559280237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n + (f1 (n + 1) - f1 n)

end

end A001571.P11115350605559280237

namespace A001571

/-- `A061278(n)+Δ[A101879(n)]` -/
def P11115350605559280237.Spec : Prop :=
  ∀ n, P11115350605559280237.a n = A001571 n

end A001571

/-!
# A001572: Related to series-parallel networks.

The programs for A001572, there is no canonical definition to state claims against.
-/

/-! ## A001572.P17302230100159613069

`lcm(2, A058756(n))/2`
-/

namespace A001572.P17302230100159613069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A058756 n) : ℚ) / 2

end

end A001572.P17302230100159613069

/-! ## A001572.P8202568736789399909

`abs(A058756(A028310(n))/2)`
-/

namespace A001572.P8202568736789399909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A058756 (A028310 n).toNat : ℚ) / 2|

end

end A001572.P8202568736789399909

/-! ## A001572.P1476263073375001010

`abs(A058756(n)/A280560(n))`
-/

namespace A001572.P1476263073375001010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A058756 n : ℚ) / (A280560 n : ℚ)|

end

end A001572.P1476263073375001010

/-! ## A001572.P473152884823763386

`abs(A058756(n)/A020639(A008458(n)))`
-/

namespace A001572.P473152884823763386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A058756 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)|

end

end A001572.P473152884823763386

/-! ## A001572.P15311321597702338256

`A058756(n)/A058756(n/A028310(n))`
-/

namespace A001572.P15311321597702338256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058756 n : ℚ) / (A058756 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A001572.P15311321597702338256

/-!
# A001573: Another approximation to A000084(n).

The programs for A001573, there is no canonical definition to state claims against.
-/

/-! ## A001573.P4898664630176659653

`A093156(n+1)-char[A014012(n+1)]`
-/

namespace A001573.P4898664630176659653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093156 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001573.P4898664630176659653

/-! ## A001573.P13679950430703969848

`A093156(n+1)-char[A282856(n+1)]`
-/

namespace A001573.P13679950430703969848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093156 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001573.P13679950430703969848

/-! ## A001573.P13356241220551977447

`A093156(n+1)-char[A212910(n+5)]`
-/

namespace A001573.P13356241220551977447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212910 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093156 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001573.P13356241220551977447

/-! ## A001573.P529854320812166909

`A093156(n+1)-A089806(A144303(n))`
-/

namespace A001573.P529854320812166909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093156 (n + 1) - A089806 (A144303 n).toNat

end

end A001573.P529854320812166909

/-! ## A001573.P15251150799164196892

`A093156(n+1)-A279760(A166517(n))`
-/

namespace A001573.P15251150799164196892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093156 (n + 1) - A279760 (A166517 n).toNat

end

end A001573.P15251150799164196892

/-!
# A001574: Colored series-parallel networks.

The programs for A001574, there is no canonical definition to state claims against.
-/

/-! ## A001574.P7056307607059495246

`A346516(n)+A047363(A121949(n+1))`
-/

namespace A001574.P7056307607059495246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346516 n + A047363 (A121949 (n + 1)).toNat

end

end A001574.P7056307607059495246

/-! ## A001574.P1300839256943334852

`∑[∑[A168223(5^n)+n]]/2`
-/

namespace A001574.P1300839256943334852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (5 ^ n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A001574.P1300839256943334852

/-!
# A001575: Colored series-parallel networks.

The programs for A001575, there is no canonical definition to state claims against.
-/

/-! ## A001575.P18167456790806546256

`n*A105516(A056914(n))`
-/

namespace A001575.P18167456790806546256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105516 (A056914 n).toNat

end

end A001575.P18167456790806546256

/-!
# A001576: a(n) = 1^n + 2^n + 4^n.

The programs for A001576, the canonical program `A001576.P13109363809763515467` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001576 has offset 0).

The definition of A001576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001576.P13109363809763515467

`1+2^n+4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001576

/-- `1+2^n+4^n` -/
def P13109363809763515467.Spec : Prop :=
  ∀ n, (P13109363809763515467.a n : ℤ) = A001576 n

theorem P13109363809763515467.correct : P13109363809763515467.Spec := by
  intro n
  simp only [A001576]

end A001576

/-! ## A001576.P5875282306811877511

`∑{d}[-a(n-1), #^n]` with `a(0)=4`
-/

namespace A001576.P5875282306811877511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A001576.P5875282306811877511

namespace A001576

/-- `∑{d}[-a(n-1), #^n]` -/
def P5875282306811877511.Spec : Prop :=
  ∀ n, (P5875282306811877511.a n : ℤ) = A001576 n

end A001576

/-! ## A001576.P18328121754328082888

`or(lcm(2, 4^n), or(1, 2^n))`
-/

namespace A001576.P18328121754328082888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.lcm 2 (4 ^ n)) (Nat.lor 1 (2 ^ n))

end

end A001576.P18328121754328082888

namespace A001576

/-- `or(lcm(2, 4^n), or(1, 2^n))` -/
def P18328121754328082888.Spec : Prop :=
  ∀ n, (P18328121754328082888.a n : ℤ) = A001576 n

end A001576

/-! ## A001576.P17518872535517884954

`∑[4*a(n-1)-2^(n-1)]` with `a(0)=3, a(1)=4`
-/

namespace A001576.P17518872535517884954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  4 * f1 (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001576.P17518872535517884954

namespace A001576

/-- `∑[4*a(n-1)-2^(n-1)]` -/
def P17518872535517884954.Spec : Prop :=
  ∀ n, P17518872535517884954.a n = (A001576 n : ℚ)

end A001576

/-! ## A001576.P2332967100044564183

`or(1, A161168(n))`
-/

namespace A001576.P2332967100044564183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A161168 n)

end

end A001576.P2332967100044564183

namespace A001576

/-- `or(1, A161168(n))` -/
def P2332967100044564183.Spec : Prop :=
  ∀ n, P2332967100044564183.a n = A001576 n

end A001576

/-! ## A001576.P13299180020736751931

`xor(1, A099393(n)+1)`
-/

namespace A001576.P13299180020736751931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A099393 n + 1)

end

end A001576.P13299180020736751931

namespace A001576

/-- `xor(1, A099393(n)+1)` -/
def P13299180020736751931.Spec : Prop :=
  ∀ n, P13299180020736751931.a n = A001576 n

end A001576

/-! ## A001576.P1597117648521765164

`or(2^n, A052539(n))`
-/

namespace A001576.P1597117648521765164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A052539 n)

end

end A001576.P1597117648521765164

namespace A001576

/-- `or(2^n, A052539(n))` -/
def P1597117648521765164.Spec : Prop :=
  ∀ n, P1597117648521765164.a n = A001576 n

end A001576

/-! ## A001576.P8563567399799772942

`or(4^n, A000051(n))`
-/

namespace A001576.P8563567399799772942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A000051 n)

end

end A001576.P8563567399799772942

namespace A001576

/-- `or(4^n, A000051(n))` -/
def P8563567399799772942.Spec : Prop :=
  ∀ n, P8563567399799772942.a n = A001576 n

end A001576

/-! ## A001576.P6291943835029867718

`xor(2^n, A000051(2*n))`
-/

namespace A001576.P6291943835029867718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A000051 (2 * n))

end

end A001576.P6291943835029867718

namespace A001576

/-- `xor(2^n, A000051(2*n))` -/
def P6291943835029867718.Spec : Prop :=
  ∀ n, P6291943835029867718.a n = A001576 n

end A001576

/-! ## A001576.P6854574200704485920

`or(A000051(n), A000302(n))`
-/

namespace A001576.P6854574200704485920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000302 n)

end

end A001576.P6854574200704485920

namespace A001576

/-- `or(A000051(n), A000302(n))` -/
def P6854574200704485920.Spec : Prop :=
  ∀ n, P6854574200704485920.a n = A001576 n

end A001576

/-! ## A001576.P18317306270324587453

`xor(A000079(n), A052539(n))`
-/

namespace A001576.P18317306270324587453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A052539 n)

end

end A001576.P18317306270324587453

namespace A001576

/-- `xor(A000079(n), A052539(n))` -/
def P18317306270324587453.Spec : Prop :=
  ∀ n, P18317306270324587453.a n = A001576 n

end A001576

/-! ## A001576.P2249810676475007103

`record[A122803(n)+A052552(n)]`
-/

namespace A001576.P2249810676475007103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001576.P2249810676475007103

namespace A001576

/-- `record[A122803(n)+A052552(n)]` -/
def P2249810676475007103.Spec : Prop :=
  ∀ n, P2249810676475007103.a n = A001576 n

end A001576

/-! ## A001576.P4123340645597293849

`lcm(A112030(n), A135576(n+1))`
-/

namespace A001576.P4123340645597293849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112030 n) (A135576 (n + 1))

end

end A001576.P4123340645597293849

namespace A001576

/-- `lcm(A112030(n), A135576(n+1))` -/
def P4123340645597293849.Spec : Prop :=
  ∀ n, (P4123340645597293849.a n : ℤ) = A001576 n

end A001576

/-! ## A001576.P9106661942002103536

`xor(A000038(n), A135576(n+1))`
-/

namespace A001576.P9106661942002103536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n) (A135576 (n + 1))

end

end A001576.P9106661942002103536

namespace A001576

/-- `xor(A000038(n), A135576(n+1))` -/
def P9106661942002103536.Spec : Prop :=
  ∀ n, P9106661942002103536.a n = A001576 n

end A001576

/-! ## A001576.P14820784157160024218

`(A085601(n)+1)/2`
-/

namespace A001576.P14820784157160024218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085601 n + 1 : ℚ) / 2

end

end A001576.P14820784157160024218

namespace A001576

/-- `(A085601(n)+1)/2` -/
def P14820784157160024218.Spec : Prop :=
  ∀ n, P14820784157160024218.a n = (A001576 n : ℚ)

end A001576

/-! ## A001576.P13965607916927640340

`(A281482(n)+3)/2`
-/

namespace A001576.P13965607916927640340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281482 n + 3 : ℚ) / 2

end

end A001576.P13965607916927640340

namespace A001576

/-- `(A281482(n)+3)/2` -/
def P13965607916927640340.Spec : Prop :=
  ∀ n, P13965607916927640340.a n = (A001576 n : ℚ)

end A001576

/-! ## A001576.P276441383033898134

`(A343175(n+1)+1)/2`
-/

namespace A001576.P276441383033898134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343175 (n + 1) + 1 : ℚ) / 2

end

end A001576.P276441383033898134

namespace A001576

/-- `(A343175(n+1)+1)/2` -/
def P276441383033898134.Spec : Prop :=
  ∀ n, P276441383033898134.a n = (A001576 n : ℚ)

end A001576

/-! ## A001576.P16942051339258646446

`(A093069(n+1)+5)/4`
-/

namespace A001576.P16942051339258646446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093069 (n + 1) + 5 : ℚ) / 4

end

end A001576.P16942051339258646446

namespace A001576

/-- `(A093069(n+1)+5)/4` -/
def P16942051339258646446.Spec : Prop :=
  ∀ n, P16942051339258646446.a n = (A001576 n : ℚ)

end A001576

/-! ## A001576.P16333216561022282997

`xor(A096045(n), A187560(n))`
-/

namespace A001576.P16333216561022282997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096045 n) (A187560 n)

end

end A001576.P16333216561022282997

namespace A001576

/-- `xor(A096045(n), A187560(n))` -/
def P16333216561022282997.Spec : Prop :=
  ∀ n, P16333216561022282997.a n = A001576 n

end A001576

/-!
# A001577: An operational recurrence.

The programs for A001577, there is no canonical definition to state claims against.
-/

/-! ## A001577.P12045818676432033435

`a(n-1)*a(n-2)*A185357(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001577.P12045818676432033435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) * a (n - 2) * A185357 n

end

end A001577.P12045818676432033435

/-! ## A001577.P13382178656664963601

`a(n-1)*a(n-2)*A037027(∑[n])` with `a(0)=1, a(1)=1`
-/

namespace A001577.P13382178656664963601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * a (n - 2) * A037027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001577.P13382178656664963601

/-! ## A001577.P17829800540393708323

`a(n-2)*a(n-1)*∑[A212804(n)]` with `a(0)=1, a(1)=1`
-/

namespace A001577.P17829800540393708323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001577.P17829800540393708323

/-! ## A001577.P12059777344873374467

`a(n-1)*A000045(n+1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001577.P12059777344873374467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A000045 (n + 1) * a (n - 2)

end

end A001577.P12059777344873374467

/-! ## A001577.P12395975760996405797

`a(n-2)/(2/a(n-1)-1/a(n-1))*A103609(2*(n+1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001577.P12395975760996405797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) / (2 / a (n - 1) - 1 / a (n - 1)) * (A103609 (2 * (n + 1)) : ℚ)

end

end A001577.P12395975760996405797

/-!
# A001578: Smallest primitive prime factor of Fibonacci number F(n), or 1 if F(n) has no primitive prime factor.

The programs for A001578, there is no canonical definition to state claims against.
-/

/-! ## A001578.P8585008086412405790

`A020639(A178763(n+1))`
-/

namespace A001578.P8585008086412405790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A178763 (n + 1)).toNat

end

end A001578.P8585008086412405790

/-! ## A001578.P15766668450121821389

`A124332(2*A061446(n+1))`
-/

namespace A001578.P15766668450121821389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (2 * A061446 (n + 1)).toNat

end

end A001578.P15766668450121821389

/-! ## A001578.P3726267769364640140

`A124332(2*A178763(n+1))`
-/

namespace A001578.P3726267769364640140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (2 * A178763 (n + 1)).toNat

end

end A001578.P3726267769364640140

/-! ## A001578.P7257602070040256941

`A178763(n+1)%A350844(3*(n+1))`
-/

namespace A001578.P7257602070040256941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178763 (n + 1)) (A350844 (3 * (n + 1)))

end

end A001578.P7257602070040256941

/-! ## A001578.P2627679639390128407

`A178763(n+1)+A000007(A060945(n))`
-/

namespace A001578.P2627679639390128407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178763 (n + 1) + A000007 (A060945 n).toNat

end

end A001578.P2627679639390128407

/-!
# A001579: a(n) = 3^n + 5^n + 6^n.

The programs for A001579, the canonical program `A001579.P3415454411227846950` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001579 has offset 0).

The definition of A001579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+6^n` (program `A001579.P3415454411227846950`, by `A001579.P3415454411227846950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001579.P3415454411227846950

`3^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001579

/-- `3^n+5^n+6^n` -/
def P3415454411227846950.Spec : Prop :=
  ∀ n, (P3415454411227846950.a n : ℤ) = A001579 n

theorem P3415454411227846950.correct : P3415454411227846950.Spec := by
  intro n
  simp only [A001579]

end A001579

/-! ## A001579.P15044968125953368982

`abs(A001553(n)-A001576(n))`
-/

namespace A001579.P15044968125953368982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A001576 n|

end

end A001579.P15044968125953368982

namespace A001579

/-- `abs(A001553(n)-A001576(n))` -/
def P15044968125953368982.Spec : Prop :=
  ∀ n, P15044968125953368982.a n = A001579 n

end A001579

/-! ## A001579.P14537351737207426579

`(A001553(n)-A001576(n))*A057427(n+1)`
-/

namespace A001579.P14537351737207426579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A057427 (n + 1)

end

end A001579.P14537351737207426579

namespace A001579

/-- `(A001553(n)-A001576(n))*A057427(n+1)` -/
def P14537351737207426579.Spec : Prop :=
  ∀ n, P14537351737207426579.a n = A001579 n

end A001579

/-! ## A001579.P16354624859630147187

`(A001553(n)-A001576(n))*A059841(2*n)`
-/

namespace A001579.P16354624859630147187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A059841 (2 * n)

end

end A001579.P16354624859630147187

namespace A001579

/-- `(A001553(n)-A001576(n))*A059841(2*n)` -/
def P16354624859630147187.Spec : Prop :=
  ∀ n, P16354624859630147187.a n = A001579 n

end A001579

/-! ## A001579.P2844663606251754518

`(A001553(n)-A001576(n))*A000035(2*n+1)`
-/

namespace A001579.P2844663606251754518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A000035 (2 * n + 1)

end

end A001579.P2844663606251754518

namespace A001579

/-- `(A001553(n)-A001576(n))*A000035(2*n+1)` -/
def P2844663606251754518.Spec : Prop :=
  ∀ n, P2844663606251754518.a n = A001579 n

end A001579

/-! ## A001579.P5789332280406599981

`(A001553(n)-A001576(n))*A026725(A000217(n))`
-/

namespace A001579.P5789332280406599981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A026725 (A000217 n).toNat

end

end A001579.P5789332280406599981

namespace A001579

/-- `(A001553(n)-A001576(n))*A026725(A000217(n))` -/
def P5789332280406599981.Spec : Prop :=
  ∀ n, P5789332280406599981.a n = A001579 n

end A001579

/-! ## A001579.P15597648551842015913

`(A001553(n)-A001576(n))*A026600(A026601(n+1))`
-/

namespace A001579.P15597648551842015913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A026600 (A026601 (n + 1)).toNat

end

end A001579.P15597648551842015913

namespace A001579

/-- `(A001553(n)-A001576(n))*A026600(A026601(n+1))` -/
def P15597648551842015913.Spec : Prop :=
  ∀ n, P15597648551842015913.a n = A001579 n

end A001579

/-! ## A001579.P5418906531897234303

`(A001553(n)-A001576(n))*A063647(A000040(n+1))`
-/

namespace A001579.P5418906531897234303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A063647 (A000040 (n + 1)).toNat

end

end A001579.P5418906531897234303

namespace A001579

/-- `(A001553(n)-A001576(n))*A063647(A000040(n+1))` -/
def P5418906531897234303.Spec : Prop :=
  ∀ n, P5418906531897234303.a n = A001579 n

end A001579

/-! ## A001579.P9619931287460037844

`(A001553(n)-A001576(n))*A026725(A161680(n+9))`
-/

namespace A001579.P9619931287460037844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A026725 (A161680 (n + 9)).toNat

end

end A001579.P9619931287460037844

namespace A001579

/-- `(A001553(n)-A001576(n))*A026725(A161680(n+9))` -/
def P9619931287460037844.Spec : Prop :=
  ∀ n, P9619931287460037844.a n = A001579 n

end A001579

/-! ## A001579.P18101689608709393475

`(A001553(n)-A001576(n))*A034947(A038712(n+1))²`
-/

namespace A001579.P18101689608709393475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A034947 (A038712 (n + 1)).toNat ^ 2

end

end A001579.P18101689608709393475

namespace A001579

/-- `(A001553(n)-A001576(n))*A034947(A038712(n+1))²` -/
def P18101689608709393475.Spec : Prop :=
  ∀ n, P18101689608709393475.a n = A001579 n

end A001579

/-! ## A001579.P16796065885203037347

`(A001553(n)-A001576(n))*A010049(A020639(2*(n+1)))`
-/

namespace A001579.P16796065885203037347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A010049 (A020639 (2 * (n + 1))).toNat

end

end A001579.P16796065885203037347

namespace A001579

/-- `(A001553(n)-A001576(n))*A010049(A020639(2*(n+1)))` -/
def P16796065885203037347.Spec : Prop :=
  ∀ n, P16796065885203037347.a n = A001579 n

end A001579

/-! ## A001579.P2441760710527579142

`(A001553(n)-A001576(n))*A027907(n²)`
-/

namespace A001579.P2441760710527579142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A027907 (n ^ 2)

end

end A001579.P2441760710527579142

namespace A001579

/-- `(A001553(n)-A001576(n))*A027907(n²)` -/
def P2441760710527579142.Spec : Prop :=
  ∀ n, P2441760710527579142.a n = A001579 n

end A001579

/-! ## A001579.P12044811267299316891

`(A001553(n)-A001576(n))*A034947(n²+5)²`
-/

namespace A001579.P12044811267299316891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001576 n) * A034947 (n ^ 2 + 5) ^ 2

end

end A001579.P12044811267299316891

namespace A001579

/-- `(A001553(n)-A001576(n))*A034947(n²+5)²` -/
def P12044811267299316891.Spec : Prop :=
  ∀ n, P12044811267299316891.a n = A001579 n

end A001579

/-!
# A001580: a(n) = 2^n + n^2.

The programs for A001580, the canonical program `A001580.P876701067235307781` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001580 has offset 0).

The definition of A001580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n²` (program `A001580.P876701067235307781`, by `A001580.P876701067235307781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001580.P876701067235307781

`2^n+n²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001580

/-- `2^n+n²` -/
def P876701067235307781.Spec : Prop :=
  ∀ n, (P876701067235307781.a n : ℤ) = A001580 n

theorem P876701067235307781.correct : P876701067235307781.Spec := by
  intro n
  simp only [A001580]

end A001580

/-! ## A001580.P2073475483103182597

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001580.P2073475483103182597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P2073475483103182597

namespace A001580

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P2073475483103182597.Spec : Prop :=
  ∀ n, P2073475483103182597.a n = A001580 n

end A001580

/-! ## A001580.P8377050018483388801

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001580.P8377050018483388801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P8377050018483388801

namespace A001580

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P8377050018483388801.Spec : Prop :=
  ∀ n, P8377050018483388801.a n = A001580 n

end A001580

/-! ## A001580.P2775546702435588186

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001580.P2775546702435588186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P2775546702435588186

namespace A001580

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P2775546702435588186.Spec : Prop :=
  ∀ n, P2775546702435588186.a n = A001580 n

end A001580

/-! ## A001580.P13993484136119672383

`abs(n-A131924(n))`
-/

namespace A001580.P13993484136119672383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A131924 n|

end

end A001580.P13993484136119672383

namespace A001580

/-- `abs(n-A131924(n))` -/
def P13993484136119672383.Spec : Prop :=
  ∀ n, P13993484136119672383.a n = A001580 n

end A001580

/-! ## A001580.P9549898860236636612

`abs(n²+A000051(n)-1)`
-/

namespace A001580.P9549898860236636612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + (A000051 n - 1)|

end

end A001580.P9549898860236636612

namespace A001580

/-- `abs(n²+A000051(n)-1)` -/
def P9549898860236636612.Spec : Prop :=
  ∀ n, P9549898860236636612.a n = A001580 n

end A001580

/-! ## A001580.P11830786272348490373

`∑[A000225(abs(1-n))+2*n]`
-/

namespace A001580.P11830786272348490373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 |1 - (n : ℤ)|.toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P11830786272348490373

namespace A001580

/-- `∑[A000225(abs(1-n))+2*n]` -/
def P11830786272348490373.Spec : Prop :=
  ∀ n, P11830786272348490373.a n = A001580 n

end A001580

/-! ## A001580.P11104114744067317368

`∑[abs(1-A131577(n)-2*n)]`
-/

namespace A001580.P11104114744067317368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A131577 n - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P11104114744067317368

namespace A001580

/-- `∑[abs(1-A131577(n)-2*n)]` -/
def P11104114744067317368.Spec : Prop :=
  ∀ n, P11104114744067317368.a n = A001580 n

end A001580

/-! ## A001580.P7281539687706496951

`abs(A000079(n)+n*(n+1)-n)`
-/

namespace A001580.P7281539687706496951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (n * (n + 1) : ℤ) - (n : ℤ)|

end

end A001580.P7281539687706496951

namespace A001580

/-- `abs(A000079(n)+n*(n+1)-n)` -/
def P7281539687706496951.Spec : Prop :=
  ∀ n, P7281539687706496951.a n = A001580 n

end A001580

/-! ## A001580.P14760189735707145513

`∑[A011782(n)+A004273(n)]`
-/

namespace A001580.P14760189735707145513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P14760189735707145513

namespace A001580

/-- `∑[A011782(n)+A004273(n)]` -/
def P14760189735707145513.Spec : Prop :=
  ∀ n, P14760189735707145513.a n = A001580 n

end A001580

/-! ## A001580.P11989443151850547190

`∑[A011782(n)+record[A006257(n)]]`
-/

namespace A001580.P11989443151850547190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P11989443151850547190

namespace A001580

/-- `∑[A011782(n)+record[A006257(n)]]` -/
def P11989443151850547190.Spec : Prop :=
  ∀ n, P11989443151850547190.a n = A001580 n

end A001580

/-! ## A001580.P11758368671030462431

`∑[A011782(n)+A004277(n)-1]`
-/

namespace A001580.P11758368671030462431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A004277 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001580.P11758368671030462431

namespace A001580

/-- `∑[A011782(n)+A004277(n)-1]` -/
def P11758368671030462431.Spec : Prop :=
  ∀ n, P11758368671030462431.a n = A001580 n

end A001580

/-! ## A001580.P4469415113167807451

`(A000079(n)+n²)*A257679(2*n+1)`
-/

namespace A001580.P4469415113167807451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + (n ^ 2 : ℤ)) * A257679 (2 * n + 1)

end

end A001580.P4469415113167807451

namespace A001580

/-- `(A000079(n)+n²)*A257679(2*n+1)` -/
def P4469415113167807451.Spec : Prop :=
  ∀ n, P4469415113167807451.a n = A001580 n

end A001580

/-! ## A001580.P15514179349500644367

`(A000079(n)+n²)*A257680(2*n+1)`
-/

namespace A001580.P15514179349500644367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + (n ^ 2 : ℤ)) * A257680 (2 * n + 1)

end

end A001580.P15514179349500644367

namespace A001580

/-- `(A000079(n)+n²)*A257680(2*n+1)` -/
def P15514179349500644367.Spec : Prop :=
  ∀ n, P15514179349500644367.a n = A001580 n

end A001580

/-! ## A001580.P10669242447703902362

`floor(Δ[2*a(n-1)]+n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001580.P10669242447703902362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 : ℤ)

end

end A001580.P10669242447703902362

namespace A001580

/-- `floor(Δ[2*a(n-1)]+n²)` -/
def P10669242447703902362.Spec : Prop :=
  ∀ n, P10669242447703902362.a n = A001580 n

end A001580

/-! ## A001580.P14821808296331418140

`abs(Δ[A000225(n)]+n²)`
-/

namespace A001580.P14821808296331418140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n ^ 2 : ℤ)|

end

end A001580.P14821808296331418140

namespace A001580

/-- `abs(Δ[A000225(n)]+n²)` -/
def P14821808296331418140.Spec : Prop :=
  ∀ n, P14821808296331418140.a n = A001580 n

end A001580

/-! ## A001580.P409721858648948305

`floor(sqrt(A052539(n))+n²)`
-/

namespace A001580.P409721858648948305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A052539 n : ℝ) + (n ^ 2 : ℝ)⌋

end

end A001580.P409721858648948305

namespace A001580

/-- `floor(sqrt(A052539(n))+n²)` -/
def P409721858648948305.Spec : Prop :=
  ∀ n, P409721858648948305.a n = A001580 n

end A001580

/-! ## A001580.P5331009474320142261

`(A007758(n)+A000079(n)²)/A000079(n)`
-/

namespace A001580.P5331009474320142261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 n + A000079 n ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A001580.P5331009474320142261

namespace A001580

/-- `(A007758(n)+A000079(n)²)/A000079(n)` -/
def P5331009474320142261.Spec : Prop :=
  ∀ n, P5331009474320142261.a n = (A001580 n : ℚ)

end A001580

/-! ## A001580.P5752820587206264967

`record[A137688(n)+A025581(n)²]`
-/

namespace A001580.P5752820587206264967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A025581 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001580.P5752820587206264967

namespace A001580

/-- `record[A137688(n)+A025581(n)²]` -/
def P5752820587206264967.Spec : Prop :=
  ∀ n, P5752820587206264967.a n = A001580 n

end A001580

/-! ## A001580.P10619660039531603805

`record[A130321(n)+A095831(n+1)]`
-/

namespace A001580.P10619660039531603805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A095831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001580.P10619660039531603805

namespace A001580

/-- `record[A130321(n)+A095831(n+1)]` -/
def P10619660039531603805.Spec : Prop :=
  ∀ n, P10619660039531603805.a n = A001580 n

end A001580

/-!
# A001581: Winning moves in Fibonacci nim.

The programs for A001581, there is no canonical definition to state claims against.
-/

/-! ## A001581.P17434123296604042432

`eq[0, A014588(n+1)]+1`
-/

namespace A001581.P17434123296604042432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001581.P17434123296604042432

/-! ## A001581.P9707352806426178742

`eq[A000038(n), A014588(n)]`
-/

namespace A001581.P9707352806426178742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P9707352806426178742

/-! ## A001581.P2547492462533889250

`eq[A014588(n), A069517(n+1)]`
-/

namespace A001581.P2547492462533889250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P2547492462533889250

/-! ## A001581.P7833488389150878610

`eq[A000007(n), A014588(n)]`
-/

namespace A001581.P7833488389150878610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P7833488389150878610

/-! ## A001581.P10174735479127301406

`eq[A014588(n), A099894(n)]`
-/

namespace A001581.P10174735479127301406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P10174735479127301406

/-! ## A001581.P18194612135426579534

`eq[A014588(n), A130706(n)]`
-/

namespace A001581.P18194612135426579534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P18194612135426579534

/-! ## A001581.P10774383350202104681

`eq[A014588(n), A130713(n)]`
-/

namespace A001581.P10774383350202104681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P10774383350202104681

/-! ## A001581.P7052988816399863466

`eq[A014588(n), A166926(n)]`
-/

namespace A001581.P7052988816399863466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P7052988816399863466

/-! ## A001581.P17229548241117381803

`eq[A014588(n), A167876(n)]`
-/

namespace A001581.P17229548241117381803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P17229548241117381803

/-! ## A001581.P9499016681302417811

`eq[A014588(n), A169585(n)]`
-/

namespace A001581.P9499016681302417811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P9499016681302417811

/-! ## A001581.P10767190676197757548

`eq[A014588(n), A263013(n)]`
-/

namespace A001581.P10767190676197757548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P10767190676197757548

/-! ## A001581.P11156278574515912073

`eq[A014588(n), A033324(n+1)]`
-/

namespace A001581.P11156278574515912073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P11156278574515912073

/-! ## A001581.P15001664162647968440

`eq[A014588(n), A129502(n+1)]`
-/

namespace A001581.P15001664162647968440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P15001664162647968440

/-! ## A001581.P14359750348524381707

`eq[A014588(n), A154272(n+1)]`
-/

namespace A001581.P14359750348524381707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P14359750348524381707

/-! ## A001581.P17461348361215401469

`eq[A014588(n), A154281(n+1)]`
-/

namespace A001581.P17461348361215401469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P17461348361215401469

/-! ## A001581.P16085334662858128879

`eq[A014588(n), A154955(n+1)]`
-/

namespace A001581.P16085334662858128879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P16085334662858128879

/-! ## A001581.P15893837065876825024

`eq[A014588(n), A173012(n+1)]`
-/

namespace A001581.P15893837065876825024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P15893837065876825024

/-! ## A001581.P9360196430610212682

`eq[A014588(n), A242457(n+1)]`
-/

namespace A001581.P9360196430610212682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P9360196430610212682

/-! ## A001581.P4061092327649593201

`eq[A014588(n), A259346(n+1)]`
-/

namespace A001581.P4061092327649593201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P4061092327649593201

/-! ## A001581.P12989857296650167273

`eq[A014588(n), A285476(n)]`
-/

namespace A001581.P12989857296650167273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001581.P12989857296650167273

/-!
# A001582: Product of Fibonacci and Pell numbers.

The programs for A001582, the canonical program `A001582.P9825173375276165875` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001582 has offset 0).

The definition of A001582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001582.P9825173375276165875

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=36`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001582

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P9825173375276165875.Spec : Prop :=
  ∀ n, P9825173375276165875.a n = A001582 n

theorem P9825173375276165875.correct : P9825173375276165875.Spec := by
  intro n
  simp only [A001582]

end A001582

/-! ## A001582.P15003558154011614795

`A344684(n)-a(n-1)` with `a(0)=1`
-/

namespace A001582.P15003558154011614795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A344684 n - a (n - 1)

end

end A001582.P15003558154011614795

namespace A001582

/-- `A344684(n)-a(n-1)` -/
def P15003558154011614795.Spec : Prop :=
  ∀ n, P15003558154011614795.a n = A001582 n

end A001582

/-! ## A001582.P10574383431500422810

`abs(A000045(n+1)*A077985(n))`
-/

namespace A001582.P10574383431500422810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (n + 1) * A077985 n|

end

end A001582.P10574383431500422810

namespace A001582

/-- `abs(A000045(n+1)*A077985(n))` -/
def P10574383431500422810.Spec : Prop :=
  ∀ n, P10574383431500422810.a n = A001582 n

end A001582

/-! ## A001582.P1281113616152648295

`A000045(n+1)*∑[A001333(n)]`
-/

namespace A001582.P1281113616152648295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001582.P1281113616152648295

namespace A001582

/-- `A000045(n+1)*∑[A001333(n)]` -/
def P1281113616152648295.Spec : Prop :=
  ∀ n, P1281113616152648295.a n = A001582 n

end A001582

/-! ## A001582.P3308912870150425058

`A000045(n+1)*Δ[A024537(n)]`
-/

namespace A001582.P3308912870150425058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A001582.P3308912870150425058

namespace A001582

/-- `A000045(n+1)*Δ[A024537(n)]` -/
def P3308912870150425058.Spec : Prop :=
  ∀ n, P3308912870150425058.a n = A001582 n

end A001582

/-! ## A001582.P15501976903281838793

`A000045(n+1)*A000129(n+1)`
-/

namespace A001582.P15501976903281838793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000129 (n + 1)

end

end A001582.P15501976903281838793

namespace A001582

/-- `A000045(n+1)*A000129(n+1)` -/
def P15501976903281838793.Spec : Prop :=
  ∀ n, P15501976903281838793.a n = A001582 n

end A001582

/-! ## A001582.P4426933298586429773

`A000045(n+1)*A215928(n+1)`
-/

namespace A001582.P4426933298586429773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A215928 (n + 1)

end

end A001582.P4426933298586429773

namespace A001582

/-- `A000045(n+1)*A215928(n+1)` -/
def P4426933298586429773.Spec : Prop :=
  ∀ n, P4426933298586429773.a n = A001582 n

end A001582

/-! ## A001582.P13852735598041560881

`A000129(n+1)*A212804(n+2)`
-/

namespace A001582.P13852735598041560881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A212804 (n + 2)

end

end A001582.P13852735598041560881

namespace A001582

/-- `A000129(n+1)*A212804(n+2)` -/
def P13852735598041560881.Spec : Prop :=
  ∀ n, P13852735598041560881.a n = A001582 n

end A001582

/-! ## A001582.P9813455388463378755

`A215928(n+1)*A324969(n+2)`
-/

namespace A001582.P9813455388463378755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) * A324969 (n + 2)

end

end A001582.P9813455388463378755

namespace A001582

/-- `A215928(n+1)*A324969(n+2)` -/
def P9813455388463378755.Spec : Prop :=
  ∀ n, P9813455388463378755.a n = A001582 n

end A001582

/-! ## A001582.P3323001742811833928

`abs(A176981(n+2))*A000045(n+1)`
-/

namespace A001582.P3323001742811833928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A000045 (n + 1)

end

end A001582.P3323001742811833928

namespace A001582

/-- `abs(A176981(n+2))*A000045(n+1)` -/
def P3323001742811833928.Spec : Prop :=
  ∀ n, P3323001742811833928.a n = A001582 n

end A001582

/-! ## A001582.P10269145654183581716

`A000045(n+1)*Δ[A171842(n+1)]`
-/

namespace A001582.P10269145654183581716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A001582.P10269145654183581716

namespace A001582

/-- `A000045(n+1)*Δ[A171842(n+1)]` -/
def P10269145654183581716.Spec : Prop :=
  ∀ n, P10269145654183581716.a n = A001582 n

end A001582

/-! ## A001582.P7455495132052995234

`Δ[A000071(n+2)]*A000129(n+1)`
-/

namespace A001582.P7455495132052995234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 (n + 1)

end

end A001582.P7455495132052995234

namespace A001582

/-- `Δ[A000071(n+2)]*A000129(n+1)` -/
def P7455495132052995234.Spec : Prop :=
  ∀ n, P7455495132052995234.a n = A001582 n

end A001582

/-! ## A001582.P3201213827573384011

`(A174191(n+1)-1)*A000045(n+1)`
-/

namespace A001582.P3201213827573384011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 (n + 1) - 1) * A000045 (n + 1)

end

end A001582.P3201213827573384011

namespace A001582

/-- `(A174191(n+1)-1)*A000045(n+1)` -/
def P3201213827573384011.Spec : Prop :=
  ∀ n, P3201213827573384011.a n = A001582 n

end A001582

/-! ## A001582.P5049944144226192008

`A000045(n+1)*A155046(2*(n+1))`
-/

namespace A001582.P5049944144226192008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A155046 (2 * (n + 1))

end

end A001582.P5049944144226192008

namespace A001582

/-- `A000045(n+1)*A155046(2*(n+1))` -/
def P5049944144226192008.Spec : Prop :=
  ∀ n, P5049944144226192008.a n = A001582 n

end A001582

/-! ## A001582.P18159503515510893772

`A000045(n+1)/2*A052542(n+1)`
-/

namespace A001582.P18159503515510893772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 2 * (A052542 (n + 1) : ℚ)

end

end A001582.P18159503515510893772

namespace A001582

/-- `A000045(n+1)/2*A052542(n+1)` -/
def P18159503515510893772.Spec : Prop :=
  ∀ n, P18159503515510893772.a n = (A001582 n : ℚ)

end A001582

/-! ## A001582.P4230087080112382621

`A000045(n+1)/2*A163271(n+2)`
-/

namespace A001582.P4230087080112382621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 2 * (A163271 (n + 2) : ℚ)

end

end A001582.P4230087080112382621

namespace A001582

/-- `A000045(n+1)/2*A163271(n+2)` -/
def P4230087080112382621.Spec : Prop :=
  ∀ n, P4230087080112382621.a n = (A001582 n : ℚ)

end A001582

/-! ## A001582.P10705285608147876334

`xor(1, A111954(n+1))*A000045(n+1)`
-/

namespace A001582.P10705285608147876334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 (n + 1)) * A000045 (n + 1)

end

end A001582.P10705285608147876334

namespace A001582

/-- `xor(1, A111954(n+1))*A000045(n+1)` -/
def P10705285608147876334.Spec : Prop :=
  ∀ n, P10705285608147876334.a n = A001582 n

end A001582

/-! ## A001582.P15953852749686645052

`A344684(n)-A000045(n)*A000129(n)`
-/

namespace A001582.P15953852749686645052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344684 n - A000045 n * A000129 n

end

end A001582.P15953852749686645052

namespace A001582

/-- `A344684(n)-A000045(n)*A000129(n)` -/
def P15953852749686645052.Spec : Prop :=
  ∀ n, P15953852749686645052.a n = A001582 n

end A001582

/-! ## A001582.P9336499500249472347

`(A106515(n)-A006684(n))*A000045(n+1)`
-/

namespace A001582.P9336499500249472347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106515 n - A006684 n) * A000045 (n + 1)

end

end A001582.P9336499500249472347

namespace A001582

/-- `(A106515(n)-A006684(n))*A000045(n+1)` -/
def P9336499500249472347.Spec : Prop :=
  ∀ n, P9336499500249472347.a n = A001582 n

end A001582

/-! ## A001582.P2137960637166445237

`(A291227(n)-A112577(n))*A000045(n+1)`
-/

namespace A001582.P2137960637166445237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291227 n - A112577 n) * A000045 (n + 1)

end

end A001582.P2137960637166445237

namespace A001582

/-- `(A291227(n)-A112577(n))*A000045(n+1)` -/
def P2137960637166445237.Spec : Prop :=
  ∀ n, P2137960637166445237.a n = A001582 n

end A001582

/-!
# A001583: Artiads: the primes p == 1 (mod 5) for which Fibonacci((p-1)/5) is divisible by p.

The programs for A001583, there is no canonical definition to state claims against.
-/

/-! ## A001583.P14655628165375555167

`A087558(A088987(n+2)-A006925(n))`
-/

namespace A001583.P14655628165375555167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087558 (A088987 (n + 2) - A006925 n).toNat

end

end A001583.P14655628165375555167

/-!
# A001585: a(n) = 3^n + n^3.

The programs for A001585, the canonical program `A001585.P4821512813318455384` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001585 has offset 0).

The definition of A001585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+n^3` (program `A001585.P4821512813318455384`, by `A001585.P4821512813318455384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001585.P4821512813318455384

`3^n+n^3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001585

/-- `3^n+n^3` -/
def P4821512813318455384.Spec : Prop :=
  ∀ n, (P4821512813318455384.a n : ℤ) = A001585 n

theorem P4821512813318455384.correct : P4821512813318455384.Spec := by
  intro n
  simp only [A001585]

end A001585

/-! ## A001585.P9180154008055925443

`abs(3*n-A220509(n))`
-/

namespace A001585.P9180154008055925443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A220509 n|

end

end A001585.P9180154008055925443

namespace A001585

/-- `abs(3*n-A220509(n))` -/
def P9180154008055925443.Spec : Prop :=
  ∀ n, P9180154008055925443.a n = A001585 n

end A001585

/-! ## A001585.P10120071265050811374

`Δ[A003462(n)+A161680(n)²]`
-/

namespace A001585.P10120071265050811374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001585.P10120071265050811374

namespace A001585

/-- `Δ[A003462(n)+A161680(n)²]` -/
def P10120071265050811374.Spec : Prop :=
  ∀ n, P10120071265050811374.a n = A001585 n

end A001585

/-! ## A001585.P14344678073307073369

`(A000578(n)+A000244(n))*gcd(n, n+1)`
-/

namespace A001585.P14344678073307073369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000244 n) * (Nat.gcd n (n + 1) : ℤ)

end

end A001585.P14344678073307073369

namespace A001585

/-- `(A000578(n)+A000244(n))*gcd(n, n+1)` -/
def P14344678073307073369.Spec : Prop :=
  ∀ n, P14344678073307073369.a n = A001585 n

end A001585

/-! ## A001585.P298096745027221718

`(A000578(n)+A000244(n))*A000265(A037445(n+1))`
-/

namespace A001585.P298096745027221718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000244 n) * A000265 (A037445 (n + 1)).toNat

end

end A001585.P298096745027221718

namespace A001585

/-- `(A000578(n)+A000244(n))*A000265(A037445(n+1))` -/
def P298096745027221718.Spec : Prop :=
  ∀ n, P298096745027221718.a n = A001585 n

end A001585

/-! ## A001585.P13634158967338082732

`(A000578(n)+A000244(n))%A104088(n+1)`
-/

namespace A001585.P13634158967338082732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n + A000244 n) (A104088 (n + 1))

end

end A001585.P13634158967338082732

namespace A001585

/-- `(A000578(n)+A000244(n))%A104088(n+1)` -/
def P13634158967338082732.Spec : Prop :=
  ∀ n, P13634158967338082732.a n = A001585 n

end A001585

/-! ## A001585.P16230732525291633615

`(A000578(n)+A000244(n))*A000265(A059268(n))`
-/

namespace A001585.P16230732525291633615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000244 n) * A000265 (A059268 n).toNat

end

end A001585.P16230732525291633615

namespace A001585

/-- `(A000578(n)+A000244(n))*A000265(A059268(n))` -/
def P16230732525291633615.Spec : Prop :=
  ∀ n, P16230732525291633615.a n = A001585 n

end A001585

/-! ## A001585.P6635675518770087661

`(A000578(n)+A000244(n))%A035028(n)`
-/

namespace A001585.P6635675518770087661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n + A000244 n) (A035028 n)

end

end A001585.P6635675518770087661

namespace A001585

/-- `(A000578(n)+A000244(n))%A035028(n)` -/
def P6635675518770087661.Spec : Prop :=
  ∀ n, P6635675518770087661.a n = A001585 n

end A001585

/-! ## A001585.P12762202416396380463

`record[A198063(n)+A140303(n)]`
-/

namespace A001585.P12762202416396380463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198063 n + A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001585.P12762202416396380463

namespace A001585

/-- `record[A198063(n)+A140303(n)]` -/
def P12762202416396380463.Spec : Prop :=
  ∀ n, P12762202416396380463.a n = A001585 n

end A001585

/-! ## A001585.P3817679046802025626

`A055652(A167614(n+2))`
-/

namespace A001585.P3817679046802025626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A167614 (n + 2)).toNat

end

end A001585.P3817679046802025626

namespace A001585

/-- `A055652(A167614(n+2))` -/
def P3817679046802025626.Spec : Prop :=
  ∀ n, P3817679046802025626.a n = A001585 n

end A001585

/-!
# A001586: Generalized Euler numbers, or Springer numbers.

The programs for A001586, there is no canonical definition to state claims against.
-/

/-! ## A001586.P7014029262379640407

`abs(A188458(n))`
-/

namespace A001586.P7014029262379640407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188458 n|

end

end A001586.P7014029262379640407

/-! ## A001586.P16576149226625478043

`abs(A212435(n))`
-/

namespace A001586.P16576149226625478043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212435 n|

end

end A001586.P16576149226625478043

/-! ## A001586.P6162136246738315558

`abs(A117442(∑[n]))`
-/

namespace A001586.P6162136246738315558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117442 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001586.P6162136246738315558

/-! ## A001586.P8922170650414678351

`A057077(n)*A188458(n)`
-/

namespace A001586.P8922170650414678351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A188458 n

end

end A001586.P8922170650414678351

/-! ## A001586.P10845699361756707215

`gcd(A000038(n), A188458(n))`
-/

namespace A001586.P10845699361756707215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188458 n)

end

end A001586.P10845699361756707215

/-! ## A001586.P17269233966422330178

`lcm(A033999(n), A188458(n))`
-/

namespace A001586.P17269233966422330178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188458 n)

end

end A001586.P17269233966422330178

/-! ## A001586.P10786344104788194394

`A057077(n+1)*A212435(n)`
-/

namespace A001586.P10786344104788194394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A212435 n

end

end A001586.P10786344104788194394

/-! ## A001586.P10075088289298695967

`A033999(A004526(n))*A188458(n)`
-/

namespace A001586.P10075088289298695967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A188458 n

end

end A001586.P10075088289298695967

/-! ## A001586.P14679551689008300886

`gcd(A075255(A062584(n)), A212435(n))`
-/

namespace A001586.P14679551689008300886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075255 (A062584 n).toNat) (A212435 n)

end

end A001586.P14679551689008300886

/-! ## A001586.P5386574790813349852

`A079858(n)/A000079(n)`
-/

namespace A001586.P5386574790813349852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079858 n : ℚ) / (A000079 n : ℚ)

end

end A001586.P5386574790813349852

/-!
# A001587: Generalized Euler numbers.

The programs for A001587, there is no canonical definition to state claims against.
-/

/-! ## A001587.P9068521564391251963

`abs(A156332(n)+A156330(n))`
-/

namespace A001587.P9068521564391251963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156332 n + A156330 n|

end

end A001587.P9068521564391251963

/-! ## A001587.P14328395333671474033

`∪[A000411(n+1), A000192(n)]`
-/

namespace A001587.P14328395333671474033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001587.P14328395333671474033

/-! ## A001587.P14725685877969803980

`∪[2*A352977(n), A000411(n+1)]`
-/

namespace A001587.P14725685877969803980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001587.P14725685877969803980

/-!
# A001588: a(n) = a(n-1) + a(n-2) - 1.

The programs for A001588, the canonical program `A001588.P17789746109592414280` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001588 has offset 0).

The definition of A001588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A001588.P17789746109592414280`, by `A001588.P17789746109592414280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001588.P17789746109592414280

`a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001588

/-- `a(n-1)+a(n-2)-1` -/
def P17789746109592414280.Spec : Prop :=
  ∀ n, P17789746109592414280.a n = A001588 n

theorem P17789746109592414280.correct : P17789746109592414280.Spec := by
  intro n
  simp only [A001588]

end A001588

/-! ## A001588.P2744603211028966315

`A000045(n)+A001611(n)`
-/

namespace A001588.P2744603211028966315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A001611 n

end

end A001588.P2744603211028966315

namespace A001588

/-- `A000045(n)+A001611(n)` -/
def P2744603211028966315.Spec : Prop :=
  ∀ n, P2744603211028966315.a n = A001588 n

end A001588

/-! ## A001588.P7029710697095515832

`a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A001588.P7029710697095515832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A001588.P7029710697095515832

namespace A001588

/-- `a(n-1)-(1-a(n-2))` -/
def P7029710697095515832.Spec : Prop :=
  ∀ n, P7029710697095515832.a n = A001588 n

theorem P7029710697095515832.correct : P7029710697095515832.Spec := by
  intro n
  simp only [A001588, Nat.add_sub_cancel, A001588.P7029710697095515832.a, A001588.P17789746109592414280.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001588

/-! ## A001588.P14709651018249127364

`or(1, A055389(n))`
-/

namespace A001588.P14709651018249127364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055389 n)

end

end A001588.P14709651018249127364

namespace A001588

/-- `or(1, A055389(n))` -/
def P14709651018249127364.Spec : Prop :=
  ∀ n, P14709651018249127364.a n = A001588 n

end A001588

/-! ## A001588.P9579997826859084356

`or(1, A166012(n))`
-/

namespace A001588.P9579997826859084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166012 n)

end

end A001588.P9579997826859084356

namespace A001588

/-- `or(1, A166012(n))` -/
def P9579997826859084356.Spec : Prop :=
  ∀ n, P9579997826859084356.a n = A001588 n

end A001588

/-! ## A001588.P3211817671221261335

`or(1, A377368(n))`
-/

namespace A001588.P3211817671221261335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A377368 n)

end

end A001588.P3211817671221261335

namespace A001588

/-- `or(1, A377368(n))` -/
def P3211817671221261335.Spec : Prop :=
  ∀ n, P3211817671221261335.a n = A001588 n

end A001588

/-! ## A001588.P4752802717519239567

`∑[abs(Δ[A006355(n)])]`
-/

namespace A001588.P4752802717519239567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001588.P4752802717519239567

namespace A001588

/-- `∑[abs(Δ[A006355(n)])]` -/
def P4752802717519239567.Spec : Prop :=
  ∀ n, P4752802717519239567.a n = A001588 n

end A001588

/-! ## A001588.P13178250030320058859

`A006355(n+1)+1`
-/

namespace A001588.P13178250030320058859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + 1

end

end A001588.P13178250030320058859

namespace A001588

/-- `A006355(n+1)+1` -/
def P13178250030320058859.Spec : Prop :=
  ∀ n, P13178250030320058859.a n = A001588 n

end A001588

/-! ## A001588.P4477621321440330900

`A118658(n+1)+1`
-/

namespace A001588.P4477621321440330900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + 1

end

end A001588.P4477621321440330900

namespace A001588

/-- `A118658(n+1)+1` -/
def P4477621321440330900.Spec : Prop :=
  ∀ n, P4477621321440330900.a n = A001588 n

end A001588

/-! ## A001588.P12778340665911824764

`A198834(n+2)+1`
-/

namespace A001588.P12778340665911824764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 2) + 1

end

end A001588.P12778340665911824764

namespace A001588

/-- `A198834(n+2)+1` -/
def P12778340665911824764.Spec : Prop :=
  ∀ n, P12778340665911824764.a n = A001588 n

end A001588

/-! ## A001588.P14521642240492118320

`2*A157725(n)-3`
-/

namespace A001588.P14521642240492118320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157725 n - 3

end

end A001588.P14521642240492118320

namespace A001588

/-- `2*A157725(n)-3` -/
def P14521642240492118320.Spec : Prop :=
  ∀ n, P14521642240492118320.a n = A001588 n

end A001588

/-! ## A001588.P7756024504443277055

`2*A157726(n)-5`
-/

namespace A001588.P7756024504443277055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157726 n - 5

end

end A001588.P7756024504443277055

namespace A001588

/-- `2*A157726(n)-5` -/
def P7756024504443277055.Spec : Prop :=
  ∀ n, P7756024504443277055.a n = A001588 n

end A001588

/-! ## A001588.P15236219606783641503

`or(1, A062114(n)+1)`
-/

namespace A001588.P15236219606783641503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062114 n + 1)

end

end A001588.P15236219606783641503

namespace A001588

/-- `or(1, A062114(n)+1)` -/
def P15236219606783641503.Spec : Prop :=
  ∀ n, P15236219606783641503.a n = A001588 n

end A001588

/-! ## A001588.P820905628894153202

`or(1, A253198(n)+1)`
-/

namespace A001588.P820905628894153202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253198 n + 1)

end

end A001588.P820905628894153202

namespace A001588

/-- `or(1, A253198(n)+1)` -/
def P820905628894153202.Spec : Prop :=
  ∀ n, P820905628894153202.a n = A001588 n

end A001588

/-! ## A001588.P9148342306612878585

`or(1, A163733(n+2))`
-/

namespace A001588.P9148342306612878585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163733 (n + 2))

end

end A001588.P9148342306612878585

namespace A001588

/-- `or(1, A163733(n+2))` -/
def P9148342306612878585.Spec : Prop :=
  ∀ n, P9148342306612878585.a n = A001588 n

end A001588

/-! ## A001588.P5132640044278798821

`abs(2*A236191(n))+1`
-/

namespace A001588.P5132640044278798821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A236191 n| + 1

end

end A001588.P5132640044278798821

namespace A001588

/-- `abs(2*A236191(n))+1` -/
def P5132640044278798821.Spec : Prop :=
  ∀ n, P5132640044278798821.a n = A001588 n

end A001588

/-! ## A001588.P7127661194098232011

`abs(2*A333378(n))+1`
-/

namespace A001588.P7127661194098232011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A333378 n| + 1

end

end A001588.P7127661194098232011

namespace A001588

/-- `abs(2*A333378(n))+1` -/
def P7127661194098232011.Spec : Prop :=
  ∀ n, P7127661194098232011.a n = A001588 n

end A001588

/-! ## A001588.P15468514549238725253

`2*A212804(n+1)+1`
-/

namespace A001588.P15468514549238725253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 (n + 1) + 1

end

end A001588.P15468514549238725253

namespace A001588

/-- `2*A212804(n+1)+1` -/
def P15468514549238725253.Spec : Prop :=
  ∀ n, P15468514549238725253.a n = A001588 n

end A001588

/-! ## A001588.P16168082485141544490

`A214927(2*(n+1))+1`
-/

namespace A001588.P16168082485141544490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (2 * (n + 1)) + 1

end

end A001588.P16168082485141544490

namespace A001588

/-- `A214927(2*(n+1))+1` -/
def P16168082485141544490.Spec : Prop :=
  ∀ n, P16168082485141544490.a n = A001588 n

end A001588

/-!
# A001589: a(n) = 4^n + n^4.

The programs for A001589, the canonical program `A001589.P5874396592666790228` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001589 has offset 0).

The definition of A001589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+n^4` (program `A001589.P5874396592666790228`, by `A001589.P5874396592666790228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001589.P5874396592666790228

`4^n+n^4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001589

/-- `4^n+n^4` -/
def P5874396592666790228.Spec : Prop :=
  ∀ n, (P5874396592666790228.a n : ℤ) = A001589 n

theorem P5874396592666790228.correct : P5874396592666790228.Spec := by
  intro n
  simp only [A001589]

end A001589

/-! ## A001589.P9798014097803051278

`record[A095831(n+1)²+A130321(n)²]`
-/

namespace A001589.P9798014097803051278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) ^ 2 + A130321 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001589.P9798014097803051278

namespace A001589

/-- `record[A095831(n+1)²+A130321(n)²]` -/
def P9798014097803051278.Spec : Prop :=
  ∀ n, P9798014097803051278.a n = A001589 n

end A001589

/-! ## A001589.P15082719277720052687

`A156354(A155212(n)+12)`
-/

namespace A001589.P15082719277720052687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A155212 n + 12).toNat

end

end A001589.P15082719277720052687

namespace A001589

/-- `A156354(A155212(n)+12)` -/
def P15082719277720052687.Spec : Prop :=
  ∀ n, P15082719277720052687.a n = A001589 n

end A001589

/-! ## A001589.P1738400366872723436

`A055652(eq[4, A002262(n)])`
-/

namespace A001589.P1738400366872723436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001589.P1738400366872723436

namespace A001589

/-- `A055652(eq[4, A002262(n)])` -/
def P1738400366872723436.Spec : Prop :=
  ∀ n, P1738400366872723436.a n = A001589 n

end A001589

/-! ## A001589.P4207970260791746212

`A156354(eq[4, A002262(n)])`
-/

namespace A001589.P4207970260791746212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001589.P4207970260791746212

namespace A001589

/-- `A156354(eq[4, A002262(n)])` -/
def P4207970260791746212.Spec : Prop :=
  ∀ n, P4207970260791746212.a n = A001589 n

end A001589

/-! ## A001589.P15011431664211722612

`A055652(eq[5, A002260(n+1)])`
-/

namespace A001589.P15011431664211722612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001589.P15011431664211722612

namespace A001589

/-- `A055652(eq[5, A002260(n+1)])` -/
def P15011431664211722612.Spec : Prop :=
  ∀ n, P15011431664211722612.a n = A001589 n

end A001589

/-! ## A001589.P6530795586159592572

`A055652(Δ[A006416(n+2)]+7)`
-/

namespace A001589.P6530795586159592572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (f1 (n + 1) - f1 n + 7).toNat

end

end A001589.P6530795586159592572

namespace A001589

/-- `A055652(Δ[A006416(n+2)]+7)` -/
def P6530795586159592572.Spec : Prop :=
  ∀ n, P6530795586159592572.a n = A001589 n

end A001589

/-! ## A001589.P10690646386380432084

`A055652(eq[2, A144328(n+1)-2])`
-/

namespace A001589.P10690646386380432084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001589.P10690646386380432084

namespace A001589

/-- `A055652(eq[2, A144328(n+1)-2])` -/
def P10690646386380432084.Spec : Prop :=
  ∀ n, P10690646386380432084.a n = A001589 n

end A001589

/-! ## A001589.P5670718835426028974

`A055652(eq[2, A144328(n+1)/2])`
-/

namespace A001589.P5670718835426028974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A001589.P5670718835426028974

namespace A001589

/-- `A055652(eq[2, A144328(n+1)/2])` -/
def P5670718835426028974.Spec : Prop :=
  ∀ n, P5670718835426028974.a n = A001589 n

end A001589

/-!
# A001590: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0)=0, a(1)=1, a(2)=0.

The programs for A001590, the canonical program `A001590.P10373931554695472874` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001590 has offset 0).

The definition of A001590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A001590.P10373931554695472874`, by `A001590.P10373931554695472874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001590.P17500540643808141158

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A001590.P17500540643808141158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A001590.P17500540643808141158

namespace A001590

/-- `2*a(n-1)-a(n-4)` -/
def P17500540643808141158.Spec : Prop :=
  ∀ n, P17500540643808141158.a n = A001590 n

end A001590

/-! ## A001590.P10373931554695472874

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001590

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P10373931554695472874.Spec : Prop :=
  ∀ n, (P10373931554695472874.a n : ℤ) = A001590 n

theorem P10373931554695472874.correct : P10373931554695472874.Spec := by
  intro n
  simp only [A001590]

end A001590

/-! ## A001590.P4939946418562554074

`A000073(n+1)-A000073(n)`
-/

namespace A001590.P4939946418562554074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) - A000073 n

end

end A001590.P4939946418562554074

namespace A001590

/-- `A000073(n+1)-A000073(n)` -/
def P4939946418562554074.Spec : Prop :=
  ∀ n, P4939946418562554074.a n = A001590 n

end A001590

/-! ## A001590.P3170747811163198237

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A001590.P3170747811163198237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A001590.P3170747811163198237

namespace A001590

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P3170747811163198237.Spec : Prop :=
  ∀ n, P3170747811163198237.a n = A001590 n

end A001590

/-! ## A001590.P11388544666989362190

`A114952(A042963(n+1))`
-/

namespace A001590.P11388544666989362190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A042963 (n + 1)).toNat

end

end A001590.P11388544666989362190

namespace A001590

/-- `A114952(A042963(n+1))` -/
def P11388544666989362190.Spec : Prop :=
  ∀ n, P11388544666989362190.a n = A001590 n

end A001590

/-! ## A001590.P3038521316859368557

`A114952(A014601(n+1)-2)`
-/

namespace A001590.P3038521316859368557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 (n + 1) - 2).toNat

end

end A001590.P3038521316859368557

namespace A001590

/-- `A114952(A014601(n+1)-2)` -/
def P3038521316859368557.Spec : Prop :=
  ∀ n, P3038521316859368557.a n = A001590 n

end A001590

/-! ## A001590.P5531373523495778854

`∑[A081172(n)-A000073(n)]-1`
-/

namespace A001590.P5531373523495778854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001590.P5531373523495778854

namespace A001590

/-- `∑[A081172(n)-A000073(n)]-1` -/
def P5531373523495778854.Spec : Prop :=
  ∀ n, P5531373523495778854.a n = A001590 n

end A001590

/-! ## A001590.P1045887650483974603

`Δ[A000073(n)]`
-/

namespace A001590.P1045887650483974603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001590.P1045887650483974603

namespace A001590

/-- `Δ[A000073(n)]` -/
def P1045887650483974603.Spec : Prop :=
  ∀ n, P1045887650483974603.a n = A001590 n

end A001590

/-! ## A001590.P17839202898468860934

`A276658(n)-A081172(n)`
-/

namespace A001590.P17839202898468860934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n - A081172 n

end

end A001590.P17839202898468860934

namespace A001590

/-- `A276658(n)-A081172(n)` -/
def P17839202898468860934.Spec : Prop :=
  ∀ n, P17839202898468860934.a n = A001590 n

end A001590

/-! ## A001590.P14881634194595406091

`(A020992(n)-A000073(n))/2`
-/

namespace A001590.P14881634194595406091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020992 n - A000073 n : ℚ) / 2

end

end A001590.P14881634194595406091

namespace A001590

/-- `(A020992(n)-A000073(n))/2` -/
def P14881634194595406091.Spec : Prop :=
  ∀ n, P14881634194595406091.a n = (A001590 n : ℚ)

end A001590

/-! ## A001590.P9721529101882420867

`Δ[Δ[A192804(n)]]`
-/

namespace A001590.P9721529101882420867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001590.P9721529101882420867

namespace A001590

/-- `Δ[Δ[A192804(n)]]` -/
def P9721529101882420867.Spec : Prop :=
  ∀ n, P9721529101882420867.a n = A001590 n

end A001590

/-! ## A001590.P11319939341945097262

`Δ[A354784(n)/2]`
-/

namespace A001590.P11319939341945097262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001590.P11319939341945097262

namespace A001590

/-- `Δ[A354784(n)/2]` -/
def P11319939341945097262.Spec : Prop :=
  ∀ n, P11319939341945097262.a n = (A001590 n : ℚ)

end A001590

/-! ## A001590.P9596610492520981556

`A275778(n)-A000213(n)`
-/

namespace A001590.P9596610492520981556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n - A000213 n

end

end A001590.P9596610492520981556

namespace A001590

/-- `A275778(n)-A000213(n)` -/
def P9596610492520981556.Spec : Prop :=
  ∀ n, P9596610492520981556.a n = A001590 n

end A001590

/-! ## A001590.P17520057043173411463

`2*A000213(n)-A214899(n)`
-/

namespace A001590.P17520057043173411463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - A214899 n

end

end A001590.P17520057043173411463

namespace A001590

/-- `2*A000213(n)-A214899(n)` -/
def P17520057043173411463.Spec : Prop :=
  ∀ n, P17520057043173411463.a n = A001590 n

end A001590

/-! ## A001590.P17529916207799144292

`A213816(2*n+1)-A081172(n+1)`
-/

namespace A001590.P17529916207799144292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1) - A081172 (n + 1)

end

end A001590.P17529916207799144292

namespace A001590

/-- `A213816(2*n+1)-A081172(n+1)` -/
def P17529916207799144292.Spec : Prop :=
  ∀ n, P17529916207799144292.a n = A001590 n

end A001590

/-! ## A001590.P5309166943428592944

`A000213(n)+A081172(n)-A141036(n)`
-/

namespace A001590.P5309166943428592944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A081172 n - A141036 n)

end

end A001590.P5309166943428592944

namespace A001590

/-- `A000213(n)+A081172(n)-A141036(n)` -/
def P5309166943428592944.Spec : Prop :=
  ∀ n, P5309166943428592944.a n = A001590 n

end A001590

/-! ## A001590.P10093826819353717548

`A214727(n)-A000073(n)-A000213(n)`
-/

namespace A001590.P10093826819353717548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A000073 n - A000213 n

end

end A001590.P10093826819353717548

namespace A001590

/-- `A214727(n)-A000073(n)-A000213(n)` -/
def P10093826819353717548.Spec : Prop :=
  ∀ n, P10093826819353717548.a n = A001590 n

end A001590

/-! ## A001590.P2936761663794159242

`A000213(n+1)+A081172(n)-A020992(n+1)`
-/

namespace A001590.P2936761663794159242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A081172 n - A020992 (n + 1))

end

end A001590.P2936761663794159242

namespace A001590

/-- `A000213(n+1)+A081172(n)-A020992(n+1)` -/
def P2936761663794159242.Spec : Prop :=
  ∀ n, P2936761663794159242.a n = A001590 n

end A001590

/-! ## A001590.P2353176135334979916

`A214825(n)-A047081(n)`
-/

namespace A001590.P2353176135334979916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - A047081 n

end

end A001590.P2353176135334979916

namespace A001590

/-- `A214825(n)-A047081(n)` -/
def P2353176135334979916.Spec : Prop :=
  ∀ n, P2353176135334979916.a n = A001590 n

end A001590

/-!
# A001591: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5), a(0)=a(1)=a(2)=a(3)=0, a(4)=1.

The programs for A001591, the canonical program `A001591.P1325393177825358437` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001591 has offset 0).

The definition of A001591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A001591.P1325393177825358437`, by `A001591.P1325393177825358437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001591.P17676866520493539938

`2*a(n-1)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A001591.P17676866520493539938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 6)

end

end A001591.P17676866520493539938

namespace A001591

/-- `2*a(n-1)-a(n-6)` -/
def P17676866520493539938.Spec : Prop :=
  ∀ n, P17676866520493539938.a n = A001591 n

end A001591

/-! ## A001591.P1325393177825358437

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001591

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P1325393177825358437.Spec : Prop :=
  ∀ n, (P1325393177825358437.a n : ℤ) = A001591 n

theorem P1325393177825358437.correct : P1325393177825358437.Spec := by
  intro n
  simp only [A001591]

end A001591

/-! ## A001591.P8417386163683577771

`Δ[A001949(n)]`
-/

namespace A001591.P8417386163683577771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001591.P8417386163683577771

namespace A001591

/-- `Δ[A001949(n)]` -/
def P8417386163683577771.Spec : Prop :=
  ∀ n, P8417386163683577771.a n = A001591 n

end A001591

/-! ## A001591.P15987016628520785395

`A124313(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A001591.P15987016628520785395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A124313 (n + 1) - a (n - 1)

end

end A001591.P15987016628520785395

namespace A001591

/-- `A124313(n+1)-a(n-1)` -/
def P15987016628520785395.Spec : Prop :=
  ∀ n, P15987016628520785395.a n = A001591 n

end A001591

/-! ## A001591.P13361343317565299622

`A001949(n+1)-A001949(n)`
-/

namespace A001591.P13361343317565299622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1) - A001949 n

end

end A001591.P13361343317565299622

namespace A001591

/-- `A001949(n+1)-A001949(n)` -/
def P13361343317565299622.Spec : Prop :=
  ∀ n, P13361343317565299622.a n = A001591 n

end A001591

/-! ## A001591.P8156133825345461568

`A124312(n+1)-A251653(n)`
-/

namespace A001591.P8156133825345461568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1) - A251653 n

end

end A001591.P8156133825345461568

namespace A001591

/-- `A124312(n+1)-A251653(n)` -/
def P8156133825345461568.Spec : Prop :=
  ∀ n, P8156133825345461568.a n = A001591 n

end A001591

/-! ## A001591.P1757371476704944841

`Δ[A000322(n)/4]`
-/

namespace A001591.P1757371476704944841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000322 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001591.P1757371476704944841

namespace A001591

/-- `Δ[A000322(n)/4]` -/
def P1757371476704944841.Spec : Prop :=
  ∀ n, P1757371476704944841.a n = (A001591 n : ℚ)

end A001591

/-! ## A001591.P2556898754029756303

`A251653(n+3)-A124313(n+3)`
-/

namespace A001591.P2556898754029756303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 (n + 3) - A124313 (n + 3)

end

end A001591.P2556898754029756303

namespace A001591

/-- `A251653(n+3)-A124313(n+3)` -/
def P2556898754029756303.Spec : Prop :=
  ∀ n, P2556898754029756303.a n = A001591 n

end A001591

/-! ## A001591.P7312419578176128992

`Δ[A135493(n+1)-A023424(n)]/4`
-/

namespace A001591.P7312419578176128992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A023424 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A001591.P7312419578176128992

namespace A001591

/-- `Δ[A135493(n+1)-A023424(n)]/4` -/
def P7312419578176128992.Spec : Prop :=
  ∀ n, P7312419578176128992.a n = (A001591 n : ℚ)

end A001591

/-! ## A001591.P13451538878139881300

`A092921(A077169(n+1)+n)`
-/

namespace A001591.P13451538878139881300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A077169 (n + 1) + (n : ℤ)).toNat

end

end A001591.P13451538878139881300

namespace A001591

/-- `A092921(A077169(n+1)+n)` -/
def P13451538878139881300.Spec : Prop :=
  ∀ n, P13451538878139881300.a n = A001591 n

end A001591

/-! ## A001591.P15010350538889651433

`A092921((A167499(n)-1)*A130543(n))`
-/

namespace A001591.P15010350538889651433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 ((A167499 n - 1) * A130543 n).toNat

end

end A001591.P15010350538889651433

namespace A001591

/-- `A092921((A167499(n)-1)*A130543(n))` -/
def P15010350538889651433.Spec : Prop :=
  ∀ n, P15010350538889651433.a n = A001591 n

end A001591

/-!
# A001592: Hexanacci numbers: a(n+1) = a(n)+...+a(n-5) with a(0)=...=a(4)=0, a(5)=1.

The programs for A001592, the canonical program `A001592.P16428630272280428975` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001592 has offset 0).

The definition of A001592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001592.P16428630272280428975

`2*a(n-1)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001592

/-- `2*a(n-1)-a(n-7)` -/
def P16428630272280428975.Spec : Prop :=
  ∀ n, P16428630272280428975.a n = A001592 n

theorem P16428630272280428975.correct : P16428630272280428975.Spec := by
  intro n
  simp only [A001592]

end A001592

/-! ## A001592.P12097018973785069698

`∑[A251706(abs(1-n))]`
-/

namespace A001592.P12097018973785069698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001592.P12097018973785069698

namespace A001592

/-- `∑[A251706(abs(1-n))]` -/
def P12097018973785069698.Spec : Prop :=
  ∀ n, P12097018973785069698.a n = A001592 n

end A001592

/-! ## A001592.P4956139899921007537

`A251706(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A001592.P4956139899921007537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251706 (n - 1) + a (n - 1)

end

end A001592.P4956139899921007537

namespace A001592

/-- `A251706(n-1)+a(n-1)` -/
def P4956139899921007537.Spec : Prop :=
  ∀ n, P4956139899921007537.a n = A001592 n

end A001592

/-! ## A001592.P11517325145627756042

`A251709(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A001592.P11517325145627756042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251709 (n + 1) - a (n - 1)

end

end A001592.P11517325145627756042

namespace A001592

/-- `A251709(n+1)-a(n-1)` -/
def P11517325145627756042.Spec : Prop :=
  ∀ n, P11517325145627756042.a n = A001592 n

end A001592

/-! ## A001592.P15684730468610231965

`∑[A251706(n)]-A251706(n)`
-/

namespace A001592.P15684730468610231965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251706 n

end

end A001592.P15684730468610231965

namespace A001592

/-- `∑[A251706(n)]-A251706(n)` -/
def P15684730468610231965.Spec : Prop :=
  ∀ n, P15684730468610231965.a n = A001592 n

end A001592

/-! ## A001592.P17692231679581425141

`A251706(n+1)-A251707(n)`
-/

namespace A001592.P17692231679581425141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 1) - A251707 n

end

end A001592.P17692231679581425141

namespace A001592

/-- `A251706(n+1)-A251707(n)` -/
def P17692231679581425141.Spec : Prop :=
  ∀ n, P17692231679581425141.a n = A001592 n

end A001592

/-! ## A001592.P15103935275723359371

`A251707(n+1)-A251708(n)`
-/

namespace A001592.P15103935275723359371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) - A251708 n

end

end A001592.P15103935275723359371

namespace A001592

/-- `A251707(n+1)-A251708(n)` -/
def P15103935275723359371.Spec : Prop :=
  ∀ n, P15103935275723359371.a n = A001592 n

end A001592

/-! ## A001592.P7217098420877588729

`A251708(n+1)-A251709(n)`
-/

namespace A001592.P7217098420877588729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251708 (n + 1) - A251709 n

end

end A001592.P7217098420877588729

namespace A001592

/-- `A251708(n+1)-A251709(n)` -/
def P7217098420877588729.Spec : Prop :=
  ∀ n, P7217098420877588729.a n = A001592 n

end A001592

/-! ## A001592.P9644009939789831428

`Δ[A000383(n)/5]`
-/

namespace A001592.P9644009939789831428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001592.P9644009939789831428

namespace A001592

/-- `Δ[A000383(n)/5]` -/
def P9644009939789831428.Spec : Prop :=
  ∀ n, P9644009939789831428.a n = (A001592 n : ℚ)

end A001592

/-! ## A001592.P9681418415441542870

`(A000383(n+1)-A000383(n))/5`
-/

namespace A001592.P9681418415441542870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 (n + 1) - A000383 n : ℚ) / 5

end

end A001592.P9681418415441542870

namespace A001592

/-- `(A000383(n+1)-A000383(n))/5` -/
def P9681418415441542870.Spec : Prop :=
  ∀ n, P9681418415441542870.a n = (A001592 n : ℚ)

end A001592

/-! ## A001592.P13635671537329151152

`Δ[A172316(n)-Δ[A172316(n)]]`
-/

namespace A001592.P13635671537329151152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172316 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001592.P13635671537329151152

namespace A001592

/-- `Δ[A172316(n)-Δ[A172316(n)]]` -/
def P13635671537329151152.Spec : Prop :=
  ∀ n, P13635671537329151152.a n = A001592 n

end A001592

/-! ## A001592.P12861618253274168434

`Δ[A143662(n)]-A143662(n)`
-/

namespace A001592.P12861618253274168434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A143662 n

end

end A001592.P12861618253274168434

namespace A001592

/-- `Δ[A143662(n)]-A143662(n)` -/
def P12861618253274168434.Spec : Prop :=
  ∀ n, P12861618253274168434.a n = A001592 n

end A001592

/-! ## A001592.P5678076270435395897

`A143662(n+1)-2*A143662(n)`
-/

namespace A001592.P5678076270435395897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143662 (n + 1) - 2 * A143662 n

end

end A001592.P5678076270435395897

namespace A001592

/-- `A143662(n+1)-2*A143662(n)` -/
def P5678076270435395897.Spec : Prop :=
  ∀ n, P5678076270435395897.a n = A001592 n

end A001592

/-! ## A001592.P5203686893976137449

`A092921(A077169(n)+Δ[n²])`
-/

namespace A001592.P5203686893976137449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A077169 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A001592.P5203686893976137449

namespace A001592

/-- `A092921(A077169(n)+Δ[n²])` -/
def P5203686893976137449.Spec : Prop :=
  ∀ n, P5203686893976137449.a n = A001592 n

end A001592

/-! ## A001592.P11586743923718119007

`A092921(A130543(n)*A167499(n))`
-/

namespace A001592.P11586743923718119007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A130543 n * A167499 n).toNat

end

end A001592.P11586743923718119007

namespace A001592

/-- `A092921(A130543(n)*A167499(n))` -/
def P11586743923718119007.Spec : Prop :=
  ∀ n, P11586743923718119007.a n = A001592 n

end A001592

/-! ## A001592.P10812109020096552135

`A092921(A167499(n))%A000322(n)`
-/

namespace A001592.P10812109020096552135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092921 (A167499 n).toNat) (A000322 n)

end

end A001592.P10812109020096552135

namespace A001592

/-- `A092921(A167499(n))%A000322(n)` -/
def P10812109020096552135.Spec : Prop :=
  ∀ n, P10812109020096552135.a n = A001592 n

end A001592

/-! ## A001592.P14515229945877397295

`A092921(A167499(n)%A288465(n))`
-/

namespace A001592.P14515229945877397295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (Int.tmod (A167499 n) (A288465 n)).toNat

end

end A001592.P14515229945877397295

namespace A001592

/-- `A092921(A167499(n)%A288465(n))` -/
def P14515229945877397295.Spec : Prop :=
  ∀ n, P14515229945877397295.a n = A001592 n

end A001592

/-!
# A001593: a(n) = 5^n + n^5.

The programs for A001593, the canonical program `A001593.P12119498645374514372` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001593 has offset 0).

The definition of A001593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+n^5` (program `A001593.P12119498645374514372`, by `A001593.P12119498645374514372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001593.P12119498645374514372

`5^n+n^5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001593

/-- `5^n+n^5` -/
def P12119498645374514372.Spec : Prop :=
  ∀ n, (P12119498645374514372.a n : ℤ) = A001593 n

theorem P12119498645374514372.correct : P12119498645374514372.Spec := by
  intro n
  simp only [A001593]

end A001593

/-! ## A001593.P1023607312973262818

`abs(5*n-A220511(n))`
-/

namespace A001593.P1023607312973262818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - A220511 n|

end

end A001593.P1023607312973262818

namespace A001593

/-- `abs(5*n-A220511(n))` -/
def P1023607312973262818.Spec : Prop :=
  ∀ n, P1023607312973262818.a n = A001593 n

end A001593

/-! ## A001593.P6740333762038220286

`abs(or(1, A000351(n)+n*(n²²+5))-5*n)`
-/

namespace A001593.P6740333762038220286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (A000351 n + (n * ((n ^ 2) ^ 2 + 5) : ℤ)) - (5 * n : ℤ)|

end

end A001593.P6740333762038220286

namespace A001593

/-- `abs(or(1, A000351(n)+n*(n²²+5))-5*n)` -/
def P6740333762038220286.Spec : Prop :=
  ∀ n, P6740333762038220286.a n = A001593 n

end A001593

/-! ## A001593.P10194022635509337355

`abs(A008587(n)-or(1, A000351(n)+n*(n²²+5)))`
-/

namespace A001593.P10194022635509337355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008587 n - Int.lor 1 (A000351 n + (n * ((n ^ 2) ^ 2 + 5) : ℤ))|

end

end A001593.P10194022635509337355

namespace A001593

/-- `abs(A008587(n)-or(1, A000351(n)+n*(n²²+5)))` -/
def P10194022635509337355.Spec : Prop :=
  ∀ n, P10194022635509337355.a n = A001593 n

end A001593

/-! ## A001593.P7729500809408891323

`abs(5*n-(A221907(n)+A000584(n))*A033999(n)²)`
-/

namespace A001593.P7729500809408891323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - (A221907 n + A000584 n) * A033999 n ^ 2|

end

end A001593.P7729500809408891323

namespace A001593

/-- `abs(5*n-(A221907(n)+A000584(n))*A033999(n)²)` -/
def P7729500809408891323.Spec : Prop :=
  ∀ n, P7729500809408891323.a n = A001593 n

end A001593

/-! ## A001593.P3797972649357615002

`abs((A221907(n)+A000584(n))*A009001(2*n)²-5*n)`
-/

namespace A001593.P3797972649357615002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A221907 n + A000584 n) * A009001 (2 * n) ^ 2 - (5 * n : ℤ)|

end

end A001593.P3797972649357615002

namespace A001593

/-- `abs((A221907(n)+A000584(n))*A009001(2*n)²-5*n)` -/
def P3797972649357615002.Spec : Prop :=
  ∀ n, P3797972649357615002.a n = A001593 n

end A001593

/-! ## A001593.P11602415256232977770

`A055652(eq[5, A002262(n)])`
-/

namespace A001593.P11602415256232977770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001593.P11602415256232977770

namespace A001593

/-- `A055652(eq[5, A002262(n)])` -/
def P11602415256232977770.Spec : Prop :=
  ∀ n, P11602415256232977770.a n = A001593 n

end A001593

/-! ## A001593.P10129794200886142318

`A055652(A000096(n+4)+6)`
-/

namespace A001593.P10129794200886142318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000096 (n + 4) + 6).toNat

end

end A001593.P10129794200886142318

namespace A001593

/-- `A055652(A000096(n+4)+6)` -/
def P10129794200886142318.Spec : Prop :=
  ∀ n, P10129794200886142318.a n = A001593 n

end A001593

/-! ## A001593.P10594298694967095723

`A156354(A046691(n+3)+9)`
-/

namespace A001593.P10594298694967095723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A046691 (n + 3) + 9).toNat

end

end A001593.P10594298694967095723

namespace A001593

/-- `A156354(A046691(n+3)+9)` -/
def P10594298694967095723.Spec : Prop :=
  ∀ n, P10594298694967095723.a n = A001593 n

end A001593

/-! ## A001593.P17682443087464365952

`A055652(eq[5, A144328(n+1)])`
-/

namespace A001593.P17682443087464365952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001593.P17682443087464365952

namespace A001593

/-- `A055652(eq[5, A144328(n+1)])` -/
def P17682443087464365952.Spec : Prop :=
  ∀ n, P17682443087464365952.a n = A001593 n

end A001593

/-!
# A001594: a(n) = 6^n + n^6.

The programs for A001594, the canonical program `A001594.P13689490672904814705` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001594 has offset 0).

The definition of A001594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+n^6` (program `A001594.P13689490672904814705`, by `A001594.P13689490672904814705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001594.P13689490672904814705

`6^n+n^6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001594

/-- `6^n+n^6` -/
def P13689490672904814705.Spec : Prop :=
  ∀ n, (P13689490672904814705.a n : ℤ) = A001594 n

theorem P13689490672904814705.correct : P13689490672904814705.Spec := by
  intro n
  simp only [A001594]

end A001594

/-! ## A001594.P5103308326538377363

`A156354(eq[6, A002262(n)])`
-/

namespace A001594.P5103308326538377363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001594.P5103308326538377363

namespace A001594

/-- `A156354(eq[6, A002262(n)])` -/
def P5103308326538377363.Spec : Prop :=
  ∀ n, P5103308326538377363.a n = A001594 n

end A001594

/-! ## A001594.P15486278909530310234

`A156354(A167499(n+5)+1)`
-/

namespace A001594.P15486278909530310234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A167499 (n + 5) + 1).toNat

end

end A001594.P15486278909530310234

namespace A001594

/-- `A156354(A167499(n+5)+1)` -/
def P15486278909530310234.Spec : Prop :=
  ∀ n, P15486278909530310234.a n = A001594 n

end A001594

/-! ## A001594.P13319939504034124071

`A156354(A167487(n+5)-1)`
-/

namespace A001594.P13319939504034124071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A167487 (n + 5) - 1).toNat

end

end A001594.P13319939504034124071

namespace A001594

/-- `A156354(A167487(n+5)-1)` -/
def P13319939504034124071.Spec : Prop :=
  ∀ n, P13319939504034124071.a n = A001594 n

end A001594

/-! ## A001594.P14117644576126857417

`A156354(eq[7, A002260(n+1)])`
-/

namespace A001594.P14117644576126857417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001594.P14117644576126857417

namespace A001594

/-- `A156354(eq[7, A002260(n+1)])` -/
def P14117644576126857417.Spec : Prop :=
  ∀ n, P14117644576126857417.a n = A001594 n

end A001594

/-! ## A001594.P16401140162495041428

`A156354(A000217(n+7)-7)`
-/

namespace A001594.P16401140162495041428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000217 (n + 7) - 7).toNat

end

end A001594.P16401140162495041428

namespace A001594

/-- `A156354(A000217(n+7)-7)` -/
def P16401140162495041428.Spec : Prop :=
  ∀ n, P16401140162495041428.a n = A001594 n

end A001594

/-! ## A001594.P2671079875517473598

`A156354(A000124(n+7)-8)`
-/

namespace A001594.P2671079875517473598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000124 (n + 7) - 8).toNat

end

end A001594.P2671079875517473598

namespace A001594

/-- `A156354(A000124(n+7)-8)` -/
def P2671079875517473598.Spec : Prop :=
  ∀ n, P2671079875517473598.a n = A001594 n

end A001594

/-! ## A001594.P12804044414343096943

`A156354(Δ[A101853(n+2)]+2)`
-/

namespace A001594.P12804044414343096943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (f1 (n + 1) - f1 n + 2).toNat

end

end A001594.P12804044414343096943

namespace A001594

/-- `A156354(Δ[A101853(n+2)]+2)` -/
def P12804044414343096943.Spec : Prop :=
  ∀ n, P12804044414343096943.a n = A001594 n

end A001594

/-! ## A001594.P10212739605047037934

`A156354(A000096(n+5)+n+1)`
-/

namespace A001594.P10212739605047037934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A001594.P10212739605047037934

namespace A001594

/-- `A156354(A000096(n+5)+n+1)` -/
def P10212739605047037934.Spec : Prop :=
  ∀ n, P10212739605047037934.a n = A001594 n

end A001594

/-! ## A001594.P18279563500212652533

`A156354(2*n+A000124(n+5)+5)`
-/

namespace A001594.P18279563500212652533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A001594.P18279563500212652533

namespace A001594

/-- `A156354(2*n+A000124(n+5)+5)` -/
def P18279563500212652533.Spec : Prop :=
  ∀ n, P18279563500212652533.a n = A001594 n

end A001594

/-!
# A001595: a(n) = a(n-1) + a(n-2) + 1, with a(0) = a(1) = 1.

The programs for A001595, the canonical program `A001595.P7415644279485961533` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001595 has offset 0).

The definition of A001595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A001595.P7415644279485961533`, by `A001595.P7415644279485961533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001595.P7415644279485961533

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001595

/-- `a(n-1)+a(n-2)+1` -/
def P7415644279485961533.Spec : Prop :=
  ∀ n, (P7415644279485961533.a n : ℤ) = A001595 n

theorem P7415644279485961533.correct : P7415644279485961533.Spec := by
  intro n
  simp only [A001595]

end A001595

/-! ## A001595.P67193502558909160

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001595.P67193502558909160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A001595.P67193502558909160

namespace A001595

/-- `2*a(n-1)-a(n-3)` -/
def P67193502558909160.Spec : Prop :=
  ∀ n, P67193502558909160.a n = A001595 n

end A001595

/-! ## A001595.P4365852419047224491

`A006355(n+2)-1`
-/

namespace A001595.P4365852419047224491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2) - 1

end

end A001595.P4365852419047224491

namespace A001595

/-- `A006355(n+2)-1` -/
def P4365852419047224491.Spec : Prop :=
  ∀ n, P4365852419047224491.a n = A001595 n

end A001595

/-! ## A001595.P1094217138603483068

`A000071(n+3)-A000045(n)`
-/

namespace A001595.P1094217138603483068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A000045 n

end

end A001595.P1094217138603483068

namespace A001595

/-- `A000071(n+3)-A000045(n)` -/
def P1094217138603483068.Spec : Prop :=
  ∀ n, P1094217138603483068.a n = A001595 n

end A001595

/-! ## A001595.P13680338205021020729

`ceil(ϕ*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001595.P13680338205021020729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉

end

end A001595.P13680338205021020729

namespace A001595

/-- `ceil(ϕ*a(n-1))` -/
def P13680338205021020729.Spec : Prop :=
  ∀ n, P13680338205021020729.a n = A001595 n

end A001595

/-! ## A001595.P13084856017901111058

`lcm(2, a(n-1))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001595.P13084856017901111058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - a (n - 3)

end

end A001595.P13084856017901111058

namespace A001595

/-- `lcm(2, a(n-1))-a(n-3)` -/
def P13084856017901111058.Spec : Prop :=
  ∀ n, P13084856017901111058.a n = A001595 n

end A001595

/-! ## A001595.P13265358295205666794

`a(n-1)-xor(-1, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001595.P13265358295205666794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A001595.P13265358295205666794

namespace A001595

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P13265358295205666794.Spec : Prop :=
  ∀ n, P13265358295205666794.a n = A001595 n

end A001595

/-! ## A001595.P7713595534974390535

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001595.P7713595534974390535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A001595.P7713595534974390535

namespace A001595

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P7713595534974390535.Spec : Prop :=
  ∀ n, P7713595534974390535.a n = A001595 n

end A001595

/-! ## A001595.P2044568089347155265

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-1, a(1)=1`
-/

namespace A001595.P2044568089347155265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001595.P2044568089347155265

namespace A001595

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P2044568089347155265.Spec : Prop :=
  ∀ n, P2044568089347155265.a n = A001595 n

end A001595

/-! ## A001595.P17587907262394785584

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001595.P17587907262394785584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A001595.P17587907262394785584

namespace A001595

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P17587907262394785584.Spec : Prop :=
  ∀ n, P17587907262394785584.a n = (A001595 n : ℚ)

end A001595

/-! ## A001595.P12943522010300540112

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001595.P12943522010300540112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A001595.P12943522010300540112

namespace A001595

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P12943522010300540112.Spec : Prop :=
  ∀ n, P12943522010300540112.a n = A001595 n

end A001595

/-! ## A001595.P12300998081568240432

`a(n-1)-(gcd(2, a(n-1))-2-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001595.P12300998081568240432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((Int.gcd 2 (a (n - 1)) : ℤ) - 2 - a (n - 2))

end

end A001595.P12300998081568240432

namespace A001595

/-- `a(n-1)-(gcd(2, a(n-1))-2-a(n-2))` -/
def P12300998081568240432.Spec : Prop :=
  ∀ n, P12300998081568240432.a n = A001595 n

end A001595

/-! ## A001595.P7228328462019661013

`∑[A006355(n)]`
-/

namespace A001595.P7228328462019661013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001595.P7228328462019661013

namespace A001595

/-- `∑[A006355(n)]` -/
def P7228328462019661013.Spec : Prop :=
  ∀ n, P7228328462019661013.a n = A001595 n

end A001595

/-! ## A001595.P14764530619682685074

`or(1, A154327(n))`
-/

namespace A001595.P14764530619682685074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154327 n)

end

end A001595.P14764530619682685074

namespace A001595

/-- `or(1, A154327(n))` -/
def P14764530619682685074.Spec : Prop :=
  ∀ n, P14764530619682685074.a n = A001595 n

end A001595

/-! ## A001595.P16902679753895422242

`or(1, A253197(n))`
-/

namespace A001595.P16902679753895422242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253197 n)

end

end A001595.P16902679753895422242

namespace A001595

/-- `or(1, A253197(n))` -/
def P16902679753895422242.Spec : Prop :=
  ∀ n, P16902679753895422242.a n = A001595 n

end A001595

/-! ## A001595.P14062977626143040235

`abs(A128587(n+3))`
-/

namespace A001595.P14062977626143040235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128587 (n + 3)|

end

end A001595.P14062977626143040235

namespace A001595

/-- `abs(A128587(n+3))` -/
def P14062977626143040235.Spec : Prop :=
  ∀ n, P14062977626143040235.a n = A001595 n

end A001595

/-! ## A001595.P13331311283971723509

`∑[A118658(n)]-1`
-/

namespace A001595.P13331311283971723509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001595.P13331311283971723509

namespace A001595

/-- `∑[A118658(n)]-1` -/
def P13331311283971723509.Spec : Prop :=
  ∀ n, P13331311283971723509.a n = A001595 n

end A001595

/-! ## A001595.P3148108902215303274

`A019274(n+1)+1`
-/

namespace A001595.P3148108902215303274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + 1

end

end A001595.P3148108902215303274

namespace A001595

/-- `A019274(n+1)+1` -/
def P3148108902215303274.Spec : Prop :=
  ∀ n, P3148108902215303274.a n = A001595 n

end A001595

/-! ## A001595.P13175039376861525856

`A055389(n+1)-1`
-/

namespace A001595.P13175039376861525856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 1) - 1

end

end A001595.P13175039376861525856

namespace A001595

/-- `A055389(n+1)-1` -/
def P13175039376861525856.Spec : Prop :=
  ∀ n, P13175039376861525856.a n = A001595 n

end A001595

/-!
# A001596: a(n) = 7^n + n^7.

The programs for A001596, the canonical program `A001596.P7032906907282641208` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001596 has offset 0).

The definition of A001596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+n^7` (program `A001596.P7032906907282641208`, by `A001596.P7032906907282641208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001596.P7032906907282641208

`7^n+n^7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001596

/-- `7^n+n^7` -/
def P7032906907282641208.Spec : Prop :=
  ∀ n, (P7032906907282641208.a n : ℤ) = A001596 n

theorem P7032906907282641208.correct : P7032906907282641208.Spec := by
  intro n
  simp only [A001596]

end A001596

/-! ## A001596.P14540805256297729662

`abs(A008589(n)-A220528(n))`
-/

namespace A001596.P14540805256297729662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008589 n - A220528 n|

end

end A001596.P14540805256297729662

namespace A001596

/-- `abs(A008589(n)-A220528(n))` -/
def P14540805256297729662.Spec : Prop :=
  ∀ n, P14540805256297729662.a n = A001596 n

end A001596

/-! ## A001596.P11503650532273212145

`A156354(eq[7, A002262(n)])`
-/

namespace A001596.P11503650532273212145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001596.P11503650532273212145

namespace A001596

/-- `A156354(eq[7, A002262(n)])` -/
def P11503650532273212145.Spec : Prop :=
  ∀ n, P11503650532273212145.a n = A001596 n

end A001596

/-! ## A001596.P17929805042958211099

`A156354(A000124(n+7)+6)`
-/

namespace A001596.P17929805042958211099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000124 (n + 7) + 6).toNat

end

end A001596.P17929805042958211099

namespace A001596

/-- `A156354(A000124(n+7)+6)` -/
def P17929805042958211099.Spec : Prop :=
  ∀ n, P17929805042958211099.a n = A001596 n

end A001596

/-! ## A001596.P17137758894802613849

`A055652(A000096(n+6)+8)`
-/

namespace A001596.P17137758894802613849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000096 (n + 6) + 8).toNat

end

end A001596.P17137758894802613849

namespace A001596

/-- `A055652(A000096(n+6)+8)` -/
def P17137758894802613849.Spec : Prop :=
  ∀ n, P17137758894802613849.a n = A001596 n

end A001596

/-! ## A001596.P10681062606272255219

`A156354(A055999(n+4)+13)`
-/

namespace A001596.P10681062606272255219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A055999 (n + 4) + 13).toNat

end

end A001596.P10681062606272255219

namespace A001596

/-- `A156354(A055999(n+4)+13)` -/
def P10681062606272255219.Spec : Prop :=
  ∀ n, P10681062606272255219.a n = A001596 n

end A001596

/-! ## A001596.P10262528980107897787

`A156354(eq[8, A002260(n+1)])`
-/

namespace A001596.P10262528980107897787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001596.P10262528980107897787

namespace A001596

/-- `A156354(eq[8, A002260(n+1)])` -/
def P10262528980107897787.Spec : Prop :=
  ∀ n, P10262528980107897787.a n = A001596 n

end A001596

/-! ## A001596.P14924485569356869449

`A055652(eq[8, sqrt(A055461(n+1))])`
-/

namespace A001596.P14924485569356869449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A001596.P14924485569356869449

namespace A001596

/-- `A055652(eq[8, sqrt(A055461(n+1))])` -/
def P14924485569356869449.Spec : Prop :=
  ∀ n, P14924485569356869449.a n = A001596 n

end A001596

/-!
# A001597: Perfect powers: m^k where m > 0 and k >= 2.

The programs for A001597, there is no canonical definition to state claims against.
-/

/-! ## A001597.P11392793481467087118

`∑[A076412(n)]`
-/

namespace A001597.P11392793481467087118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001597.P11392793481467087118

/-! ## A001597.P7345781121958453745

`abs(A157985(n+1))`
-/

namespace A001597.P7345781121958453745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

end

end A001597.P7345781121958453745

/-! ## A001597.P15163231798058919337

`sqrt(A340588(n+1))`
-/

namespace A001597.P15163231798058919337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 1) : ℝ)

end

end A001597.P15163231798058919337

/-! ## A001597.P17343960662227313990

`A053289(n)+a(n-1)` with `a(0)=1`
-/

namespace A001597.P17343960662227313990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053289 n + a (n - 1)

end

end A001597.P17343960662227313990

/-! ## A001597.P9730524612986993408

`∪[(n+1)², A070265(n+1)]`
-/

namespace A001597.P9730524612986993408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P9730524612986993408

/-! ## A001597.P16045915509969663739

`∪[(n+1)², A076467(n+1)]`
-/

namespace A001597.P16045915509969663739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P16045915509969663739

/-! ## A001597.P8694068602204022087

`∪[(n+1)², A097054(n+1)]`
-/

namespace A001597.P8694068602204022087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P8694068602204022087

/-! ## A001597.P10735999165246835143

`gcd(A000038(n), A157985(n+1))`
-/

namespace A001597.P10735999165246835143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157985 (n + 1))

end

end A001597.P10735999165246835143

/-! ## A001597.P11381360358889472496

`lcm(A020985(n), A157985(n+1))`
-/

namespace A001597.P11381360358889472496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157985 (n + 1))

end

end A001597.P11381360358889472496

/-! ## A001597.P7785164512709001925

`A075146(n+1)+A000040(n+1)`
-/

namespace A001597.P7785164512709001925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075146 (n + 1) + A000040 (n + 1)

end

end A001597.P7785164512709001925

/-! ## A001597.P14416437036943774519

`A377043(n+1)+A000961(n+1)`
-/

namespace A001597.P14416437036943774519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (n + 1) + A000961 (n + 1)

end

end A001597.P14416437036943774519

/-! ## A001597.P2451185701625375566

`A377044(n+1)+A246655(n+1)`
-/

namespace A001597.P2451185701625375566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377044 (n + 1) + A246655 (n + 1)

end

end A001597.P2451185701625375566

/-! ## A001597.P11826484653715628060

`A076405(n+1)/A025478(n+1)`
-/

namespace A001597.P11826484653715628060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ)

end

end A001597.P11826484653715628060

/-! ## A001597.P5223791012068196566

`A025478(n+1)^A025479(n+1)`
-/

namespace A001597.P5223791012068196566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ)

end

end A001597.P5223791012068196566

/-! ## A001597.P3175011554293506443

`∪[A076467(n+1), A030140(n+1)]`
-/

namespace A001597.P3175011554293506443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P3175011554293506443

/-! ## A001597.P13669016685350321885

`∪[A075090(n+1), A075109(n+1)]`
-/

namespace A001597.P13669016685350321885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P13669016685350321885

/-! ## A001597.P15499402836662777190

`∪[A025475(n+1), A131605(n+1)]`
-/

namespace A001597.P15499402836662777190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P15499402836662777190

/-! ## A001597.P12464078323304560039

`∪[A076467(n+1), A093771(n+1)]`
-/

namespace A001597.P12464078323304560039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P12464078323304560039

/-! ## A001597.P9730801290201583100

`∪[A076468(n+1), A093771(n+1)]`
-/

namespace A001597.P9730801290201583100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P9730801290201583100

/-! ## A001597.P13287193541907196088

`∪[A099997(n+1), A099998(n+1)]`
-/

namespace A001597.P13287193541907196088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001597.P13287193541907196088

/-!
# A001599: Harmonic or Ore numbers: numbers k such that the harmonic mean of the divisors of k is an integer.

The programs for A001599, there is no canonical definition to state claims against.
-/

/-! ## A001599.P17361965363554043331

`∪[A007340(n+1), A046999(n+1)]%A046999(n+1)`
-/

namespace A001599.P17361965363554043331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046999 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A046999 (n + 1))

end

end A001599.P17361965363554043331

/-! ## A001599.P13775105541740588897

`∪[A090945(n+12), A153789(n)+a(n-1)]` with `a(0)=1`
-/

namespace A001599.P13775105541740588897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A153789 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001599.P13775105541740588897

/-! ## A001599.P3871104347568145575

`A153789(n)+a(n-1)` with `a(0)=1`
-/

namespace A001599.P3871104347568145575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153789 n + a (n - 1)

end

end A001599.P3871104347568145575

/-! ## A001599.P6019996921077548912

`∑[A153789(n+1)]+1-A153789(n+1)`
-/

namespace A001599.P6019996921077548912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A153789 (n + 1))

end

end A001599.P6019996921077548912

/-! ## A001599.P3727705492694055727

`A000027(∪[A007340(n+1), A035527(n+1)])`
-/

namespace A001599.P3727705492694055727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035527 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A001599.P3727705492694055727

