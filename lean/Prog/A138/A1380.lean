import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A138000: a(n) is the least prime such that the subsets of { a(1), ..., a(n) } sum up to 2^n different values.

The programs for A138000, there is no canonical definition to state claims against.
-/

/-! ## A138000.P11110359994922715673

`A000040(A138856(n+1))`
-/

namespace A138000.P11110359994922715673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A138856 (n + 1)).toNat

end

end A138000.P11110359994922715673

/-! ## A138000.P75039525075043849

`A008578(A138856(n+1)+1)`
-/

namespace A138000.P75039525075043849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A138856 (n + 1) + 1).toNat

end

end A138000.P75039525075043849

/-! ## A138000.P14052980209460211856

`A182986(A138856(n+1)+1)`
-/

namespace A138000.P14052980209460211856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A138856 (n + 1) + 1).toNat

end

end A138000.P14052980209460211856

/-! ## A138000.P15810077666703001353

`A006093(A138856(n+1))+A007318(∑[n])`
-/

namespace A138000.P15810077666703001353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138856 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138000.P15810077666703001353

/-! ## A138000.P10646552534585011512

`A008864(A138856(n+1))-A007318(C(2, n))`
-/

namespace A138000.P10646552534585011512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A138856 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A138000.P10646552534585011512

/-!
# A138002: a(3*n)=2*n, a(3*n+1)=a(n)+n, a(3*n+2)=2*a(n), a(n)=0 for n

The programs for A138002, the canonical program `A138002.P7129549064599215505` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138002 has offset 0).

The definition of A138002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138002.P7129549064599215505

`n%3*a(floor(n/3))+(2-n%3)*floor(n/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138002

/-- `n%3*a(floor(n/3))+(2-n%3)*floor(n/3)` -/
def P7129549064599215505.Spec : Prop :=
  ∀ n, P7129549064599215505.a n = A138002 n

theorem P7129549064599215505.correct : P7129549064599215505.Spec := by
  intro n
  simp only [A138002]

end A138002

/-!
# A138003: Binomial transform of 1, 1, 0, -1, -1 (periodically continued).

The programs for A138003, the canonical program `A138003.P6651456488233002306` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138003 has offset 0).

The definition of A138003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138003.P6651456488233002306

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138003

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6651456488233002306.Spec : Prop :=
  ∀ n, P6651456488233002306.a n = A138003 n

theorem P6651456488233002306.correct : P6651456488233002306.Spec := by
  intro n
  simp only [A138003]

end A138003

/-! ## A138003.P1220046862856022025

`round((a(n-1)-a(n-2))*ϕ²)` with `a(0)=1, a(1)=2`
-/

namespace A138003.P1220046862856022025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) - a (n - 2) : ℝ) * Real.goldenRatio ^ 2)

end

end A138003.P1220046862856022025

namespace A138003

/-- `round((a(n-1)-a(n-2))*ϕ²)` -/
def P1220046862856022025.Spec : Prop :=
  ∀ n, P1220046862856022025.a n = A138003 n

end A138003

/-! ## A138003.P11155020693990274041

`round((ϕ+1)*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A138003.P11155020693990274041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((Real.goldenRatio + 1) * (a (n - 1) - a (n - 2) : ℝ))

end

end A138003.P11155020693990274041

namespace A138003

/-- `round((ϕ+1)*(a(n-1)-a(n-2)))` -/
def P11155020693990274041.Spec : Prop :=
  ∀ n, P11155020693990274041.a n = A138003 n

end A138003

/-! ## A138003.P12963746577129852221

`round((a(n-1)-a(n-2))/(2-ϕ))` with `a(0)=1, a(1)=2`
-/

namespace A138003.P12963746577129852221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) - a (n - 2) : ℝ) / (2 - Real.goldenRatio))

end

end A138003.P12963746577129852221

namespace A138003

/-- `round((a(n-1)-a(n-2))/(2-ϕ))` -/
def P12963746577129852221.Spec : Prop :=
  ∀ n, P12963746577129852221.a n = A138003 n

end A138003

/-! ## A138003.P9635815731311003220

`round(ϕ*ϕ*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A138003.P9635815731311003220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) - a (n - 2) : ℝ)))

end

end A138003.P9635815731311003220

namespace A138003

/-- `round(ϕ*ϕ*(a(n-1)-a(n-2)))` -/
def P9635815731311003220.Spec : Prop :=
  ∀ n, P9635815731311003220.a n = A138003 n

end A138003

/-! ## A138003.P2719847469534958073

`∑[A100334(n+1)]-A100334(n)`
-/

namespace A138003.P2719847469534958073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100334 n

end

end A138003.P2719847469534958073

namespace A138003

/-- `∑[A100334(n+1)]-A100334(n)` -/
def P2719847469534958073.Spec : Prop :=
  ∀ n, P2719847469534958073.a n = A138003 n

end A138003

/-! ## A138003.P10423847681674554590

`∑[1-∑[A138112(n)]]`
-/

namespace A138003.P10423847681674554590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138003.P10423847681674554590

namespace A138003

/-- `∑[1-∑[A138112(n)]]` -/
def P10423847681674554590.Spec : Prop :=
  ∀ n, P10423847681674554590.a n = A138003 n

end A138003

/-! ## A138003.P14509398454445177173

`ogf((1-x+x^2)/(1-3x+4x^2-2x^3+x^4))`
-/

namespace A138003.P14509398454445177173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 4, -2, 1] n

end

end A138003.P14509398454445177173

namespace A138003

/-- `ogf((1-x+x^2)/(1-3x+4x^2-2x^3+x^4))` -/
def P14509398454445177173.Spec : Prop :=
  ∀ n, P14509398454445177173.a n = A138003 n

end A138003

/-! ## A138003.P11896807430056123846

`A138112(n+1)+A100334(n+1)`
-/

namespace A138003.P11896807430056123846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 1) + A100334 (n + 1)

end

end A138003.P11896807430056123846

namespace A138003

/-- `A138112(n+1)+A100334(n+1)` -/
def P11896807430056123846.Spec : Prop :=
  ∀ n, P11896807430056123846.a n = A138003 n

end A138003

/-! ## A138003.P10326959986835657195

`∑[A105371(n)]`
-/

namespace A138003.P10326959986835657195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138003.P10326959986835657195

namespace A138003

/-- `∑[A105371(n)]` -/
def P10326959986835657195.Spec : Prop :=
  ∀ n, P10326959986835657195.a n = A138003 n

end A138003

/-! ## A138003.P3973679136378374998

`A105371(n)-Δ[Δ[A100334(n)]]`
-/

namespace A138003.P3973679136378374998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n - (f1 (n + 1) - f1 n)

end

end A138003.P3973679136378374998

namespace A138003

/-- `A105371(n)-Δ[Δ[A100334(n)]]` -/
def P3973679136378374998.Spec : Prop :=
  ∀ n, P3973679136378374998.a n = A138003 n

end A138003

/-! ## A138003.P3552899476772291409

`A138112(n+2)+A103311(n+1)`
-/

namespace A138003.P3552899476772291409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 2) + A103311 (n + 1)

end

end A138003.P3552899476772291409

namespace A138003

/-- `A138112(n+2)+A103311(n+1)` -/
def P3552899476772291409.Spec : Prop :=
  ∀ n, P3552899476772291409.a n = A138003 n

end A138003

/-! ## A138003.P13683441297421844834

`A100334(n)+A138112(n)+A105371(n)`
-/

namespace A138003.P13683441297421844834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n + (A138112 n + A105371 n)

end

end A138003.P13683441297421844834

namespace A138003

/-- `A100334(n)+A138112(n)+A105371(n)` -/
def P13683441297421844834.Spec : Prop :=
  ∀ n, P13683441297421844834.a n = A138003 n

end A138003

/-! ## A138003.P15937789850111821483

`∑[A171408(n+1)/4]`
-/

namespace A138003.P15937789850111821483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171408 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138003.P15937789850111821483

namespace A138003

/-- `∑[A171408(n+1)/4]` -/
def P15937789850111821483.Spec : Prop :=
  ∀ n, P15937789850111821483.a n = (A138003 n : ℚ)

end A138003

/-! ## A138003.P12307034422159107060

`A100334(n)-Δ[Δ[A103311(n)]]`
-/

namespace A138003.P12307034422159107060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n - (f1 (n + 1) - f1 n)

end

end A138003.P12307034422159107060

namespace A138003

/-- `A100334(n)-Δ[Δ[A103311(n)]]` -/
def P12307034422159107060.Spec : Prop :=
  ∀ n, P12307034422159107060.a n = A138003 n

end A138003

/-! ## A138003.P17792476656888105253

`Δ[-A103311(n+2)]`
-/

namespace A138003.P17792476656888105253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103311 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138003.P17792476656888105253

namespace A138003

/-- `Δ[-A103311(n+2)]` -/
def P17792476656888105253.Spec : Prop :=
  ∀ n, P17792476656888105253.a n = A138003 n

end A138003

/-! ## A138003.P1404021829749857714

`A100334(n+2)-A105371(n+2)`
-/

namespace A138003.P1404021829749857714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (n + 2) - A105371 (n + 2)

end

end A138003.P1404021829749857714

namespace A138003

/-- `A100334(n+2)-A105371(n+2)` -/
def P1404021829749857714.Spec : Prop :=
  ∀ n, P1404021829749857714.a n = A138003 n

end A138003

/-! ## A138003.P17146282399827653819

`A103311(n+2)-A103311(n+3)`
-/

namespace A138003.P17146282399827653819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 2) - A103311 (n + 3)

end

end A138003.P17146282399827653819

namespace A138003

/-- `A103311(n+2)-A103311(n+3)` -/
def P17146282399827653819.Spec : Prop :=
  ∀ n, P17146282399827653819.a n = A138003 n

end A138003

/-! ## A138003.P3493470191016107664

`A133476(n+1)-A139761(n+1)`
-/

namespace A138003.P3493470191016107664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) - A139761 (n + 1)

end

end A138003.P3493470191016107664

namespace A138003

/-- `A133476(n+1)-A139761(n+1)` -/
def P3493470191016107664.Spec : Prop :=
  ∀ n, P3493470191016107664.a n = A138003 n

end A138003

/-! ## A138003.P1636433793898864621

`A133476(n+2)-A139398(n+2)`
-/

namespace A138003.P1636433793898864621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 2) - A139398 (n + 2)

end

end A138003.P1636433793898864621

namespace A138003

/-- `A133476(n+2)-A139398(n+2)` -/
def P1636433793898864621.Spec : Prop :=
  ∀ n, P1636433793898864621.a n = A138003 n

end A138003

/-!
# A138004: Odd numbers k for which all nontrivial cycles of the Ducci map on k-tuples modulo 2 have the same length.

The programs for A138004, there is no canonical definition to state claims against.
-/

/-! ## A138004.P9530213060177176574

`eq[2, A111944(n+1)]+1`
-/

namespace A138004.P9530213060177176574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138004.P9530213060177176574

/-! ## A138004.P12296269666985961633

`eq[2, A111944(A028310(n))]`
-/

namespace A138004.P12296269666985961633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138004.P12296269666985961633

/-! ## A138004.P13106824256935624891

`eq[2, A111944(A093178(n))]`
-/

namespace A138004.P13106824256935624891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138004.P13106824256935624891

/-! ## A138004.P6007690276003009061

`eq[3, A111944(A004277(n))]`
-/

namespace A138004.P6007690276003009061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138004.P6007690276003009061

/-! ## A138004.P9380648792836113219

`eq[3, A111944(A266303(n))]`
-/

namespace A138004.P9380648792836113219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138004.P9380648792836113219

/-!
# A138005: Odd prime numbers p for which not all nontrivial cycles of the Ducci map on p-tuples modulo 2 have the same length.

The programs for A138005, there is no canonical definition to state claims against.
-/

/-! ## A138005.P13028174838653027738

`∩[A089200(n+1), A335075(n+1)]`
-/

namespace A138005.P13028174838653027738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138005.P13028174838653027738

/-! ## A138005.P4178565809486006748

`∩[A089200(n+1), A139586(n+1)]`
-/

namespace A138005.P4178565809486006748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138005.P4178565809486006748

/-!
# A138006: Length of all the nontrivial cycles of the Ducci map modulo 2 for the dimensions in A138004.

The programs for A138006, there is no canonical definition to state claims against.
-/

/-! ## A138006.P4413556888627438715

`A038553(A138004(n+1))`
-/

namespace A138006.P4413556888627438715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (A138004 (n + 1)).toNat

end

end A138006.P4413556888627438715

/-! ## A138006.P8673487383906615277

`A038553(p?[A138004(1-(n-2*n))])`
-/

namespace A138006.P8673487383906615277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138004 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138006.P8673487383906615277

/-! ## A138006.P12073636411781108734

`A038553(eq[2, A111944(n+1)]+1)`
-/

namespace A138006.P12073636411781108734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A138006.P12073636411781108734

/-! ## A138006.P14390314656712544397

`A135546(A202037(n+1)+A029966(n+3))`
-/

namespace A138006.P14390314656712544397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135546 (A202037 (n + 1) + A029966 (n + 3)).toNat

end

end A138006.P14390314656712544397

/-!
# A138007: Produced by a sieve: Start with the natural numbers; at the k-th step remove every A138008(k+1)-th term of the sequence remaining after the (k-1)-st sieving step.

The programs for A138007, there is no canonical definition to state claims against.
-/

/-! ## A138007.P15344840000970899052

`eq[A035263(A002238(n+1)), A049347(n+1)]`
-/

namespace A138007.P15344840000970899052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A002238 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138007.P15344840000970899052

/-! ## A138007.P15945431652703003607

`A285524(A064423(n+2))`
-/

namespace A138007.P15945431652703003607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A064423 (n + 2)).toNat

end

end A138007.P15945431652703003607

/-! ## A138007.P245315619993488390

`A285524(lt[A064413(n+1), n])`
-/

namespace A138007.P245315619993488390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138007.P245315619993488390

/-! ## A138007.P1727462893289747262

`∑[A371452(∑[A028246(n+1)])]`
-/

namespace A138007.P1727462893289747262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371452 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138007.P1727462893289747262

/-! ## A138007.P16277515645631566555

`eq[A007949(A358459(2*(n+2))), A007949(n+3)]`
-/

namespace A138007.P16277515645631566555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A358459 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138007.P16277515645631566555

/-!
# A138008: Produced by a sieve: Start with the natural numbers; at the k-th step remove every A138007(k+1)-th term of the sequence remaining after the (k-1)-st sieving step.

The programs for A138008, there is no canonical definition to state claims against.
-/

/-! ## A138008.P5587922652954800404

`eq[A001065(3*n+2), A051903(A340963(n))]`
-/

namespace A138008.P5587922652954800404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A340963 (n + 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138008.P5587922652954800404

/-! ## A138008.P15833054337268504862

`∑[A001227(A153588(n+1))]`
-/

namespace A138008.P15833054337268504862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A153588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138008.P15833054337268504862

/-! ## A138008.P8006317761706899271

`∑[A001227(∑[A051389(n+1)])]`
-/

namespace A138008.P8006317761706899271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138008.P8006317761706899271

/-! ## A138008.P16378586220668206581

`∑[A009205(∑[A051389(n+1)])]`
-/

namespace A138008.P16378586220668206581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138008.P16378586220668206581

/-! ## A138008.P15285312492380396658

`∑[A038148(∑[A051389(n+1)])]`
-/

namespace A138008.P15285312492380396658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138008.P15285312492380396658

/-!
# A138009: a(n) = number of positive integers k, k <= n, where d(k) >= d(n); d(n) = number of positive divisors of n.

The programs for A138009, there is no canonical definition to state claims against.
-/

/-! ## A138009.P1254839586233015646

`A067004(n+1)+n+1-A079788(n+1)`
-/

namespace A138009.P1254839586233015646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1) + ((n + 1 : ℤ) - A079788 (n + 1))

end

end A138009.P1254839586233015646

/-! ## A138009.P16752908051115225694

`A047983(n+1)-A079788(n+1)+n+2`
-/

namespace A138009.P16752908051115225694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (n + 1) - A079788 (n + 1) + (n + 2 : ℤ)

end

end A138009.P16752908051115225694

/-! ## A138009.P13560568554765728155

`A062854(n+1)-A032741(A187829(n+1))`
-/

namespace A138009.P13560568554765728155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1) - A032741 (A187829 (n + 1)).toNat

end

end A138009.P13560568554765728155

/-! ## A138009.P3363830973508914587

`A000010(n+1)-A117118(A181821(n+1))`
-/

namespace A138009.P3363830973508914587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A117118 (A181821 (n + 1)).toNat

end

end A138009.P3363830973508914587

/-! ## A138009.P752423333605339212

`A039649(n+1)-A078899(A187829(n+1))`
-/

namespace A138009.P752423333605339212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A078899 (A187829 (n + 1)).toNat

end

end A138009.P752423333605339212

/-!
# A138010: a(n) is the number of positive divisors of n that divide d(n), where d(n) is the number of positive divisors of n, A000005(n); a(n) also equals d(gcd(n, d(n))).

The programs for A138010, the canonical program `A138010.P7109806690642076622` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138010 has offset 1).

The definition of A138010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138010.P7109806690642076622

`A000005(A009191(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138010

/-- `A000005(A009191(n+1))` -/
def P7109806690642076622.Spec : Prop :=
  ∀ n, P7109806690642076622.a n = A138010 (n + 1)

theorem P7109806690642076622.correct : P7109806690642076622.Spec := by
  intro n
  simp only [A138010, Nat.add_sub_cancel]

end A138010

/-! ## A138010.P17468354566557020517

`A000005(gcd(n-∑{d}[n+1, n²%#], ∏{e}[n+1, #+1]))`
-/

namespace A138010.P17468354566557020517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ)) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ))

end

end A138010.P17468354566557020517

namespace A138010

/-- `A000005(gcd(n-∑{d}[n+1, n²%#], ∏{e}[n+1, #+1]))` -/
def P17468354566557020517.Spec : Prop :=
  ∀ n, P17468354566557020517.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P11552869138316052

`A046951(A009191(n+1)²)`
-/

namespace A138010.P11552869138316052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A009191 (n + 1) ^ 2).toNat

