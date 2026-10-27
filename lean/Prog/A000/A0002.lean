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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A000200: Number of bicentered hydrocarbons with n atoms.

The programs for A000200, there is no canonical definition to state claims against.
-/

/-! ## A000200.P11892340865770797039

`A000602(n)-A000022(A028310(n))`
-/

namespace A000200.P11892340865770797039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n - A000022 (A028310 n).toNat

end

end A000200.P11892340865770797039

/-! ## A000200.P4227022722542290275

`A000602(n)-A000022(A000007(n)+n)`
-/

namespace A000200.P4227022722542290275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n - A000022 (A000007 n + (n : ℤ)).toNat

end

end A000200.P4227022722542290275

/-! ## A000200.P11781858491697985409

`(A000602(n)-A000022(n))%A052906(n)`
-/

namespace A000200.P11781858491697985409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 n - A000022 n) (A052906 n)

end

end A000200.P11781858491697985409

/-! ## A000200.P14485602337414640712

`A000602(n)%A140354(n)-A000022(n)`
-/

namespace A000200.P14485602337414640712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 n) (A140354 n) - A000022 n

end

end A000200.P14485602337414640712

/-! ## A000200.P2938729474014319412

`(A000602(n)+A000601(n))%(A000601(n)+A000022(n))`
-/

namespace A000200.P2938729474014319412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000602 n + A000601 n) (A000601 n + A000022 n)

end

end A000200.P2938729474014319412

/-! ## A000200.P12506216231264745123

`(A005995(n)+A000602(n))%(A005995(n)+A000022(n))`
-/

namespace A000200.P12506216231264745123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005995 n + A000602 n) (A005995 n + A000022 n)

end

end A000200.P12506216231264745123

/-! ## A000200.P13541984289638597638

`(A060099(n)+A000602(n))%(A060099(n)+A000022(n))`
-/

namespace A000200.P13541984289638597638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060099 n + A000602 n) (A060099 n + A000022 n)

end

end A000200.P13541984289638597638

/-!
# A000201: Lower Wythoff sequence (a Beatty sequence): a(n) = floor(n*phi), where phi = (1+sqrt(5))/2 = A001622.

The programs for A000201, the canonical program `A000201.P2935798382643029248` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000201 has offset 1).

The definition of A000201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*ϕ)` (program `A000201.P2935798382643029248`, by `A000201.P2935798382643029248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000201.P2935798382643029248

`floor((n+1)*ϕ)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000201

/-- `floor((n+1)*ϕ)` -/
def P2935798382643029248.Spec : Prop :=
  ∀ n, P2935798382643029248.a n = A000201 (n + 1)

theorem P2935798382643029248.correct : P2935798382643029248.Spec := by
  intro n
  simp only [A000201, Nat.add_sub_cancel]

end A000201

/-! ## A000201.P763388802109181797

`A001950(n+1)-(n+1)`
-/

namespace A000201.P763388802109181797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - (n + 1 : ℤ)

end

end A000201.P763388802109181797

namespace A000201

/-- `A001950(n+1)-(n+1)` -/
def P763388802109181797.Spec : Prop :=
  ∀ n, P763388802109181797.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P16869191410215950130

`∑[Δ[floor(ϕ*n)]!]`
-/

namespace A000201.P16869191410215950130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000201.P16869191410215950130

namespace A000201

/-- `∑[Δ[floor(ϕ*n)]!]` -/
def P16869191410215950130.Spec : Prop :=
  ∀ n, (P16869191410215950130.a n : ℤ) = A000201 (n + 1)

end A000201

/-! ## A000201.P2295684762623999709

`∑[dr(Δ[floor(ϕ*n)])]`
-/

namespace A000201.P2295684762623999709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000201.P2295684762623999709

namespace A000201

/-- `∑[dr(Δ[floor(ϕ*n)])]` -/
def P2295684762623999709.Spec : Prop :=
  ∀ n, (P2295684762623999709.a n : ℤ) = A000201 (n + 1)

end A000201

/-! ## A000201.P8717749380287894978

`-ceil(ϕ*xor(n, -1))`
-/

namespace A000201.P8717749380287894978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

end

end A000201.P8717749380287894978

namespace A000201

/-- `-ceil(ϕ*xor(n, -1))` -/
def P8717749380287894978.Spec : Prop :=
  ∀ n, P8717749380287894978.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P3825150300429203680

`record[floor(abs(ϕ*(n-1)))]`
-/

namespace A000201.P3825150300429203680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.goldenRatio * ((n : ℤ) - 1 : ℝ)|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000201.P3825150300429203680

namespace A000201

/-- `record[floor(abs(ϕ*(n-1)))]` -/
def P3825150300429203680.Spec : Prop :=
  ∀ n, P3825150300429203680.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P8918530023234716559

`ceil(ϕ*C(n+1, n))-1`
-/

namespace A000201.P8918530023234716559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌉ - 1

end

end A000201.P8918530023234716559

namespace A000201

/-- `ceil(ϕ*C(n+1, n))-1` -/
def P8918530023234716559.Spec : Prop :=
  ∀ n, P8918530023234716559.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P3738278044622838213

`ceil(C(n+1, n)/ϕ+n)`
-/

namespace A000201.P3738278044622838213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (n : ℝ)⌉

end

end A000201.P3738278044622838213

namespace A000201

/-- `ceil(C(n+1, n)/ϕ+n)` -/
def P3738278044622838213.Spec : Prop :=
  ∀ n, P3738278044622838213.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P17886103717812831470

`floor(∑[ϕ-n])+C(n+1, 2)`
-/

namespace A000201.P17886103717812831470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.choose (n + 1) 2 : ℤ)

end

end A000201.P17886103717812831470

namespace A000201

/-- `floor(∑[ϕ-n])+C(n+1, 2)` -/
def P17886103717812831470.Spec : Prop :=
  ∀ n, P17886103717812831470.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P12062249609023381166

`ceil((n+1)*(ϕ-acot(n+1)))`
-/

namespace A000201.P12062249609023381166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A000201.P12062249609023381166

namespace A000201

/-- `ceil((n+1)*(ϕ-acot(n+1)))` -/
def P12062249609023381166.Spec : Prop :=
  ∀ n, P12062249609023381166.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P12438189858002344851

`ceil(ϕ*(n+1)-gcd(n, n+1))`
-/

namespace A000201.P12438189858002344851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ) - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A000201.P12438189858002344851

namespace A000201

/-- `ceil(ϕ*(n+1)-gcd(n, n+1))` -/
def P12438189858002344851.Spec : Prop :=
  ∀ n, P12438189858002344851.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P10649587169725672936

`floor(C(n+1, n)/ϕ)+n+1`
-/

namespace A000201.P10649587169725672936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio⌋ + (n + 1 : ℤ)

end

end A000201.P10649587169725672936

namespace A000201

/-- `floor(C(n+1, n)/ϕ)+n+1` -/
def P10649587169725672936.Spec : Prop :=
  ∀ n, P10649587169725672936.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P8970781559544834632

`round((n+1)*(ϕ-acot(2*n+1)))`
-/

namespace A000201.P8970781559544834632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A000201.P8970781559544834632

namespace A000201

/-- `round((n+1)*(ϕ-acot(2*n+1)))` -/
def P8970781559544834632.Spec : Prop :=
  ∀ n, P8970781559544834632.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P4571560543118955405

`ceil(ϕ*(n+1)-and(1, 2*n+1))`
-/

namespace A000201.P4571560543118955405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ) - (Nat.land 1 (2 * n + 1) : ℝ)⌉

end

end A000201.P4571560543118955405

namespace A000201

/-- `ceil(ϕ*(n+1)-and(1, 2*n+1))` -/
def P4571560543118955405.Spec : Prop :=
  ∀ n, P4571560543118955405.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P14448555354263226509

`n+1+floor((n+1)/(2*cos(π/5)))`
-/

namespace A000201.P14448555354263226509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℝ) / (2 * Real.cos (Real.pi / 5))⌋

end

end A000201.P14448555354263226509

namespace A000201

/-- `n+1+floor((n+1)/(2*cos(π/5)))` -/
def P14448555354263226509.Spec : Prop :=
  ∀ n, P14448555354263226509.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P5499470418943418047

`floor((n+1)²/(a(n-1)+2))+n+1` with `a(0)=1`
-/

namespace A000201.P5499470418943418047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) / (a (n - 1) + 2 : ℚ)⌋ + (n + 1 : ℤ)

end

end A000201.P5499470418943418047

namespace A000201

/-- `floor((n+1)²/(a(n-1)+2))+n+1` -/
def P5499470418943418047.Spec : Prop :=
  ∀ n, P5499470418943418047.a n = A000201 (n + 1)

end A000201

/-! ## A000201.P8582420274285698783

`2-a(a(n-1)-n)+a(n-1)+n` with `a(0)=1`
-/

namespace A000201.P8582420274285698783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (a (n - 1) - (n : ℤ)).toNat + (a (n - 1) + (n : ℤ))

end

end A000201.P8582420274285698783

namespace A000201

/-- `2-a(a(n-1)-n)+a(n-1)+n` -/
def P8582420274285698783.Spec : Prop :=
  ∀ n, P8582420274285698783.a n = A000201 (n + 1)

end A000201

/-!
# A000202: a(8i+j) = 13i + a(j), where 1<=j<=8.

The programs for A000202, the canonical program `A000202.P5266174874946756308` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000202 has offset 1).

The definition of A000202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000202.P8099476700345165492

`floor((13*(n+1)-1)/8)`
-/

namespace A000202.P8099476700345165492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((13 * (n + 1) : ℤ) - 1 : ℚ) / 8⌋

end

end A000202.P8099476700345165492

namespace A000202

/-- `floor((13*(n+1)-1)/8)` -/
def P8099476700345165492.Spec : Prop :=
  ∀ n, P8099476700345165492.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P5266174874946756308

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=8, a(5)=9, a(6)=11, a(7)=12, a(8)=14`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000202

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P5266174874946756308.Spec : Prop :=
  ∀ n, P5266174874946756308.a n = A000202 (n + 1)

theorem P5266174874946756308.correct : P5266174874946756308.Spec := by
  intro n
  simp only [A000202, Nat.add_sub_cancel]

end A000202

/-! ## A000202.P17791423535648739639

`∑[((n+1)%8)²%3]+n`
-/

namespace A000202.P17791423535648739639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 8) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A000202.P17791423535648739639

namespace A000202

/-- `∑[((n+1)%8)²%3]+n` -/
def P17791423535648739639.Spec : Prop :=
  ∀ n, (P17791423535648739639.a n : ℤ) = A000202 (n + 1)

end A000202

/-! ## A000202.P9461372953751441479

`Δ[n²]-A057360(n+1)`
-/

namespace A000202.P9461372953751441479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A057360 (n + 1)

end

end A000202.P9461372953751441479

namespace A000202

/-- `Δ[n²]-A057360(n+1)` -/
def P9461372953751441479.Spec : Prop :=
  ∀ n, P9461372953751441479.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P1563494469950110993

`∑[∑[A185594(n+1)]%3]+n`
-/

namespace A000202.P1563494469950110993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000202.P1563494469950110993

namespace A000202

/-- `∑[∑[A185594(n+1)]%3]+n` -/
def P1563494469950110993.Spec : Prop :=
  ∀ n, P1563494469950110993.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P5551747414712048495

`round((A001068(n)+2+n+n)/2)`
-/

namespace A000202.P5551747414712048495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001068 n + 2 + (n : ℤ) + (n : ℤ) : ℚ) / 2)

end

end A000202.P5551747414712048495

namespace A000202

/-- `round((A001068(n)+2+n+n)/2)` -/
def P5551747414712048495.Spec : Prop :=
  ∀ n, P5551747414712048495.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P16074186581452619642

`2*n+1-A004526(A057353(n+1))`
-/

namespace A000202.P16074186581452619642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A057353 (n + 1)).toNat

end

end A000202.P16074186581452619642

namespace A000202

/-- `2*n+1-A004526(A057353(n+1))` -/
def P16074186581452619642.Spec : Prop :=
  ∀ n, P16074186581452619642.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P3406859447898992763

`A032766(n+1)+A004526(n)-A057360(n+1)`
-/

namespace A000202.P3406859447898992763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (A004526 n - A057360 (n + 1))

end

end A000202.P3406859447898992763

namespace A000202

/-- `A032766(n+1)+A004526(n)-A057360(n+1)` -/
def P3406859447898992763.Spec : Prop :=
  ∀ n, P3406859447898992763.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P5559330681199537340

`Δ[n²-∑[A057360(n)]]`
-/

namespace A000202.P5559330681199537340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000202.P5559330681199537340

namespace A000202

/-- `Δ[n²-∑[A057360(n)]]` -/
def P5559330681199537340.Spec : Prop :=
  ∀ n, P5559330681199537340.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P7916581960727317636

`2*n+1-A002264(A248375(n+1))`
-/

namespace A000202.P7916581960727317636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002264 (A248375 (n + 1)).toNat

end

end A000202.P7916581960727317636

namespace A000202

/-- `2*n+1-A002264(A248375(n+1))` -/
def P7916581960727317636.Spec : Prop :=
  ∀ n, P7916581960727317636.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P8045707748972629442

`n+1+A110654(A001068(n))`
-/

namespace A000202.P8045707748972629442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A110654 (A001068 n).toNat

end

end A000202.P8045707748972629442

namespace A000202

/-- `n+1+A110654(A001068(n))` -/
def P8045707748972629442.Spec : Prop :=
  ∀ n, P8045707748972629442.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P7698960246950356102

`A080513(A001068(n))+n`
-/

namespace A000202.P7698960246950356102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A001068 n).toNat + (n : ℤ)

end

end A000202.P7698960246950356102

namespace A000202

/-- `A080513(A001068(n))+n` -/
def P7698960246950356102.Spec : Prop :=
  ∀ n, P7698960246950356102.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P13170823776028641897

`A008619(A001068(n)+1)+n`
-/

namespace A000202.P13170823776028641897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001068 n + 1).toNat + (n : ℤ)

end

end A000202.P13170823776028641897

namespace A000202

/-- `A008619(A001068(n)+1)+n` -/
def P13170823776028641897.Spec : Prop :=
  ∀ n, P13170823776028641897.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P5819332925644641222

`A008619(A047201(n+1))+n`
-/

namespace A000202.P5819332925644641222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047201 (n + 1)).toNat + (n : ℤ)

end

end A000202.P5819332925644641222

namespace A000202

/-- `A008619(A047201(n+1))+n` -/
def P5819332925644641222.Spec : Prop :=
  ∀ n, P5819332925644641222.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P4978713458340308360

`A008619(A008621(n)+n)+n`
-/

namespace A000202.P4978713458340308360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008621 n + (n : ℤ)).toNat + (n : ℤ)

end

end A000202.P4978713458340308360

namespace A000202

/-- `A008619(A008621(n)+n)+n` -/
def P4978713458340308360.Spec : Prop :=
  ∀ n, P4978713458340308360.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P12488052288537628969

`A080513(A002265(n)+n)+n`
-/

namespace A000202.P12488052288537628969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A002265 n + (n : ℤ)).toNat + (n : ℤ)

end

end A000202.P12488052288537628969

namespace A000202

/-- `A080513(A002265(n)+n)+n` -/
def P12488052288537628969.Spec : Prop :=
  ∀ n, P12488052288537628969.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P15202087106217511235

`2*n+1-A002265(A032766(n+1))`
-/

namespace A000202.P15202087106217511235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002265 (A032766 (n + 1)).toNat

end

end A000202.P15202087106217511235

namespace A000202

/-- `2*n+1-A002265(A032766(n+1))` -/
def P15202087106217511235.Spec : Prop :=
  ∀ n, P15202087106217511235.a n = A000202 (n + 1)

end A000202

/-! ## A000202.P14048649059775635364

`2*n+1-A092278(2*n+1)`
-/

namespace A000202.P14048649059775635364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A092278 (2 * n + 1)

end

end A000202.P14048649059775635364

namespace A000202

/-- `2*n+1-A092278(2*n+1)` -/
def P14048649059775635364.Spec : Prop :=
  ∀ n, P14048649059775635364.a n = A000202 (n + 1)

end A000202

/-!
# A000203: a(n) = sigma(n), the sum of the divisors of n. Also called sigma_1(n).

The programs for A000203, the canonical program `A000203.P15001602795509372896` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000203 has offset 1).

The definition of A000203 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A000203.anchor (n : ℕ) (hn : 1 ≤ n) : A000203 n = (ArithmeticFunction.sigma 1 n : ℤ)` in `Proof.A000.A000203`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000203.P13946033116383961670

`A001065(n+1)+n+1`
-/

namespace A000203.P13946033116383961670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ)

end

end A000203.P13946033116383961670

namespace A000203

/-- `A001065(n+1)+n+1` -/
def P13946033116383961670.Spec : Prop :=
  ∀ n, P13946033116383961670.a n = A000203 (n + 1)

theorem P13946033116383961670.correct : P13946033116383961670.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel, A000203.P13946033116383961670.a, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000203

/-! ## A000203.P4462158027498735423

`A065475(n+1)+A048050(n+1)`
-/

namespace A000203.P4462158027498735423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A048050 (n + 1)

end

end A000203.P4462158027498735423

namespace A000203

/-- `A065475(n+1)+A048050(n+1)` -/
def P4462158027498735423.Spec : Prop :=
  ∀ n, P4462158027498735423.a n = A000203 (n + 1)

theorem P4462158027498735423.correct : P4462158027498735423.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel, A000203.P4462158027498735423.a, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048050, A048050.P12972569362416034982.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000203

/-! ## A000203.P5593557999944862641

`A000593(n+1)+A146076(n+1)`
-/

namespace A000203.P5593557999944862641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A146076 (n + 1)

end

end A000203.P5593557999944862641

namespace A000203

/-- `A000593(n+1)+A146076(n+1)` -/
def P5593557999944862641.Spec : Prop :=
  ∀ n, P5593557999944862641.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P12619296760399623655

`A048250(n+1)+A162296(n+1)`
-/

namespace A000203.P12619296760399623655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + A162296 (n + 1)

end

end A000203.P12619296760399623655

namespace A000203

/-- `A048250(n+1)+A162296(n+1)` -/
def P12619296760399623655.Spec : Prop :=
  ∀ n, P12619296760399623655.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P14275599042477119948

`A054785(n+1)-A000593(n+1)`
-/

namespace A000203.P14275599042477119948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A000593 (n + 1)

end

end A000203.P14275599042477119948

namespace A000203

/-- `A054785(n+1)-A000593(n+1)` -/
def P14275599042477119948.Spec : Prop :=
  ∀ n, P14275599042477119948.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P4901474215133231622

`A000593(n+1)*A038712(n+1)`
-/

namespace A000203.P4901474215133231622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A038712 (n + 1)

end

end A000203.P4901474215133231622

namespace A000203

/-- `A000593(n+1)*A038712(n+1)` -/
def P4901474215133231622.Spec : Prop :=
  ∀ n, P4901474215133231622.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P3142555010280275831

`A092261(n+1)*A295294(n+1)`
-/

namespace A000203.P3142555010280275831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) * A295294 (n + 1)

end

end A000203.P3142555010280275831

namespace A000203

/-- `A092261(n+1)*A295294(n+1)` -/
def P3142555010280275831.Spec : Prop :=
  ∀ n, P3142555010280275831.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P2819640253050004036

`(2^(1+A183063(n+1)/A001227(n+1))-1)*A000593(n+1)`
-/

namespace A000203.P2819640253050004036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (1 + (A183063 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) : ℝ) - 1) * (A000593 (n + 1) : ℝ)

end

end A000203.P2819640253050004036

namespace A000203

/-- `(2^(1+A183063(n+1)/A001227(n+1))-1)*A000593(n+1)` -/
def P2819640253050004036.Spec : Prop :=
  ∀ n, P2819640253050004036.a n = (A000203 (n + 1) : ℝ)

end A000203

/-! ## A000203.P2609042538288785753

`A006128(n+1)-A220477(n+1)`
-/

namespace A000203.P2609042538288785753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A220477 (n + 1)

end

end A000203.P2609042538288785753

namespace A000203

/-- `A006128(n+1)-A220477(n+1)` -/
def P2609042538288785753.Spec : Prop :=
  ∀ n, P2609042538288785753.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P15001602795509372896

`∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000203

/-- `∑{d}[n+1, #]` -/
def P15001602795509372896.Spec : Prop :=
  ∀ n, (P15001602795509372896.a n : ℤ) = A000203 (n + 1)

theorem P15001602795509372896.correct : P15001602795509372896.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel]

end A000203

/-! ## A000203.P6973952985454298883

`Δ[A160664(n)]`
-/

namespace A000203.P6973952985454298883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000203.P6973952985454298883

namespace A000203

/-- `Δ[A160664(n)]` -/
def P6973952985454298883.Spec : Prop :=
  ∀ n, P6973952985454298883.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P13228341227135291791

`abs(Δ[A330725(n)])`
-/

namespace A000203.P13228341227135291791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000203.P13228341227135291791

namespace A000203

/-- `abs(Δ[A330725(n)])` -/
def P13228341227135291791.Spec : Prop :=
  ∀ n, P13228341227135291791.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P13859278968825559561

`A245092(Δ[n²])`
-/

namespace A000203.P13859278968825559561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000203.P13859278968825559561

namespace A000203

/-- `A245092(Δ[n²])` -/
def P13859278968825559561.Spec : Prop :=
  ∀ n, P13859278968825559561.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P16460685633757857449

`abs(A143348(n+1))`
-/

namespace A000203.P16460685633757857449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)|

end

end A000203.P16460685633757857449

namespace A000203

/-- `abs(A143348(n+1))` -/
def P16460685633757857449.Spec : Prop :=
  ∀ n, P16460685633757857449.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P18433017452480631411

`sqrt(A072861(n+1))`
-/

namespace A000203.P18433017452480631411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

end

end A000203.P18433017452480631411

namespace A000203

/-- `sqrt(A072861(n+1))` -/
def P18433017452480631411.Spec : Prop :=
  ∀ n, P18433017452480631411.a n = (A000203 (n + 1) : ℝ)

end A000203

/-! ## A000203.P15499425019839872357

`∑[A340793(n+1)]`
-/

namespace A000203.P15499425019839872357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000203.P15499425019839872357

namespace A000203

/-- `∑[A340793(n+1)]` -/
def P15499425019839872357.Spec : Prop :=
  ∀ n, P15499425019839872357.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P12198734626468033627

`A039653(n+1)+1`
-/

namespace A000203.P12198734626468033627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

end

end A000203.P12198734626468033627

namespace A000203

/-- `A039653(n+1)+1` -/
def P12198734626468033627.Spec : Prop :=
  ∀ n, P12198734626468033627.a n = A000203 (n + 1)

end A000203

/-! ## A000203.P2332518948238266747

`A088580(n+1)-1`
-/

namespace A000203.P2332518948238266747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

end

end A000203.P2332518948238266747

namespace A000203

/-- `A088580(n+1)-1` -/
def P2332518948238266747.Spec : Prop :=
  ∀ n, P2332518948238266747.a n = A000203 (n + 1)

theorem P2332518948238266747.correct : P2332518948238266747.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel, A000203.P2332518948238266747.a, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000203

/-! ## A000203.P2369974576716597619

`A074400(n+1)/2`
-/

namespace A000203.P2369974576716597619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

end

end A000203.P2369974576716597619

namespace A000203

/-- `A074400(n+1)/2` -/
def P2369974576716597619.Spec : Prop :=
  ∀ n, P2369974576716597619.a n = (A000203 (n + 1) : ℚ)

theorem P2369974576716597619.correct : P2369974576716597619.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel, A000203.P2369974576716597619.a, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000203

/-! ## A000203.P12482363039072366189

`A272027(n+1)/3`
-/

namespace A000203.P12482363039072366189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3

end

end A000203.P12482363039072366189

namespace A000203

/-- `A272027(n+1)/3` -/
def P12482363039072366189.Spec : Prop :=
  ∀ n, P12482363039072366189.a n = (A000203 (n + 1) : ℚ)

theorem P12482363039072366189.correct : P12482363039072366189.Spec := by
  intro n
  simp only [A000203, Nat.add_sub_cancel, A000203.P12482363039072366189.a, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000203

/-!
# A000204: Lucas numbers (beginning with 1): L(n) = L(n-1) + L(n-2) with L(1) = 1, L(2) = 3.

The programs for A000204, the canonical program `A000204.P16665566879852712575` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000204 has offset 1).

The definition of A000204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000204.P16665566879852712575

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000204

/-- `a(n-1)+a(n-2)` -/
def P16665566879852712575.Spec : Prop :=
  ∀ n, (P16665566879852712575.a n : ℤ) = A000204 (n + 1)

theorem P16665566879852712575.correct : P16665566879852712575.Spec := by
  intro n
  simp only [A000204, Nat.add_sub_cancel]

end A000204

/-! ## A000204.P2918107983466751781

`A000032(n+1)`
-/

namespace A000204.P2918107983466751781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

end

end A000204.P2918107983466751781

namespace A000204

/-- `A000032(n+1)` -/
def P2918107983466751781.Spec : Prop :=
  ∀ n, P2918107983466751781.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P1919754154349428486

`A000045(n+2)+A000045(n)`
-/

namespace A000204.P1919754154349428486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 n

end

end A000204.P1919754154349428486

namespace A000204

/-- `A000045(n+2)+A000045(n)` -/
def P1919754154349428486.Spec : Prop :=
  ∀ n, P1919754154349428486.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P16734968814738048086

`A014217(n+2)-A014217(n)`
-/

namespace A000204.P16734968814738048086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 2) - A014217 n

end

end A000204.P16734968814738048086

namespace A000204

/-- `A014217(n+2)-A014217(n)` -/
def P16734968814738048086.Spec : Prop :=
  ∀ n, P16734968814738048086.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P915590478161513539

`((1+sqrt(5))^(n+1)+(1-sqrt(5))^(n+1))/2^(n+1)`
-/

namespace A000204.P915590478161513539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) ^ (n + 1) + (1 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (2 ^ (n + 1) : ℝ)

end

end A000204.P915590478161513539

namespace A000204

/-- `((1+sqrt(5))^(n+1)+(1-sqrt(5))^(n+1))/2^(n+1)` -/
def P915590478161513539.Spec : Prop :=
  ∀ n, P915590478161513539.a n = (A000204 (n + 1) : ℝ)

theorem P915590478161513539.correct : P915590478161513539.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A000204, Nat.add_sub_cancel, A000204.P915590478161513539.a, A000204.P16665566879852712575.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A000204, Nat.add_sub_cancel, A000204.P915590478161513539.a, A000204.P16665566879852712575.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A000204

/-! ## A000204.P15324127265604985808

`ogf((1+2x)/(1-x-x^2))`
-/

namespace A000204.P15324127265604985808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -1] n

end

end A000204.P15324127265604985808

namespace A000204

/-- `ogf((1+2x)/(1-x-x^2))` -/
def P15324127265604985808.Spec : Prop :=
  ∀ n, P15324127265604985808.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P11053311571420508762

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A000204.P11053311571420508762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A000204.P11053311571420508762

namespace A000204

/-- `round(ϕ*a(n-1))` -/
def P11053311571420508762.Spec : Prop :=
  ∀ n, P11053311571420508762.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P1818222731643737531

`round(ϕ^((n+1)%(n+1)²))`
-/

namespace A000204.P1818222731643737531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))

end

end A000204.P1818222731643737531

namespace A000204

/-- `round(ϕ^((n+1)%(n+1)²))` -/
def P1818222731643737531.Spec : Prop :=
  ∀ n, P1818222731643737531.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P17221434281881336030

`record[round(ϕ^((2*n)%(n+2)))]`
-/

namespace A000204.P17221434281881336030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n % (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000204.P17221434281881336030

namespace A000204

/-- `record[round(ϕ^((2*n)%(n+2)))]` -/
def P17221434281881336030.Spec : Prop :=
  ∀ n, P17221434281881336030.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P3298373792684317453

`ceil(ϕ^(n+1)-acot(n+1))`
-/

namespace A000204.P3298373792684317453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 1) - SequenceMachineLib.acot (n + 1 : ℝ)⌉

end

end A000204.P3298373792684317453

namespace A000204

/-- `ceil(ϕ^(n+1)-acot(n+1))` -/
def P3298373792684317453.Spec : Prop :=
  ∀ n, P3298373792684317453.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P4958873900807113243

`round((ϕ-C(2, n+2))^(n+1))`
-/

namespace A000204.P4958873900807113243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio - (Nat.choose 2 (n + 2) : ℝ)) ^ (n + 1))

end

end A000204.P4958873900807113243

namespace A000204

/-- `round((ϕ-C(2, n+2))^(n+1))` -/
def P4958873900807113243.Spec : Prop :=
  ∀ n, P4958873900807113243.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P10692692400774552527

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=2`
-/

namespace A000204.P10692692400774552527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000204.P10692692400774552527

namespace A000204

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P10692692400774552527.Spec : Prop :=
  ∀ n, P10692692400774552527.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P14506815034577455562

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A000204.P14506815034577455562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A000204.P14506815034577455562

namespace A000204

/-- `2*a(n-1)-a(n-3)` -/
def P14506815034577455562.Spec : Prop :=
  ∀ n, P14506815034577455562.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P17395265986276712038

`a(n-1)-(char[1]-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A000204.P17395265986276712038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A000204.P17395265986276712038

namespace A000204

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P17395265986276712038.Spec : Prop :=
  ∀ n, P17395265986276712038.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P15216016139583635664

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A000204.P15216016139583635664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A000204.P15216016139583635664

namespace A000204

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P15216016139583635664.Spec : Prop :=
  ∀ n, P15216016139583635664.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P15762613820276733626

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A000204.P15762613820276733626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A000204.P15762613820276733626

namespace A000204

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P15762613820276733626.Spec : Prop :=
  ∀ n, P15762613820276733626.a n = (A000204 (n + 1) : ℚ)

end A000204

/-! ## A000204.P14938060742589512585

`abs(A075193(n))`
-/

namespace A000204.P14938060742589512585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n|

end

end A000204.P14938060742589512585

namespace A000204

/-- `abs(A075193(n))` -/
def P14938060742589512585.Spec : Prop :=
  ∀ n, P14938060742589512585.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P10241983264968342019

`1+A001610(n)`
-/

namespace A000204.P10241983264968342019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001610 n

end

end A000204.P10241983264968342019

namespace A000204

/-- `1+A001610(n)` -/
def P10241983264968342019.Spec : Prop :=
  ∀ n, P10241983264968342019.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P14117215053224402731

`A329723(n+3)`
-/

namespace A000204.P14117215053224402731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3)

end

end A000204.P14117215053224402731

namespace A000204

/-- `A329723(n+3)` -/
def P14117215053224402731.Spec : Prop :=
  ∀ n, P14117215053224402731.a n = A000204 (n + 1)

end A000204

/-! ## A000204.P12892976897606030604

`A090244(2*n)`
-/

namespace A000204.P12892976897606030604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n)

end

end A000204.P12892976897606030604

namespace A000204

/-- `A090244(2*n)` -/
def P12892976897606030604.Spec : Prop :=
  ∀ n, P12892976897606030604.a n = A000204 (n + 1)

end A000204

/-!
# A000205: Number of positive integers <= 2^n of form x^2 + 3 y^2.

The programs for A000205, there is no canonical definition to state claims against.
-/

/-! ## A000205.P12291245988659311202

`A216256(A052805(n+1))`
-/

namespace A000205.P12291245988659311202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A052805 (n + 1)).toNat

end

end A000205.P12291245988659311202

/-! ## A000205.P15585477494580791187

`A216256(or(1, A122877(n)))`
-/

namespace A000205.P15585477494580791187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (Int.lor 1 (A122877 n)).toNat

end

end A000205.P15585477494580791187

/-! ## A000205.P8721067530183961210

`A257639(A094854(n))+floor(n/2)`
-/

namespace A000205.P8721067530183961210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A094854 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A000205.P8721067530183961210

/-! ## A000205.P10906576543532187589

`A216256(A122877(n)+A026729(n))`
-/

namespace A000205.P10906576543532187589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A122877 n + A026729 n).toNat

end

end A000205.P10906576543532187589

/-! ## A000205.P5295628445512176145

`A216256(A126120(n)+A122877(n))`
-/

namespace A000205.P5295628445512176145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A126120 n + A122877 n).toNat

end

end A000205.P5295628445512176145

/-!
# A000207: Number of inequivalent ways of dissecting a regular (n+2)-gon into n triangles by n-1 non-intersecting diagonals under rotations and reflections; also the number of (unlabeled) maximal outerplanar graphs on n+2 vertices.

The programs for A000207, there is no canonical definition to state claims against.
-/

/-! ## A000207.P7733871531177649877

`(A001683(n+3)+A208355(n))/2`
-/

namespace A000207.P7733871531177649877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001683 (n + 3) + A208355 n : ℚ) / 2

end

end A000207.P7733871531177649877

/-! ## A000207.P2898122500044358059

`A001895(n+1)-A050181(n)`
-/

namespace A000207.P2898122500044358059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 1) - A050181 n

end

end A000207.P2898122500044358059

/-! ## A000207.P5192691776139926159

`A001895(n+1)-A051196(n)/(2*n+3)`
-/

namespace A000207.P5192691776139926159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001895 (n + 1) : ℚ) - (A051196 n : ℚ) / (2 * n + 3 : ℚ)

end

end A000207.P5192691776139926159

/-! ## A000207.P8866606403476705813

`A001895(n+1)-A051168(2*(n+1)*(n+3))`
-/

namespace A000207.P8866606403476705813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 1) - A051168 (2 * ((n + 1) * (n + 3)))

end

end A000207.P8866606403476705813

/-! ## A000207.P15567914875416674339

`A169808(∑[n])`
-/

namespace A000207.P15567914875416674339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000207.P15567914875416674339

/-! ## A000207.P7790964467133976725

`A169808(A000217(n))%A001576(n)`
-/

namespace A000207.P7790964467133976725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169808 (A000217 n).toNat) (A001576 n)

end

end A000207.P7790964467133976725

/-! ## A000207.P14034455639831682702

`gcd(A151878(n), A169808(A000217(n)))`
-/

namespace A000207.P14034455639831682702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A169808 (A000217 n).toNat)

end

end A000207.P14034455639831682702

/-! ## A000207.P11324027254433899881

`lcm(A033999(n), A169808(A000217(n)))`
-/

namespace A000207.P11324027254433899881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A169808 (A000217 n).toNat)

end

end A000207.P11324027254433899881

/-! ## A000207.P6827728986274806889

`A169808(A000217(n))+A151878(n+1)`
-/

namespace A000207.P6827728986274806889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (A000217 n).toNat + A151878 (n + 1)

end

end A000207.P6827728986274806889

/-! ## A000207.P9782566555176741325

`A295260(∑[n+1])`
-/

namespace A000207.P9782566555176741325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000207.P9782566555176741325

/-!
# A000208: Number of even sequences with period 2n.

The programs for A000208, there is no canonical definition to state claims against.
-/

/-! ## A000208.P5840226696100549096

`A157271(A077957(n)+A000116(n))`
-/

namespace A000208.P5840226696100549096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A077957 n + A000116 n).toNat

end

end A000208.P5840226696100549096

/-! ## A000208.P960921521251368841

`A157271(A000116(n)-(1-A077957(n)))`
-/

namespace A000208.P960921521251368841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A000116 n - (1 - A077957 n)).toNat

end

end A000208.P960921521251368841

/-! ## A000208.P7974112974903162343

`A157271(A077957(n)+record[A000013((n-1)^(n%2))])`
-/

namespace A000208.P7974112974903162343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A077957 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000208.P7974112974903162343

/-! ## A000208.P12181546893869695686

`A157271(A077957(n)+A059053(2*n)+A000011(2*n))`
-/

namespace A000208.P12181546893869695686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A077957 n + (A059053 (2 * n) + A000011 (2 * n))).toNat

end

end A000208.P12181546893869695686

/-!
# A000209: Nearest integer to tan n.

The programs for A000209, the canonical program `A000209.P16508197691767736195` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000209 has offset 0).

The definition of A000209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000209.P16508197691767736195