end

end A138010.P11552869138316052

namespace A138010

/-- `A046951(A009191(n+1)²)` -/
def P11552869138316052.Spec : Prop :=
  ∀ n, P11552869138316052.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P5257838969491495737

`A183063(2*A009191(n+1))`
-/

namespace A138010.P5257838969491495737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A009191 (n + 1)).toNat

end

end A138010.P5257838969491495737

namespace A138010

/-- `A183063(2*A009191(n+1))` -/
def P5257838969491495737.Spec : Prop :=
  ∀ n, P5257838969491495737.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P9685611575393018069

`A046951(A009191(n+1)^2)`
-/

namespace A138010.P9685611575393018069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A009191 (n + 1) ^ 2).toNat

end

end A138010.P9685611575393018069

namespace A138010

/-- `A046951(A009191(n+1)^2)` -/
def P9685611575393018069.Spec : Prop :=
  ∀ n, P9685611575393018069.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P3920794847797741131

`char[1]+A000005(A303781(n+1))`
-/

namespace A138010.P3920794847797741131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000005 (A303781 (n + 1)).toNat

end

end A138010.P3920794847797741131

namespace A138010

/-- `char[1]+A000005(A303781(n+1))` -/
def P3920794847797741131.Spec : Prop :=
  ∀ n, P3920794847797741131.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P2984813751473378904

`A000005(gcd(n+1, Δ[A006218(n)]))`
-/

namespace A138010.P2984813751473378904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A138010.P2984813751473378904

namespace A138010

/-- `A000005(gcd(n+1, Δ[A006218(n)]))` -/
def P2984813751473378904.Spec : Prop :=
  ∀ n, P2984813751473378904.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P17702608809509329720

`A000005((n+1)/A090395(n+1))`
-/

namespace A138010.P17702608809509329720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A090395 (n + 1) : ℚ))).toNat

end

end A138010.P17702608809509329720

namespace A138010

/-- `A000005((n+1)/A090395(n+1))` -/
def P17702608809509329720.Spec : Prop :=
  ∀ n, P17702608809509329720.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P11997201576364824147

`A179941((n+1)/A090395(n+1))`
-/

namespace A138010.P11997201576364824147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A090395 (n + 1) : ℚ))).toNat

end

end A138010.P11997201576364824147

namespace A138010

/-- `A179941((n+1)/A090395(n+1))` -/
def P11997201576364824147.Spec : Prop :=
  ∀ n, P11997201576364824147.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P16152037922807596640

`A184395((n+1)/A090395(n+1))`
-/

namespace A138010.P16152037922807596640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A090395 (n + 1) : ℚ))).toNat

end

end A138010.P16152037922807596640

namespace A138010

/-- `A184395((n+1)/A090395(n+1))` -/
def P16152037922807596640.Spec : Prop :=
  ∀ n, P16152037922807596640.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P4912550497214025589

`A000005(gcd(A000005(n+1), A131738(n)))`
-/

namespace A138010.P4912550497214025589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000005 (n + 1)) (A131738 n))

end

end A138010.P4912550497214025589

namespace A138010

/-- `A000005(gcd(A000005(n+1), A131738(n)))` -/
def P4912550497214025589.Spec : Prop :=
  ∀ n, P4912550497214025589.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P12355288018744156288

`A183063(A009191(n+1)+A009191(n+1))`
-/

namespace A138010.P12355288018744156288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A009191 (n + 1) + A009191 (n + 1)).toNat

end

end A138010.P12355288018744156288

namespace A138010

/-- `A183063(A009191(n+1)+A009191(n+1))` -/
def P12355288018744156288.Spec : Prop :=
  ∀ n, P12355288018744156288.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P17789318060498904004

`A046951(A009191(n+1)*A009191(n+1))`
-/

namespace A138010.P17789318060498904004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A009191 (n + 1) * A009191 (n + 1)).toNat

end

end A138010.P17789318060498904004

namespace A138010

/-- `A046951(A009191(n+1)*A009191(n+1))` -/
def P17789318060498904004.Spec : Prop :=
  ∀ n, P17789318060498904004.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P10787224591888273204

`A000005(A038040(n+1)/A009230(n+1))`
-/

namespace A138010.P10787224591888273204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (A009230 (n + 1) : ℚ))).toNat

end

end A138010.P10787224591888273204

namespace A138010

/-- `A000005(A038040(n+1)/A009230(n+1))` -/
def P10787224591888273204.Spec : Prop :=
  ∀ n, P10787224591888273204.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P12922652361553953671

`A000005(A000005(n+1)/A090387(n+1))`
-/

namespace A138010.P12922652361553953671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) / (A090387 (n + 1) : ℚ))).toNat

end

end A138010.P12922652361553953671

namespace A138010

/-- `A000005(A000005(n+1)/A090387(n+1))` -/
def P12922652361553953671.Spec : Prop :=
  ∀ n, P12922652361553953671.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P11130282734257294500

`A000005(A009230(n+1)/A378930(n+1))`
-/

namespace A138010.P11130282734257294500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A009230 (n + 1) : ℚ) / (A378930 (n + 1) : ℚ))).toNat

end

end A138010.P11130282734257294500

namespace A138010

/-- `A000005(A009230(n+1)/A378930(n+1))` -/
def P11130282734257294500.Spec : Prop :=
  ∀ n, P11130282734257294500.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P13294251189635136284

`A000005(A002260(A286591(n+1)))`
-/

namespace A138010.P13294251189635136284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (A286591 (n + 1)).toNat).toNat

end

end A138010.P13294251189635136284

namespace A138010

/-- `A000005(A002260(A286591(n+1)))` -/
def P13294251189635136284.Spec : Prop :=
  ∀ n, P13294251189635136284.a n = A138010 (n + 1)

end A138010

/-! ## A138010.P16235638563317800561

`∑{d}[A009191(n+1), A009191(A143015(#))]`
-/

namespace A138010.P16235638563317800561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A009191 (A143015 d).toNat

end

end A138010.P16235638563317800561

namespace A138010

/-- `∑{d}[A009191(n+1), A009191(A143015(#))]` -/
def P16235638563317800561.Spec : Prop :=
  ∀ n, P16235638563317800561.a n = A138010 (n + 1)

end A138010

/-!
# A138011: a(n) = number of positive divisors, k, of n where d(k) divides d(n). (d(m) = number of positive divisors of m, A000005).

The programs for A138011, there is no canonical definition to state claims against.
-/

/-! ## A138011.P14073128815599677395

`∑{d}[n+1, A112316(A000005(n+1)%A000005(#))]`
-/

namespace A138011.P14073128815599677395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112316 (Int.tmod (A000005 (n + 1)) (A000005 d)).toNat

end

end A138011.P14073128815599677395

/-! ## A138011.P4211014564825463452

`A001511(lcm(A293524(n+1), A295923(n+1)))`
-/

namespace A138011.P4211014564825463452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A293524 (n + 1)) (A295923 (n + 1)))

end

end A138011.P4211014564825463452

/-! ## A138011.P4954238413778573770

`A160097(n+1)+A061358(9^∑{e}[n+1, #])`
-/

namespace A138011.P4954238413778573770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160097 (n + 1) + A061358 (9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A138011.P4954238413778573770

/-! ## A138011.P10085584846343898653

`A160097(n+1)+A117929(9^∑{e}[n+1, #])`
-/

namespace A138011.P10085584846343898653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160097 (n + 1) + A117929 (9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A138011.P10085584846343898653

/-! ## A138011.P16827526190722047753

`A000005(n+1)-A060502(A209401(n+1))`
-/

namespace A138011.P16827526190722047753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A060502 (A209401 (n + 1)).toNat

end

end A138011.P16827526190722047753

/-!
# A138012: a(n) = number of positive divisors, k, of n where d(k) divides n (where d(k) = number of positive divisors of k, A000005).

The programs for A138012, the canonical program `A138012.P10289845696173396267` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138012 has offset 1).

The definition of A138012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138012.P10289845696173396267

`∑{d}[n+1, A000007((n+1)%A000005(#))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138012

/-- `∑{d}[n+1, A000007((n+1)%A000005(#))]` -/
def P10289845696173396267.Spec : Prop :=
  ∀ n, P10289845696173396267.a n = A138012 (n + 1)

theorem P10289845696173396267.correct : P10289845696173396267.Spec := by
  intro n
  simp only [A138012, Nat.add_sub_cancel]

end A138012

/-! ## A138012.P2579791871218551502

`∑{d}[n+1, A051731(A000217(n)+A000005(#))]`
-/

namespace A138012.P2579791871218551502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051731 (A000217 n + A000005 d).toNat

end

end A138012.P2579791871218551502

namespace A138012

/-- `∑{d}[n+1, A051731(A000217(n)+A000005(#))]` -/
def P2579791871218551502.Spec : Prop :=
  ∀ n, P2579791871218551502.a n = A138012 (n + 1)

end A138012

/-! ## A138012.P17184288532139269789

`or(A081373(n+1), A198393(A229205(n+1)))`
-/

namespace A138012.P17184288532139269789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081373 (n + 1)) (A198393 (A229205 (n + 1)).toNat)

end

end A138012.P17184288532139269789

namespace A138012

/-- `or(A081373(n+1), A198393(A229205(n+1)))` -/
def P17184288532139269789.Spec : Prop :=
  ∀ n, P17184288532139269789.a n = A138012 (n + 1)

end A138012

/-! ## A138012.P8713210520735740951

`A086375(A334730(n+1))`
-/

namespace A138012.P8713210520735740951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (A334730 (n + 1)).toNat

end

end A138012.P8713210520735740951

namespace A138012

/-- `A086375(A334730(n+1))` -/
def P8713210520735740951.Spec : Prop :=
  ∀ n, P8713210520735740951.a n = A138012 (n + 1)

end A138012

/-! ## A138012.P630975736093562561

`A341105(A334664(n+1))`
-/

namespace A138012.P630975736093562561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341105 (A334664 (n + 1)).toNat

end

end A138012.P630975736093562561

namespace A138012

/-- `A341105(A334664(n+1))` -/
def P630975736093562561.Spec : Prop :=
  ∀ n, P630975736093562561.a n = A138012 (n + 1)

end A138012

/-!
# A138013: E.g.f. satisfies: A(x) = 1 - log(1 - x*A(x)).

The programs for A138013, there is no canonical definition to state claims against.
-/

/-! ## A138013.P8306450857622579671

`A038037(n+1)/(n+1)`
-/

namespace A138013.P8306450857622579671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038037 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A138013.P8306450857622579671

/-! ## A138013.P17677251686258725464

`(n+1)^A008683(A001359(n+1))*A038037(n+1)`
-/

namespace A138013.P17677251686258725464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A001359 (n + 1)).toNat : ℤ) * (A038037 (n + 1) : ℚ)

end

end A138013.P17677251686258725464

/-! ## A138013.P10393150636799723265

`(n+1)^A008683(A002145(n+1))*A038037(n+1)`
-/

namespace A138013.P10393150636799723265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A002145 (n + 1)).toNat : ℤ) * (A038037 (n + 1) : ℚ)

end

end A138013.P10393150636799723265

/-! ## A138013.P8864405179153654088

`(n+1)^A008683(A092627(n+1))*A038037(n+1)`
-/

namespace A138013.P8864405179153654088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A038037 (n + 1) : ℚ)

end

end A138013.P8864405179153654088

/-! ## A138013.P4760032194582853550

`(n+1)^A008683(A000101(n+1))*A038037(n+1)`
-/

namespace A138013.P4760032194582853550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A000101 (n + 1)).toNat : ℤ) * (A038037 (n + 1) : ℚ)

end

end A138013.P4760032194582853550

/-!
# A138014: E.g.f. A(x) satisfies exp(A(x)) = x + exp(A(x)^2) where A(0) = 0.

The programs for A138014, there is no canonical definition to state claims against.
-/

/-! ## A138014.P5289508681766470750

`A194979(or(A073478(n), A255372(n)))`
-/

namespace A138014.P5289508681766470750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (Int.lor (A073478 n) (A255372 n)).toNat

end

end A138014.P5289508681766470750

/-! ## A138014.P5603919590274869910

`A008619(A058864(n+1)-A002999(n))`
-/

namespace A138014.P5603919590274869910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A058864 (n + 1) - A002999 n).toNat

end

end A138014.P5603919590274869910

/-!
# A138015: Triangle read by rows, antidiagonals of an array formed by A000012 * A136579. Replace the term "n" in the correlation triangle A003983 with A003422(n).

The programs for A138015, there is no canonical definition to state claims against.
-/

/-! ## A138015.P3177912677336027779

`A003422(A003983(n+1))`
-/

namespace A138015.P3177912677336027779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A003983 (n + 1)).toNat

end

end A138015.P3177912677336027779

/-! ## A138015.P18076877331342241484

`A003422(A004197(n)+1)`
-/

namespace A138015.P18076877331342241484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A004197 n + 1).toNat

end

end A138015.P18076877331342241484

/-! ## A138015.P16214891270353474543

`A177263(A106255(n+1))`
-/

namespace A138015.P16214891270353474543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 (A106255 (n + 1)).toNat

end

end A138015.P16214891270353474543

/-! ## A138015.P18228377076619056912

`∑{d}[A144464(n), A112624(#)]`
-/

namespace A138015.P18228377076619056912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112624 d

end

end A138015.P18228377076619056912

/-! ## A138015.P1263998073024967261

`∑{d}[A152714(n), A112624(#)]`
-/

namespace A138015.P1263998073024967261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112624 d

end

end A138015.P1263998073024967261

/-! ## A138015.P17500010264939661201

`A003422(sqrt(A106314(n+1)))`
-/

namespace A138015.P17500010264939661201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (SequenceMachineLib.roundAway (Real.sqrt (A106314 (n + 1) : ℝ))).toNat

end

end A138015.P17500010264939661201

/-! ## A138015.P6075282333547272222

`A003422(log2(A144464(n))+1)`
-/

namespace A138015.P6075282333547272222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ) + 1)).toNat

end

end A138015.P6075282333547272222

/-! ## A138015.P6164686678661993003

`A003422(log2(2*A144464(n)))`
-/

namespace A138015.P6164686678661993003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A144464 n : ℝ))).toNat

end

end A138015.P6164686678661993003

/-! ## A138015.P17772164356699488470

`∑{d}[A144464(n), A001222(#)!]`
-/

namespace A138015.P17772164356699488470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A001222 d).toNat

end

end A138015.P17772164356699488470

/-! ## A138015.P9858363024736097417

`A106408(A152719(n))`
-/

namespace A138015.P9858363024736097417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106408 (A152719 n).toNat

end

end A138015.P9858363024736097417

/-!
# A138016: Row sums of triangle A138015.

The programs for A138016, the canonical program `A138016.P4288121135620689297` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138016 has offset 1).

The definition of A138016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138016.P4384533094251288127

`∑[∑[n/2*a(n-2)]]` with `a(0)=1, a(1)=0`
-/

namespace A138016.P4384533094251288127
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (n : ℚ) / 2 * f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138016.P4384533094251288127

namespace A138016

/-- `∑[∑[n/2*a(n-2)]]` -/
def P4384533094251288127.Spec : Prop :=
  ∀ n, P4384533094251288127.a n = (A138016 (n + 1) : ℚ)

end A138016

/-! ## A138016.P4288121135620689297

`∑[a(n-2)+floor(n/2)!]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138016

/-- `∑[a(n-2)+floor(n/2)!]` -/
def P4288121135620689297.Spec : Prop :=
  ∀ n, (P4288121135620689297.a n : ℤ) = A138016 (n + 1)

theorem P4288121135620689297.correct : P4288121135620689297.Spec := by
  intro n
  simp only [A138016, Nat.add_sub_cancel]

end A138016

/-! ## A138016.P7901906746464680535

`∑[∑[a(n-2)*∑[n%2]]]` with `a(0)=1, a(1)=0`
-/

namespace A138016.P7901906746464680535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138016.P7901906746464680535

namespace A138016

/-- `∑[∑[a(n-2)*∑[n%2]]]` -/
def P7901906746464680535.Spec : Prop :=
  ∀ n, (P7901906746464680535.a n : ℤ) = A138016 (n + 1)

end A138016

/-! ## A138016.P7759071754625623082

`∑[∑[floor(n/2)!-a(n-1)]]` with `a(0)=1`
-/

namespace A138016.P7759071754625623082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138016.P7759071754625623082

namespace A138016

/-- `∑[∑[floor(n/2)!-a(n-1)]]` -/
def P7759071754625623082.Spec : Prop :=
  ∀ n, P7759071754625623082.a n = A138016 (n + 1)

end A138016

/-! ## A138016.P10630167032492779769

`∑[∑[∑[(-1)^n*floor(n/2)!]]]`
-/

namespace A138016.P10630167032492779769
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138016.P10630167032492779769

namespace A138016

/-- `∑[∑[∑[(-1)^n*floor(n/2)!]]]` -/
def P10630167032492779769.Spec : Prop :=
  ∀ n, P10630167032492779769.a n = A138016 (n + 1)

end A138016

/-! ## A138016.P3672430602881810903

`∑[∑[A361522(n)]]`
-/

namespace A138016.P3672430602881810903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138016.P3672430602881810903

namespace A138016

/-- `∑[∑[A361522(n)]]` -/
def P3672430602881810903.Spec : Prop :=
  ∀ n, P3672430602881810903.a n = A138016 (n + 1)

end A138016

/-!
# A138017: Expansion of g.f. x*(1-6*x^2)/(1-3*x-2*x^2+6*x^3).

The programs for A138017, the canonical program `A138017.P353082212564427963` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138017 has offset 1).

The definition of A138017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x^2)/(1-3x-2x^2+6x^3))` (program `A138017.P353082212564427963`, by `A138017.P353082212564427963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138017.P353082212564427963

`ogf((1-6x^2)/(1-3x-2x^2+6x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138017

/-- `ogf((1-6x^2)/(1-3x-2x^2+6x^3))` -/
def P353082212564427963.Spec : Prop :=
  ∀ n, P353082212564427963.a n = A138017 (n + 1)

theorem P353082212564427963.correct : P353082212564427963.Spec := by
  intro n
  simp only [A138017, Nat.add_sub_cancel]

end A138017

/-! ## A138017.P9062977517931054813

`3*a(n-1)+2*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A138017.P9062977517931054813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 6 * a (n - 3)

end

end A138017.P9062977517931054813

namespace A138017

/-- `3*a(n-1)+2*a(n-2)-6*a(n-3)` -/
def P9062977517931054813.Spec : Prop :=
  ∀ n, P9062977517931054813.a n = A138017 (n + 1)

end A138017

/-! ## A138017.P5383680181036436964

`3^(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A138017.P5383680181036436964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2 * a (n - 2)

end

end A138017.P5383680181036436964

namespace A138017

/-- `3^(n-1)+2*a(n-2)` -/
def P5383680181036436964.Spec : Prop :=
  ∀ n, P5383680181036436964.a n = (A138017 (n + 1) : ℚ)

end A138017

/-! ## A138017.P4724466783048265292

`lcm(2, a(n-2))+3^(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A138017.P4724466783048265292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A138017.P4724466783048265292

namespace A138017

/-- `lcm(2, a(n-2))+3^(n-1)` -/
def P4724466783048265292.Spec : Prop :=
  ∀ n, P4724466783048265292.a n = (A138017 (n + 1) : ℚ)

end A138017

/-! ## A138017.P16087377529763552745

`a(n-2)+a(n-2)+3^(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A138017.P16087377529763552745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A138017.P16087377529763552745

namespace A138017

/-- `a(n-2)+a(n-2)+3^(n-1)` -/
def P16087377529763552745.Spec : Prop :=
  ∀ n, P16087377529763552745.a n = (A138017 (n + 1) : ℚ)

end A138017

/-! ## A138017.P12937387315467885459

`A000244(n+1)-A135247(n)-A135247(n)`
-/

namespace A138017.P12937387315467885459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A135247 n - A135247 n

end

end A138017.P12937387315467885459

namespace A138017

/-- `A000244(n+1)-A135247(n)-A135247(n)` -/
def P12937387315467885459.Spec : Prop :=
  ∀ n, P12937387315467885459.a n = A138017 (n + 1)

end A138017

/-!
# A138018: Sum of consecutives primes p and q where p == 3 mod (10) and q == 7 mod (10).

The programs for A138018, there is no canonical definition to state claims against.
-/

/-! ## A138018.P11039365010666383626

`∩[10*(n+1), A001043(A244739(n+2))]`
-/

namespace A138018.P11039365010666383626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A244739 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138018.P11039365010666383626

/-! ## A138018.P4135061415896116106

`∩[A001043(A049508(n+1)), A235089(n+1)]`
-/

namespace A138018.P4135061415896116106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A049508 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138018.P4135061415896116106

/-! ## A138018.P4690883627468127227

`∩[A001043(A244739(n+1)), A235089(n+1)]`
-/

namespace A138018.P4690883627468127227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A244739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138018.P4690883627468127227

/-!
# A138019: Period 5: repeat [1, 1, 0, -1, -1].

The programs for A138019, the canonical program `A138019.P7070332988721654649` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138019 has offset 0).

The definition of A138019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138019.P7070332988721654649

`round(cos(n%5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138019

/-- `round(cos(n%5))` -/
def P7070332988721654649.Spec : Prop :=
  ∀ n, P7070332988721654649.a n = A138019 n

theorem P7070332988721654649.correct : P7070332988721654649.Spec := by
  intro n
  simp only [A138019]

end A138019

/-!
# A138020: G.f. satisfies A(x) = sqrt( (1 + 2*x*A(x)) / (1 - 2*x*A(x)) ).

The programs for A138020, there is no canonical definition to state claims against.
-/

/-! ## A138020.P17618814907028401769

`(A260773(n)+A260772(n))/2`
-/

namespace A138020.P17618814907028401769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260773 n + A260772 n : ℚ) / 2

end

end A138020.P17618814907028401769

/-! ## A138020.P14856951963282794722

`A014682(A260773(n)+A260772(n))`
-/

namespace A138020.P14856951963282794722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A260773 n + A260772 n).toNat

end

end A138020.P14856951963282794722

/-! ## A138020.P3570916892103968317

`A004524(A164651(n)+A007226(n))`
-/

namespace A138020.P3570916892103968317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A164651 n + A007226 n).toNat

end

end A138020.P3570916892103968317

/-!
# A138021: a(n) = the number of positive divisors k of 2n where |k -2n/k| divides 2n.

The programs for A138021, there is no canonical definition to state claims against.
-/

/-! ## A138021.P5577520315951635999

`and(A005843(A000285(n)), A083499(n+1))`
-/

namespace A138021.P5577520315951635999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005843 (A000285 n).toNat) (A083499 (n + 1))

end

end A138021.P5577520315951635999

/-! ## A138021.P467679692604909159

`and(A007304(n+1), A094267(A294157(n)))`
-/

namespace A138021.P467679692604909159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007304 (n + 1)) (A094267 (A294157 n).toNat)

end

end A138021.P467679692604909159

/-! ## A138021.P17763955897349051382

`and(A034262(A294157(n)), A083499(n+1))`
-/

namespace A138021.P17763955897349051382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034262 (A294157 n).toNat) (A083499 (n + 1))

end

end A138021.P17763955897349051382

/-! ## A138021.P3875021039728684357

`and(A022112(2*n), A273149(A022112(n)))`
-/

namespace A138021.P3875021039728684357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022112 (2 * n)) (A273149 (A022112 n).toNat)

end

end A138021.P3875021039728684357

/-! ## A138021.P5627425644711113012

`A033687(A095651(n+1)+A000055(n))`
-/

namespace A138021.P5627425644711113012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (A095651 (n + 1) + A000055 n).toNat

end

end A138021.P5627425644711113012

/-!
# A138022: Triangular array read by rows: e.g.f. sqrt(1-z^2)*exp(x*z)/(1+z).

The programs for A138022, there is no canonical definition to state claims against.
-/

/-! ## A138022.P10741579750343432520

`A000246(A025581(n))*A130595(n)`
-/

namespace A138022.P10741579750343432520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 (A025581 n).toNat * A130595 n

end

end A138022.P10741579750343432520

/-! ## A138022.P14785974703912906767

`A000246(A025660(n+1))*A130595(n)`
-/

namespace A138022.P14785974703912906767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 (A025660 (n + 1)).toNat * A130595 n

end

end A138022.P14785974703912906767

/-! ## A138022.P13307950420935780412

`A089940(A119502(n))*A130595(n)`
-/

namespace A138022.P13307950420935780412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089940 (A119502 n).toNat * A130595 n

end

end A138022.P13307950420935780412

/-!
# A138025: Numbers that remain prime through 7 iterations of function f(x) = 2x + 1.

The programs for A138025, there is no canonical definition to state claims against.
-/

/-! ## A138025.P8891441684512461545

`2*A124515(n+1)-1`
-/

namespace A138025.P8891441684512461545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124515 (n + 1) - 1

end

end A138025.P8891441684512461545

/-! ## A138025.P17479343841887051600

`(-1)^A001844(n)+2*A124515(n+1)`
-/

namespace A138025.P17479343841887051600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001844 n : ℤ) + (2 * A124515 (n + 1) : ℚ)

end

end A138025.P17479343841887051600

/-! ## A138025.P16053611539018294880

`A008683(Δ[A007504(n)])+2*A124515(n+1)`
-/

namespace A138025.P16053611539018294880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 2 * A124515 (n + 1)

end

end A138025.P16053611539018294880

/-! ## A138025.P14073988124728495711

`A008683(A000043(n+1))+2*A124515(n+1)`
-/

namespace A138025.P14073988124728495711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000043 (n + 1)).toNat + 2 * A124515 (n + 1)

end

end A138025.P14073988124728495711

/-! ## A138025.P14751892237205324160

`A292461(A007318(C(2, n)))+2*A124515(n+1)`
-/

namespace A138025.P14751892237205324160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (A007318 (Nat.choose 2 n)).toNat + 2 * A124515 (n + 1)

end

end A138025.P14751892237205324160

/-!
# A138026: Numbers k where A121561(k) = 3.

The programs for A138026, the canonical program `A138026.P17911807186670300887` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138026 has offset 1).

The definition of A138026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138026.P17911807186670300887

`lt[2, A121561(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138026

/-- `lt[2, A121561(n+1)]+1` -/
def P17911807186670300887.Spec : Prop :=
  ∀ n, (P17911807186670300887.a n : ℤ) = A138026 (n + 1)

theorem P17911807186670300887.correct : P17911807186670300887.Spec := by
  intro n
  simp only [A138026, Nat.add_sub_cancel]

end A138026

/-! ## A138026.P3925663651215335031

`lt[2, A175078(n+1)]`
-/

namespace A138026.P3925663651215335031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138026.P3925663651215335031

namespace A138026

/-- `lt[2, A175078(n+1)]` -/
def P3925663651215335031.Spec : Prop :=
  ∀ n, (P3925663651215335031.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P13943988226498840318

`eq[A178334(A178334(n))+2, A175078(n+1)]`
-/

namespace A138026.P13943988226498840318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P13943988226498840318

namespace A138026

/-- `eq[A178334(A178334(n))+2, A175078(n+1)]` -/
def P13943988226498840318.Spec : Prop :=
  ∀ n, (P13943988226498840318.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P2229545714410399886

`A020725(eq[3, A121561(n+1)])`
-/

namespace A138026.P2229545714410399886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138026.P2229545714410399886

namespace A138026

/-- `A020725(eq[3, A121561(n+1)])` -/
def P2229545714410399886.Spec : Prop :=
  ∀ n, P2229545714410399886.a n = A138026 (n + 1)

end A138026

/-! ## A138026.P6835821724959665279

`A181569(eq[3, A121561(n+1)])`
-/

namespace A138026.P6835821724959665279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138026.P6835821724959665279

namespace A138026

/-- `A181569(eq[3, A121561(n+1)])` -/
def P6835821724959665279.Spec : Prop :=
  ∀ n, P6835821724959665279.a n = A138026 (n + 1)

end A138026

/-! ## A138026.P17394970900759925750

`eq[3, A121561(A028310(n))]`
-/

namespace A138026.P17394970900759925750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138026.P17394970900759925750

namespace A138026

/-- `eq[3, A121561(A028310(n))]` -/
def P17394970900759925750.Spec : Prop :=
  ∀ n, (P17394970900759925750.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P13048342468957748066

`eq[A267871(n)+2, A175078(n+1)]`
-/

namespace A138026.P13048342468957748066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P13048342468957748066

namespace A138026

/-- `eq[A267871(n)+2, A175078(n+1)]` -/
def P13048342468957748066.Spec : Prop :=
  ∀ n, (P13048342468957748066.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P6406580253700265084

`eq[A060296(n), A175078(n+1)]`
-/

namespace A138026.P6406580253700265084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060296 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P6406580253700265084

namespace A138026

/-- `eq[A060296(n), A175078(n+1)]` -/
def P6406580253700265084.Spec : Prop :=
  ∀ n, (P6406580253700265084.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P3562425718740013698

`eq[A122553(n), A175078(n+1)]`
-/

namespace A138026.P3562425718740013698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P3562425718740013698

namespace A138026

/-- `eq[A122553(n), A175078(n+1)]` -/
def P3562425718740013698.Spec : Prop :=
  ∀ n, (P3562425718740013698.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P4474426109995708256

`eq[A156752(n), A175078(n+1)]`
-/

namespace A138026.P4474426109995708256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P4474426109995708256

namespace A138026

/-- `eq[A156752(n), A175078(n+1)]` -/
def P4474426109995708256.Spec : Prop :=
  ∀ n, (P4474426109995708256.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P216361532973821192

`eq[A158799(n), A175078(n+1)]`
-/

namespace A138026.P216361532973821192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P216361532973821192

namespace A138026

/-- `eq[A158799(n), A175078(n+1)]` -/
def P216361532973821192.Spec : Prop :=
  ∀ n, (P216361532973821192.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P1175044977626698790

`eq[A157532(n+1), A175078(n+1)]`
-/

namespace A138026.P1175044977626698790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P1175044977626698790

namespace A138026

/-- `eq[A157532(n+1), A175078(n+1)]` -/
def P1175044977626698790.Spec : Prop :=
  ∀ n, (P1175044977626698790.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P11905608629393614319

`eq[A175078(n+1), A211664(n+1)]`
-/

namespace A138026.P11905608629393614319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P11905608629393614319

namespace A138026

/-- `eq[A175078(n+1), A211664(n+1)]` -/
def P11905608629393614319.Spec : Prop :=
  ∀ n, (P11905608629393614319.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P4532153006707596447

`eq[A175078(n+1), A334503(n+1)]`
-/

namespace A138026.P4532153006707596447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P4532153006707596447

namespace A138026

/-- `eq[A175078(n+1), A334503(n+1)]` -/
def P4532153006707596447.Spec : Prop :=
  ∀ n, (P4532153006707596447.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P12643720214524003525

`eq[A175078(n+1), A374624(n+1)]`
-/

namespace A138026.P12643720214524003525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P12643720214524003525

namespace A138026

/-- `eq[A175078(n+1), A374624(n+1)]` -/
def P12643720214524003525.Spec : Prop :=
  ∀ n, (P12643720214524003525.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P14149763453635257667

`eq[A175078(n+1), A258756(n+3)]`
-/

namespace A138026.P14149763453635257667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258756 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P14149763453635257667

namespace A138026

/-- `eq[A175078(n+1), A258756(n+3)]` -/
def P14149763453635257667.Spec : Prop :=
  ∀ n, (P14149763453635257667.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P3031787123511063929

`eq[A121273(n+1)+2, A175078(n+1)]`
-/

namespace A138026.P3031787123511063929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P3031787123511063929

namespace A138026

/-- `eq[A121273(n+1)+2, A175078(n+1)]` -/
def P3031787123511063929.Spec : Prop :=
  ∀ n, (P3031787123511063929.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P472946749126665246

`eq[A133265(A133265(n))+1, A175078(n+1)]`
-/

namespace A138026.P472946749126665246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A133265 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P472946749126665246

namespace A138026

/-- `eq[A133265(A133265(n))+1, A175078(n+1)]` -/
def P472946749126665246.Spec : Prop :=
  ∀ n, (P472946749126665246.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P5595968650794653449

`eq[A053444(A053444(n+1)), A175078(n+1)]`
-/

namespace A138026.P5595968650794653449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053444 (A053444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P5595968650794653449

namespace A138026

/-- `eq[A053444(A053444(n+1)), A175078(n+1)]` -/
def P5595968650794653449.Spec : Prop :=
  ∀ n, (P5595968650794653449.a n : ℤ) = A138026 (n + 1)

end A138026

/-! ## A138026.P11174645304974895375

`eq[A266722(A266722(n))+1, A175078(n+1)]`
-/

namespace A138026.P11174645304974895375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A266722 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138026.P11174645304974895375

namespace A138026

/-- `eq[A266722(A266722(n))+1, A175078(n+1)]` -/
def P11174645304974895375.Spec : Prop :=
  ∀ n, (P11174645304974895375.a n : ℤ) = A138026 (n + 1)

end A138026

/-!
# A138028: The array of the most significant digit of n^k read by antidiagonals.

The programs for A138028, there is no canonical definition to state claims against.
-/

/-! ## A138028.P6500567065463242243

`A004086(A009999(n))%10`
-/

namespace A138028.P6500567065463242243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A009999 n).toNat) 10

end

end A138028.P6500567065463242243

/-! ## A138028.P7976341956167714268

`A000030((C(comp[∑[n]]-n, 2)-n)^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A138028.P7976341956167714268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat

end

end A138028.P7976341956167714268

/-! ## A138028.P11651810635333771636

`A000030(A009999(n))`
-/

namespace A138028.P11651810635333771636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A009999 n).toNat

end

end A138028.P11651810635333771636

/-! ## A138028.P10202275286881235541

`A000030(A003992(comp[∑[n-1]]))`
-/

namespace A138028.P10202275286881235541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A003992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A138028.P10202275286881235541

/-! ## A138028.P10161864997910334573

`A000030((C(comp[∑[n]]-n, 2)-n)^A002262(n))`
-/

namespace A138028.P10161864997910334573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A138028.P10161864997910334573

/-! ## A138028.P16913732317155922106

`A000030(A009998(A061579(n)))`
-/

namespace A138028.P16913732317155922106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A009998 (A061579 n).toNat).toNat

end

end A138028.P16913732317155922106

/-! ## A138028.P10242564264685087456

`A000030(A193592(n)^A002262(n))`
-/

namespace A138028.P10242564264685087456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A193592 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A138028.P10242564264685087456

/-! ## A138028.P16627069314417595225

`A000030(A193739(n)^A002262(n))`
-/

namespace A138028.P16627069314417595225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A193739 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A138028.P16627069314417595225

/-! ## A138028.P10573315531484954595

`A000030(A059268(n)^log2(A193739(n)))`
-/

namespace A138028.P10573315531484954595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A059268 n : ℝ) ^ (Real.logb 2 (A193739 n : ℝ)))).toNat

end

end A138028.P10573315531484954595

/-! ## A138028.P2069663524059760447

`A000030(A004736(n+1)^A002262(n))`
-/

namespace A138028.P2069663524059760447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A138028.P2069663524059760447

/-!
# A138031: a(n) = prime(n)^13.

The programs for A138031, the canonical program `A138031.P314039487929949151` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138031 has offset 1).

The definition of A138031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138031.P314039487929949151

`A000040(n+1)^13`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138031

/-- `A000040(n+1)^13` -/
def P314039487929949151.Spec : Prop :=
  ∀ n, P314039487929949151.a n = A138031 (n + 1)

theorem P314039487929949151.correct : P314039487929949151.Spec := by
  intro n
  simp only [A138031, Nat.add_sub_cancel]

end A138031

/-! ## A138031.P7251474449737645933

`A000040(n+1)*A030631(n+1)`
-/

namespace A138031.P7251474449737645933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A030631 (n + 1)

end

end A138031.P7251474449737645933

namespace A138031

/-- `A000040(n+1)*A030631(n+1)` -/
def P7251474449737645933.Spec : Prop :=
  ∀ n, P7251474449737645933.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P6516333213733252724

`A030078(n+1)*A030629(n+1)`
-/

namespace A138031.P6516333213733252724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A030629 (n + 1)

end

end A138031.P6516333213733252724

namespace A138031

/-- `A030078(n+1)*A030629(n+1)` -/
def P6516333213733252724.Spec : Prop :=
  ∀ n, P6516333213733252724.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P14350286909447802283

`A001248(n+1)*A079395(n+1)`
-/

namespace A138031.P14350286909447802283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A079395 (n + 1)

end

end A138031.P14350286909447802283

namespace A138031

/-- `A001248(n+1)*A079395(n+1)` -/
def P14350286909447802283.Spec : Prop :=
  ∀ n, P14350286909447802283.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P3055763758412134621

`A030516(n+1)*A092759(n+1)`
-/

namespace A138031.P3055763758412134621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) * A092759 (n + 1)

end

end A138031.P3055763758412134621

namespace A138031

/-- `A030516(n+1)*A092759(n+1)` -/
def P3055763758412134621.Spec : Prop :=
  ∀ n, P3055763758412134621.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P7150502741072151728

`A030514(n+1)*A179665(n+1)`
-/

namespace A138031.P7150502741072151728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A179665 (n + 1)

end

end A138031.P7150502741072151728

namespace A138031

/-- `A030514(n+1)*A179665(n+1)` -/
def P7150502741072151728.Spec : Prop :=
  ∀ n, P7150502741072151728.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P16124288576032807341

`A030516(n+1)²*A000040(n+1)`
-/

namespace A138031.P16124288576032807341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 2 * A000040 (n + 1)

end

end A138031.P16124288576032807341

namespace A138031

/-- `A030516(n+1)²*A000040(n+1)` -/
def P16124288576032807341.Spec : Prop :=
  ∀ n, P16124288576032807341.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P7455852501039509184

`A000040(n+1)²*A079395(n+1)`
-/

namespace A138031.P7455852501039509184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A079395 (n + 1)

end

end A138031.P7455852501039509184

namespace A138031

/-- `A000040(n+1)²*A079395(n+1)` -/
def P7455852501039509184.Spec : Prop :=
  ∀ n, P7455852501039509184.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P2205835606860368788

`A050997(n+1)²*A030078(n+1)`
-/

namespace A138031.P2205835606860368788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2 * A030078 (n + 1)

end

end A138031.P2205835606860368788

namespace A138031

/-- `A050997(n+1)²*A030078(n+1)` -/
def P2205835606860368788.Spec : Prop :=
  ∀ n, P2205835606860368788.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P8545750463139427404

`A030514(n+1)²*A050997(n+1)`
-/

namespace A138031.P8545750463139427404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 2 * A050997 (n + 1)

end

end A138031.P8545750463139427404

namespace A138031

/-- `A030514(n+1)²*A050997(n+1)` -/
def P8545750463139427404.Spec : Prop :=
  ∀ n, P8545750463139427404.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P9949492570604303906

`A030078(n+1)²*A092759(n+1)`
-/

namespace A138031.P9949492570604303906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2 * A092759 (n + 1)

end

end A138031.P9949492570604303906

namespace A138031

/-- `A030078(n+1)²*A092759(n+1)` -/
def P9949492570604303906.Spec : Prop :=
  ∀ n, P9949492570604303906.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P11319807800940095038

`A001248(n+1)²*A179665(n+1)`
-/

namespace A138031.P11319807800940095038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A179665 (n + 1)

end

end A138031.P11319807800940095038

namespace A138031

/-- `A001248(n+1)²*A179665(n+1)` -/
def P11319807800940095038.Spec : Prop :=
  ∀ n, P11319807800940095038.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P15277118867077419158

`A092759(n+1)²/A000040(n+1)`
-/

namespace A138031.P15277118867077419158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092759 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138031.P15277118867077419158

namespace A138031

/-- `A092759(n+1)²/A000040(n+1)` -/
def P15277118867077419158.Spec : Prop :=
  ∀ n, P15277118867077419158.a n = (A138031 (n + 1) : ℚ)

end A138031

/-! ## A138031.P7716850852780024906

`record[A006530(n+2)^13]`
-/

namespace A138031.P7716850852780024906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138031.P7716850852780024906

namespace A138031

/-- `record[A006530(n+2)^13]` -/
def P7716850852780024906.Spec : Prop :=
  ∀ n, P7716850852780024906.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P14160964212431151902

`record[A020639(n+2)^13]`
-/

namespace A138031.P14160964212431151902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138031.P14160964212431151902

namespace A138031

/-- `record[A020639(n+2)^13]` -/
def P14160964212431151902.Spec : Prop :=
  ∀ n, P14160964212431151902.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P17026972658899563009

`record[A014963(n+2)^13]`
-/

namespace A138031.P17026972658899563009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138031.P17026972658899563009

namespace A138031

/-- `record[A014963(n+2)^13]` -/
def P17026972658899563009.Spec : Prop :=
  ∀ n, P17026972658899563009.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P3356845910980875449

`A017690(record[A006530(n+2)])`
-/

namespace A138031.P3356845910980875449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138031.P3356845910980875449

namespace A138031

/-- `A017690(record[A006530(n+2)])` -/
def P3356845910980875449.Spec : Prop :=
  ∀ n, P3356845910980875449.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P4438117842699600974

`A017690(record[A014963(n+2)])`
-/

namespace A138031.P4438117842699600974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138031.P4438117842699600974

namespace A138031

/-- `A017690(record[A014963(n+2)])` -/
def P4438117842699600974.Spec : Prop :=
  ∀ n, P4438117842699600974.a n = A138031 (n + 1)

end A138031

/-! ## A138031.P2881992307985265629

`A017690(record[A020639(n+2)])`
-/

namespace A138031.P2881992307985265629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138031.P2881992307985265629

namespace A138031

/-- `A017690(record[A020639(n+2)])` -/
def P2881992307985265629.Spec : Prop :=
  ∀ n, P2881992307985265629.a n = A138031 (n + 1)

end A138031

/-!
# A138032: 

The programs for A138032, there is no canonical definition to state claims against.
-/

/-! ## A138032.P476141443687320061

`Δ[A007504(n)]^17`
-/

namespace A138032.P476141443687320061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 17

end

end A138032.P476141443687320061

/-! ## A138032.P5917859551826528564

`A000040(n+1)^17`
-/

namespace A138032.P5917859551826528564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 17

end

end A138032.P5917859551826528564

/-! ## A138032.P5266853289695369788

`A030631(n+1)*A050997(n+1)`
-/

namespace A138032.P5266853289695369788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030631 (n + 1) * A050997 (n + 1)

end

end A138032.P5266853289695369788

/-! ## A138032.P9044704586849263267

`A030516(n+1)²*A050997(n+1)`
-/

namespace A138032.P9044704586849263267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 2 * A050997 (n + 1)

end

end A138032.P9044704586849263267

/-! ## A138032.P6543386952308403036

`A179645(n+1)²*A000040(n+1)`
-/

namespace A138032.P6543386952308403036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1) ^ 2 * A000040 (n + 1)

end

end A138032.P6543386952308403036

/-! ## A138032.P6106895146324215193

`A179665(n+1)²/A000040(n+1)`
-/

namespace A138032.P6106895146324215193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179665 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A138032.P6106895146324215193

/-! ## A138032.P2347285994493312082

`p?[A008578(n+1)]^17`
-/

namespace A138032.P2347285994493312082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 17

end

end A138032.P2347285994493312082

/-! ## A138032.P15416245544875735645

`p?[A050376(n+1)]^17`
-/

namespace A138032.P15416245544875735645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 17

end

end A138032.P15416245544875735645

/-! ## A138032.P633198483670568421

`record[A006530(n+2)^17]`
-/

namespace A138032.P633198483670568421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138032.P633198483670568421

/-! ## A138032.P8718306963739602609

`record[A020639(n+2)^17]`
-/

namespace A138032.P8718306963739602609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138032.P8718306963739602609

/-! ## A138032.P9429682567713822292

`A030629(n+1)²/A030078(n+1)`
-/

namespace A138032.P9429682567713822292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030629 (n + 1) ^ 2 : ℚ) / (A030078 (n + 1) : ℚ)

end

end A138032.P9429682567713822292

/-! ## A138032.P6068973148560630365

`p?[A014681(n)]^17`
-/

namespace A138032.P6068973148560630365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 17

end

end A138032.P6068973148560630365

/-! ## A138032.P16929563298629076596

`record[A014963(n+2)^17]`
-/

namespace A138032.P16929563298629076596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138032.P16929563298629076596

/-! ## A138032.P16820473743516137393

`A017698(record[A006530(n+2)])`
-/

namespace A138032.P16820473743516137393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138032.P16820473743516137393

/-! ## A138032.P14553059094007383951

`A017698(record[A014963(n+2)])`
-/

namespace A138032.P14553059094007383951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138032.P14553059094007383951

/-! ## A138032.P16253146250268641762

`A017698(record[A020639(n+2)])`
-/

namespace A138032.P16253146250268641762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138032.P16253146250268641762

/-! ## A138032.P11266101830604257816

`p?[A056847(n)]^17`
-/

namespace A138032.P11266101830604257816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 17

end

end A138032.P11266101830604257816

/-! ## A138032.P8829078584220386150

`p?[A056240(n+2)]^17`
-/

namespace A138032.P8829078584220386150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 17

end

end A138032.P8829078584220386150

/-!
# A138033: a(n) = max_{ 1 <= i <= n-1 } min{ wt(i), wt(n-i) }, where wt() = A000120() is the binary weight function; a(1) = 0 by convention.

The programs for A138033, the canonical program `A138033.P11625881484895560442` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138033 has offset 1).

The definition of A138033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138033.P6107623196298624277

`floor(log(A048680(n+2)))`
-/

namespace A138033.P6107623196298624277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A048680 (n + 2) : ℝ)⌋

end

end A138033.P6107623196298624277

namespace A138033

/-- `floor(log(A048680(n+2)))` -/
def P6107623196298624277.Spec : Prop :=
  ∀ n, P6107623196298624277.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P11625881484895560442

`floor(A014701(n+2)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138033

/-- `floor(A014701(n+2)/2)` -/
def P11625881484895560442.Spec : Prop :=
  ∀ n, P11625881484895560442.a n = A138033 (n + 1)

theorem P11625881484895560442.correct : P11625881484895560442.Spec := by
  intro n
  simp only [A138033, Nat.add_sub_cancel]

end A138033

/-! ## A138033.P12816208753460458381

`val(A056791(n+2)!, 4)`
-/

namespace A138033.P12816208753460458381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A056791 (n + 2)).toNat) 4

end

end A138033.P12816208753460458381

namespace A138033

/-- `val(A056791(n+2)!, 4)` -/
def P12816208753460458381.Spec : Prop :=
  ∀ n, (P12816208753460458381.a n : ℤ) = A138033 (n + 1)

end A138033

/-! ## A138033.P8025147629985464696

`floor(log2(sqrt(A048678(n+2))))`
-/

namespace A138033.P8025147629985464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A048678 (n + 2) : ℝ))⌋

end

end A138033.P8025147629985464696

namespace A138033

/-- `floor(log2(sqrt(A048678(n+2))))` -/
def P8025147629985464696.Spec : Prop :=
  ∀ n, P8025147629985464696.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P8711371880754985636

`floor(log2(sqrt(A335063(n+2))))`
-/

namespace A138033.P8711371880754985636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A335063 (n + 2) : ℝ))⌋

end

end A138033.P8711371880754985636

namespace A138033

/-- `floor(log2(sqrt(A335063(n+2))))` -/
def P8711371880754985636.Spec : Prop :=
  ∀ n, P8711371880754985636.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P3391744699487006545

`floor((A056792(n+2)-1)/2)`
-/

namespace A138033.P3391744699487006545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056792 (n + 2) - 1 : ℚ) / 2⌋

end

end A138033.P3391744699487006545

namespace A138033

/-- `floor((A056792(n+2)-1)/2)` -/
def P3391744699487006545.Spec : Prop :=
  ∀ n, P3391744699487006545.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P12829594827113252614

`floor(∑{digits}[A007931(n+1), #/2])`
-/

namespace A138033.P12829594827113252614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / 2).sum⌋

end

end A138033.P12829594827113252614

namespace A138033

/-- `floor(∑{digits}[A007931(n+1), #/2])` -/
def P12829594827113252614.Spec : Prop :=
  ∀ n, P12829594827113252614.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P17907681163211135880

`floor(∑{digits}[A284920(n+1)+1, #/4])`
-/

namespace A138033.P17907681163211135880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / 4).sum⌋

end

end A138033.P17907681163211135880

namespace A138033

/-- `floor(∑{digits}[A284920(n+1)+1, #/4])` -/
def P17907681163211135880.Spec : Prop :=
  ∀ n, P17907681163211135880.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P17618157679885888342

`A102572(A370762(n+1))`
-/

namespace A138033.P17618157679885888342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A370762 (n + 1)).toNat

end

end A138033.P17618157679885888342

namespace A138033

/-- `A102572(A370762(n+1))` -/
def P17618157679885888342.Spec : Prop :=
  ∀ n, P17618157679885888342.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P6868777330486300853

`A004526(A014701(n+2))`
-/

namespace A138033.P6868777330486300853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014701 (n + 2)).toNat

end

end A138033.P6868777330486300853

namespace A138033

/-- `A004526(A014701(n+2))` -/
def P6868777330486300853.Spec : Prop :=
  ∀ n, P6868777330486300853.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P12798950067160827661

`A000195(A048680(n+2))`
-/

namespace A138033.P12798950067160827661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A048680 (n + 2)).toNat

end

end A138033.P12798950067160827661

namespace A138033

/-- `A000195(A048680(n+2))` -/
def P12798950067160827661.Spec : Prop :=
  ∀ n, P12798950067160827661.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P13821407678173571067

`A225541(A048678(n+2))`
-/

namespace A138033.P13821407678173571067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A048678 (n + 2)).toNat

end

end A138033.P13821407678173571067

namespace A138033

/-- `A225541(A048678(n+2))` -/
def P13821407678173571067.Spec : Prop :=
  ∀ n, P13821407678173571067.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P11681770166407509823

`A037809(A284459(n+2))`
-/

namespace A138033.P11681770166407509823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A284459 (n + 2)).toNat

end

end A138033.P11681770166407509823

namespace A138033

/-- `A037809(A284459(n+2))` -/
def P11681770166407509823.Spec : Prop :=
  ∀ n, P11681770166407509823.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P4277277832851870219

`A004526(A056792(n+2)-1)`
-/

namespace A138033.P4277277832851870219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056792 (n + 2) - 1).toNat

end

end A138033.P4277277832851870219

namespace A138033

/-- `A004526(A056792(n+2)-1)` -/
def P4277277832851870219.Spec : Prop :=
  ∀ n, P4277277832851870219.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P5499509022272347194

`val(A001316(A032911(n+1)), 4)`
-/

namespace A138033.P5499509022272347194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A032911 (n + 1)).toNat).toNat 4

end

end A138033.P5499509022272347194

namespace A138033

/-- `val(A001316(A032911(n+1)), 4)` -/
def P5499509022272347194.Spec : Prop :=
  ∀ n, (P5499509022272347194.a n : ℤ) = A138033 (n + 1)

end A138033

/-! ## A138033.P1055811106960833066

`val(A001316(A033053(n+1)), 4)`
-/

namespace A138033.P1055811106960833066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A033053 (n + 1)).toNat).toNat 4

end

end A138033.P1055811106960833066

namespace A138033

/-- `val(A001316(A033053(n+1)), 4)` -/
def P1055811106960833066.Spec : Prop :=
  ∀ n, (P1055811106960833066.a n : ℤ) = A138033 (n + 1)

end A138033

/-! ## A138033.P1528600201391164641

`A004526(∑{digits}[A007931(n+1), #])`
-/

namespace A138033.P1528600201391164641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A138033.P1528600201391164641

namespace A138033

/-- `A004526(∑{digits}[A007931(n+1), #])` -/
def P1528600201391164641.Spec : Prop :=
  ∀ n, P1528600201391164641.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P6497055823951337736

`A004526(∑[2-A091090(n+1)])`
-/

namespace A138033.P6497055823951337736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138033.P6497055823951337736

namespace A138033

/-- `A004526(∑[2-A091090(n+1)])` -/
def P6497055823951337736.Spec : Prop :=
  ∀ n, P6497055823951337736.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P1317275074149076813

`1-A065033(∑[A091090(n+1)])+n`
-/

namespace A138033.P1317275074149076813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A138033.P1317275074149076813

namespace A138033

/-- `1-A065033(∑[A091090(n+1)])+n` -/
def P1317275074149076813.Spec : Prop :=
  ∀ n, P1317275074149076813.a n = A138033 (n + 1)

end A138033

/-! ## A138033.P11148055679520957444

`floor(∑{digits}[A032822(n+1), A000010(#)]/2)`
-/

namespace A138033.P11148055679520957444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000010 x).sum : ℤ) : ℚ) / 2⌋