`round(tan(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000209

/-- `round(tan(n))` -/
def P16508197691767736195.Spec : Prop :=
  ∀ n, P16508197691767736195.a n = A000209 n

theorem P16508197691767736195.correct : P16508197691767736195.Spec := by
  intro n
  simp only [A000209]

end A000209

/-! ## A000209.P13341309685320352696

`round(cot(acos(0)-n))`
-/

namespace A000209.P13341309685320352696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arccos (0 : ℝ) - (n : ℝ)))

end

end A000209.P13341309685320352696

namespace A000209

/-- `round(cot(acos(0)-n))` -/
def P13341309685320352696.Spec : Prop :=
  ∀ n, P13341309685320352696.a n = A000209 n

end A000209

/-! ## A000209.P6592888888372417375

`round(cot(asin(1)-n))`
-/

namespace A000209.P6592888888372417375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arcsin (1 : ℝ) - (n : ℝ)))

end

end A000209.P6592888888372417375

namespace A000209

/-- `round(cot(asin(1)-n))` -/
def P6592888888372417375.Spec : Prop :=
  ∀ n, P6592888888372417375.a n = A000209 n

end A000209

/-! ## A000209.P168577934985242496

`round(sin(n)/cos(n))`
-/

namespace A000209.P168577934985242496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (n : ℝ) / Real.cos (n : ℝ))

end

end A000209.P168577934985242496

namespace A000209

/-- `round(sin(n)/cos(n))` -/
def P168577934985242496.Spec : Prop :=
  ∀ n, P168577934985242496.a n = A000209 n

end A000209

/-! ## A000209.P2525905360172916990

`floor(tan(n)+1/2)`
-/

namespace A000209.P2525905360172916990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A000209.P2525905360172916990

namespace A000209

/-- `floor(tan(n)+1/2)` -/
def P2525905360172916990.Spec : Prop :=
  ∀ n, P2525905360172916990.a n = A000209 n

end A000209

/-! ## A000209.P1128868581164507881

`ceil(tan(n)-1/2)`
-/

namespace A000209.P1128868581164507881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) - ((1 : ℚ) / 2 : ℝ)⌉

end

end A000209.P1128868581164507881

namespace A000209

/-- `ceil(tan(n)-1/2)` -/
def P1128868581164507881.Spec : Prop :=
  ∀ n, P1128868581164507881.a n = A000209 n

end A000209

/-!
# A000210: A Beatty sequence: floor(n*(e-1)).

The programs for A000210, the canonical program `A000210.P16286638136868964152` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000210 has offset 1).

The definition of A000210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(e-1))` (program `A000210.P16286638136868964152`, by `A000210.P16286638136868964152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000210.P16286638136868964152

`floor((n+1)*(e-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000210

/-- `floor((n+1)*(e-1))` -/
def P16286638136868964152.Spec : Prop :=
  ∀ n, P16286638136868964152.a n = A000210 (n + 1)

theorem P16286638136868964152.correct : P16286638136868964152.Spec := by
  intro n
  simp only [A000210, Nat.add_sub_cancel]

end A000210

/-! ## A000210.P146368560242508893

`A184589(n+1)-n`
-/

namespace A000210.P146368560242508893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) - (n : ℤ)

end

end A000210.P146368560242508893

namespace A000210

/-- `A184589(n+1)-n` -/
def P146368560242508893.Spec : Prop :=
  ∀ n, P146368560242508893.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P18384059506850004585

`∑[Δ[A022843(n)]-1]`
-/

namespace A000210.P18384059506850004585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P18384059506850004585

namespace A000210

/-- `∑[Δ[A022843(n)]-1]` -/
def P18384059506850004585.Spec : Prop :=
  ∀ n, P18384059506850004585.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P14774416475631965189

`∑[A276859(n+1)-1]`
-/

namespace A000210.P14774416475631965189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P14774416475631965189

namespace A000210

/-- `∑[A276859(n+1)-1]` -/
def P14774416475631965189.Spec : Prop :=
  ∀ n, P14774416475631965189.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P7703468182913325863

`∑[A000010(Δ[floor(e*n)])]`
-/

namespace A000210.P7703468182913325863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P7703468182913325863

namespace A000210

/-- `∑[A000010(Δ[floor(e*n)])]` -/
def P7703468182913325863.Spec : Prop :=
  ∀ n, P7703468182913325863.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P2457589482643897966

`∑[A000045(Δ[floor(e*n)])]`
-/

namespace A000210.P2457589482643897966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P2457589482643897966

namespace A000210

/-- `∑[A000045(Δ[floor(e*n)])]` -/
def P2457589482643897966.Spec : Prop :=
  ∀ n, P2457589482643897966.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P3507227383589056244

`A022843(n+1)-(n+1)`
-/

namespace A000210.P3507227383589056244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - (n + 1 : ℤ)

end

end A000210.P3507227383589056244

namespace A000210

/-- `A022843(n+1)-(n+1)` -/
def P3507227383589056244.Spec : Prop :=
  ∀ n, P3507227383589056244.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P10718753831612392488

`A121384(n+1)-(n+2)`
-/

namespace A000210.P10718753831612392488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1) - (n + 2 : ℤ)

end

end A000210.P10718753831612392488

namespace A000210

/-- `A121384(n+1)-(n+2)` -/
def P10718753831612392488.Spec : Prop :=
  ∀ n, P10718753831612392488.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P16986669122978353770

`record[A108599(n+1)]-(n+1)`
-/

namespace A000210.P16986669122978353770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A000210.P16986669122978353770

namespace A000210

/-- `record[A108599(n+1)]-(n+1)` -/
def P16986669122978353770.Spec : Prop :=
  ∀ n, P16986669122978353770.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P11450502496330955100

`comp[A054385(n+1)-1]-n`
-/

namespace A000210.P11450502496330955100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A000210.P11450502496330955100

namespace A000210

/-- `comp[A054385(n+1)-1]-n` -/
def P11450502496330955100.Spec : Prop :=
  ∀ n, P11450502496330955100.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P8751882891634825321

`A000572(n+1)-2*(n+1)`
-/

namespace A000210.P8751882891634825321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) - (2 * (n + 1) : ℤ)

end

end A000210.P8751882891634825321

namespace A000210

/-- `A000572(n+1)-2*(n+1)` -/
def P8751882891634825321.Spec : Prop :=
  ∀ n, P8751882891634825321.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P4138469059622909165

`A279607(2*(n+1))-(n+1)`
-/

namespace A000210.P4138469059622909165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A000210.P4138469059622909165

namespace A000210

/-- `A279607(2*(n+1))-(n+1)` -/
def P4138469059622909165.Spec : Prop :=
  ∀ n, P4138469059622909165.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P14187131257309712851

`∑[A082854(Δ[A022843(n)])]`
-/

namespace A000210.P14187131257309712851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P14187131257309712851

namespace A000210

/-- `∑[A082854(Δ[A022843(n)])]` -/
def P14187131257309712851.Spec : Prop :=
  ∀ n, P14187131257309712851.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P11942600108308023398

`A023443(A022843(n+1)-n)`
-/

namespace A000210.P11942600108308023398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022843 (n + 1) - (n : ℤ)).toNat

end

end A000210.P11942600108308023398

namespace A000210

/-- `A023443(A022843(n+1)-n)` -/
def P11942600108308023398.Spec : Prop :=
  ∀ n, P11942600108308023398.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P12144826094247687157

`A023444(A121384(n+1)-n)`
-/

namespace A000210.P12144826094247687157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A121384 (n + 1) - (n : ℤ)).toNat

end

end A000210.P12144826094247687157

namespace A000210

/-- `A023444(A121384(n+1)-n)` -/
def P12144826094247687157.Spec : Prop :=
  ∀ n, P12144826094247687157.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P10707723381031088707

`A022806(n+1)-A292664(n+1)`
-/

namespace A000210.P10707723381031088707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (n + 1) - A292664 (n + 1)

end

end A000210.P10707723381031088707

namespace A000210

/-- `A022806(n+1)-A292664(n+1)` -/
def P10707723381031088707.Spec : Prop :=
  ∀ n, P10707723381031088707.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P6541847803899404553

`A189403(n+1)-A292647(n+1)`
-/

namespace A000210.P6541847803899404553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) - A292647 (n + 1)

end

end A000210.P6541847803899404553

namespace A000210

/-- `A189403(n+1)-A292647(n+1)` -/
def P6541847803899404553.Spec : Prop :=
  ∀ n, P6541847803899404553.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P7016418395374259442

`lt[A108599(n+1), comp[A008486(n)]]-n`
-/

namespace A000210.P7016418395374259442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A000210.P7016418395374259442

namespace A000210

/-- `lt[A108599(n+1), comp[A008486(n)]]-n` -/
def P7016418395374259442.Spec : Prop :=
  ∀ n, P7016418395374259442.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P9936235540574907242

`A184976(n+1)-A022785(n+1)`
-/

namespace A000210.P9936235540574907242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184976 (n + 1) - A022785 (n + 1)

end

end A000210.P9936235540574907242

namespace A000210

/-- `A184976(n+1)-A022785(n+1)` -/
def P9936235540574907242.Spec : Prop :=
  ∀ n, P9936235540574907242.a n = A000210 (n + 1)

end A000210

/-! ## A000210.P13101574155898691002

`A140106(A276853(n+1))-n`
-/

namespace A000210.P13101574155898691002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A276853 (n + 1)).toNat - (n : ℤ)

end

end A000210.P13101574155898691002

namespace A000210

/-- `A140106(A276853(n+1))-n` -/
def P13101574155898691002.Spec : Prop :=
  ∀ n, P13101574155898691002.a n = A000210 (n + 1)

end A000210

/-!
# A000211: a(n) = a(n-1) + a(n-2) - 2, a(0) = 4, a(1) = 3.

The programs for A000211, the canonical program `A000211.P1894842817277107205` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000211 has offset 0).

The definition of A000211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-2` (program `A000211.P1894842817277107205`, by `A000211.P1894842817277107205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000211.P1894842817277107205

`a(n-1)+a(n-2)-2` with `a(0)=4, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000211

/-- `a(n-1)+a(n-2)-2` -/
def P1894842817277107205.Spec : Prop :=
  ∀ n, P1894842817277107205.a n = A000211 n

theorem P1894842817277107205.correct : P1894842817277107205.Spec := by
  intro n
  simp only [A000211]

end A000211

/-! ## A000211.P270351019514921117

`A000032(n)+2`
-/

namespace A000211.P270351019514921117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 2

end

end A000211.P270351019514921117

namespace A000211

/-- `A000032(n)+2` -/
def P270351019514921117.Spec : Prop :=
  ∀ n, P270351019514921117.a n = A000211 n

end A000211

/-! ## A000211.P12093564640673319544

`∑[ogf((-4+5x+x^2)/(-1+x+x^2))]`
-/

namespace A000211.P12093564640673319544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -1] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000211.P12093564640673319544

namespace A000211

/-- `∑[ogf((-4+5x+x^2)/(-1+x+x^2))]` -/
def P12093564640673319544.Spec : Prop :=
  ∀ n, P12093564640673319544.a n = A000211 n

end A000211

/-! ## A000211.P1126292104864778788

`ogf((4-5x-x^2)/(1-2x+x^3))`
-/

namespace A000211.P1126292104864778788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5, -1] [1, -2, 0, 1] n

end

end A000211.P1126292104864778788

namespace A000211

/-- `ogf((4-5x-x^2)/(1-2x+x^3))` -/
def P1126292104864778788.Spec : Prop :=
  ∀ n, P1126292104864778788.a n = A000211 n

end A000211

/-! ## A000211.P11797419729362492389

`a(n-1)-(2-a(n-2))` with `a(0)=4, a(1)=3`
-/

namespace A000211.P11797419729362492389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A000211.P11797419729362492389

namespace A000211

/-- `a(n-1)-(2-a(n-2))` -/
def P11797419729362492389.Spec : Prop :=
  ∀ n, P11797419729362492389.a n = A000211 n

theorem P11797419729362492389.correct : P11797419729362492389.Spec := by
  intro n
  simp only [A000211, Nat.add_sub_cancel, A000211.P11797419729362492389.a, A000211.P1894842817277107205.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000211

/-! ## A000211.P8870183913945292881

`A001612(n)+1`
-/

namespace A000211.P8870183913945292881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + 1

end

end A000211.P8870183913945292881

namespace A000211

/-- `A001612(n)+1` -/
def P8870183913945292881.Spec : Prop :=
  ∀ n, P8870183913945292881.a n = A000211 n

end A000211

/-! ## A000211.P13849223513970426160

`A329723(n+2)+2`
-/

namespace A000211.P13849223513970426160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) + 2

end

end A000211.P13849223513970426160

namespace A000211

/-- `A329723(n+2)+2` -/
def P13849223513970426160.Spec : Prop :=
  ∀ n, P13849223513970426160.a n = A000211 n

end A000211

/-! ## A000211.P4896925335638042261

`A127218(2*n)+2`
-/

namespace A000211.P4896925335638042261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + 2

end

end A000211.P4896925335638042261

namespace A000211

/-- `A127218(2*n)+2` -/
def P4896925335638042261.Spec : Prop :=
  ∀ n, P4896925335638042261.a n = A000211 n

end A000211

/-! ## A000211.P14289705828410600008

`A303427(2*n)+2`
-/

namespace A000211.P14289705828410600008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) + 2

end

end A000211.P14289705828410600008

namespace A000211

/-- `A303427(2*n)+2` -/
def P14289705828410600008.Spec : Prop :=
  ∀ n, P14289705828410600008.a n = A000211 n

end A000211

/-! ## A000211.P3465378605777777581

`A302126(Δ[n²])+2`
-/

namespace A000211.P3465378605777777581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A000211.P3465378605777777581

namespace A000211

/-- `A302126(Δ[n²])+2` -/
def P3465378605777777581.Spec : Prop :=
  ∀ n, P3465378605777777581.a n = A000211 n

end A000211

/-! ## A000211.P6031430580147219110

`abs(A061084(n+1))+2`
-/

namespace A000211.P6031430580147219110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1)| + 2

end

end A000211.P6031430580147219110

namespace A000211

/-- `abs(A061084(n+1))+2` -/
def P6031430580147219110.Spec : Prop :=
  ∀ n, P6031430580147219110.a n = A000211 n

end A000211

/-! ## A000211.P2026405819256049769

`A105397(n)+A001350(n)`
-/

namespace A000211.P2026405819256049769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n + A001350 n

end

end A000211.P2026405819256049769

namespace A000211

/-- `A105397(n)+A001350(n)` -/
def P2026405819256049769.Spec : Prop :=
  ∀ n, P2026405819256049769.a n = A000211 n

end A000211

/-! ## A000211.P2524145633800226827

`A099925(n)+A010684(n)`
-/

namespace A000211.P2524145633800226827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A010684 n

end

end A000211.P2524145633800226827

namespace A000211

/-- `A099925(n)+A010684(n)` -/
def P2524145633800226827.Spec : Prop :=
  ∀ n, P2524145633800226827.a n = A000211 n

end A000211

/-! ## A000211.P14535054582495055844

`A176059(n)+A014217(n)`
-/

namespace A000211.P14535054582495055844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n + A014217 n

end

end A000211.P14535054582495055844

namespace A000211

/-- `A176059(n)+A014217(n)` -/
def P14535054582495055844.Spec : Prop :=
  ∀ n, P14535054582495055844.a n = A000211 n

end A000211

/-! ## A000211.P1108913407748115371

`A176040(n)+A098600(n)`
-/

namespace A000211.P1108913407748115371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A098600 n

end

end A000211.P1108913407748115371

namespace A000211

/-- `A176040(n)+A098600(n)` -/
def P1108913407748115371.Spec : Prop :=
  ∀ n, P1108913407748115371.a n = A000211 n

end A000211

/-! ## A000211.P441623831075505164

`A157725(n)+A118658(n)`
-/

namespace A000211.P441623831075505164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + A118658 n

end

end A000211.P441623831075505164

namespace A000211

/-- `A157725(n)+A118658(n)` -/
def P441623831075505164.Spec : Prop :=
  ∀ n, P441623831075505164.a n = A000211 n

end A000211

/-! ## A000211.P11407544169729619178

`A033817(n+1)-A004767(n)`
-/

namespace A000211.P11407544169729619178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033817 (n + 1) - A004767 n

end

end A000211.P11407544169729619178

namespace A000211

/-- `A033817(n+1)-A004767(n)` -/
def P11407544169729619178.Spec : Prop :=
  ∀ n, P11407544169729619178.a n = A000211 n

end A000211

/-! ## A000211.P6956654688552754937

`A000045(n)+A118658(n)+2`
-/

namespace A000211.P6956654688552754937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A118658 n + 2)

end

end A000211.P6956654688552754937

namespace A000211

/-- `A000045(n)+A118658(n)+2` -/
def P6956654688552754937.Spec : Prop :=
  ∀ n, P6956654688552754937.a n = A000211 n

end A000211

/-! ## A000211.P4975070917362158599

`A000045(n+1)+Δ[A000045(n)]+2`
-/

namespace A000211.P4975070917362158599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A000211.P4975070917362158599

namespace A000211

/-- `A000045(n+1)+Δ[A000045(n)]+2` -/
def P4975070917362158599.Spec : Prop :=
  ∀ n, P4975070917362158599.a n = A000211 n

end A000211

/-! ## A000211.P8076883175975192481

`2-(A001222(gcd(n, n-1))-A000032(n))`
-/

namespace A000211.P8076883175975192481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001222 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) - A000032 n)

end

end A000211.P8076883175975192481

namespace A000211

/-- `2-(A001222(gcd(n, n-1))-A000032(n))` -/
def P8076883175975192481.Spec : Prop :=
  ∀ n, P8076883175975192481.a n = A000211 n

end A000211

/-!
# A000212: a(n) = floor(n^2/3).

The programs for A000212, the canonical program `A000212.P16185420776839342687` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000212 has offset 0).

The definition of A000212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/3)` (program `A000212.P16185420776839342687`, by `A000212.P16185420776839342687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000212.P16185420776839342687

`floor(n²/3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000212

/-- `floor(n²/3)` -/
def P16185420776839342687.Spec : Prop :=
  ∀ n, P16185420776839342687.a n = A000212 n

theorem P16185420776839342687.correct : P16185420776839342687.Spec := by
  intro n
  simp only [A000212]

end A000212

/-! ## A000212.P16168074292641820754

`1/6*(2*n²-3+gcd(n, 3))`
-/

namespace A000212.P16168074292641820754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((2 * n ^ 2 : ℤ) - 3 + (Nat.gcd n 3 : ℤ) : ℚ)

end

end A000212.P16168074292641820754

namespace A000212

/-- `1/6*(2*n²-3+gcd(n, 3))` -/
def P16168074292641820754.Spec : Prop :=
  ∀ n, P16168074292641820754.a n = (A000212 n : ℚ)

end A000212

/-! ## A000212.P4025483631891374967

`(n-1)²-a(n-1)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A000212.P4025483631891374967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n : ℤ) - 1) ^ 2 - a (n - 1) - a (n - 2)

end

end A000212.P4025483631891374967

namespace A000212

/-- `(n-1)²-a(n-1)-a(n-2)` -/
def P4025483631891374967.Spec : Prop :=
  ∀ n, P4025483631891374967.a n = A000212 n

end A000212

/-! ## A000212.P4495998119998853982

`a(n-1)+a(n-3)-a(n-4)+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A000212.P4495998119998853982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4) + 2

end

end A000212.P4495998119998853982

namespace A000212

/-- `a(n-1)+a(n-3)-a(n-4)+2` -/
def P4495998119998853982.Spec : Prop :=
  ∀ n, P4495998119998853982.a n = A000212 n

end A000212

/-! ## A000212.P16418327203952749651

`a(n-3)+A005408(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000212.P16418327203952749651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + A005408 (n - 2)

end

end A000212.P16418327203952749651

namespace A000212

/-- `a(n-3)+A005408(n-2)` -/
def P16418327203952749651.Spec : Prop :=
  ∀ n, P16418327203952749651.a n = A000212 n

end A000212

/-! ## A000212.P8082039667340374244

`round(n/(3*acot(n)))`
-/

namespace A000212.P8082039667340374244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (3 * SequenceMachineLib.acot (n : ℝ)))

end

end A000212.P8082039667340374244

namespace A000212

/-- `round(n/(3*acot(n)))` -/
def P8082039667340374244.Spec : Prop :=
  ∀ n, P8082039667340374244.a n = A000212 n

end A000212

/-! ## A000212.P11996982909570031083

`∑[∑[char[∑[gcd(2, n)]]]]`
-/

namespace A000212.P11996982909570031083
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000212.P11996982909570031083

namespace A000212

/-- `∑[∑[char[∑[gcd(2, n)]]]]` -/
def P11996982909570031083.Spec : Prop :=
  ∀ n, (P11996982909570031083.a n : ℤ) = A000212 n

end A000212

/-! ## A000212.P8714126204382076796

`round(and(-2, n²)/3)`
-/

namespace A000212.P8714126204382076796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (-2) (n ^ 2 : ℤ) : ℚ) / 3)

end

end A000212.P8714126204382076796

namespace A000212

/-- `round(and(-2, n²)/3)` -/
def P8714126204382076796.Spec : Prop :=
  ∀ n, P8714126204382076796.a n = A000212 n

end A000212

/-! ## A000212.P14840569751041524726

`ceil(cos(2)+n²/3)`
-/

namespace A000212.P14840569751041524726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ)⌉

end

end A000212.P14840569751041524726

namespace A000212

/-- `ceil(cos(2)+n²/3)` -/
def P14840569751041524726.Spec : Prop :=
  ∀ n, P14840569751041524726.a n = A000212 n

end A000212

/-! ## A000212.P14743475796494942452

`ceil(n²/3-cos(1))`
-/

namespace A000212.P14743475796494942452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℚ) / 3 : ℝ) - Real.cos (1 : ℝ)⌉

end

end A000212.P14743475796494942452

namespace A000212

/-- `ceil(n²/3-cos(1))` -/
def P14743475796494942452.Spec : Prop :=
  ∀ n, P14743475796494942452.a n = A000212 n

end A000212

/-! ## A000212.P3091409792725908909

`round(cos(2)+n²/3)`
-/

namespace A000212.P3091409792725908909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ))

end

end A000212.P3091409792725908909

namespace A000212

/-- `round(cos(2)+n²/3)` -/
def P3091409792725908909.Spec : Prop :=
  ∀ n, P3091409792725908909.a n = A000212 n

end A000212

/-! ## A000212.P238593485430578138

`round((n²-cos(1))/3)`
-/

namespace A000212.P238593485430578138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.cos (1 : ℝ)) / 3)

end

end A000212.P238593485430578138

namespace A000212

/-- `round((n²-cos(1))/3)` -/
def P238593485430578138.Spec : Prop :=
  ∀ n, P238593485430578138.a n = A000212 n

end A000212

/-! ## A000212.P6375063887880065565

`ceil(n²/3-sin(1))`
-/

namespace A000212.P6375063887880065565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℚ) / 3 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A000212.P6375063887880065565

namespace A000212

/-- `ceil(n²/3-sin(1))` -/
def P6375063887880065565.Spec : Prop :=
  ∀ n, P6375063887880065565.a n = A000212 n

end A000212

/-! ## A000212.P13493206505183250642

`ceil((tan(2)+n²)/3)`
-/

namespace A000212.P13493206505183250642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (2 : ℝ) + (n ^ 2 : ℝ)) / 3⌉

end

end A000212.P13493206505183250642

namespace A000212

/-- `ceil((tan(2)+n²)/3)` -/
def P13493206505183250642.Spec : Prop :=
  ∀ n, P13493206505183250642.a n = A000212 n

end A000212

/-! ## A000212.P1276387517952808638

`round((n²-sin(1))/3)`
-/

namespace A000212.P1276387517952808638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.sin (1 : ℝ)) / 3)

end

end A000212.P1276387517952808638

namespace A000212

/-- `round((n²-sin(1))/3)` -/
def P1276387517952808638.Spec : Prop :=
  ∀ n, P1276387517952808638.a n = A000212 n

end A000212

/-! ## A000212.P17438211457726878690

`ceil((n²-tan(1))/3)`
-/

namespace A000212.P17438211457726878690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℝ) - Real.tan (1 : ℝ)) / 3⌉

end

end A000212.P17438211457726878690

namespace A000212

/-- `ceil((n²-tan(1))/3)` -/
def P17438211457726878690.Spec : Prop :=
  ∀ n, P17438211457726878690.a n = A000212 n

end A000212

/-! ## A000212.P6226223478841837254

`round(sin(3)+n²/3)`
-/

namespace A000212.P6226223478841837254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (3 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ))

end

end A000212.P6226223478841837254

namespace A000212

/-- `round(sin(3)+n²/3)` -/
def P6226223478841837254.Spec : Prop :=
  ∀ n, P6226223478841837254.a n = A000212 n

end A000212

/-! ## A000212.P6398236890729949330

`round(tan(3)+n²/3)`
-/

namespace A000212.P6398236890729949330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ))

end

end A000212.P6398236890729949330

namespace A000212

/-- `round(tan(3)+n²/3)` -/
def P6398236890729949330.Spec : Prop :=
  ∀ n, P6398236890729949330.a n = A000212 n

end A000212

/-! ## A000212.P13526831499918183063

`ceil((n²-asin(1))/3)`
-/

namespace A000212.P13526831499918183063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℝ) - Real.arcsin (1 : ℝ)) / 3⌉

end

end A000212.P13526831499918183063

namespace A000212

/-- `ceil((n²-asin(1))/3)` -/
def P13526831499918183063.Spec : Prop :=
  ∀ n, P13526831499918183063.a n = A000212 n

end A000212

/-! ## A000212.P2422765562504267155

`ceil(n²/3-atan(1))`
-/

namespace A000212.P2422765562504267155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℚ) / 3 : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A000212.P2422765562504267155

namespace A000212

/-- `ceil(n²/3-atan(1))` -/
def P2422765562504267155.Spec : Prop :=
  ∀ n, P2422765562504267155.a n = A000212 n

end A000212

/-!
# A000213: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0)=a(1)=a(2)=1.

The programs for A000213, the canonical program `A000213.P15684087444544399495` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000213 has offset 0).

The definition of A000213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A000213.P15684087444544399495`, by `A000213.P15684087444544399495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000213.P5075772487867419408

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A000213.P5075772487867419408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A000213.P5075772487867419408

namespace A000213

/-- `2*a(n-1)-a(n-4)` -/
def P5075772487867419408.Spec : Prop :=
  ∀ n, P5075772487867419408.a n = A000213 n

end A000213

/-! ## A000213.P15684087444544399495

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000213

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P15684087444544399495.Spec : Prop :=
  ∀ n, (P15684087444544399495.a n : ℤ) = A000213 n

theorem P15684087444544399495.correct : P15684087444544399495.Spec := by
  intro n
  simp only [A000213]

end A000213

/-! ## A000213.P6472809821486020148

`A001590(n)+A001590(n+1)`
-/

namespace A000213.P6472809821486020148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A001590 (n + 1)

end

end A000213.P6472809821486020148

namespace A000213

/-- `A001590(n)+A001590(n+1)` -/
def P6472809821486020148.Spec : Prop :=
  ∀ n, P6472809821486020148.a n = A000213 n

end A000213

/-! ## A000213.P3673048913036800115

`ogf((-1+x^2)/(-1+x+x^2+x^3))`
-/

namespace A000213.P3673048913036800115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -1, -1] n

end

end A000213.P3673048913036800115

namespace A000213

/-- `ogf((-1+x^2)/(-1+x+x^2+x^3))` -/
def P3673048913036800115.Spec : Prop :=
  ∀ n, P3673048913036800115.a n = A000213 n

end A000213

/-! ## A000213.P18385123991146983166

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A000213.P18385123991146983166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A000213.P18385123991146983166

namespace A000213

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P18385123991146983166.Spec : Prop :=
  ∀ n, P18385123991146983166.a n = A000213 n

end A000213

/-! ## A000213.P5652698317518097791

`2*A192804(n)-1`
-/

namespace A000213.P5652698317518097791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 n - 1

end

end A000213.P5652698317518097791

namespace A000213

/-- `2*A192804(n)-1` -/
def P5652698317518097791.Spec : Prop :=
  ∀ n, P5652698317518097791.a n = A000213 n

end A000213

/-! ## A000213.P13707137615518929474

`A081172(n)+A000073(n)`
-/

namespace A000213.P13707137615518929474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A000073 n

end

end A000213.P13707137615518929474

namespace A000213

/-- `A081172(n)+A000073(n)` -/
def P13707137615518929474.Spec : Prop :=
  ∀ n, P13707137615518929474.a n = A000213 n

end A000213

/-! ## A000213.P4300563976206418815

`A186272(n+3)-A000045(n+2)`
-/

namespace A000213.P4300563976206418815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186272 (n + 3) - A000045 (n + 2)

end

end A000213.P4300563976206418815

namespace A000213

/-- `A186272(n+3)-A000045(n+2)` -/
def P4300563976206418815.Spec : Prop :=
  ∀ n, P4300563976206418815.a n = A000213 n

end A000213

/-! ## A000213.P1091727987314105757

`A390348(n)+A390349(n)-A000045(n)`
-/

namespace A000213.P1091727987314105757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390348 n + (A390349 n - A000045 n)

end

end A000213.P1091727987314105757

namespace A000213

/-- `A390348(n)+A390349(n)-A000045(n)` -/
def P1091727987314105757.Spec : Prop :=
  ∀ n, P1091727987314105757.a n = A000213 n

end A000213

/-! ## A000213.P9090688877906249705

`A354784(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A000213.P9090688877906249705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354784 (n + 1) - a (n - 1)

end

end A000213.P9090688877906249705

namespace A000213

/-- `A354784(n+1)-a(n-1)` -/
def P9090688877906249705.Spec : Prop :=
  ∀ n, P9090688877906249705.a n = A000213 n

end A000213

/-! ## A000213.P15857011199172976741

`A135491(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A000213.P15857011199172976741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135491 (n - 1) - a (n - 1)

end

end A000213.P15857011199172976741

namespace A000213

/-- `A135491(n-1)-a(n-1)` -/
def P15857011199172976741.Spec : Prop :=
  ∀ n, P15857011199172976741.a n = A000213 n

end A000213

/-! ## A000213.P14082873280973885056

`A275778(n)-A001590(n)`
-/

namespace A000213.P14082873280973885056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n - A001590 n

end

end A000213.P14082873280973885056

namespace A000213

/-- `A275778(n)-A001590(n)` -/
def P14082873280973885056.Spec : Prop :=
  ∀ n, P14082873280973885056.a n = A000213 n

end A000213

/-! ## A000213.P9912585566295901345

`A214727(n)-∑[A001590(n)]`
-/

namespace A000213.P9912585566295901345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000213.P9912585566295901345

namespace A000213

/-- `A214727(n)-∑[A001590(n)]` -/
def P9912585566295901345.Spec : Prop :=
  ∀ n, P9912585566295901345.a n = A000213 n

end A000213

/-! ## A000213.P12676973299603961946

`A089068(n)+1-A000073(n)`
-/

namespace A000213.P12676973299603961946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n + (1 - A000073 n)

end

end A000213.P12676973299603961946

namespace A000213

/-- `A089068(n)+1-A000073(n)` -/
def P12676973299603961946.Spec : Prop :=
  ∀ n, P12676973299603961946.a n = A000213 n

end A000213

/-! ## A000213.P10182058869246494090

`A214727(n)-A000073(n+1)`
-/

namespace A000213.P10182058869246494090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A000073 (n + 1)

end

end A000213.P10182058869246494090

namespace A000213

/-- `A214727(n)-A000073(n+1)` -/
def P10182058869246494090.Spec : Prop :=
  ∀ n, P10182058869246494090.a n = A000213 n

end A000213

/-! ## A000213.P8221723917886555756

`A000073(n+2)-A000073(n)`
-/

namespace A000213.P8221723917886555756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000073 n

end

end A000213.P8221723917886555756

namespace A000213

/-- `A000073(n+2)-A000073(n)` -/
def P8221723917886555756.Spec : Prop :=
  ∀ n, P8221723917886555756.a n = A000213 n

end A000213

/-! ## A000213.P4562481777512083290

`A112476(n+2)-A112476(n)`
-/

namespace A000213.P4562481777512083290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 2) - A112476 n

end

end A000213.P4562481777512083290

namespace A000213

/-- `A112476(n+2)-A112476(n)` -/
def P4562481777512083290.Spec : Prop :=
  ∀ n, P4562481777512083290.a n = A000213 n

end A000213

/-! ## A000213.P9775605070364564502

`∑[A354784(n)]+1-A354784(n)`
-/

namespace A000213.P9775605070364564502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A354784 n)

end

end A000213.P9775605070364564502

namespace A000213

/-- `∑[A354784(n)]+1-A354784(n)` -/
def P9775605070364564502.Spec : Prop :=
  ∀ n, P9775605070364564502.a n = A000213 n

end A000213

/-! ## A000213.P13266206086821391049

`A020992(n+1)-A081172(n+1)`
-/

namespace A000213.P13266206086821391049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - A081172 (n + 1)

end

end A000213.P13266206086821391049

namespace A000213

/-- `A020992(n+1)-A081172(n+1)` -/
def P13266206086821391049.Spec : Prop :=
  ∀ n, P13266206086821391049.a n = A000213 n

end A000213

/-! ## A000213.P4685533260029711979

`A141036(n)+A141036(n)-A141523(n)`
-/

namespace A000213.P4685533260029711979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + (A141036 n - A141523 n)

end

end A000213.P4685533260029711979

namespace A000213

/-- `A141036(n)+A141036(n)-A141523(n)` -/
def P4685533260029711979.Spec : Prop :=
  ∀ n, P4685533260029711979.a n = A000213 n

end A000213

/-!
# A000214: Number of equivalence classes of Boolean functions of n variables under action of AG(n,2).

The programs for A000214, there is no canonical definition to state claims against.
-/

/-! ## A000214.P14113002456908587527

`A053037(n+1)+A049461(n+2)`
-/

namespace A000214.P14113002456908587527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053037 (n + 1) + A049461 (n + 2)

end

end A000214.P14113002456908587527

/-! ## A000214.P17105543245485503162

`A000614(n+1)+A049461(n+2)/2`
-/

namespace A000214.P17105543245485503162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000614 (n + 1) : ℚ) + (A049461 (n + 2) : ℚ) / 2

end

end A000214.P17105543245485503162

/-!
# A000215: Fermat numbers: a(n) = 2^(2^n) + 1.

The programs for A000215, the canonical program `A000215.P17006250026428793045` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000215 has offset 0).

The definition of A000215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+1` (program `A000215.P17006250026428793045`, by `A000215.P17006250026428793045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000215.P17006250026428793045

`2^2^n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000215

/-- `2^2^n+1` -/
def P17006250026428793045.Spec : Prop :=
  ∀ n, (P17006250026428793045.a n : ℤ) = A000215 n

theorem P17006250026428793045.correct : P17006250026428793045.Spec := by
  intro n
  simp only [A000215]

end A000215

/-! ## A000215.P11200801503956191708

`or(1, 2^2^n)`
-/

namespace A000215.P11200801503956191708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ 2 ^ n)

end

end A000215.P11200801503956191708

namespace A000215

/-- `or(1, 2^2^n)` -/
def P11200801503956191708.Spec : Prop :=
  ∀ n, (P11200801503956191708.a n : ℤ) = A000215 n

end A000215

/-! ## A000215.P15332070437106854137

`xor(1, 2^2^n)`
-/

namespace A000215.P15332070437106854137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ 2 ^ n)

end

end A000215.P15332070437106854137

namespace A000215

/-- `xor(1, 2^2^n)` -/
def P15332070437106854137.Spec : Prop :=
  ∀ n, (P15332070437106854137.a n : ℤ) = A000215 n

end A000215

/-! ## A000215.P3678464906617887334

`∑[abs(Δ[a(n-1)²])]` with `a(0)=-1, a(1)=2`
-/

namespace A000215.P3678464906617887334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000215.P3678464906617887334

namespace A000215

/-- `∑[abs(Δ[a(n-1)²])]` -/
def P3678464906617887334.Spec : Prop :=
  ∀ n, P3678464906617887334.a n = A000215 n

end A000215

/-! ## A000215.P16365146241566174687

`Δ[∑[a(n-1)²]+n]` with `a(0)=0, a(1)=2`
-/

namespace A000215.P16365146241566174687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A000215.P16365146241566174687

namespace A000215

/-- `Δ[∑[a(n-1)²]+n]` -/
def P16365146241566174687.Spec : Prop :=
  ∀ n, P16365146241566174687.a n = A000215 n

end A000215

/-!
# A000216: Take sum of squares of digits of previous term, starting with 2.

The programs for A000216, the canonical program `A000216.P351312360313339281` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000216 has offset 1).

The definition of A000216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000216.P351312360313339281