end

end A138033.P11148055679520957444

namespace A138033

/-- `floor(∑{digits}[A032822(n+1), A000010(#)]/2)` -/
def P11148055679520957444.Spec : Prop :=
  ∀ n, P11148055679520957444.a n = A138033 (n + 1)

end A138033

/-!
# A138034: Expansion of (1+3*x^2)/(1-x+x^2).

The programs for A138034, the canonical program `A138034.P6460482371166635878` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138034 has offset 0).

The definition of A138034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x^2)/(1-x+x^2))` (program `A138034.P6460482371166635878`, by `A138034.P6460482371166635878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138034.P6460482371166635878

`ogf((1+3x^2)/(1-x+x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138034

/-- `ogf((1+3x^2)/(1-x+x^2))` -/
def P6460482371166635878.Spec : Prop :=
  ∀ n, P6460482371166635878.a n = A138034 n

theorem P6460482371166635878.correct : P6460482371166635878.Spec := by
  intro n
  simp only [A138034]

end A138034

/-!
# A138036: Write n = C(i,2)+C(j,1) with i>j>=0; let L[n] = [i,j]; sequence gives list of pairs L[n], n >= 0.

The programs for A138036, there is no canonical definition to state claims against.
-/

/-! ## A138036.P6633287404134086644

`A330709(n)+log2(gcd(2, n))`
-/

namespace A138036.P6633287404134086644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A330709 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A138036.P6633287404134086644

/-! ## A138036.P13460420879762967695

`A097285(abs(xor(n, -2)))-1`
-/

namespace A138036.P13460420879762967695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 |Int.xor (n : ℤ) (-2)|.toNat - 1

end

end A138036.P13460420879762967695

/-! ## A138036.P3872898942392704664

`A097285(xor(1, n)+1)-1`
-/

namespace A138036.P3872898942392704664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (Nat.xor 1 n + 1) - 1

end

end A138036.P3872898942392704664

/-! ## A138036.P17412632148674025809

`A226005(comp[n²])-n%2`
-/

namespace A138036.P17412632148674025809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((n % 2 : ℕ) : ℤ)

end

end A138036.P17412632148674025809

/-! ## A138036.P3113896879731463680

`A097285(2-xor(1, 1-n))-1`
-/

namespace A138036.P3113896879731463680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 - Int.xor 1 (1 - (n : ℤ))).toNat - 1

end

end A138036.P3113896879731463680

/-! ## A138036.P4405666324720179844

`A349520(xor(1, n)+1)-and(1, n)`
-/

namespace A138036.P4405666324720179844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (Nat.xor 1 n + 1) - (Nat.land 1 n : ℤ)

end

end A138036.P4405666324720179844

/-! ## A138036.P3988036349404049282

`A097285((-1)^n+1+n)-1`
-/

namespace A138036.P3988036349404049282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 ((-1) ^ n + 1 + (n : ℤ)).toNat - 1

end

end A138036.P3988036349404049282

/-! ## A138036.P11155934175397551429

`A226005(comp[n²-1]+(-1)^n)`
-/

namespace A138036.P11155934175397551429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (-1) ^ n).toNat

end

end A138036.P11155934175397551429

/-! ## A138036.P4806490778495064383

`A330709(n)+A059841(n)`
-/

namespace A138036.P4806490778495064383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + A059841 n

end

end A138036.P4806490778495064383

/-! ## A138036.P725142228995297583

`A330709(n)+abs(A056594(n))`
-/

namespace A138036.P725142228995297583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + |A056594 n|

end

end A138036.P725142228995297583

/-! ## A138036.P2011687971409318740

`A330709(n)+Δ[A080513(n)]`
-/

namespace A138036.P2011687971409318740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + (f1 (n + 1) - f1 n)

end

end A138036.P2011687971409318740

/-! ## A138036.P7652109508929213760

`A330709(n)+Δ[A110654(n)]`
-/

namespace A138036.P7652109508929213760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + (f1 (n + 1) - f1 n)

end

end A138036.P7652109508929213760

/-! ## A138036.P4524556498017525871

`A035064(A097285(xor(1, n)+1))`
-/

namespace A138036.P4524556498017525871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035064 (A097285 (Nat.xor 1 n + 1)).toNat

end

end A138036.P4524556498017525871

/-! ## A138036.P7368179792885941619

`A330709(n)+A000035(n+1)`
-/

namespace A138036.P7368179792885941619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + A000035 (n + 1)

end

end A138036.P7368179792885941619

/-! ## A138036.P9441519568587234170

`1-(A000035(n)-A330709(n))`
-/

namespace A138036.P9441519568587234170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - A330709 n)

end

end A138036.P9441519568587234170

/-! ## A138036.P16545548171184577112

`A330709(n)+2-A000034(n)`
-/

namespace A138036.P16545548171184577112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + (2 - A000034 n)

end

end A138036.P16545548171184577112

/-! ## A138036.P15481833175296295184

`A330709(n)+C(A052928(n), n)`
-/

namespace A138036.P15481833175296295184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + (Nat.choose (A052928 n).toNat n : ℤ)

end

end A138036.P15481833175296295184

/-! ## A138036.P9298080545308338501

`A226005(comp[n²])-A000035(n)`
-/

namespace A138036.P9298080545308338501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A000035 n

end

end A138036.P9298080545308338501

/-! ## A138036.P12100935345714614462

`A330709(n)+Δ[A004526(n+1)]`
-/

namespace A138036.P12100935345714614462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + (f1 (n + 1) - f1 n)

end

end A138036.P12100935345714614462

/-! ## A138036.P1149044266111900300

`A330709(n)-∑[(-1)^A020639(n+1)]`
-/

namespace A138036.P1149044266111900300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A020639 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330709 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138036.P1149044266111900300

/-!
# A138037: a(0) = 0, a(n+1) = n + a(n)/(2 - a(n) mod 2).

The programs for A138037, the canonical program `A138037.P3917128365519058417` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138037 has offset 0).

The definition of A138037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138037.P7705627949904612428

`lcm(2, a(n-1))/2+n` with `a(0)=0`
-/

namespace A138037.P7705627949904612428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 2 + (n : ℚ)

end

end A138037.P7705627949904612428

namespace A138037

/-- `lcm(2, a(n-1))/2+n` -/
def P7705627949904612428.Spec : Prop :=
  ∀ n, P7705627949904612428.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P10174176261597616544

`a(n-1)/gcd(2, a(n-1))+n` with `a(0)=0`
-/

namespace A138037.P10174176261597616544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (n : ℚ)

end

end A138037.P10174176261597616544

namespace A138037

/-- `a(n-1)/gcd(2, a(n-1))+n` -/
def P10174176261597616544.Spec : Prop :=
  ∀ n, P10174176261597616544.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P3917128365519058417

`gcd(a(n-1)², C(a(n-1), 2))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138037