`A003132(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000216

/-- `A003132(a(n-1))` -/
def P351312360313339281.Spec : Prop :=
  ∀ n, P351312360313339281.a n = A000216 (n + 1)

theorem P351312360313339281.correct : P351312360313339281.Spec := by
  intro n
  simp only [A000216, Nat.add_sub_cancel]

end A000216

/-!
# A000217: Triangular numbers: a(n) = binomial(n+1,2) = n*(n+1)/2 = 0 + 1 + 2 + ... + n.

The programs for A000217, the canonical program `A000217.P10269402890581615239` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000217 has offset 0).

The definition of A000217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 2)` (program `A000217.P10269402890581615239`, by `A000217.P10269402890581615239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000217.P10269402890581615239

`C(n+1, 2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000217

/-- `C(n+1, 2)` -/
def P10269402890581615239.Spec : Prop :=
  ∀ n, (P10269402890581615239.a n : ℤ) = A000217 n

/-! `P10269402890581615239.correct` is a hand-written proof in `Proof.A000.A000217`. -/

end A000217

/-! ## A000217.P8915243337503660349

`n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000217.P8915243337503660349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2

end

end A000217.P8915243337503660349

namespace A000217

/-- `n*(n+1)/2` -/
def P8915243337503660349.Spec : Prop :=
  ∀ n, P8915243337503660349.a n = (A000217 n : ℚ)

theorem P8915243337503660349.correct : P8915243337503660349.Spec := by
  intro n
  simp only [A000217, Nat.add_sub_cancel, A000217.P8915243337503660349.a, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000217

/-! ## A000217.P834084756573057592

`a(n-1)+n` with `a(0)=0`
-/

namespace A000217.P834084756573057592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n

end

end A000217.P834084756573057592

namespace A000217

/-- `a(n-1)+n` -/
def P834084756573057592.Spec : Prop :=
  ∀ n, (P834084756573057592.a n : ℤ) = A000217 n

end A000217

/-! ## A000217.P5667717349603601182

`n²-a(n-1)` with `a(0)=0`
-/

namespace A000217.P5667717349603601182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - a (n - 1)

end

end A000217.P5667717349603601182

namespace A000217

/-- `n²-a(n-1)` -/
def P5667717349603601182.Spec : Prop :=
  ∀ n, P5667717349603601182.a n = A000217 n

end A000217

/-! ## A000217.P12354223982989247099

`sqrt(A000537(n))`
-/

namespace A000217.P12354223982989247099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 n : ℝ)

end

end A000217.P12354223982989247099

namespace A000217

/-- `sqrt(A000537(n))` -/
def P12354223982989247099.Spec : Prop :=
  ∀ n, P12354223982989247099.a n = (A000217 n : ℝ)

end A000217

/-! ## A000217.P2506930576731422341

`A000124(n)-1`
-/

namespace A000217.P2506930576731422341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

end

end A000217.P2506930576731422341

namespace A000217

/-- `A000124(n)-1` -/
def P2506930576731422341.Spec : Prop :=
  ∀ n, P2506930576731422341.a n = A000217 n

end A000217

/-! ## A000217.P10269634353038929924

`A022264(n)-A049450(n)`
-/

namespace A000217.P10269634353038929924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A049450 n

end

end A000217.P10269634353038929924

namespace A000217

/-- `A022264(n)-A049450(n)` -/
def P10269634353038929924.Spec : Prop :=
  ∀ n, P10269634353038929924.a n = A000217 n

end A000217

/-! ## A000217.P7687211675126293036

`A110654(n)*A109613(n)`
-/

namespace A000217.P7687211675126293036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n * A109613 n

end

end A000217.P7687211675126293036

namespace A000217

/-- `A110654(n)*A109613(n)` -/
def P7687211675126293036.Spec : Prop :=
  ∀ n, P7687211675126293036.a n = A000217 n

end A000217

/-! ## A000217.P981183444913881885

`A034856(n+1)-A005408(n)`
-/

namespace A000217.P981183444913881885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A005408 n

end

end A000217.P981183444913881885

namespace A000217

/-- `A034856(n+1)-A005408(n)` -/
def P981183444913881885.Spec : Prop :=
  ∀ n, P981183444913881885.a n = A000217 n

theorem P981183444913881885.correct : P981183444913881885.Spec := by
  intro n
  simp only [A000217, Nat.add_sub_cancel, A000217.P981183444913881885.a, A000217.P10269402890581615239.a, A005408, A005408.P17437947328870227736.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000217

/-! ## A000217.P11390962506081795657

`A060544(n+1)-A016754(n)`
-/

namespace A000217.P11390962506081795657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A016754 n

end

end A000217.P11390962506081795657

namespace A000217

/-- `A060544(n+1)-A016754(n)` -/
def P11390962506081795657.Spec : Prop :=
  ∀ n, P11390962506081795657.a n = A000217 n

end A000217

/-! ## A000217.P10945127043751376411

`A026741(n)*A026741(n+1)`
-/

namespace A000217.P10945127043751376411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A026741 (n + 1)

end

end A000217.P10945127043751376411

namespace A000217

/-- `A026741(n)*A026741(n+1)` -/
def P10945127043751376411.Spec : Prop :=
  ∀ n, P10945127043751376411.a n = A000217 n

end A000217

/-! ## A000217.P15095679583332489706

`2*A000292(n)-A000330(n)`
-/

namespace A000217.P15095679583332489706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - A000330 n

end

end A000217.P15095679583332489706

namespace A000217

/-- `2*A000292(n)-A000330(n)` -/
def P15095679583332489706.Spec : Prop :=
  ∀ n, P15095679583332489706.a n = A000217 n

end A000217

/-! ## A000217.P11129645414659707755

`A109613(n)*A004526(n+1)`
-/

namespace A000217.P11129645414659707755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A004526 (n + 1)

end

end A000217.P11129645414659707755

namespace A000217

/-- `A109613(n)*A004526(n+1)` -/
def P11129645414659707755.Spec : Prop :=
  ∀ n, P11129645414659707755.a n = A000217 n

end A000217

/-! ## A000217.P18377788150326856785

`∑[gcd(n, n)]`
-/

namespace A000217.P18377788150326856785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000217.P18377788150326856785

namespace A000217

/-- `∑[gcd(n, n)]` -/
def P18377788150326856785.Spec : Prop :=
  ∀ n, (P18377788150326856785.a n : ℤ) = A000217 n

end A000217

/-! ## A000217.P10444506746700004324

`∑[lcm(n, n)]`
-/

namespace A000217.P10444506746700004324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000217.P10444506746700004324

namespace A000217

/-- `∑[lcm(n, n)]` -/
def P10444506746700004324.Spec : Prop :=
  ∀ n, (P10444506746700004324.a n : ℤ) = A000217 n

end A000217

/-! ## A000217.P9608515235941834178

`n²-C(n, 2)`
-/

namespace A000217.P9608515235941834178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A000217.P9608515235941834178

namespace A000217

/-- `n²-C(n, 2)` -/
def P9608515235941834178.Spec : Prop :=
  ∀ n, P9608515235941834178.a n = A000217 n

theorem P9608515235941834178.correct : P9608515235941834178.Spec := by
  intro n
  simp only [A000217, Nat.add_sub_cancel, A000217.P9608515235941834178.a, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000217

/-! ## A000217.P4771307230802072068

`∑[ceil(∑[cos(acot(n))])]`
-/

namespace A000217.P4771307230802072068
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000217.P4771307230802072068

namespace A000217

/-- `∑[ceil(∑[cos(acot(n))])]` -/
def P4771307230802072068.Spec : Prop :=
  ∀ n, P4771307230802072068.a n = A000217 n

end A000217

/-! ## A000217.P7389706769901200277

`n-Δ[-C(n, 3)]`
-/

namespace A000217.P7389706769901200277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A000217.P7389706769901200277

namespace A000217

/-- `n-Δ[-C(n, 3)]` -/
def P7389706769901200277.Spec : Prop :=
  ∀ n, P7389706769901200277.a n = A000217 n

theorem P7389706769901200277.correct : P7389706769901200277.Spec := by
  intro n
  simp only [A000217, Nat.add_sub_cancel, A000217.P7389706769901200277.f1, A000217.P7389706769901200277.a, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000217

/-! ## A000217.P5420928870567585437

`or(1, n)*ceil(n/2)`
-/

namespace A000217.P5420928870567585437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉

end

end A000217.P5420928870567585437

namespace A000217

/-- `or(1, n)*ceil(n/2)` -/
def P5420928870567585437.Spec : Prop :=
  ∀ n, P5420928870567585437.a n = A000217 n

end A000217

/-! ## A000217.P7837935572255088464

`∑[n]%((n+1)^10)`
-/

namespace A000217.P7837935572255088464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 10

end

end A000217.P7837935572255088464

namespace A000217

/-- `∑[n]%((n+1)^10)` -/
def P7837935572255088464.Spec : Prop :=
  ∀ n, (P7837935572255088464.a n : ℤ) = A000217 n

end A000217

/-!
# A000218: Take sum of squares of digits of previous term; start with 3.

The programs for A000218, the canonical program `A000218.P6684988766202068` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000218 has offset 1).

The definition of A000218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000218.P6684988766202068

`A003132(a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000218

/-- `A003132(a(n-1))` -/
def P6684988766202068.Spec : Prop :=
  ∀ n, P6684988766202068.a n = A000218 (n + 1)

theorem P6684988766202068.correct : P6684988766202068.Spec := by
  intro n
  simp only [A000218, Nat.add_sub_cancel]

end A000218

/-!
# A000219: Number of plane partitions (or planar partitions) of n.

The programs for A000219, there is no canonical definition to state claims against.
-/

/-! ## A000219.P12323291553337356479

`A191659(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A000219.P12323291553337356479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191659 (n - 1) + a (n - 1)

end

end A000219.P12323291553337356479

/-! ## A000219.P16015560023733366220

`A277963(n+1)+A277963(n)-A191659(n)`
-/

namespace A000219.P16015560023733366220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277963 (n + 1) + (A277963 n - A191659 n)

end

end A000219.P16015560023733366220

/-! ## A000219.P9981281572064076891

`∑[A191659(n)]+1-A191659(n)`
-/

namespace A000219.P9981281572064076891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A191659 n)

end

end A000219.P9981281572064076891

/-! ## A000219.P10036864505219307668

`A309267(n)-a(n-1)` with `a(0)=1`
-/

namespace A000219.P10036864505219307668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309267 n - a (n - 1)

end

end A000219.P10036864505219307668

/-! ## A000219.P9153766423951003824

`A309267(n+1)-(A277963(n+1)+A277963(n))`
-/

namespace A000219.P9153766423951003824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309267 (n + 1) - (A277963 (n + 1) + A277963 n)

end

end A000219.P9153766423951003824

/-! ## A000219.P6969288037063623385

`A091360(n+1)-(A191659(n)+A091360(n))`
-/

namespace A000219.P6969288037063623385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 (n + 1) - (A191659 n + A091360 n)

end

end A000219.P6969288037063623385

/-! ## A000219.P4114748644439761898

`A309267(n+1)+A091360(n)-A091360(n+1)`
-/

namespace A000219.P4114748644439761898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309267 (n + 1) + (A091360 n - A091360 (n + 1))

end

end A000219.P4114748644439761898

/-! ## A000219.P973299204340994863

`sqrt(A383354(n))`
-/

namespace A000219.P973299204340994863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A383354 n : ℝ)

end

end A000219.P973299204340994863

/-! ## A000219.P12175106383190147533

`A000712(n)+A116600(n)-A011782(n)`
-/

namespace A000219.P12175106383190147533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + (A116600 n - A011782 n)

end

end A000219.P12175106383190147533

/-! ## A000219.P944355977193145137

`A242642(A179865(n+1))`
-/

namespace A000219.P944355977193145137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat

end

end A000219.P944355977193145137

/-! ## A000219.P7344957537283933700

`A242642(A000007(n)+∑[n])`
-/

namespace A000219.P7344957537283933700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A000219.P7344957537283933700

/-! ## A000219.P2281266751689945277

`A242642(or(∑[n], A000007(n)))`
-/

namespace A000219.P2281266751689945277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000007 n)).toNat

end

end A000219.P2281266751689945277

/-! ## A000219.P6771358752100985556

`A242642(A000217(A000007(n)+n))`
-/

namespace A000219.P6771358752100985556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A000219.P6771358752100985556

/-! ## A000219.P4205716994790854340

`A005987(n)+2*A306098(n)`
-/

namespace A000219.P4205716994790854340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 n + 2 * A306098 n

end

end A000219.P4205716994790854340

/-! ## A000219.P13076119681613904661

`A257673(A133263(n)-1)`
-/

namespace A000219.P13076119681613904661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 n - 1).toNat

end

end A000219.P13076119681613904661

/-! ## A000219.P8168938785887406053

`A257673(A179865(n+1)+1)`
-/

namespace A000219.P8168938785887406053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A179865 (n + 1) + 1).toNat

end

end A000219.P8168938785887406053

/-! ## A000219.P9362904210408892196

`A257673(A238531(n+1)-1)`
-/

namespace A000219.P9362904210408892196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A238531 (n + 1) - 1).toNat

end

end A000219.P9362904210408892196

/-! ## A000219.P1624783281908595541

`A257673(eq[n, n*A002262(n)])`
-/

namespace A000219.P1624783281908595541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000219.P1624783281908595541

/-! ## A000219.P10097452543826516294

`A257673(A000217(n)-A057428(n))`
-/

namespace A000219.P10097452543826516294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 n - A057428 n).toNat

end

end A000219.P10097452543826516294

/-! ## A000219.P10776380220607813078

`A257673(A000217(n)+A057428(n)²)`
-/

namespace A000219.P10776380220607813078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 n + A057428 n ^ 2).toNat

end

end A000219.P10776380220607813078

/-!
# A000220: Number of asymmetric trees with n nodes (also called identity trees).

The programs for A000220, there is no canonical definition to state claims against.
-/

/-! ## A000220.P12634354093457422795

`A228601(∑[n+1])`
-/

namespace A000220.P12634354093457422795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228601 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000220.P12634354093457422795

/-! ## A000220.P13397993179639686141

`ceil(sin(n)²)^n*A228601(A000217(n+1))`
-/

namespace A000220.P13397993179639686141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ ^ n * A228601 (A000217 (n + 1)).toNat

end

end A000220.P13397993179639686141

/-! ## A000220.P1003693022218090556

`A228601(A000217(n+1))%A065100(n)`
-/

namespace A000220.P1003693022218090556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228601 (A000217 (n + 1)).toNat) (A065100 n)

end

end A000220.P1003693022218090556

/-! ## A000220.P5068770395473768460

`gcd(2, A010684(n))*A228601(A000217(n+1))`
-/

namespace A000220.P5068770395473768460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A010684 n) : ℤ) * A228601 (A000217 (n + 1)).toNat

end

end A000220.P5068770395473768460

/-! ## A000220.P10984980640036360320

`gcd(3, A014206(n))*A228601(A000217(n+1))`
-/

namespace A000220.P10984980640036360320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A014206 n) : ℤ) * A228601 (A000217 (n + 1)).toNat

end

end A000220.P10984980640036360320

/-! ## A000220.P8178776789887782637

`A228601(A000217(n+1))+and(2, A008459(n))`
-/

namespace A000220.P8178776789887782637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228601 (A000217 (n + 1)).toNat + Int.land 2 (A008459 n)

end

end A000220.P8178776789887782637

/-! ## A000220.P6511359238088528544

`A228601(A000217(n+1))+char[A216312(n+1)]`
-/

namespace A000220.P6511359238088528544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216312 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228601 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000220.P6511359238088528544

/-! ## A000220.P14713775103852200535

`A001065(A000040(n+1))*A228601(A000217(n+1))`
-/

namespace A000220.P14713775103852200535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A228601 (A000217 (n + 1)).toNat

end

end A000220.P14713775103852200535

/-! ## A000220.P18211311765131338858

`A000010(A014963(2*(n+1)))*A228601(A000217(n+1))`
-/

namespace A000220.P18211311765131338858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A228601 (A000217 (n + 1)).toNat

end

end A000220.P18211311765131338858

/-!
# A000221: Take sum of squares of digits of previous term; start with 5.

The programs for A000221, the canonical program `A000221.P4832198433719140497` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000221 has offset 1).

The definition of A000221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000221.P4832198433719140497

`A003132(a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000221

/-- `A003132(a(n-1))` -/
def P4832198433719140497.Spec : Prop :=
  ∀ n, P4832198433719140497.a n = A000221 (n + 1)

theorem P4832198433719140497.correct : P4832198433719140497.Spec := by
  intro n
  simp only [A000221, Nat.add_sub_cancel]

end A000221

/-!
# A000222: a(n) = A058057(n,n-2).

The programs for A000222, there is no canonical definition to state claims against.
-/

/-! ## A000222.P16745427581727299851

`A156368(∑[a(n-1)+1])` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A000222.P16745427581727299851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000222.P16745427581727299851

/-! ## A000222.P15358247592993917993

`A156368(A133263(n))`
-/

namespace A000222.P15358247592993917993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A133263 n).toNat

end

end A000222.P15358247592993917993

/-! ## A000222.P12017406927579218286

`A156368(A238531(n+1))`
-/

namespace A000222.P12017406927579218286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A238531 (n + 1)).toNat

end

end A000222.P12017406927579218286

/-! ## A000222.P9202182256250133937

`A156368(Δ[A003600(n)]-n)`
-/

namespace A000222.P9202182256250133937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A000222.P9202182256250133937

/-! ## A000222.P10284712702878150248

`A156368(A134869(n+1)-n)`
-/

namespace A000222.P10284712702878150248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A000222.P10284712702878150248

/-! ## A000222.P9309297690318633582

`A156368(A057427(n)+A000124(n))`
-/

namespace A000222.P9309297690318633582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A057427 n + A000124 n).toNat

end

end A000222.P9309297690318633582

/-! ## A000222.P5777852059425606406

`A156368(A000007(n)+A000217(n)+2)`
-/

namespace A000222.P5777852059425606406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A000007 n + (A000217 n + 2)).toNat

end

end A000222.P5777852059425606406

/-! ## A000222.P16892626022285762401

`A156368(A034856(n+1)-A004273(n))`
-/

namespace A000222.P16892626022285762401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A034856 (n + 1) - A004273 n).toNat

end

end A000222.P16892626022285762401

/-! ## A000222.P11001865520683947111

`A156368(2-(A000007(n)-A000217(n)))`
-/

namespace A000222.P11001865520683947111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (2 - (A000007 n - A000217 n)).toNat

end

end A000222.P11001865520683947111

/-!
# A000223: Let A(n) = #{(i,j,k): i^2 + j^2 + k^2 <= n}, V(n) = (4/3)Pi*n^(3/2), P(n) = A(n) - V(n); A000092 gives values of n where |P(n)| sets a new record; sequence gives nearest integer to P(A000092(n)).

The programs for A000223, there is no canonical definition to state claims against.
-/

/-! ## A000223.P17887232449060159867

`A210641(A000092(n+1))`
-/

namespace A000223.P17887232449060159867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210641 (A000092 (n + 1)).toNat

end

end A000223.P17887232449060159867

/-! ## A000223.P3288375621172551443

`record[A210641(n+1)]`
-/

namespace A000223.P3288375621172551443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000223.P3288375621172551443

/-! ## A000223.P18341434695714852497

`record[abs(A210641(A008611(n)))]`
-/

namespace A000223.P18341434695714852497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210641 (A008611 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000223.P18341434695714852497

/-! ## A000223.P6839962152607395207

`record[abs(A210641(A008619(n)))]`
-/

namespace A000223.P6839962152607395207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210641 (A008619 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000223.P6839962152607395207

/-! ## A000223.P7636926474066391541

`record[abs(A210641(A008620(n)))]`
-/

namespace A000223.P7636926474066391541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210641 (A008620 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000223.P7636926474066391541

/-!
# A000224: Number of squares mod n.

The programs for A000224, there is no canonical definition to state claims against.
-/

/-! ## A000224.P12489381601525547291

`A105612(n+1)+1`
-/

namespace A000224.P12489381601525547291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

end

end A000224.P12489381601525547291

/-! ## A000224.P9894678406886145611

`sqrt(sqrt(A226757(n+1)))`
-/

namespace A000224.P9894678406886145611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A226757 (n + 1) : ℝ))

end

end A000224.P9894678406886145611

/-! ## A000224.P1788157932980328266

`1-A095972(n+1)+n`
-/

namespace A000224.P1788157932980328266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095972 (n + 1) + (n : ℤ)

end

end A000224.P1788157932980328266

/-! ## A000224.P3754486894119666176

`A024000(A095972(n+1))+n`
-/

namespace A000224.P3754486894119666176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A095972 (n + 1)).toNat + (n : ℤ)

end

end A000224.P3754486894119666176

/-! ## A000224.P7717965410113238213

`A001489(A095972(n+1))+A000027(n+1)`
-/

namespace A000224.P7717965410113238213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A095972 (n + 1)).toNat + A000027 (n + 1)

end

end A000224.P7717965410113238213

/-! ## A000224.P15588622802749007214

`A080079(A095972(n+1)+A080079(n+1))`
-/

namespace A000224.P15588622802749007214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A095972 (n + 1) + A080079 (n + 1)).toNat

end

end A000224.P15588622802749007214

/-! ## A000224.P9257050755699530638

`A008619(2*n)-A095972(A008619(2*n))`
-/

namespace A000224.P9257050755699530638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A095972 (A008619 (2 * n)).toNat

end

end A000224.P9257050755699530638

/-! ## A000224.P16368099429525101860

`A052938(2*n)-A095972(A052938(2*n))`
-/

namespace A000224.P16368099429525101860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A095972 (A052938 (2 * n)).toNat

end

end A000224.P16368099429525101860

/-! ## A000224.P6983145321754421182

`A028242(2*n)-A095972(A028242(2*n))`
-/

namespace A000224.P6983145321754421182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A095972 (A028242 (2 * n)).toNat

end

end A000224.P6983145321754421182

/-! ## A000224.P1368675442114954349

`A080513(2*n)-A095972(A080513(2*n))`
-/

namespace A000224.P1368675442114954349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) - A095972 (A080513 (2 * n)).toNat

end

end A000224.P1368675442114954349

/-! ## A000224.P14410842223389813078

`A165915(n+1)+A165924(n+1)+1`
-/

namespace A000224.P14410842223389813078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165915 (n + 1) + (A165924 (n + 1) + 1)

end

end A000224.P14410842223389813078

/-! ## A000224.P17497765680212771345

`A004736(A095972(n+1)+A000124(n))`
-/

namespace A000224.P17497765680212771345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A095972 (n + 1) + A000124 n).toNat

end

end A000224.P17497765680212771345

/-! ## A000224.P1695510337632093589

`A096582(A096582(n+1)+A095972(n+1))`
-/

namespace A000224.P1695510337632093589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096582 (A096582 (n + 1) + A095972 (n + 1)).toNat

end

end A000224.P1695510337632093589

/-!
# A000225: a(n) = 2^n - 1. (Sometimes called Mersenne numbers, although that name is usually reserved for A001348.)

The programs for A000225, the canonical program `A000225.P6535533121115206393` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000225 has offset 0).

The definition of A000225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-1` (program `A000225.P6535533121115206393`, by `A000225.P6535533121115206393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000225.P6535533121115206393

`2^n-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000225

/-- `2^n-1` -/
def P6535533121115206393.Spec : Prop :=
  ∀ n, P6535533121115206393.a n = A000225 n

theorem P6535533121115206393.correct : P6535533121115206393.Spec := by
  intro n
  simp only [A000225]

end A000225

/-!
# A000226: Number of n-node unlabeled connected graphs with one cycle of length 3.

The programs for A000226, there is no canonical definition to state claims against.
-/

/-! ## A000226.P3930793359654515619

`A058879(∑[n+1]+2)`
-/

namespace A000226.P3930793359654515619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058879 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000226.P3930793359654515619

/-! ## A000226.P17352301097013294416

`A033185(∑[n+2]+4)`
-/

namespace A000226.P17352301097013294416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000226.P17352301097013294416

/-! ## A000226.P3236031817907283477

`or(A000007(n), A033185(A167614(n+1)))`
-/

namespace A000226.P3236031817907283477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A033185 (A167614 (n + 1)).toNat)

end

end A000226.P3236031817907283477

/-! ## A000226.P10290299455568165303

`A033185(A167614(n+1))%A124682(n+1)`
-/

namespace A000226.P10290299455568165303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033185 (A167614 (n + 1)).toNat) (A124682 (n + 1))

end

end A000226.P10290299455568165303

/-! ## A000226.P12595668011692727046

`and(A033185(A167614(n+1)), A057428(n+1))`
-/

namespace A000226.P12595668011692727046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033185 (A167614 (n + 1)).toNat) (A057428 (n + 1))

end

end A000226.P12595668011692727046

/-! ## A000226.P16331826539595053451

`A033185(A167614(n+1))+A000007(3*(n+1))`
-/

namespace A000226.P16331826539595053451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A167614 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A000226.P16331826539595053451

/-! ## A000226.P7642331652048434944

`A106234(A052905(n)+9)`
-/

namespace A000226.P7642331652048434944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A052905 n + 9).toNat

end

end A000226.P7642331652048434944

/-! ## A000226.P11540764560332163222

`A106234(A055999(n)+10)`
-/

namespace A000226.P11540764560332163222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A055999 n + 10).toNat

end

end A000226.P11540764560332163222

/-! ## A000226.P2283870241321999683

`A106234(Δ[A008778(n)]+6)`
-/

namespace A000226.P2283870241321999683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (f1 (n + 1) - f1 n + 6).toNat

end

end A000226.P2283870241321999683

/-! ## A000226.P182135894642874608

`A106234(A167614(n+2)+1)`
-/

namespace A000226.P182135894642874608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A167614 (n + 2) + 1).toNat

end

end A000226.P182135894642874608

/-!
# A000227: Nearest integer to e^n.

The programs for A000227, the canonical program `A000227.P11875163259074821490` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000227 has offset 0).

The definition of A000227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000227.P11875163259074821490

`round(exp(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000227

/-- `round(exp(n))` -/
def P11875163259074821490.Spec : Prop :=
  ∀ n, P11875163259074821490.a n = A000227 n

theorem P11875163259074821490.correct : P11875163259074821490.Spec := by
  intro n
  simp only [A000227]

end A000227

/-! ## A000227.P9509270603571566949

`A055876(n+2)-1`
-/

namespace A000227.P9509270603571566949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055876 (n + 2) - 1

end

end A000227.P9509270603571566949

namespace A000227

/-- `A055876(n+2)-1` -/
def P9509270603571566949.Spec : Prop :=
  ∀ n, P9509270603571566949.a n = A000227 n

theorem P9509270603571566949.correct : P9509270603571566949.Spec := by
  intro n
  simp only [A000227, Nat.add_sub_cancel, A000227.P9509270603571566949.a, A000227.P11875163259074821490.a, A055876, A055876.P10520984365672987521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000227

/-! ## A000227.P17924885283380848403

`record[round(e^A025480(n))]`
-/

namespace A000227.P17924885283380848403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A025480 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P17924885283380848403

namespace A000227

/-- `record[round(e^A025480(n))]` -/
def P17924885283380848403.Spec : Prop :=
  ∀ n, P17924885283380848403.a n = A000227 n

end A000227

/-! ## A000227.P3934918736883461686

`record[round(e^A076314(n))]`
-/

namespace A000227.P3934918736883461686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A076314 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P3934918736883461686

namespace A000227

/-- `record[round(e^A076314(n))]` -/
def P3934918736883461686.Spec : Prop :=
  ∀ n, P3934918736883461686.a n = A000227 n

end A000227

/-! ## A000227.P15007977748763920090

`record[round(e^A110657(n))]`
-/

namespace A000227.P15007977748763920090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A110657 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P15007977748763920090

namespace A000227

/-- `record[round(e^A110657(n))]` -/
def P15007977748763920090.Spec : Prop :=
  ∀ n, P15007977748763920090.a n = A000227 n

end A000227

/-! ## A000227.P8107029055287632111

`record[round(e^A255938(n))]`
-/

namespace A000227.P8107029055287632111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A255938 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P8107029055287632111

namespace A000227

/-- `record[round(e^A255938(n))]` -/
def P8107029055287632111.Spec : Prop :=
  ∀ n, P8107029055287632111.a n = A000227 n

end A000227

/-! ## A000227.P12275472226823075341

`record[round(e^A308973(n))]`
-/

namespace A000227.P12275472226823075341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A308973 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P12275472226823075341

namespace A000227

/-- `record[round(e^A308973(n))]` -/
def P12275472226823075341.Spec : Prop :=
  ∀ n, P12275472226823075341.a n = A000227 n

end A000227

/-! ## A000227.P9322495202341706542

`record[round(e^A309064(n))]`
-/

namespace A000227.P9322495202341706542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A309064 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P9322495202341706542

namespace A000227

/-- `record[round(e^A309064(n))]` -/
def P9322495202341706542.Spec : Prop :=
  ∀ n, P9322495202341706542.a n = A000227 n

end A000227

/-! ## A000227.P16149942458196728857

`record[round(e^A309166(n))]`
-/

namespace A000227.P16149942458196728857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 ^ (A309166 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P16149942458196728857

namespace A000227

/-- `record[round(e^A309166(n))]` -/
def P16149942458196728857.Spec : Prop :=
  ∀ n, P16149942458196728857.a n = A000227 n

end A000227

/-! ## A000227.P9401764533678314794

`floor(exp(n)+(n+1)/A005843(n+1))`
-/

namespace A000227.P9401764533678314794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) + ((n + 1 : ℚ) / (A005843 (n + 1) : ℚ) : ℝ)⌋

end

end A000227.P9401764533678314794

namespace A000227

/-- `floor(exp(n)+(n+1)/A005843(n+1))` -/
def P9401764533678314794.Spec : Prop :=
  ∀ n, P9401764533678314794.a n = A000227 n

end A000227

/-! ## A000227.P3779205667820856715

`round(e^n)%(3^(n+1))`
-/

namespace A000227.P3779205667820856715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.exp 1 ^ n)) (3 ^ (n + 1) : ℤ)

end

end A000227.P3779205667820856715

namespace A000227

/-- `round(e^n)%(3^(n+1))` -/
def P3779205667820856715.Spec : Prop :=
  ∀ n, P3779205667820856715.a n = A000227 n

end A000227

/-! ## A000227.P11334022076532483997

`record[Δ[A022765(n+1)]]`
-/

namespace A000227.P11334022076532483997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P11334022076532483997

namespace A000227

/-- `record[Δ[A022765(n+1)]]` -/
def P11334022076532483997.Spec : Prop :=
  ∀ n, P11334022076532483997.a n = A000227 n

end A000227

/-! ## A000227.P10093181907330804903

`record[A022765(n+2)-A022765(n+1)]`
-/

namespace A000227.P10093181907330804903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022765 (n + 2) - A022765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000227.P10093181907330804903

namespace A000227

/-- `record[A022765(n+2)-A022765(n+1)]` -/
def P10093181907330804903.Spec : Prop :=
  ∀ n, P10093181907330804903.a n = A000227 n

end A000227

/-! ## A000227.P2576021452364648320

`floor(exp(n)²/A000149(n))`
-/

namespace A000227.P2576021452364648320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ) ^ 2 / (A000149 n : ℝ)⌋

end

end A000227.P2576021452364648320

namespace A000227

/-- `floor(exp(n)²/A000149(n))` -/
def P2576021452364648320.Spec : Prop :=
  ∀ n, P2576021452364648320.a n = A000227 n

end A000227

/-!
# A000228: Number of hexagonal polyominoes (or hexagonal polyforms, or planar polyhexes) with n cells.

The programs for A000228, there is no canonical definition to state claims against.
-/

/-! ## A000228.P7280967835454452072

`A030226(n+1)+A030225(n+1)`
-/

namespace A000228.P7280967835454452072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030226 (n + 1) + A030225 (n + 1)

end

end A000228.P7280967835454452072

/-! ## A000228.P1161263453137725193

`A006535(n+1)-A030226(n+1)`
-/

namespace A000228.P1161263453137725193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006535 (n + 1) - A030226 (n + 1)

end

end A000228.P1161263453137725193

/-! ## A000228.P17515118422440358900

`(A030225(n+1)+A006535(n+1))/2`
-/

namespace A000228.P17515118422440358900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030225 (n + 1) + A006535 (n + 1) : ℚ) / 2

end

end A000228.P17515118422440358900

/-! ## A000228.P10632034408116940670

`A038144(n+1)+A018190(n+1)`
-/

namespace A000228.P10632034408116940670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038144 (n + 1) + A018190 (n + 1)

end

end A000228.P10632034408116940670

/-! ## A000228.P1780792925646933038

`A070767(n+1)+A070766(n+1)`
-/

namespace A000228.P1780792925646933038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070767 (n + 1) + A070766 (n + 1)

end

end A000228.P1780792925646933038

/-!
# A000229: a(n) is the least number m such that the n-th prime is the least quadratic nonresidue modulo m.

The programs for A000229, there is no canonical definition to state claims against.
-/

/-! ## A000229.P10110018345042158778

`A133435(A043318(n+1))`
-/

namespace A000229.P10110018345042158778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133435 (A043318 (n + 1)).toNat

end

end A000229.P10110018345042158778

/-! ## A000229.P6045663681646150587

`A133435(A044915(n+1))`
-/

namespace A000229.P6045663681646150587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133435 (A044915 (n + 1)).toNat

end

end A000229.P6045663681646150587

/-! ## A000229.P2803286450269739219

`A133435(A055647(n+1))`
-/

namespace A000229.P2803286450269739219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133435 (A055647 (n + 1)).toNat

end

end A000229.P2803286450269739219

/-! ## A000229.P7593057090368107309

`A133435(A055648(n)+1)`
-/

namespace A000229.P7593057090368107309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133435 (A055648 n + 1).toNat

end

end A000229.P7593057090368107309

/-!
# A000230: a(0)=2; for n>=1, a(n) = smallest prime p such that there is a gap of exactly 2n between p and next prime, or -1 if no such prime exists.

The programs for A000230, there is no canonical definition to state claims against.
-/

/-! ## A000230.P5538811655108129455

`A045881(A028310(n))-C(2, C(2, n²))`
-/

namespace A000230.P5538811655108129455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A000230.P5538811655108129455

/-! ## A000230.P785841305030618976

`A045881(A028310(n))-A054977(n)`
-/

namespace A000230.P785841305030618976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat - A054977 n

end

end A000230.P785841305030618976

/-! ## A000230.P2229590416560290907

`A045881(A123108(2*n))-A054977(n)`
-/

namespace A000230.P2229590416560290907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A123108 (2 * n)).toNat - A054977 n

end

end A000230.P2229590416560290907

/-! ## A000230.P10551365943377888138

`A045881(n)-A001221(a(A001221(n)))` with `a(0)=2`
-/

namespace A000230.P10551365943377888138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A045881 n - A001221 (a (A001221 n).toNat).toNat

end

end A000230.P10551365943377888138

/-! ## A000230.P12107150858581038069

`A045881(n)-A001222(a(A001222(n)))` with `a(0)=2`
-/

namespace A000230.P12107150858581038069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A045881 n - A001222 (a (A001222 n).toNat).toNat

end

end A000230.P12107150858581038069

/-! ## A000230.P7117100943846412973

`A045881(A028310(n))-A010050(C(2, n+2))`
-/

namespace A000230.P7117100943846412973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat - A010050 (Nat.choose 2 (n + 2))

end

end A000230.P7117100943846412973

/-! ## A000230.P2922710926672127128

`A174350(A179865(n+1))-floor(acot(n))`
-/

namespace A000230.P2922710926672127128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A000230.P2922710926672127128

/-! ## A000230.P12362159013675245437

`A174350(A179865(n+1))-A000007(n)`
-/

namespace A000230.P12362159013675245437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A000007 n

end

end A000230.P12362159013675245437

/-! ## A000230.P15192186428992584688

`A174350(A179865(n+1))+A178334(n)-1`
-/

namespace A000230.P15192186428992584688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat + (A178334 n - 1)

end

end A000230.P15192186428992584688

/-! ## A000230.P4634329744335562432

`A174350(A179865(n+1))-A134746(2*n)`
-/

namespace A000230.P4634329744335562432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A134746 (2 * n)

end

end A000230.P4634329744335562432

/-! ## A000230.P5432237706687228926

`xor(A000007(2*n), A174350(A179865(n+1)))`
-/

namespace A000230.P5432237706687228926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A174350 (A179865 (n + 1)).toNat)

end

end A000230.P5432237706687228926

/-! ## A000230.P17643790414687973536

`A174350(A179865(n+1))-A301291(2*n)%3`
-/

namespace A000230.P17643790414687973536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - Int.tmod (A301291 (2 * n)) 3

end

end A000230.P17643790414687973536

/-! ## A000230.P18036312564908508875

`A174350(A179865(n+1))+A008683(2*(n+1)²)`
-/

namespace A000230.P18036312564908508875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A000230.P18036312564908508875

/-! ## A000230.P18363782007436532701

`A174350(A179865(n+1))+A123192(A178334(n))`
-/

namespace A000230.P18363782007436532701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat + A123192 (A178334 n).toNat

end

end A000230.P18363782007436532701

/-! ## A000230.P89422074545115863

`A174350(A179865(n+1))-A015549(A003817(n))`
-/

namespace A000230.P89422074545115863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A015549 (A003817 n).toNat

end

end A000230.P89422074545115863

/-! ## A000230.P2630371075321061446

`A174350(A179865(n+1))-A056594(A004273(n))`
-/

namespace A000230.P2630371075321061446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A056594 (A004273 n).toNat

end

end A000230.P2630371075321061446

/-! ## A000230.P1823245447636848234

`A174350(A179865(n+1))-A151933(A000120(n))`
-/

namespace A000230.P1823245447636848234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A151933 (A000120 n).toNat

end

end A000230.P1823245447636848234

/-! ## A000230.P1046390753508570058

`A174350(A179865(n+1))-A151933(A004159(n))`
-/

namespace A000230.P1046390753508570058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A151933 (A004159 n).toNat

end

end A000230.P1046390753508570058

/-! ## A000230.P7896108639849699173

`A174350(A179865(n+1))-A151933(A004525(n))`
-/

namespace A000230.P7896108639849699173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A151933 (A004525 n).toNat

end

end A000230.P7896108639849699173

/-! ## A000230.P9457822887415612482

`A174350(A179865(n+1))-A000035(A000010(n+2))`
-/

namespace A000230.P9457822887415612482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat - A000035 (A000010 (n + 2)).toNat

end

end A000230.P9457822887415612482

/-!
# A000231: Number of inequivalent Boolean functions of n variables under action of complementing group.

The programs for A000231, the canonical program `A000231.P14386365891216662633` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000231 has offset 0).

The definition of A000231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000231.P14386365891216662633

`(2^2^n+(2^n-1)*2^2^(n-1))/2^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000231

/-- `(2^2^n+(2^n-1)*2^2^(n-1))/2^n` -/
def P14386365891216662633.Spec : Prop :=
  ∀ n, P14386365891216662633.a n = (A000231 n : ℝ)

end A000231

/-! ## A000231.P828009359741766948

`A059966(A000079(n))+A016116(A000079(n))`
-/

namespace A000231.P828009359741766948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A000079 n).toNat + A016116 (A000079 n).toNat

end

end A000231.P828009359741766948

namespace A000231

/-- `A059966(A000079(n))+A016116(A000079(n))` -/
def P828009359741766948.Spec : Prop :=
  ∀ n, P828009359741766948.a n = A000231 n

end A000231

/-!
# A000232: Construct a triangle as in A036262. Sequence is one less than the position of the first number larger than 2 in the n-th row (n-th difference).

The programs for A000232, there is no canonical definition to state claims against.
-/

/-! ## A000232.P7606216890039786888

`A036277(n+1)-1`
-/

namespace A000232.P7606216890039786888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036277 (n + 1) - 1

end

end A000232.P7606216890039786888

/-! ## A000232.P13438157060553106446

`A057428(n+1)+A036277(n+1)`
-/

namespace A000232.P13438157060553106446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A036277 (n + 1)

end

end A000232.P13438157060553106446

/-! ## A000232.P15285942136756194139

`A321800(A000377(n))+A036277(n+1)`
-/

namespace A000232.P15285942136756194139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A000377 n).toNat + A036277 (n + 1)

end

end A000232.P15285942136756194139

/-! ## A000232.P5647999785639658420

`A099837(A068822(n+1))+A036277(n+1)`
-/

namespace A000232.P5647999785639658420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A068822 (n + 1)).toNat + A036277 (n + 1)

end

end A000232.P5647999785639658420

/-! ## A000232.P6900412237415369053

`A234046(A231002(n+1))+A036277(n+1)`
-/

namespace A000232.P6900412237415369053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234046 (A231002 (n + 1)).toNat + A036277 (n + 1)

end

end A000232.P6900412237415369053

/-! ## A000232.P9355853562039927261

`A099837(∑{digits}[A002522(n), #])+A036277(n+1)`
-/

namespace A000232.P9355853562039927261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + A036277 (n + 1)

end

end A000232.P9355853562039927261

/-! ## A000232.P1188351514060640148

`A106479(A014963(2*(n+1)))+A036277(n+1)`
-/

namespace A000232.P1188351514060640148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106479 (A014963 (2 * (n + 1))).toNat + A036277 (n + 1)

end

end A000232.P1188351514060640148

/-! ## A000232.P10018254349417406733

`A099837(A130321(n))+A036277(n+1)`
-/

namespace A000232.P10018254349417406733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A130321 n).toNat + A036277 (n + 1)

end

end A000232.P10018254349417406733

/-! ## A000232.P11401492150152711104

`A099837(A160457(n))+A036277(n+1)`
-/

namespace A000232.P11401492150152711104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A160457 n).toNat + A036277 (n + 1)

end

end A000232.P11401492150152711104

/-! ## A000232.P9934278882546819632

`A099837(A002522(n))+A036277(n+1)`
-/

namespace A000232.P9934278882546819632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A002522 n).toNat + A036277 (n + 1)

end

end A000232.P9934278882546819632

/-!
# A000233: Generalized class numbers c_(n,1).

The programs for A000233, there is no canonical definition to state claims against.
-/

/-! ## A000233.P6236747997380639418

`A235605(∑[n+1]+2)`
-/

namespace A000233.P6236747997380639418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000233.P6236747997380639418

/-! ## A000233.P9264222631976437539

`A123108(A243763(n+1)%A085331(n+1))`
-/

namespace A000233.P9264222631976437539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A243763 (n + 1)) (A085331 (n + 1))).toNat

end

end A000233.P9264222631976437539

/-!
# A000234: Partitions into non-integral powers (see Comments for precise definition).

The programs for A000234, there is no canonical definition to state claims against.
-/

/-! ## A000234.P732637138179508590

`∑[∑[A251719(ceil(4^n/3))]]`
-/

namespace A000234.P732637138179508590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 ⌈(4 ^ n : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000234.P732637138179508590

/-! ## A000234.P12671263439587840938

`∑[A055086(A033505(n))]`
-/

namespace A000234.P12671263439587840938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A033505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000234.P12671263439587840938

/-! ## A000234.P8992010529323547104

`∑[A069623(A111567(n))]`
-/

namespace A000234.P8992010529323547104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A111567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000234.P8992010529323547104

/-! ## A000234.P7526921980195055085

`A248170(A121525(n+2))`
-/

namespace A000234.P7526921980195055085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A121525 (n + 2)).toNat

end

end A000234.P7526921980195055085

/-!
# A000235: Number of n-node rooted trees of height 3.

The programs for A000235, there is no canonical definition to state claims against.
-/

/-! ## A000235.P11237403739704003355

`A001383(n+1)-A000041(n)`
-/

namespace A000235.P11237403739704003355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 (n + 1) - A000041 n

end

end A000235.P11237403739704003355

/-! ## A000235.P25826290730957052

`A001383(n+1)-∑[A002865(n)]`
-/

namespace A000235.P25826290730957052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000235.P25826290730957052

/-! ## A000235.P14695833412908486096

`A001383(n+1)-(A000065(n)+1)`
-/

namespace A000235.P14695833412908486096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 (n + 1) - (A000065 n + 1)

end

end A000235.P14695833412908486096

/-! ## A000235.P16264233281731766223

`A001383(n+1)-A035363(2*n)`
-/

namespace A000235.P16264233281731766223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 (n + 1) - A035363 (2 * n)

end

end A000235.P16264233281731766223

/-! ## A000235.P8701510814865172168

`A001384(n+1)-(A000299(n+1)+A000041(n))`
-/

namespace A000235.P8701510814865172168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 (n + 1) - (A000299 (n + 1) + A000041 n)

end

end A000235.P8701510814865172168

/-!
# A000237: Number of mixed Husimi trees with n nodes; or rooted polygonal cacti with bridges.

The programs for A000237, there is no canonical definition to state claims against.
-/

/-! ## A000237.P5918823752434325941

`A230772(A150337(n))`
-/

namespace A000237.P5918823752434325941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A150337 n).toNat

end

end A000237.P5918823752434325941

/-! ## A000237.P3064974876900568614

`round(A100664(n+3)/A100660(n+1))`
-/

namespace A000237.P3064974876900568614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100664 (n + 3) : ℚ) / (A100660 (n + 1) : ℚ))

end

end A000237.P3064974876900568614

/-! ## A000237.P8679183037575683091

`A213242(n+1)-A213251(floor(2^(n-1)))`
-/

namespace A000237.P8679183037575683091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213242 (n + 1) - A213251 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A000237.P8679183037575683091

/-! ## A000237.P17802571192701074068

`A008616(xor(A024352(n+1), A221678(n+1)))`
-/

namespace A000237.P17802571192701074068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A024352 (n + 1)) (A221678 (n + 1))).toNat

end

end A000237.P17802571192701074068

/-!
# A000238: Number of oriented trees with n nodes.

The programs for A000238, there is no canonical definition to state claims against.
-/

/-! ## A000238.P10913539179394249334

`2*A005751(n+1)-A007748(n+1)`
-/

namespace A000238.P10913539179394249334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A007748 (n + 1)

end

end A000238.P10913539179394249334

/-! ## A000238.P10363533713755917315

`A038056(n+1)-A000060(n+1)`
-/

namespace A000238.P10363533713755917315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A000060 (n + 1)

end

end A000238.P10363533713755917315

/-! ## A000238.P1118038262268944737

`A139621(∑[n]+n)`
-/

namespace A000238.P1118038262268944737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139621 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000238.P1118038262268944737

/-! ## A000238.P3802726452300431599

`A350789(∑[n]+n)`
-/

namespace A000238.P3802726452300431599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350789 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000238.P3802726452300431599

/-! ## A000238.P8211466743931489224

`A350914(∑[n]+n)`
-/

namespace A000238.P8211466743931489224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000238.P8211466743931489224

/-! ## A000238.P4803703128376973754

`A335362(∑[n+1])`
-/

namespace A000238.P4803703128376973754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000238.P4803703128376973754

/-!
# A000239: One-half of number of permutations of [n] with exactly one run of adjacent symbols differing by 1.

The programs for A000239, there is no canonical definition to state claims against.
-/

/-! ## A000239.P9182486215162511061

`A000130(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A000239.P9182486215162511061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000130 (n + 1) + a (n - 1)

end

end A000239.P9182486215162511061

/-! ## A000239.P9595571480054676860

`∑[A086856(A238531(n)+n)]`
-/

namespace A000239.P9595571480054676860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A238531 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000239.P9595571480054676860

/-! ## A000239.P11712671838986729676

`A151933(n)+∑[A000130(n+1)]`
-/

namespace A000239.P11712671838986729676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000239.P11712671838986729676

/-! ## A000239.P17745439079024918334

`A209229(n²+2)+∑[A000130(n+1)]`
-/

namespace A000239.P17745439079024918334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000239.P17745439079024918334

/-! ## A000239.P13812862606382666309

`∑[A000130(A060576(n)+A028310(n))]`
-/

namespace A000239.P13812862606382666309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000130 (A060576 n + A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000239.P13812862606382666309

/-! ## A000239.P17831319602274822927

`A010030(A184674(n+1))`
-/

namespace A000239.P17831319602274822927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (A184674 (n + 1)).toNat

end

end A000239.P17831319602274822927

/-!
# A000240: Rencontres numbers: number of permutations of [n] with exactly one fixed point.

The programs for A000240, the canonical program `A000240.P17239223709217716832` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000240 has offset 1).

The definition of A000240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000240.P17239223709217716832

`n*(a(n-1)+a(n-2))+(-1)^n` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000240

/-- `n*(a(n-1)+a(n-2))+(-1)^n` -/
def P17239223709217716832.Spec : Prop :=
  ∀ n, P17239223709217716832.a n = A000240 (n + 1)

theorem P17239223709217716832.correct : P17239223709217716832.Spec := by
  intro n
  simp only [A000240, Nat.add_sub_cancel]

end A000240

/-! ## A000240.P3994341498737467668

`(n+1)*A000166(n)`
-/

namespace A000240.P3994341498737467668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000166 n

end

end A000240.P3994341498737467668

namespace A000240

/-- `(n+1)*A000166(n)` -/
def P3994341498737467668.Spec : Prop :=
  ∀ n, P3994341498737467668.a n = A000240 (n + 1)

end A000240

/-! ## A000240.P5562911945556115460

`A000166(n+1)-(-1)^(n+1)`
-/

namespace A000240.P5562911945556115460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - (-1) ^ (n + 1)

end

end A000240.P5562911945556115460

namespace A000240

/-- `A000166(n+1)-(-1)^(n+1)` -/
def P5562911945556115460.Spec : Prop :=
  ∀ n, P5562911945556115460.a n = A000240 (n + 1)

end A000240

/-! ## A000240.P14035137930589919020

`A000387(n+2)*2/(n+2)`
-/

namespace A000240.P14035137930589919020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000387 (n + 2) * 2 : ℚ) / (n + 2 : ℚ)

end

end A000240.P14035137930589919020

namespace A000240

/-- `A000387(n+2)*2/(n+2)` -/
def P14035137930589919020.Spec : Prop :=
  ∀ n, P14035137930589919020.a n = (A000240 (n + 1) : ℚ)

end A000240

/-! ## A000240.P13781416109915044212

`A000449(n+3)*6/((n+2)*(n+3))`
-/

namespace A000240.P13781416109915044212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000449 (n + 3) * 6 : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A000240.P13781416109915044212

namespace A000240

/-- `A000449(n+3)*6/((n+2)*(n+3))` -/
def P13781416109915044212.Spec : Prop :=
  ∀ n, P13781416109915044212.a n = (A000240 (n + 1) : ℚ)

end A000240

/-! ## A000240.P3811975757679835025

`(n+1)*xor(1, a(n-1))` with `a(0)=1`
-/

namespace A000240.P3811975757679835025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * Nat.xor 1 (a (n - 1))

end

end A000240.P3811975757679835025

namespace A000240

/-- `(n+1)*xor(1, a(n-1))` -/
def P3811975757679835025.Spec : Prop :=
  ∀ n, (P3811975757679835025.a n : ℤ) = A000240 (n + 1)

end A000240

/-! ## A000240.P8202235472129952630

`(n+1)*(a(n-1)+(-1)^n)` with `a(0)=1`
-/

namespace A000240.P8202235472129952630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + (-1) ^ n)

end

end A000240.P8202235472129952630

namespace A000240

/-- `(n+1)*(a(n-1)+(-1)^n)` -/
def P8202235472129952630.Spec : Prop :=
  ∀ n, P8202235472129952630.a n = A000240 (n + 1)

end A000240

/-! ## A000240.P14030457233275882128

`(a(n-1)+(-1)^n)/(n+1)^(-1)` with `a(0)=1`
-/

namespace A000240.P14030457233275882128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + ((-1) ^ n : ℚ)) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A000240.P14030457233275882128

namespace A000240

/-- `(a(n-1)+(-1)^n)/(n+1)^(-1)` -/
def P14030457233275882128.Spec : Prop :=
  ∀ n, P14030457233275882128.a n = (A000240 (n + 1) : ℚ)

end A000240

/-! ## A000240.P12163316339002627136

`A076732(∑[n+1])`
-/

namespace A000240.P12163316339002627136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076732 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000240.P12163316339002627136

namespace A000240

/-- `A076732(∑[n+1])` -/
def P12163316339002627136.Spec : Prop :=
  ∀ n, P12163316339002627136.a n = A000240 (n + 1)

end A000240

/-! ## A000240.P5744736611684149528

`A180188(∑[n]+1)`
-/

namespace A000240.P5744736611684149528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180188 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000240.P5744736611684149528

namespace A000240

/-- `A180188(∑[n]+1)` -/
def P5744736611684149528.Spec : Prop :=
  ∀ n, P5744736611684149528.a n = A000240 (n + 1)

end A000240

/-!
# A000241: Crossing number of complete graph with n nodes.

The programs for A000241, the canonical program `A000241.P6558930274160675944` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000241 has offset 0).

The definition of A000241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000241.P6558930274160675944

`round(((gcd(2, n)-(n+2)²)/8+n)²)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000241

/-- `round(((gcd(2, n)-(n+2)²)/8+n)²)` -/
def P6558930274160675944.Spec : Prop :=
  ∀ n, P6558930274160675944.a n = A000241 n

theorem P6558930274160675944.correct : P6558930274160675944.Spec := by
  intro n
  simp only [A000241]

end A000241

/-! ## A000241.P1203870043944116415

`floor(((ceil((2-n)²/2)-1)/2)²)/4`
-/

namespace A000241.P1203870043944116415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((⌈((2 - (n : ℤ)) ^ 2 : ℚ) / 2⌉ - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 4

end

end A000241.P1203870043944116415

namespace A000241

/-- `floor(((ceil((2-n)²/2)-1)/2)²)/4` -/
def P1203870043944116415.Spec : Prop :=
  ∀ n, P1203870043944116415.a n = (A000241 n : ℚ)

end A000241

/-! ## A000241.P14265883389837111354

`∑[A028724(abs(1-n))]`
-/

namespace A000241.P14265883389837111354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000241.P14265883389837111354

namespace A000241

/-- `∑[A028724(abs(1-n))]` -/
def P14265883389837111354.Spec : Prop :=
  ∀ n, P14265883389837111354.a n = A000241 n

end A000241

/-! ## A000241.P300021647054819613

`∑[A028724(n)]-A028724(n)`
-/

namespace A000241.P300021647054819613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028724 n

end

end A000241.P300021647054819613

namespace A000241

/-- `∑[A028724(n)]-A028724(n)` -/
def P300021647054819613.Spec : Prop :=
  ∀ n, P300021647054819613.a n = A000241 n

end A000241

/-! ## A000241.P6747640048080152860

`A172101(A077169(n)+n)`
-/

namespace A000241.P6747640048080152860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A077169 n + (n : ℤ)).toNat

end

end A000241.P6747640048080152860

namespace A000241

/-- `A172101(A077169(n)+n)` -/
def P6747640048080152860.Spec : Prop :=
  ∀ n, P6747640048080152860.a n = A000241 n

end A000241

/-!
# A000242: 3rd power of rooted tree enumerator; number of linear forests of 3 rooted trees.

The programs for A000242, there is no canonical definition to state claims against.
-/

/-! ## A000242.P15814824004692395933

`A339067(∑[n+2]+4)`
-/

namespace A000242.P15814824004692395933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000242.P15814824004692395933

/-! ## A000242.P14037272110863778467

`A339067(A167614(n+1))+C(n%2, 2)`
-/

namespace A000242.P14037272110863778467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 1)).toNat + (Nat.choose (n % 2) 2 : ℤ)

end

end A000242.P14037272110863778467

/-! ## A000242.P17586667982972855

`abs(A339067(A167614(n+1))/A033999(n))`
-/

namespace A000242.P17586667982972855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A339067 (A167614 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)|

end

end A000242.P17586667982972855

/-! ## A000242.P5479123384204144426

`A339067(A167614(n+1))+A055029(4*n)`
-/

namespace A000242.P5479123384204144426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 1)).toNat + A055029 (4 * n)

end

end A000242.P5479123384204144426

/-! ## A000242.P3337925334927886811

`A339067(A167614(n+1))+char[A063889(n+1)]`
-/

namespace A000242.P3337925334927886811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063889 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000242.P3337925334927886811

/-! ## A000242.P6004205462766576665

`A014963(A254730(n))*A339067(A167614(n+1))`
-/

namespace A000242.P6004205462766576665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A254730 n).toNat * A339067 (A167614 (n + 1)).toNat

end

end A000242.P6004205462766576665

/-! ## A000242.P15046953127709753403

`A339067(A167614(n+1))+A063918(A000040(n+1))`
-/

namespace A000242.P15046953127709753403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 1)).toNat + A063918 (A000040 (n + 1)).toNat

end

end A000242.P15046953127709753403

/-! ## A000242.P4193882851321437485

`A339067(A167614(n+1))%A301969(n+1)`
-/

namespace A000242.P4193882851321437485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339067 (A167614 (n + 1)).toNat) (A301969 (n + 1))

end

end A000242.P4193882851321437485

/-! ## A000242.P5943990665767578298

`A014963(A000217(n+7))*A339067(A167614(n+1))`
-/

namespace A000242.P5943990665767578298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 7)).toNat * A339067 (A167614 (n + 1)).toNat

end

end A000242.P5943990665767578298

/-!
# A000243: Number of trees with n nodes, 2 of which are labeled.

The programs for A000243, there is no canonical definition to state claims against.
-/

/-! ## A000243.P2414789491829735769

`A000107(n+2)-A000081(n+2)`
-/

namespace A000243.P2414789491829735769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 (n + 2) - A000081 (n + 2)

end

end A000243.P2414789491829735769

/-! ## A000243.P5139450968748022829

`A000106(n+2)+A304068(n+2)`
-/

namespace A000243.P5139450968748022829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000106 (n + 2) + A304068 (n + 2)

end

end A000243.P5139450968748022829

/-! ## A000243.P4035660477310887377

`∑[A255705(n+1)-Δ[A000081(n+1)]]`
-/

namespace A000243.P4035660477310887377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255705 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000243.P4035660477310887377

/-! ## A000243.P11827345288804478050

`A000107(n+2)-record[A033185(n+1)]`
-/

namespace A000243.P11827345288804478050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000243.P11827345288804478050

/-! ## A000243.P16849339939907914545

`A000107(n+2)-record[A106234(n+1)]`
-/

namespace A000243.P16849339939907914545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000243.P16849339939907914545

/-!
# A000244: Powers of 3: a(n) = 3^n.

The programs for A000244, the canonical program `A000244.P17162167222172810417` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000244 has offset 0).

The definition of A000244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n` (program `A000244.P17162167222172810417`, by `A000244.P17162167222172810417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000244.P17162167222172810417

`3^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000244

/-- `3^n` -/
def P17162167222172810417.Spec : Prop :=
  ∀ n, (P17162167222172810417.a n : ℤ) = A000244 n

theorem P17162167222172810417.correct : P17162167222172810417.Spec := by
  intro n
  simp only [A000244]

end A000244

/-!
# A000245: a(n) = 3*(2*n)!/((n+2)!*(n-1)!).

The programs for A000245, the canonical program `A000245.P15461013057778681831` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000245 has offset 0).

The definition of A000245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000245.P15461013057778681831

`A000108(n+1)-A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000245

/-- `A000108(n+1)-A000108(n)` -/
def P15461013057778681831.Spec : Prop :=
  ∀ n, P15461013057778681831.a n = A000245 n

theorem P15461013057778681831.correct : P15461013057778681831.Spec := by
  intro n
  simp only [A000245]

end A000245

/-! ## A000245.P15987414641312105103

`n*A007054(n)/2`
-/

namespace A000245.P15987414641312105103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007054 n : ℚ) / 2

end

end A000245.P15987414641312105103

namespace A000245

/-- `n*A007054(n)/2` -/
def P15987414641312105103.Spec : Prop :=
  ∀ n, P15987414641312105103.a n = (A000245 n : ℚ)

end A000245

/-! ## A000245.P10153937861163429277

`Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A000245.P10153937861163429277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P10153937861163429277

namespace A000245

/-- `Δ[(4-6/(n+1))*a(n-1)]` -/
def P10153937861163429277.Spec : Prop :=
  ∀ n, P10153937861163429277.a n = (A000245 n : ℚ)

end A000245

/-! ## A000245.P15267245929974036601

`Δ[A000108(n)]`
-/

namespace A000245.P15267245929974036601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P15267245929974036601

namespace A000245

/-- `Δ[A000108(n)]` -/
def P15267245929974036601.Spec : Prop :=
  ∀ n, P15267245929974036601.a n = A000245 n

theorem P15267245929974036601.correct : P15267245929974036601.Spec := by
  intro n
  simp only [A000245, Nat.add_sub_cancel, A000245.P15267245929974036601.f1, A000245.P15267245929974036601.a, A000245.P15461013057778681831.a, SequenceMachineLib.memo_apply]

end A000245

/-! ## A000245.P10009052635157879047

`Δ[A120304(n)]`
-/

namespace A000245.P10009052635157879047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P10009052635157879047

namespace A000245

/-- `Δ[A120304(n)]` -/
def P10009052635157879047.Spec : Prop :=
  ∀ n, P10009052635157879047.a n = A000245 n

theorem P10009052635157879047.correct : P10009052635157879047.Spec := by
  intro n
  simp only [A000245, Nat.add_sub_cancel, A000245.P10009052635157879047.f1, A000245.P10009052635157879047.a, A000245.P15461013057778681831.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000245

/-! ## A000245.P1303243062115851023

`Δ[abs(A168491(n))]`
-/

namespace A000245.P1303243062115851023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P1303243062115851023

namespace A000245

/-- `Δ[abs(A168491(n))]` -/
def P1303243062115851023.Spec : Prop :=
  ∀ n, P1303243062115851023.a n = A000245 n

end A000245

/-! ## A000245.P9672333655268730565

`record[Δ[A208355(n)]]`
-/

namespace A000245.P9672333655268730565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000245.P9672333655268730565

namespace A000245

/-- `record[Δ[A208355(n)]]` -/
def P9672333655268730565.Spec : Prop :=
  ∀ n, P9672333655268730565.a n = A000245 n

end A000245

/-! ## A000245.P11034546971168003881

`abs(A115142(n+2))`
-/

namespace A000245.P11034546971168003881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115142 (n + 2)|

end

end A000245.P11034546971168003881

namespace A000245

/-- `abs(A115142(n+2))` -/
def P11034546971168003881.Spec : Prop :=
  ∀ n, P11034546971168003881.a n = A000245 n

end A000245

/-! ## A000245.P15683928512126948009

`∑[A071738(n)]-1`
-/

namespace A000245.P15683928512126948009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000245.P15683928512126948009

namespace A000245

/-- `∑[A071738(n)]-1` -/
def P15683928512126948009.Spec : Prop :=
  ∀ n, P15683928512126948009.a n = A000245 n

end A000245

/-! ## A000245.P17953429288650663044

`Δ[A120588(n+1)]`
-/

namespace A000245.P17953429288650663044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P17953429288650663044

namespace A000245

/-- `Δ[A120588(n+1)]` -/
def P17953429288650663044.Spec : Prop :=
  ∀ n, P17953429288650663044.a n = A000245 n

end A000245

/-! ## A000245.P11644588459235891132

`Δ[A246604(n)]+1`
-/

namespace A000245.P11644588459235891132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A000245.P11644588459235891132

namespace A000245

/-- `Δ[A246604(n)]+1` -/
def P11644588459235891132.Spec : Prop :=
  ∀ n, P11644588459235891132.a n = A000245 n

theorem P11644588459235891132.correct : P11644588459235891132.Spec := by
  intro n
  simp only [A000245, Nat.add_sub_cancel, A000245.P11644588459235891132.f1, A000245.P11644588459235891132.a, A000245.P15461013057778681831.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000245

/-! ## A000245.P1787936639736783968

`Δ[A028303(2*n)]`
-/

namespace A000245.P1787936639736783968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P1787936639736783968

namespace A000245

/-- `Δ[A028303(2*n)]` -/
def P1787936639736783968.Spec : Prop :=
  ∀ n, P1787936639736783968.a n = A000245 n

end A000245

/-! ## A000245.P13249655322252785655

`Δ[A028304(2*n)]`
-/

namespace A000245.P13249655322252785655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P13249655322252785655

namespace A000245

/-- `Δ[A028304(2*n)]` -/
def P13249655322252785655.Spec : Prop :=
  ∀ n, P13249655322252785655.a n = A000245 n

end A000245

/-! ## A000245.P6905669595228037522

`Δ[A126120(2*n)]`
-/

namespace A000245.P6905669595228037522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P6905669595228037522

namespace A000245

/-- `Δ[A126120(2*n)]` -/
def P6905669595228037522.Spec : Prop :=
  ∀ n, P6905669595228037522.a n = A000245 n

end A000245

/-! ## A000245.P14053533119474865879

`Δ[A126324(2*n)]`
-/

namespace A000245.P14053533119474865879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P14053533119474865879

namespace A000245

/-- `Δ[A126324(2*n)]` -/
def P14053533119474865879.Spec : Prop :=
  ∀ n, P14053533119474865879.a n = A000245 n

end A000245

/-! ## A000245.P11742569033757492045

`Δ[A208355(2*n)]`
-/

namespace A000245.P11742569033757492045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P11742569033757492045

namespace A000245

/-- `Δ[A208355(2*n)]` -/
def P11742569033757492045.Spec : Prop :=
  ∀ n, P11742569033757492045.a n = A000245 n

end A000245

/-! ## A000245.P11210757195385301220

`Δ[A329687(3*n)]`
-/

namespace A000245.P11210757195385301220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P11210757195385301220

namespace A000245

/-- `Δ[A329687(3*n)]` -/
def P11210757195385301220.Spec : Prop :=
  ∀ n, P11210757195385301220.a n = A000245 n

end A000245

/-! ## A000245.P14495361219815794993

`Δ[A089408(Δ[n²])]`
-/

namespace A000245.P14495361219815794993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P14495361219815794993

namespace A000245

/-- `Δ[A089408(Δ[n²])]` -/
def P14495361219815794993.Spec : Prop :=
  ∀ n, P14495361219815794993.a n = A000245 n

end A000245

/-! ## A000245.P16624848900831512635

`Δ[A097331(Δ[n²])]`
-/

namespace A000245.P16624848900831512635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P16624848900831512635

namespace A000245

/-- `Δ[A097331(Δ[n²])]` -/
def P16624848900831512635.Spec : Prop :=
  ∀ n, P16624848900831512635.a n = A000245 n

end A000245

/-! ## A000245.P2502940478670762417

`Δ[abs(A115140(n+1))]`
-/

namespace A000245.P2502940478670762417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000245.P2502940478670762417

namespace A000245

/-- `Δ[abs(A115140(n+1))]` -/
def P2502940478670762417.Spec : Prop :=
  ∀ n, P2502940478670762417.a n = A000245 n

end A000245

/-!
# A000246: Number of permutations in the symmetric group S_n that have odd order.

The programs for A000246, the canonical program `A000246.P9834037837237198673` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000246 has offset 0).

The definition of A000246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000246.P9834037837237198673

`a(n-1)*(n+n%2-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000246

/-- `a(n-1)*(n+n%2-1)` -/
def P9834037837237198673.Spec : Prop :=
  ∀ n, P9834037837237198673.a n = A000246 n

theorem P9834037837237198673.correct : P9834037837237198673.Spec := by
  intro n
  simp only [A000246]

end A000246

/-! ## A000246.P13920634419132696099

`a(n-1)+(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A000246.P13920634419132696099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * ((n : ℤ) - 2) * a (n - 2)

end

end A000246.P13920634419132696099

namespace A000246

/-- `a(n-1)+(n-1)*(n-2)*a(n-2)` -/
def P13920634419132696099.Spec : Prop :=
  ∀ n, P13920634419132696099.a n = A000246 n

end A000246

/-! ## A000246.P5444827988158981026

`n!/2^n*A063886(n)`
-/

namespace A000246.P5444827988158981026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 ^ n : ℚ) * (A063886 n : ℚ)

end

end A000246.P5444827988158981026

namespace A000246

/-- `n!/2^n*A063886(n)` -/
def P5444827988158981026.Spec : Prop :=
  ∀ n, P5444827988158981026.a n = (A000246 n : ℚ)

end A000246

/-! ## A000246.P9579656675547347107

`∏[abs(or(1, -n))]`
-/

namespace A000246.P9579656675547347107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000246.P9579656675547347107

namespace A000246

/-- `∏[abs(or(1, -n))]` -/
def P9579656675547347107.Spec : Prop :=
  ∀ n, P9579656675547347107.a n = A000246 n

end A000246

/-! ## A000246.P15594300265249034589

`∏[or(1, abs(1-n))]`
-/

namespace A000246.P15594300265249034589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000246.P15594300265249034589

namespace A000246

/-- `∏[or(1, abs(1-n))]` -/
def P15594300265249034589.Spec : Prop :=
  ∀ n, P15594300265249034589.a n = A000246 n

end A000246

/-! ## A000246.P11378061572082499616

`-∏[or(1, n-1)]`
-/

namespace A000246.P11378061572082499616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000246.P11378061572082499616

namespace A000246

/-- `-∏[or(1, n-1)]` -/
def P11378061572082499616.Spec : Prop :=
  ∀ n, P11378061572082499616.a n = A000246 n

end A000246

/-! ## A000246.P7624993260188615121

`-∏[-or(1, -n)]`
-/

namespace A000246.P7624993260188615121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000246.P7624993260188615121

namespace A000246

/-- `-∏[-or(1, -n)]` -/
def P7624993260188615121.Spec : Prop :=
  ∀ n, P7624993260188615121.a n = A000246 n

end A000246

/-! ## A000246.P6047016958408467952

`∏[(1-n)%2+n]`
-/

namespace A000246.P6047016958408467952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000246.P6047016958408467952

namespace A000246

/-- `∏[(1-n)%2+n]` -/
def P6047016958408467952.Spec : Prop :=
  ∀ n, P6047016958408467952.a n = A000246 n

end A000246

/-! ## A000246.P10759350059800706753

`∏[n-(n-1)%2]`
-/

namespace A000246.P10759350059800706753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000246.P10759350059800706753

namespace A000246

/-- `∏[n-(n-1)%2]` -/
def P10759350059800706753.Spec : Prop :=
  ∀ n, P10759350059800706753.a n = A000246 n

end A000246

/-! ## A000246.P500738707835974793

`∏[abs(char[2*n]-n)]`
-/

namespace A000246.P500738707835974793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000246.P500738707835974793

namespace A000246

/-- `∏[abs(char[2*n]-n)]` -/
def P500738707835974793.Spec : Prop :=
  ∀ n, P500738707835974793.a n = A000246 n

end A000246

/-!
# A000247: a(n) = 2^n - n - 2.

The programs for A000247, the canonical program `A000247.P12692172919708458481` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000247 has offset 2).

The definition of A000247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)-(n+2)-2` (program `A000247.P12692172919708458481`, by `A000247.P12692172919708458481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000247.P12692172919708458481

`2^(n+2)-(n+2)-2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000247

/-- `2^(n+2)-(n+2)-2` -/
def P12692172919708458481.Spec : Prop :=
  ∀ n, P12692172919708458481.a n = A000247 (n + 2)

theorem P12692172919708458481.correct : P12692172919708458481.Spec := by
  intro n
  simp only [A000247, Nat.add_sub_cancel]

end A000247

/-! ## A000247.P2259369754122400490

`record[floor(2^(n-2)-n)]`
-/

namespace A000247.P2259369754122400490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000247.P2259369754122400490

namespace A000247

/-- `record[floor(2^(n-2)-n)]` -/
def P2259369754122400490.Spec : Prop :=
  ∀ n, P2259369754122400490.a n = A000247 (n + 2)

end A000247

/-! ## A000247.P9749312593054031013

`round(record[2^(n-2)-n])`
-/

namespace A000247.P9749312593054031013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A000247.P9749312593054031013

namespace A000247

/-- `round(record[2^(n-2)-n])` -/
def P9749312593054031013.Spec : Prop :=
  ∀ n, P9749312593054031013.a n = A000247 (n + 2)

end A000247

/-! ## A000247.P9867951893619210114

`∑[ogf((3x-2x^2)/(1-3x+2x^2))]`
-/

namespace A000247.P9867951893619210114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P9867951893619210114

namespace A000247

/-- `∑[ogf((3x-2x^2)/(1-3x+2x^2))]` -/
def P9867951893619210114.Spec : Prop :=
  ∀ n, P9867951893619210114.a n = A000247 (n + 2)

end A000247

/-! ## A000247.P10953075569101697570

`ogf((3x-2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A000247.P10953075569101697570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -4, 5, -2] n

end

end A000247.P10953075569101697570

namespace A000247

/-- `ogf((3x-2x^2)/(1-4x+5x^2-2x^3))` -/
def P10953075569101697570.Spec : Prop :=
  ∀ n, P10953075569101697570.a n = A000247 (n + 2)

end A000247

/-! ## A000247.P18150128831425823475

`∑[or(3, 2*a(n-1))]` with `a(0)=0`
-/

namespace A000247.P18150128831425823475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor 3 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P18150128831425823475

namespace A000247

/-- `∑[or(3, 2*a(n-1))]` -/
def P18150128831425823475.Spec : Prop :=
  ∀ n, (P18150128831425823475.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P17352282867726431403

`∑[2*a(n-1)+1]` with `a(0)=0, a(1)=3`
-/

namespace A000247.P17352282867726431403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P17352282867726431403

namespace A000247

/-- `∑[2*a(n-1)+1]` -/
def P17352282867726431403.Spec : Prop :=
  ∀ n, (P17352282867726431403.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P6116875819757372209

`∑[lcm(2, a(n-1))+1]` with `a(0)=0, a(1)=3`
-/

namespace A000247.P6116875819757372209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P6116875819757372209

namespace A000247

/-- `∑[lcm(2, a(n-1))+1]` -/
def P6116875819757372209.Spec : Prop :=
  ∀ n, (P6116875819757372209.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P5975294400415278304

`∑[xor(1, 2*a(n-1))]` with `a(0)=0, a(1)=3`
-/

namespace A000247.P5975294400415278304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P5975294400415278304

namespace A000247

/-- `∑[xor(1, 2*a(n-1))]` -/
def P5975294400415278304.Spec : Prop :=
  ∀ n, (P5975294400415278304.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P12259756912395032531

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A000247.P12259756912395032531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P12259756912395032531

namespace A000247

/-- `∑[∑[2*a(n-1)]]` -/
def P12259756912395032531.Spec : Prop :=
  ∀ n, (P12259756912395032531.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P15855866970226388481

`abs(2*a(n-1)+n+2)` with `a(0)=0`
-/

namespace A000247.P15855866970226388481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (n + 2)

end

end A000247.P15855866970226388481

namespace A000247

/-- `abs(2*a(n-1)+n+2)` -/
def P15855866970226388481.Spec : Prop :=
  ∀ n, (P15855866970226388481.a n : ℤ) = A000247 (n + 2)

theorem P15855866970226388481.correct : P15855866970226388481.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P15855866970226388481.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P15855866970226388481.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P308443203290859983

`floor(2*(a(n-1)+1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000247.P308443203290859983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + 1) + n

end

end A000247.P308443203290859983

namespace A000247

/-- `floor(2*(a(n-1)+1)+n)` -/
def P308443203290859983.Spec : Prop :=
  ∀ n, (P308443203290859983.a n : ℤ) = A000247 (n + 2)

theorem P308443203290859983.correct : P308443203290859983.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P308443203290859983.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P308443203290859983.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P17201052180637110014

`ceil(2*a(n-1)+n+2)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000247.P17201052180637110014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (n + 2)

end

end A000247.P17201052180637110014

namespace A000247

/-- `ceil(2*a(n-1)+n+2)` -/
def P17201052180637110014.Spec : Prop :=
  ∀ n, (P17201052180637110014.a n : ℤ) = A000247 (n + 2)

theorem P17201052180637110014.correct : P17201052180637110014.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P17201052180637110014.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P17201052180637110014.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P4165988824686977807

`round(2*a(n-1)+n+2)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000247.P4165988824686977807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (n + 2)

end

end A000247.P4165988824686977807

namespace A000247

/-- `round(2*a(n-1)+n+2)` -/
def P4165988824686977807.Spec : Prop :=
  ∀ n, (P4165988824686977807.a n : ℤ) = A000247 (n + 2)

theorem P4165988824686977807.correct : P4165988824686977807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P4165988824686977807.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P4165988824686977807.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P12957818985286896088

`xor(∑[2^(n+1)]+1, n+3)`
-/

namespace A000247.P12957818985286896088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (n + 3)

end

end A000247.P12957818985286896088

namespace A000247

/-- `xor(∑[2^(n+1)]+1, n+3)` -/
def P12957818985286896088.Spec : Prop :=
  ∀ n, (P12957818985286896088.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P9068598914455949296

`2*(a(n-1)+n/2+1)` with `a(0)=0`
-/

namespace A000247.P9068598914455949296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + ((n : ℚ) / 2 + 1))

end

end A000247.P9068598914455949296

namespace A000247

/-- `2*(a(n-1)+n/2+1)` -/
def P9068598914455949296.Spec : Prop :=
  ∀ n, P9068598914455949296.a n = (A000247 (n + 2) : ℚ)

theorem P9068598914455949296.correct : P9068598914455949296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P9068598914455949296.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P9068598914455949296.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P3497944590612836169

`∑[or(a(n-1)+3, a(n-1))]` with `a(0)=0`
-/

namespace A000247.P3497944590612836169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor (f1 (n - 1) + 3) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P3497944590612836169

namespace A000247

/-- `∑[or(a(n-1)+3, a(n-1))]` -/
def P3497944590612836169.Spec : Prop :=
  ∀ n, (P3497944590612836169.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P4329027901670300039

`floor(n-(2*(1-a(n-1))-4))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000247.P4329027901670300039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (2 * (1 - a (n - 1)) - 4)

end

end A000247.P4329027901670300039

namespace A000247

/-- `floor(n-(2*(1-a(n-1))-4))` -/
def P4329027901670300039.Spec : Prop :=
  ∀ n, P4329027901670300039.a n = A000247 (n + 2)

theorem P4329027901670300039.correct : P4329027901670300039.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P4329027901670300039.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P4329027901670300039.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-! ## A000247.P4784285043063099919

`∑[a(n-1)+a(n-1)+1]` with `a(0)=0, a(1)=3`
-/

namespace A000247.P4784285043063099919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000247.P4784285043063099919

namespace A000247

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P4784285043063099919.Spec : Prop :=
  ∀ n, (P4784285043063099919.a n : ℤ) = A000247 (n + 2)

end A000247

/-! ## A000247.P2217390623526381607

`2*(2-((2-n)/2-a(n-1)))` with `a(0)=0`
-/

namespace A000247.P2217390623526381607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 - ((2 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A000247.P2217390623526381607

namespace A000247

/-- `2*(2-((2-n)/2-a(n-1)))` -/
def P2217390623526381607.Spec : Prop :=
  ∀ n, P2217390623526381607.a n = (A000247 (n + 2) : ℚ)

theorem P2217390623526381607.correct : P2217390623526381607.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000247, Nat.add_sub_cancel, A000247.P2217390623526381607.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000247, Nat.add_sub_cancel, A000247.P2217390623526381607.a, A000247.P12692172919708458481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000247

/-!
# A000248: Expansion of e.g.f. exp(x*exp(x)).

The programs for A000248, there is no canonical definition to state claims against.
-/

/-! ## A000248.P307307995857468197

`A116071(∑[n])`
-/

namespace A000248.P307307995857468197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000248.P307307995857468197

/-! ## A000248.P15382892975794528858

`A235596(n+1)+1`
-/

namespace A000248.P15382892975794528858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235596 (n + 1) + 1

end

end A000248.P15382892975794528858

/-! ## A000248.P4063407756959847803

`A145460(∑[n+2]-1)`
-/

namespace A000248.P4063407756959847803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000248.P4063407756959847803

/-! ## A000248.P1196849912813880802

`A143398(A133263(n)-1)`
-/

namespace A000248.P1196849912813880802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A133263 n - 1).toNat

end

end A000248.P1196849912813880802

/-! ## A000248.P8791619874289249865

`A009565(n)+A009121(n)`
-/

namespace A000248.P8791619874289249865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009565 n + A009121 n

end

end A000248.P8791619874289249865

/-! ## A000248.P1117505026588852035

`A143398(A238531(n+1)-1)`
-/

namespace A000248.P1117505026588852035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A238531 (n + 1) - 1).toNat

end

end A000248.P1117505026588852035

/-! ## A000248.P10541345788804918695

`or(char[1], A145460(A034856(n+1)))`
-/

namespace A000248.P10541345788804918695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145460 (A034856 (n + 1)).toNat)

end

end A000248.P10541345788804918695

/-! ## A000248.P4088170410532882027

`A143398(A260196(n)+A133263(n))`
-/

namespace A000248.P4088170410532882027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A260196 n + A133263 n).toNat

end

end A000248.P4088170410532882027

/-! ## A000248.P17861677969829057507

`gcd(A145460(A034856(n+1)), A151933(n))`
-/

namespace A000248.P17861677969829057507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145460 (A034856 (n + 1)).toNat) (A151933 n)

end

end A000248.P17861677969829057507

/-! ## A000248.P10578630238225844575

`A145460(A034856(n+1))+char[A247258(n+1)]`
-/

namespace A000248.P10578630238225844575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247258 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000248.P10578630238225844575

/-!
# A000249: Nearest integer to modified Bessel function K_n(5).

The programs for A000249, there is no canonical definition to state claims against.
-/

/-! ## A000249.P5757416875298264170

`A341972(A357904(n))-1`
-/

namespace A000249.P5757416875298264170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341972 ((A357904 n).toNat + 10) - 1

end

end A000249.P5757416875298264170

/-! ## A000249.P1607937444712968565

`A085861(or(10, A306347(n)))`
-/

namespace A000249.P1607937444712968565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (Int.lor 10 (A306347 n)).toNat

end

end A000249.P1607937444712968565

/-! ## A000249.P12945411122909165023

`round(A173466(n+1)/38)`
-/

namespace A000249.P12945411122909165023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173466 (n + 1) : ℚ) / 38)

end

end A000249.P12945411122909165023

/-! ## A000249.P13568358547795721987

`∑[ceil(A022564(n+1)/13)]`
-/

namespace A000249.P13568358547795721987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022564 (n + 1) : ℚ) / 13⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000249.P13568358547795721987

/-! ## A000249.P12333926072528251959

`A320313(A333882(n))`
-/

namespace A000249.P12333926072528251959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A333882 n).toNat

end

end A000249.P12333926072528251959

/-!
# A000250: Number of symmetric reflexive relations on n nodes: (1/2)*A000666.

The programs for A000250, there is no canonical definition to state claims against.
-/

/-! ## A000250.P8161456637022713618

`A000666(n+1)/2`
-/

namespace A000250.P8161456637022713618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000666 (n + 1) : ℚ) / 2

end

end A000250.P8161456637022713618

/-! ## A000250.P10542772665630119741

`Δ[∑[A000666(n)]/2]`
-/

namespace A000250.P10542772665630119741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000666 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000250.P10542772665630119741

/-! ## A000250.P2943377690643232157

`Δ[∑[∑[A322700(n)]]/2]`
-/

namespace A000250.P2943377690643232157
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000250.P2943377690643232157

/-! ## A000250.P2070928494064284088

`record[ratio[A000666(A152271(n))]]`
-/

namespace A000250.P2070928494064284088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000666 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000250.P2070928494064284088

/-! ## A000250.P2842546653895984436

`record[A000666(A342461(n))/2]`
-/

namespace A000250.P2842546653895984436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000666 (A342461 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000250.P2842546653895984436

/-!
# A000251: Number of trees of diameter 6.

The programs for A000251, there is no canonical definition to state claims against.
-/

/-! ## A000251.P5759408673343583998

`A034853(∑[n+3]+n+14)`
-/

namespace A000251.P5759408673343583998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 14))

end

end A000251.P5759408673343583998

/-! ## A000251.P4168504238016963073

`A184642(3*n)-A333806(A362478(n))`
-/

namespace A000251.P4168504238016963073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184642 (3 * n) - A333806 (A362478 n).toNat

end

end A000251.P4168504238016963073

/-! ## A000251.P13754898662825754751

`∑[A246148(n)]-A306433(A237583(n+1))`
-/

namespace A000251.P13754898662825754751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A306433 (A237583 (n + 1)).toNat

end

end A000251.P13754898662825754751

/-!
# A000252: Number of invertible 2 X 2 matrices mod n.

The programs for A000252, the canonical program `A000252.P10509989210323719014` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000252 has offset 1).

The definition of A000252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000252.P10509989210323719014

`A000056(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A000252

/-- `A000056(n+1)*A000010(n+1)` -/
def P10509989210323719014.Spec : Prop :=
  ∀ n, P10509989210323719014.a n = A000252 (n + 1)

theorem P10509989210323719014.correct : P10509989210323719014.Spec := by
  intro n
  simp only [A000252, Nat.add_sub_cancel]

end A000252

/-! ## A000252.P7674099946341063114

`A002618(n+1)*A007434(n+1)`
-/

namespace A000252.P7674099946341063114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A007434 (n + 1)

end

end A000252.P7674099946341063114

namespace A000252

/-- `A002618(n+1)*A007434(n+1)` -/
def P7674099946341063114.Spec : Prop :=
  ∀ n, P7674099946341063114.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P2796574356046418934

`A000082(n+1)*A127473(n+1)`
-/

namespace A000252.P2796574356046418934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A127473 (n + 1)

end

end A000252.P2796574356046418934

namespace A000252

/-- `A000082(n+1)*A127473(n+1)` -/
def P2796574356046418934.Spec : Prop :=
  ∀ n, P2796574356046418934.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P17769652178541643207

`A062570(n+1)*A065430(n+1)`
-/

namespace A000252.P17769652178541643207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A065430 (n + 1)

end

end A000252.P17769652178541643207

namespace A000252

/-- `A062570(n+1)*A065430(n+1)` -/
def P17769652178541643207.Spec : Prop :=
  ∀ n, P17769652178541643207.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P13394957062106363415

`A070732(n+1)*A082953(n+1)`
-/

namespace A000252.P13394957062106363415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070732 (n + 1) * A082953 (n + 1)

end

end A000252.P13394957062106363415

namespace A000252

/-- `A070732(n+1)*A082953(n+1)` -/
def P13394957062106363415.Spec : Prop :=
  ∀ n, P13394957062106363415.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P2455089331633069020

`A001615(n+1)*A327570(n+1)`
-/

namespace A000252.P2455089331633069020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A327570 (n + 1)

end

end A000252.P2455089331633069020

namespace A000252

/-- `A001615(n+1)*A327570(n+1)` -/
def P2455089331633069020.Spec : Prop :=
  ∀ n, P2455089331633069020.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P16324795375068235257

`A070943(n+1)/A062354(n+1)`
-/

namespace A000252.P16324795375068235257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070943 (n + 1) : ℚ) / (A062354 (n + 1) : ℚ)

end

end A000252.P16324795375068235257

namespace A000252

/-- `A070943(n+1)/A062354(n+1)` -/
def P16324795375068235257.Spec : Prop :=
  ∀ n, P16324795375068235257.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P10266666172796651820

`A064767(n+1)/A115224(n+1)`
-/

namespace A000252.P10266666172796651820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ)

end

end A000252.P10266666172796651820

namespace A000252

/-- `A064767(n+1)/A115224(n+1)` -/
def P10266666172796651820.Spec : Prop :=
  ∀ n, P10266666172796651820.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P5215908653386674357

`A000010(n+1)²*A000082(n+1)`
-/

namespace A000252.P5215908653386674357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * A000082 (n + 1)

end

end A000252.P5215908653386674357

namespace A000252

/-- `A000010(n+1)²*A000082(n+1)` -/
def P5215908653386674357.Spec : Prop :=
  ∀ n, P5215908653386674357.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P16726113642141526177

`A000056(n+1)²/A000082(n+1)`
-/

namespace A000252.P16726113642141526177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) ^ 2 : ℚ) / (A000082 (n + 1) : ℚ)

end

end A000252.P16726113642141526177

namespace A000252

/-- `A000056(n+1)²/A000082(n+1)` -/
def P16726113642141526177.Spec : Prop :=
  ∀ n, P16726113642141526177.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P8567334394606071060

`(A109606(n+1)+1)*A000056(n+1)`
-/

namespace A000252.P8567334394606071060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A000056 (n + 1)

end

end A000252.P8567334394606071060

namespace A000252

/-- `(A109606(n+1)+1)*A000056(n+1)` -/
def P8567334394606071060.Spec : Prop :=
  ∀ n, P8567334394606071060.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P15762700345393634920

`(A039649(n+1)-1)*A000056(n+1)`
-/

namespace A000252.P15762700345393634920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A000056 (n + 1)

end

end A000252.P15762700345393634920

namespace A000252

/-- `(A039649(n+1)-1)*A000056(n+1)` -/
def P15762700345393634920.Spec : Prop :=
  ∀ n, P15762700345393634920.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P16121939323619949108

`A000010(n+1)*A001615(n+1)*A002618(n+1)`
-/

namespace A000252.P16121939323619949108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001615 (n + 1) * A002618 (n + 1)

end

end A000252.P16121939323619949108

namespace A000252

/-- `A000010(n+1)*A001615(n+1)*A002618(n+1)` -/
def P16121939323619949108.Spec : Prop :=
  ∀ n, P16121939323619949108.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P3754046896021119152

`A000010(n+1)*A062570(n+1)*A070732(n+1)`
-/

namespace A000252.P3754046896021119152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A062570 (n + 1) * A070732 (n + 1)

end

end A000252.P3754046896021119152

namespace A000252

/-- `A000010(n+1)*A062570(n+1)*A070732(n+1)` -/
def P3754046896021119152.Spec : Prop :=
  ∀ n, P3754046896021119152.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P4788537630708367190

`A000010(n+1)*A060594(n+1)*A300915(n+1)`
-/

namespace A000252.P4788537630708367190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A060594 (n + 1) * A300915 (n + 1)

end

end A000252.P4788537630708367190

namespace A000252

/-- `A000010(n+1)*A060594(n+1)*A300915(n+1)` -/
def P4788537630708367190.Spec : Prop :=
  ∀ n, P4788537630708367190.a n = A000252 (n + 1)

end A000252

/-! ## A000252.P28970398910518727

`A000056(n+1)/A001615(n+1)*A007434(n+1)`
-/

namespace A000252.P28970398910518727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A007434 (n + 1) : ℚ)