/-- `gcd(a(n-1)², C(a(n-1), 2))+n` -/
def P3917128365519058417.Spec : Prop :=
  ∀ n, (P3917128365519058417.a n : ℤ) = A138037 n

theorem P3917128365519058417.correct : P3917128365519058417.Spec := by
  intro n
  simp only [A138037]

end A138037

/-! ## A138037.P10885291317588244886

`a(n-1)/(2-a(n-1)%2)+n` with `a(0)=0`
-/

namespace A138037.P10885291317588244886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (2 - Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ) + (n : ℚ)

end

end A138037.P10885291317588244886

namespace A138037

/-- `a(n-1)/(2-a(n-1)%2)+n` -/
def P10885291317588244886.Spec : Prop :=
  ∀ n, P10885291317588244886.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P7979366727914324137

`n-a(n-1)/(floor(a(n-1))%2-2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A138037.P7979366727914324137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) - a (n - 1) / (Int.tmod ⌊a (n - 1)⌋ 2 - 2 : ℚ)

end

end A138037.P7979366727914324137

namespace A138037

/-- `n-a(n-1)/(floor(a(n-1))%2-2)` -/
def P7979366727914324137.Spec : Prop :=
  ∀ n, P7979366727914324137.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P16322962590786780763

`n-a(n-1)/((a(n-1)*a(n-1))%2-2)` with `a(0)=0`
-/

namespace A138037.P16322962590786780763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) - a (n - 1) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1) * a (n - 1))) 2 - 2 : ℚ)

end

end A138037.P16322962590786780763

namespace A138037

/-- `n-a(n-1)/((a(n-1)*a(n-1))%2-2)` -/
def P16322962590786780763.Spec : Prop :=
  ∀ n, P16322962590786780763.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P17079861315265103984

`a(n-1)/A000032(and(1, a(n-1)))+n` with `a(0)=0`
-/

namespace A138037.P17079861315265103984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (A000032 (Int.land 1 (SequenceMachineLib.roundAway (a (n - 1)))).toNat : ℚ) + (n : ℚ)

end

end A138037.P17079861315265103984

namespace A138037

/-- `a(n-1)/A000032(and(1, a(n-1)))+n` -/
def P17079861315265103984.Spec : Prop :=
  ∀ n, P17079861315265103984.a n = (A138037 n : ℚ)

end A138037

/-! ## A138037.P7873510839632399941

`A026741(a(n-1))+n` with `a(0)=0`
-/

namespace A138037.P7873510839632399941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A026741 (a (n - 1)).toNat + (n : ℤ)

end

end A138037.P7873510839632399941

namespace A138037

/-- `A026741(a(n-1))+n` -/
def P7873510839632399941.Spec : Prop :=
  ∀ n, P7873510839632399941.a n = A138037 n

end A138037

/-! ## A138037.P7355990352813362477

`a(n-1)-A142150(a(n-1))+n` with `a(0)=0`
-/

namespace A138037.P7355990352813362477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A142150 (a (n - 1)).toNat + (n : ℤ)

end

end A138037.P7355990352813362477

namespace A138037

/-- `a(n-1)-A142150(a(n-1))+n` -/
def P7355990352813362477.Spec : Prop :=
  ∀ n, P7355990352813362477.a n = A138037 n

end A138037

/-! ## A138037.P2080285171632315370

`A030065(2*a(n-1))+n` with `a(0)=0`
-/

namespace A138037.P2080285171632315370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030065 (2 * a (n - 1)).toNat + (n : ℤ)

end

end A138037.P2080285171632315370

namespace A138037

/-- `A030065(2*a(n-1))+n` -/
def P2080285171632315370.Spec : Prop :=
  ∀ n, P2080285171632315370.a n = A138037 n

end A138037

/-! ## A138037.P5107791419032977053

`A173234(a(n-1)+a(n-1))+n` with `a(0)=0`
-/

namespace A138037.P5107791419032977053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173234 (a (n - 1) + a (n - 1)).toNat + (n : ℤ)

end

end A138037.P5107791419032977053

namespace A138037

/-- `A173234(a(n-1)+a(n-1))+n` -/
def P5107791419032977053.Spec : Prop :=
  ∀ n, P5107791419032977053.a n = A138037 n

end A138037

/-!
# A138038: Record values in A138037.

The programs for A138038, the canonical program `A138038.P10256934882892476166` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138038 has offset 0).

The definition of A138038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138038.P10256934882892476166

`record[lcm(2, a(n-1))/2+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138038

/-- `record[lcm(2, a(n-1))/2+n]` -/
def P10256934882892476166.Spec : Prop :=
  ∀ n, P10256934882892476166.a n = (A138038 n : ℚ)

end A138038

/-! ## A138038.P14364758484573891636

`record[a(n-1)/gcd(2, a(n-1))+n]` with `a(0)=0`
-/

namespace A138038.P14364758484573891636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) / (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138038.P14364758484573891636

namespace A138038

/-- `record[a(n-1)/gcd(2, a(n-1))+n]` -/
def P14364758484573891636.Spec : Prop :=
  ∀ n, P14364758484573891636.a n = (A138038 n : ℚ)

end A138038

/-! ## A138038.P15942031478709653686

`record[a(n-1)/(2-a(n-1)%2)+n]` with `a(0)=0`
-/

namespace A138038.P15942031478709653686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) / (2 - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 2 : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138038.P15942031478709653686

namespace A138038

/-- `record[a(n-1)/(2-a(n-1)%2)+n]` -/
def P15942031478709653686.Spec : Prop :=
  ∀ n, P15942031478709653686.a n = (A138038 n : ℚ)

end A138038

/-! ## A138038.P7278189652206128295

`record[n-a(n-1)/(floor(a(n-1))%2-2)]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A138038.P7278189652206128295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℚ) - f1 (n - 1) / (Int.tmod ⌊f1 (n - 1)⌋ 2 - 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138038.P7278189652206128295

namespace A138038

/-- `record[n-a(n-1)/(floor(a(n-1))%2-2)]` -/
def P7278189652206128295.Spec : Prop :=
  ∀ n, P7278189652206128295.a n = (A138038 n : ℚ)

end A138038

/-! ## A138038.P17505342938990038902

`record[A138037(n)]`
-/

namespace A138038.P17505342938990038902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138038.P17505342938990038902

namespace A138038

/-- `record[A138037(n)]` -/
def P17505342938990038902.Spec : Prop :=
  ∀ n, P17505342938990038902.a n = A138038 n

end A138038

/-! ## A138038.P12912555376567134059

`A138037(A138039(n))`
-/

namespace A138038.P12912555376567134059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 (A138039 n).toNat

end

end A138038.P12912555376567134059

namespace A138038

/-- `A138037(A138039(n))` -/
def P12912555376567134059.Spec : Prop :=
  ∀ n, P12912555376567134059.a n = A138038 n

end A138038

/-! ## A138038.P10500605709647235204

`record[A026741(a(n-1))+n]` with `a(0)=0`
-/

namespace A138038.P10500605709647235204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A026741 (f1 (n - 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138038.P10500605709647235204

namespace A138038

/-- `record[A026741(a(n-1))+n]` -/
def P10500605709647235204.Spec : Prop :=
  ∀ n, P10500605709647235204.a n = A138038 n

end A138038

/-!
# A138041: a(1) = 1, a(2) = 10; for n>2, a(n+1) = 4*a(n) + 6*a(n-1). Also a(n) = upper left term in the 2 X 2 matrix [1,3; 3,3].

The programs for A138041, the canonical program `A138041.P13167624330706923966` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138041 has offset 1).

The definition of A138041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138041.P13167624330706923966

`A085939(n+1)+6*A085939(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138041

/-- `A085939(n+1)+6*A085939(n)` -/
def P13167624330706923966.Spec : Prop :=
  ∀ n, P13167624330706923966.a n = A138041 (n + 1)

theorem P13167624330706923966.correct : P13167624330706923966.Spec := by
  intro n
  simp only [A138041, Nat.add_sub_cancel]

end A138041

/-! ## A138041.P13437931607062439321

`ogf((1+6x)/(1-4x-6x^2))`
-/

namespace A138041.P13437931607062439321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -4, -6] n

end

end A138041.P13437931607062439321

namespace A138041

/-- `ogf((1+6x)/(1-4x-6x^2))` -/
def P13437931607062439321.Spec : Prop :=
  ∀ n, P13437931607062439321.a n = A138041 (n + 1)

end A138041

/-! ## A138041.P4846344211820457815

`4*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A138041.P4846344211820457815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * a (n - 1) + 6 * a (n - 2)

end

end A138041.P4846344211820457815

namespace A138041

/-- `4*a(n-1)+6*a(n-2)` -/
def P4846344211820457815.Spec : Prop :=
  ∀ n, (P4846344211820457815.a n : ℤ) = A138041 (n + 1)

end A138041

/-! ## A138041.P10123651134550439050

`2*A084132(n+1)-A147518(n+1)`
-/

namespace A138041.P10123651134550439050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084132 (n + 1) - A147518 (n + 1)

end

end A138041.P10123651134550439050

namespace A138041

/-- `2*A084132(n+1)-A147518(n+1)` -/
def P10123651134550439050.Spec : Prop :=
  ∀ n, P10123651134550439050.a n = A138041 (n + 1)

end A138041

/-!
# A138042: Numbers k such that A096379(k)=A096379(k+1).

The programs for A138042, there is no canonical definition to state claims against.
-/

/-! ## A138042.P17868419901674429478

`A066495(n+1)-2`
-/

namespace A138042.P17868419901674429478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066495 (n + 1) - 2

end

end A138042.P17868419901674429478

/-! ## A138042.P3147171622807252156

`A023444(A066495(n+1))`
-/

namespace A138042.P3147171622807252156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A066495 (n + 1)).toNat

end

end A138042.P3147171622807252156

/-! ## A138042.P17855521723506594978

`eq[A000007(n), A375087(n+1)]`
-/

namespace A138042.P17855521723506594978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P17855521723506594978

/-! ## A138042.P375075298091060464

`eq[A000038(n), A375087(n+1)]`
-/

namespace A138042.P375075298091060464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P375075298091060464

/-! ## A138042.P17421796460731175956

`eq[A036263(n+1), A054541(n+1)]`
-/

namespace A138042.P17421796460731175956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P17421796460731175956

/-! ## A138042.P15922398088071203068

`eq[A036263(n+1), A125266(n+1)]`
-/

namespace A138042.P15922398088071203068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P15922398088071203068

/-! ## A138042.P6478848098228131337

`eq[A028334(n+2), A115061(n+1)]`
-/

namespace A138042.P6478848098228131337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P6478848098228131337

/-! ## A138042.P16208921690931192861

`eq[A028334(n+2), A162345(n+1)]`
-/

namespace A138042.P16208921690931192861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P16208921690931192861

/-! ## A138042.P7846713215697381493

`eq[A062234(n+2), A182986(n+1)]`
-/

namespace A138042.P7846713215697381493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P7846713215697381493

/-! ## A138042.P18256167629546873262

`eq[A159461(n+1)+1, A135732(n+1)]`
-/

namespace A138042.P18256167629546873262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P18256167629546873262

/-! ## A138042.P12186546169542131851

`eq[A093667(n+1), A181428(A028310(n))]`
-/

namespace A138042.P12186546169542131851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138042.P12186546169542131851

/-!
# A138045: Triangle read by rows: largest proper divisor of n as a table, ones excluded.

The programs for A138045, the canonical program `A138045.P1304993605100325034` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138045 has offset 1).

The definition of A138045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138045.P5634113821417850271

`A173539(n*A181101(n+1)+1)`
-/

namespace A138045.P5634113821417850271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173539 ((n : ℤ) * A181101 (n + 1) + 1).toNat

end

end A138045.P5634113821417850271

namespace A138045

/-- `A173539(n*A181101(n+1)+1)` -/
def P5634113821417850271.Spec : Prop :=
  ∀ n, P5634113821417850271.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P16697300349712513979

`A181101(n+1)*A332342(n+1)`
-/

namespace A138045.P16697300349712513979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181101 (n + 1) * A332342 (n + 1)

end

end A138045.P16697300349712513979

namespace A138045

/-- `A181101(n+1)*A332342(n+1)` -/
def P16697300349712513979.Spec : Prop :=
  ∀ n, P16697300349712513979.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P5630168950901002466

`A173539(lcm(n, A181101(n+1))+1)`
-/

namespace A138045.P5630168950901002466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173539 (Int.lcm (n : ℤ) (A181101 (n + 1)) + 1)

end

end A138045.P5630168950901002466

namespace A138045

/-- `A173539(lcm(n, A181101(n+1))+1)` -/
def P5630168950901002466.Spec : Prop :=
  ∀ n, P5630168950901002466.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P3353472032123499548

`A002262(A080036(n))*A181101(n+1)`
-/

namespace A138045.P3353472032123499548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A080036 n).toNat * A181101 (n + 1)

end

end A138045.P3353472032123499548

namespace A138045

/-- `A002262(A080036(n))*A181101(n+1)` -/
def P3353472032123499548.Spec : Prop :=
  ∀ n, P3353472032123499548.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P7097398587093648584

`A002260(n+1)%A007318(n*A181101(n+1))`
-/

namespace A138045.P7097398587093648584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A007318 ((n : ℤ) * A181101 (n + 1)).toNat)

end

end A138045.P7097398587093648584

namespace A138045

/-- `A002260(n+1)%A007318(n*A181101(n+1))` -/
def P7097398587093648584.Spec : Prop :=
  ∀ n, P7097398587093648584.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P11661246538483669578

`A131818(n+1)%A007318(n*A181101(n+1))`
-/

namespace A138045.P11661246538483669578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131818 (n + 1)) (A007318 ((n : ℤ) * A181101 (n + 1)).toNat)

end

end A138045.P11661246538483669578

namespace A138045

/-- `A131818(n+1)%A007318(n*A181101(n+1))` -/
def P11661246538483669578.Spec : Prop :=
  ∀ n, P11661246538483669578.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P1304993605100325034

`A032741(A181105(n+1))%A002260(n+1)*A002260(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A138045

/-- `A032741(A181105(n+1))%A002260(n+1)*A002260(n+1)` -/
def P1304993605100325034.Spec : Prop :=
  ∀ n, P1304993605100325034.a n = A138045 (n + 1)

theorem P1304993605100325034.correct : P1304993605100325034.Spec := by
  intro n
  simp only [A138045, Nat.add_sub_cancel]

end A138045

/-! ## A138045.P12386298319947237720

`and(-A181101(n+1), A173539(n+1))`
-/

namespace A138045.P12386298319947237720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A181101 (n + 1)) (A173539 (n + 1))

end

end A138045.P12386298319947237720

namespace A138045

/-- `and(-A181101(n+1), A173539(n+1))` -/
def P12386298319947237720.Spec : Prop :=
  ∀ n, P12386298319947237720.a n = A138045 (n + 1)

end A138045

/-! ## A138045.P17553398637119014402

`A127093(n+1)*A179527(A013609(n))`
-/

namespace A138045.P17553398637119014402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A179527 (A013609 n).toNat

end

end A138045.P17553398637119014402

namespace A138045

/-- `A127093(n+1)*A179527(A013609(n))` -/
def P17553398637119014402.Spec : Prop :=
  ∀ n, P17553398637119014402.a n = A138045 (n + 1)

end A138045

/-!
# A138046: Positive integers k such that (d(k+1) - d(k)) * (-1)^k is positive, where d(k) = the number of positive divisors of k.

The programs for A138046, there is no canonical definition to state claims against.
-/

/-! ## A138046.P3725172157006023718

`∪[A138171(n+1), A138172(n+1)]`
-/

namespace A138046.P3725172157006023718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138046.P3725172157006023718

/-! ## A138046.P1848547281434214117

`eq[A062157(n), A182394(n+2)]+1`
-/

namespace A138046.P1848547281434214117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A138046.P1848547281434214117

/-! ## A138046.P13789032872427343893

`eq[A009001(2*n), A182394(n+3)]+2`
-/

namespace A138046.P13789032872427343893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A138046.P13789032872427343893

/-! ## A138046.P17714225973056836926

`A020725(eq[A062157(n), A182394(n+2)])`
-/

namespace A138046.P17714225973056836926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138046.P17714225973056836926

/-! ## A138046.P17139590641615545657

`eq[A033999(n), A182394(A000038(n)+1+n)]`
-/

namespace A138046.P17139590641615545657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A000038 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138046.P17139590641615545657

/-! ## A138046.P5285770403101377888

`eq[A056594(2*n), A182394(n+3)]+2`
-/

namespace A138046.P5285770403101377888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A138046.P5285770403101377888

/-!
# A138047: Positive integers n such that (d(n+1) - d(n)) * (-1)^n is nonnegative, where d(n) = the number of positive divisors of n.

The programs for A138047, there is no canonical definition to state claims against.
-/

/-! ## A138047.P4246113427804043199

`∪[A005237(n+1), A138046(n+1)]`
-/

namespace A138047.P4246113427804043199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138047.P4246113427804043199

/-! ## A138047.P15750540097361487738

`eq[A275279(n+1), A275320(n+1)]+1`
-/

namespace A138047.P15750540097361487738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A138047.P15750540097361487738

/-! ## A138047.P4488329789488978479

`eq[A146999(A256608(n+1)), A171936(n+1)]`
-/

namespace A138047.P4488329789488978479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146999 (A256608 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138047.P4488329789488978479

/-!
# A138048: Numbers k such that 15^k + 2 is prime.

The programs for A138048, there is no canonical definition to state claims against.
-/

/-! ## A138048.P15254118182038534136

`record[and(A071662(3*n+4), A089413(n))]`
-/

namespace A138048.P15254118182038534136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071662 (3 * n + 4)) (A089413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138048.P15254118182038534136

/-! ## A138048.P16794154649575101188

`eq[A241035(n), A341722(A341694(n+1))]`
-/

namespace A138048.P16794154649575101188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 (A341694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138048.P16794154649575101188

/-!
# A138049: Numbers k such that 21^k + 2 is prime.

The programs for A138049, there is no canonical definition to state claims against.
-/

/-! ## A138049.P4701096929167422178

`eq[A072211(n+1), A363301(n+1)]`
-/

namespace A138049.P4701096929167422178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138049.P4701096929167422178

/-! ## A138049.P7302274209725223219

`record[A329329(2*n+3)-A170903(n+1)]`
-/

namespace A138049.P7302274209725223219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329329 (2 * n + 3) - A170903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138049.P7302274209725223219

/-! ## A138049.P16672702903590481284

`eq[A027656(A101048(n)), A049581(n)]`
-/

namespace A138049.P16672702903590481284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A101048 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138049.P16672702903590481284

/-!
# A138051: Numbers k such that 27^k + 2 is prime.

The programs for A138051, there is no canonical definition to state claims against.
-/

/-! ## A138051.P2997707347548605144

`lt[A123359(3*n), 2]`
-/

namespace A138051.P2997707347548605144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138051.P2997707347548605144

/-! ## A138051.P82844428638860119

`lt[A013598(3*n), 3]`
-/

namespace A138051.P82844428638860119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138051.P82844428638860119

/-! ## A138051.P14375268809986942612

`lt[A392099(3*n), 5]`
-/

namespace A138051.P14375268809986942612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392099 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138051.P14375268809986942612

/-! ## A138051.P13972263965106992492

`eq[1, A123359(A008486(n))]`
-/

namespace A138051.P13972263965106992492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138051.P13972263965106992492

/-!
# A138055: Period 8: repeat 1, 3, 5, 9, 3, 1, 9, 5.

The programs for A138055, the canonical program `A138055.P2413489479582491722` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138055 has offset 0).

The definition of A138055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138055.P2413489479582491722

`A141518(a(n-2)+1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138055

/-- `A141518(a(n-2)+1)` -/
def P2413489479582491722.Spec : Prop :=
  ∀ n, P2413489479582491722.a n = A138055 n

theorem P2413489479582491722.correct : P2413489479582491722.Spec := by
  intro n
  simp only [A138055]

end A138055

/-!
# A138057: Triangle read by rows: row n consists of 0 followed by n (n+1)'s with alternating signs.

The programs for A138057, the canonical program `A138057.P8115732758806525968` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138057 has offset 0).

The definition of A138057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138057.P8424388429392683153

`∑[char[∑[n]]]*A105812(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A138057.P8424388429392683153
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
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A105812 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A138057.P8424388429392683153

namespace A138057

/-- `∑[char[∑[n]]]*A105812(1-C(∑[char[∑[n]]], 2)+n)` -/
def P8424388429392683153.Spec : Prop :=
  ∀ n, P8424388429392683153.a n = A138057 n

end A138057

/-! ## A138057.P1887311459034043155

`round(sqrt(2*n))*A105812(A002260(n+1))`
-/

namespace A138057.P1887311459034043155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * A105812 (A002260 (n + 1)).toNat

end

end A138057.P1887311459034043155

namespace A138057

/-- `round(sqrt(2*n))*A105812(A002260(n+1))` -/
def P1887311459034043155.Spec : Prop :=
  ∀ n, P1887311459034043155.a n = A138057 n

end A138057

/-! ## A138057.P8115732758806525968

`-(A062157(A002262(n))*A123578(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138057

/-- `-(A062157(A002262(n))*A123578(n))` -/
def P8115732758806525968.Spec : Prop :=
  ∀ n, P8115732758806525968.a n = A138057 n

theorem P8115732758806525968.correct : P8115732758806525968.Spec := by
  intro n
  simp only [A138057]

end A138057

/-! ## A138057.P2462384056640275131

`-(A062157(A002262(n))*A130855(n))`
-/

namespace A138057.P2462384056640275131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 (A002262 n).toNat * A130855 n)

end

end A138057.P2462384056640275131

namespace A138057

/-- `-(A062157(A002262(n))*A130855(n))` -/
def P2462384056640275131.Spec : Prop :=
  ∀ n, P2462384056640275131.a n = A138057 n

end A138057

/-! ## A138057.P13785281319016608965

`A105812(A002260(n+1))*A123578(n)`
-/

namespace A138057.P13785281319016608965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A002260 (n + 1)).toNat * A123578 n

end

end A138057.P13785281319016608965

namespace A138057

/-- `A105812(A002260(n+1))*A123578(n)` -/
def P13785281319016608965.Spec : Prop :=
  ∀ n, P13785281319016608965.a n = A138057 n

end A138057

/-! ## A138057.P1521919731893257144

`A105812(A002260(n+1))*A130855(n)`
-/

namespace A138057.P1521919731893257144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A002260 (n + 1)).toNat * A130855 n

end

end A138057.P1521919731893257144

namespace A138057

/-- `A105812(A002260(n+1))*A130855(n)` -/
def P1521919731893257144.Spec : Prop :=
  ∀ n, P1521919731893257144.a n = A138057 n

end A138057

/-! ## A138057.P3827425514153042440

`A105812(A133819(n+1))*A123578(n)`
-/

namespace A138057.P3827425514153042440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A133819 (n + 1)).toNat * A123578 n

end

end A138057.P3827425514153042440

namespace A138057

/-- `A105812(A133819(n+1))*A123578(n)` -/
def P3827425514153042440.Spec : Prop :=
  ∀ n, P3827425514153042440.a n = A138057 n

end A138057

/-! ## A138057.P7274699788183685371

`A141543(n)-A141543(A080036(n))`
-/

namespace A138057.P7274699788183685371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141543 n - A141543 (A080036 n).toNat

end

end A138057.P7274699788183685371

namespace A138057

/-- `A141543(n)-A141543(A080036(n))` -/
def P7274699788183685371.Spec : Prop :=
  ∀ n, P7274699788183685371.a n = A138057 n

end A138057

/-!
# A138060: Triangle read by rows: row 1 = {1}; for n>1, row n is obtained from row n-1 by applying the morphism 1->1,2; 2->3; 3->4; 4->1.

The programs for A138060, the canonical program `A138060.P12656689642850593216` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138060 has offset 1).

The definition of A138060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138060.P12656689642850593216

`A138297(n+5)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138060

/-- `A138297(n+5)` -/
def P12656689642850593216.Spec : Prop :=
  ∀ n, P12656689642850593216.a n = A138060 (n + 1)

theorem P12656689642850593216.correct : P12656689642850593216.Spec := by
  intro n
  simp only [A138060, Nat.add_sub_cancel]

end A138060

/-! ## A138060.P6444231740660587105

`A128830(5^A025688(n+1))`
-/

namespace A138060.P6444231740660587105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A025688 (n + 1) : ℤ))).toNat