end

end A000252.P28970398910518727

namespace A000252

/-- `A000056(n+1)/A001615(n+1)*A007434(n+1)` -/
def P28970398910518727.Spec : Prop :=
  ∀ n, P28970398910518727.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P11047766842624910762

`A070943(n+1)/(A000010(n+1)*A000203(n+1))`
-/

namespace A000252.P11047766842624910762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070943 (n + 1) : ℚ) / (A000010 (n + 1) * A000203 (n + 1) : ℚ)

end

end A000252.P11047766842624910762

namespace A000252

/-- `A070943(n+1)/(A000010(n+1)*A000203(n+1))` -/
def P11047766842624910762.Spec : Prop :=
  ∀ n, P11047766842624910762.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P7385410529808369763

`A000056(n+1)/A011785(n+1)*A064767(n+1)`
-/

namespace A000252.P7385410529808369763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A011785 (n + 1) : ℚ) * (A064767 (n + 1) : ℚ)

end

end A000252.P7385410529808369763

namespace A000252

/-- `A000056(n+1)/A011785(n+1)*A064767(n+1)` -/
def P7385410529808369763.Spec : Prop :=
  ∀ n, P7385410529808369763.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P16876108749046538707

`A000010(n+1)*A011785(n+1)/A115224(n+1)`
-/

namespace A000252.P16876108749046538707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A011785 (n + 1) : ℚ) / (A115224 (n + 1) : ℚ)

end

end A000252.P16876108749046538707

namespace A000252

/-- `A000010(n+1)*A011785(n+1)/A115224(n+1)` -/
def P16876108749046538707.Spec : Prop :=
  ∀ n, P16876108749046538707.a n = (A000252 (n + 1) : ℚ)

end A000252

/-! ## A000252.P13329281762504522570

`A000010(n+1)*A064767(n+1)/A115226(n+1)`
-/

namespace A000252.P13329281762504522570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A064767 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A000252.P13329281762504522570

namespace A000252

/-- `A000010(n+1)*A064767(n+1)/A115226(n+1)` -/
def P13329281762504522570.Spec : Prop :=
  ∀ n, P13329281762504522570.a n = (A000252 (n + 1) : ℚ)

end A000252

/-!
# A000253: a(n) = 2*a(n-1) - a(n-2) + a(n-3) + 2^(n-1).

The programs for A000253, the canonical program `A000253.P11295470622941771377` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000253 has offset 0).

The definition of A000253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000253.P17309520121222601975

`2*a(n-1)-a(n-2)+a(n-3)+2^(n-1)` with `a(0)=0, a(1)=1, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000253.P17309520121222601975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A000253.P17309520121222601975

namespace A000253

/-- `2*a(n-1)-a(n-2)+a(n-3)+2^(n-1)` -/
def P17309520121222601975.Spec : Prop :=
  ∀ n, P17309520121222601975.a n = (A000253 n : ℚ)

end A000253

/-! ## A000253.P11295470622941771377

`A000079(n+2)-A005251(n+5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000253

/-- `A000079(n+2)-A005251(n+5)` -/
def P11295470622941771377.Spec : Prop :=
  ∀ n, P11295470622941771377.a n = A000253 n

theorem P11295470622941771377.correct : P11295470622941771377.Spec := by
  intro n
  simp only [A000253]

end A000253

/-! ## A000253.P9618054627296832404

`ogf(x/(1-4x+5x^2-3x^3+2x^4))`
-/

namespace A000253.P9618054627296832404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 5, -3, 2] n

end

end A000253.P9618054627296832404

namespace A000253

/-- `ogf(x/(1-4x+5x^2-3x^3+2x^4))` -/
def P9618054627296832404.Spec : Prop :=
  ∀ n, P9618054627296832404.a n = A000253 n

end A000253

/-! ## A000253.P18366353998211695104

`∑[∑[A384153(n)]]`
-/

namespace A000253.P18366353998211695104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000253.P18366353998211695104

namespace A000253

/-- `∑[∑[A384153(n)]]` -/
def P18366353998211695104.Spec : Prop :=
  ∀ n, P18366353998211695104.a n = A000253 n

end A000253

/-! ## A000253.P2831796528521845854

`∑[A391683(2*n+1)]`
-/

namespace A000253.P2831796528521845854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391683 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000253.P2831796528521845854

namespace A000253

/-- `∑[A391683(2*n+1)]` -/
def P2831796528521845854.Spec : Prop :=
  ∀ n, P2831796528521845854.a n = A000253 n

end A000253

/-! ## A000253.P15822646121587451172

`2^(n+2)-A010901(n)`
-/

namespace A000253.P15822646121587451172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A010901 n

end

end A000253.P15822646121587451172

namespace A000253

/-- `2^(n+2)-A010901(n)` -/
def P15822646121587451172.Spec : Prop :=
  ∀ n, P15822646121587451172.a n = A000253 n

end A000253

/-! ## A000253.P11804555649062809748

`A005314(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A000253.P11804555649062809748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005314 n + 2 * a (n - 1)

end

end A000253.P11804555649062809748

namespace A000253

/-- `A005314(n)+2*a(n-1)` -/
def P11804555649062809748.Spec : Prop :=
  ∀ n, P11804555649062809748.a n = A000253 n

end A000253

/-! ## A000253.P59351727872734892

`A020737(n)-A020736(n)`
-/

namespace A000253.P59351727872734892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - A020736 n

end

end A000253.P59351727872734892

namespace A000253

/-- `A020737(n)-A020736(n)` -/
def P59351727872734892.Spec : Prop :=
  ∀ n, P59351727872734892.a n = A000253 n

end A000253

/-! ## A000253.P567244090222217294

`A020707(n)-Δ[A020713(n)]`
-/

namespace A000253.P567244090222217294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - (f1 (n + 1) - f1 n)

end

end A000253.P567244090222217294

namespace A000253

/-- `A020707(n)-Δ[A020713(n)]` -/
def P567244090222217294.Spec : Prop :=
  ∀ n, P567244090222217294.a n = A000253 n

end A000253

/-! ## A000253.P4916490026041631689

`A000225(n+2)-A018918(n)`
-/

namespace A000253.P4916490026041631689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A018918 n

end

end A000253.P4916490026041631689

namespace A000253

/-- `A000225(n+2)-A018918(n)` -/
def P4916490026041631689.Spec : Prop :=
  ∀ n, P4916490026041631689.a n = A000253 n

end A000253

/-! ## A000253.P1082750319541317037

`A000051(n+2)-A020736(n)`
-/

namespace A000253.P1082750319541317037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) - A020736 n

end

end A000253.P1082750319541317037

namespace A000253

/-- `A000051(n+2)-A020736(n)` -/
def P1082750319541317037.Spec : Prop :=
  ∀ n, P1082750319541317037.a n = A000253 n

end A000253

/-! ## A000253.P4460189111813786724

`A000225(n+2)-A077855(n+1)`
-/

namespace A000253.P4460189111813786724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A077855 (n + 1)

end

end A000253.P4460189111813786724

namespace A000253

/-- `A000225(n+2)-A077855(n+1)` -/
def P4460189111813786724.Spec : Prop :=
  ∀ n, P4460189111813786724.a n = A000253 n

end A000253

/-!
# A000254: Unsigned Stirling numbers of first kind, s(n+1,2): a(n+1) = (n+1)*a(n) + n!.

The programs for A000254, the canonical program `A000254.P9428527937712228311` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000254 has offset 0).

The definition of A000254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000254.P9428527937712228311

`a(n-1)*(2*n-1)-a(n-2)*(n-1)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000254

/-- `a(n-1)*(2*n-1)-a(n-2)*(n-1)²` -/
def P9428527937712228311.Spec : Prop :=
  ∀ n, P9428527937712228311.a n = A000254 n

theorem P9428527937712228311.correct : P9428527937712228311.Spec := by
  intro n
  simp only [A000254]

end A000254

/-! ## A000254.P16135158353140278334

`A081358(n)+A092691(n)`
-/

namespace A000254.P16135158353140278334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 n + A092691 n

end

end A000254.P16135158353140278334

namespace A000254

/-- `A081358(n)+A092691(n)` -/
def P16135158353140278334.Spec : Prop :=
  ∀ n, P16135158353140278334.a n = A000254 n

end A000254

/-! ## A000254.P10408445722233022894

`A138772(n+1)-A159324(n)`
-/

namespace A000254.P10408445722233022894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - A159324 n

end

end A000254.P10408445722233022894

namespace A000254

/-- `A138772(n+1)-A159324(n)` -/
def P10408445722233022894.Spec : Prop :=
  ∀ n, P10408445722233022894.a n = A000254 n

theorem P10408445722233022894.correct : P10408445722233022894.Spec := by
  intro n
  simp only [A000254, Nat.add_sub_cancel, A000254.P10408445722233022894.a, A000254.P9428527937712228311.a, A138772, A138772.P4391643693529965235.a, A159324, A159324.P14653545983242416296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000254

/-! ## A000254.P1751790833622485323

`(n-1)!+n*a(n-1)` with `a(0)=0`
-/

namespace A000254.P1751790833622485323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.factorial ((n : ℤ) - 1).toNat + n * a (n - 1)

end

end A000254.P1751790833622485323

namespace A000254

/-- `(n-1)!+n*a(n-1)` -/
def P1751790833622485323.Spec : Prop :=
  ∀ n, (P1751790833622485323.a n : ℤ) = A000254 n

end A000254

/-! ## A000254.P6700021679481611174

`abs(A081048(n))`
-/

namespace A000254.P6700021679481611174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n|

end

end A000254.P6700021679481611174

namespace A000254

/-- `abs(A081048(n))` -/
def P6700021679481611174.Spec : Prop :=
  ∀ n, P6700021679481611174.a n = A000254 n

end A000254

/-! ## A000254.P6780674855727839315

`A067176(∑[n])`
-/

namespace A000254.P6780674855727839315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000254.P6780674855727839315

namespace A000254

/-- `A067176(∑[n])` -/
def P6780674855727839315.Spec : Prop :=
  ∀ n, P6780674855727839315.a n = A000254 n

end A000254

/-! ## A000254.P10060960061426752587

`record[A067176(n)]`
-/

namespace A000254.P10060960061426752587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000254.P10060960061426752587

namespace A000254

/-- `record[A067176(n)]` -/
def P10060960061426752587.Spec : Prop :=
  ∀ n, P10060960061426752587.a n = A000254 n

end A000254

/-! ## A000254.P4411085542291942827

`A000774(n)-n!`
-/

namespace A000254.P4411085542291942827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (Nat.factorial n : ℤ)

end

end A000254.P4411085542291942827

namespace A000254

/-- `A000774(n)-n!` -/
def P4411085542291942827.Spec : Prop :=
  ∀ n, P4411085542291942827.a n = A000254 n

theorem P4411085542291942827.correct : P4411085542291942827.Spec := by
  intro n
  simp only [A000254, Nat.add_sub_cancel, A000254.P4411085542291942827.a, A000254.P9428527937712228311.a, A000774, A000774.P2466986371641539534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A000254

/-! ## A000254.P13256870857639310371

`n!-A081047(n)`
-/

namespace A000254.P13256870857639310371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081047 n

end

end A000254.P13256870857639310371

namespace A000254

/-- `n!-A081047(n)` -/
def P13256870857639310371.Spec : Prop :=
  ∀ n, P13256870857639310371.a n = A000254 n

end A000254

/-! ## A000254.P11188747059155884669

`A052517(n+1)/2`
-/

namespace A000254.P11188747059155884669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (n + 1) : ℚ) / 2

end

end A000254.P11188747059155884669

namespace A000254

/-- `A052517(n+1)/2` -/
def P11188747059155884669.Spec : Prop :=
  ∀ n, P11188747059155884669.a n = (A000254 n : ℚ)

end A000254

/-!
# A000255: a(n) = n*a(n-1) + (n-1)*a(n-2), a(0) = 1, a(1) = 1.

The programs for A000255, the canonical program `A000255.P10443310413278371170` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000255 has offset 0).

The definition of A000255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(n-1)*a(n-2)` (program `A000255.P10443310413278371170`, by `A000255.P10443310413278371170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000255.P14127967904560202705

`floor(1/e*n!*(n+2)+1/2)`
-/

namespace A000255.P14127967904560202705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.exp 1 * (Nat.factorial n : ℝ) * (n + 2 : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A000255.P14127967904560202705

namespace A000255

/-- `floor(1/e*n!*(n+2)+1/2)` -/
def P14127967904560202705.Spec : Prop :=
  ∀ n, P14127967904560202705.a n = A000255 n

end A000255

/-! ## A000255.P10443310413278371170

`n*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000255

/-- `n*a(n-1)+(n-1)*a(n-2)` -/
def P10443310413278371170.Spec : Prop :=
  ∀ n, P10443310413278371170.a n = A000255 n

theorem P10443310413278371170.correct : P10443310413278371170.Spec := by
  intro n
  simp only [A000255]

end A000255

/-! ## A000255.P15390338675777427449

`A000166(n)+A000166(n+1)`
-/

namespace A000255.P15390338675777427449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + A000166 (n + 1)

end

end A000255.P15390338675777427449

namespace A000255

/-- `A000166(n)+A000166(n+1)` -/
def P15390338675777427449.Spec : Prop :=
  ∀ n, P15390338675777427449.a n = A000255 n

end A000255

/-! ## A000255.P9178708057946974171

`round(n!*(n+2)/e)`
-/

namespace A000255.P9178708057946974171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n * (n + 2) : ℝ) / Real.exp 1)

end

end A000255.P9178708057946974171

namespace A000255

/-- `round(n!*(n+2)/e)` -/
def P9178708057946974171.Spec : Prop :=
  ∀ n, P9178708057946974171.a n = A000255 n

end A000255

/-! ## A000255.P12428078626415720282

`abs(Δ[n*(1-a(n-1))])` with `a(0)=0`
-/

namespace A000255.P12428078626415720282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000255.P12428078626415720282

namespace A000255

/-- `abs(Δ[n*(1-a(n-1))])` -/
def P12428078626415720282.Spec : Prop :=
  ∀ n, P12428078626415720282.a n = A000255 n

end A000255

/-! ## A000255.P13517306851180564719

`∏[(n-1)/a(n-1)+n]` with `a(0)=1`
-/

namespace A000255.P13517306851180564719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000255.P13517306851180564719

namespace A000255

/-- `∏[(n-1)/a(n-1)+n]` -/
def P13517306851180564719.Spec : Prop :=
  ∀ n, P13517306851180564719.a n = (A000255 n : ℚ)

end A000255

/-! ## A000255.P4237071967277045052

`∏[n-(1-n)/a(n-1)]` with `a(0)=1`
-/

namespace A000255.P4237071967277045052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) - (1 - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000255.P4237071967277045052

namespace A000255

/-- `∏[n-(1-n)/a(n-1)]` -/
def P4237071967277045052.Spec : Prop :=
  ∀ n, P4237071967277045052.a n = (A000255 n : ℚ)

end A000255

/-! ## A000255.P7853019541827359969

`n*a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A000255.P7853019541827359969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A000255.P7853019541827359969

namespace A000255

/-- `n*a(n-1)-(a(n-2)-n*a(n-2))` -/
def P7853019541827359969.Spec : Prop :=
  ∀ n, P7853019541827359969.a n = A000255 n

theorem P7853019541827359969.correct : P7853019541827359969.Spec := by
  intro n
  simp only [A000255, Nat.add_sub_cancel, A000255.P7853019541827359969.a, A000255.P10443310413278371170.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000255

/-! ## A000255.P7217348769166353430

`abs(Δ[A182386(n)])`
-/

namespace A000255.P7217348769166353430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000255.P7217348769166353430

namespace A000255

/-- `abs(Δ[A182386(n)])` -/
def P7217348769166353430.Spec : Prop :=
  ∀ n, P7217348769166353430.a n = A000255 n

end A000255

/-! ## A000255.P1242200704557198792

`A162969(Δ[n²])`
-/

namespace A000255.P1242200704557198792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000255.P1242200704557198792

namespace A000255

/-- `A162969(Δ[n²])` -/
def P1242200704557198792.Spec : Prop :=
  ∀ n, P1242200704557198792.a n = A000255 n

end A000255

/-!
# A000256: Number of simple triangulations of the plane with n nodes.

The programs for A000256, there is no canonical definition to state claims against.
-/

/-! ## A000256.P1723842565012921484

`A210664(A212342(n))`
-/

namespace A000256.P1723842565012921484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A212342 n).toNat

end

end A000256.P1723842565012921484

/-! ## A000256.P18418978541274766929

`A210664(A153151(∑[n]))`
-/

namespace A000256.P18418978541274766929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A153151 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000256.P18418978541274766929

/-! ## A000256.P9445231957081144300

`A210664(eq[1, A210636(n)])`
-/

namespace A000256.P9445231957081144300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000256.P9445231957081144300

/-! ## A000256.P4019824507002477916

`A210664(lt[A210636(n), 2])`
-/

namespace A000256.P4019824507002477916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210636 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A000256.P4019824507002477916

/-! ## A000256.P16712373251204192392

`A210664(abs(A080956(n+1)))`
-/

namespace A000256.P16712373251204192392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 |A080956 (n + 1)|.toNat

end

end A000256.P16712373251204192392

/-! ## A000256.P10677157468571821138

`A210664(abs(1-A000217(n)))`
-/

namespace A000256.P10677157468571821138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 |1 - A000217 n|.toNat

end

end A000256.P10677157468571821138

/-! ## A000256.P9198972994418235764

`A210664(abs(n-A080956(n)))`
-/

namespace A000256.P9198972994418235764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 |(n : ℤ) - A080956 n|.toNat

end

end A000256.P9198972994418235764

/-! ## A000256.P16655963997985212040

`A210664(record[n/A210636(n)])`
-/

namespace A000256.P16655963997985212040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A210636 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A000256.P16655963997985212040

/-! ## A000256.P15033422511737485791

`A210664(A029635(A133263(n)))`
-/

namespace A000256.P15033422511737485791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (A029635 (A133263 n).toNat).toNat

end

end A000256.P15033422511737485791

/-! ## A000256.P6388147621875693102

`A210664(∑[A004526(A267872(n))])`
-/

namespace A000256.P6388147621875693102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A267872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210664 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000256.P6388147621875693102

/-!
# A000257: Number of rooted bicubic maps: a(n) = (8*n-4)*a(n-1)/(n+2) for n >= 2, a(0) = a(1) = 1.

The programs for A000257, the canonical program `A000257.P750356410618871509` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000257 has offset 0).

The definition of A000257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000257.P750356410618871509

`(8*n-4)*a(n-1)/(n+2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000257

/-- `(8*n-4)*a(n-1)/(n+2)` -/
def P750356410618871509.Spec : Prop :=
  ∀ n, P750356410618871509.a n = (A000257 n : ℚ)

end A000257

/-! ## A000257.P3086941718161486416

`ceil(2^(n-2)*A007054(n))`
-/

namespace A000257.P3086941718161486416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A007054 n : ℚ)⌉

end

end A000257.P3086941718161486416

namespace A000257

/-- `ceil(2^(n-2)*A007054(n))` -/
def P3086941718161486416.Spec : Prop :=
  ∀ n, P3086941718161486416.a n = A000257 n

end A000257

/-! ## A000257.P18416762085276374550

`A321710(A033638(n))`
-/

namespace A000257.P18416762085276374550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321710 (A033638 n).toNat

end

end A000257.P18416762085276374550

namespace A000257

/-- `A321710(A033638(n))` -/
def P18416762085276374550.Spec : Prop :=
  ∀ n, P18416762085276374550.a n = A000257 n

end A000257

/-! ## A000257.P4925088953716790753

`A321710(A002620(n)+1)`
-/

namespace A000257.P4925088953716790753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321710 (A002620 n + 1).toNat

end

end A000257.P4925088953716790753

namespace A000257

/-- `A321710(A002620(n)+1)` -/
def P4925088953716790753.Spec : Prop :=
  ∀ n, P4925088953716790753.a n = A000257 n

end A000257

/-! ## A000257.P16543143859163024548

`A321710(∑[A004526(n)]+1)`
-/

namespace A000257.P16543143859163024548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321710 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A000257.P16543143859163024548

namespace A000257

/-- `A321710(∑[A004526(n)]+1)` -/
def P16543143859163024548.Spec : Prop :=
  ∀ n, P16543143859163024548.a n = A000257 n

end A000257

/-!
# A000258: Expansion of e.g.f. exp(exp(exp(x)-1)-1).

The programs for A000258, there is no canonical definition to state claims against.
-/

/-! ## A000258.P2006191207342047481

`A039811(∑[abs(1-n)])`
-/

namespace A000258.P2006191207342047481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000258.P2006191207342047481

/-! ## A000258.P3848889623382504105

`A144150(∑[n+3])`
-/

namespace A000258.P3848889623382504105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000258.P3848889623382504105

/-! ## A000258.P13337616628986048930

`A111672(∑[n+2]-1)`
-/

namespace A000258.P13337616628986048930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000258.P13337616628986048930

/-! ## A000258.P1193027497054885153

`or(A000007(n), A144150(A055998(n+1)))`
-/

namespace A000258.P1193027497054885153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144150 (A055998 (n + 1)).toNat)

end

end A000258.P1193027497054885153

/-! ## A000258.P491867549697510717

`A092412(2*n+1)*A144150(A055998(n+1))`
-/

namespace A000258.P491867549697510717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (2 * n + 1) * A144150 (A055998 (n + 1)).toNat

end

end A000258.P491867549697510717

/-! ## A000258.P17139333041092061723

`A191218(n+1)%2*A144150(A055998(n+1))`
-/

namespace A000258.P17139333041092061723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191218 (n + 1)) 2 * A144150 (A055998 (n + 1)).toNat

end

end A000258.P17139333041092061723

/-! ## A000258.P2275237232316272850

`A014963(8*n+12)*A144150(A055998(n+1))`
-/

namespace A000258.P2275237232316272850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 12) * A144150 (A055998 (n + 1)).toNat

end

end A000258.P2275237232316272850

/-! ## A000258.P12129625522839137480

`A001221(A001316(n+1))*A144150(A055998(n+1))`
-/

namespace A000258.P12129625522839137480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (n + 1)).toNat * A144150 (A055998 (n + 1)).toNat

end

end A000258.P12129625522839137480

/-! ## A000258.P7311223587868109593

`A001222(A023212(n+1))*A144150(A055998(n+1))`
-/

namespace A000258.P7311223587868109593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023212 (n + 1)).toNat * A144150 (A055998 (n + 1)).toNat

end

end A000258.P7311223587868109593

/-! ## A000258.P7557309804062642932

`A083952(A108783(n+1))*A144150(A055998(n+1))`
-/

namespace A000258.P7557309804062642932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A108783 (n + 1)).toNat * A144150 (A055998 (n + 1)).toNat

end

end A000258.P7557309804062642932

/-!
# A000259: Number of certain rooted planar maps.

The programs for A000259, there is no canonical definition to state claims against.
-/

/-! ## A000259.P6669097357124566830

`A004525(A243585(n)+A150119(n))`
-/

namespace A000259.P6669097357124566830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A243585 n + A150119 n).toNat

end

end A000259.P6669097357124566830

/-! ## A000259.P9015227954713023404

`A000720(A081069(n))-A003558(n)`
-/

namespace A000259.P9015227954713023404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A081069 n).toNat - A003558 n

end

end A000259.P9015227954713023404

/-!
# A000260: Number of rooted simplicial 3-polytopes with n+3 nodes; or rooted 3-connected triangulations with 2n+2 faces; or rooted 3-connected trivalent maps with 2n+2 vertices.

The programs for A000260, the canonical program `A000260.P14944812845946339359` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000260 has offset 0).

The definition of A000260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000260.P14944812845946339359

`C(4*n+2, n+1)/((2*n+1)*(3*n+2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000260

/-- `C(4*n+2, n+1)/((2*n+1)*(3*n+2))` -/
def P14944812845946339359.Spec : Prop :=
  ∀ n, P14944812845946339359.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P9745870768780675110

`A146305(∑[n])`
-/

namespace A000260.P9745870768780675110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000260.P9745870768780675110

namespace A000260

/-- `A146305(∑[n])` -/
def P9745870768780675110.Spec : Prop :=
  ∀ n, P9745870768780675110.a n = A000260 n

end A000260

/-! ## A000260.P3236542747463957880

`A069271(n)/(n+1)`
-/

namespace A000260.P3236542747463957880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069271 n : ℚ) / (n + 1 : ℚ)

end

end A000260.P3236542747463957880

namespace A000260

/-- `A069271(n)/(n+1)` -/
def P3236542747463957880.Spec : Prop :=
  ∀ n, P3236542747463957880.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P16280349666603146224

`A006632(n+1)/Δ[n²]`
-/

namespace A000260.P16280349666603146224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006632 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A000260.P16280349666603146224

namespace A000260

/-- `A006632(n+1)/Δ[n²]` -/
def P16280349666603146224.Spec : Prop :=
  ∀ n, P16280349666603146224.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P12337862295357126206

`A369472(Δ[n²])/(n+1)`
-/

namespace A000260.P12337862295357126206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A000260.P12337862295357126206

namespace A000260

/-- `A369472(Δ[n²])/(n+1)` -/
def P12337862295357126206.Spec : Prop :=
  ∀ n, P12337862295357126206.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P8618640127126491989

`record[A188108(n+1)]/(n+1)`
-/

namespace A000260.P8618640127126491989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A000260.P8618640127126491989

namespace A000260

/-- `record[A188108(n+1)]/(n+1)` -/
def P8618640127126491989.Spec : Prop :=
  ∀ n, P8618640127126491989.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P5118138189127841870

`A069270(∑[n+3])/(2*n+1)`
-/

namespace A000260.P5118138189127841870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069270 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (2 * n + 1 : ℚ)

end

end A000260.P5118138189127841870

namespace A000260

/-- `A069270(∑[n+3])/(2*n+1)` -/
def P5118138189127841870.Spec : Prop :=
  ∀ n, P5118138189127841870.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P4046348097465703461

`A112385(n+1)/(2*(2*n+1))`
-/

namespace A000260.P4046348097465703461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112385 (n + 1) : ℚ) / (2 * (2 * n + 1) : ℚ)

end

end A000260.P4046348097465703461

namespace A000260

/-- `A112385(n+1)/(2*(2*n+1))` -/
def P4046348097465703461.Spec : Prop :=
  ∀ n, P4046348097465703461.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P2255253340728729616

`A369082(2*n+1)/(2*n+1)`
-/

namespace A000260.P2255253340728729616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369082 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A000260.P2255253340728729616

namespace A000260

/-- `A369082(2*n+1)/(2*n+1)` -/
def P2255253340728729616.Spec : Prop :=
  ∀ n, P2255253340728729616.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P7752680408884611661

`gcd(A006632(n+1), A069271(n))`
-/

namespace A000260.P7752680408884611661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006632 (n + 1)) (A069271 n)

end

end A000260.P7752680408884611661

namespace A000260

/-- `gcd(A006632(n+1), A069271(n))` -/
def P7752680408884611661.Spec : Prop :=
  ∀ n, (P7752680408884611661.a n : ℤ) = A000260 n

end A000260

/-! ## A000260.P7963298045480587804

`A185113(n)/∑[n+1]`
-/

namespace A000260.P7963298045480587804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185113 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000260.P7963298045480587804

namespace A000260

/-- `A185113(n)/∑[n+1]` -/
def P7963298045480587804.Spec : Prop :=
  ∀ n, P7963298045480587804.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P16102927485238591476

`A026005(n)/(n+1)²`
-/

namespace A000260.P16102927485238591476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026005 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A000260.P16102927485238591476

namespace A000260

/-- `A026005(n)/(n+1)²` -/
def P16102927485238591476.Spec : Prop :=
  ∀ n, P16102927485238591476.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P12757626204028753332

`A052203(n)/∑[A016777(n)]`
-/

namespace A000260.P12757626204028753332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A000260.P12757626204028753332

namespace A000260

/-- `A052203(n)/∑[A016777(n)]` -/
def P12757626204028753332.Spec : Prop :=
  ∀ n, P12757626204028753332.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P10969687665948008478

`A052203(n)/A000326(n+1)`
-/

namespace A000260.P10969687665948008478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / (A000326 (n + 1) : ℚ)

end

end A000260.P10969687665948008478

namespace A000260

/-- `A052203(n)/A000326(n+1)` -/
def P10969687665948008478.Spec : Prop :=
  ∀ n, P10969687665948008478.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P16469887621280440652

`A283799(2*n)/∑[A016777(n)]`
-/

namespace A000260.P16469887621280440652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283799 (2 * n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A000260.P16469887621280440652

namespace A000260

/-- `A283799(2*n)/∑[A016777(n)]` -/
def P16469887621280440652.Spec : Prop :=
  ∀ n, P16469887621280440652.a n = (A000260 n : ℚ)

end A000260

/-! ## A000260.P17328300040112125415

`A052203(n)/∑[A016813(n)-n]`
-/

namespace A000260.P17328300040112125415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A000260.P17328300040112125415

namespace A000260

/-- `A052203(n)/∑[A016813(n)-n]` -/
def P17328300040112125415.Spec : Prop :=
  ∀ n, P17328300040112125415.a n = (A000260 n : ℚ)

end A000260

/-!
# A000261: a(n) = n*a(n-1) + (n-3)*a(n-2), with a(1) = 0, a(2) = 1.

The programs for A000261, the canonical program `A000261.P11852962750300798542` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000261 has offset 1).

The definition of A000261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)+(n-2)*a(n-2)` (program `A000261.P11852962750300798542`, by `A000261.P11852962750300798542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000261.P11852962750300798542

`(n+1)*a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000261

/-- `(n+1)*a(n-1)+(n-2)*a(n-2)` -/
def P11852962750300798542.Spec : Prop :=
  ∀ n, P11852962750300798542.a n = A000261 (n + 1)

theorem P11852962750300798542.correct : P11852962750300798542.Spec := by
  intro n
  simp only [A000261, Nat.add_sub_cancel]

end A000261

/-! ## A000261.P14703201452526599877

`A277609(n+2)/6`
-/

namespace A000261.P14703201452526599877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277609 (n + 2) : ℚ) / 6

end

end A000261.P14703201452526599877

namespace A000261

/-- `A277609(n+2)/6` -/
def P14703201452526599877.Spec : Prop :=
  ∀ n, P14703201452526599877.a n = (A000261 (n + 1) : ℚ)

end A000261

/-! ## A000261.P3059849054258254509

`A060475(∑[n+3]-1)`
-/

namespace A000261.P3059849054258254509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000261.P3059849054258254509

namespace A000261

/-- `A060475(∑[n+3]-1)` -/
def P3059849054258254509.Spec : Prop :=
  ∀ n, P3059849054258254509.a n = A000261 (n + 1)

end A000261

/-! ## A000261.P5341904905731639736

`A076731(A027379(n))`
-/

namespace A000261.P5341904905731639736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076731 (A027379 n).toNat

end

end A000261.P5341904905731639736

namespace A000261

/-- `A076731(A027379(n))` -/
def P5341904905731639736.Spec : Prop :=
  ∀ n, P5341904905731639736.a n = A000261 (n + 1)

end A000261

/-! ## A000261.P9451232657429948957

`A247490(A052905(n+1)+1)`
-/

namespace A000261.P9451232657429948957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247490 (A052905 (n + 1) + 1).toNat

end

end A000261.P9451232657429948957

namespace A000261

/-- `A247490(A052905(n+1)+1)` -/
def P9451232657429948957.Spec : Prop :=
  ∀ n, P9451232657429948957.a n = A000261 (n + 1)

end A000261

/-! ## A000261.P12662817403218794108

`ceil(sin(n)²)*A086764(A167614(n+1))`
-/

namespace A000261.P12662817403218794108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A086764 (A167614 (n + 1)).toNat

end

end A000261.P12662817403218794108

namespace A000261

/-- `ceil(sin(n)²)*A086764(A167614(n+1))` -/
def P12662817403218794108.Spec : Prop :=
  ∀ n, P12662817403218794108.a n = A000261 (n + 1)

end A000261

/-! ## A000261.P11832696290411369486

`A086764(A167614(n+1)^ceil(sin(n)²))`
-/

namespace A000261.P11832696290411369486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A000261.P11832696290411369486

namespace A000261

/-- `A086764(A167614(n+1)^ceil(sin(n)²))` -/
def P11832696290411369486.Spec : Prop :=
  ∀ n, P11832696290411369486.a n = A000261 (n + 1)

end A000261

/-!
# A000262: Number of "sets of lists": number of partitions of {1,...,n} into any number of lists, where a list means an ordered subset.

The programs for A000262, the canonical program `A000262.P5795723230427946542` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000262 has offset 0).

The definition of A000262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000262.P5795723230427946542

`(2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000262

/-- `(2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2)` -/
def P5795723230427946542.Spec : Prop :=
  ∀ n, P5795723230427946542.a n = A000262 n

theorem P5795723230427946542.correct : P5795723230427946542.Spec := by
  intro n
  simp only [A000262]

end A000262

/-! ## A000262.P10923117472809920001

`n!*A067764(n)/A067653(n)`
-/

namespace A000262.P10923117472809920001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A067764 n : ℚ) / (A067653 n : ℚ)

end

end A000262.P10923117472809920001

namespace A000262

/-- `n!*A067764(n)/A067653(n)` -/
def P10923117472809920001.Spec : Prop :=
  ∀ n, P10923117472809920001.a n = (A000262 n : ℚ)

end A000262

/-! ## A000262.P13230742481796420188

`abs(A293125(n))`
-/

namespace A000262.P13230742481796420188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n|

end

end A000262.P13230742481796420188

namespace A000262

/-- `abs(A293125(n))` -/
def P13230742481796420188.Spec : Prop :=
  ∀ n, P13230742481796420188.a n = A000262 n

end A000262

/-! ## A000262.P11871355001327769516

`A059110(∑[n])`
-/

namespace A000262.P11871355001327769516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000262.P11871355001327769516

namespace A000262

/-- `A059110(∑[n])` -/
def P11871355001327769516.Spec : Prop :=
  ∀ n, P11871355001327769516.a n = A000262 n

end A000262

/-! ## A000262.P16488226152839691872

`A129652(∑[n])`
-/

namespace A000262.P16488226152839691872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000262.P16488226152839691872

namespace A000262

/-- `A129652(∑[n])` -/
def P16488226152839691872.Spec : Prop :=
  ∀ n, P16488226152839691872.a n = A000262 n

end A000262

/-! ## A000262.P9843235327344004123

`A206703(∑[n])`
-/

namespace A000262.P9843235327344004123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000262.P9843235327344004123

namespace A000262

/-- `A206703(∑[n])` -/
def P9843235327344004123.Spec : Prop :=
  ∀ n, P9843235327344004123.a n = A000262 n

end A000262

/-! ## A000262.P5917610010297188571

`A216294(∑[n])`
-/

namespace A000262.P5917610010297188571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000262.P5917610010297188571

namespace A000262

/-- `A216294(∑[n])` -/
def P5917610010297188571.Spec : Prop :=
  ∀ n, P5917610010297188571.a n = A000262 n

end A000262

/-! ## A000262.P9462595166552363903

`A376863(C(n, 2))`
-/

namespace A000262.P9462595166552363903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376863 (Nat.choose n 2)

end

end A000262.P9462595166552363903

namespace A000262

/-- `A376863(C(n, 2))` -/
def P9462595166552363903.Spec : Prop :=
  ∀ n, P9462595166552363903.a n = A000262 n

end A000262

/-! ## A000262.P7251643284620816958

`A261764(∑[n]+n)`
-/

namespace A000262.P7251643284620816958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000262.P7251643284620816958

namespace A000262

/-- `A261764(∑[n]+n)` -/
def P7251643284620816958.Spec : Prop :=
  ∀ n, P7251643284620816958.a n = A000262 n

end A000262

/-! ## A000262.P8360295749575615483

`A293053(∑[n]+n)`
-/

namespace A000262.P8360295749575615483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000262.P8360295749575615483

namespace A000262

/-- `A293053(∑[n]+n)` -/
def P8360295749575615483.Spec : Prop :=
  ∀ n, P8360295749575615483.a n = A000262 n

end A000262

/-!
# A000263: Number of partitions into non-integral powers.

The programs for A000263, there is no canonical definition to state claims against.
-/

/-! ## A000263.P9154182120255369752

`A163517(A075342(n+2))`
-/

namespace A000263.P9154182120255369752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163517 (A075342 (n + 2)).toNat

end

end A000263.P9154182120255369752

/-!
# A000264: Number of 3-edge-connected rooted cubic maps with 2n nodes and a distinguished Hamiltonian cycle.

The programs for A000264, there is no canonical definition to state claims against.
-/

/-! ## A000264.P18430821577411425703

`A004304(n+1)/2`
-/

namespace A000264.P18430821577411425703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004304 (n + 1) : ℚ) / 2

end

end A000264.P18430821577411425703

/-! ## A000264.P11759503271462145763

`Δ[∑[A004304(n)]/2]`
-/

namespace A000264.P11759503271462145763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004304 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000264.P11759503271462145763

/-! ## A000264.P684481796369887364

`tan(acot(2))*A004304(A187829(n+1))`
-/

namespace A000264.P684481796369887364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (2 : ℝ)) * (A004304 (A187829 (n + 1)).toNat : ℝ)

end

end A000264.P684481796369887364

/-! ## A000264.P950459645584548762

`A014682(A004304(n+1))`
-/

namespace A000264.P950459645584548762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A004304 (n + 1)).toNat

end

end A000264.P950459645584548762

/-!
# A000265: Remove all factors of 2 from n; or largest odd divisor of n; or odd part of n.

The programs for A000265, the canonical program `A000265.P16482698636471710744` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000265 has offset 1).

The definition of A000265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000265.P16482698636471710744

`(n+1)/2^val(n+1, 2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000265

/-- `(n+1)/2^val(n+1, 2)` -/
def P16482698636471710744.Spec : Prop :=
  ∀ n, P16482698636471710744.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P13666122675153938325

`2*A025480(n)+1`
-/

namespace A000265.P13666122675153938325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n + 1

end

end A000265.P13666122675153938325

namespace A000265

/-- `2*A025480(n)+1` -/
def P13666122675153938325.Spec : Prop :=
  ∀ n, P13666122675153938325.a n = A000265 (n + 1)

end A000265

/-! ## A000265.P2772582252347773295

`2*A003602(n+1)-1`
-/

namespace A000265.P2772582252347773295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003602 (n + 1) - 1

end

end A000265.P2772582252347773295

namespace A000265

/-- `2*A003602(n+1)-1` -/
def P2772582252347773295.Spec : Prop :=
  ∀ n, P2772582252347773295.a n = A000265 (n + 1)

end A000265

/-! ## A000265.P18308803008648031543

`(n+1)/A006519(n+1)`
-/

namespace A000265.P18308803008648031543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (n + 1) : ℚ)

end

end A000265.P18308803008648031543

namespace A000265

/-- `(n+1)/A006519(n+1)` -/
def P18308803008648031543.Spec : Prop :=
  ∀ n, P18308803008648031543.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P3407286261656803505

`A003961(A064989(n+1))`
-/

namespace A000265.P3407286261656803505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (n + 1)).toNat

end

end A000265.P3407286261656803505

namespace A000265

/-- `A003961(A064989(n+1))` -/
def P3407286261656803505.Spec : Prop :=
  ∀ n, P3407286261656803505.a n = A000265 (n + 1)

end A000265

/-! ## A000265.P3508721466254421069

`A030101(A030101(n+1))`
-/

namespace A000265.P3508721466254421069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n + 1)).toNat

end

end A000265.P3508721466254421069

namespace A000265

/-- `A030101(A030101(n+1))` -/
def P3508721466254421069.Spec : Prop :=
  ∀ n, P3508721466254421069.a n = A000265 (n + 1)

end A000265

/-! ## A000265.P1625289764351246147

`(n+1)/gcd(2^(n+1), n+1)`
-/

namespace A000265.P1625289764351246147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (2 ^ (n + 1)) (n + 1) : ℚ)

end

end A000265.P1625289764351246147

namespace A000265

/-- `(n+1)/gcd(2^(n+1), n+1)` -/
def P1625289764351246147.Spec : Prop :=
  ∀ n, P1625289764351246147.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P2330270637832422883

`A049606(n+1)/A049606(n)`
-/

namespace A000265.P2330270637832422883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 (n + 1) : ℚ) / (A049606 n : ℚ)

end

end A000265.P2330270637832422883

namespace A000265

/-- `A049606(n+1)/A049606(n)` -/
def P2330270637832422883.Spec : Prop :=
  ∀ n, P2330270637832422883.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P9172309409855061427

`(n+1)/(or(n, n+1)-n)`
-/

namespace A000265.P9172309409855061427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

end

end A000265.P9172309409855061427

namespace A000265

/-- `(n+1)/(or(n, n+1)-n)` -/
def P9172309409855061427.Spec : Prop :=
  ∀ n, P9172309409855061427.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P15020316652467698285

`(n+1)/xor(n, or(n, n+1))`
-/

namespace A000265.P15020316652467698285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)

end

end A000265.P15020316652467698285

namespace A000265

/-- `(n+1)/xor(n, or(n, n+1))` -/
def P15020316652467698285.Spec : Prop :=
  ∀ n, P15020316652467698285.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P13078114674546662094

`(n+1)*2^-val(n+1, 2)`
-/

namespace A000265.P13078114674546662094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A000265.P13078114674546662094

namespace A000265

/-- `(n+1)*2^-val(n+1, 2)` -/
def P13078114674546662094.Spec : Prop :=
  ∀ n, P13078114674546662094.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P8189726723779122181

`2^(log2(n+1)-val(n+1, 2))`
-/

namespace A000265.P8189726723779122181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ))

end

end A000265.P8189726723779122181

namespace A000265

/-- `2^(log2(n+1)-val(n+1, 2))` -/
def P8189726723779122181.Spec : Prop :=
  ∀ n, P8189726723779122181.a n = (A000265 (n + 1) : ℝ)

end A000265

/-! ## A000265.P102798884003041103

`(n+1)/and(n+1, -(n+1))`
-/

namespace A000265.P102798884003041103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A000265.P102798884003041103

namespace A000265

/-- `(n+1)/and(n+1, -(n+1))` -/
def P102798884003041103.Spec : Prop :=
  ∀ n, P102798884003041103.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P6563362918679166241

`(n+1)/ceil(xor(n, n+1)/2)`
-/

namespace A000265.P6563362918679166241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ)

end

end A000265.P6563362918679166241

namespace A000265

/-- `(n+1)/ceil(xor(n, n+1)/2)` -/
def P6563362918679166241.Spec : Prop :=
  ∀ n, P6563362918679166241.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P4782755650007274058

`(n+1)/round(xor(n, n+1)/2)`
-/

namespace A000265.P4782755650007274058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ)

end

end A000265.P4782755650007274058

namespace A000265

/-- `(n+1)/round(xor(n, n+1)/2)` -/
def P4782755650007274058.Spec : Prop :=
  ∀ n, P4782755650007274058.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P15488855809057792087

`1/(1-and(n, n+1)/(n+1))`
-/

namespace A000265.P15488855809057792087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (1 - (Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A000265.P15488855809057792087

namespace A000265

/-- `1/(1-and(n, n+1)/(n+1))` -/
def P15488855809057792087.Spec : Prop :=
  ∀ n, P15488855809057792087.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P15082706045493342729

`2*(n+1)/(xor(n, n+1)+1)`
-/

namespace A000265.P15082706045493342729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

end

end A000265.P15082706045493342729

namespace A000265

/-- `2*(n+1)/(xor(n, n+1)+1)` -/
def P15082706045493342729.Spec : Prop :=
  ∀ n, P15082706045493342729.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P17132594929340910216

`abs((n+1)/or(n+1, -(n+1)))`
-/

namespace A000265.P17132594929340910216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)|

end

end A000265.P17132594929340910216

namespace A000265

/-- `abs((n+1)/or(n+1, -(n+1)))` -/
def P17132594929340910216.Spec : Prop :=
  ∀ n, P17132594929340910216.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P1921021450104481582

`-((n+1)/or(n+1, -(n+1)))`
-/

namespace A000265.P1921021450104481582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

end

end A000265.P1921021450104481582

namespace A000265

/-- `-((n+1)/or(n+1, -(n+1)))` -/
def P1921021450104481582.Spec : Prop :=
  ∀ n, P1921021450104481582.a n = (A000265 (n + 1) : ℚ)

end A000265

/-! ## A000265.P3027556278240505332

`(n+1)/xor(n+1, and(n, n+1))`
-/

namespace A000265.P3027556278240505332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ)

end

end A000265.P3027556278240505332

namespace A000265

/-- `(n+1)/xor(n+1, and(n, n+1))` -/
def P3027556278240505332.Spec : Prop :=
  ∀ n, P3027556278240505332.a n = (A000265 (n + 1) : ℚ)

end A000265

/-!
# A000266: Expansion of e.g.f. exp(-x^2/2) / (1-x).

The programs for A000266, there is no canonical definition to state claims against.
-/

/-! ## A000266.P18238465664277870571

`∏[(n-2)/a(n-2)+n-1]` with `a(0)=1, a(1)=1`
-/

namespace A000266.P18238465664277870571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 2 : ℚ) / f1 (n - 2) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000266.P18238465664277870571

/-! ## A000266.P11869754432125908779

`A122974(∑[n-1]+3)`
-/

namespace A000266.P11869754432125908779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122974 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A000266.P11869754432125908779

/-! ## A000266.P11705163160275313351

`A114320(∑[A110654(n)])`
-/

namespace A000266.P11705163160275313351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000266.P11705163160275313351

/-! ## A000266.P15947167724557877757

`A114320(A002620(n+1))`
-/

namespace A000266.P15947167724557877757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (A002620 (n + 1)).toNat

end

end A000266.P15947167724557877757

/-! ## A000266.P2874441638344048668

`A114320(A076921(n+1))`
-/

namespace A000266.P2874441638344048668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (A076921 (n + 1)).toNat

end

end A000266.P2874441638344048668

/-! ## A000266.P2159366345147076482

`A114320(A182531(n+1))`
-/

namespace A000266.P2159366345147076482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (A182531 (n + 1)).toNat

end

end A000266.P2159366345147076482

/-! ## A000266.P8623605789330379054

`A114320(∑[∑[A000035(n)]])`
-/

namespace A000266.P8623605789330379054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000266.P8623605789330379054

/-! ## A000266.P6475481723693105035

`A114320(∑[n]-A002620(n))`
-/

namespace A000266.P6475481723693105035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002620 n).toNat

end

end A000266.P6475481723693105035

/-! ## A000266.P18044504775188271498

`A114320(record[A091018(n)-n])`
-/

namespace A000266.P18044504775188271498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000266.P18044504775188271498

/-! ## A000266.P9136313514033189225

`A114320(record[n-A055087(n)²])`
-/

namespace A000266.P9136313514033189225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055087 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A000266.P9136313514033189225

/-!
# A000267: Integer part of square root of 4n+1.

The programs for A000267, the canonical program `A000267.P8737011026442136894` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000267 has offset 0).

The definition of A000267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000267.P8737011026442136894

`floor(sqrt(4*n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000267

/-- `floor(sqrt(4*n+1))` -/
def P8737011026442136894.Spec : Prop :=
  ∀ n, (P8737011026442136894.a n : ℤ) = A000267 n

theorem P8737011026442136894.correct : P8737011026442136894.Spec := by
  intro n
  simp only [A000267]

end A000267

/-! ## A000267.P13722092651358132432

`1+A055086(n)`
-/

namespace A000267.P13722092651358132432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A055086 n

end

end A000267.P13722092651358132432

namespace A000267

/-- `1+A055086(n)` -/
def P13722092651358132432.Spec : Prop :=
  ∀ n, P13722092651358132432.a n = A000267 n

end A000267

/-! ## A000267.P13815967492844591403

`A000196(4*n+1)`
-/

namespace A000267.P13815967492844591403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (4 * n + 1)

end

end A000267.P13815967492844591403

namespace A000267

/-- `A000196(4*n+1)` -/
def P13815967492844591403.Spec : Prop :=
  ∀ n, P13815967492844591403.a n = A000267 n

end A000267

/-! ## A000267.P93065058772597240

`∑[char[∑[∑[n%2]]]]`
-/

namespace A000267.P93065058772597240
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P93065058772597240

namespace A000267

/-- `∑[char[∑[∑[n%2]]]]` -/
def P93065058772597240.Spec : Prop :=
  ∀ n, (P93065058772597240.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P3121734245959242671

`∑[char[∑[∑[and(1, n)]]]]`
-/

namespace A000267.P3121734245959242671
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P3121734245959242671

namespace A000267

/-- `∑[char[∑[∑[and(1, n)]]]]` -/
def P3121734245959242671.Spec : Prop :=
  ∀ n, (P3121734245959242671.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P15125877535979055210

`ceil(record[sqrt(xor(3, n))])-1`
-/

namespace A000267.P15125877535979055210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ - 1

end

end A000267.P15125877535979055210

namespace A000267

/-- `ceil(record[sqrt(xor(3, n))])-1` -/
def P15125877535979055210.Spec : Prop :=
  ∀ n, P15125877535979055210.a n = A000267 n

end A000267

/-! ## A000267.P16418044436062417456

`∑[char[∑[∑[char[or(1, n)]]]]]`
-/

namespace A000267.P16418044436062417456
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P16418044436062417456

namespace A000267

/-- `∑[char[∑[∑[char[or(1, n)]]]]]` -/
def P16418044436062417456.Spec : Prop :=
  ∀ n, (P16418044436062417456.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P2113390486773474270

`a(round(n-sqrt(n)))+1` with `a(0)=1`
-/

namespace A000267.P2113390486773474270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat + 1

end

end A000267.P2113390486773474270

namespace A000267

/-- `a(round(n-sqrt(n)))+1` -/
def P2113390486773474270.Spec : Prop :=
  ∀ n, (P2113390486773474270.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P1178404407642158558

`∑[char[∑[n-a(n-1)]]]` with `a(0)=0`
-/

namespace A000267.P1178404407642158558
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  (n : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P1178404407642158558

namespace A000267

/-- `∑[char[∑[n-a(n-1)]]]` -/
def P1178404407642158558.Spec : Prop :=
  ∀ n, (P1178404407642158558.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P835678579158520873

`∑[char[∑[∑[char[lcm(2, n+1)]]]]]`
-/

namespace A000267.P835678579158520873
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P835678579158520873

namespace A000267

/-- `∑[char[∑[∑[char[lcm(2, n+1)]]]]]` -/
def P835678579158520873.Spec : Prop :=
  ∀ n, (P835678579158520873.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P12460410250819528642

`1+a(n-floor(sqrt(n+1)))` with `a(0)=1`
-/

namespace A000267.P12460410250819528642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - Nat.sqrt (n + 1))

end

end A000267.P12460410250819528642

namespace A000267

/-- `1+a(n-floor(sqrt(n+1)))` -/
def P12460410250819528642.Spec : Prop :=
  ∀ n, (P12460410250819528642.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P16016448468163625458

`comp[a(n-2)+n+1]-(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A000267.P16016448468163625458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A000267.P16016448468163625458

namespace A000267

/-- `comp[a(n-2)+n+1]-(n+1)` -/
def P16016448468163625458.Spec : Prop :=
  ∀ n, P16016448468163625458.a n = A000267 n

end A000267

/-! ## A000267.P17562768340644467809

`2-floor(1/n-a(n-a(n-1)))` with `a(0)=1`
-/

namespace A000267.P17562768340644467809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊1 / (n : ℚ) - (a ((n : ℤ) - a (n - 1)).toNat : ℚ)⌋

end

end A000267.P17562768340644467809

namespace A000267

/-- `2-floor(1/n-a(n-a(n-1)))` -/
def P17562768340644467809.Spec : Prop :=
  ∀ n, P17562768340644467809.a n = A000267 n

end A000267

/-! ## A000267.P3548665426191716909

`2-(floor(n-a(n-a(n-1)))-n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A000267.P3548665426191716909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((n : ℤ) - a ((n : ℤ) - a (n - 1)).toNat - (n : ℤ))

end

end A000267.P3548665426191716909

namespace A000267

/-- `2-(floor(n-a(n-a(n-1)))-n)` -/
def P3548665426191716909.Spec : Prop :=
  ∀ n, P3548665426191716909.a n = A000267 n

end A000267

/-! ## A000267.P16121635545753247138

`∑[A240025(n)]`
-/

namespace A000267.P16121635545753247138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P16121635545753247138

namespace A000267

/-- `∑[A240025(n)]` -/
def P16121635545753247138.Spec : Prop :=
  ∀ n, P16121635545753247138.a n = A000267 n

end A000267

/-! ## A000267.P18371596029397564089

`A172471(Δ[n²])`
-/

namespace A000267.P18371596029397564089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000267.P18371596029397564089

namespace A000267

/-- `A172471(Δ[n²])` -/
def P18371596029397564089.Spec : Prop :=
  ∀ n, P18371596029397564089.a n = A000267 n

end A000267

/-! ## A000267.P3552355490016951203

`∑[char[A002620(n)]]`
-/

namespace A000267.P3552355490016951203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P3552355490016951203

namespace A000267

/-- `∑[char[A002620(n)]]` -/
def P3552355490016951203.Spec : Prop :=
  ∀ n, (P3552355490016951203.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P1433449269079753067

`∑[char[A008130(n)]]`
-/

namespace A000267.P1433449269079753067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P1433449269079753067

namespace A000267

/-- `∑[char[A008130(n)]]` -/
def P1433449269079753067.Spec : Prop :=
  ∀ n, (P1433449269079753067.a n : ℤ) = A000267 n

end A000267

/-! ## A000267.P749803207599201154

`∑[char[A008133(n)]]`
-/

namespace A000267.P749803207599201154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000267.P749803207599201154

namespace A000267

/-- `∑[char[A008133(n)]]` -/
def P749803207599201154.Spec : Prop :=
  ∀ n, (P749803207599201154.a n : ℤ) = A000267 n

end A000267

/-!
# A000268: E.g.f.: -log(1+log(1+log(1-x))).

The programs for A000268, there is no canonical definition to state claims against.
-/

/-! ## A000268.P4364453664209371720

`abs(A039815(∑[n]+1))`
-/

namespace A000268.P4364453664209371720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A000268.P4364453664209371720

/-! ## A000268.P5947835255474425998

`record[A039815(n+1)/A130595(n)]`
-/

namespace A000268.P5947835255474425998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039815 (n + 1) : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000268.P5947835255474425998

/-! ## A000268.P6469184402699746283

`record[gcd(A002262(n), A039815(n+1))]`
-/

namespace A000268.P6469184402699746283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A039815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000268.P6469184402699746283

/-! ## A000268.P9469147041862180

`lcm(A000034(2*n), A039815(∑[n]+1))`
-/

namespace A000268.P9469147041862180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (2 * n)) (A039815 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A000268.P9469147041862180

/-! ## A000268.P10641208019710281737

`gcd(A000038(n), A039815(A000124(n)))`
-/

namespace A000268.P10641208019710281737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039815 (A000124 n).toNat)

end

end A000268.P10641208019710281737

/-! ## A000268.P16131085160147213037

`lcm(A020985(n), A039815(A000124(n)))`
-/

namespace A000268.P16131085160147213037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A039815 (A000124 n).toNat)

end

end A000268.P16131085160147213037

/-! ## A000268.P4011948009237068128

`A111933(∑[n+3]+1)`
-/

namespace A000268.P4011948009237068128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000268.P4011948009237068128

/-!
# A000269: Number of trees with n nodes, 3 of which are labeled.

The programs for A000269, there is no canonical definition to state claims against.
-/

/-! ## A000269.P2882743129413604835

`A000524(n+3)-2*A000243(n+3)`
-/

namespace A000269.P2882743129413604835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000524 (n + 3) - 2 * A000243 (n + 3)

end

end A000269.P2882743129413604835

/-! ## A000269.P11366298036274925499

`A034799(A167614(n+2))`
-/

namespace A000269.P11366298036274925499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A167614 (n + 2)).toNat

end

end A000269.P11366298036274925499

/-! ## A000269.P7958086255765169925

`A034799(A141214(n)+6)`
-/

namespace A000269.P7958086255765169925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A141214 n + 6).toNat

end

end A000269.P7958086255765169925

/-! ## A000269.P18014900439164822302

`A034799(A052905(n)+8)`
-/

namespace A000269.P18014900439164822302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (A052905 n + 8).toNat

end

end A000269.P18014900439164822302

/-! ## A000269.P16873030385428982661

`A034799(eq[2, A141169(n)])`
-/

namespace A000269.P16873030385428982661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000269.P16873030385428982661

/-!
# A000270: For n >= 2, a(n) = b(n+1)+b(n)+b(n-1), where the b(i) are the ménage numbers A000179; a(0)=a(1)=1.

The programs for A000270, there is no canonical definition to state claims against.
-/

/-! ## A000270.P17125293903300203754

`round(1/acot(n))*A127548(n)`
-/

namespace A000270.P17125293903300203754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A127548 n

end

end A000270.P17125293903300203754

/-! ## A000270.P7864512528798130395

`A028310(n)*A127548(n)`
-/

namespace A000270.P7864512528798130395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A127548 n

end

end A000270.P7864512528798130395

/-! ## A000270.P8843016581752196999

`A123108(2*n)*A127548(n)`
-/

namespace A000270.P8843016581752196999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A127548 n

end

end A000270.P8843016581752196999

/-! ## A000270.P785060053251254687

`A000007(n)+n*A127548(n)`
-/

namespace A000270.P785060053251254687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A127548 n

end

end A000270.P785060053251254687

/-! ## A000270.P6699875373288031561

`A007318(A000124(n))*A127548(n)`
-/

namespace A000270.P6699875373288031561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A127548 n

end

end A000270.P6699875373288031561

/-! ## A000270.P16829800917418185075

`A008619(A004273(n))*A127548(n)`
-/

namespace A000270.P16829800917418185075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A127548 n

end

end A000270.P16829800917418185075

/-! ## A000270.P13977193884637110686

`A127548(n)*A162514(A133263(n))`
-/

namespace A000270.P13977193884637110686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127548 n * A162514 (A133263 n).toNat

end

end A000270.P13977193884637110686

/-! ## A000270.P9720638942619854771

`A003602(A004280(n+1))*A127548(n)`
-/

namespace A000270.P9720638942619854771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A004280 (n + 1)).toNat * A127548 n

end

end A000270.P9720638942619854771

/-!
# A000271: Sums of ménage numbers.

The programs for A000271, the canonical program `A000271.P15501296821231376160` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000271 has offset 0).

The definition of A000271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000271.P15501296821231376160

`(n-1)*a(n-2)+(n-1)*a(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000271

/-- `(n-1)*a(n-2)+(n-1)*a(n-1)+a(n-3)` -/
def P15501296821231376160.Spec : Prop :=
  ∀ n, P15501296821231376160.a n = A000271 n

theorem P15501296821231376160.correct : P15501296821231376160.Spec := by
  intro n
  simp only [A000271]

end A000271

/-! ## A000271.P9644642421525428027

`∑[A000179(n)]`
-/

namespace A000271.P9644642421525428027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000271.P9644642421525428027

namespace A000271

/-- `∑[A000179(n)]` -/
def P9644642421525428027.Spec : Prop :=
  ∀ n, P9644642421525428027.a n = A000271 n

end A000271

/-! ## A000271.P1068268325085010589

`A156368(∑[n])`
-/

namespace A000271.P1068268325085010589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000271.P1068268325085010589

namespace A000271

/-- `A156368(∑[n])` -/
def P1068268325085010589.Spec : Prop :=
  ∀ n, P1068268325085010589.a n = A000271 n

end A000271

/-! ## A000271.P16165383713394505242

`∑[A156996(∑[n])]`
-/

namespace A000271.P16165383713394505242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000271.P16165383713394505242

namespace A000271

/-- `∑[A156996(∑[n])]` -/
def P16165383713394505242.Spec : Prop :=
  ∀ n, P16165383713394505242.a n = A000271 n

end A000271

/-! ## A000271.P13817539847063419966

`∑[A102761(n)]-1`
-/

namespace A000271.P13817539847063419966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000271.P13817539847063419966

namespace A000271

/-- `∑[A102761(n)]-1` -/
def P13817539847063419966.Spec : Prop :=
  ∀ n, P13817539847063419966.a n = A000271 n

end A000271

/-! ## A000271.P9108275461349917022

`A058057(∑[n]+n)`
-/

namespace A000271.P9108275461349917022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000271.P9108275461349917022

namespace A000271

/-- `A058057(∑[n]+n)` -/
def P9108275461349917022.Spec : Prop :=
  ∀ n, P9108275461349917022.a n = A000271 n

end A000271

/-! ## A000271.P4841424492221736912

`∑[A058087(∑[n]+n)]`
-/

namespace A000271.P4841424492221736912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000271.P4841424492221736912

namespace A000271

/-- `∑[A058087(∑[n]+n)]` -/
def P4841424492221736912.Spec : Prop :=
  ∀ n, P4841424492221736912.a n = A000271 n

end A000271

/-! ## A000271.P1935340845658783472

`A127548(n)-a(n-1)` with `a(0)=1`
-/

namespace A000271.P1935340845658783472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127548 n - a (n - 1)

end

end A000271.P1935340845658783472

namespace A000271

/-- `A127548(n)-a(n-1)` -/
def P1935340845658783472.Spec : Prop :=
  ∀ n, P1935340845658783472.a n = A000271 n

end A000271

/-! ## A000271.P16441200202813296758

`A060576(n)*A156368(A000217(n))`
-/

namespace A000271.P16441200202813296758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A156368 (A000217 n).toNat

end

end A000271.P16441200202813296758

namespace A000271

/-- `A060576(n)*A156368(A000217(n))` -/
def P16441200202813296758.Spec : Prop :=
  ∀ n, P16441200202813296758.a n = A000271 n

end A000271

/-! ## A000271.P7480766247345550096

`or(A000007(n), A156368(A000217(n)))`
-/

namespace A000271.P7480766247345550096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A156368 (A000217 n).toNat)

end

end A000271.P7480766247345550096

namespace A000271

/-- `or(A000007(n), A156368(A000217(n)))` -/
def P7480766247345550096.Spec : Prop :=
  ∀ n, P7480766247345550096.a n = A000271 n

end A000271

/-!
# A000272: Number of trees on n labeled nodes: n^(n-2) with a(0)=1.

The programs for A000272, there is no canonical definition to state claims against.
-/

/-! ## A000272.P17749663843868316663

`n^floor(n-atan(n))`
-/

namespace A000272.P17749663843868316663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A000272.P17749663843868316663

/-! ## A000272.P774684406182254926

`n^(n-ceil(atan(n)))`
-/

namespace A000272.P774684406182254926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A000272.P774684406182254926

/-! ## A000272.P11075546113380091599

`n^(abs(1-n)-1)`
-/

namespace A000272.P11075546113380091599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)

end

end A000272.P11075546113380091599

/-! ## A000272.P6846070025126485176

`floor(n^floor(log(cosh(1-n))))`
-/

namespace A000272.P6846070025126485176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌊Real.log (Real.cosh (1 - (n : ℤ) : ℝ))⌋ : ℤ)⌋

end

end A000272.P6846070025126485176

/-! ## A000272.P2214402479051048758

`floor(n^(n-2%(n+1)))`
-/

namespace A000272.P2214402479051048758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)⌋

end

end A000272.P2214402479051048758

/-! ## A000272.P7862091375668440404

`ceil(n^((n-2)%(n+1)))`
-/

namespace A000272.P7862091375668440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) : ℤ)⌉

end

end A000272.P7862091375668440404

/-! ## A000272.P3950729221713498071

`ceil((C(2, n)+n)^(n-2))`
-/

namespace A000272.P3950729221713498071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 n + n : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A000272.P3950729221713498071

/-! ## A000272.P10709280701084649945

`abs((-n)^((2*n)%(n+2)))`
-/

namespace A000272.P10709280701084649945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(n : ℤ)) ^ (2 * n % (n + 2))|

end

end A000272.P10709280701084649945

/-! ## A000272.P4348790181996623678

`ceil(gcd(n, (n+2)!)^(n-2))`
-/

namespace A000272.P4348790181996623678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd n (Nat.factorial (n + 2)) : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A000272.P4348790181996623678

/-! ## A000272.P482989760699853153

`round((C(n, n²)+n)^(n-2))`
-/

namespace A000272.P482989760699853153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n (n ^ 2) + n : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A000272.P482989760699853153

/-!
# A000273: Number of unlabeled simple digraphs with n nodes.

The programs for A000273, there is no canonical definition to state claims against.
-/

/-! ## A000273.P1702430365199360991

`∑[A053598(n)]`
-/

namespace A000273.P1702430365199360991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000273.P1702430365199360991

/-! ## A000273.P15125968642708462461

`∑[A217654(∑[n])]`
-/

namespace A000273.P15125968642708462461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000273.P15125968642708462461

/-! ## A000273.P5732722954569576155

`A127909(n)+A000088(n)`
-/

namespace A000273.P5732722954569576155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127909 n + A000088 n

end

end A000273.P5732722954569576155

/-! ## A000273.P11730381414316471498

`A127909(n)+∑[A002494(n)]`
-/

namespace A000273.P11730381414316471498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127909 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000273.P11730381414316471498

/-! ## A000273.P16987612339449077479

`A327805(∑[n])+A127909(n)`
-/

namespace A000273.P16987612339449077479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j) + A127909 n

end

end A000273.P16987612339449077479

/-!
# A000274: Number of permutations of length n with 2 consecutive ascending pairs.

The programs for A000274, the canonical program `A000274.P17265873332483609564` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000274 has offset 1).

The definition of A000274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000274.P17265873332483609564

`n²/(n-1)*a(n-1)-(-1)^(n+1)*n/2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000274

/-- `n²/(n-1)*a(n-1)-(-1)^(n+1)*n/2` -/
def P17265873332483609564.Spec : Prop :=
  ∀ n, P17265873332483609564.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P16580585068061976354

`A000166(n)*n/2`
-/

namespace A000274.P16580585068061976354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n * (n : ℤ) : ℚ) / 2

end

end A000274.P16580585068061976354

namespace A000274

/-- `A000166(n)*n/2` -/
def P16580585068061976354.Spec : Prop :=
  ∀ n, P16580585068061976354.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P13752521971395207548

`Δ[A174318(n)/2]`
-/

namespace A000274.P13752521971395207548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174318 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000274.P13752521971395207548

namespace A000274

/-- `Δ[A174318(n)/2]` -/
def P13752521971395207548.Spec : Prop :=
  ∀ n, P13752521971395207548.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P17967593648265978555

`Δ[A212291(n)/4]`
-/

namespace A000274.P17967593648265978555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212291 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000274.P17967593648265978555

namespace A000274

/-- `Δ[A212291(n)/4]` -/
def P17967593648265978555.Spec : Prop :=
  ∀ n, P17967593648265978555.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P6673944556006866575

`lcm(n, A182386(n))/2`
-/

namespace A000274.P6673944556006866575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A182386 n) : ℚ) / 2

end

end A000274.P6673944556006866575

namespace A000274

/-- `lcm(n, A182386(n))/2` -/
def P6673944556006866575.Spec : Prop :=
  ∀ n, P6673944556006866575.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P15448415491990241587

`n/2*A008290(∑[n])`
-/

namespace A000274.P15448415491990241587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A008290 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A000274.P15448415491990241587

namespace A000274

/-- `n/2*A008290(∑[n])` -/
def P15448415491990241587.Spec : Prop :=
  ∀ n, P15448415491990241587.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P10371908729198100670

`Δ[A216779(n)-floor(n/2)]`
-/

namespace A000274.P10371908729198100670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216779 n - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000274.P10371908729198100670

namespace A000274

/-- `Δ[A216779(n)-floor(n/2)]` -/
def P10371908729198100670.Spec : Prop :=
  ∀ n, P10371908729198100670.a n = A000274 (n + 1)

end A000274

/-! ## A000274.P3847323999923913127

`n*(n!-A002467(n))/2`
-/

namespace A000274.P3847323999923913127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((Nat.factorial n : ℤ) - A002467 n : ℚ) / 2)

end

end A000274.P3847323999923913127

namespace A000274

/-- `n*(n!-A002467(n))/2` -/
def P3847323999923913127.Spec : Prop :=
  ∀ n, P3847323999923913127.a n = (A000274 (n + 1) : ℚ)

end A000274

/-! ## A000274.P10271378883483216490

`A000387(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A000274.P10271378883483216490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000387 n + (n : ℤ) * a (n - 1)

end

end A000274.P10271378883483216490

namespace A000274

/-- `A000387(n)+n*a(n-1)` -/
def P10271378883483216490.Spec : Prop :=
  ∀ n, P10271378883483216490.a n = A000274 (n + 1)

end A000274

/-! ## A000274.P3420858015252094316

`A003221(n+1)-A000387(n)`
-/

namespace A000274.P3420858015252094316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003221 (n + 1) - A000387 n

end

end A000274.P3420858015252094316

namespace A000274

/-- `A003221(n+1)-A000387(n)` -/
def P3420858015252094316.Spec : Prop :=
  ∀ n, P3420858015252094316.a n = A000274 (n + 1)

end A000274

/-!
# A000275: Coefficients of a Bessel function (reciprocal of J_0(z)); also pairs of permutations with rise/rise forbidden.

The programs for A000275, there is no canonical definition to state claims against.
-/

/-! ## A000275.P12143381796440940436

`abs(A055133(∑[n]))`
-/

namespace A000275.P12143381796440940436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055133 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A000275.P12143381796440940436

/-! ## A000275.P6383753511998159533

`A340986(∑[n+2]-1)`
-/

namespace A000275.P6383753511998159533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000275.P6383753511998159533

/-! ## A000275.P10467326038899430071

`gcd(A055133(A179865(n+1)), A151933(n))`
-/

namespace A000275.P10467326038899430071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055133 (A179865 (n + 1)).toNat) (A151933 n)

end

end A000275.P10467326038899430071

/-! ## A000275.P9730280733793503972

`A192721(∑[abs(1-n)])`
-/

namespace A000275.P9730280733793503972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000275.P9730280733793503972

/-! ## A000275.P1690251764175999265

`A212855(∑[n]+2)`
-/

namespace A000275.P1690251764175999265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000275.P1690251764175999265

/-!
# A000276: Associated Stirling numbers.

The programs for A000276, the canonical program `A000276.P1124150142739174409` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000276 has offset 4).

The definition of A000276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000276.P1124150142739174409

`A000254(n+3)-(n+3)!-(n+2)!`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000276

/-- `A000254(n+3)-(n+3)!-(n+2)!` -/
def P1124150142739174409.Spec : Prop :=
  ∀ n, P1124150142739174409.a n = A000276 (n + 4)

theorem P1124150142739174409.correct : P1124150142739174409.Spec := by
  intro n
  simp only [A000276, Nat.add_sub_cancel]

end A000276

/-! ## A000276.P7074576655692100840

`(n+3)!*∑[1/(n+2)]`
-/

namespace A000276.P7074576655692100840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000276.P7074576655692100840

namespace A000276

/-- `(n+3)!*∑[1/(n+2)]` -/
def P7074576655692100840.Spec : Prop :=
  ∀ n, P7074576655692100840.a n = (A000276 (n + 4) : ℚ)

end A000276

/-! ## A000276.P4397641167621026428

`∑[2/(n+2)]*∏[n+3]`
-/

namespace A000276.P4397641167621026428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A000276.P4397641167621026428

namespace A000276

/-- `∑[2/(n+2)]*∏[n+3]` -/
def P4397641167621026428.Spec : Prop :=
  ∀ n, P4397641167621026428.a n = (A000276 (n + 4) : ℚ)

end A000276

/-! ## A000276.P14577449522966334496

`record[n*(a(n-1)+(n-2)!)]` with `a(0)=3, a(1)=-1`
-/

namespace A000276.P14577449522966334496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) + (Nat.factorial ((n : ℤ) - 2).toNat : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000276.P14577449522966334496

namespace A000276

/-- `record[n*(a(n-1)+(n-2)!)]` -/
def P14577449522966334496.Spec : Prop :=
  ∀ n, P14577449522966334496.a n = A000276 (n + 4)

end A000276

/-! ## A000276.P18340554105568436796

`abs((a(n-1)+(n+1)!)*(n+3))` with `a(0)=3`
-/

namespace A000276.P18340554105568436796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + Nat.factorial (n + 1)) * (n + 3)

end

end A000276.P18340554105568436796

namespace A000276

/-- `abs((a(n-1)+(n+1)!)*(n+3))` -/
def P18340554105568436796.Spec : Prop :=
  ∀ n, (P18340554105568436796.a n : ℤ) = A000276 (n + 4)

end A000276

/-! ## A000276.P13400319728803611703

`floor((a(n-1)+(n+1)!)*(n+3))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A000276.P13400319728803611703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + Nat.factorial (n + 1)) * (n + 3)