end

end A138060.P6444231740660587105

namespace A138060

/-- `A128830(5^A025688(n+1))` -/
def P6444231740660587105.Spec : Prop :=
  ∀ n, P6444231740660587105.a n = A138060 (n + 1)

end A138060

/-! ## A138060.P11999083467114749799

`A105789(A025688(n+1)^6)`
-/

namespace A138060.P11999083467114749799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105789 (A025688 (n + 1) ^ 6).toNat

end

end A138060.P11999083467114749799

namespace A138060

/-- `A105789(A025688(n+1)^6)` -/
def P11999083467114749799.Spec : Prop :=
  ∀ n, P11999083467114749799.a n = A138060 (n + 1)

end A138060

/-! ## A138060.P6599850968941192583

`A009205(7^A025688(n+1))`
-/

namespace A138060.P6599850968941192583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A025688 (n + 1) : ℤ))).toNat

end

end A138060.P6599850968941192583

namespace A138060

/-- `A009205(7^A025688(n+1))` -/
def P6599850968941192583.Spec : Prop :=
  ∀ n, P6599850968941192583.a n = A138060 (n + 1)

end A138060

/-! ## A138060.P8917803382410124101

`A277543(A135794(n+1))`
-/

namespace A138060.P8917803382410124101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A135794 (n + 1)).toNat

end

end A138060.P8917803382410124101

namespace A138060

/-- `A277543(A135794(n+1))` -/
def P8917803382410124101.Spec : Prop :=
  ∀ n, P8917803382410124101.a n = A138060 (n + 1)

end A138060

/-!
# A138062: Prime number n, lesser of twin primes, both isolated from neighboring primes by more than +- 6.

The programs for A138062, there is no canonical definition to state claims against.
-/

/-! ## A138062.P6623231760352336492

`∩[A140546(n+1)-2, A140546(n+1)]`
-/

namespace A138062.P6623231760352336492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138062.P6623231760352336492

/-! ## A138062.P11344236676319454830

`∩[A140546(n+1), A049820(A140546(n+1))]`
-/

namespace A138062.P11344236676319454830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A140546 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138062.P11344236676319454830

/-!
# A138066: Least k > 0 such that (2n-1)^k + 2 is prime, or 0 if no such number exists.

The programs for A138066, there is no canonical definition to state claims against.
-/

/-! ## A138066.P10366937012008732459

`gcd(A068640(n+1), A138067(n+1))`
-/

namespace A138066.P10366937012008732459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068640 (n + 1)) (A138067 (n + 1))

end

end A138066.P10366937012008732459

/-! ## A138066.P5520526986696554278

`A138067(n+1)^A001222(A067760(n))`
-/

namespace A138066.P5520526986696554278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (A001222 (A067760 n).toNat : ℤ)

end

end A138066.P5520526986696554278

/-! ## A138066.P12406982710698490954

`A138067(n+1)^A061358(A067760(n)²)`
-/

namespace A138066.P12406982710698490954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (A061358 (A067760 n ^ 2).toNat : ℤ)

end

end A138066.P12406982710698490954

/-! ## A138066.P5718139807170879209

`A138067(n+1)^A057979(A016014(n+1))`
-/

namespace A138066.P5718139807170879209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (A057979 (A016014 (n + 1)).toNat : ℤ)

end

end A138066.P5718139807170879209

/-! ## A138066.P16698448044572494069

`A138067(n+1)^A178334(A291437(n+1))`
-/

namespace A138066.P16698448044572494069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (A178334 (A291437 (n + 1)).toNat : ℤ)

end

end A138066.P16698448044572494069

/-! ## A138066.P14882491963666513800

`A138067(n+1)^A178334(A067760(n)-1)`
-/

namespace A138066.P14882491963666513800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (A178334 (A067760 n - 1).toNat : ℤ)

end

end A138066.P14882491963666513800

/-! ## A138066.P12756021396868394360

`A138067(n+1)^(A178334(n)%A067760(n))`
-/

namespace A138066.P12756021396868394360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (Int.tmod (A178334 n) (A067760 n) : ℤ)

end

end A138066.P12756021396868394360

/-! ## A138066.P2473164475309824649

`A138067(n+1)^(A000040(A067760(n)²)%2)`
-/

namespace A138066.P2473164475309824649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138067 (n + 1) : ℚ) ^ (Int.tmod (A000040 (A067760 n ^ 2).toNat) 2 : ℤ)

end

end A138066.P2473164475309824649

/-!
# A138068: Triangle read by rows: row n lists the digits of A135634(n), the palindromic number formed from the reflected decimal expansion of e.

The programs for A138068, there is no canonical definition to state claims against.
-/

/-! ## A138068.P15507170897674427208

`A001113(A004197(n))`
-/

namespace A138068.P15507170897674427208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A004197 n).toNat + 1)

end

end A138068.P15507170897674427208

/-! ## A138068.P16654525176397789057

`A001113(log2(A144464(n)))`
-/

namespace A138068.P16654525176397789057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat + 1)

end

end A138068.P16654525176397789057

/-! ## A138068.P9516510527395927761

`A138115(A106255(n+1))`
-/

namespace A138068.P9516510527395927761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A106255 (n + 1)).toNat

end

end A138068.P9516510527395927761

/-! ## A138068.P7296627921342384020

`A104691(A157454(n+1))`
-/

namespace A138068.P7296627921342384020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A157454 (n + 1)).toNat

end

end A138068.P7296627921342384020

/-! ## A138068.P6107266633779543952

`A138115(A168281(n+1))`
-/

namespace A138068.P6107266633779543952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A168281 (n + 1)).toNat

end

end A138068.P6107266633779543952

/-! ## A138068.P15709143329877360672

`A001113(val(A144464(n), 2))`
-/

namespace A138068.P15709143329877360672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.valuation (A144464 n).toNat 2 + 1)

end

end A138068.P15709143329877360672

/-! ## A138068.P12372533268749104987

`A001113(val(A152714(n), 3))`
-/

namespace A138068.P12372533268749104987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.valuation (A152714 n).toNat 3 + 1)

end

end A138068.P12372533268749104987

/-! ## A138068.P6175745099591084932

`A001113(val(A036561(n), 6))`
-/

namespace A138068.P6175745099591084932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1)

end

end A138068.P6175745099591084932

/-! ## A138068.P12287794824000965278