end

end A000276.P13400319728803611703

namespace A000276

/-- `floor((a(n-1)+(n+1)!)*(n+3))` -/
def P13400319728803611703.Spec : Prop :=
  ∀ n, (P13400319728803611703.a n : ℤ) = A000276 (n + 4)

end A000276

/-! ## A000276.P9691391786483974432

`ceil((a(n-1)+(n+1)!)*(n+3))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A000276.P9691391786483974432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + Nat.factorial (n + 1)) * (n + 3)

end

end A000276.P9691391786483974432

namespace A000276

/-- `ceil((a(n-1)+(n+1)!)*(n+3))` -/
def P9691391786483974432.Spec : Prop :=
  ∀ n, (P9691391786483974432.a n : ℤ) = A000276 (n + 4)

end A000276

/-! ## A000276.P4889852860962236423

`round((a(n-1)+(n+1)!)*(n+3))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A000276.P4889852860962236423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + Nat.factorial (n + 1)) * (n + 3)

end

end A000276.P4889852860962236423

namespace A000276

/-- `round((a(n-1)+(n+1)!)*(n+3))` -/
def P4889852860962236423.Spec : Prop :=
  ∀ n, (P4889852860962236423.a n : ℤ) = A000276 (n + 4)

end A000276

/-! ## A000276.P14323391224496871650

`A052518(n+4)/2`
-/

namespace A000276.P14323391224496871650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052518 (n + 4) : ℚ) / 2

end

end A000276.P14323391224496871650

namespace A000276

/-- `A052518(n+4)/2` -/
def P14323391224496871650.Spec : Prop :=
  ∀ n, P14323391224496871650.a n = (A000276 (n + 4) : ℚ)

end A000276

/-! ## A000276.P7635087140069888409

`A079510(∑[n+3]+2)`
-/

namespace A000276.P7635087140069888409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000276.P7635087140069888409

namespace A000276

/-- `A079510(∑[n+3]+2)` -/
def P7635087140069888409.Spec : Prop :=
  ∀ n, P7635087140069888409.a n = A000276 (n + 4)

end A000276

/-!
# A000277: 3*n - 2*floor(sqrt(4*n+5)) + 5.

The programs for A000277, the canonical program `A000277.P11281944494231816795` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000277 has offset 0).

The definition of A000277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n-2*floor(sqrt(4*n+5))+5` (program `A000277.P11281944494231816795`, by `A000277.P11281944494231816795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000277.P11281944494231816795

`3*n-2*floor(sqrt(4*n+5))+5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000277

/-- `3*n-2*floor(sqrt(4*n+5))+5` -/
def P11281944494231816795.Spec : Prop :=
  ∀ n, P11281944494231816795.a n = A000277 n

theorem P11281944494231816795.correct : P11281944494231816795.Spec := by
  intro n
  simp only [A000277]

end A000277

/-! ## A000277.P12938165397333093462

`∑[3%A028330(n)]`
-/

namespace A000277.P12938165397333093462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A028330 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P12938165397333093462

namespace A000277

/-- `∑[3%A028330(n)]` -/
def P12938165397333093462.Spec : Prop :=
  ∀ n, P12938165397333093462.a n = A000277 n

end A000277

/-! ## A000277.P6626275712417803796

`∑[A275161(n+1)-3]`
-/

namespace A000277.P6626275712417803796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275161 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P6626275712417803796

namespace A000277

/-- `∑[A275161(n+1)-3]` -/
def P6626275712417803796.Spec : Prop :=
  ∀ n, P6626275712417803796.a n = A000277 n

end A000277

/-! ## A000277.P14571638547962602744

`∑[4-A265411(n+2)]`
-/

namespace A000277.P14571638547962602744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A265411 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P14571638547962602744

namespace A000277

/-- `∑[4-A265411(n+2)]` -/
def P14571638547962602744.Spec : Prop :=
  ∀ n, P14571638547962602744.a n = A000277 n

end A000277

/-! ## A000277.P13836043404469619803

`∑[C(3, A237347(n+1))]`
-/

namespace A000277.P13836043404469619803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A237347 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P13836043404469619803

namespace A000277

/-- `∑[C(3, A237347(n+1))]` -/
def P13836043404469619803.Spec : Prop :=
  ∀ n, (P13836043404469619803.a n : ℤ) = A000277 n

end A000277

/-! ## A000277.P5282151355492503322

`∑[C(4, dr(A253607(n)))-3]`
-/

namespace A000277.P5282151355492503322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (SequenceMachineLib.digitalRoot (A253607 n)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P5282151355492503322

namespace A000277

/-- `∑[C(4, dr(A253607(n)))-3]` -/
def P5282151355492503322.Spec : Prop :=
  ∀ n, P5282151355492503322.a n = A000277 n

end A000277

/-! ## A000277.P14470894889985822632

`∑[A000217(2-Δ[A000267(n)])]`
-/

namespace A000277.P14470894889985822632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P14470894889985822632

namespace A000277

/-- `∑[A000217(2-Δ[A000267(n)])]` -/
def P14470894889985822632.Spec : Prop :=
  ∀ n, P14470894889985822632.a n = A000277 n

end A000277

/-! ## A000277.P1712428428134115761

`∑[A061095(2-Δ[A000267(n)])]`
-/

namespace A000277.P1712428428134115761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061095 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P1712428428134115761

namespace A000277

/-- `∑[A061095(2-Δ[A000267(n)])]` -/
def P1712428428134115761.Spec : Prop :=
  ∀ n, P1712428428134115761.a n = A000277 n

end A000277

/-! ## A000277.P8786680629775120268

`∑[3/A061095(A000267(Δ[A000267(n)]))]`
-/

namespace A000277.P8786680629775120268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A061095 (A000267 (f2 (n + 1) - f2 n).toNat).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P8786680629775120268

namespace A000277

/-- `∑[3/A061095(A000267(Δ[A000267(n)]))]` -/
def P8786680629775120268.Spec : Prop :=
  ∀ n, P8786680629775120268.a n = (A000277 n : ℚ)

end A000277

/-! ## A000277.P15189196292705104

`∑[3^(ceil(ratio[A334742(n+1)])-1)]`
-/

namespace A000277.P15189196292705104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉ - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P15189196292705104

namespace A000277

/-- `∑[3^(ceil(ratio[A334742(n+1)])-1)]` -/
def P15189196292705104.Spec : Prop :=
  ∀ n, P15189196292705104.a n = (A000277 n : ℚ)

end A000277

/-! ## A000277.P5843572100355612073

`∑[A172273(2-Δ[A055086(n)])]`
-/

namespace A000277.P5843572100355612073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P5843572100355612073

namespace A000277

/-- `∑[A172273(2-Δ[A055086(n)])]` -/
def P5843572100355612073.Spec : Prop :=
  ∀ n, P5843572100355612073.a n = A000277 n

end A000277

/-! ## A000277.P1929589402249777647

`∑[A336501(Δ[A027434(n+1)]+2)]`
-/

namespace A000277.P1929589402249777647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336501 ((f2 (n + 1) - f2 n + 2).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P1929589402249777647

namespace A000277

/-- `∑[A336501(Δ[A027434(n+1)]+2)]` -/
def P1929589402249777647.Spec : Prop :=
  ∀ n, P1929589402249777647.a n = A000277 n

end A000277

/-! ## A000277.P3350143204075517902

`∑[A000212(3-Δ[A027434(n+1)])]`
-/

namespace A000277.P3350143204075517902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (3 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P3350143204075517902

namespace A000277

/-- `∑[A000212(3-Δ[A027434(n+1)])]` -/
def P3350143204075517902.Spec : Prop :=
  ∀ n, P3350143204075517902.a n = A000277 n

end A000277

/-! ## A000277.P9476771634901535930

`∑[A001045(Δ[3*n+1-A055086(n)])]`
-/

namespace A000277.P9476771634901535930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A055086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000277.P9476771634901535930

namespace A000277

/-- `∑[A001045(Δ[3*n+1-A055086(n)])]` -/
def P9476771634901535930.Spec : Prop :=
  ∀ n, P9476771634901535930.a n = A000277 n

end A000277

/-! ## A000277.P5757174200146297732

`record[record[A087507(n)]-A027709(n)]`
-/

namespace A000277.P5757174200146297732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A027709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000277.P5757174200146297732

namespace A000277

/-- `record[record[A087507(n)]-A027709(n)]` -/
def P5757174200146297732.Spec : Prop :=
  ∀ n, P5757174200146297732.a n = A000277 n

end A000277

/-!
# A000278: a(n) = a(n-1) + a(n-2)^2 for n >= 2 with a(0) = 0 and a(1) = 1.

The programs for A000278, the canonical program `A000278.P963698375821745625` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000278 has offset 0).

The definition of A000278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)²` (program `A000278.P963698375821745625`, by `A000278.P963698375821745625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000278.P963698375821745625

`a(n-1)+a(n-2)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000278

/-- `a(n-1)+a(n-2)²` -/
def P963698375821745625.Spec : Prop :=
  ∀ n, (P963698375821745625.a n : ℤ) = A000278 n

theorem P963698375821745625.correct : P963698375821745625.Spec := by
  intro n
  simp only [A000278]

end A000278

/-! ## A000278.P6563548643484471948

`a(n-1)+a(n-2)^2` with `a(0)=0, a(1)=1`
-/

namespace A000278.P6563548643484471948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) ^ 2

end

end A000278.P6563548643484471948

namespace A000278

/-- `a(n-1)+a(n-2)^2` -/
def P6563548643484471948.Spec : Prop :=
  ∀ n, (P6563548643484471948.a n : ℤ) = A000278 n

theorem P6563548643484471948.correct : P6563548643484471948.Spec := by
  intro n
  simp only [A000278, Nat.add_sub_cancel, A000278.P6563548643484471948.a, A000278.P963698375821745625.a, SequenceMachineLib.memo_apply]

end A000278

/-! ## A000278.P18009547840375357226

`a(n-1)+a(n-2)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000278.P18009547840375357226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 2)

end

end A000278.P18009547840375357226

namespace A000278

/-- `a(n-1)+a(n-2)*a(n-2)` -/
def P18009547840375357226.Spec : Prop :=
  ∀ n, (P18009547840375357226.a n : ℤ) = A000278 n

theorem P18009547840375357226.correct : P18009547840375357226.Spec := by
  intro n
  simp only [A000278, Nat.add_sub_cancel, A000278.P18009547840375357226.a, A000278.P963698375821745625.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000278

/-! ## A000278.P12227751827505983453

`2*a(n-1)-(a(n-1)-a(n-2)²)` with `a(0)=0, a(1)=1`
-/

namespace A000278.P12227751827505983453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - (a (n - 1) - a (n - 2) ^ 2)

end

end A000278.P12227751827505983453

namespace A000278

/-- `2*a(n-1)-(a(n-1)-a(n-2)²)` -/
def P12227751827505983453.Spec : Prop :=
  ∀ n, P12227751827505983453.a n = A000278 n

end A000278

/-! ## A000278.P13257971498977934659

`a(n-1)-((1-a(n-2))*a(n-2)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A000278.P13257971498977934659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((1 - a (n - 2)) * a (n - 2) - a (n - 2))

end

end A000278.P13257971498977934659

namespace A000278

/-- `a(n-1)-((1-a(n-2))*a(n-2)-a(n-2))` -/
def P13257971498977934659.Spec : Prop :=
  ∀ n, P13257971498977934659.a n = A000278 n

end A000278

/-!
# A000279: Card matching: coefficients B[n,1] of t in the reduced hit polynomial A[n,n,n](t).

The programs for A000279, there is no canonical definition to state claims against.
-/

/-! ## A000279.P13897025546675301740

`3*(n+1)*A262407(n+1)`
-/

namespace A000279.P13897025546675301740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A262407 (n + 1)

end

end A000279.P13897025546675301740

/-! ## A000279.P1304882494217075222

`(n+1)²*(A000172(n+1)+4*A000172(n))/(n+2)`
-/

namespace A000279.P1304882494217075222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (A000172 (n + 1) + 4 * A000172 n) : ℚ) / (n + 2 : ℚ)

end

end A000279.P1304882494217075222

/-! ## A000279.P5118510935515914893

`A059066(A143689(n+1))`
-/

namespace A000279.P5118510935515914893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A143689 (n + 1)).toNat

end

end A000279.P5118510935515914893

/-! ## A000279.P5887603935170104478

`A059066(∑[A016777(n)]+1)`
-/

namespace A000279.P5887603935170104478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A000279.P5887603935170104478

/-! ## A000279.P13303064372157326993

`A059066(A000326(n+1)+1)`
-/

namespace A000279.P13303064372157326993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A000326 (n + 1) + 1).toNat

end

end A000279.P13303064372157326993

/-! ## A000279.P8449733291027269860

`A059066(eq[1, A059066(n)]+2)`
-/

namespace A000279.P8449733291027269860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A000279.P8449733291027269860

/-!
# A000280: a(n) = a(n-1) + a(n-2)^3.

The programs for A000280, the canonical program `A000280.P784997549664006324` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000280 has offset 0).

The definition of A000280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)^3` (program `A000280.P784997549664006324`, by `A000280.P784997549664006324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000280.P784997549664006324

`a(n-1)+a(n-2)^3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000280

/-- `a(n-1)+a(n-2)^3` -/
def P784997549664006324.Spec : Prop :=
  ∀ n, (P784997549664006324.a n : ℤ) = A000280 n

theorem P784997549664006324.correct : P784997549664006324.Spec := by
  intro n
  simp only [A000280]

end A000280

/-! ## A000280.P17513116014844279718

`a(n-1)-(-a(n-2))^3` with `a(0)=0, a(1)=1`
-/

namespace A000280.P17513116014844279718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-a (n - 2)) ^ 3

end

end A000280.P17513116014844279718

namespace A000280

/-- `a(n-1)-(-a(n-2))^3` -/
def P17513116014844279718.Spec : Prop :=
  ∀ n, P17513116014844279718.a n = A000280 n

end A000280

/-! ## A000280.P2596609809314402569

`a(n-1)+a(n-2)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000280.P2596609809314402569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) ^ 2 * a (n - 2)

end

end A000280.P2596609809314402569

namespace A000280

/-- `a(n-1)+a(n-2)²*a(n-2)` -/
def P2596609809314402569.Spec : Prop :=
  ∀ n, (P2596609809314402569.a n : ℤ) = A000280 n

theorem P2596609809314402569.correct : P2596609809314402569.Spec := by
  intro n
  simp only [A000280, Nat.add_sub_cancel, A000280.P2596609809314402569.a, A000280.P784997549664006324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000280

/-! ## A000280.P18418678069156810769

`a(n-1)+a(n-2)*a(n-2)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000280.P18418678069156810769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 2) * a (n - 2)

end

end A000280.P18418678069156810769

namespace A000280

/-- `a(n-1)+a(n-2)*a(n-2)*a(n-2)` -/
def P18418678069156810769.Spec : Prop :=
  ∀ n, (P18418678069156810769.a n : ℤ) = A000280 n

theorem P18418678069156810769.correct : P18418678069156810769.Spec := by
  intro n
  simp only [A000280, Nat.add_sub_cancel, A000280.P18418678069156810769.a, A000280.P784997549664006324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000280

/-! ## A000280.P2962944632604971388

`A000578(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000280.P2962944632604971388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000578 (a (n - 2)).toNat + a (n - 1)

end

end A000280.P2962944632604971388

namespace A000280

/-- `A000578(a(n-2))+a(n-1)` -/
def P2962944632604971388.Spec : Prop :=
  ∀ n, P2962944632604971388.a n = A000280 n

end A000280

/-!
# A000281: Expansion of cos(x)/cos(2x).

The programs for A000281, there is no canonical definition to state claims against.
-/

/-! ## A000281.P17400293838619555697

`A000825(2*n)`
-/

namespace A000281.P17400293838619555697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000825 (2 * n)

end

end A000281.P17400293838619555697

/-! ## A000281.P14177127514231208666

`A001586(2*n)`
-/

namespace A000281.P14177127514231208666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 (2 * n)

end

end A000281.P14177127514231208666

/-! ## A000281.P12404135295599121079

`record[A117442(∑[n])]`
-/

namespace A000281.P12404135295599121079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117442 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000281.P12404135295599121079

/-! ## A000281.P9203131089457382300

`abs(A188458(2*n))`
-/

namespace A000281.P9203131089457382300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188458 (2 * n)|

end

end A000281.P9203131089457382300

/-! ## A000281.P3871428161569391323

`abs(A212435(2*n))`
-/

namespace A000281.P3871428161569391323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212435 (2 * n)|

end

end A000281.P3871428161569391323

/-!
# A000283: a(n) = a(n-1)^2 + a(n-2)^2 for n >= 2 with a(0) = 0 and a(1) = 1.

The programs for A000283, the canonical program `A000283.P17554868645572553912` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000283 has offset 0).

The definition of A000283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-2)²` (program `A000283.P17554868645572553912`, by `A000283.P17554868645572553912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000283.P17554868645572553912

`a(n-1)²+a(n-2)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000283

/-- `a(n-1)²+a(n-2)²` -/
def P17554868645572553912.Spec : Prop :=
  ∀ n, (P17554868645572553912.a n : ℤ) = A000283 n

theorem P17554868645572553912.correct : P17554868645572553912.Spec := by
  intro n
  simp only [A000283]

end A000283

/-! ## A000283.P10419991738831329000

`a(n-1)^2+a(n-2)^2` with `a(0)=0, a(1)=1`
-/

namespace A000283.P10419991738831329000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 2) ^ 2

end

end A000283.P10419991738831329000

namespace A000283

/-- `a(n-1)^2+a(n-2)^2` -/
def P10419991738831329000.Spec : Prop :=
  ∀ n, (P10419991738831329000.a n : ℤ) = A000283 n

theorem P10419991738831329000.correct : P10419991738831329000.Spec := by
  intro n
  simp only [A000283, Nat.add_sub_cancel, A000283.P10419991738831329000.a, A000283.P17554868645572553912.a, SequenceMachineLib.memo_apply]

end A000283

/-! ## A000283.P2002261751938023346

`a(n-1)-(a(n-3)²-a(n-1)²)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A000283.P2002261751938023346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 3) ^ 2 - a (n - 1) ^ 2)

end

end A000283.P2002261751938023346

namespace A000283

/-- `a(n-1)-(a(n-3)²-a(n-1)²)` -/
def P2002261751938023346.Spec : Prop :=
  ∀ n, P2002261751938023346.a n = A000283 n

end A000283

/-! ## A000283.P1219758317306175385

`a(n-1)*a(n-1)+a(n-2)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000283.P1219758317306175385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * a (n - 1) + a (n - 2) * a (n - 2)

end

end A000283.P1219758317306175385

namespace A000283

/-- `a(n-1)*a(n-1)+a(n-2)*a(n-2)` -/
def P1219758317306175385.Spec : Prop :=
  ∀ n, (P1219758317306175385.a n : ℤ) = A000283 n

theorem P1219758317306175385.correct : P1219758317306175385.Spec := by
  intro n
  simp only [A000283, Nat.add_sub_cancel, A000283.P1219758317306175385.a, A000283.P17554868645572553912.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000283

/-! ## A000283.P1061882024010969193

`sqrt(A014253(n))`
-/

namespace A000283.P1061882024010969193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014253 n : ℝ)

end

end A000283.P1061882024010969193

namespace A000283

/-- `sqrt(A014253(n))` -/
def P1061882024010969193.Spec : Prop :=
  ∀ n, P1061882024010969193.a n = (A000283 n : ℝ)

end A000283

/-!
# A000284: a(n) = a(n-1)^3 + a(n-2) with a(0)=0, a(1)=1.

The programs for A000284, the canonical program `A000284.P10738632260438626266` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000284 has offset 0).

The definition of A000284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+a(n-2)` (program `A000284.P10738632260438626266`, by `A000284.P10738632260438626266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000284.P10738632260438626266

`a(n-1)^3+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000284

/-- `a(n-1)^3+a(n-2)` -/
def P10738632260438626266.Spec : Prop :=
  ∀ n, (P10738632260438626266.a n : ℤ) = A000284 n

theorem P10738632260438626266.correct : P10738632260438626266.Spec := by
  intro n
  simp only [A000284]

end A000284

/-! ## A000284.P16334969608026488066

`a(n-2)-(-a(n-1))^3` with `a(0)=0, a(1)=1`
-/

namespace A000284.P16334969608026488066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (-a (n - 1)) ^ 3

end

end A000284.P16334969608026488066

namespace A000284

/-- `a(n-2)-(-a(n-1))^3` -/
def P16334969608026488066.Spec : Prop :=
  ∀ n, P16334969608026488066.a n = A000284 n

end A000284

/-! ## A000284.P10286696879417669397

`a(n-2)+a(n-1)²*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000284.P10286696879417669397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) ^ 2 * a (n - 1)

end

end A000284.P10286696879417669397

namespace A000284

/-- `a(n-2)+a(n-1)²*a(n-1)` -/
def P10286696879417669397.Spec : Prop :=
  ∀ n, (P10286696879417669397.a n : ℤ) = A000284 n

end A000284

/-! ## A000284.P7608280619144602661

`a(n-2)+a(n-1)*a(n-1)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000284.P7608280619144602661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * a (n - 1) * a (n - 1)

end

end A000284.P7608280619144602661

namespace A000284

/-- `a(n-2)+a(n-1)*a(n-1)*a(n-1)` -/
def P7608280619144602661.Spec : Prop :=
  ∀ n, (P7608280619144602661.a n : ℤ) = A000284 n

end A000284

/-!
# A000285: a(0) = 1, a(1) = 4, and a(n) = a(n-1) + a(n-2) for n >= 2.

The programs for A000285, the canonical program `A000285.P4375140302630972773` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000285 has offset 0).

The definition of A000285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A000285.P4375140302630972773`, by `A000285.P4375140302630972773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000285.P4375140302630972773

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000285

/-- `a(n-1)+a(n-2)` -/
def P4375140302630972773.Spec : Prop :=
  ∀ n, (P4375140302630972773.a n : ℤ) = A000285 n

theorem P4375140302630972773.correct : P4375140302630972773.Spec := by
  intro n
  simp only [A000285]

end A000285

/-! ## A000285.P14459178909044958359

`A104449(n+1)`
-/

namespace A000285.P14459178909044958359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1)

end

end A000285.P14459178909044958359

namespace A000285

/-- `A104449(n+1)` -/
def P14459178909044958359.Spec : Prop :=
  ∀ n, P14459178909044958359.a n = A000285 n

end A000285

/-! ## A000285.P15958455169875668194

`A000045(n)+A000032(n+1)`
-/

namespace A000285.P15958455169875668194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000032 (n + 1)

end

end A000285.P15958455169875668194

namespace A000285

/-- `A000045(n)+A000032(n+1)` -/
def P15958455169875668194.Spec : Prop :=
  ∀ n, P15958455169875668194.a n = A000285 n

end A000285

/-! ## A000285.P14977503815408099844

`2*A000045(n)+A000045(n+2)`
-/

namespace A000285.P14977503815408099844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n + A000045 (n + 2)

end

end A000285.P14977503815408099844

namespace A000285

/-- `2*A000045(n)+A000045(n+2)` -/
def P14977503815408099844.Spec : Prop :=
  ∀ n, P14977503815408099844.a n = A000285 n

end A000285

/-! ## A000285.P764424571340359938

`ogf((1+3x)/(1-x-x^2))`
-/

namespace A000285.P764424571340359938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -1] n

end

end A000285.P764424571340359938

namespace A000285

/-- `ogf((1+3x)/(1-x-x^2))` -/
def P764424571340359938.Spec : Prop :=
  ∀ n, P764424571340359938.a n = A000285 n

end A000285

/-! ## A000285.P5198730772815349659

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A000285.P5198730772815349659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000285.P5198730772815349659

namespace A000285

/-- `a(n-1)-floor(-a(n-2))` -/
def P5198730772815349659.Spec : Prop :=
  ∀ n, P5198730772815349659.a n = A000285 n

end A000285

/-! ## A000285.P589956304785279941

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A000285.P589956304785279941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000285.P589956304785279941

namespace A000285

/-- `a(n-1)-ceil(-a(n-2))` -/
def P589956304785279941.Spec : Prop :=
  ∀ n, P589956304785279941.a n = A000285 n

end A000285

/-! ## A000285.P18069238167205498708

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A000285.P18069238167205498708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A000285.P18069238167205498708

namespace A000285

/-- `a(n-1)-round(-a(n-2))` -/
def P18069238167205498708.Spec : Prop :=
  ∀ n, P18069238167205498708.a n = A000285 n

end A000285

/-! ## A000285.P13205059417454162394

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A000285.P13205059417454162394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A000285.P13205059417454162394

namespace A000285

/-- `2*a(n-1)-a(n-3)` -/
def P13205059417454162394.Spec : Prop :=
  ∀ n, P13205059417454162394.a n = A000285 n

end A000285

/-! ## A000285.P11471162959767511560

`a(n-1)-(char[1]-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A000285.P11471162959767511560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A000285.P11471162959767511560

namespace A000285

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P11471162959767511560.Spec : Prop :=
  ∀ n, P11471162959767511560.a n = A000285 n

end A000285

/-! ## A000285.P17030774867487921496

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A000285.P17030774867487921496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A000285.P17030774867487921496

namespace A000285

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P17030774867487921496.Spec : Prop :=
  ∀ n, P17030774867487921496.a n = A000285 n

end A000285

/-! ## A000285.P2075399143159140277

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A000285.P2075399143159140277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A000285.P2075399143159140277

namespace A000285

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P2075399143159140277.Spec : Prop :=
  ∀ n, P2075399143159140277.a n = (A000285 n : ℚ)

end A000285

/-! ## A000285.P6519237350853617253

`A022308(n)+1`
-/

namespace A000285.P6519237350853617253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + 1

end

end A000285.P6519237350853617253

namespace A000285

/-- `A022308(n)+1` -/
def P6519237350853617253.Spec : Prop :=
  ∀ n, P6519237350853617253.a n = A000285 n

end A000285

/-! ## A000285.P439759446495406515

`∑[A104449(abs(1-n))]`
-/

namespace A000285.P439759446495406515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000285.P439759446495406515

namespace A000285

/-- `∑[A104449(abs(1-n))]` -/
def P439759446495406515.Spec : Prop :=
  ∀ n, P439759446495406515.a n = A000285 n

end A000285

/-! ## A000285.P4171043470086448914

`A001611(n)+A001610(n)`
-/

namespace A000285.P4171043470086448914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A001610 n

end

end A000285.P4171043470086448914

namespace A000285

/-- `A001611(n)+A001610(n)` -/
def P4171043470086448914.Spec : Prop :=
  ∀ n, P4171043470086448914.a n = A000285 n

end A000285

/-! ## A000285.P8237656741380321063

`A152163(n)+A022088(n)`
-/

namespace A000285.P8237656741380321063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022088 n

end

end A000285.P8237656741380321063

namespace A000285

/-- `A152163(n)+A022088(n)` -/
def P8237656741380321063.Spec : Prop :=
  ∀ n, P8237656741380321063.a n = A000285 n

end A000285

/-! ## A000285.P2116580885299556904

`A212804(n)+A022087(n)`
-/

namespace A000285.P2116580885299556904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022087 n

end

end A000285.P2116580885299556904

namespace A000285

/-- `A212804(n)+A022087(n)` -/
def P2116580885299556904.Spec : Prop :=
  ∀ n, P2116580885299556904.a n = A000285 n

end A000285

/-! ## A000285.P131732531656514706

`A295856(n)+A143095(n)`
-/

namespace A000285.P131732531656514706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n + A143095 n

end

end A000285.P131732531656514706

namespace A000285

/-- `A295856(n)+A143095(n)` -/
def P131732531656514706.Spec : Prop :=
  ∀ n, P131732531656514706.a n = A000285 n

end A000285

/-! ## A000285.P179888424053886564

`A020701(n)-A000032(n)`
-/

namespace A000285.P179888424053886564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A000032 n

end

end A000285.P179888424053886564

namespace A000285

/-- `A020701(n)-A000032(n)` -/
def P179888424053886564.Spec : Prop :=
  ∀ n, P179888424053886564.a n = A000285 n

end A000285

/-! ## A000285.P18038518286254795259

`A022095(n)-A000045(n)`
-/

namespace A000285.P18038518286254795259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - A000045 n

end

end A000285.P18038518286254795259

namespace A000285

/-- `A022095(n)-A000045(n)` -/
def P18038518286254795259.Spec : Prop :=
  ∀ n, P18038518286254795259.a n = A000285 n

end A000285

/-!
# A000286: Number of positive integers <= 2^n of form 2 x^2 + 5 y^2.

The programs for A000286, there is no canonical definition to state claims against.
-/

/-! ## A000286.P6870130538882084224

`A076411(A120900(n)+A047217(n+1))`
-/

namespace A000286.P6870130538882084224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A120900 n + A047217 (n + 1)).toNat

end

end A000286.P6870130538882084224

/-! ## A000286.P17836979600321171426

`A003160(A001644(n))%A004666(n)`
-/

namespace A000286.P17836979600321171426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003160 (A001644 n).toNat) (A004666 n)

end

end A000286.P17836979600321171426

/-! ## A000286.P7394893662519598982

`A259361(xor(A014681(n), A190090(n)))`
-/

namespace A000286.P7394893662519598982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.xor (A014681 n) (A190090 n)).toNat

end

end A000286.P7394893662519598982

/-! ## A000286.P16679041504385029235

`A000196(xor(A190090(n), A280637(n)))`
-/

namespace A000286.P16679041504385029235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A190090 n) (A280637 n)).toNat

end

end A000286.P16679041504385029235

/-!
# A000287: Number of rooted polyhedral graphs with n edges.

The programs for A000287, there is no canonical definition to state claims against.
-/

/-! ## A000287.P4855103728947149747

`A131851(A359133(n))+A050535(n)`
-/

namespace A000287.P4855103728947149747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A359133 n).toNat + A050535 n

end

end A000287.P4855103728947149747

/-! ## A000287.P10440967099575223708

`A249728(A191365(n))+A191362(n+1)`
-/

namespace A000287.P10440967099575223708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A191365 n).toNat + A191362 (n + 1)

end

end A000287.P10440967099575223708

/-!
# A000288: Tetranacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A000288, the canonical program `A000288.P7474522399124431346` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000288 has offset 0).

The definition of A000288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A000288.P7474522399124431346`, by `A000288.P7474522399124431346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000288.P242710357791891433

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A000288.P242710357791891433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A000288.P242710357791891433

namespace A000288

/-- `2*a(n-1)-a(n-5)` -/
def P242710357791891433.Spec : Prop :=
  ∀ n, P242710357791891433.a n = A000288 n

end A000288

/-! ## A000288.P7474522399124431346

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000288

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P7474522399124431346.Spec : Prop :=
  ∀ n, (P7474522399124431346.a n : ℤ) = A000288 n

theorem P7474522399124431346.correct : P7474522399124431346.Spec := by
  intro n
  simp only [A000288]

end A000288

/-! ## A000288.P3901952382190725010

`ogf((-1+x^2+2x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A000288.P3901952382190725010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -1, -1, -1, -1] n

end

end A000288.P3901952382190725010

namespace A000288

/-- `ogf((-1+x^2+2x^3)/(-1+x+x^2+x^3+x^4))` -/
def P3901952382190725010.Spec : Prop :=
  ∀ n, P3901952382190725010.a n = A000288 n

end A000288

/-! ## A000288.P10184799490812683059

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A000288.P10184799490812683059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A000288.P10184799490812683059

namespace A000288

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P10184799490812683059.Spec : Prop :=
  ∀ n, P10184799490812683059.a n = A000288 n

end A000288

/-! ## A000288.P4527418422757438596

`A251705(n)+A000078(n)`
-/

namespace A000288.P4527418422757438596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + A000078 n

end

end A000288.P4527418422757438596

namespace A000288

/-- `A251705(n)+A000078(n)` -/
def P4527418422757438596.Spec : Prop :=
  ∀ n, P4527418422757438596.a n = A000288 n

end A000288

/-! ## A000288.P11680622728215058137

`A251704(n)+A001631(n)`
-/

namespace A000288.P11680622728215058137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n + A001631 n

end

end A000288.P11680622728215058137

namespace A000288

/-- `A251704(n)+A001631(n)` -/
def P11680622728215058137.Spec : Prop :=
  ∀ n, P11680622728215058137.a n = A000288 n

end A000288

/-! ## A000288.P4717935767778599412

`A251703(n)+∑[A001631(n)]`
-/

namespace A000288.P4717935767778599412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000288.P4717935767778599412

namespace A000288

/-- `A251703(n)+∑[A001631(n)]` -/
def P4717935767778599412.Spec : Prop :=
  ∀ n, P4717935767778599412.a n = A000288 n

end A000288

/-! ## A000288.P13741950346869215321

`A251704(n)+Δ[A000078(n)]`
-/

namespace A000288.P13741950346869215321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n + (f1 (n + 1) - f1 n)

end

end A000288.P13741950346869215321

namespace A000288

/-- `A251704(n)+Δ[A000078(n)]` -/
def P13741950346869215321.Spec : Prop :=
  ∀ n, P13741950346869215321.a n = A000288 n

end A000288

/-! ## A000288.P3155644767176597539

`A251703(n)+A000078(n+1)`
-/

namespace A000288.P3155644767176597539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + A000078 (n + 1)

end

end A000288.P3155644767176597539

namespace A000288

/-- `A251703(n)+A000078(n+1)` -/
def P3155644767176597539.Spec : Prop :=
  ∀ n, P3155644767176597539.a n = A000288 n

end A000288

/-! ## A000288.P1548756203991424256

`A251656(n)+A001631(n+1)`
-/

namespace A000288.P1548756203991424256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 n + A001631 (n + 1)

end

end A000288.P1548756203991424256

namespace A000288

/-- `A251656(n)+A001631(n+1)` -/
def P1548756203991424256.Spec : Prop :=
  ∀ n, P1548756203991424256.a n = A000288 n

end A000288

/-! ## A000288.P6485106760351866859

`A251704(n+1)-Δ[A251703(n)]`
-/

namespace A000288.P6485106760351866859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000288.P6485106760351866859

namespace A000288

/-- `A251704(n+1)-Δ[A251703(n)]` -/
def P6485106760351866859.Spec : Prop :=
  ∀ n, P6485106760351866859.a n = A000288 n

end A000288

/-! ## A000288.P16586497071500106337

`A251655(n+1)-2*A000078(n)`
-/

namespace A000288.P16586497071500106337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) - 2 * A000078 n

end

end A000288.P16586497071500106337

namespace A000288

/-- `A251655(n+1)-2*A000078(n)` -/
def P16586497071500106337.Spec : Prop :=
  ∀ n, P16586497071500106337.a n = A000288 n

end A000288

/-! ## A000288.P5305931009860063727

`A251655(n)+A251705(n)-A251654(n)`
-/

namespace A000288.P5305931009860063727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n + (A251705 n - A251654 n)

end

end A000288.P5305931009860063727

namespace A000288

/-- `A251655(n)+A251705(n)-A251654(n)` -/
def P5305931009860063727.Spec : Prop :=
  ∀ n, P5305931009860063727.a n = A000288 n

end A000288

/-! ## A000288.P5390446694101980164

`A251704(n)+A251705(n)-A251703(n)`
-/

namespace A000288.P5390446694101980164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n + (A251705 n - A251703 n)

end

end A000288.P5390446694101980164

namespace A000288

/-- `A251704(n)+A251705(n)-A251703(n)` -/
def P5390446694101980164.Spec : Prop :=
  ∀ n, P5390446694101980164.a n = A000288 n

end A000288

/-! ## A000288.P3295136631049127010

`A000078(n+1)+A251704(n)-A000078(n)`
-/

namespace A000288.P3295136631049127010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251704 n - A000078 n)

end

end A000288.P3295136631049127010

namespace A000288

/-- `A000078(n+1)+A251704(n)-A000078(n)` -/
def P3295136631049127010.Spec : Prop :=
  ∀ n, P3295136631049127010.a n = A000288 n

end A000288

/-! ## A000288.P8437170721420709660

`A251654(n+1)+A001631(n)-A000078(n)`
-/

namespace A000288.P8437170721420709660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) + (A001631 n - A000078 n)

end

end A000288.P8437170721420709660

namespace A000288

/-- `A251654(n+1)+A001631(n)-A000078(n)` -/
def P8437170721420709660.Spec : Prop :=
  ∀ n, P8437170721420709660.a n = A000288 n

end A000288

/-! ## A000288.P4744533656035217845

`A251655(n+1)+A001631(n)-A001630(n)`
-/

namespace A000288.P4744533656035217845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A001631 n - A001630 n)

end

end A000288.P4744533656035217845

namespace A000288

/-- `A251655(n+1)+A001631(n)-A001630(n)` -/
def P4744533656035217845.Spec : Prop :=
  ∀ n, P4744533656035217845.a n = A000288 n

end A000288

/-! ## A000288.P9884592603859745514

`A251656(n+1)+A251656(n)-A000078(n)`
-/

namespace A000288.P9884592603859745514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A000078 n)

end

end A000288.P9884592603859745514

namespace A000288

/-- `A251656(n+1)+A251656(n)-A000078(n)` -/
def P9884592603859745514.Spec : Prop :=
  ∀ n, P9884592603859745514.a n = A000288 n

end A000288

/-! ## A000288.P13680437699382936985

`A251704(n+1)+A251654(n)-A001630(n)`
-/

namespace A000288.P13680437699382936985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A251654 n - A001630 n)

end

end A000288.P13680437699382936985

namespace A000288

/-- `A251704(n+1)+A251654(n)-A001630(n)` -/
def P13680437699382936985.Spec : Prop :=
  ∀ n, P13680437699382936985.a n = A000288 n

end A000288

/-! ## A000288.P10721886424995826908

`A251654(n+1)+A251705(n)-A251704(n)`
-/

namespace A000288.P10721886424995826908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) + (A251705 n - A251704 n)

end

end A000288.P10721886424995826908

namespace A000288

/-- `A251654(n+1)+A251705(n)-A251704(n)` -/
def P10721886424995826908.Spec : Prop :=
  ∀ n, P10721886424995826908.a n = A000288 n

end A000288

/-!
# A000289: A nonlinear recurrence: a(n) = a(n-1)^2 - 3*a(n-1) + 3 (for n>1).

The programs for A000289, the canonical program `A000289.P1550543265696497488` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000289 has offset 0).

The definition of A000289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-3*a(n-1)+3` (program `A000289.P1550543265696497488`, by `A000289.P1550543265696497488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000289.P1550543265696497488

`a(n-1)²-3*a(n-1)+3` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000289

/-- `a(n-1)²-3*a(n-1)+3` -/
def P1550543265696497488.Spec : Prop :=
  ∀ n, P1550543265696497488.a n = A000289 n

theorem P1550543265696497488.correct : P1550543265696497488.Spec := by
  intro n
  simp only [A000289]

end A000289

/-! ## A000289.P16754286596632479562

`(a(n-1)-3)*a(n-1)+3` with `a(0)=1, a(1)=4`
-/

namespace A000289.P16754286596632479562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) - 3) * a (n - 1) + 3

end

end A000289.P16754286596632479562

namespace A000289

/-- `(a(n-1)-3)*a(n-1)+3` -/
def P16754286596632479562.Spec : Prop :=
  ∀ n, P16754286596632479562.a n = A000289 n

theorem P16754286596632479562.correct : P16754286596632479562.Spec := by
  intro n
  simp only [A000289, Nat.add_sub_cancel, A000289.P16754286596632479562.a, A000289.P1550543265696497488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000289

/-! ## A000289.P11748579638786837880

`3-(3-a(n-1))*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A000289.P11748579638786837880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (3 - a (n - 1)) * a (n - 1)

end

end A000289.P11748579638786837880

namespace A000289

/-- `3-(3-a(n-1))*a(n-1)` -/
def P11748579638786837880.Spec : Prop :=
  ∀ n, P11748579638786837880.a n = A000289 n

theorem P11748579638786837880.correct : P11748579638786837880.Spec := by
  intro n
  simp only [A000289, Nat.add_sub_cancel, A000289.P11748579638786837880.a, A000289.P1550543265696497488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000289

/-! ## A000289.P13924592823739357417

`lcm(3-a(n-1), a(n-1))+3` with `a(0)=1, a(1)=4`
-/

namespace A000289.P13924592823739357417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lcm (3 - (a (n - 1) : ℤ)) (a (n - 1) : ℤ) + 3

end

end A000289.P13924592823739357417

namespace A000289

/-- `lcm(3-a(n-1), a(n-1))+3` -/
def P13924592823739357417.Spec : Prop :=
  ∀ n, (P13924592823739357417.a n : ℤ) = A000289 n

end A000289

/-! ## A000289.P4240663479807602769

`(1-a(n-1))²+2-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A000289.P4240663479807602769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (1 - a (n - 1)) ^ 2 + (2 - a (n - 1))

end

end A000289.P4240663479807602769

namespace A000289

/-- `(1-a(n-1))²+2-a(n-1)` -/
def P4240663479807602769.Spec : Prop :=
  ∀ n, P4240663479807602769.a n = A000289 n

theorem P4240663479807602769.correct : P4240663479807602769.Spec := by
  intro n
  simp only [A000289, Nat.add_sub_cancel, A000289.P4240663479807602769.a, A000289.P1550543265696497488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000289

/-!
# A000290: The squares: a(n) = n^2.

The programs for A000290, the canonical program `A000290.P12206242496348924484` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000290 has offset 0).

The definition of A000290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²` (program `A000290.P12206242496348924484`, by `A000290.P12206242496348924484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000290.P12206242496348924484

`n²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000290

/-- `n²` -/
def P12206242496348924484.Spec : Prop :=
  ∀ n, (P12206242496348924484.a n : ℤ) = A000290 n

theorem P12206242496348924484.correct : P12206242496348924484.Spec := by
  intro n
  simp only [A000290]

end A000290

/-!
# A000291: Number of bipartite partitions of n white objects and 2 black ones.

The programs for A000291, there is no canonical definition to state claims against.
-/

/-! ## A000291.P8071828420457498253

`A000070(n)+A000097(n)`
-/

namespace A000291.P8071828420457498253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + A000097 n

end

end A000291.P8071828420457498253

/-! ## A000291.P6334446178799717013

`A031125(n)+1`
-/

namespace A000291.P6334446178799717013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031125 n + 1

end

end A000291.P6334446178799717013

/-! ## A000291.P1747514489147307701

`A000097(n)+∑[A000041(n)]`
-/

namespace A000291.P1747514489147307701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000291.P1747514489147307701

/-! ## A000291.P5716688528512302049

`n-(A023443(n)-A031125(n))`
-/

namespace A000291.P5716688528512302049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A031125 n)

end

end A000291.P5716688528512302049

/-! ## A000291.P8347681008305398727

`∑[A000041(n)+∑[A087787(n)]]`
-/

namespace A000291.P8347681008305398727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000291.P8347681008305398727

/-! ## A000291.P18170305173932820119

`A000097(n)+∑[A000065(n)+1]`
-/

namespace A000291.P18170305173932820119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000291.P18170305173932820119

/-! ## A000291.P1570388964386431475

`∑[A024786(n+2)+A000041(n)]`
-/

namespace A000291.P1570388964386431475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000291.P1570388964386431475

/-! ## A000291.P15522262036894517598

`A000070(n)+∑[A024786(n+2)]`
-/

namespace A000291.P15522262036894517598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000291.P15522262036894517598

/-! ## A000291.P7248619151774698578

`A000097(n+2)-A084376(n+2)`
-/

namespace A000291.P7248619151774698578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 (n + 2) - A084376 (n + 2)

end

end A000291.P7248619151774698578

/-! ## A000291.P13463317347811339583

`A000097(n)+A306145(n)+A304620(n)`
-/

namespace A000291.P13463317347811339583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A306145 n + A304620 n)

end

end A000291.P13463317347811339583

/-! ## A000291.P4548127702620207797

`A024786(n+1)+A024786(n+2)+A000097(n)`
-/

namespace A000291.P4548127702620207797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A024786 (n + 2) + A000097 n)

end

end A000291.P4548127702620207797

/-! ## A000291.P8442067263714540823

`A103650(n+1)+A103650(n+2)+A000070(n)`
-/

namespace A000291.P8442067263714540823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + (A103650 (n + 2) + A000070 n)

end

end A000291.P8442067263714540823

/-! ## A000291.P2089119851758651718

`A120452(n+2)+A000097(n)-A002865(n+1)`
-/

namespace A000291.P2089119851758651718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 2) + (A000097 n - A002865 (n + 1))

end

end A000291.P2089119851758651718

/-! ## A000291.P1885589961926722474

`A135348(n+1)+A000097(n)-A093695(n)`
-/

namespace A000291.P1885589961926722474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) + (A000097 n - A093695 n)

end

end A000291.P1885589961926722474

/-! ## A000291.P4515205777083230611

`A025065(2*n)+A000097(n)`
-/

namespace A000291.P4515205777083230611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) + A000097 n

end

end A000291.P4515205777083230611

/-! ## A000291.P16682335672068411040

`A100824(2*n+1)+A000097(n)`
-/

namespace A000291.P16682335672068411040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1) + A000097 n

end

end A000291.P16682335672068411040

/-! ## A000291.P4100110795561818587

`A100835(2*n+1)+A000097(n)`
-/

namespace A000291.P4100110795561818587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1) + A000097 n

end

end A000291.P4100110795561818587

/-! ## A000291.P5478557721350497365

`A054225(∑[n+3])`
-/

namespace A000291.P5478557721350497365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000291.P5478557721350497365

/-!
# A000292: Tetrahedral (or triangular pyramidal) numbers: a(n) = C(n+2,3) = n*(n+1)*(n+2)/6.

The programs for A000292, the canonical program `A000292.P18322089543142633594` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000292 has offset 0).

The definition of A000292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 3)` (program `A000292.P18322089543142633594`, by `A000292.P18322089543142633594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000292.P18322089543142633594

`C(n+2, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000292

/-- `C(n+2, 3)` -/
def P18322089543142633594.Spec : Prop :=
  ∀ n, (P18322089543142633594.a n : ℤ) = A000292 n

theorem P18322089543142633594.correct : P18322089543142633594.Spec := by
  intro n
  simp only [A000292]

end A000292

/-! ## A000292.P2740769874850917270

`a(n-2)+n²` with `a(0)=0, a(1)=1`
-/

namespace A000292.P2740769874850917270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 2

end

end A000292.P2740769874850917270

namespace A000292

/-- `a(n-2)+n²` -/
def P2740769874850917270.Spec : Prop :=
  ∀ n, (P2740769874850917270.a n : ℤ) = A000292 n

end A000292

/-! ## A000292.P13260493262988796310

`n*(n+1)*(n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000292.P13260493262988796310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) : ℚ) / 6

end

end A000292.P13260493262988796310

namespace A000292

/-- `n*(n+1)*(n+2)/6` -/
def P13260493262988796310.Spec : Prop :=
  ∀ n, P13260493262988796310.a n = (A000292 n : ℚ)

theorem P13260493262988796310.correct : P13260493262988796310.Spec := by
  intro n
  simp only [A000292, Nat.add_sub_cancel, A000292.P13260493262988796310.a, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000292

/-! ## A000292.P7397140952834911744

`n+2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000292.P7397140952834911744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) + 2 * a (n - 1) - a (n - 2)

end

end A000292.P7397140952834911744

namespace A000292

/-- `n+2*a(n-1)-a(n-2)` -/
def P7397140952834911744.Spec : Prop :=
  ∀ n, P7397140952834911744.a n = A000292 n

end A000292

/-! ## A000292.P6866211464368227637

`A006527(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000292.P6866211464368227637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006527 n - a (n - 2)

end

end A000292.P6866211464368227637

namespace A000292

/-- `A006527(n)-a(n-2)` -/
def P6866211464368227637.Spec : Prop :=
  ∀ n, P6866211464368227637.a n = A000292 n

end A000292

/-! ## A000292.P15414274304814482188

`A006503(n)-A002378(n)`
-/

namespace A000292.P15414274304814482188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A002378 n

end

end A000292.P15414274304814482188

namespace A000292

/-- `A006503(n)-A002378(n)` -/
def P15414274304814482188.Spec : Prop :=
  ∀ n, P15414274304814482188.a n = A000292 n

end A000292

/-! ## A000292.P5558155413109817563

`A001296(n)-A050534(n+1)`
-/

namespace A000292.P5558155413109817563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A050534 (n + 1)

end

end A000292.P5558155413109817563

namespace A000292

/-- `A001296(n)-A050534(n+1)` -/
def P5558155413109817563.Spec : Prop :=
  ∀ n, P5558155413109817563.a n = A000292 n

end A000292

/-! ## A000292.P14788926806824263969

`A006527(n)-(A006527(n)-A000290(n))/2`
-/

namespace A000292.P14788926806824263969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006527 n : ℚ) - (A006527 n - A000290 n : ℚ) / 2

end

end A000292.P14788926806824263969

namespace A000292

/-- `A006527(n)-(A006527(n)-A000290(n))/2` -/
def P14788926806824263969.Spec : Prop :=
  ∀ n, P14788926806824263969.a n = (A000292 n : ℚ)

end A000292

/-! ## A000292.P15941956449618675654

`A000332(n+3)-A000332(n+2)`
-/

namespace A000292.P15941956449618675654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) - A000332 (n + 2)

end

end A000292.P15941956449618675654

namespace A000292

/-- `A000332(n+3)-A000332(n+2)` -/
def P15941956449618675654.Spec : Prop :=
  ∀ n, P15941956449618675654.a n = A000292 n

theorem P15941956449618675654.correct : P15941956449618675654.Spec := by
  intro n
  simp only [A000292, Nat.add_sub_cancel, A000292.P15941956449618675654.a, A000292.P18322089543142633594.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000292

/-! ## A000292.P17368633487205651896

`n²-Δ[-C(n, 4)]`
-/

namespace A000292.P17368633487205651896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A000292.P17368633487205651896

namespace A000292

/-- `n²-Δ[-C(n, 4)]` -/
def P17368633487205651896.Spec : Prop :=
  ∀ n, P17368633487205651896.a n = A000292 n

theorem P17368633487205651896.correct : P17368633487205651896.Spec := by
  intro n
  simp only [A000292, Nat.add_sub_cancel, A000292.P17368633487205651896.f1, A000292.P17368633487205651896.a, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A000292

/-! ## A000292.P10196874365956455683

`record[C(ceil(xor(1, n)/2), 3)]`
-/

namespace A000292.P10196874365956455683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000292.P10196874365956455683

namespace A000292

/-- `record[C(ceil(xor(1, n)/2), 3)]` -/
def P10196874365956455683.Spec : Prop :=
  ∀ n, (P10196874365956455683.a n : ℤ) = A000292 n

end A000292

/-! ## A000292.P16565632163163314572

`∑[∑[ogf(x/(1-2x+x^2))]]`
-/

namespace A000292.P16565632163163314572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000292.P16565632163163314572

namespace A000292

/-- `∑[∑[ogf(x/(1-2x+x^2))]]` -/
def P16565632163163314572.Spec : Prop :=
  ∀ n, P16565632163163314572.a n = A000292 n

end A000292

/-! ## A000292.P12851637260395166833

`ogf(x/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A000292.P12851637260395166833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 6, -4, 1] n

end

end A000292.P12851637260395166833

namespace A000292

/-- `ogf(x/(1-4x+6x^2-4x^3+x^4))` -/
def P12851637260395166833.Spec : Prop :=
  ∀ n, P12851637260395166833.a n = A000292 n

end A000292

/-! ## A000292.P8232631868412553979

`Δ[C(2-(n-2*n), 4)]`
-/

namespace A000292.P8232631868412553979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((n : ℤ) - (2 * n : ℤ))).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A000292.P8232631868412553979

namespace A000292

/-- `Δ[C(2-(n-2*n), 4)]` -/
def P8232631868412553979.Spec : Prop :=
  ∀ n, P8232631868412553979.a n = A000292 n

end A000292

/-! ## A000292.P5158835145986474912

`floor(a(n-2)+n*n)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000292.P5158835145986474912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * n

end

end A000292.P5158835145986474912

namespace A000292

/-- `floor(a(n-2)+n*n)` -/
def P5158835145986474912.Spec : Prop :=
  ∀ n, (P5158835145986474912.a n : ℤ) = A000292 n

end A000292

/-! ## A000292.P11389477742962590357

`n²-floor(-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000292.P11389477742962590357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - (-a (n - 2))

end

end A000292.P11389477742962590357

namespace A000292

/-- `n²-floor(-a(n-2))` -/
def P11389477742962590357.Spec : Prop :=
  ∀ n, P11389477742962590357.a n = A000292 n

end A000292

/-! ## A000292.P17092329550437610278

`n²-ceil(-a(n-2))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A000292.P17092329550437610278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - (-a (n - 2))

end

end A000292.P17092329550437610278

namespace A000292

/-- `n²-ceil(-a(n-2))` -/
def P17092329550437610278.Spec : Prop :=
  ∀ n, P17092329550437610278.a n = A000292 n

end A000292

/-! ## A000292.P15098033668987616104

`n²-round(-a(n-2))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A000292.P15098033668987616104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - (-a (n - 2))

end

end A000292.P15098033668987616104

namespace A000292

/-- `n²-round(-a(n-2))` -/
def P15098033668987616104.Spec : Prop :=
  ∀ n, P15098033668987616104.a n = A000292 n

end A000292

/-! ## A000292.P3811054736151819197

`n²-(C(n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A000292.P3811054736151819197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - a (n - 1))

end

end A000292.P3811054736151819197

namespace A000292

/-- `n²-(C(n, 2)-a(n-1))` -/
def P3811054736151819197.Spec : Prop :=
  ∀ n, P3811054736151819197.a n = A000292 n

end A000292

/-! ## A000292.P5116062676304549599

`(1-3/(1-n))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000292.P5116062676304549599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - 3 / (1 - (n : ℤ) : ℚ)) * a (n - 1)

end

end A000292.P5116062676304549599

namespace A000292

/-- `(1-3/(1-n))*a(n-1)` -/
def P5116062676304549599.Spec : Prop :=
  ∀ n, P5116062676304549599.a n = (A000292 n : ℚ)

end A000292

/-!
# A000293: a(n) = number of solid (i.e., three-dimensional) partitions of n.

The programs for A000293, there is no canonical definition to state claims against.
-/

/-! ## A000293.P11065904634652241208

`A000294(n)-A007326(n)`
-/

namespace A000293.P11065904634652241208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n - A007326 n

end

end A000293.P11065904634652241208

/-! ## A000293.P17448444517835051472

`A293551(∑[n+4]+2)-A007326(n)`
-/

namespace A000293.P17448444517835051472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A007326 n

end

end A000293.P17448444517835051472

/-! ## A000293.P13702248894462063048

`A000294(n)+-A007326(n)%A000335(n+1)`
-/

namespace A000293.P13702248894462063048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n + Int.tmod (-A007326 n) (A000335 (n + 1))

end

end A000293.P13702248894462063048

/-! ## A000293.P3321330839701381623

`A000034(2*n)*A293551(A046691(n+2))-A007326(n)`
-/

namespace A000293.P3321330839701381623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A293551 (A046691 (n + 2)).toNat - A007326 n

end

end A000293.P3321330839701381623

/-! ## A000293.P12430108114651053943

`A293551(A046691(n+2))+A007814(2*n+1)-A007326(n)`
-/

namespace A000293.P12430108114651053943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A046691 (n + 2)).toNat + A007814 (2 * n + 1) - A007326 n

end

end A000293.P12430108114651053943

/-! ## A000293.P11448278386617948680

`A006519(2*n+1)*A293551(A046691(n+2))-A007326(n)`
-/

namespace A000293.P11448278386617948680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A293551 (A046691 (n + 2)).toNat - A007326 n

end

end A000293.P11448278386617948680

/-!
# A000294: Expansion of g.f. Product_{k >= 1} (1 - x^k)^(-k*(k+1)/2).

The programs for A000294, there is no canonical definition to state claims against.
-/

/-! ## A000294.P6815564517695812386

`A293551(∑[n+4]+2)`
-/

namespace A000294.P6815564517695812386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000294.P6815564517695812386

/-! ## A000294.P842939905398031426

`or(char[1], A293551(A046691(n+2)))`
-/

namespace A000294.P842939905398031426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293551 (A046691 (n + 2)).toNat)

end

end A000294.P842939905398031426

/-! ## A000294.P2934106496126140351

`A000034(2*n)*A293551(A046691(n+2))`
-/

namespace A000294.P2934106496126140351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A293551 (A046691 (n + 2)).toNat

end

end A000294.P2934106496126140351

/-! ## A000294.P17696677785368952303

`gcd(A154955(n+1), A293551(A046691(n+2)))`
-/

namespace A000294.P17696677785368952303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154955 (n + 1)) (A293551 (A046691 (n + 2)).toNat)

end

end A000294.P17696677785368952303

/-! ## A000294.P15110291297699644504

`A293551(A046691(n+2))+A007814(2*n+1)`
-/

namespace A000294.P15110291297699644504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A046691 (n + 2)).toNat + A007814 (2 * n + 1)

end

end A000294.P15110291297699644504

/-! ## A000294.P16430469816688013949

`A006519(2*n+1)*A293551(A046691(n+2))`
-/

namespace A000294.P16430469816688013949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A293551 (A046691 (n + 2)).toNat

end

end A000294.P16430469816688013949

/-! ## A000294.P7483343635569056927

`A007318(A000096(n))*A293551(A046691(n+2))`
-/

namespace A000294.P7483343635569056927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A293551 (A046691 (n + 2)).toNat

end

end A000294.P7483343635569056927

/-! ## A000294.P11635801546836584084

`A293551(A046691(n+2))%A000045(A018252(n+4))`
-/

namespace A000294.P11635801546836584084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293551 (A046691 (n + 2)).toNat) (A000045 (A018252 (n + 4)).toNat)

end

end A000294.P11635801546836584084

/-! ## A000294.P13763435881892038925

`A293551(A167499(n)+A008486(n))%A192873(n+2)`
-/

namespace A000294.P13763435881892038925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293551 (A167499 n + A008486 n).toNat) (A192873 (n + 2))

end

end A000294.P13763435881892038925

/-! ## A000294.P93523707438694758

`A293551(A167499(n)+A008486(n))+A197881(8*n+2)`
-/

namespace A000294.P93523707438694758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A167499 n + A008486 n).toNat + A197881 (8 * n + 2)

end

end A000294.P93523707438694758

/-! ## A000294.P275858901812954185

`gcd(A132380(n²), A293551(A046691(n+2)))`
-/

namespace A000294.P275858901812954185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132380 (n ^ 2)) (A293551 (A046691 (n + 2)).toNat)

end

end A000294.P275858901812954185

/-!
# A000295: Eulerian numbers (Euler's triangle: column k=2 of A008292, column k=1 of A173018).

The programs for A000295, the canonical program `A000295.P9955939544913215267` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000295 has offset 0).

The definition of A000295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000295.P9955939544913215267

`2^n-(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000295

/-- `2^n-(n+1)` -/
def P9955939544913215267.Spec : Prop :=
  ∀ n, P9955939544913215267.a n = A000295 n

theorem P9955939544913215267.correct : P9955939544913215267.Spec := by
  intro n
  simp only [A000295]

end A000295

/-! ## A000295.P8667900527159932064

`xor(n, 2^n-1)`
-/

namespace A000295.P8667900527159932064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 ^ n : ℤ) - 1)

end

end A000295.P8667900527159932064

namespace A000295

/-- `xor(n, 2^n-1)` -/
def P8667900527159932064.Spec : Prop :=
  ∀ n, P8667900527159932064.a n = A000295 n

end A000295

/-! ## A000295.P11529325343230959263

`∑[ogf(x^2/(1-3x+2x^2))]`
-/

namespace A000295.P11529325343230959263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P11529325343230959263

namespace A000295

/-- `∑[ogf(x^2/(1-3x+2x^2))]` -/
def P11529325343230959263.Spec : Prop :=
  ∀ n, P11529325343230959263.a n = A000295 n

end A000295

/-! ## A000295.P16893960614280181605

`ogf(x^2/(1-4x+5x^2-2x^3))`
-/

namespace A000295.P16893960614280181605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 5, -2] n

end

end A000295.P16893960614280181605

namespace A000295

/-- `ogf(x^2/(1-4x+5x^2-2x^3))` -/
def P16893960614280181605.Spec : Prop :=
  ∀ n, P16893960614280181605.a n = A000295 n

end A000295

/-! ## A000295.P119598964109126699

`abs(xor(-2^n, -(n+1)))`
-/

namespace A000295.P119598964109126699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 ^ n : ℤ)) (-(n + 1 : ℤ))|

end

end A000295.P119598964109126699

namespace A000295

/-- `abs(xor(-2^n, -(n+1)))` -/
def P119598964109126699.Spec : Prop :=
  ∀ n, P119598964109126699.a n = A000295 n

end A000295

/-! ## A000295.P12931144797736907361

`∑[2*a(n-1)+1]` with `a(0)=0, a(1)=0`
-/

namespace A000295.P12931144797736907361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P12931144797736907361

namespace A000295

/-- `∑[2*a(n-1)+1]` -/
def P12931144797736907361.Spec : Prop :=
  ∀ n, (P12931144797736907361.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P16375669800277387096

`∑[lcm(2, a(n-1))+1]` with `a(0)=0, a(1)=0`
-/

namespace A000295.P16375669800277387096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P16375669800277387096

namespace A000295

/-- `∑[lcm(2, a(n-1))+1]` -/
def P16375669800277387096.Spec : Prop :=
  ∀ n, (P16375669800277387096.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P2600149396724235256

`∑[or(1, 2*a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A000295.P2600149396724235256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P2600149396724235256

namespace A000295

/-- `∑[or(1, 2*a(n-1))]` -/
def P2600149396724235256.Spec : Prop :=
  ∀ n, (P2600149396724235256.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P6693429014316711905

`∑[xor(1, 2*a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A000295.P6693429014316711905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P6693429014316711905

namespace A000295

/-- `∑[xor(1, 2*a(n-1))]` -/
def P6693429014316711905.Spec : Prop :=
  ∀ n, (P6693429014316711905.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P15482628711260245169

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A000295.P15482628711260245169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P15482628711260245169

namespace A000295

/-- `∑[∑[2*a(n-1)]]` -/
def P15482628711260245169.Spec : Prop :=
  ∀ n, (P15482628711260245169.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P7338700313946211749

`abs(2*a(n-1)+n-1)` with `a(0)=0`
-/

namespace A000295.P7338700313946211749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |2 * a (n - 1) + ((n : ℤ) - 1)|

end

end A000295.P7338700313946211749

namespace A000295

/-- `abs(2*a(n-1)+n-1)` -/
def P7338700313946211749.Spec : Prop :=
  ∀ n, P7338700313946211749.a n = A000295 n

end A000295

/-! ## A000295.P3872855121704703890

`floor(2*a(n-1)-1+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000295.P3872855121704703890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - 1 + (n : ℤ)

end

end A000295.P3872855121704703890

namespace A000295

/-- `floor(2*a(n-1)-1+n)` -/
def P3872855121704703890.Spec : Prop :=
  ∀ n, P3872855121704703890.a n = A000295 n

theorem P3872855121704703890.correct : P3872855121704703890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P3872855121704703890.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P3872855121704703890.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P9212888122914446333

`floor(2*a(n-1)-(1-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000295.P9212888122914446333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ))

end

end A000295.P9212888122914446333

namespace A000295

/-- `floor(2*a(n-1)-(1-n))` -/
def P9212888122914446333.Spec : Prop :=
  ∀ n, P9212888122914446333.a n = A000295 n

theorem P9212888122914446333.correct : P9212888122914446333.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P9212888122914446333.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P9212888122914446333.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P13138870342139632652

`ceil(2*a(n-1)+n-1)` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A000295.P13138870342139632652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A000295.P13138870342139632652

namespace A000295

/-- `ceil(2*a(n-1)+n-1)` -/
def P13138870342139632652.Spec : Prop :=
  ∀ n, P13138870342139632652.a n = A000295 n

theorem P13138870342139632652.correct : P13138870342139632652.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P13138870342139632652.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P13138870342139632652.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P11053406739999848868

`round(2*a(n-1)+n-1)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A000295.P11053406739999848868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A000295.P11053406739999848868

namespace A000295

/-- `round(2*a(n-1)+n-1)` -/
def P11053406739999848868.Spec : Prop :=
  ∀ n, P11053406739999848868.a n = A000295 n

theorem P11053406739999848868.correct : P11053406739999848868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P11053406739999848868.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P11053406739999848868.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P3123650243675257063

`2*(a(n-1)+(n-1)/2)` with `a(0)=0`
-/

namespace A000295.P3123650243675257063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A000295.P3123650243675257063

namespace A000295

/-- `2*(a(n-1)+(n-1)/2)` -/
def P3123650243675257063.Spec : Prop :=
  ∀ n, P3123650243675257063.a n = (A000295 n : ℚ)

theorem P3123650243675257063.correct : P3123650243675257063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P3123650243675257063.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P3123650243675257063.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P17311464591693105527

`∑[a(n-1)+a(n-1)+1]` with `a(0)=0, a(1)=0`
-/

namespace A000295.P17311464591693105527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000295.P17311464591693105527

namespace A000295

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P17311464591693105527.Spec : Prop :=
  ∀ n, (P17311464591693105527.a n : ℤ) = A000295 n

end A000295

/-! ## A000295.P2349046407250609932

`2*(n/2-(1/2-a(n-1)))` with `a(0)=0`
-/

namespace A000295.P2349046407250609932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℚ) / 2 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A000295.P2349046407250609932

namespace A000295

/-- `2*(n/2-(1/2-a(n-1)))` -/
def P2349046407250609932.Spec : Prop :=
  ∀ n, P2349046407250609932.a n = (A000295 n : ℚ)

theorem P2349046407250609932.correct : P2349046407250609932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P2349046407250609932.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P2349046407250609932.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P6962888050322850903

`floor(a(n-1)-1+a(n-1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000295.P6962888050322850903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (n : ℤ))

end

end A000295.P6962888050322850903

namespace A000295

/-- `floor(a(n-1)-1+a(n-1)+n)` -/
def P6962888050322850903.Spec : Prop :=
  ∀ n, P6962888050322850903.a n = A000295 n

theorem P6962888050322850903.correct : P6962888050322850903.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P6962888050322850903.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P6962888050322850903.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-! ## A000295.P10175024634965408092

`floor(n-(1-a(n-1)-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000295.P10175024634965408092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A000295.P10175024634965408092

namespace A000295

/-- `floor(n-(1-a(n-1)-a(n-1)))` -/
def P10175024634965408092.Spec : Prop :=
  ∀ n, P10175024634965408092.a n = A000295 n

theorem P10175024634965408092.correct : P10175024634965408092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000295, Nat.add_sub_cancel, A000295.P10175024634965408092.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000295, Nat.add_sub_cancel, A000295.P10175024634965408092.a, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000295

/-!
# A000296: Set partitions without singletons: number of partitions of an n-set into blocks of size > 1. Also number of cyclically spaced (or feasible) partitions.

The programs for A000296, there is no canonical definition to state claims against.
-/

/-! ## A000296.P8333703501206367373

`(-1)^n+A000110(n)-A087650(n)`
-/

namespace A000296.P8333703501206367373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A000110 n - A087650 n

end

end A000296.P8333703501206367373

/-! ## A000296.P12869890403164616755

`A106436(∑[n])`
-/

namespace A000296.P12869890403164616755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000296.P12869890403164616755

/-! ## A000296.P12154385363699630294

`A124323(∑[n])`
-/

namespace A000296.P12154385363699630294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000296.P12154385363699630294

/-! ## A000296.P17587091367851630646

`A261137(∑[n]+n)`
-/

namespace A000296.P17587091367851630646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261137 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000296.P17587091367851630646

/-! ## A000296.P11450734491231400825

`abs(∑[A292935(abs(1-n))])`
-/

namespace A000296.P11450734491231400825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A000296.P11450734491231400825

/-! ## A000296.P6641527529314543687

`A000110(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A000296.P6641527529314543687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n - 1) - a (n - 1)

end

end A000296.P6641527529314543687

/-! ## A000296.P17084509220065952512

`A108087(C(n, 2))-a(n-1)` with `a(0)=1`
-/

namespace A000296.P17084509220065952512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108087 (Nat.choose n 2) - a (n - 1)

end

end A000296.P17084509220065952512

/-! ## A000296.P5194057868269641079

`abs(A292935(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A000296.P5194057868269641079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A292935 (n - 1)| - a (n - 1)

end

end A000296.P5194057868269641079

/-! ## A000296.P17181967730452540547

`A205574(∑[n]+1)-a(n-1)` with `a(0)=1`
-/

namespace A000296.P17181967730452540547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A205574 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A000296.P17181967730452540547

/-! ## A000296.P17749136170202658955

`A247491(n)+A005043(n)`
-/

namespace A000296.P17749136170202658955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247491 n + A005043 n

end

end A000296.P17749136170202658955

/-!
# A000297: a(n) = (n+1)*(n+3)*(n+8)/6.

The programs for A000297, there is no canonical definition to state claims against.
-/

/-! ## A000297.P10369677870548680309

`n*(n+2)*(n+7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000297.P10369677870548680309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) * (n + 7) : ℚ) / 6

end

end A000297.P10369677870548680309

/-! ## A000297.P9598700079053203909

`A000292(n+2)-2*(n-1)-6`
-/

namespace A000297.P9598700079053203909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) - 2 * ((n : ℤ) - 1) - 6

end

end A000297.P9598700079053203909

/-! ## A000297.P6094496894637650327

`∑[4*n]+C(n, 3)`
-/

namespace A000297.P6094496894637650327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A000297.P6094496894637650327

/-! ## A000297.P11610043852271722520

`record[C(n, 3)-n]-n`
-/

namespace A000297.P11610043852271722520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A000297.P11610043852271722520

/-! ## A000297.P16948787779419880897

`∑[record[xor(1, n+1)]+∑[n]]`
-/

namespace A000297.P16948787779419880897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P16948787779419880897

/-! ## A000297.P16048812118787689216

`abs(C(n+4, 3)-2*(n+2))`
-/

namespace A000297.P16048812118787689216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 4) 3 : ℤ) - (2 * (n + 2) : ℤ)|

end

end A000297.P16048812118787689216

/-! ## A000297.P11827756122906074030

`∑[∑[n+1]%(n+1)²+n]`
-/

namespace A000297.P11827756122906074030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P11827756122906074030

/-! ## A000297.P10132578251138539681

`∑[∑[2*a(n-1)-n]]` with `a(0)=0, a(1)=4, a(2)=4`
-/

namespace A000297.P10132578251138539681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P10132578251138539681

/-! ## A000297.P18283375685738418898

`a(n-1)+C(n+2, 2)+n` with `a(0)=0`
-/

namespace A000297.P18283375685738418898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (n + 2) 2 + n

end

end A000297.P18283375685738418898

/-! ## A000297.P6254791807217476596

`C(n, 3)+4*C(n, 2)+4*n`
-/

namespace A000297.P6254791807217476596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 4 * Nat.choose n 2 + 4 * n

end

end A000297.P6254791807217476596

/-! ## A000297.P1471095370383740498

`floor(a(n-2)+n*(n+4))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A000297.P1471095370383740498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + n * (n + 4)

end

end A000297.P1471095370383740498

/-! ## A000297.P1395159532907404179

`∑[∑[floor(a(n-1)²/n)]]` with `a(0)=0, a(1)=4, a(2)=4`
-/

namespace A000297.P1395159532907404179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4] fun n f2 =>
  ⌊(f2 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P1395159532907404179

/-! ## A000297.P1445035265350439614

`floor(n-∑[a(n-1)-2-n])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A000297.P1445035265350439614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P1445035265350439614

/-! ## A000297.P3545449057408319880

`∑[(∑[n+1]+n)%((n+1)^3)]`
-/

namespace A000297.P3545449057408319880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P3545449057408319880

/-! ## A000297.P11604345113265391233

`∑[∑[a(n-1)-(n-a(n-1))]]` with `a(0)=0, a(1)=4, a(2)=4`
-/

namespace A000297.P11604345113265391233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4] fun n f2 =>
  f2 (n - 1) - ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P11604345113265391233

/-! ## A000297.P2307527404710616924

`∑[∑[n]+(2*n+1)%∑[2*n+1]]`
-/

namespace A000297.P2307527404710616924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n + 1) % (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000297.P2307527404710616924

/-! ## A000297.P13255042997404582306

`A008778(n)-1`
-/

namespace A000297.P13255042997404582306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - 1

end

end A000297.P13255042997404582306

/-! ## A000297.P7188853278210812787

`A006503(n)+n`
-/

namespace A000297.P7188853278210812787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + (n : ℤ)

end

end A000297.P7188853278210812787

/-! ## A000297.P10625033510553291045

`A005586(n)-n`
-/

namespace A000297.P10625033510553291045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n - (n : ℤ)

end

end A000297.P10625033510553291045

/-! ## A000297.P16467701498205586512

`∑[A055998(n)]+n`
-/

namespace A000297.P16467701498205586512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000297.P16467701498205586512

/-!
# A000298: Number of partitions into non-integral powers.

The programs for A000298, there is no canonical definition to state claims against.
-/

/-! ## A000298.P12788661062363967563

`A000267(∑[n*4^n])`
-/

namespace A000298.P12788661062363967563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000298.P12788661062363967563

/-! ## A000298.P3882614630327208508

`A000006(A048878(n))`
-/

namespace A000298.P3882614630327208508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A048878 n).toNat

end

end A000298.P3882614630327208508

/-!
# A000299: Number of n-node rooted trees of height 4.

The programs for A000299, there is no canonical definition to state claims against.
-/

/-! ## A000299.P13390179962221104306

`A001384(n+1)-A001383(n+1)`
-/

namespace A000299.P13390179962221104306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 (n + 1) - A001383 (n + 1)

end

end A000299.P13390179962221104306

/-! ## A000299.P7458423582325487217

`A001384(n+1)-(A000235(n+1)+A000041(n))`
-/

namespace A000299.P7458423582325487217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 (n + 1) - (A000235 (n + 1) + A000041 n)

end

end A000299.P7458423582325487217

/-! ## A000299.P1353965293143840332

`A001385(n+1)-(A001383(n+1)+A000342(n+1))`
-/

namespace A000299.P1353965293143840332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 (n + 1) - (A001383 (n + 1) + A000342 (n + 1))

end

end A000299.P1353965293143840332

/-! ## A000299.P7594257833740917784

`A291336(∑[∑[n+1]+3]+n)`
-/

namespace A000299.P7594257833740917784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291336 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000299.P7594257833740917784

/-! ## A000299.P18312743180885384550

`A036643(A178343(∑[n]))`
-/

namespace A000299.P18312743180885384550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036643 (A178343 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000299.P18312743180885384550