`A001355(A157454(n+1)+1)`
-/

namespace A138068.P12287794824000965278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A157454 (n + 1) + 1).toNat

end

end A138068.P12287794824000965278

/-! ## A138068.P16859268098032230534

`A078424(A204028(n+1)+1)`
-/

namespace A138068.P16859268098032230534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A204028 (n + 1) + 1).toNat

end

end A138068.P16859268098032230534

/-!
# A138069: Triangle read by rows: row n lists the digits of A135696(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of e.

The programs for A138069, there is no canonical definition to state claims against.
-/

/-! ## A138069.P11922860935005572494

`A138115(A133825(n))`
-/

namespace A138069.P11922860935005572494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A133825 n).toNat

end

end A138069.P11922860935005572494

/-! ## A138069.P11263514311457305981

`A095711(A133825(n)+2)`
-/

namespace A138069.P11263514311457305981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (A133825 n + 2).toNat

end

end A138069.P11263514311457305981

/-! ## A138069.P14170286511172989299

`A001113(A004737(n+1)-1)`
-/

namespace A138069.P14170286511172989299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A004737 (n + 1) - 1).toNat + 1)

end

end A138069.P14170286511172989299

/-! ## A138069.P967217440482049459

`A001355(2*A004737(n+1))`
-/

namespace A138069.P967217440482049459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A004737 (n + 1)).toNat

end

end A138069.P967217440482049459

/-! ## A138069.P11769684032405040468

`A079620(2*A004737(n+1))`
-/

namespace A138069.P11769684032405040468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079620 (2 * A004737 (n + 1)).toNat

end

end A138069.P11769684032405040468

/-! ## A138069.P11048007915567685324

`A104691(2*A004737(n+1)-1)`
-/

namespace A138069.P11048007915567685324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 * A004737 (n + 1) - 1).toNat

end

end A138069.P11048007915567685324

/-! ## A138069.P15866559066372190881

`A001355(A004277(A004737(n+1)))`
-/

namespace A138069.P15866559066372190881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 (A004737 (n + 1)).toNat).toNat

end

end A138069.P15866559066372190881

/-! ## A138069.P13814584224660249085

`A001113(A053615(n-A000196(n)))`
-/

namespace A138069.P13814584224660249085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A053615 ((n : ℤ) - A000196 n).toNat).toNat + 1)

end

end A138069.P13814584224660249085

/-! ## A138069.P15927023354392648205

`A104691(A055086(A004737(n+1)²))`
-/

namespace A138069.P15927023354392648205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A055086 (A004737 (n + 1) ^ 2).toNat).toNat

end

end A138069.P15927023354392648205

/-! ## A138069.P6556052331044480439

`A001355(A000267(n)+1-A253580(n))`
-/

namespace A138069.P6556052331044480439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A000267 n + (1 - A253580 n)).toNat

end

end A138069.P6556052331044480439

/-!
# A138070: Triangle read by rows: row n lists the successive digits of A135697(n), the palindromic number formed from the reflected decimal expansion of Pi.

The programs for A138070, the canonical program `A138070.P9399023133838687128` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138070 has offset 1).

The definition of A138070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138070.P3892873432745388747

`A000796(A004197(n))`
-/

namespace A138070.P3892873432745388747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A004197 n).toNat + 1)

end

end A138070.P3892873432745388747

namespace A138070

/-- `A000796(A004197(n))` -/
def P3892873432745388747.Spec : Prop :=
  ∀ n, P3892873432745388747.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P11726771419548397808

`A000796(log2(A144464(n)))`
-/

namespace A138070.P11726771419548397808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat + 1)

end

end A138070.P11726771419548397808

namespace A138070

/-- `A000796(log2(A144464(n)))` -/
def P11726771419548397808.Spec : Prop :=
  ∀ n, P11726771419548397808.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P8439134891134936373

`A001355(A157454(n+1))`
-/

namespace A138070.P8439134891134936373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A157454 (n + 1)).toNat

end

end A138070.P8439134891134936373

namespace A138070

/-- `A001355(A157454(n+1))` -/
def P8439134891134936373.Spec : Prop :=
  ∀ n, P8439134891134936373.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P9399023133838687128

`A138114(A106255(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A138070

/-- `A138114(A106255(n+1))` -/
def P9399023133838687128.Spec : Prop :=
  ∀ n, P9399023133838687128.a n = A138070 (n + 1)

theorem P9399023133838687128.correct : P9399023133838687128.Spec := by
  intro n
  simp only [A138070, Nat.add_sub_cancel]

end A138070

/-! ## A138070.P4111807307666283947

`A078424(A204028(n+1))`
-/

namespace A138070.P4111807307666283947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A204028 (n + 1)).toNat

end

end A138070.P4111807307666283947

namespace A138070

/-- `A078424(A204028(n+1))` -/
def P4111807307666283947.Spec : Prop :=
  ∀ n, P4111807307666283947.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P3328141746146696904

`A138114(A168281(n+1))`
-/

namespace A138070.P3328141746146696904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A168281 (n + 1)).toNat

end

end A138070.P3328141746146696904

namespace A138070

/-- `A138114(A168281(n+1))` -/
def P3328141746146696904.Spec : Prop :=
  ∀ n, P3328141746146696904.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P10203587697590321610

`A104691(A157454(n+1)+1)`
-/

namespace A138070.P10203587697590321610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A157454 (n + 1) + 1).toNat

end

end A138070.P10203587697590321610

namespace A138070

/-- `A104691(A157454(n+1)+1)` -/
def P10203587697590321610.Spec : Prop :=
  ∀ n, P10203587697590321610.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P9878627617958084066

`A138071(A060734(n+1))`
-/

namespace A138070.P9878627617958084066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A060734 (n + 1)).toNat

end

end A138070.P9878627617958084066

namespace A138070

/-- `A138071(A060734(n+1))` -/
def P9878627617958084066.Spec : Prop :=
  ∀ n, P9878627617958084066.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P13335857967941385950

`A138071(A060736(n+1))`
-/

namespace A138070.P13335857967941385950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A060736 (n + 1)).toNat

end

end A138070.P13335857967941385950

namespace A138070

/-- `A138071(A060736(n+1))` -/
def P13335857967941385950.Spec : Prop :=
  ∀ n, P13335857967941385950.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P11988220406200781537

`A138071(A081344(n+1))`
-/

namespace A138070.P11988220406200781537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A081344 (n + 1)).toNat

end

end A138070.P11988220406200781537

namespace A138070

/-- `A138071(A081344(n+1))` -/
def P11988220406200781537.Spec : Prop :=
  ∀ n, P11988220406200781537.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P5028771509914233166

`A138071(A213928(n+1))`
-/

namespace A138070.P5028771509914233166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A213928 (n + 1)).toNat

end

end A138070.P5028771509914233166

namespace A138070

/-- `A138071(A213928(n+1))` -/
def P5028771509914233166.Spec : Prop :=
  ∀ n, P5028771509914233166.a n = A138070 (n + 1)

end A138070

/-! ## A138070.P1134873980729433342

`A138071(A219159(n+1))`
-/

namespace A138070.P1134873980729433342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A219159 (n + 1)).toNat

end

end A138070.P1134873980729433342

namespace A138070

/-- `A138071(A219159(n+1))` -/
def P1134873980729433342.Spec : Prop :=
  ∀ n, P1134873980729433342.a n = A138070 (n + 1)

end A138070

/-!
# A138071: Triangle read by rows: row n lists the digits of A135698(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of Pi.

The programs for A138071, the canonical program `A138071.P11538494135828144248` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138071 has offset 1).

The definition of A138071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138071.P11538494135828144248

`A138114(A133825(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138071

/-- `A138114(A133825(n))` -/
def P11538494135828144248.Spec : Prop :=
  ∀ n, P11538494135828144248.a n = A138071 (n + 1)

theorem P11538494135828144248.correct : P11538494135828144248.Spec := by
  intro n
  simp only [A138071, Nat.add_sub_cancel]

end A138071

/-! ## A138071.P6470615488552517905

`A095709(A133825(n)+2)`
-/

namespace A138071.P6470615488552517905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (A133825 n + 2).toNat

end

end A138071.P6470615488552517905

namespace A138071

/-- `A095709(A133825(n)+2)` -/
def P6470615488552517905.Spec : Prop :=
  ∀ n, P6470615488552517905.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P12847525941253442102

`A000796(A004737(n+1)-1)`
-/

namespace A138071.P12847525941253442102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A004737 (n + 1) - 1).toNat + 1)

end

end A138071.P12847525941253442102

namespace A138071

/-- `A000796(A004737(n+1)-1)` -/
def P12847525941253442102.Spec : Prop :=
  ∀ n, P12847525941253442102.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P11933966734448922690

`A001355(2*A004737(n+1)-1)`
-/

namespace A138071.P11933966734448922690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A004737 (n + 1) - 1).toNat

end

end A138071.P11933966734448922690

namespace A138071

/-- `A001355(2*A004737(n+1)-1)` -/
def P11933966734448922690.Spec : Prop :=
  ∀ n, P11933966734448922690.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P10003175391758276626

`A000796(A053615(A028391(n)))`
-/

namespace A138071.P10003175391758276626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A053615 (A028391 n).toNat).toNat + 1)

end

end A138071.P10003175391758276626

namespace A138071

/-- `A000796(A053615(A028391(n)))` -/
def P10003175391758276626.Spec : Prop :=
  ∀ n, P10003175391758276626.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P17364534870939506445

`A000796(A053615(n-A000196(n)))`
-/

namespace A138071.P17364534870939506445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A053615 ((n : ℤ) - A000196 n).toNat).toNat + 1)

end

end A138071.P17364534870939506445

namespace A138071

/-- `A000796(A053615(n-A000196(n)))` -/
def P17364534870939506445.Spec : Prop :=
  ∀ n, P17364534870939506445.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P4614914723071082423

`A001355(A000267(n)-A253580(n))`
-/

namespace A138071.P4614914723071082423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A000267 n - A253580 n).toNat

end

end A138071.P4614914723071082423

namespace A138071

/-- `A001355(A000267(n)-A253580(n))` -/
def P4614914723071082423.Spec : Prop :=
  ∀ n, P4614914723071082423.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P9868426539221204943

`A138070(A064788(n+1))`
-/

namespace A138071.P9868426539221204943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A064788 (n + 1)).toNat

end

end A138071.P9868426539221204943

namespace A138071

/-- `A138070(A064788(n+1))` -/
def P9868426539221204943.Spec : Prop :=
  ∀ n, P9868426539221204943.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P5251239629728651563

`A138070(A064790(n+1))`
-/

namespace A138071.P5251239629728651563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A064790 (n + 1)).toNat

end

end A138071.P5251239629728651563

namespace A138071

/-- `A138070(A064790(n+1))` -/
def P5251239629728651563.Spec : Prop :=
  ∀ n, P5251239629728651563.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P15656458776640457947

`A138070(A194280(n+1))`
-/

namespace A138071.P15656458776640457947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A194280 (n + 1)).toNat

end

end A138071.P15656458776640457947

namespace A138071

/-- `A138070(A194280(n+1))` -/
def P15656458776640457947.Spec : Prop :=
  ∀ n, P15656458776640457947.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P9967659171565748322

`A138070(A007606(n+1))`
-/

namespace A138071.P9967659171565748322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A007606 (n + 1)).toNat

end

end A138071.P9967659171565748322

namespace A138071

/-- `A138070(A007606(n+1))` -/
def P9967659171565748322.Spec : Prop :=
  ∀ n, P9967659171565748322.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P4077919991935731483

`A138070(A161983(n+1))`
-/

namespace A138071.P4077919991935731483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A161983 (n + 1)).toNat

end

end A138071.P4077919991935731483

namespace A138071

/-- `A138070(A161983(n+1))` -/
def P4077919991935731483.Spec : Prop :=
  ∀ n, P4077919991935731483.a n = A138071 (n + 1)

end A138071

/-! ## A138071.P16093347880826939179

`A104691(2*A004737(n+1))`
-/

namespace A138071.P16093347880826939179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 * A004737 (n + 1)).toNat

end

end A138071.P16093347880826939179

namespace A138071

/-- `A104691(2*A004737(n+1))` -/
def P16093347880826939179.Spec : Prop :=
  ∀ n, P16093347880826939179.a n = A138071 (n + 1)

end A138071

/-!
# A138072: Triangle read by rows: row n lists the digits of A135700(n), the palindromic number formed from the reflected decimal expansion of golden ratio phi.

The programs for A138072, there is no canonical definition to state claims against.
-/

/-! ## A138072.P3633361619938213275

`A001622(A004197(n))`
-/

namespace A138072.P3633361619938213275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004197 n).toNat + 1)

end

end A138072.P3633361619938213275

/-! ## A138072.P2259855832152764902

`A001622(log2(A144464(n)))`
-/

namespace A138072.P2259855832152764902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat + 1)

end

end A138072.P2259855832152764902

/-! ## A138072.P16846134277609881901

`A138073(A060734(n+1))`
-/

namespace A138072.P16846134277609881901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A060734 (n + 1)).toNat

end

end A138072.P16846134277609881901

/-! ## A138072.P8148545654511254341

`A138073(A060736(n+1))`
-/

namespace A138072.P8148545654511254341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A060736 (n + 1)).toNat

end

end A138072.P8148545654511254341

/-! ## A138072.P1331608834765191902

`A138073(A081344(n+1))`
-/

namespace A138072.P1331608834765191902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A081344 (n + 1)).toNat

end

end A138072.P1331608834765191902

/-! ## A138072.P11923070063012179484

`A138116(A106255(n+1))`
-/

namespace A138072.P11923070063012179484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A106255 (n + 1)).toNat

end

end A138072.P11923070063012179484

/-! ## A138072.P3269275120093082860

`A138116(A168281(n+1))`
-/

namespace A138072.P3269275120093082860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A168281 (n + 1)).toNat

end

end A138072.P3269275120093082860

/-! ## A138072.P11463453112574775446

`A138073(A213928(n+1))`
-/

namespace A138072.P11463453112574775446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A213928 (n + 1)).toNat

end

end A138072.P11463453112574775446

/-! ## A138072.P5194303716023184121

`A138073(A219159(n+1))`
-/

namespace A138072.P5194303716023184121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A219159 (n + 1)).toNat

end

end A138072.P5194303716023184121

/-! ## A138072.P5012700103459553343

`A382130(A157454(n+1))`
-/

namespace A138072.P5012700103459553343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A157454 (n + 1)).toNat

end

end A138072.P5012700103459553343

/-!
# A138073: Triangle read by rows: row n lists the digits of A135699(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of golden ratio phi.

The programs for A138073, the canonical program `A138073.P14236269972961341865` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138073 has offset 1).

The definition of A138073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138073.P14072054393032156235

`A138116(A133825(n))`
-/

namespace A138073.P14072054393032156235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A133825 n).toNat

end

end A138073.P14072054393032156235

namespace A138073

/-- `A138116(A133825(n))` -/
def P14072054393032156235.Spec : Prop :=
  ∀ n, P14072054393032156235.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P14236269972961341865

`A095713(A133825(n)+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138073

/-- `A095713(A133825(n)+2)` -/
def P14236269972961341865.Spec : Prop :=
  ∀ n, P14236269972961341865.a n = A138073 (n + 1)

theorem P14236269972961341865.correct : P14236269972961341865.Spec := by
  intro n
  simp only [A138073, Nat.add_sub_cancel]

end A138073

/-! ## A138073.P14321532247116977620

`A001622(A004737(n+1)-1)`
-/

namespace A138073.P14321532247116977620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A004737 (n + 1) - 1).toNat + 1)

end

end A138073.P14321532247116977620

namespace A138073

/-- `A001622(A004737(n+1)-1)` -/
def P14321532247116977620.Spec : Prop :=
  ∀ n, P14321532247116977620.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P283762100802915950

`A001622(A053615(A028391(n)))`
-/

namespace A138073.P283762100802915950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A053615 (A028391 n).toNat).toNat + 1)

end

end A138073.P283762100802915950

namespace A138073

/-- `A001622(A053615(A028391(n)))` -/
def P283762100802915950.Spec : Prop :=
  ∀ n, P283762100802915950.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P5178524538865259517

`A095713(A167614(A004737(n+1)))`
-/

namespace A138073.P5178524538865259517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A167614 (A004737 (n + 1)).toNat).toNat

end

end A138073.P5178524538865259517

namespace A138073

/-- `A095713(A167614(A004737(n+1)))` -/
def P5178524538865259517.Spec : Prop :=
  ∀ n, P5178524538865259517.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P3213174827294228596

`A001622(A053188(A023969(n)+n))`
-/

namespace A138073.P3213174827294228596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A053188 (A023969 n + (n : ℤ)).toNat).toNat + 1)

end

end A138073.P3213174827294228596

namespace A138073

/-- `A001622(A053188(A023969(n)+n))` -/
def P3213174827294228596.Spec : Prop :=
  ∀ n, P3213174827294228596.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P6864670471465475150

`A001622(A053615(n-A000196(n)))`
-/

namespace A138073.P6864670471465475150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A053615 ((n : ℤ) - A000196 n).toNat).toNat + 1)

end

end A138073.P6864670471465475150

namespace A138073

/-- `A001622(A053615(n-A000196(n)))` -/
def P6864670471465475150.Spec : Prop :=
  ∀ n, P6864670471465475150.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P4831788454272059782

`A001622(A053188(n)-A023969(n))`
-/

namespace A138073.P4831788454272059782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A053188 n - A023969 n).toNat + 1)

end

end A138073.P4831788454272059782

namespace A138073

/-- `A001622(A053188(n)-A023969(n))` -/
def P4831788454272059782.Spec : Prop :=
  ∀ n, P4831788454272059782.a n = A138073 (n + 1)

end A138073

/-! ## A138073.P2027020473596158733

`A001622(A001222(A011782(A325181(n))))`
-/

namespace A138073.P2027020473596158733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A001222 (A011782 (A325181 n).toNat).toNat).toNat + 1)

end

end A138073.P2027020473596158733

namespace A138073

/-- `A001622(A001222(A011782(A325181(n))))` -/
def P2027020473596158733.Spec : Prop :=
  ∀ n, P2027020473596158733.a n = A138073 (n + 1)

end A138073

/-!
# A138076: Triangle read by rows: T(n, k) = (-1)^(n+k) * A060187(n+1, k+1).

The programs for A138076, there is no canonical definition to state claims against.
-/

/-! ## A138076.P16454422681056488158

`(and(2, comp[∑[n]]+n)-1)*A060187(n+1)`
-/

namespace A138076.P16454422681056488158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A060187 (n + 1)

end

end A138076.P16454422681056488158

/-! ## A138076.P17190672863177517790

`A060187(∑[char[∑[n]]]²-n)/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A138076.P17190672863177517790
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A138076.P17190672863177517790

/-! ## A138076.P11627196954505848588

`A060187(n+1)*A097807(n)`
-/

namespace A138076.P11627196954505848588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A097807 n

end

end A138076.P11627196954505848588

/-! ## A138076.P16598537205260371965

`ceil(A176198(n)/2)*A097807(n)`
-/

namespace A138076.P16598537205260371965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176198 n : ℚ) / 2⌉ * A097807 n

end

end A138076.P16598537205260371965

/-! ## A138076.P11749865541082320994

`A060187(n+1)/A097807(comp[∑[n]])`
-/

namespace A138076.P11749865541082320994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / (A097807 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A138076.P11749865541082320994

/-!
# A138077: Index of the largest maximal subgroup of PSL(3,q) as q runs through the prime powers (A000961).

The programs for A138077, there is no canonical definition to state claims against.
-/

/-! ## A138077.P3180244190898128770

`A335865(n+2)`
-/

namespace A138077.P3180244190898128770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335865 (n + 2)

end

end A138077.P3180244190898128770

/-! ## A138077.P8260413860052723358

`lt[1, A325787(n+1)]+1`
-/

namespace A138077.P8260413860052723358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138077.P8260413860052723358

/-! ## A138077.P8416105172396727856

`record[A229997(n+2)+n+2]`
-/

namespace A138077.P8416105172396727856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138077.P8416105172396727856

/-! ## A138077.P3332171324190176827

`A002061(lt[∏{p}[n, -#], 0]+1)`
-/

namespace A138077.P3332171324190176827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A138077.P3332171324190176827

/-!
# A138078: Number of isotopy classes of 4-dimensional latin hypercubes of order n.

The programs for A138078, there is no canonical definition to state claims against.
-/

/-! ## A138078.P17878745138344436325

`A315114(A195947(n)%A196125(n))`
-/

namespace A138078.P17878745138344436325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315114 (Int.tmod (A195947 n) (A196125 n)).toNat

end

end A138078.P17878745138344436325

/-!
# A138088: Triangle read by rows: coefficients of characteristic polynomials of the Z/nZ addition matrices using PolynomialMod[p(x,n),n] in Mathematica. ( Polynomials/nZ): P(x, n) = If[Mod[n, 4] == 0, x^n, If[Mod[n, 2] == 1, If[n == 0, 1, (n - 1)*x^n], (n/2)x^(n - 2) + x^n]].

The programs for A138088, there is no canonical definition to state claims against.
-/

/-! ## A138088.P16442912110506160319

`and(Δ[A259591(n)], A026729(n))`
-/

namespace A138088.P16442912110506160319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A026729 n)

end

end A138088.P16442912110506160319

/-! ## A138088.P1125727580332697738

`and(Δ[A259591(n)], A259095(n+1))`
-/

namespace A138088.P1125727580332697738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A259095 (n + 1))

end

end A138088.P1125727580332697738

/-! ## A138088.P5191298867384511840

`and(A000217(A322222(n)), A287417(n))`
-/

namespace A138088.P5191298867384511840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A322222 n).toNat) (A287417 n)

end

end A138088.P5191298867384511840

/-! ## A138088.P17801978688485860486

`and(A004275(A137906(n+1)), A026729(n))`
-/

namespace A138088.P17801978688485860486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004275 (A137906 (n + 1)).toNat) (A026729 n)

end

end A138088.P17801978688485860486

/-! ## A138088.P16784347672687117461

`and(A004275(A137906(n+1)), A122851(n))`
-/

namespace A138088.P16784347672687117461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004275 (A137906 (n + 1)).toNat) (A122851 n)

end

end A138088.P16784347672687117461

/-!
# A138090: A triangular sequence of three back recursive polynomial that are Hermite H(x,n) like and alternating orthogonal on domain {-Infinity,Infinity} and weight function Exp[ -x^2/2]: P(x, n) = 2*x*P(x, n - 1) - n*P(x, n - 2) + 4*x^3*P(x, n - 3).

The programs for A138090, there is no canonical definition to state claims against.
-/

/-! ## A138090.P5177295357506384254

`A008836(A173210(n))*A138092(n+1)`
-/

namespace A138090.P5177295357506384254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A173210 n).toNat * A138092 (n + 1)

end

end A138090.P5177295357506384254

/-! ## A138090.P2760489004968658912

`A138064(A007318(3*n))*A138092(n+1)`
-/

namespace A138090.P2760489004968658912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138064 (A007318 (3 * n)).toNat * A138092 (n + 1)

end

end A138090.P2760489004968658912

/-!
# A138091: Numbers k such that Sum_{j=0..13} (k + j)^j is a prime.

The programs for A138091, there is no canonical definition to state claims against.
-/

/-! ## A138091.P9702091607290102256

`A298981(A026062(n+6))`
-/

namespace A138091.P9702091607290102256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (A026062 (n + 6)).toNat

end

end A138091.P9702091607290102256

/-!
# A138092: A triangular sequence of four back recursive polynomial that are Hermite H(x,n) like and alternating orthogonal on domain {-Infinity,Infinity} and weight function Exp[ -x^2/2]: P(x, n) = 2*x*P(x, n - 1) - n*P(x, n - 2) + 4*x^3*P(x, n - 3)-n^2*P(x, n - 4).

The programs for A138092, there is no canonical definition to state claims against.
-/

/-! ## A138092.P18271347459488072300

`A008836(A173210(n))*A138090(n+1)`
-/

namespace A138092.P18271347459488072300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A173210 n).toNat * A138090 (n + 1)

end

end A138092.P18271347459488072300

/-! ## A138092.P1543850833434773336

`A138064(A007318(3*n))*A138090(n+1)`
-/

namespace A138092.P1543850833434773336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138064 (A007318 (3 * n)).toNat * A138090 (n + 1)

end

end A138092.P1543850833434773336

/-!
# A138093: A triangular sequence of six back recursive polynomial that are Hermite H(x,n) like and alternating orthogonal on domain {-Infinity,Infinity} and weight function Exp[ -x^2/2]:k=6 P(x, n) = Sum[If[Mod[m, 2] == 1, (m + 1)*x^m*P(x, n - m), n^(m/2)*P(x, n - m)], {m, 1, k}].

The programs for A138093, there is no canonical definition to state claims against.
-/

/-! ## A138093.P11510486947190007186

`filter[A138094(n+1), A071374(#)]`
-/

namespace A138093.P11510486947190007186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A138093.P11510486947190007186

/-! ## A138093.P1832596476174110896

`A138094(∑[A093313(n+1)!])`
-/

namespace A138093.P1832596476174110896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138093.P1832596476174110896

/-! ## A138093.P18144939118727056534

`A138094(n+1)%A141214(n)²`
-/

namespace A138093.P18144939118727056534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138094 (n + 1)) (A141214 n ^ 2)

end

end A138093.P18144939118727056534

/-! ## A138093.P2476011077297912830

`A138094(and(1, A117060(n+1))+n)`
-/

namespace A138093.P2476011077297912830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138094 (Int.land 1 (A117060 (n + 1)) + (n : ℤ)).toNat

end

end A138093.P2476011077297912830

/-! ## A138093.P15143182555536877814

`A138094(n+1)^A093313(n+1)!`
-/

namespace A138093.P15143182555536877814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138094 (n + 1) ^ Nat.factorial (A093313 (n + 1)).toNat

end

end A138093.P15143182555536877814

/-!
# A138096: Number of elements in the n-th column of the second extension of the Mendeleyev-Seaborg periodic table of elements.

The programs for A138096, there is no canonical definition to state claims against.
-/

/-! ## A138096.P16860760117816769702

`A134982((gcd(6, n)%3)!+n)`
-/

namespace A138096.P16860760117816769702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134982 (Nat.factorial (Nat.gcd 6 n % 3) + n)

end

end A138096.P16860760117816769702

/-! ## A138096.P10234097612757772830

`A134982(char[2*comp[xor(n, 2*n)]]+n+1)`
-/

namespace A138096.P10234097612757772830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134982 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A138096.P10234097612757772830

/-! ## A138096.P11152601513171722148

`A134982(A280618(n)+1+n)`
-/

namespace A138096.P11152601513171722148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134982 (A280618 n + 1 + (n : ℤ)).toNat

end

end A138096.P11152601513171722148

/-! ## A138096.P6681689890720719511

`A134982(A327174(n)+1+n)`
-/

namespace A138096.P6681689890720719511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134982 (A327174 n + 1 + (n : ℤ)).toNat

end

end A138096.P6681689890720719511

/-! ## A138096.P10646184245911218053

`A134982(A286686(n+1)-n)`
-/

namespace A138096.P10646184245911218053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134982 (A286686 (n + 1) - (n : ℤ)).toNat

end

end A138096.P10646184245911218053

/-!
# A138098: The Mendeleyev-Seaborg periodic table read from right to left (with spaces omitted).

The programs for A138098, there is no canonical definition to state claims against.
-/

/-! ## A138098.P2914958817804563096

`A138509(n+3)-2`
-/

namespace A138098.P2914958817804563096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138509 (n + 3) - 2

end

end A138098.P2914958817804563096

/-! ## A138098.P534415783354775878

`A168342(A008619(n)+1)-(n%2+2)`
-/

namespace A138098.P534415783354775878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n + 1).toNat - ((n % 2 + 2 : ℕ) : ℤ)

end

end A138098.P534415783354775878

/-! ## A138098.P10812704355764314336

`A256624(A007318(∑[n]))+A138509(n+3)`
-/

namespace A138098.P10812704355764314336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256624 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A138509 (n + 3)

end

end A138098.P10812704355764314336

/-! ## A138098.P17778655538127424641

`A354825(A000040(n+1))+A138509(n+3)`
-/

namespace A138098.P17778655538127424641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354825 (A000040 (n + 1)).toNat + A138509 (n + 3)

end

end A138098.P17778655538127424641

/-! ## A138098.P989100276437350528

`A354825(A217063(n+1))+A138509(n+3)`
-/

namespace A138098.P989100276437350528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354825 (A217063 (n + 1)).toNat + A138509 (n + 3)

end

end A138098.P989100276437350528

/-! ## A138098.P3119536841546281458

`A168342(A008619(n)+1)-A000035(n)-2`
-/

namespace A138098.P3119536841546281458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n + 1).toNat - A000035 n - 2

end

end A138098.P3119536841546281458

/-! ## A138098.P7805667216728498471

`A354825(A008578(n+3))+A138509(n+3)`
-/

namespace A138098.P7805667216728498471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354825 (A008578 (n + 3)).toNat + A138509 (n + 3)

end

end A138098.P7805667216728498471

/-! ## A138098.P7716520400028803866

`A168342(A008619(n)+1)-A134452(n)²-2`
-/

namespace A138098.P7716520400028803866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168342 (A008619 n + 1).toNat - A134452 n ^ 2 - 2

end

end A138098.P7716520400028803866

/-!
# A138099: Irregular triangle read by rows: T(n,k) = k + floor(n/2), 1 <= k <= ceiling(n/2).

The programs for A138099, the canonical program `A138099.P3643861897476022930` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138099 has offset 1).

The definition of A138099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138099.P3643861897476022930

`n+1-floor(1/4*(floor(sqrt(4*(n+1)-3))-1)²)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138099

/-- `n+1-floor(1/4*(floor(sqrt(4*(n+1)-3))-1)²)` -/
def P3643861897476022930.Spec : Prop :=
  ∀ n, P3643861897476022930.a n = A138099 (n + 1)

theorem P3643861897476022930.correct : P3643861897476022930.Spec := by
  intro n
  simp only [A138099, Nat.add_sub_cancel]

end A138099

/-! ## A138099.P4149360373995179499

`(round(sqrt(n+1))²+n)%ceil(record[sqrt(xor(3, n))])`
-/

namespace A138099.P4149360373995179499
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)) ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A138099.P4149360373995179499

namespace A138099

/-- `(round(sqrt(n+1))²+n)%ceil(record[sqrt(xor(3, n))])` -/
def P4149360373995179499.Spec : Prop :=
  ∀ n, P4149360373995179499.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P18259159279057326565

`((floor(sqrt(n))+1)²+n)%ceil(2*sqrt(n+1))`
-/

namespace A138099.P18259159279057326565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.sqrt n + 1) ^ 2 + n : ℤ) ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

end

end A138099.P18259159279057326565

namespace A138099

/-- `((floor(sqrt(n))+1)²+n)%ceil(2*sqrt(n+1))` -/
def P18259159279057326565.Spec : Prop :=
  ∀ n, P18259159279057326565.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P5232632958268457405

`A322832(comp[∑[2*n]])`
-/

namespace A138099.P5232632958268457405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138099.P5232632958268457405

namespace A138099

/-- `A322832(comp[∑[2*n]])` -/
def P5232632958268457405.Spec : Prop :=
  ∀ n, P5232632958268457405.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P10022982639196875054

`abs(1-A336751(n+1))`
-/

namespace A138099.P10022982639196875054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A336751 (n + 1)|

end

end A138099.P10022982639196875054

namespace A138099

/-- `abs(1-A336751(n+1))` -/
def P10022982639196875054.Spec : Prop :=
  ∀ n, P10022982639196875054.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P10758560390802062408

`A008619(2*A322832(n))`
-/

namespace A138099.P10758560390802062408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A322832 n).toNat

end

end A138099.P10758560390802062408

namespace A138099

/-- `A008619(2*A322832(n))` -/
def P10758560390802062408.Spec : Prop :=
  ∀ n, P10758560390802062408.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P15187677109005004903

`A328399(2*A322832(n))`
-/

namespace A138099.P15187677109005004903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A322832 n).toNat

end

end A138099.P15187677109005004903

namespace A138099

/-- `A328399(2*A322832(n))` -/
def P15187677109005004903.Spec : Prop :=
  ∀ n, P15187677109005004903.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P5345714037328419377

`A023444(A336751(n+1)+1)`
-/

namespace A138099.P5345714037328419377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A336751 (n + 1) + 1).toNat

end

end A138099.P5345714037328419377

namespace A138099

/-- `A023444(A336751(n+1)+1)` -/
def P5345714037328419377.Spec : Prop :=
  ∀ n, P5345714037328419377.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P3395423691866165128

`A008619(A322832(n)+A322832(n))`
-/

namespace A138099.P3395423691866165128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A322832 n + A322832 n).toNat

end

end A138099.P3395423691866165128

namespace A138099

/-- `A008619(A322832(n)+A322832(n))` -/
def P3395423691866165128.Spec : Prop :=
  ∀ n, P3395423691866165128.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P14704033808120083804

`A002260(2*n+1-A055087(n))`
-/

namespace A138099.P14704033808120083804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((2 * n + 1 : ℤ) - A055087 n).toNat

end

end A138099.P14704033808120083804

namespace A138099

/-- `A002260(2*n+1-A055087(n))` -/
def P14704033808120083804.Spec : Prop :=
  ∀ n, P14704033808120083804.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P14777445300625410248

`A002260(eq[1, A340507(n)])`
-/

namespace A138099.P14777445300625410248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138099.P14777445300625410248

namespace A138099

/-- `A002260(eq[1, A340507(n)])` -/
def P14777445300625410248.Spec : Prop :=
  ∀ n, P14777445300625410248.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P7036330468312585243

`A002024(A091995(n+1))`
-/

namespace A138099.P7036330468312585243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A091995 (n + 1)).toNat

end

end A138099.P7036330468312585243

namespace A138099

/-- `A002024(A091995(n+1))` -/
def P7036330468312585243.Spec : Prop :=
  ∀ n, P7036330468312585243.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P17897076308686245736

`A002260(lt[1, A110509(n)²])`
-/

namespace A138099.P17897076308686245736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138099.P17897076308686245736

namespace A138099

/-- `A002260(lt[1, A110509(n)²])` -/
def P17897076308686245736.Spec : Prop :=
  ∀ n, P17897076308686245736.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P4297128341515457644

`A002262(lt[1, A110509(n)²])`
-/

namespace A138099.P4297128341515457644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138099.P4297128341515457644

namespace A138099

/-- `A002262(lt[1, A110509(n)²])` -/
def P4297128341515457644.Spec : Prop :=
  ∀ n, P4297128341515457644.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P14056504177799284677

`A002260(lt[1, A030528(n+1)])`
-/

namespace A138099.P14056504177799284677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138099.P14056504177799284677

namespace A138099

/-- `A002260(lt[1, A030528(n+1)])` -/
def P14056504177799284677.Spec : Prop :=
  ∀ n, P14056504177799284677.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P11947294395873721715

`A002262(lt[1, A026729(n+1)])`
-/

namespace A138099.P11947294395873721715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138099.P11947294395873721715

namespace A138099

/-- `A002262(lt[1, A026729(n+1)])` -/
def P11947294395873721715.Spec : Prop :=
  ∀ n, P11947294395873721715.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P5773660980170831160

`A002262(lt[A144299(n), 1])`
-/

namespace A138099.P5773660980170831160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138099.P5773660980170831160

namespace A138099

/-- `A002262(lt[A144299(n), 1])` -/
def P5773660980170831160.Spec : Prop :=
  ∀ n, P5773660980170831160.a n = A138099 (n + 1)

end A138099

/-! ## A138099.P10243270046957348918

`A144328(A274428(n+1))`
-/

namespace A138099.P10243270046957348918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A274428 (n + 1)).toNat

end

end A138099.P10243270046957348918

namespace A138099

/-- `A144328(A274428(n+1))` -/
def P10243270046957348918.Spec : Prop :=
  ∀ n, P10243270046957348918.a n = A138099 (n + 1)

end A138099

