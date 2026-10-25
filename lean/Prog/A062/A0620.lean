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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
# A062000: a(n) = a(n-1)^2 - a(n-2)^2 with a(0) = 0, a(1) = 2.

The programs for A062000, the canonical program `A062000.P13650763219201557625` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062000 has offset 0).

The definition of A062000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)²` (program `A062000.P13650763219201557625`, by `A062000.P13650763219201557625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062000.P13650763219201557625

`a(n-1)²-a(n-2)²` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062000

/-- `a(n-1)²-a(n-2)²` -/
def P13650763219201557625.Spec : Prop :=
  ∀ n, P13650763219201557625.a n = A062000 n

theorem P13650763219201557625.correct : P13650763219201557625.Spec := by
  intro n
  simp only [A062000]

end A062000

/-! ## A062000.P6739616756735114089

`2*A061999(n)`
-/

namespace A062000.P6739616756735114089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061999 n

end

end A062000.P6739616756735114089

namespace A062000

/-- `2*A061999(n)` -/
def P6739616756735114089.Spec : Prop :=
  ∀ n, P6739616756735114089.a n = A062000 n

end A062000

/-! ## A062000.P3540093098665837725

`(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A062000.P3540093098665837725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * (a (n - 1) - a (n - 2))

end

end A062000.P3540093098665837725

namespace A062000

/-- `(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` -/
def P3540093098665837725.Spec : Prop :=
  ∀ n, P3540093098665837725.a n = A062000 n

theorem P3540093098665837725.correct : P3540093098665837725.Spec := by
  intro n
  simp only [A062000, Nat.add_sub_cancel, A062000.P3540093098665837725.a, A062000.P13650763219201557625.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062000

/-! ## A062000.P5200411597189378202

`a(n-1)*a(n-1)-a(n-2)*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A062000.P5200411597189378202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) * a (n - 1) - a (n - 2) * a (n - 2)

end

end A062000.P5200411597189378202

namespace A062000

/-- `a(n-1)*a(n-1)-a(n-2)*a(n-2)` -/
def P5200411597189378202.Spec : Prop :=
  ∀ n, P5200411597189378202.a n = A062000 n

theorem P5200411597189378202.correct : P5200411597189378202.Spec := by
  intro n
  simp only [A062000, Nat.add_sub_cancel, A062000.P5200411597189378202.a, A062000.P13650763219201557625.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062000

/-! ## A062000.P18359588216140158731

`A061999(n)+A061999(A062003(n))`
-/

namespace A062000.P18359588216140158731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061999 n + A061999 (A062003 n).toNat

end

end A062000.P18359588216140158731

namespace A062000

/-- `A061999(n)+A061999(A062003(n))` -/
def P18359588216140158731.Spec : Prop :=
  ∀ n, P18359588216140158731.a n = A062000 n

end A062000

/-!
# A062001: Table by antidiagonals of n-Stohr sequences: T(n,k) is least positive integer not the sum of at most n distinct terms in the n-th row from T(n,1) through to T(n,k-1).

The programs for A062001, there is no canonical definition to state claims against.
-/

/-! ## A062001.P10093212368213442173

`A068063(A047888(n+1))+A025581(n)`
-/

namespace A062001.P10093212368213442173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A047888 (n + 1)).toNat + A025581 n

end

end A062001.P10093212368213442173

/-! ## A062001.P15452684616317210321

`A068063(A047888(n+1))+A025660(n+1)`
-/

namespace A062001.P15452684616317210321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A047888 (n + 1)).toNat + A025660 (n + 1)

end

end A062001.P15452684616317210321

/-! ## A062001.P15021632989029900355

`A206735(n+1)+A157187(A157156(n))`
-/

namespace A062001.P15021632989029900355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A157187 (A157156 n).toNat

end

end A062001.P15021632989029900355

/-! ## A062001.P5065829999901622383

`A378177(A378163(n+1))+A122283(n)`
-/

namespace A062001.P5065829999901622383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378177 (A378163 (n + 1)).toNat + A122283 n

end

end A062001.P5065829999901622383

/-! ## A062001.P3102869400593226420

`A106289(A060637(n))`
-/

namespace A062001.P3102869400593226420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (A060637 n).toNat

end

end A062001.P3102869400593226420

/-!
# A062003: Product of the k numbers formed by cyclically permuting digits of n (where k = number of digits of n).

The programs for A062003, there is no canonical definition to state claims against.
-/

/-! ## A062003.P7350400017228934352

`A061147(A028310(n))%A000165(n)`
-/

namespace A062003.P7350400017228934352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061147 (A028310 n).toNat) (A000165 n)

end

end A062003.P7350400017228934352

/-! ## A062003.P17703741641545595668

`A061147(A028310(n))-A185015(A231681(3*n+2))`
-/

namespace A062003.P17703741641545595668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (A028310 n).toNat - A185015 (A231681 (3 * n + 2)).toNat

end

end A062003.P17703741641545595668

/-! ## A062003.P10752414651580243208

`A061147(A028310(n))-A185015(A377286(2*n+3))`
-/

namespace A062003.P10752414651580243208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (A028310 n).toNat - A185015 (A377286 (2 * n + 3)).toNat

end

end A062003.P10752414651580243208

/-! ## A062003.P15468537507508104198

`A061147(A028310(n))-A185015(A072180(n+1))`
-/

namespace A062003.P15468537507508104198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (A028310 n).toNat - A185015 (A072180 (n + 1)).toNat

end

end A062003.P15468537507508104198

/-! ## A062003.P5425667809882220865

`n*A048996(A014378(n))`
-/

namespace A062003.P5425667809882220865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048996 (A014378 n).toNat

end

end A062003.P5425667809882220865

/-!
# A062004: a(n) = 2*n*mu(n).

The programs for A062004, the canonical program `A062004.P2272493028344736594` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062004 has offset 1).

The definition of A062004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062004.P2272493028344736594

`2*A055615(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A062004

/-- `2*A055615(n+1)` -/
def P2272493028344736594.Spec : Prop :=
  ∀ n, P2272493028344736594.a n = A062004 (n + 1)

theorem P2272493028344736594.correct : P2272493028344736594.Spec := by
  intro n
  simp only [A062004, Nat.add_sub_cancel]

end A062004

/-! ## A062004.P12127731610769126688

`2*(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)`
-/

namespace A062004.P12127731610769126688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2))

end

end A062004.P12127731610769126688

namespace A062004

/-- `2*(n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2)` -/
def P12127731610769126688.Spec : Prop :=
  ∀ n, P12127731610769126688.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P4159528497697869425

`(n+1)*(A133695(n+1)+1)`
-/

namespace A062004.P4159528497697869425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A133695 (n + 1) + 1)

end

end A062004.P4159528497697869425

namespace A062004

/-- `(n+1)*(A133695(n+1)+1)` -/
def P4159528497697869425.Spec : Prop :=
  ∀ n, P4159528497697869425.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P4573565069395669817

`2*(A061669(n+1)-(n+1))`
-/

namespace A062004.P4573565069395669817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061669 (n + 1) - (n + 1 : ℤ))

end

end A062004.P4573565069395669817

namespace A062004

/-- `2*(A061669(n+1)-(n+1))` -/
def P4573565069395669817.Spec : Prop :=
  ∀ n, P4573565069395669817.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P10830035056115335062

`2*(n+1)*A008683(n+1)`
-/

namespace A062004.P10830035056115335062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A008683 (n + 1))

end

end A062004.P10830035056115335062

namespace A062004

/-- `2*(n+1)*A008683(n+1)` -/
def P10830035056115335062.Spec : Prop :=
  ∀ n, P10830035056115335062.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P15994722750569865293

`2/(n+1)*A334657(n+1)`
-/

namespace A062004.P15994722750569865293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A334657 (n + 1) : ℚ)

end

end A062004.P15994722750569865293

namespace A062004

/-- `2/(n+1)*A334657(n+1)` -/
def P15994722750569865293.Spec : Prop :=
  ∀ n, P15994722750569865293.a n = (A062004 (n + 1) : ℚ)

end A062004

/-! ## A062004.P16504551640188200549

`A010694(n)*A326937(n+1)`
-/

namespace A062004.P16504551640188200549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A326937 (n + 1)

end

end A062004.P16504551640188200549

namespace A062004

/-- `A010694(n)*A326937(n+1)` -/
def P16504551640188200549.Spec : Prop :=
  ∀ n, P16504551640188200549.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P9745019313159024124

`A008683(n+1)*Δ[A048058(n)]`
-/

namespace A062004.P9745019313159024124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062004.P9745019313159024124

namespace A062004

/-- `A008683(n+1)*Δ[A048058(n)]` -/
def P9745019313159024124.Spec : Prop :=
  ∀ n, P9745019313159024124.a n = A062004 (n + 1)

theorem P9745019313159024124.correct : P9745019313159024124.Spec := by
  intro n
  simp only [A062004, Nat.add_sub_cancel, A062004.P9745019313159024124.f1, A062004.P9745019313159024124.a, A062004.P2272493028344736594.a, A008683, A008683.P18254306604665478110.a, A048058, A048058.P10966972837158806934.a, A055615, A055615.P8993130195977213181.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062004

/-! ## A062004.P13315667936089032096

`A378217(n+1)+A023900(n+1)`
-/

namespace A062004.P13315667936089032096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378217 (n + 1) + A023900 (n + 1)

end

end A062004.P13315667936089032096

namespace A062004

/-- `A378217(n+1)+A023900(n+1)` -/
def P13315667936089032096.Spec : Prop :=
  ∀ n, P13315667936089032096.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P1257793158347843981

`(A005408(n)+1)*A008683(n+1)`
-/

namespace A062004.P1257793158347843981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1) * A008683 (n + 1)

end

end A062004.P1257793158347843981

namespace A062004

/-- `(A005408(n)+1)*A008683(n+1)` -/
def P1257793158347843981.Spec : Prop :=
  ∀ n, P1257793158347843981.a n = A062004 (n + 1)

theorem P1257793158347843981.correct : P1257793158347843981.Spec := by
  intro n
  simp only [A062004, Nat.add_sub_cancel, A062004.P1257793158347843981.a, A062004.P2272493028344736594.a, A005408, A005408.P17437947328870227736.a, A008683, A008683.P18254306604665478110.a, A055615, A055615.P8993130195977213181.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062004

/-! ## A062004.P15998936697777076597

`A005843(n+1)*A008683(n+1)`
-/

namespace A062004.P15998936697777076597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A008683 (n + 1)

end

end A062004.P15998936697777076597

namespace A062004

/-- `A005843(n+1)*A008683(n+1)` -/
def P15998936697777076597.Spec : Prop :=
  ∀ n, P15998936697777076597.a n = A062004 (n + 1)

theorem P15998936697777076597.correct : P15998936697777076597.Spec := by
  intro n
  simp only [A062004, Nat.add_sub_cancel, A062004.P15998936697777076597.a, A062004.P2272493028344736594.a, A005843, A005843.P3167286115683555970.a, A008683, A008683.P18254306604665478110.a, A055615, A055615.P8993130195977213181.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062004

/-! ## A062004.P5125944817353096734

`A008683(n+1)*A047510(n+1)`
-/

namespace A062004.P5125944817353096734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A047510 (n + 1)

end

end A062004.P5125944817353096734

namespace A062004

/-- `A008683(n+1)*A047510(n+1)` -/
def P5125944817353096734.Spec : Prop :=
  ∀ n, P5125944817353096734.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P10133627718234190881

`A008683(n+1)*A056134(n+1)`
-/

namespace A062004.P10133627718234190881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A056134 (n + 1)

end

end A062004.P10133627718234190881

namespace A062004

/-- `A008683(n+1)*A056134(n+1)` -/
def P10133627718234190881.Spec : Prop :=
  ∀ n, P10133627718234190881.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P5663413688336863407

`A008683(n+1)*A073353(n+1)`
-/

namespace A062004.P5663413688336863407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A073353 (n + 1)

end

end A062004.P5663413688336863407

namespace A062004

/-- `A008683(n+1)*A073353(n+1)` -/
def P5663413688336863407.Spec : Prop :=
  ∀ n, P5663413688336863407.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P10372406392947876956

`A008683(n+1)*A254732(n+1)`
-/

namespace A062004.P10372406392947876956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A254732 (n + 1)

end

end A062004.P10372406392947876956

namespace A062004

/-- `A008683(n+1)*A254732(n+1)` -/
def P10372406392947876956.Spec : Prop :=
  ∀ n, P10372406392947876956.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P12132704106536530097

`A008683(n+1)*A254733(n+1)`
-/

namespace A062004.P12132704106536530097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A254733 (n + 1)

end

end A062004.P12132704106536530097

namespace A062004

/-- `A008683(n+1)*A254733(n+1)` -/
def P12132704106536530097.Spec : Prop :=
  ∀ n, P12132704106536530097.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P8477568101202994062

`A008683(n+1)*A274611(n+1)`
-/

namespace A062004.P8477568101202994062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A274611 (n + 1)

end

end A062004.P8477568101202994062

namespace A062004

/-- `A008683(n+1)*A274611(n+1)` -/
def P8477568101202994062.Spec : Prop :=
  ∀ n, P8477568101202994062.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P2668130447721131643

`A094756(n+1)*A326937(n+1)`
-/

namespace A062004.P2668130447721131643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094756 (n + 1) * A326937 (n + 1)

end

end A062004.P2668130447721131643

namespace A062004

/-- `A094756(n+1)*A326937(n+1)` -/
def P2668130447721131643.Spec : Prop :=
  ∀ n, P2668130447721131643.a n = A062004 (n + 1)

end A062004

/-! ## A062004.P7746306685951127678

`A171977(n+1)*A326937(n+1)`
-/

namespace A062004.P7746306685951127678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) * A326937 (n + 1)

end

end A062004.P7746306685951127678

namespace A062004

/-- `A171977(n+1)*A326937(n+1)` -/
def P7746306685951127678.Spec : Prop :=
  ∀ n, P7746306685951127678.a n = A062004 (n + 1)

end A062004

/-!
# A062005: Floor of arithmetic-geometric mean of n and 2n.

The programs for A062005, the canonical program `A062005.P9930385547503265020` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062005 has offset 0).

The definition of A062005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062005.P9930385547503265020

`floor(n*(2-44/81))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062005

/-- `floor(n*(2-44/81))` -/
def P9930385547503265020.Spec : Prop :=
  ∀ n, P9930385547503265020.a n = A062005 n

theorem P9930385547503265020.correct : P9930385547503265020.Spec := by
  intro n
  simp only [A062005]

end A062005

/-! ## A062005.P7327119362364336816

`A343609(A343609(n)+13*n)`
-/

namespace A062005.P7327119362364336816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A343609 n + (13 * n : ℤ)).toNat

end

end A062005.P7327119362364336816

namespace A062005

/-- `A343609(A343609(n)+13*n)` -/
def P7327119362364336816.Spec : Prop :=
  ∀ n, P7327119362364336816.a n = A062005 n

end A062005

/-! ## A062005.P18324057775155345334

`A003056(A258376(3*n+2)-A019446(3*n+1))`
-/

namespace A062005.P18324057775155345334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A258376 (3 * n + 2) - A019446 (3 * n + 1)).toNat

end

end A062005.P18324057775155345334

namespace A062005

/-- `A003056(A258376(3*n+2)-A019446(3*n+1))` -/
def P18324057775155345334.Spec : Prop :=
  ∀ n, P18324057775155345334.a n = A062005 n

end A062005

/-! ## A062005.P17800768359677846432

`A000196(∑[A091087(A042948(n))])`
-/

namespace A062005.P17800768359677846432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062005.P17800768359677846432

namespace A062005

/-- `A000196(∑[A091087(A042948(n))])` -/
def P17800768359677846432.Spec : Prop :=
  ∀ n, P17800768359677846432.a n = A062005 n

end A062005

/-! ## A062005.P4616834776401376483

`A000196(∑[A299637(n)]-A299637(n))`
-/

namespace A062005.P4616834776401376483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - A299637 n).toNat

end

end A062005.P4616834776401376483

namespace A062005

/-- `A000196(∑[A299637(n)]-A299637(n))` -/
def P4616834776401376483.Spec : Prop :=
  ∀ n, P4616834776401376483.a n = A062005 n

end A062005

/-! ## A062005.P15013868991325326302

`A000196(A038405(n)-A000196(n+1))`
-/

namespace A062005.P15013868991325326302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A038405 n - A000196 (n + 1)).toNat

end

end A062005.P15013868991325326302

namespace A062005

/-- `A000196(A038405(n)-A000196(n+1))` -/
def P15013868991325326302.Spec : Prop :=
  ∀ n, P15013868991325326302.a n = A062005 n

end A062005

/-! ## A062005.P14793890527499364844

`A000196(A049473(3*n²))`
-/

namespace A062005.P14793890527499364844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A049473 (3 * n ^ 2)).toNat

end

end A062005.P14793890527499364844

namespace A062005

/-- `A000196(A049473(3*n²))` -/
def P14793890527499364844.Spec : Prop :=
  ∀ n, P14793890527499364844.a n = A062005 n

end A062005

/-! ## A062005.P11027328135562646918

`comp[A013938(3*(n+1))]%A198034(2*(n+1))`
-/

namespace A062005.P11027328135562646918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A198034 (2 * (n + 1)))

end

end A062005.P11027328135562646918

namespace A062005

/-- `comp[A013938(3*(n+1))]%A198034(2*(n+1))` -/
def P11027328135562646918.Spec : Prop :=
  ∀ n, P11027328135562646918.a n = A062005 n

end A062005

/-!
# A062006: a(n) = prime(n)^n + 1.

The programs for A062006, there is no canonical definition to state claims against.
-/

/-! ## A062006.P1525175762063922720

`p?[comp[n²]]^(n+1)+1`
-/

namespace A062006.P1525175762063922720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (n + 1) + 1

end

end A062006.P1525175762063922720

/-! ## A062006.P14070315426990415182

`record[∑{p}[n+2, #]]^(n+1)+1`
-/

namespace A062006.P14070315426990415182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) + 1

end

end A062006.P14070315426990415182

/-! ## A062006.P11268238072199923229

`A062457(n+1)+1`
-/

namespace A062006.P11268238072199923229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) + 1

end

end A062006.P11268238072199923229

/-! ## A062006.P1430737976933655544

`A307539(n+1)+1`
-/

namespace A062006.P1430737976933655544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307539 (n + 1) + 1

end

end A062006.P1430737976933655544

/-! ## A062006.P8879934109278675474

`A069459(n+1)+2`
-/

namespace A062006.P8879934109278675474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069459 (n + 1) + 2

end

end A062006.P8879934109278675474

/-!
# A062007: a(n) = mu(n)*prime(n).

The programs for A062007, the canonical program `A062007.P13346277135361540036` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062007 has offset 1).

The definition of A062007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062007.P6242626114194482005

`A008683(n+1)*Δ[A007504(n)]`
-/

namespace A062007.P6242626114194482005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062007.P6242626114194482005

namespace A062007

/-- `A008683(n+1)*Δ[A007504(n)]` -/
def P6242626114194482005.Spec : Prop :=
  ∀ n, P6242626114194482005.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P5527477201662055472

`A000040(n+1)*A008683(n+1)`
-/

namespace A062007.P5527477201662055472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008683 (n + 1)

end

end A062007.P5527477201662055472

namespace A062007

/-- `A000040(n+1)*A008683(n+1)` -/
def P5527477201662055472.Spec : Prop :=
  ∀ n, P5527477201662055472.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P10682945590879991301

`A008683(n+1)*A137458(n+1)`
-/

namespace A062007.P10682945590879991301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A137458 (n + 1)

end

end A062007.P10682945590879991301

namespace A062007

/-- `A008683(n+1)*A137458(n+1)` -/
def P10682945590879991301.Spec : Prop :=
  ∀ n, P10682945590879991301.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P10690798958045695822

`abs(Δ[A022837(n)])*A008683(n+1)`
-/

namespace A062007.P10690798958045695822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A008683 (n + 1)

end

end A062007.P10690798958045695822

namespace A062007

/-- `abs(Δ[A022837(n)])*A008683(n+1)` -/
def P10690798958045695822.Spec : Prop :=
  ∀ n, P10690798958045695822.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P8891388749196133751

`abs(Δ[A064365(n)])*A008683(n+1)`
-/

namespace A062007.P8891388749196133751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A008683 (n + 1)

end

end A062007.P8891388749196133751

namespace A062007

/-- `abs(Δ[A064365(n)])*A008683(n+1)` -/
def P8891388749196133751.Spec : Prop :=
  ∀ n, P8891388749196133751.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P16449717563250663393

`sqrt(A001248(n+1))*A008683(n+1)`
-/

namespace A062007.P16449717563250663393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A008683 (n + 1) : ℝ)

end

end A062007.P16449717563250663393

namespace A062007

/-- `sqrt(A001248(n+1))*A008683(n+1)` -/
def P16449717563250663393.Spec : Prop :=
  ∀ n, P16449717563250663393.a n = (A062007 (n + 1) : ℝ)

end A062007

/-! ## A062007.P1087647885957546026

`A008683(n+1)*∑[A054541(n+1)]`
-/

namespace A062007.P1087647885957546026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062007.P1087647885957546026

namespace A062007

/-- `A008683(n+1)*∑[A054541(n+1)]` -/
def P1087647885957546026.Spec : Prop :=
  ∀ n, P1087647885957546026.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P13115030354311456359

`(A006093(n+1)+1)*A008683(n+1)`
-/

namespace A062007.P13115030354311456359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A008683 (n + 1)

end

end A062007.P13115030354311456359

namespace A062007

/-- `(A006093(n+1)+1)*A008683(n+1)` -/
def P13115030354311456359.Spec : Prop :=
  ∀ n, P13115030354311456359.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P13346277135361540036

`(A007423(n+1)-1)*A000040(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062007

/-- `(A007423(n+1)-1)*A000040(n+1)` -/
def P13346277135361540036.Spec : Prop :=
  ∀ n, P13346277135361540036.a n = A062007 (n + 1)

theorem P13346277135361540036.correct : P13346277135361540036.Spec := by
  intro n
  simp only [A062007, Nat.add_sub_cancel]

end A062007

/-! ## A062007.P8431151422377881770

`(A008864(n+1)-1)*A008683(n+1)`
-/

namespace A062007.P8431151422377881770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A008683 (n + 1)

end

end A062007.P8431151422377881770

namespace A062007

/-- `(A008864(n+1)-1)*A008683(n+1)` -/
def P8431151422377881770.Spec : Prop :=
  ∀ n, P8431151422377881770.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P8600769192269896692

`(A040976(n+1)+2)*A008683(n+1)`
-/

namespace A062007.P8600769192269896692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A008683 (n + 1)

end

end A062007.P8600769192269896692

namespace A062007

/-- `(A040976(n+1)+2)*A008683(n+1)` -/
def P8600769192269896692.Spec : Prop :=
  ∀ n, P8600769192269896692.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P8750626642941410465

`(A052147(n+1)-2)*A008683(n+1)`
-/

namespace A062007.P8750626642941410465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A008683 (n + 1)

end

end A062007.P8750626642941410465

namespace A062007

/-- `(A052147(n+1)-2)*A008683(n+1)` -/
def P8750626642941410465.Spec : Prop :=
  ∀ n, P8750626642941410465.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P6517931066334688655

`A008683(n+1)/2*A100484(n+1)`
-/

namespace A062007.P6517931066334688655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A062007.P6517931066334688655

namespace A062007

/-- `A008683(n+1)/2*A100484(n+1)` -/
def P6517931066334688655.Spec : Prop :=
  ∀ n, P6517931066334688655.a n = (A062007 (n + 1) : ℚ)

end A062007

/-! ## A062007.P7125982891867959694

`(A014692(n+1)+n)*A008683(n+1)`
-/

namespace A062007.P7125982891867959694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A008683 (n + 1)

end

end A062007.P7125982891867959694

namespace A062007

/-- `(A014692(n+1)+n)*A008683(n+1)` -/
def P7125982891867959694.Spec : Prop :=
  ∀ n, P7125982891867959694.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P16116600567163795249

`(A095116(n+1)-n)*A008683(n+1)`
-/

namespace A062007.P16116600567163795249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) * A008683 (n + 1)

end

end A062007.P16116600567163795249

namespace A062007

/-- `(A095116(n+1)-n)*A008683(n+1)` -/
def P16116600567163795249.Spec : Prop :=
  ∀ n, P16116600567163795249.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P14083695855090417881

`(A007504(n+1)-A007504(n))*A008683(n+1)`
-/

namespace A062007.P14083695855090417881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A008683 (n + 1)

end

end A062007.P14083695855090417881

namespace A062007

/-- `(A007504(n+1)-A007504(n))*A008683(n+1)` -/
def P14083695855090417881.Spec : Prop :=
  ∀ n, P14083695855090417881.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P6866860109826428135

`A000040(n+1)*A353457(n+1)*A353458(n+1)`
-/

namespace A062007.P6866860109826428135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A353457 (n + 1) * A353458 (n + 1)

end

end A062007.P6866860109826428135

namespace A062007

/-- `A000040(n+1)*A353457(n+1)*A353458(n+1)` -/
def P6866860109826428135.Spec : Prop :=
  ∀ n, P6866860109826428135.a n = A062007 (n + 1)

end A062007

/-! ## A062007.P2530610893024085737

`A000040(n+1)/A003961(n+1)*A346234(n+1)`
-/

namespace A062007.P2530610893024085737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A346234 (n + 1) : ℚ)

end

end A062007.P2530610893024085737

namespace A062007

/-- `A000040(n+1)/A003961(n+1)*A346234(n+1)` -/
def P2530610893024085737.Spec : Prop :=
  ∀ n, P2530610893024085737.a n = (A062007 (n + 1) : ℚ)

end A062007

/-! ## A062007.P4010274416191911072

`A008683(n+1)*A008578(n+2)`
-/

namespace A062007.P4010274416191911072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A008578 (n + 2)

end

end A062007.P4010274416191911072

namespace A062007

/-- `A008683(n+1)*A008578(n+2)` -/
def P4010274416191911072.Spec : Prop :=
  ∀ n, P4010274416191911072.a n = A062007 (n + 1)

end A062007

/-!
# A062008: Number of divisors of (n!)!, or A000197.

The programs for A062008, there is no canonical definition to state claims against.
-/

/-! ## A062008.P1253815300000271086

`A027423(n!)`
-/

namespace A062008.P1253815300000271086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (Nat.factorial n)

end

end A062008.P1253815300000271086

/-! ## A062008.P3276233258596288588

`A153823(n!)+1`
-/

namespace A062008.P3276233258596288588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 (Nat.factorial n) + 1

end

end A062008.P3276233258596288588

/-! ## A062008.P11593196029400845064

`A027423(A000142(n))`
-/

namespace A062008.P11593196029400845064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (A000142 n).toNat

end

end A062008.P11593196029400845064

/-!
# A062009: a(n) = floor(Sum_{k=1..n} sqrt(prime(k))).

The programs for A062009, the canonical program `A062009.P15091444349905616677` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062009 has offset 1).

The definition of A062009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062009.P15091444349905616677

`floor(∑[sqrt(A000040(n+1))])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062009

/-- `floor(∑[sqrt(A000040(n+1))])` -/
def P15091444349905616677.Spec : Prop :=
  ∀ n, P15091444349905616677.a n = A062009 (n + 1)

theorem P15091444349905616677.correct : P15091444349905616677.Spec := by
  intro n
  simp only [A062009, Nat.add_sub_cancel]

end A062009

/-! ## A062009.P4350682617586926011

`floor(∑[sqrt(A008578(n+2))])`
-/

namespace A062009.P4350682617586926011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P4350682617586926011

namespace A062009

/-- `floor(∑[sqrt(A008578(n+2))])` -/
def P4350682617586926011.Spec : Prop :=
  ∀ n, P4350682617586926011.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P10099971641164475463

`floor(∑[sqrt(A158611(n+3))])`
-/

namespace A062009.P10099971641164475463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A158611 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P10099971641164475463

namespace A062009

/-- `floor(∑[sqrt(A158611(n+3))])` -/
def P10099971641164475463.Spec : Prop :=
  ∀ n, P10099971641164475463.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P17117809485407932441

`floor(∑[root(A001248(n+1), 4)])`
-/

namespace A062009.P17117809485407932441
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P17117809485407932441

namespace A062009

/-- `floor(∑[root(A001248(n+1), 4)])` -/
def P17117809485407932441.Spec : Prop :=
  ∀ n, P17117809485407932441.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P17138156782519382027

`floor(∑[record[sqrt(A006530(n+2))]])`
-/

namespace A062009.P17138156782519382027
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P17138156782519382027

namespace A062009

/-- `floor(∑[record[sqrt(A006530(n+2))]])` -/
def P17138156782519382027.Spec : Prop :=
  ∀ n, P17138156782519382027.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P16439394898625040454

`floor(∑[record[sqrt(A020639(n+2))]])`
-/

namespace A062009.P16439394898625040454
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P16439394898625040454

namespace A062009

/-- `floor(∑[record[sqrt(A020639(n+2))]])` -/
def P16439394898625040454.Spec : Prop :=
  ∀ n, P16439394898625040454.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P12868879232809236166

`floor(∑[sqrt(A006093(n+1)+1)])`
-/

namespace A062009.P12868879232809236166
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006093 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P12868879232809236166

namespace A062009

/-- `floor(∑[sqrt(A006093(n+1)+1)])` -/
def P12868879232809236166.Spec : Prop :=
  ∀ n, P12868879232809236166.a n = A062009 (n + 1)

theorem P12868879232809236166.correct : P12868879232809236166.Spec := by
  intro n
  simp only [A062009, Nat.add_sub_cancel, A062009.P12868879232809236166.f1, A062009.P12868879232809236166.a, A062009.P15091444349905616677.f1, A062009.P15091444349905616677.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062009

/-! ## A062009.P7473996745568551872

`floor(∑[sqrt(A008864(n+1)-1)])`
-/

namespace A062009.P7473996745568551872
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P7473996745568551872

namespace A062009

/-- `floor(∑[sqrt(A008864(n+1)-1)])` -/
def P7473996745568551872.Spec : Prop :=
  ∀ n, P7473996745568551872.a n = A062009 (n + 1)

theorem P7473996745568551872.correct : P7473996745568551872.Spec := by
  intro n
  simp only [A062009, Nat.add_sub_cancel, A062009.P7473996745568551872.f1, A062009.P7473996745568551872.a, A062009.P15091444349905616677.f1, A062009.P15091444349905616677.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062009

/-! ## A062009.P6378776997099142918

`floor(∑[sqrt(A040976(n+1)+2)])`
-/

namespace A062009.P6378776997099142918
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P6378776997099142918

namespace A062009

/-- `floor(∑[sqrt(A040976(n+1)+2)])` -/
def P6378776997099142918.Spec : Prop :=
  ∀ n, P6378776997099142918.a n = A062009 (n + 1)

theorem P6378776997099142918.correct : P6378776997099142918.Spec := by
  intro n
  simp only [A062009, Nat.add_sub_cancel, A062009.P6378776997099142918.f1, A062009.P6378776997099142918.a, A062009.P15091444349905616677.f1, A062009.P15091444349905616677.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062009

/-! ## A062009.P1194744715320990128

`floor(∑[sqrt(A067747(2*n+1))])`
-/

namespace A062009.P1194744715320990128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067747 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P1194744715320990128

namespace A062009

/-- `floor(∑[sqrt(A067747(2*n+1))])` -/
def P1194744715320990128.Spec : Prop :=
  ∀ n, P1194744715320990128.a n = A062009 (n + 1)

end A062009

/-! ## A062009.P14599711199013167145

`floor(∑[sqrt(A014689(n+1)+n+1)])`
-/

namespace A062009.P14599711199013167145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014689 (n + 1) + (n + 1 : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P14599711199013167145

namespace A062009

/-- `floor(∑[sqrt(A014689(n+1)+n+1)])` -/
def P14599711199013167145.Spec : Prop :=
  ∀ n, P14599711199013167145.a n = A062009 (n + 1)

theorem P14599711199013167145.correct : P14599711199013167145.Spec := by
  intro n
  simp only [A062009, Nat.add_sub_cancel, A062009.P14599711199013167145.f1, A062009.P14599711199013167145.a, A062009.P15091444349905616677.f1, A062009.P15091444349905616677.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P3456970834266250440.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062009

/-! ## A062009.P4845588626191422518

`floor(∑[record[sqrt(A014963(n+2))]])`
-/

namespace A062009.P4845588626191422518
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014963 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P4845588626191422518

namespace A062009

/-- `floor(∑[record[sqrt(A014963(n+2))]])` -/
def P4845588626191422518.Spec : Prop :=
  ∀ n, P4845588626191422518.a n = A062009 (n + 1)

end A062009

/-!
# A062010: Let n = Sum_i d_i*10^i (0 <= d_i <= 9) be the decimal expansion of n. Then n is in the sequence if Sum_i d_i*b^i divides n for some base b >= 2 in the range max d_i < b < 10.

The programs for A062010, there is no canonical definition to state claims against.
-/

/-! ## A062010.P323684200317352033

`eq[A186492(A088117(n)), A293901(n+1)]`
-/

namespace A062010.P323684200317352033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186492 (A088117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062010.P323684200317352033

/-! ## A062010.P15098272831199427600

`lt[A214080(A247144(n)), A002034(n+1)]`
-/

namespace A062010.P15098272831199427600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A247144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062010.P15098272831199427600

/-! ## A062010.P12444920811984248401

`lt[A321475(A004185(n)), A342944(n+1)]`
-/

namespace A062010.P12444920811984248401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321475 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062010.P12444920811984248401

/-! ## A062010.P8189957973690731342

`lt[A257297(n), A299919(A023758(2*(n+2)))]`
-/

namespace A062010.P8189957973690731342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299919 (A023758 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062010.P8189957973690731342

/-!
# A062011: a(n) = 2*tau(n) = 2*A000005(n).

The programs for A062011, the canonical program `A062011.P17525320077853469406` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062011 has offset 1).

The definition of A062011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)` (program `A062011.P17525320077853469406`, by `A062011.P17525320077853469406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062011.P17525320077853469406

`2*A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062011

/-- `2*A000005(n+1)` -/
def P17525320077853469406.Spec : Prop :=
  ∀ n, P17525320077853469406.a n = A062011 (n + 1)

theorem P17525320077853469406.correct : P17525320077853469406.Spec := by
  intro n
  simp only [A062011, Nat.add_sub_cancel]

end A062011

/-! ## A062011.P11752870608258334832

`A000005(A087560(n+1))`
-/

namespace A062011.P11752870608258334832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A087560 (n + 1)).toNat

end

end A062011.P11752870608258334832

namespace A062011

/-- `A000005(A087560(n+1))` -/
def P11752870608258334832.Spec : Prop :=
  ∀ n, P11752870608258334832.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P13402763290045194416

`A000005(A119416(n+1))`
-/

namespace A062011.P13402763290045194416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119416 (n + 1)).toNat

end

end A062011.P13402763290045194416

namespace A062011

/-- `A000005(A119416(n+1))` -/
def P13402763290045194416.Spec : Prop :=
  ∀ n, P13402763290045194416.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P15164884785255643073

`∑{d}[n+1, ceil(root(2, #))]`
-/

namespace A062011.P15164884785255643073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉

end

end A062011.P15164884785255643073

namespace A062011

/-- `∑{d}[n+1, ceil(root(2, #))]` -/
def P15164884785255643073.Spec : Prop :=
  ∀ n, P15164884785255643073.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P11631550251726258857

`2*∏{e}[n+1, #+1]`
-/

namespace A062011.P11631550251726258857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A062011.P11631550251726258857

namespace A062011

/-- `2*∏{e}[n+1, #+1]` -/
def P11631550251726258857.Spec : Prop :=
  ∀ n, (P11631550251726258857.a n : ℤ) = A062011 (n + 1)

theorem P11631550251726258857.correct : P11631550251726258857.Spec := by
  intro n
  simp only [A062011, Nat.add_sub_cancel, A062011.P11631550251726258857.f1, A062011.P11631550251726258857.a, A062011.P17525320077853469406.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062011

/-! ## A062011.P15275104297598002914

`2*∑{d}[n+1, gcd(n, #)]`
-/

namespace A062011.P15275104297598002914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A062011.P15275104297598002914

namespace A062011

/-- `2*∑{d}[n+1, gcd(n, #)]` -/
def P15275104297598002914.Spec : Prop :=
  ∀ n, (P15275104297598002914.a n : ℤ) = A062011 (n + 1)

end A062011

/-! ## A062011.P17226028114974920608

`2*∑{d}[n+1, ceil(1/#)]`
-/

namespace A062011.P17226028114974920608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉)

end

end A062011.P17226028114974920608

namespace A062011

/-- `2*∑{d}[n+1, ceil(1/#)]` -/
def P17226028114974920608.Spec : Prop :=
  ∀ n, P17226028114974920608.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P11771816394513337450

`2*(∑{d}[n+1, C(2, #)!]-1)`
-/

namespace A062011.P11771816394513337450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1)

end

end A062011.P11771816394513337450

namespace A062011

/-- `2*(∑{d}[n+1, C(2, #)!]-1)` -/
def P11771816394513337450.Spec : Prop :=
  ∀ n, P11771816394513337450.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P10091330255524215153

`-∑{d}[n+1, val(#, n+2)-2]`
-/

namespace A062011.P10091330255524215153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((SequenceMachineLib.valuation d (n + 2) : ℤ) - 2))

end

end A062011.P10091330255524215153

namespace A062011

/-- `-∑{d}[n+1, val(#, n+2)-2]` -/
def P10091330255524215153.Spec : Prop :=
  ∀ n, P10091330255524215153.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P17736315418052488315

`-∑{d}[n+1, C(#, n+2)-2]`
-/

namespace A062011.P17736315418052488315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d (n + 2) : ℤ) - 2))

end

end A062011.P17736315418052488315

namespace A062011

/-- `-∑{d}[n+1, C(#, n+2)-2]` -/
def P17736315418052488315.Spec : Prop :=
  ∀ n, P17736315418052488315.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P4108878865822440498

`-∑{d}[n+1, n-1-lcm(#, n+1)]`
-/

namespace A062011.P4108878865822440498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - 1 - (Nat.lcm d (n + 1) : ℤ)))

end

end A062011.P4108878865822440498

namespace A062011

/-- `-∑{d}[n+1, n-1-lcm(#, n+1)]` -/
def P4108878865822440498.Spec : Prop :=
  ∀ n, P4108878865822440498.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P15727601696309275169

`Δ[2*A006218(n)]`
-/

namespace A062011.P15727601696309275169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062011.P15727601696309275169

namespace A062011

/-- `Δ[2*A006218(n)]` -/
def P15727601696309275169.Spec : Prop :=
  ∀ n, P15727601696309275169.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P6860055636316066404

`Δ[2*A054519(n)]`
-/

namespace A062011.P6860055636316066404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062011.P6860055636316066404

namespace A062011

/-- `Δ[2*A054519(n)]` -/
def P6860055636316066404.Spec : Prop :=
  ∀ n, P6860055636316066404.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P13770003544727380776

`A114003(n+1)+1`
-/

namespace A062011.P13770003544727380776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + 1

end

end A062011.P13770003544727380776

namespace A062011

/-- `A114003(n+1)+1` -/
def P13770003544727380776.Spec : Prop :=
  ∀ n, P13770003544727380776.a n = A062011 (n + 1)

theorem P13770003544727380776.correct : P13770003544727380776.Spec := by
  intro n
  simp only [A062011, Nat.add_sub_cancel, A062011.P13770003544727380776.a, A062011.P17525320077853469406.a, A000005, A000005.P16091521709108585461.a, A114003, A114003.P1695342291946871726.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062011

/-! ## A062011.P2097730987642796784

`A145154(n+1)/2`
-/

namespace A062011.P2097730987642796784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 (n + 1) : ℚ) / 2

end

end A062011.P2097730987642796784

namespace A062011

/-- `A145154(n+1)/2` -/
def P2097730987642796784.Spec : Prop :=
  ∀ n, P2097730987642796784.a n = (A062011 (n + 1) : ℚ)

end A062011

/-! ## A062011.P10003948178703271597

`lcm(2, A131089(n+1))`
-/

namespace A062011.P10003948178703271597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A131089 (n + 1))

end

end A062011.P10003948178703271597

namespace A062011

/-- `lcm(2, A131089(n+1))` -/
def P10003948178703271597.Spec : Prop :=
  ∀ n, (P10003948178703271597.a n : ℤ) = A062011 (n + 1)

end A062011

/-! ## A062011.P6539554831824838195

`log2(A338506(n+1)²)`
-/

namespace A062011.P6539554831824838195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) ^ 2 : ℝ)

end

end A062011.P6539554831824838195

namespace A062011

/-- `log2(A338506(n+1)²)` -/
def P6539554831824838195.Spec : Prop :=
  ∀ n, P6539554831824838195.a n = (A062011 (n + 1) : ℝ)

end A062011

/-! ## A062011.P17491306741270424444

`abs(Δ[2*A139432(n)])`
-/

namespace A062011.P17491306741270424444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A062011.P17491306741270424444

namespace A062011

/-- `abs(Δ[2*A139432(n)])` -/
def P17491306741270424444.Spec : Prop :=
  ∀ n, P17491306741270424444.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P6387829062850364935

`abs(2*A329484(n+1))`
-/

namespace A062011.P6387829062850364935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A329484 (n + 1)|

end

end A062011.P6387829062850364935

namespace A062011

/-- `abs(2*A329484(n+1))` -/
def P6387829062850364935.Spec : Prop :=
  ∀ n, P6387829062850364935.a n = A062011 (n + 1)

end A062011

/-! ## A062011.P9419991519744901882

`2*sqrt(A035116(n+1))`
-/

namespace A062011.P9419991519744901882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A035116 (n + 1) : ℝ)

end

end A062011.P9419991519744901882

namespace A062011

/-- `2*sqrt(A035116(n+1))` -/
def P9419991519744901882.Spec : Prop :=
  ∀ n, P9419991519744901882.a n = (A062011 (n + 1) : ℝ)

end A062011

/-!
# A062013: a(1) = 3, a(n) = a(n-1)^2 + 1.

The programs for A062013, the canonical program `A062013.P1860112127999157256` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062013 has offset 1).

The definition of A062013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+1` (program `A062013.P1860112127999157256`, by `A062013.P1860112127999157256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062013.P1860112127999157256

`a(n-1)²+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062013

/-- `a(n-1)²+1` -/
def P1860112127999157256.Spec : Prop :=
  ∀ n, (P1860112127999157256.a n : ℤ) = A062013 (n + 1)

theorem P1860112127999157256.correct : P1860112127999157256.Spec := by
  intro n
  simp only [A062013, Nat.add_sub_cancel]

end A062013

/-! ## A062013.P8184190444498917978

`a(n-1)^2+1` with `a(0)=3`
-/

namespace A062013.P8184190444498917978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 + 1

end

end A062013.P8184190444498917978

namespace A062013

/-- `a(n-1)^2+1` -/
def P8184190444498917978.Spec : Prop :=
  ∀ n, (P8184190444498917978.a n : ℤ) = A062013 (n + 1)

theorem P8184190444498917978.correct : P8184190444498917978.Spec := by
  intro n
  simp only [A062013, Nat.add_sub_cancel, A062013.P8184190444498917978.a, A062013.P1860112127999157256.a, SequenceMachineLib.memo_apply]

end A062013

/-! ## A062013.P5090941059872726834

`or(2, a(n-1)²)-1` with `a(0)=3`
-/

namespace A062013.P5090941059872726834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 2 (a (n - 1) ^ 2) - 1

end

end A062013.P5090941059872726834

namespace A062013

/-- `or(2, a(n-1)²)-1` -/
def P5090941059872726834.Spec : Prop :=
  ∀ n, P5090941059872726834.a n = A062013 (n + 1)

end A062013

/-! ## A062013.P10555886707312122107

`xor(2, a(n-1)²)-1` with `a(0)=3`
-/

namespace A062013.P10555886707312122107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 2 (a (n - 1) ^ 2) - 1

end

end A062013.P10555886707312122107

namespace A062013

/-- `xor(2, a(n-1)²)-1` -/
def P10555886707312122107.Spec : Prop :=
  ∀ n, P10555886707312122107.a n = A062013 (n + 1)

end A062013

/-!
# A062015: Numbers with all even digits which can be factored into two numbers with all even digits.

The programs for A062015, there is no canonical definition to state claims against.
-/

/-! ## A062015.P17466933639501203042

`4*(∑[∏{e}[A287486(n+1), #]]-1)`
-/

namespace A062015.P17466933639501203042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287486 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A062015.P17466933639501203042

/-! ## A062015.P14524818697598430622

`∑[A095915(A078057(n))]-1`
-/

namespace A062015.P14524818697598430622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (A078057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062015.P14524818697598430622

/-! ## A062015.P11562343320043711703

`∑[A095915(A078057(n))*A178334(n)]`
-/

namespace A062015.P11562343320043711703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (A078057 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062015.P11562343320043711703

/-! ## A062015.P5990206806043639163

`∑[A095915(A078057(n))+A008683(2*(n+1)²)]`
-/

namespace A062015.P5990206806043639163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (A078057 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062015.P5990206806043639163

/-! ## A062015.P11799870775689109712

`lt[A103181(n), A000035(A260492(n))]`
-/

namespace A062015.P11799870775689109712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A260492 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062015.P11799870775689109712

/-!
# A062016: Numbers with all odd digits which can be factored into two numbers > 1 with odd digits.

The programs for A062016, there is no canonical definition to state claims against.
-/

/-! ## A062016.P16568112445691588424

`∪[A107076(n+1), A107077(n+1)]%A107076(3*n+4)`
-/

namespace A062016.P16568112445691588424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A107076 (3 * n + 4))

end

end A062016.P16568112445691588424

/-! ## A062016.P11831119436900135924

`∩[A261614(n+1), A289351(n)]`
-/

namespace A062016.P11831119436900135924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062016.P11831119436900135924

/-! ## A062016.P14881979840560284855

`∩[A014261(n+1), A261614(n+1)]`
-/

namespace A062016.P14881979840560284855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062016.P14881979840560284855

/-! ## A062016.P16991471009603902167

`∩[A261614(n+1), A320062(n+1)]`
-/

namespace A062016.P16991471009603902167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062016.P16991471009603902167

/-! ## A062016.P17037790346701094073

`A088847(A320062(n+2))`
-/

namespace A062016.P17037790346701094073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088847 (A320062 (n + 2)).toNat

end

end A062016.P17037790346701094073

/-!
# A062017: Numbers with all even digits which can be factored into two numbers (> 1) one with all odd digits and the other with all even digits.

The programs for A062017, there is no canonical definition to state claims against.
-/

/-! ## A062017.P15805034211982516885

`record[A249278(2*n+1)%A068744(n)]`
-/

namespace A062017.P15805034211982516885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249278 (2 * n + 1)) (A068744 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062017.P15805034211982516885

/-! ## A062017.P251562513066527643

`A014263(A074764(n+1)^A136400(n))`
-/

namespace A062017.P251562513066527643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (SequenceMachineLib.roundAway ((A074764 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A062017.P251562513066527643

/-! ## A062017.P16380584613166754090

`eq[A010875(A178358(n)), A034432(n+1)]`
-/

namespace A062017.P16380584613166754090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A178358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062017.P16380584613166754090

/-! ## A062017.P7137771779989235009

`A001222(A007097(n))*A273892(2*(n+1))`
-/

namespace A062017.P7137771779989235009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007097 n).toNat * A273892 (2 * (n + 1))

end

end A062017.P7137771779989235009

/-! ## A062017.P2646839104580151399

`record[A014263(n+1)%A215247(A055772(n+1))]`
-/

namespace A062017.P2646839104580151399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014263 (n + 1)) (A215247 (A055772 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062017.P2646839104580151399

/-!
# A062018: a(n) = n^n written backwards.

The programs for A062018, there is no canonical definition to state claims against.
-/

/-! ## A062018.P16715477893179992450

`A004086((n+1)^(n+1))`
-/

namespace A062018.P16715477893179992450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n + 1) ^ (n + 1))

end

end A062018.P16715477893179992450

/-!
# A062020: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i) - prime(j)).

The programs for A062020, the canonical program `A062020.P11042138404562219295` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062020 has offset 1).

The definition of A062020 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062020.P11042138404562219295

`2*A014285(n+1)-(n+2)*A007504(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062020

/-- `2*A014285(n+1)-(n+2)*A007504(n+1)` -/
def P11042138404562219295.Spec : Prop :=
  ∀ n, P11042138404562219295.a n = A062020 (n + 1)

theorem P11042138404562219295.correct : P11042138404562219295.Spec := by
  intro n
  simp only [A062020, Nat.add_sub_cancel]

end A062020

/-! ## A062020.P3421754315157376380

`∑[A152535(n+1)]`
-/

namespace A062020.P3421754315157376380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P3421754315157376380

namespace A062020

/-- `∑[A152535(n+1)]` -/
def P3421754315157376380.Spec : Prop :=
  ∀ n, P3421754315157376380.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P16860198053962659224

`∑[∑[n*A075526(n)]]`
-/

namespace A062020.P16860198053962659224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P16860198053962659224

namespace A062020

/-- `∑[∑[n*A075526(n)]]` -/
def P16860198053962659224.Spec : Prop :=
  ∀ n, P16860198053962659224.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P10320826440124950756

`∑[∑[n*Δ[A028815(n)]]]`
-/

namespace A062020.P10320826440124950756
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P10320826440124950756

namespace A062020

/-- `∑[∑[n*Δ[A028815(n)]]]` -/
def P10320826440124950756.Spec : Prop :=
  ∀ n, P10320826440124950756.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P9046966785404640960

`∑[∑[n*A054541(n+1)]]`
-/

namespace A062020.P9046966785404640960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P9046966785404640960

namespace A062020

/-- `∑[∑[n*A054541(n+1)]]` -/
def P9046966785404640960.Spec : Prop :=
  ∀ n, P9046966785404640960.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P6179511820175944382

`∑[∑[n*A125266(n+1)]]`
-/

namespace A062020.P6179511820175944382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P6179511820175944382

namespace A062020

/-- `∑[∑[n*A125266(n+1)]]` -/
def P6179511820175944382.Spec : Prop :=
  ∀ n, P6179511820175944382.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P2086889266196730920

`∑[∑[n*A230849(2*n+1)]]`
-/

namespace A062020.P2086889266196730920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230849 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P2086889266196730920

namespace A062020

/-- `∑[∑[n*A230849(2*n+1)]]` -/
def P2086889266196730920.Spec : Prop :=
  ∀ n, P2086889266196730920.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P5812776009500504024

`∑[∑[n*A001223(A028310(n))]]`
-/

namespace A062020.P5812776009500504024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001223 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P5812776009500504024

namespace A062020

/-- `∑[∑[n*A001223(A028310(n))]]` -/
def P5812776009500504024.Spec : Prop :=
  ∀ n, P5812776009500504024.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P16268682097736641143

`A014285(n+1)-A014148(n+1)`
-/

namespace A062020.P16268682097736641143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) - A014148 (n + 1)

end

end A062020.P16268682097736641143

namespace A062020

/-- `A014285(n+1)-A014148(n+1)` -/
def P16268682097736641143.Spec : Prop :=
  ∀ n, P16268682097736641143.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P17601318141733076238

`A167214(n+1)-A023662(n+1)`
-/

namespace A062020.P17601318141733076238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) - A023662 (n + 1)

end

end A062020.P17601318141733076238

namespace A062020

/-- `A167214(n+1)-A023662(n+1)` -/
def P17601318141733076238.Spec : Prop :=
  ∀ n, P17601318141733076238.a n = A062020 (n + 1)

theorem P17601318141733076238.correct : P17601318141733076238.Spec := by
  intro n
  simp only [A062020, Nat.add_sub_cancel, A062020.P17601318141733076238.a, A062020.P11042138404562219295.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A023662, A023662.P10648617195950893557.a, A167214, A167214.P9697442408688225616.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062020

/-! ## A062020.P13591625696310936540

`A316322(n+1)-A167214(n+1)`
-/

namespace A062020.P13591625696310936540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) - A167214 (n + 1)

end

end A062020.P13591625696310936540

namespace A062020

/-- `A316322(n+1)-A167214(n+1)` -/
def P13591625696310936540.Spec : Prop :=
  ∀ n, P13591625696310936540.a n = A062020 (n + 1)

theorem P13591625696310936540.correct : P13591625696310936540.Spec := by
  intro n
  simp only [A062020, Nat.add_sub_cancel, A062020.P13591625696310936540.a, A062020.P11042138404562219295.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A014285, A014285.P2422315619309490149.f1, A014285.P2422315619309490149.a, A167214, A167214.P9697442408688225616.a, A316322, A316322.P16038970231065936341.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062020

/-! ## A062020.P8421510270258943588

`∑[n*A000040(n+1)-A007504(n)]`
-/

namespace A062020.P8421510270258943588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P8421510270258943588

namespace A062020

/-- `∑[n*A000040(n+1)-A007504(n)]` -/
def P8421510270258943588.Spec : Prop :=
  ∀ n, P8421510270258943588.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P315276475888144140

`A162867(n+1)-2*A014148(n+1)`
-/

namespace A062020.P315276475888144140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162867 (n + 1) - 2 * A014148 (n + 1)

end

end A062020.P315276475888144140

namespace A062020

/-- `A162867(n+1)-2*A014148(n+1)` -/
def P315276475888144140.Spec : Prop :=
  ∀ n, P315276475888144140.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P17226134736501572033

`A014285(n+1)-∑[∑[A000040(n+1)]]`
-/

namespace A062020.P17226134736501572033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P17226134736501572033

namespace A062020

/-- `A014285(n+1)-∑[∑[A000040(n+1)]]` -/
def P17226134736501572033.Spec : Prop :=
  ∀ n, P17226134736501572033.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P6518983087044536804

`∑[A033286(n+1)-∑[A000040(n+1)]]`
-/

namespace A062020.P6518983087044536804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P6518983087044536804

namespace A062020

/-- `∑[A033286(n+1)-∑[A000040(n+1)]]` -/
def P6518983087044536804.Spec : Prop :=
  ∀ n, P6518983087044536804.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P2740625170040812291

`∑[∑[A090942(n+1)-A000040(n+1)]]`
-/

namespace A062020.P2740625170040812291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) - A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P2740625170040812291

namespace A062020

/-- `∑[∑[A090942(n+1)-A000040(n+1)]]` -/
def P2740625170040812291.Spec : Prop :=
  ∀ n, P2740625170040812291.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P12759507571591500233

`∑[∑[A141042(n+1)]-A141042(n+1)]`
-/

namespace A062020.P12759507571591500233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A141042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P12759507571591500233

namespace A062020

/-- `∑[∑[A141042(n+1)]-A141042(n+1)]` -/
def P12759507571591500233.Spec : Prop :=
  ∀ n, P12759507571591500233.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P13631559367860515067

`∑[(n+1)*A000040(n+1)]-A014148(n+1)`
-/

namespace A062020.P13631559367860515067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014148 (n + 1)

end

end A062020.P13631559367860515067

namespace A062020

/-- `∑[(n+1)*A000040(n+1)]-A014148(n+1)` -/
def P13631559367860515067.Spec : Prop :=
  ∀ n, P13631559367860515067.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P14278428062455528521

`A306834(n+1)*A309036(n+1)-A014148(n+1)`
-/

namespace A062020.P14278428062455528521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (n + 1) * A309036 (n + 1) - A014148 (n + 1)

end

end A062020.P14278428062455528521

namespace A062020

/-- `A306834(n+1)*A309036(n+1)-A014148(n+1)` -/
def P14278428062455528521.Spec : Prop :=
  ∀ n, P14278428062455528521.a n = A062020 (n + 1)

end A062020

/-! ## A062020.P9809109378625082721

`∑[∑[n*Δ[A008578(n+1)]]]`
-/

namespace A062020.P9809109378625082721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062020.P9809109378625082721

namespace A062020

/-- `∑[∑[n*Δ[A008578(n+1)]]]` -/
def P9809109378625082721.Spec : Prop :=
  ∀ n, P9809109378625082721.a n = A062020 (n + 1)

end A062020

/-!
# A062021: a(n) = Sum_{i=1..n} Sum_{j=1..i} (prime(i)^2 - prime(j)^2).

The programs for A062021, the canonical program `A062021.P15408236090391736309` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062021 has offset 1).

The definition of A062021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062021.P15408236090391736309

`∑[(n+1)*A001248(n+1)-A024450(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062021

/-- `∑[(n+1)*A001248(n+1)-A024450(n+1)]` -/
def P15408236090391736309.Spec : Prop :=
  ∀ n, P15408236090391736309.a n = A062021 (n + 1)

theorem P15408236090391736309.correct : P15408236090391736309.Spec := by
  intro n
  simp only [A062021, Nat.add_sub_cancel]

end A062021

/-! ## A062021.P1951199653249441301

`∑[(n+1)*A001248(n+1)]-A157492(n+1)`
-/

namespace A062021.P1951199653249441301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A157492 (n + 1)

end

end A062021.P1951199653249441301

namespace A062021

/-- `∑[(n+1)*A001248(n+1)]-A157492(n+1)` -/
def P1951199653249441301.Spec : Prop :=
  ∀ n, P1951199653249441301.a n = A062021 (n + 1)

end A062021

/-! ## A062021.P12971505569134157322

`∑[∑[n*Δ[A280076(n+1)]]]`
-/

namespace A062021.P12971505569134157322
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062021.P12971505569134157322

namespace A062021

/-- `∑[∑[n*Δ[A280076(n+1)]]]` -/
def P12971505569134157322.Spec : Prop :=
  ∀ n, P12971505569134157322.a n = A062021 (n + 1)

end A062021

/-! ## A062021.P4038665769302230526

`∑[∑[n*Δ[A008578(n+1)²]]]`
-/

namespace A062021.P4038665769302230526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062021.P4038665769302230526

namespace A062021

/-- `∑[∑[n*Δ[A008578(n+1)²]]]` -/
def P4038665769302230526.Spec : Prop :=
  ∀ n, P4038665769302230526.a n = A062021 (n + 1)

end A062021

/-! ## A062021.P6140850327910342797

`∑[∑[n*Δ[A182986(n+1)²]]]`
-/

namespace A062021.P6140850327910342797
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062021.P6140850327910342797

namespace A062021

/-- `∑[∑[n*Δ[A182986(n+1)²]]]` -/
def P6140850327910342797.Spec : Prop :=
  ∀ n, P6140850327910342797.a n = A062021 (n + 1)

end A062021

/-! ## A062021.P10961079917055149548

`∑[∑[n*Δ[A158611(n+2)²]]]`
-/

namespace A062021.P10961079917055149548
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062021.P10961079917055149548

namespace A062021

/-- `∑[∑[n*Δ[A158611(n+2)²]]]` -/
def P10961079917055149548.Spec : Prop :=
  ∀ n, P10961079917055149548.a n = A062021 (n + 1)

end A062021

/-!
# A062022: a(n) = Sum_{k=1..n} Sum_{j=1..k} (prime(k) - prime(j))^2.

The programs for A062022, the canonical program `A062022.P79191704217042567` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062022 has offset 1).

The definition of A062022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062022.P79191704217042567

`(n+1)*A024450(n+1)-A007504(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062022

/-- `(n+1)*A024450(n+1)-A007504(n+1)²` -/
def P79191704217042567.Spec : Prop :=
  ∀ n, P79191704217042567.a n = A062022 (n + 1)

theorem P79191704217042567.correct : P79191704217042567.Spec := by
  intro n
  simp only [A062022, Nat.add_sub_cancel]

end A062022

/-! ## A062022.P14256368465829765319

`A024526(n+1)-∑[A005722(n+1)]`
-/

namespace A062022.P14256368465829765319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024526 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062022.P14256368465829765319

namespace A062022

/-- `A024526(n+1)-∑[A005722(n+1)]` -/
def P14256368465829765319.Spec : Prop :=
  ∀ n, P14256368465829765319.a n = A062022 (n + 1)

theorem P14256368465829765319.correct : P14256368465829765319.Spec := by
  intro n
  simp only [A062022, Nat.add_sub_cancel, A062022.P14256368465829765319.f1, A062022.P14256368465829765319.a, A062022.P79191704217042567.a, A005722, A005722.P552758404114209471.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A024450, A024450.P13748385754044755097.f1, A024450.P13748385754044755097.a, A024526, A024526.P216027257778899538.f1, A024526.P216027257778899538.a, A001248, A001248.P16278241061688229202.a, A006093, A006093.P2906174024863549003.a, A065595, A065595.P17601801696022809177.a, A182986, A182986.P2625431067462217415.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062022

/-! ## A062022.P1004288724328966163

`n*A024450(n+1)-A065595(n+1)`
-/

namespace A062022.P1004288724328966163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024450 (n + 1) - A065595 (n + 1)

end

end A062022.P1004288724328966163

namespace A062022

/-- `n*A024450(n+1)-A065595(n+1)` -/
def P1004288724328966163.Spec : Prop :=
  ∀ n, P1004288724328966163.a n = A062022 (n + 1)

theorem P1004288724328966163.correct : P1004288724328966163.Spec := by
  intro n
  simp only [A062022, Nat.add_sub_cancel, A062022.P1004288724328966163.a, A062022.P79191704217042567.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A024450, A024450.P13748385754044755097.f1, A024450.P13748385754044755097.a, A065595, A065595.P17601801696022809177.a, A001248, A001248.P16278241061688229202.a, A182986, A182986.P2625431067462217415.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062022

/-!
# A062023: a(n) = (n^(n+1) + n^(n-1))/2.

The programs for A062023, the canonical program `A062023.P10692752567682365541` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062023 has offset 1).

The definition of A062023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062023.P10692752567682365541

`((n+1)^(n+2)+(n+1)^n)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062023

/-- `((n+1)^(n+2)+(n+1)^n)/2` -/
def P10692752567682365541.Spec : Prop :=
  ∀ n, P10692752567682365541.a n = (A062023 (n + 1) : ℚ)

end A062023

/-! ## A062023.P15715268525636663689

`(n+1)^(n+1)*cosh(log(n+1))`
-/

namespace A062023.P15715268525636663689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℝ) * Real.cosh (Real.log (n + 1 : ℝ))

end

end A062023.P15715268525636663689

namespace A062023

/-- `(n+1)^(n+1)*cosh(log(n+1))` -/
def P15715268525636663689.Spec : Prop :=
  ∀ n, P15715268525636663689.a n = (A062023 (n + 1) : ℝ)

end A062023

/-! ## A062023.P9697171093514956873

`A081132(n)-A081131(n+1)`
-/

namespace A062023.P9697171093514956873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081132 n - A081131 (n + 1)

end

end A062023.P9697171093514956873

namespace A062023

/-- `A081132(n)-A081131(n+1)` -/
def P9697171093514956873.Spec : Prop :=
  ∀ n, P9697171093514956873.a n = A062023 (n + 1)

end A062023

/-! ## A062023.P1307679465320953151

`A081132(n)-abs(A070896(n+1))`
-/

namespace A062023.P1307679465320953151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081132 n - |A070896 (n + 1)|

end

end A062023.P1307679465320953151

namespace A062023

/-- `A081132(n)-abs(A070896(n+1))` -/
def P1307679465320953151.Spec : Prop :=
  ∀ n, P1307679465320953151.a n = A062023 (n + 1)

end A062023

/-! ## A062023.P1561139299132177644

`A226998(n+1)+A000312(n+1)`
-/

namespace A062023.P1561139299132177644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226998 (n + 1) + A000312 (n + 1)

end

end A062023.P1561139299132177644

namespace A062023

/-- `A226998(n+1)+A000312(n+1)` -/
def P1561139299132177644.Spec : Prop :=
  ∀ n, P1561139299132177644.a n = A062023 (n + 1)

end A062023

/-! ## A062023.P829091158757365098

`A229078(n+1)-A066274(n+1)`
-/

namespace A062023.P829091158757365098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229078 (n + 1) - A066274 (n + 1)

end

end A062023.P829091158757365098

namespace A062023

/-- `A229078(n+1)-A066274(n+1)` -/
def P829091158757365098.Spec : Prop :=
  ∀ n, P829091158757365098.a n = A062023 (n + 1)

end A062023

/-! ## A062023.P14289698855741515347

`A229078(n+1)-2*A081131(n+1)`
-/

namespace A062023.P14289698855741515347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229078 (n + 1) - 2 * A081131 (n + 1)

end

end A062023.P14289698855741515347

namespace A062023

/-- `A229078(n+1)-2*A081131(n+1)` -/
def P14289698855741515347.Spec : Prop :=
  ∀ n, P14289698855741515347.a n = A062023 (n + 1)

end A062023

/-! ## A062023.P14910319848798945197

`A000312(n+1)+n*A081131(n+1)`
-/

namespace A062023.P14910319848798945197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + (n : ℤ) * A081131 (n + 1)

end

end A062023.P14910319848798945197

namespace A062023

/-- `A000312(n+1)+n*A081131(n+1)` -/
def P14910319848798945197.Spec : Prop :=
  ∀ n, P14910319848798945197.a n = A062023 (n + 1)

end A062023

/-!
# A062024: a(n) = ((n+1)^n + (n-1)^n)/2.

The programs for A062024, the canonical program `A062024.P3520781754676287344` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062024 has offset 0).

The definition of A062024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062024.P3520781754676287344

`((n+1)^n+(n-1)^n)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062024

/-- `((n+1)^n+(n-1)^n)/2` -/
def P3520781754676287344.Spec : Prop :=
  ∀ n, P3520781754676287344.a n = (A062024 n : ℚ)

end A062024

/-! ## A062024.P4591232875409063496

`A084061(∑[n+2]-1)`
-/

namespace A062024.P4591232875409063496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084061 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A062024.P4591232875409063496

namespace A062024

/-- `A084061(∑[n+2]-1)` -/
def P4591232875409063496.Spec : Prop :=
  ∀ n, P4591232875409063496.a n = A062024 n

end A062024

/-! ## A062024.P8996820702730732930

`floor(A253571(n+1)/(n+1))`
-/

namespace A062024.P8996820702730732930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253571 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A062024.P8996820702730732930

namespace A062024

/-- `floor(A253571(n+1)/(n+1))` -/
def P8996820702730732930.Spec : Prop :=
  ∀ n, P8996820702730732930.a n = A062024 n

end A062024

/-! ## A062024.P14801387037391449083

`A302583(n)+A065440(n)`
-/

namespace A062024.P14801387037391449083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302583 n + A065440 n

end

end A062024.P14801387037391449083

namespace A062024

/-- `A302583(n)+A065440(n)` -/
def P14801387037391449083.Spec : Prop :=
  ∀ n, P14801387037391449083.a n = A062024 n

end A062024

/-! ## A062024.P10049599210758805639

`floor((A065440(n)+A000169(n+1))/2)`
-/

namespace A062024.P10049599210758805639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065440 n + A000169 (n + 1) : ℚ) / 2⌋

end

end A062024.P10049599210758805639

namespace A062024

/-- `floor((A065440(n)+A000169(n+1))/2)` -/
def P10049599210758805639.Spec : Prop :=
  ∀ n, P10049599210758805639.a n = A062024 n

end A062024

/-! ## A062024.P13656042220380619454

`gcd(A000038(n), A084061(A034856(n+1)))`
-/

namespace A062024.P13656042220380619454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A084061 (A034856 (n + 1)).toNat)

end

end A062024.P13656042220380619454

namespace A062024

/-- `gcd(A000038(n), A084061(A034856(n+1)))` -/
def P13656042220380619454.Spec : Prop :=
  ∀ n, (P13656042220380619454.a n : ℤ) = A062024 n

end A062024

/-! ## A062024.P1232539713282086599

`lcm(A084061(A034856(n+1)), A097807(n))`
-/

namespace A062024.P1232539713282086599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084061 (A034856 (n + 1)).toNat) (A097807 n)

end

end A062024.P1232539713282086599

namespace A062024

/-- `lcm(A084061(A034856(n+1)), A097807(n))` -/
def P1232539713282086599.Spec : Prop :=
  ∀ n, (P1232539713282086599.a n : ℤ) = A062024 n

end A062024

/-! ## A062024.P2103064611432862091

`or(A059841(n), A084061(A034856(n+1)))`
-/

namespace A062024.P2103064611432862091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A084061 (A034856 (n + 1)).toNat)

end

end A062024.P2103064611432862091

namespace A062024

/-- `or(A059841(n), A084061(A034856(n+1)))` -/
def P2103064611432862091.Spec : Prop :=
  ∀ n, P2103064611432862091.a n = A062024 n

end A062024

/-! ## A062024.P18250459372580309891

`A007318(∑[n])*A084061(A034856(n+1))`
-/

namespace A062024.P18250459372580309891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A084061 (A034856 (n + 1)).toNat

end

end A062024.P18250459372580309891

namespace A062024

/-- `A007318(∑[n])*A084061(A034856(n+1))` -/
def P18250459372580309891.Spec : Prop :=
  ∀ n, P18250459372580309891.a n = A062024 n

end A062024

/-! ## A062024.P3053007587859779543

`or(A010051(n+1), A084061(A034856(n+1)))`
-/

namespace A062024.P3053007587859779543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A084061 (A034856 (n + 1)).toNat)

end

end A062024.P3053007587859779543

namespace A062024

/-- `or(A010051(n+1), A084061(A034856(n+1)))` -/
def P3053007587859779543.Spec : Prop :=
  ∀ n, P3053007587859779543.a n = A062024 n

end A062024

/-!
# A062025: a(n) = n*(13*n^2 - 7)/6.

The programs for A062025, the canonical program `A062025.P18391474998969994640` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062025 has offset 0).

The definition of A062025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n²-7)/6` (program `A062025.P9826974518521625502`, by `A062025.P9826974518521625502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062025.P9826974518521625502

`n*(13*n²-7)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062025.P9826974518521625502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((13 * n ^ 2 : ℤ) - 7) : ℚ) / 6

end

end A062025.P9826974518521625502

namespace A062025

/-- `n*(13*n²-7)/6` -/
def P9826974518521625502.Spec : Prop :=
  ∀ n, P9826974518521625502.a n = (A062025 n : ℚ)

theorem P9826974518521625502.correct : P9826974518521625502.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A062025, Nat.add_sub_cancel, A062025.P9826974518521625502.a, A062025.P18391474998969994640.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A062025, Nat.add_sub_cancel, A062025.P9826974518521625502.a, A062025.P18391474998969994640.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062025

/-! ## A062025.P18391474998969994640

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=55`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062025

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18391474998969994640.Spec : Prop :=
  ∀ n, P18391474998969994640.a n = A062025 n

theorem P18391474998969994640.correct : P18391474998969994640.Spec := by
  intro n
  simp only [A062025]

end A062025

/-! ## A062025.P12195445106895291433

`∑[13*C(n, 2)]+n`
-/

namespace A062025.P12195445106895291433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A062025.P12195445106895291433

namespace A062025

/-- `∑[13*C(n, 2)]+n` -/
def P12195445106895291433.Spec : Prop :=
  ∀ n, (P12195445106895291433.a n : ℤ) = A062025 n

end A062025

/-! ## A062025.P4031435610264673089

`13*C(n+1, 3)+n`
-/

namespace A062025.P4031435610264673089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose (n + 1) 3 + n

end

end A062025.P4031435610264673089

namespace A062025

/-- `13*C(n+1, 3)+n` -/
def P4031435610264673089.Spec : Prop :=
  ∀ n, (P4031435610264673089.a n : ℤ) = A062025 n

end A062025

/-! ## A062025.P7349786717303339323

`∑[∑[ogf((5x+3x^2+5x^3)/(1-2x+x^2))]]-4*n`
-/

namespace A062025.P7349786717303339323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 * n : ℤ)

end

end A062025.P7349786717303339323

namespace A062025

/-- `∑[∑[ogf((5x+3x^2+5x^3)/(1-2x+x^2))]]-4*n` -/
def P7349786717303339323.Spec : Prop :=
  ∀ n, P7349786717303339323.a n = A062025 n

end A062025

/-! ## A062025.P1458454732091201695

`∑[∑[a(n-1)+13]]-(∑[14*n]+1)` with `a(0)=1`
-/

namespace A062025.P1458454732091201695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ)

end

end A062025.P1458454732091201695

namespace A062025

/-- `∑[∑[a(n-1)+13]]-(∑[14*n]+1)` -/
def P1458454732091201695.Spec : Prop :=
  ∀ n, P1458454732091201695.a n = A062025 n

end A062025

/-! ## A062025.P2092875794665387406

`∑[A226488(n)]-n²`
-/

namespace A062025.P2092875794665387406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A062025.P2092875794665387406

namespace A062025

/-- `∑[A226488(n)]-n²` -/
def P2092875794665387406.Spec : Prop :=
  ∀ n, P2092875794665387406.a n = A062025 n

end A062025

/-! ## A062025.P6508485800466787566

`A063521(n)-∑[C(n, 2)]`
-/

namespace A062025.P6508485800466787566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062025.P6508485800466787566

namespace A062025

/-- `A063521(n)-∑[C(n, 2)]` -/
def P6508485800466787566.Spec : Prop :=
  ∀ n, P6508485800466787566.a n = A062025 n

end A062025

/-! ## A062025.P296274612863861028

`∑[A051867(n)-n]+n`
-/

namespace A062025.P296274612863861028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A062025.P296274612863861028

namespace A062025

/-- `∑[A051867(n)-n]+n` -/
def P296274612863861028.Spec : Prop :=
  ∀ n, P296274612863861028.a n = A062025 n

end A062025

/-! ## A062025.P5350056173161145466

`A177890(n)+n-∑[n]`
-/

namespace A062025.P5350056173161145466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A062025.P5350056173161145466

namespace A062025

/-- `A177890(n)+n-∑[n]` -/
def P5350056173161145466.Spec : Prop :=
  ∀ n, P5350056173161145466.a n = A062025 n

end A062025

/-! ## A062025.P8849401635746693767

`A135503(n)+A004466(n)`
-/

namespace A062025.P8849401635746693767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A004466 n

end

end A062025.P8849401635746693767

namespace A062025

/-- `A135503(n)+A004466(n)` -/
def P8849401635746693767.Spec : Prop :=
  ∀ n, P8849401635746693767.a n = A062025 n

end A062025

/-! ## A062025.P3526789329696843432

`A160378(n)+A007584(n)`
-/

namespace A062025.P3526789329696843432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A007584 n

end

end A062025.P3526789329696843432

namespace A062025

/-- `A160378(n)+A007584(n)` -/
def P3526789329696843432.Spec : Prop :=
  ∀ n, P3526789329696843432.a n = A062025 n

end A062025

/-! ## A062025.P9724285909415358514

`A171272(n)-A006001(n)`
-/

namespace A062025.P9724285909415358514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - A006001 n

end

end A062025.P9724285909415358514

namespace A062025

/-- `A171272(n)-A006001(n)` -/
def P9724285909415358514.Spec : Prop :=
  ∀ n, P9724285909415358514.a n = A062025 n

end A062025

/-! ## A062025.P12711442028467910027

`A172076(n)-A005581(n)`
-/

namespace A062025.P12711442028467910027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n - A005581 n

end

end A062025.P12711442028467910027

namespace A062025

/-- `A172076(n)-A005581(n)` -/
def P12711442028467910027.Spec : Prop :=
  ∀ n, P12711442028467910027.a n = A062025 n

end A062025

/-! ## A062025.P4430990552603522800

`A063523(n)-A135503(n)`
-/

namespace A062025.P4430990552603522800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n - A135503 n

end

end A062025.P4430990552603522800

namespace A062025

/-- `A063523(n)-A135503(n)` -/
def P4430990552603522800.Spec : Prop :=
  ∀ n, P4430990552603522800.a n = A062025 n

end A062025

/-! ## A062025.P2281884158853482995

`A259110(n)-A006003(n)`
-/

namespace A062025.P2281884158853482995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n - A006003 n

end

end A062025.P2281884158853482995

namespace A062025

/-- `A259110(n)-A006003(n)` -/
def P2281884158853482995.Spec : Prop :=
  ∀ n, P2281884158853482995.a n = A062025 n

end A062025

/-! ## A062025.P4653599196238150540

`A237616(n)-A051925(n)`
-/

namespace A062025.P4653599196238150540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n - A051925 n

end

end A062025.P4653599196238150540

namespace A062025

/-- `A237616(n)-A051925(n)` -/
def P4653599196238150540.Spec : Prop :=
  ∀ n, P4653599196238150540.a n = A062025 n

end A062025

/-! ## A062025.P14436899640201022610

`A143166(n)-A229183(n)`
-/

namespace A062025.P14436899640201022610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n - A229183 n

end

end A062025.P14436899640201022610

namespace A062025

/-- `A143166(n)-A229183(n)` -/
def P14436899640201022610.Spec : Prop :=
  ∀ n, P14436899640201022610.a n = A062025 n

end A062025

/-! ## A062025.P3514451095838528988

`A257093(n)-A147875(n)`
-/

namespace A062025.P3514451095838528988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n - A147875 n

end

end A062025.P3514451095838528988

namespace A062025

/-- `A257093(n)-A147875(n)` -/
def P3514451095838528988.Spec : Prop :=
  ∀ n, P3514451095838528988.a n = A062025 n

end A062025

/-! ## A062025.P10102924062746859182

`A033562(n)-A254749(n+1)`
-/

namespace A062025.P10102924062746859182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n - A254749 (n + 1)

end

end A062025.P10102924062746859182

namespace A062025

/-- `A033562(n)-A254749(n+1)` -/
def P10102924062746859182.Spec : Prop :=
  ∀ n, P10102924062746859182.a n = A062025 n

end A062025

/-!
# A062026: a(n) = n*(n+1)*(n^2 - 3*n + 6)/4.

The programs for A062026, the canonical program `A062026.P7800846543258676441` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062026 has offset 0).

The definition of A062026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²-3*n+6)/4` (program `A062026.P16873801249023278362`, by `A062026.P16873801249023278362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062026.P16873801249023278362

`n*(n+1)*(n²-3*n+6)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062026.P16873801249023278362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 6) : ℚ) / 4

end

end A062026.P16873801249023278362

namespace A062026

/-- `n*(n+1)*(n²-3*n+6)/4` -/
def P16873801249023278362.Spec : Prop :=
  ∀ n, P16873801249023278362.a n = (A062026 n : ℚ)

theorem P16873801249023278362.correct : P16873801249023278362.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A062026, Nat.add_sub_cancel, A062026.P16873801249023278362.a, A062026.P7800846543258676441.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A062026, Nat.add_sub_cancel, A062026.P16873801249023278362.a, A062026.P7800846543258676441.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062026

/-! ## A062026.P10649104628135206375

`6*C(n+3, 4)-12*C(n+2, 3)+8*C(n+1, 2)`
-/

namespace A062026.P10649104628135206375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 3) 4 : ℤ) - (12 * Nat.choose (n + 2) 3 : ℤ) + (8 * Nat.choose (n + 1) 2 : ℤ)

end

end A062026.P10649104628135206375

namespace A062026

/-- `6*C(n+3, 4)-12*C(n+2, 3)+8*C(n+1, 2)` -/
def P10649104628135206375.Spec : Prop :=
  ∀ n, P10649104628135206375.a n = A062026 n

end A062026

/-! ## A062026.P7800846543258676441

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=18, a(4)=50`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062026

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7800846543258676441.Spec : Prop :=
  ∀ n, P7800846543258676441.a n = A062026 n

theorem P7800846543258676441.correct : P7800846543258676441.Spec := by
  intro n
  simp only [A062026]

end A062026

/-! ## A062026.P3753640268248017400

`C(n, 2)²+∑[n]+n`
-/

namespace A062026.P3753640268248017400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A062026.P3753640268248017400

namespace A062026

/-- `C(n, 2)²+∑[n]+n` -/
def P3753640268248017400.Spec : Prop :=
  ∀ n, (P3753640268248017400.a n : ℤ) = A062026 n

end A062026

/-! ## A062026.P8703264370764115055

`∑[2*(3*C(n, 3)+n)]`
-/

namespace A062026.P8703264370764115055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * Nat.choose n 3 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P8703264370764115055

namespace A062026

/-- `∑[2*(3*C(n, 3)+n)]` -/
def P8703264370764115055.Spec : Prop :=
  ∀ n, (P8703264370764115055.a n : ℤ) = A062026 n

end A062026

/-! ## A062026.P4351499582953009593

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A062026.P4351499582953009593
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P4351499582953009593

namespace A062026

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P4351499582953009593.Spec : Prop :=
  ∀ n, (P4351499582953009593.a n : ℤ) = A062026 n

end A062026

/-! ## A062026.P16532148872840466157

`∑[lcm(2, (n-1)^3+n+1)]`
-/

namespace A062026.P16532148872840466157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) ^ 3 + (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P16532148872840466157

namespace A062026

/-- `∑[lcm(2, (n-1)^3+n+1)]` -/
def P16532148872840466157.Spec : Prop :=
  ∀ n, (P16532148872840466157.a n : ℤ) = A062026 n

end A062026

/-! ## A062026.P11086010234904645974

`∑[xor(1, (n-1)^3+n+2)]`
-/

namespace A062026.P11086010234904645974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) ^ 3 + (n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P11086010234904645974

namespace A062026

/-- `∑[xor(1, (n-1)^3+n+2)]` -/
def P11086010234904645974.Spec : Prop :=
  ∀ n, P11086010234904645974.a n = A062026 n

end A062026

/-! ## A062026.P13576578743441625980

`∑[C(n+1, n)+(n-1)^3]`
-/

namespace A062026.P13576578743441625980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) + ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P13576578743441625980

namespace A062026

/-- `∑[C(n+1, n)+(n-1)^3]` -/
def P13576578743441625980.Spec : Prop :=
  ∀ n, P13576578743441625980.a n = A062026 n

end A062026

/-! ## A062026.P16986132197512481858

`(C(n, 2)+1)*C(n, 2)+2*n`
-/

namespace A062026.P16986132197512481858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * Nat.choose n 2 + 2 * n

end

end A062026.P16986132197512481858

namespace A062026

/-- `(C(n, 2)+1)*C(n, 2)+2*n` -/
def P16986132197512481858.Spec : Prop :=
  ∀ n, (P16986132197512481858.a n : ℤ) = A062026 n

end A062026

/-! ## A062026.P162565108646186077

`a(n-1)+n*((2-n)²+n)` with `a(0)=0`
-/

namespace A062026.P162565108646186077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((2 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A062026.P162565108646186077

namespace A062026

/-- `a(n-1)+n*((2-n)²+n)` -/
def P162565108646186077.Spec : Prop :=
  ∀ n, P162565108646186077.a n = A062026 n

end A062026

/-! ## A062026.P944688098191449474

`n+1+a(n-1)+(n-1)^3` with `a(0)=0`
-/

namespace A062026.P944688098191449474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) + (a (n - 1) + ((n : ℤ) - 1) ^ 3)

end

end A062026.P944688098191449474

namespace A062026

/-- `n+1+a(n-1)+(n-1)^3` -/
def P944688098191449474.Spec : Prop :=
  ∀ n, P944688098191449474.a n = A062026 n

end A062026

/-! ## A062026.P7380425833601494206

`∑[A242659(n)]`
-/

namespace A062026.P7380425833601494206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P7380425833601494206

namespace A062026

/-- `∑[A242659(n)]` -/
def P7380425833601494206.Spec : Prop :=
  ∀ n, P7380425833601494206.a n = A062026 n

end A062026

/-! ## A062026.P5730643747086616136

`2*A101357(n)`
-/

namespace A062026.P5730643747086616136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101357 n

end

end A062026.P5730643747086616136

namespace A062026

/-- `2*A101357(n)` -/
def P5730643747086616136.Spec : Prop :=
  ∀ n, P5730643747086616136.a n = A062026 n

end A062026

/-! ## A062026.P5431723201464978220

`∑[2*A060354(n)]`
-/

namespace A062026.P5431723201464978220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P5431723201464978220

namespace A062026

/-- `∑[2*A060354(n)]` -/
def P5431723201464978220.Spec : Prop :=
  ∀ n, P5431723201464978220.a n = A062026 n

end A062026

/-! ## A062026.P13611500791199517149

`A341703(n+1)-1`
-/

namespace A062026.P13611500791199517149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341703 (n + 1) - 1

end

end A062026.P13611500791199517149

namespace A062026

/-- `A341703(n+1)-1` -/
def P13611500791199517149.Spec : Prop :=
  ∀ n, P13611500791199517149.a n = A062026 n

end A062026

/-! ## A062026.P17731736236875141480

`A000096(n)+C(n, 2)²`
-/

namespace A062026.P17731736236875141480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (Nat.choose n 2 ^ 2 : ℤ)

end

end A062026.P17731736236875141480

namespace A062026

/-- `A000096(n)+C(n, 2)²` -/
def P17731736236875141480.Spec : Prop :=
  ∀ n, P17731736236875141480.a n = A062026 n

end A062026

/-! ## A062026.P4415850388918497662

`∑[A007531(n)+2*n]`
-/

namespace A062026.P4415850388918497662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062026.P4415850388918497662

namespace A062026

/-- `∑[A007531(n)+2*n]` -/
def P4415850388918497662.Spec : Prop :=
  ∀ n, P4415850388918497662.a n = A062026 n

end A062026

/-! ## A062026.P5149665548119630434

`A152457(n)-A007585(n)`
-/

namespace A062026.P5149665548119630434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n - A007585 n

end

end A062026.P5149665548119630434

namespace A062026

/-- `A152457(n)-A007585(n)` -/
def P5149665548119630434.Spec : Prop :=
  ∀ n, P5149665548119630434.a n = A062026 n

end A062026

/-!
# A062027: a(1) = a(2) = a(3) = 1 and a(n) = 24*binomial(n+1, 5) + n*(n^2 - n + 6) for n > 3.

The programs for A062027, there is no canonical definition to state claims against.
-/

/-! ## A062027.P13995148946186895160

`A086066(lcm(8, A120048(n)))`
-/

namespace A062027.P13995148946186895160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (Int.lcm 8 (A120048 n))

end

end A062027.P13995148946186895160

/-!
# A062028: a(n) = n + sum of the digits of n.

The programs for A062028, the canonical program `A062028.P8420805724104474199` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062028 has offset 0).

The definition of A062028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062028.P8420805724104474199

`n+A007953(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062028

/-- `n+A007953(n)` -/
def P8420805724104474199.Spec : Prop :=
  ∀ n, P8420805724104474199.a n = A062028 n

theorem P8420805724104474199.correct : P8420805724104474199.Spec := by
  intro n
  simp only [A062028]

end A062028

/-! ## A062028.P10056506631164332821

`A160939(n+1)-1`
-/

namespace A062028.P10056506631164332821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - 1

end

end A062028.P10056506631164332821

namespace A062028

/-- `A160939(n+1)-1` -/
def P10056506631164332821.Spec : Prop :=
  ∀ n, P10056506631164332821.a n = A062028 n

theorem P10056506631164332821.correct : P10056506631164332821.Spec := by
  intro n
  simp only [A062028, Nat.add_sub_cancel, A062028.P10056506631164332821.a, A062028.P8420805724104474199.a, A007953, A007953.P3472751987379697826.a, A160939, A160939.P10335950988782502839.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062028

/-! ## A062028.P5746875787020069681

`∑{digits}[n, #]+n`
-/

namespace A062028.P5746875787020069681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n

end

end A062028.P5746875787020069681

namespace A062028

/-- `∑{digits}[n, #]+n` -/
def P5746875787020069681.Spec : Prop :=
  ∀ n, (P5746875787020069681.a n : ℤ) = A062028 n

end A062028

/-! ## A062028.P5305205270642795874

`log(∏{digits}[n, exp(#)])+n`
-/

namespace A062028.P5305205270642795874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + (n : ℝ)

end

end A062028.P5305205270642795874

namespace A062028

/-- `log(∏{digits}[n, exp(#)])+n` -/
def P5305205270642795874.Spec : Prop :=
  ∀ n, P5305205270642795874.a n = (A062028 n : ℝ)

end A062028

/-! ## A062028.P8187132184398179976

`log2(∏{digits}[n, 2^#])+n`
-/

namespace A062028.P8187132184398179976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + (n : ℝ)

end

end A062028.P8187132184398179976

namespace A062028

/-- `log2(∏{digits}[n, 2^#])+n` -/
def P8187132184398179976.Spec : Prop :=
  ∀ n, P8187132184398179976.a n = (A062028 n : ℝ)

end A062028

/-! ## A062028.P8575531815022777513

`2*n-(n-∑{digits}[n, #])`
-/

namespace A062028.P8575531815022777513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A062028.P8575531815022777513

namespace A062028

/-- `2*n-(n-∑{digits}[n, #])` -/
def P8575531815022777513.Spec : Prop :=
  ∀ n, P8575531815022777513.a n = A062028 n

end A062028

/-! ## A062028.P8095267179805622147

`n-1-xor(-1, ∑{digits}[n, #])`
-/

namespace A062028.P8095267179805622147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A062028.P8095267179805622147

namespace A062028

/-- `n-1-xor(-1, ∑{digits}[n, #])` -/
def P8095267179805622147.Spec : Prop :=
  ∀ n, P8095267179805622147.a n = A062028 n

end A062028

/-! ## A062028.P18326829895602812588

`sqrt(A118881(n))+n`
-/

namespace A062028.P18326829895602812588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) + (n : ℝ)

end

end A062028.P18326829895602812588

namespace A062028

/-- `sqrt(A118881(n))+n` -/
def P18326829895602812588.Spec : Prop :=
  ∀ n, P18326829895602812588.a n = (A062028 n : ℝ)

end A062028

/-! ## A062028.P8946453565972055717

`log2(A329562(n))+n`
-/

namespace A062028.P8946453565972055717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) + (n : ℝ)

end

end A062028.P8946453565972055717

namespace A062028

/-- `log2(A329562(n))+n` -/
def P8946453565972055717.Spec : Prop :=
  ∀ n, P8946453565972055717.a n = (A062028 n : ℝ)

end A062028

/-! ## A062028.P10602065157422538513

`2*n-A066568(n)`
-/

namespace A062028.P10602065157422538513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A066568 n

end

end A062028.P10602065157422538513

namespace A062028

/-- `2*n-A066568(n)` -/
def P10602065157422538513.Spec : Prop :=
  ∀ n, P10602065157422538513.a n = A062028 n

end A062028

/-! ## A062028.P8694230435747790397

`A169805(n)/2+n`
-/

namespace A062028.P8694230435747790397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 + (n : ℚ)

end

end A062028.P8694230435747790397

namespace A062028

/-- `A169805(n)/2+n` -/
def P8694230435747790397.Spec : Prop :=
  ∀ n, P8694230435747790397.a n = (A062028 n : ℚ)

theorem P8694230435747790397.correct : P8694230435747790397.Spec := by
  intro n
  simp only [A062028, Nat.add_sub_cancel, A062028.P8694230435747790397.a, A062028.P8420805724104474199.a, A007953, A007953.P3472751987379697826.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062028

/-! ## A062028.P11219472318987851702

`Δ[n²]-A160941(n+1)`
-/

namespace A062028.P11219472318987851702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160941 (n + 1)

end

end A062028.P11219472318987851702

namespace A062028

/-- `Δ[n²]-A160941(n+1)` -/
def P11219472318987851702.Spec : Prop :=
  ∀ n, P11219472318987851702.a n = A062028 n

end A062028

/-! ## A062028.P12179997756026202274

`A062329(n)+∏{digits}[n, #]+n`
-/

namespace A062028.P12179997756026202274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + n : ℕ) : ℤ)

end

end A062028.P12179997756026202274

namespace A062028

/-- `A062329(n)+∏{digits}[n, #]+n` -/
def P12179997756026202274.Spec : Prop :=
  ∀ n, P12179997756026202274.a n = A062028 n

end A062028

/-! ## A062028.P8461639043251646695

`A160942(n+1)/(n+1)+n`
-/

namespace A062028.P8461639043251646695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A062028.P8461639043251646695

namespace A062028

/-- `A160942(n+1)/(n+1)+n` -/
def P8461639043251646695.Spec : Prop :=
  ∀ n, P8461639043251646695.a n = (A062028 n : ℚ)

end A062028

/-! ## A062028.P14059029102781791433

`A070565(n)+A061762(n)`
-/

namespace A062028.P14059029102781791433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n + A061762 n

end

end A062028.P14059029102781791433

namespace A062028

/-- `A070565(n)+A061762(n)` -/
def P14059029102781791433.Spec : Prop :=
  ∀ n, P14059029102781791433.a n = A062028 n

end A062028

/-! ## A062028.P3045619219818186838

`A230099(n)+A062329(n)`
-/

namespace A062028.P3045619219818186838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n + A062329 n

end

end A062028.P3045619219818186838

namespace A062028

/-- `A230099(n)+A062329(n)` -/
def P3045619219818186838.Spec : Prop :=
  ∀ n, P3045619219818186838.a n = A062028 n

end A062028

/-! ## A062028.P10475748356433762123

`A007953(n)-A001489(n)`
-/

namespace A062028.P10475748356433762123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A001489 n

end

end A062028.P10475748356433762123

namespace A062028

/-- `A007953(n)-A001489(n)` -/
def P10475748356433762123.Spec : Prop :=
  ∀ n, P10475748356433762123.a n = A062028 n

theorem P10475748356433762123.correct : P10475748356433762123.Spec := by
  intro n
  simp only [A062028, Nat.add_sub_cancel, A062028.P10475748356433762123.a, A062028.P8420805724104474199.a, A001489, A001489.P15233530513763566776.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062028

/-! ## A062028.P15911019066616532498

`A240848(n)-A055642(n)`
-/

namespace A062028.P15911019066616532498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240848 n - A055642 n

end

end A062028.P15911019066616532498

namespace A062028

/-- `A240848(n)-A055642(n)` -/
def P15911019066616532498.Spec : Prop :=
  ∀ n, P15911019066616532498.a n = A062028 n

theorem P15911019066616532498.correct : P15911019066616532498.Spec := by
  intro n
  simp only [A062028, Nat.add_sub_cancel, A062028.P15911019066616532498.a, A062028.P8420805724104474199.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A240848, A240848.P13107810746749667617.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062028

/-! ## A062028.P13923405181823383830

`A108773(n)%A008486(n)`
-/

namespace A062028.P13923405181823383830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 n) (A008486 n)

end

end A062028.P13923405181823383830

namespace A062028

/-- `A108773(n)%A008486(n)` -/
def P13923405181823383830.Spec : Prop :=
  ∀ n, P13923405181823383830.a n = A062028 n

end A062028

/-! ## A062028.P1671073445400974382

`n-A001057(2*A007953(n))`
-/

namespace A062028.P1671073445400974382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A007953 n).toNat

end

end A062028.P1671073445400974382

namespace A062028

/-- `n-A001057(2*A007953(n))` -/
def P1671073445400974382.Spec : Prop :=
  ∀ n, P1671073445400974382.a n = A062028 n

end A062028

/-!
# A062029: Group even numbers into (2), (4,6), (8,10,12), (14,16,18,20), ...; a(n) = product of n-th group.

The programs for A062029, the canonical program `A062029.P12791945871435776065` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062029 has offset 1).

The definition of A062029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062029.P12791945871435776065

`2^(n+1)*A057003(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062029

/-- `2^(n+1)*A057003(n+1)` -/
def P12791945871435776065.Spec : Prop :=
  ∀ n, P12791945871435776065.a n = A062029 (n + 1)

theorem P12791945871435776065.correct : P12791945871435776065.Spec := by
  intro n
  simp only [A062029, Nat.add_sub_cancel]

end A062029

/-! ## A062029.P18330782776344346849

`2^(n+1)*(((n+1)²+n+1)/2)!/(((n+1)²-(n+1))/2)!`
-/

namespace A062029.P18330782776344346849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) * Nat.factorial (SequenceMachineLib.roundAway (((n + 1) ^ 2 + (n + 1) : ℚ) / 2)).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) : ℚ) / 2)).toNat : ℚ)

end

end A062029.P18330782776344346849

namespace A062029

/-- `2^(n+1)*(((n+1)²+n+1)/2)!/(((n+1)²-(n+1))/2)!` -/
def P18330782776344346849.Spec : Prop :=
  ∀ n, P18330782776344346849.a n = (A062029 (n + 1) : ℚ)

end A062029

/-! ## A062029.P15759544890382417932

`A057003(n+1)*A057048(2*n+1)`
-/

namespace A062029.P15759544890382417932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057003 (n + 1) * A057048 (2 * n + 1)

end

end A062029.P15759544890382417932

namespace A062029

/-- `A057003(n+1)*A057048(2*n+1)` -/
def P15759544890382417932.Spec : Prop :=
  ∀ n, P15759544890382417932.a n = A062029 (n + 1)

end A062029

/-! ## A062029.P14270646839503990625

`A000051(n+1)*A057003(n+1)-A057003(n+1)`
-/

namespace A062029.P14270646839503990625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A057003 (n + 1) - A057003 (n + 1)

end

end A062029.P14270646839503990625

namespace A062029

/-- `A000051(n+1)*A057003(n+1)-A057003(n+1)` -/
def P14270646839503990625.Spec : Prop :=
  ∀ n, P14270646839503990625.a n = A062029 (n + 1)

theorem P14270646839503990625.correct : P14270646839503990625.Spec := by
  intro n
  simp only [A062029, Nat.add_sub_cancel, A062029.P14270646839503990625.a, A062029.P12791945871435776065.a, A000051, A000051.P14067217022188782580.a, A057003, A057003.P14613228913504739719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062029

/-! ## A062029.P12787461598708269397

`floor(2^(n+1)*((n+1)*(n+2)/2)!/(n*(n+1)/2)!)`
-/

namespace A062029.P12787461598708269397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) * Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2))).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat : ℚ)⌋

end

end A062029.P12787461598708269397

namespace A062029

/-- `floor(2^(n+1)*((n+1)*(n+2)/2)!/(n*(n+1)/2)!)` -/
def P12787461598708269397.Spec : Prop :=
  ∀ n, P12787461598708269397.a n = A062029 (n + 1)

end A062029

/-!
# A062030: 

The programs for A062030, there is no canonical definition to state claims against.
-/

/-! ## A062030.P9588462106264305

`A082735(2*(n+1))`
-/

namespace A062030.P9588462106264305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082735 (2 * (n + 1))

end

end A062030.P9588462106264305

/-! ## A062030.P16521026687807767039

`ratio[A067624(∑[n])]`
-/

namespace A062030.P16521026687807767039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067624 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062030.P16521026687807767039

/-! ## A062030.P10006252334201997430

`ratio[A000165(∑[2*n])]`
-/

namespace A062030.P10006252334201997430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062030.P10006252334201997430

/-!
# A062031: Group odd numbers into (1), (3,5,7), (9,11,13,15,17), ...; a(n) = product of n-th group.

The programs for A062031, there is no canonical definition to state claims against.
-/

/-! ## A062031.P275636022928102491

`A082735(Δ[n²])`
-/

namespace A062031.P275636022928102491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062031.P275636022928102491

/-! ## A062031.P1029941668245582054

`ratio[A001147(n²)]`
-/

namespace A062031.P1029941668245582054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062031.P1029941668245582054

/-! ## A062031.P17467486346648657751

`ratio[A097801(n²)]`
-/

namespace A062031.P17467486346648657751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062031.P17467486346648657751

/-!
# A062032: Group odd numbers into (1), (3,5), (7,9,11), (13,15,17,19), ...; a(n) = product of n-th group.

The programs for A062032, there is no canonical definition to state claims against.
-/

/-! ## A062032.P15222994335512275868

`ratio[A001147(∑[n])]`
-/

namespace A062032.P15222994335512275868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062032.P15222994335512275868

/-! ## A062032.P6283172069139736733

`ratio[A097801(∑[n])]`
-/

namespace A062032.P6283172069139736733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062032.P6283172069139736733

/-! ## A062032.P1893984770428600172

`ratio[A055634(∑[2*n])]`
-/

namespace A062032.P1893984770428600172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062032.P1893984770428600172

/-! ## A062032.P7212434324329657359

`ratio[A123023(∑[2*n])]`
-/

namespace A062032.P7212434324329657359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062032.P7212434324329657359

/-! ## A062032.P18134240402765867361

`ratio[A133221(∑[2*n])]`
-/

namespace A062032.P18134240402765867361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133221 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062032.P18134240402765867361

/-!
# A062033: Binary expansion of n does not contain 1-bits at even positions. Integers whose base 4 representation consists of only 0's and 2s.

The programs for A062033, there is no canonical definition to state claims against.
-/

/-! ## A062033.P2928101728520731251

`10*A063010(n)`
-/

namespace A062033.P2928101728520731251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A063010 n

end

end A062033.P2928101728520731251

/-! ## A062033.P16995461931896553839

`A014417(A062879(n+1))`
-/

namespace A062033.P16995461931896553839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A062879 (n + 1)).toNat

end

end A062033.P16995461931896553839

/-! ## A062033.P18251718325850847996

`A014417(A062877(2*n))`
-/

namespace A062033.P18251718325850847996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A062877 (2 * n)).toNat

end

end A062033.P18251718325850847996

/-! ## A062033.P15227021806039061002

`A014417(A036796(2*n)-1)`
-/

namespace A062033.P15227021806039061002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A036796 (2 * n) - 1).toNat

end

end A062033.P15227021806039061002

/-! ## A062033.P6399055569126161213

`A014417(A036795(2*n)-A036795(n))`
-/

namespace A062033.P6399055569126161213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A036795 (2 * n) - A036795 n).toNat

end

end A062033.P6399055569126161213

/-! ## A062033.P16521847861442242030

`10*A007088(A000695(n))`
-/

namespace A062033.P16521847861442242030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007088 (A000695 n).toNat

end

end A062033.P16521847861442242030

/-! ## A062033.P12914402182930182815

`A007088(A062880(n))`
-/

namespace A062033.P12914402182930182815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A062880 n).toNat

end

end A062033.P12914402182930182815

/-! ## A062033.P10487728535106321889

`A007088(2*A054238(∑[n]))`
-/

namespace A062033.P10487728535106321889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A062033.P10487728535106321889

/-! ## A062033.P9232338264877373683

`A007088(A054238(∑[n]+n))`
-/

namespace A062033.P9232338264877373683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A062033.P9232338264877373683

/-! ## A062033.P7327608292222951074

`A007088(A000695(n)/(1-1/2))`
-/

namespace A062033.P7327608292222951074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A000695 n : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A062033.P7327608292222951074

/-! ## A062033.P2731838284463764882

`A007088(A000695(n)+A000695(n))`
-/

namespace A062033.P2731838284463764882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000695 n + A000695 n).toNat

end

end A062033.P2731838284463764882

/-! ## A062033.P16782898831586460606

`A007088(A001196(n)-A000695(n))`
-/

namespace A062033.P16782898831586460606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001196 n - A000695 n).toNat

end

end A062033.P16782898831586460606

/-! ## A062033.P11972575378837785744

`A099820(A000695(n))`
-/

namespace A062033.P11972575378837785744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A000695 n).toNat

end

end A062033.P11972575378837785744

/-! ## A062033.P8686259392860104920

`A007088(record[A004514(n)])`
-/

namespace A062033.P8686259392860104920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062033.P8686259392860104920

/-! ## A062033.P8976209687621947986

`A099820(eq[0, A059906(n)])`
-/

namespace A062033.P8976209687621947986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062033.P8976209687621947986

/-! ## A062033.P16458625797360116755

`A007088(record[2*A053985(n)])`
-/

namespace A062033.P16458625797360116755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062033.P16458625797360116755

/-! ## A062033.P15220431982211072055

`A007088(record[2*A063694(n)])`
-/

namespace A062033.P15220431982211072055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062033.P15220431982211072055

/-! ## A062033.P5316648822731159435

`A007088(record[A053985(n)+n])`
-/

namespace A062033.P5316648822731159435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062033.P5316648822731159435

/-! ## A062033.P512888741477810814

`A007088(record[A004468(n)-n])`
-/

namespace A062033.P512888741477810814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062033.P512888741477810814

/-! ## A062033.P7458517002519661549

`A007088(2*eq[n, A063694(n)])`
-/

namespace A062033.P7458517002519661549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062033.P7458517002519661549

/-!
# A062034: Positive numbers whose product of digits is twice the sum of the digits.

The programs for A062034, there is no canonical definition to state claims against.
-/

/-! ## A062034.P4838133448440237293

`eq[A007954(n+1), A169805(n+1)]+1`
-/

namespace A062034.P4838133448440237293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062034.P4838133448440237293

/-! ## A062034.P6495140169022090035

`eq[A004277(A007953(n)), A007954(n)]`
-/

namespace A062034.P6495140169022090035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P6495140169022090035

/-! ## A062034.P3647229893227835302

`eq[A008486(A007953(n)), A061762(n)]`
-/

namespace A062034.P3647229893227835302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P3647229893227835302

/-! ## A062034.P12783880550034338821

`eq[A007954(n), A169805(A028310(n))]`
-/

namespace A062034.P12783880550034338821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P12783880550034338821

/-! ## A062034.P15917299719565946206

`eq[A004277(A326746(n)), A007954(n)]`
-/

namespace A062034.P15917299719565946206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A326746 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P15917299719565946206

/-! ## A062034.P10355465483273939553

`eq[A007954(n), A274922(A169805(n))]`
-/

namespace A062034.P10355465483273939553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P10355465483273939553

/-! ## A062034.P14815280212926006600

`eq[2*A061762(n), A008486(A169805(n))]`
-/

namespace A062034.P14815280212926006600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P14815280212926006600

/-! ## A062034.P4824677241161971383

`eq[A004277(A169805(n)/2), A007954(n)]`
-/

namespace A062034.P4824677241161971383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P4824677241161971383

/-! ## A062034.P2410152831669617919

`eq[A008486(A169805(n)/2), A061762(n)]`
-/

namespace A062034.P2410152831669617919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P2410152831669617919

/-! ## A062034.P16324128982037772704

`eq[A004277(A062028(n)-n), A007954(n)]`
-/

namespace A062034.P16324128982037772704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062028 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062034.P16324128982037772704

/-!
# A062035: Positive numbers whose product of digits is three times their sum.

The programs for A062035, there is no canonical definition to state claims against.
-/

/-! ## A062035.P9253735649353863367

`eq[A007954(n), A008486(A007953(n))]`
-/

namespace A062035.P9253735649353863367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062035.P9253735649353863367

/-! ## A062035.P8959951884337955195

`eq[A008574(A007953(n)), A061762(n)]`
-/

namespace A062035.P8959951884337955195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062035.P8959951884337955195

/-! ## A062035.P11501809912418490126

`eq[A004277(A169805(n)), A061762(n)]`
-/

namespace A062035.P11501809912418490126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062035.P11501809912418490126

/-! ## A062035.P14636874501227441622

`eq[-A004277(A007953(n)), A062329(n)]`
-/

namespace A062035.P14636874501227441622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004277 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062035.P14636874501227441622

/-! ## A062035.P11591105826013255485

`eq[A169805(n)+A062329(n), A000038(n)]`
-/

namespace A062035.P11591105826013255485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n + A062329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062035.P11591105826013255485

/-!
# A062036: Positive numbers whose product of digits is four times their sum.

The programs for A062036, there is no canonical definition to state claims against.
-/

/-! ## A062036.P2687896341273889266

`eq[A007954(n), A008574(A007953(n))]`
-/

namespace A062036.P2687896341273889266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P2687896341273889266

/-! ## A062036.P2469935652309540846

`eq[A008706(A007953(n)), A061762(n)]`
-/

namespace A062036.P2469935652309540846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P2469935652309540846

/-! ## A062036.P9325947139963796268

`eq[A004277(A169805(n)), A007954(n)]`
-/

namespace A062036.P9325947139963796268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P9325947139963796268

/-! ## A062036.P13712700138540073789

`eq[A061762(n), A184418(A169805(n))]`
-/

namespace A062036.P13712700138540073789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P13712700138540073789

/-! ## A062036.P11501937480532607164

`eq[A007954(n), A008574(A169805(n)/2)]`
-/

namespace A062036.P11501937480532607164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P11501937480532607164

/-! ## A062036.P11882046438137416306

`eq[A007954(n), A008574(A062028(n)-n)]`
-/

namespace A062036.P11882046438137416306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P11882046438137416306

/-! ## A062036.P14904018876031465708

`eq[n-A070565(n), A004277(A169805(n))]`
-/

namespace A062036.P14904018876031465708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P14904018876031465708

/-! ## A062036.P7520090248395073179

`eq[A230099(n)-n, A008574(A007953(n))]`
-/

namespace A062036.P7520090248395073179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P7520090248395073179

/-! ## A062036.P5020577794108659917

`eq[A230099(n)-n, A004277(A169805(n))]`
-/

namespace A062036.P5020577794108659917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P5020577794108659917

/-! ## A062036.P14233922892989745303

`eq[A007954(n), A008574(A118880(n)^(1/3))]`
-/

namespace A062036.P14233922892989745303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062036.P14233922892989745303

/-!
# A062037: Positive numbers whose product of digits is 6 times their sum.

The programs for A062037, the canonical program `A062037.P16385492444936946523` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062037 has offset 1).

The definition of A062037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062037.P17874779205441678961

`eq[A007954(n), A008458(A007953(n))]`
-/

namespace A062037.P17874779205441678961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P17874779205441678961

namespace A062037

/-- `eq[A007954(n), A008458(A007953(n))]` -/
def P17874779205441678961.Spec : Prop :=
  ∀ n, (P17874779205441678961.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P16385492444936946523

`eq[A007954(n), A008486(A169805(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062037

/-- `eq[A007954(n), A008486(A169805(n))]` -/
def P16385492444936946523.Spec : Prop :=
  ∀ n, (P16385492444936946523.a n : ℤ) = A062037 (n + 1)

theorem P16385492444936946523.correct : P16385492444936946523.Spec := by
  intro n
  simp only [A062037, Nat.add_sub_cancel]

end A062037

/-! ## A062037.P787973410431735814

`eq[A007954(n), A008458(A169805(n)/2)]`
-/

namespace A062037.P787973410431735814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P787973410431735814

namespace A062037

/-- `eq[A007954(n), A008458(A169805(n)/2)]` -/
def P787973410431735814.Spec : Prop :=
  ∀ n, (P787973410431735814.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P425492495644916104

`eq[A007954(n), A008458(A062028(n)-n)]`
-/

namespace A062037.P425492495644916104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P425492495644916104

namespace A062037

/-- `eq[A007954(n), A008458(A062028(n)-n)]` -/
def P425492495644916104.Spec : Prop :=
  ∀ n, (P425492495644916104.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P13727019965971830339

`eq[n-A070565(n), A008458(A007953(n))]`
-/

namespace A062037.P13727019965971830339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P13727019965971830339

namespace A062037

/-- `eq[n-A070565(n), A008458(A007953(n))]` -/
def P13727019965971830339.Spec : Prop :=
  ∀ n, (P13727019965971830339.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P12256341752127913490

`eq[A230099(n)-n, A008458(A007953(n))]`
-/

namespace A062037.P12256341752127913490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P12256341752127913490

namespace A062037

/-- `eq[A230099(n)-n, A008458(A007953(n))]` -/
def P12256341752127913490.Spec : Prop :=
  ∀ n, (P12256341752127913490.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P14779924511396890221

`eq[A007954(n), A008458(A118880(n)^(1/3))]`
-/

namespace A062037.P14779924511396890221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P14779924511396890221

namespace A062037

/-- `eq[A007954(n), A008458(A118880(n)^(1/3))]` -/
def P14779924511396890221.Spec : Prop :=
  ∀ n, (P14779924511396890221.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P9300721393777640625

`eq[A007954(n), A008458(1-A160941(n+1)+n)]`
-/

namespace A062037.P9300721393777640625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (1 - A160941 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P9300721393777640625

namespace A062037

/-- `eq[A007954(n), A008458(1-A160941(n+1)+n)]` -/
def P9300721393777640625.Spec : Prop :=
  ∀ n, (P9300721393777640625.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P8458629168073814913

`eq[A007954(n), A008458(A160939(n+1)-(n+1))]`
-/

namespace A062037.P8458629168073814913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160939 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P8458629168073814913

namespace A062037

/-- `eq[A007954(n), A008458(A160939(n+1)-(n+1))]` -/
def P8458629168073814913.Spec : Prop :=
  ∀ n, (P8458629168073814913.a n : ℤ) = A062037 (n + 1)

end A062037

/-! ## A062037.P16468966063103371518

`eq[A007954(n), A008458(A160942(n+1)/(n+1))]`
-/

namespace A062037.P16468966063103371518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062037.P16468966063103371518

namespace A062037

/-- `eq[A007954(n), A008458(A160942(n+1)/(n+1))]` -/
def P16468966063103371518.Spec : Prop :=
  ∀ n, (P16468966063103371518.a n : ℤ) = A062037 (n + 1)

end A062037

/-!
# A062038: Triangular array T(n,k) giving number of alternating link diagrams with n >= 0 crossings, k = 0..[n/2] connected components and two external legs.

The programs for A062038, there is no canonical definition to state claims against.
-/

/-! ## A062038.P3979414686548978457

`A283795(A122151(n+1)%A283806(n+1))`
-/

namespace A062038.P3979414686548978457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283795 (Int.tmod (A122151 (n + 1)) (A283806 (n + 1))).toNat

end

end A062038.P3979414686548978457

/-!
# A062039: a(0) = 1; a(n+1) = a(n) - n if a(n) > n, otherwise a(n+1) = a(n) + a(a(n)).

The programs for A062039, there is no canonical definition to state claims against.
-/

/-! ## A062039.P640982744213576747

`∑[A193926(abs(1-n))]`
-/

namespace A062039.P640982744213576747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062039.P640982744213576747

/-! ## A062039.P11016005134243824737

`A193926(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A062039.P11016005134243824737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193926 (n - 1) + a (n - 1)

end

end A062039.P11016005134243824737

/-! ## A062039.P9850678921956359085

`∑[A193926(A057428(n)+n)]+1`
-/

namespace A062039.P9850678921956359085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062039.P9850678921956359085

/-! ## A062039.P17896447900114996948

`∑[A193926(n)]+1-A193926(n)`
-/

namespace A062039.P17896447900114996948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A193926 n)

end

end A062039.P17896447900114996948

/-! ## A062039.P14088808611803012163

`∑[A193926(A028310(n)+log2(1/2))]+1`
-/

namespace A062039.P14088808611803012163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (SequenceMachineLib.roundAway ((A028310 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062039.P14088808611803012163

/-! ## A062039.P2161797759299699341

`∑[A193926(A028310(n))]-A193926(n)`
-/

namespace A062039.P2161797759299699341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193926 n

end

end A062039.P2161797759299699341

/-! ## A062039.P17856052227022989744

`∑[A193926(A137735(n²))]-A193926(n)`
-/

namespace A062039.P17856052227022989744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193926 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A193926 n

end

end A062039.P17856052227022989744

/-!
# A062040: Positive numbers whose product of digits is 8 times their sum.

The programs for A062040, there is no canonical definition to state claims against.
-/

/-! ## A062040.P13641227639972876335

`eq[A007954(n), A008574(A169805(n))]`
-/

namespace A062040.P13641227639972876335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062040.P13641227639972876335

/-!
# A062041: Positive numbers whose product of digits is 9 times their sum.

The programs for A062041, there is no canonical definition to state claims against.
-/

/-! ## A062041.P10226066108568529088

`eq[A008706(A169805(n)), A061762(n)]`
-/

namespace A062041.P10226066108568529088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062041.P10226066108568529088

/-!
# A062042: a(1) = 2, a(n) = least number greater than a(n-1) such that a(n-1) + a(n) is a prime.

The programs for A062042, the canonical program `A062042.P6136320871512992597` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062042 has offset 1).

The definition of A062042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062042.P18437246306368430526

`A062044(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A062042.P18437246306368430526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062044 (n + 1) - a (n - 1)

end

end A062042.P18437246306368430526

namespace A062042

/-- `A062044(n+1)-a(n-1)` -/
def P18437246306368430526.Spec : Prop :=
  ∀ n, P18437246306368430526.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P6328334016219064337

`A062044(n+1)-A107817(n)`
-/

namespace A062042.P6328334016219064337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062044 (n + 1) - A107817 n

end

end A062042.P6328334016219064337

namespace A062042

/-- `A062044(n+1)-A107817(n)` -/
def P6328334016219064337.Spec : Prop :=
  ∀ n, P6328334016219064337.a n = A062042 (n + 1)

theorem P6328334016219064337.correct : P6328334016219064337.Spec := by
  intro n
  simp only [A062042, Nat.add_sub_cancel, A062042.P6328334016219064337.a, A062042.P6136320871512992597.a, A062044, A062044.P7313043541615639252.a, A107817, A107817.P13758543603320578681.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062042

/-! ## A062042.P17967191287910357750

`∑[A110654(A214362(n+1))]-A110654(n)`
-/

namespace A062042.P17967191287910357750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A214362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A062042.P17967191287910357750

namespace A062042

/-- `∑[A110654(A214362(n+1))]-A110654(n)` -/
def P17967191287910357750.Spec : Prop :=
  ∀ n, P17967191287910357750.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P5183882717931991216

`A107817(n+1)`
-/

namespace A062042.P5183882717931991216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 (n + 1)

end

end A062042.P5183882717931991216

namespace A062042

/-- `A107817(n+1)` -/
def P5183882717931991216.Spec : Prop :=
  ∀ n, P5183882717931991216.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P7314210624503041614

`record[A107817(abs(1-n))]`
-/

namespace A062042.P7314210624503041614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062042.P7314210624503041614

namespace A062042

/-- `record[A107817(abs(1-n))]` -/
def P7314210624503041614.Spec : Prop :=
  ∀ n, P7314210624503041614.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P5272862300697126129

`A073627(n+3)`
-/

namespace A062042.P5272862300697126129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073627 (n + 3)

end

end A062042.P5272862300697126129

namespace A062042

/-- `A073627(n+3)` -/
def P5272862300697126129.Spec : Prop :=
  ∀ n, P5272862300697126129.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P6136320871512992597

`A151800(2*a(n-1))-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062042

/-- `A151800(2*a(n-1))-a(n-1)` -/
def P6136320871512992597.Spec : Prop :=
  ∀ n, P6136320871512992597.a n = A062042 (n + 1)

theorem P6136320871512992597.correct : P6136320871512992597.Spec := by
  intro n
  simp only [A062042, Nat.add_sub_cancel]

end A062042

/-! ## A062042.P17414543458862923472

`A151800(a(n-1)+a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P17414543458862923472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + a (n - 1)).toNat - a (n - 1)

end

end A062042.P17414543458862923472

namespace A062042

/-- `A151800(a(n-1)+a(n-1))-a(n-1)` -/
def P17414543458862923472.Spec : Prop :=
  ∀ n, P17414543458862923472.a n = A062042 (n + 1)

theorem P17414543458862923472.correct : P17414543458862923472.Spec := by
  intro n
  simp only [A062042, Nat.add_sub_cancel, A062042.P17414543458862923472.a, A062042.P6136320871512992597.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062042

/-! ## A062042.P2311057396887346955

`A060266(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A062042.P2311057396887346955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060266 (a (n - 1)).toNat + a (n - 1)

end

end A062042.P2311057396887346955

namespace A062042

/-- `A060266(a(n-1))+a(n-1)` -/
def P2311057396887346955.Spec : Prop :=
  ∀ n, P2311057396887346955.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P17903551837433745654

`A060264(a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P17903551837433745654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060264 (a (n - 1)).toNat - a (n - 1)

end

end A062042.P17903551837433745654

namespace A062042

/-- `A060264(a(n-1))-a(n-1)` -/
def P17903551837433745654.Spec : Prop :=
  ∀ n, P17903551837433745654.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P2249359133762060619

`A007920(2*a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A062042.P2249359133762060619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007920 (2 * a (n - 1)).toNat + a (n - 1)

end

end A062042.P2249359133762060619

namespace A062042

/-- `A007920(2*a(n-1))+a(n-1)` -/
def P2249359133762060619.Spec : Prop :=
  ∀ n, P2249359133762060619.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P9108364890673397791

`A013632(2*a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A062042.P9108364890673397791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A013632 (2 * a (n - 1)).toNat + a (n - 1)

end

end A062042.P9108364890673397791

namespace A062042

/-- `A013632(2*a(n-1))+a(n-1)` -/
def P9108364890673397791.Spec : Prop :=
  ∀ n, P9108364890673397791.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P2380428985007260676

`A007918(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P2380428985007260676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (2 * a (n - 1)).toNat - a (n - 1)

end

end A062042.P2380428985007260676

namespace A062042

/-- `A007918(2*a(n-1))-a(n-1)` -/
def P2380428985007260676.Spec : Prop :=
  ∀ n, P2380428985007260676.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P12166380161106911668

`A266620(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P12166380161106911668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (2 * a (n - 1)).toNat - a (n - 1)

end

end A062042.P12166380161106911668

namespace A062042

/-- `A266620(2*a(n-1))-a(n-1)` -/
def P12166380161106911668.Spec : Prop :=
  ∀ n, P12166380161106911668.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P12558115831978910280

`A110654(∑[A214362(n+1)])`
-/

namespace A062042.P12558115831978910280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062042.P12558115831978910280

namespace A062042

/-- `A110654(∑[A214362(n+1)])` -/
def P12558115831978910280.Spec : Prop :=
  ∀ n, P12558115831978910280.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P5449000864338914558

`A008619(∑[A214362(n+1)]-1)`
-/

namespace A062042.P5449000864338914558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A062042.P5449000864338914558

namespace A062042

/-- `A008619(∑[A214362(n+1)]-1)` -/
def P5449000864338914558.Spec : Prop :=
  ∀ n, P5449000864338914558.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P12253858939068634164

`record[A125595(n+2)]`
-/

namespace A062042.P12253858939068634164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062042.P12253858939068634164

namespace A062042

/-- `record[A125595(n+2)]` -/
def P12253858939068634164.Spec : Prop :=
  ∀ n, P12253858939068634164.a n = A062042 (n + 1)

end A062042

/-! ## A062042.P2328955312027844546

`A159477(2*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A062042.P2328955312027844546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A159477 (2 * a (n - 1)).toNat - a (n - 1)

end

end A062042.P2328955312027844546

namespace A062042

/-- `A159477(2*a(n-1))-a(n-1)` -/
def P2328955312027844546.Spec : Prop :=
  ∀ n, P2328955312027844546.a n = A062042 (n + 1)

end A062042

/-!
# A062043: Positive numbers whose product of digits is 10 times their sum.

The programs for A062043, there is no canonical definition to state claims against.
-/

/-! ## A062043.P11174524161519861296

`eq[A061762(n), A168104(A169805(n)/2)]`
-/

namespace A062043.P11174524161519861296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062043.P11174524161519861296

/-! ## A062043.P1823037620435119025

`eq[A061762(n), A168104(A118880(n)^(1/3))]`
-/

namespace A062043.P1823037620435119025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062043.P1823037620435119025

/-!
# A062044: Primes arising in A062042.

The programs for A062044, the canonical program `A062044.P7313043541615639252` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062044 has offset 1).

The definition of A062044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062044.P7313043541615639252

`A107817(n)+A062042(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062044

/-- `A107817(n)+A062042(n+1)` -/
def P7313043541615639252.Spec : Prop :=
  ∀ n, P7313043541615639252.a n = A062044 (n + 1)

theorem P7313043541615639252.correct : P7313043541615639252.Spec := by
  intro n
  simp only [A062044, Nat.add_sub_cancel]

end A062044

/-! ## A062044.P9747680466030964586

`A107817(n+1)+A107817(n)`
-/

namespace A062044.P9747680466030964586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 (n + 1) + A107817 n

end

end A062044.P9747680466030964586

namespace A062044

/-- `A107817(n+1)+A107817(n)` -/
def P9747680466030964586.Spec : Prop :=
  ∀ n, P9747680466030964586.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P463449607600954210

`A151800(2*A107817(n))`
-/

namespace A062044.P463449607600954210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A107817 n).toNat

end

end A062044.P463449607600954210

namespace A062044

/-- `A151800(2*A107817(n))` -/
def P463449607600954210.Spec : Prop :=
  ∀ n, P463449607600954210.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P890704875052851300

`A151800(2*(A073627(n+2)-A000007(n)))`
-/

namespace A062044.P890704875052851300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (A073627 (n + 2) - A000007 n)).toNat

end

end A062044.P890704875052851300

namespace A062044

/-- `A151800(2*(A073627(n+2)-A000007(n)))` -/
def P890704875052851300.Spec : Prop :=
  ∀ n, P890704875052851300.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P4053320309417805109

`A060264(A107817(n))`
-/

namespace A062044.P4053320309417805109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A107817 n).toNat

end

end A062044.P4053320309417805109

namespace A062044

/-- `A060264(A107817(n))` -/
def P4053320309417805109.Spec : Prop :=
  ∀ n, P4053320309417805109.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P10146516229236975233

`A007918(2*A107817(n))`
-/

namespace A062044.P10146516229236975233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A107817 n).toNat

end

end A062044.P10146516229236975233

namespace A062044

/-- `A007918(2*A107817(n))` -/
def P10146516229236975233.Spec : Prop :=
  ∀ n, P10146516229236975233.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P10293286105620332569

`A006530(Δ[A107817(n)²])`
-/

namespace A062044.P10293286105620332569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A062044.P10293286105620332569

namespace A062044

/-- `A006530(Δ[A107817(n)²])` -/
def P10293286105620332569.Spec : Prop :=
  ∀ n, P10293286105620332569.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P3460414689357676363

`A006530(Δ[(A073627(n+2)-floor(acot(n)))²])`
-/

namespace A062044.P3460414689357676363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073627 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A062044.P3460414689357676363

namespace A062044

/-- `A006530(Δ[(A073627(n+2)-floor(acot(n)))²])` -/
def P3460414689357676363.Spec : Prop :=
  ∀ n, P3460414689357676363.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P5587368593576795609

`A006530(Δ[(A000040(n+1)%2*A073627(n+2))²])`
-/

namespace A062044.P5587368593576795609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) 2 * A073627 (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A062044.P5587368593576795609

namespace A062044

/-- `A006530(Δ[(A000040(n+1)%2*A073627(n+2))²])` -/
def P5587368593576795609.Spec : Prop :=
  ∀ n, P5587368593576795609.a n = A062044 (n + 1)

end A062044

/-! ## A062044.P17257342893102507100

`A088387(Δ[A107817(n)²])`
-/

namespace A062044.P17257342893102507100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107817 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (f1 (n + 1) - f1 n).toNat

end

end A062044.P17257342893102507100

namespace A062044

/-- `A088387(Δ[A107817(n)²])` -/
def P17257342893102507100.Spec : Prop :=
  ∀ n, P17257342893102507100.a n = A062044 (n + 1)

end A062044

/-!
# A062046: Sum of even numbers between consecutive primes.

The programs for A062046, the canonical program `A062046.P5666097150901793030` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062046 has offset 1).

The definition of A062046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062046.P17250670479366963463

`A054265(n+1)-A062047(n+1)`
-/

namespace A062046.P17250670479366963463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A062047 (n + 1)

end

end A062046.P17250670479366963463

namespace A062046

/-- `A054265(n+1)-A062047(n+1)` -/
def P17250670479366963463.Spec : Prop :=
  ∀ n, P17250670479366963463.a n = A062046 (n + 1)

theorem P17250670479366963463.correct : P17250670479366963463.Spec := by
  intro n
  simp only [A062046, Nat.add_sub_cancel, A062046.P17250670479366963463.a, A062046.P5666097150901793030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P1087078146854492395.a, A062047, A062047.P9752423036722782838.a, A162735, A162735.P15250219322694002563.a, A162800, A162800.P4495527545912003925.a, A001057, A001057.P5698194758103254717.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A371201, A371201.P4499511649538821653.a, A011974, A011974.P2665693327137284562.a, A054541, A054541.P347795157194570387.a, A138383, A138383.P12057680443366448035.f1, A138383.P12057680443366448035.a, A001043, A001043.P18269783162673735460.a, A034953, A034953.P12568728140146877898.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062046

/-! ## A062046.P5666097150901793030

`(A162800(n+1)-A000040(n+1))*A162735(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062046

/-- `(A162800(n+1)-A000040(n+1))*A162735(n+1)` -/
def P5666097150901793030.Spec : Prop :=
  ∀ n, P5666097150901793030.a n = A062046 (n + 1)

theorem P5666097150901793030.correct : P5666097150901793030.Spec := by
  intro n
  simp only [A062046, Nat.add_sub_cancel]

end A062046

/-! ## A062046.P11438397288325153850

`Δ[(p?[abs(2*n-3)]/2)²]`
-/

namespace A062046.P11438397288325153850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P11438397288325153850

namespace A062046

/-- `Δ[(p?[abs(2*n-3)]/2)²]` -/
def P11438397288325153850.Spec : Prop :=
  ∀ n, P11438397288325153850.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P4880739272049195819

`Δ[(or(1, A000040(n+1))/2)²]`
-/

namespace A062046.P4880739272049195819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lor 1 (A000040 (n + 1)) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P4880739272049195819

namespace A062046

/-- `Δ[(or(1, A000040(n+1))/2)²]` -/
def P4880739272049195819.Spec : Prop :=
  ∀ n, P4880739272049195819.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P2879569827499785537

`Δ[(A000040(A028310(n)+1)/2)²]`
-/

namespace A062046.P2879569827499785537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (A028310 n + 1).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P2879569827499785537

namespace A062046

/-- `Δ[(A000040(A028310(n)+1)/2)²]` -/
def P2879569827499785537.Spec : Prop :=
  ∀ n, P2879569827499785537.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P14240591804755974863

`Δ[A130290(n+1)*A130291(n+1)]`
-/

namespace A062046.P14240591804755974863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) * A130291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P14240591804755974863

namespace A062046

/-- `Δ[A130290(n+1)*A130291(n+1)]` -/
def P14240591804755974863.Spec : Prop :=
  ∀ n, P14240591804755974863.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P16137692468520893757

`Δ[(A000040(A004277(n)+1-n)/2)²]`
-/

namespace A062046.P16137692468520893757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (A004277 n + (1 - (n : ℤ))).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P16137692468520893757

namespace A062046

/-- `Δ[(A000040(A004277(n)+1-n)/2)²]` -/
def P16137692468520893757.Spec : Prop :=
  ∀ n, P16137692468520893757.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P1124061723128156770

`Δ[(A000040(ceil(A004277(n)/2)+1)/2)²]`
-/

namespace A062046.P1124061723128156770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (⌈(A004277 n : ℚ) / 2⌉ + 1).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P1124061723128156770

namespace A062046

/-- `Δ[(A000040(ceil(A004277(n)/2)+1)/2)²]` -/
def P1124061723128156770.Spec : Prop :=
  ∀ n, P1124061723128156770.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P4286198036240293728

`(A162800(n+1)-A008578(n+2))*A162800(n+1)`
-/

namespace A062046.P4286198036240293728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 (n + 1) - A008578 (n + 2)) * A162800 (n + 1)

end

end A062046.P4286198036240293728

namespace A062046

/-- `(A162800(n+1)-A008578(n+2))*A162800(n+1)` -/
def P4286198036240293728.Spec : Prop :=
  ∀ n, P4286198036240293728.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P11471302550457781352

`Δ[(A006530(A001748(n+1))/2)²]`
-/

namespace A062046.P11471302550457781352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006530 (A001748 (n + 1)).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P11471302550457781352

namespace A062046

/-- `Δ[(A006530(A001748(n+1))/2)²]` -/
def P11471302550457781352.Spec : Prop :=
  ∀ n, P11471302550457781352.a n = (A062046 (n + 1) : ℚ)

end A062046

/-! ## A062046.P16447424159946570105

`Δ[A165900(A130291(n+1))]`
-/

namespace A062046.P16447424159946570105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A130291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P16447424159946570105

namespace A062046

/-- `Δ[A165900(A130291(n+1))]` -/
def P16447424159946570105.Spec : Prop :=
  ∀ n, P16447424159946570105.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P7225339678646404626

`Δ[A097066(A000040(n+1))]`
-/

namespace A062046.P7225339678646404626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P7225339678646404626

namespace A062046

/-- `Δ[A097066(A000040(n+1))]` -/
def P7225339678646404626.Spec : Prop :=
  ∀ n, P7225339678646404626.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P4569924979239987679

`A110660(A000040(n+2))-A110660(A000040(n+1))`
-/

namespace A062046.P4569924979239987679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A000040 (n + 2)).toNat - A110660 (A000040 (n + 1)).toNat

end

end A062046.P4569924979239987679

namespace A062046

/-- `A110660(A000040(n+2))-A110660(A000040(n+1))` -/
def P4569924979239987679.Spec : Prop :=
  ∀ n, P4569924979239987679.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P9537995168459231258

`A318518(A124434(n+1))`
-/

namespace A062046.P9537995168459231258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A124434 (n + 1)).toNat

end

end A062046.P9537995168459231258

namespace A062046

/-- `A318518(A124434(n+1))` -/
def P9537995168459231258.Spec : Prop :=
  ∀ n, P9537995168459231258.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P8994588480165875328

`A110962(A069482(n+1))`
-/

namespace A062046.P8994588480165875328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A069482 (n + 1)).toNat

end

end A062046.P8994588480165875328

namespace A062046

/-- `A110962(A069482(n+1))` -/
def P8994588480165875328.Spec : Prop :=
  ∀ n, P8994588480165875328.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P11087394609475978071

`Δ[A110660(p?[A110650(2*n+1)])]`
-/

namespace A062046.P11087394609475978071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P11087394609475978071

namespace A062046

/-- `Δ[A110660(p?[A110650(2*n+1)])]` -/
def P11087394609475978071.Spec : Prop :=
  ∀ n, P11087394609475978071.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P8973677809779959975

`A142150(2*A124434(n+1)-A124434(n+1))`
-/

namespace A062046.P8973677809779959975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * A124434 (n + 1) - A124434 (n + 1)).toNat

end

end A062046.P8973677809779959975

namespace A062046

/-- `A142150(2*A124434(n+1)-A124434(n+1))` -/
def P8973677809779959975.Spec : Prop :=
  ∀ n, P8973677809779959975.a n = A062046 (n + 1)

end A062046

/-! ## A062046.P3975982367321932013

`Δ[(A006530((n+3)*A000040(n+1))/2)²]`
-/

namespace A062046.P3975982367321932013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006530 ((n + 3 : ℤ) * A000040 (n + 1)).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062046.P3975982367321932013

namespace A062046

/-- `Δ[(A006530((n+3)*A000040(n+1))/2)²]` -/
def P3975982367321932013.Spec : Prop :=
  ∀ n, P3975982367321932013.a n = (A062046 (n + 1) : ℚ)

end A062046

/-!
# A062047: Sum of odd numbers between consecutive primes.

The programs for A062047, the canonical program `A062047.P9752423036722782838` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062047 has offset 1).

The definition of A062047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062047.P9752423036722782838

`A054265(n+1)-A062046(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062047

/-- `A054265(n+1)-A062046(n+1)` -/
def P9752423036722782838.Spec : Prop :=
  ∀ n, P9752423036722782838.a n = A062047 (n + 1)

theorem P9752423036722782838.correct : P9752423036722782838.Spec := by
  intro n
  simp only [A062047, Nat.add_sub_cancel]

end A062047

/-! ## A062047.P11062409802219269269

`A100820(n+1)*A162735(n+1)`
-/

namespace A062047.P11062409802219269269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) * A162735 (n + 1)

end

end A062047.P11062409802219269269

namespace A062047

/-- `A100820(n+1)*A162735(n+1)` -/
def P11062409802219269269.Spec : Prop :=
  ∀ n, P11062409802219269269.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P9027356585526698506

`(A078444(n+1)+1)*A100820(n+1)`
-/

namespace A062047.P9027356585526698506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078444 (n + 1) + 1) * A100820 (n + 1)

end

end A062047.P9027356585526698506

namespace A062047

/-- `(A078444(n+1)+1)*A100820(n+1)` -/
def P9027356585526698506.Spec : Prop :=
  ∀ n, P9027356585526698506.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P15951075869884693972

`(A124434(n+1)-A001043(n+1))/2`
-/

namespace A062047.P15951075869884693972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124434 (n + 1) - A001043 (n + 1) : ℚ) / 2

end

end A062047.P15951075869884693972

namespace A062047

/-- `(A124434(n+1)-A001043(n+1))/2` -/
def P15951075869884693972.Spec : Prop :=
  ∀ n, P15951075869884693972.a n = (A062047 (n + 1) : ℚ)

end A062047

/-! ## A062047.P11153600894866840996

`A005097(n+1)²-A111333(n+1)²`
-/

namespace A062047.P11153600894866840996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) ^ 2 - A111333 (n + 1) ^ 2

end

end A062047.P11153600894866840996

namespace A062047

/-- `A005097(n+1)²-A111333(n+1)²` -/
def P11153600894866840996.Spec : Prop :=
  ∀ n, P11153600894866840996.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P13728274541824244689

`(A100820(n+1)+A055670(n+1))*A100820(n+1)`
-/

namespace A062047.P13728274541824244689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100820 (n + 1) + A055670 (n + 1)) * A100820 (n + 1)

end

end A062047.P13728274541824244689

namespace A062047

/-- `(A100820(n+1)+A055670(n+1))*A100820(n+1)` -/
def P13728274541824244689.Spec : Prop :=
  ∀ n, P13728274541824244689.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P7286823300403434564

`(A165972(n+1)-A100820(n+1))*A100820(n+1)`
-/

namespace A062047.P7286823300403434564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165972 (n + 1) - A100820 (n + 1)) * A100820 (n + 1)

end

end A062047.P7286823300403434564

namespace A062047

/-- `(A165972(n+1)-A100820(n+1))*A100820(n+1)` -/
def P7286823300403434564.Spec : Prop :=
  ∀ n, P7286823300403434564.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P564623042390673060

`(A162735(n+1)-A055670(n+1))*A162735(n+1)`
-/

namespace A062047.P564623042390673060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162735 (n + 1) - A055670 (n + 1)) * A162735 (n + 1)

end

end A062047.P564623042390673060

namespace A062047

/-- `(A162735(n+1)-A055670(n+1))*A162735(n+1)` -/
def P564623042390673060.Spec : Prop :=
  ∀ n, P564623042390673060.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P1622843741054308418

`(A165972(n+1)-A162735(n+1))*A162735(n+1)`
-/

namespace A062047.P1622843741054308418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165972 (n + 1) - A162735 (n + 1)) * A162735 (n + 1)

end

end A062047.P1622843741054308418

namespace A062047

/-- `(A165972(n+1)-A162735(n+1))*A162735(n+1)` -/
def P1622843741054308418.Spec : Prop :=
  ∀ n, P1622843741054308418.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P7863411852429848330

`(A006093(n+2)-A100820(n+1))*A100820(n+1)`
-/

namespace A062047.P7863411852429848330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) - A100820 (n + 1)) * A100820 (n + 1)

end

end A062047.P7863411852429848330

namespace A062047

/-- `(A006093(n+2)-A100820(n+1))*A100820(n+1)` -/
def P7863411852429848330.Spec : Prop :=
  ∀ n, P7863411852429848330.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P12530981601167826297

`(A062839(n+2)-A028334(n+2))*A100820(n+1)`
-/

namespace A062047.P12530981601167826297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062839 (n + 2) - A028334 (n + 2)) * A100820 (n + 1)

end

end A062047.P12530981601167826297

namespace A062047

/-- `(A062839(n+2)-A028334(n+2))*A100820(n+1)` -/
def P12530981601167826297.Spec : Prop :=
  ∀ n, P12530981601167826297.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P17282887640311080122

`(A006093(n+2)-A063934(2*n+1))*A063934(2*n+1)`
-/

namespace A062047.P17282887640311080122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) - A063934 (2 * n + 1)) * A063934 (2 * n + 1)

end

end A062047.P17282887640311080122

namespace A062047

/-- `(A006093(n+2)-A063934(2*n+1))*A063934(2*n+1)` -/
def P17282887640311080122.Spec : Prop :=
  ∀ n, P17282887640311080122.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P2755143198679516982

`(A039915(n+2)-A063934(2*n+1))*A063934(2*n+1)`
-/

namespace A062047.P2755143198679516982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039915 (n + 2) - A063934 (2 * n + 1)) * A063934 (2 * n + 1)

end

end A062047.P2755143198679516982

namespace A062047

/-- `(A039915(n+2)-A063934(2*n+1))*A063934(2*n+1)` -/
def P2755143198679516982.Spec : Prop :=
  ∀ n, P2755143198679516982.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P8380403637516426972

`(A063934(2*n+1)-A093515(2*n+1))*A063934(2*n+1)`
-/

namespace A062047.P8380403637516426972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063934 (2 * n + 1) - A093515 (2 * n + 1)) * A063934 (2 * n + 1)

end

end A062047.P8380403637516426972

namespace A062047

/-- `(A063934(2*n+1)-A093515(2*n+1))*A063934(2*n+1)` -/
def P8380403637516426972.Spec : Prop :=
  ∀ n, P8380403637516426972.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P8959892770536170258

`(A173919(2*(n+1))-A063934(2*n+1))*A063934(2*n+1)`
-/

namespace A062047.P8959892770536170258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173919 (2 * (n + 1)) - A063934 (2 * n + 1)) * A063934 (2 * n + 1)

end

end A062047.P8959892770536170258

namespace A062047

/-- `(A173919(2*(n+1))-A063934(2*n+1))*A063934(2*n+1)` -/
def P8959892770536170258.Spec : Prop :=
  ∀ n, P8959892770536170258.a n = A062047 (n + 1)

end A062047

/-! ## A062047.P11999724272715298019

`Δ[A246277(A000040(n+1)+1)²]-A000040(n+2)`
-/

namespace A062047.P11999724272715298019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A000040 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 2)

end

end A062047.P11999724272715298019

namespace A062047

/-- `Δ[A246277(A000040(n+1)+1)²]-A000040(n+2)` -/
def P11999724272715298019.Spec : Prop :=
  ∀ n, P11999724272715298019.a n = A062047 (n + 1)

end A062047

/-!
# A062048: a(n) = Sum_{k=1..n} floor(sqrt(prime(k))).

The programs for A062048, the canonical program `A062048.P8616500315973901057` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062048 has offset 1).

The definition of A062048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062048.P935173950992589231

`∑[A000006(n+1)]`
-/

namespace A062048.P935173950992589231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P935173950992589231

namespace A062048

/-- `∑[A000006(n+1)]` -/
def P935173950992589231.Spec : Prop :=
  ∀ n, P935173950992589231.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P1219617010156247029

`∑[n-A103416(n)]`
-/

namespace A062048.P1219617010156247029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P1219617010156247029

namespace A062048

/-- `∑[n-A103416(n)]` -/
def P1219617010156247029.Spec : Prop :=
  ∀ n, P1219617010156247029.a n = A062048 (n + 1)

theorem P1219617010156247029.correct : P1219617010156247029.Spec := by
  intro n
  simp only [A062048, Nat.add_sub_cancel, A062048.P1219617010156247029.f1, A062048.P1219617010156247029.a, A062048.P8616500315973901057.f1, A062048.P8616500315973901057.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103416, A103416.P11972475855525546389.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062048

/-! ## A062048.P14250363870170997787

`∑[∑[char[A038107(n)]]]`
-/

namespace A062048.P14250363870170997787
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P14250363870170997787

namespace A062048

/-- `∑[∑[char[A038107(n)]]]` -/
def P14250363870170997787.Spec : Prop :=
  ∀ n, (P14250363870170997787.a n : ℤ) = A062048 (n + 1)

end A062048

/-! ## A062048.P4948085985652599273

`∑[sqrt(A065730(n+1))]`
-/

namespace A062048.P4948085985652599273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065730 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P4948085985652599273

namespace A062048

/-- `∑[sqrt(A065730(n+1))]` -/
def P4948085985652599273.Spec : Prop :=
  ∀ n, P4948085985652599273.a n = (A062048 (n + 1) : ℝ)

end A062048

/-! ## A062048.P11976985106452987853

`∑[∑[A139140(n)%2]]`
-/

namespace A062048.P11976985106452987853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139140 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P11976985106452987853

namespace A062048

/-- `∑[∑[A139140(n)%2]]` -/
def P11976985106452987853.Spec : Prop :=
  ∀ n, P11976985106452987853.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P14119145338308659705

`∑[A104103(n+1)-1]`
-/

namespace A062048.P14119145338308659705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P14119145338308659705

namespace A062048

/-- `∑[A104103(n+1)-1]` -/
def P14119145338308659705.Spec : Prop :=
  ∀ n, P14119145338308659705.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P14809191381210563546

`∑[A096494(n+1)/2]`
-/

namespace A062048.P14809191381210563546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096494 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P14809191381210563546

namespace A062048

/-- `∑[A096494(n+1)/2]` -/
def P14809191381210563546.Spec : Prop :=
  ∀ n, P14809191381210563546.a n = (A062048 (n + 1) : ℚ)

end A062048

/-! ## A062048.P8616500315973901057

`∑[floor(sqrt(A000040(n+1)))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062048

/-- `∑[floor(sqrt(A000040(n+1)))]` -/
def P8616500315973901057.Spec : Prop :=
  ∀ n, P8616500315973901057.a n = A062048 (n + 1)

theorem P8616500315973901057.correct : P8616500315973901057.Spec := by
  intro n
  simp only [A062048, Nat.add_sub_cancel]

end A062048

/-! ## A062048.P627762250811291712

`∑[floor(sqrt(A006093(n+1)))]`
-/

namespace A062048.P627762250811291712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P627762250811291712

namespace A062048

/-- `∑[floor(sqrt(A006093(n+1)))]` -/
def P627762250811291712.Spec : Prop :=
  ∀ n, P627762250811291712.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P14329515742080945179

`∑[A166127(n+1)-1]+2`
-/

namespace A062048.P14329515742080945179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A062048.P14329515742080945179

namespace A062048

/-- `∑[A166127(n+1)-1]+2` -/
def P14329515742080945179.Spec : Prop :=
  ∀ n, P14329515742080945179.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P582597909821025522

`∑[n+1-A103355(n+1)]`
-/

namespace A062048.P582597909821025522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A103355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P582597909821025522

namespace A062048

/-- `∑[n+1-A103355(n+1)]` -/
def P582597909821025522.Spec : Prop :=
  ∀ n, P582597909821025522.a n = A062048 (n + 1)

theorem P582597909821025522.correct : P582597909821025522.Spec := by
  intro n
  simp only [A062048, Nat.add_sub_cancel, A062048.P582597909821025522.f1, A062048.P582597909821025522.a, A062048.P8616500315973901057.f1, A062048.P8616500315973901057.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062048

/-! ## A062048.P721372985240797956

`∑[A161188(n+1)-(n+1)]`
-/

namespace A062048.P721372985240797956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P721372985240797956

namespace A062048

/-- `∑[A161188(n+1)-(n+1)]` -/
def P721372985240797956.Spec : Prop :=
  ∀ n, P721372985240797956.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P11588074687297223013

`∑[floor(sqrt(A040976(n+1)+1))]`
-/

namespace A062048.P11588074687297223013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A040976 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P11588074687297223013

namespace A062048

/-- `∑[floor(sqrt(A040976(n+1)+1))]` -/
def P11588074687297223013.Spec : Prop :=
  ∀ n, P11588074687297223013.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P6502334023050652456

`∑[floor(sqrt(A008864(n+1)-1))]`
-/

namespace A062048.P6502334023050652456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P6502334023050652456

namespace A062048

/-- `∑[floor(sqrt(A008864(n+1)-1))]` -/
def P6502334023050652456.Spec : Prop :=
  ∀ n, P6502334023050652456.a n = A062048 (n + 1)

theorem P6502334023050652456.correct : P6502334023050652456.Spec := by
  intro n
  simp only [A062048, Nat.add_sub_cancel, A062048.P6502334023050652456.f1, A062048.P6502334023050652456.a, A062048.P8616500315973901057.f1, A062048.P8616500315973901057.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062048

/-! ## A062048.P16373500792988977599

`∑[floor(sqrt(A014689(n+1)+n))]`
-/

namespace A062048.P16373500792988977599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A014689 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P16373500792988977599

namespace A062048

/-- `∑[floor(sqrt(A014689(n+1)+n))]` -/
def P16373500792988977599.Spec : Prop :=
  ∀ n, P16373500792988977599.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P5891585312324002649

`∑[floor(sqrt(A008578(n+2)))]`
-/

namespace A062048.P5891585312324002649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008578 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P5891585312324002649

namespace A062048

/-- `∑[floor(sqrt(A008578(n+2)))]` -/
def P5891585312324002649.Spec : Prop :=
  ∀ n, P5891585312324002649.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P6833575795728984064

`∑[floor(record[sqrt(A000010(n+1))])]`
-/

namespace A062048.P6833575795728984064
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000010 (n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P6833575795728984064

namespace A062048

/-- `∑[floor(record[sqrt(A000010(n+1))])]` -/
def P6833575795728984064.Spec : Prop :=
  ∀ n, P6833575795728984064.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P14205817578521243534

`∑[floor(record[sqrt(A006530(n+2))])]`
-/

namespace A062048.P14205817578521243534
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P14205817578521243534

namespace A062048

/-- `∑[floor(record[sqrt(A006530(n+2))])]` -/
def P14205817578521243534.Spec : Prop :=
  ∀ n, P14205817578521243534.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P12350971371437439128

`∑[floor(record[sqrt(A020639(n+2))])]`
-/

namespace A062048.P12350971371437439128
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P12350971371437439128

namespace A062048

/-- `∑[floor(record[sqrt(A020639(n+2))])]` -/
def P12350971371437439128.Spec : Prop :=
  ∀ n, P12350971371437439128.a n = A062048 (n + 1)

end A062048

/-! ## A062048.P3271634785795908666

`∑[floor(sqrt(A067747(2*n+1)))]`
-/

namespace A062048.P3271634785795908666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A067747 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P3271634785795908666

namespace A062048

/-- `∑[floor(sqrt(A067747(2*n+1)))]` -/
def P3271634785795908666.Spec : Prop :=
  ∀ n, P3271634785795908666.a n = A062048 (n + 1)

end A062048

/-!
# A062049: Integer part of geometric mean of first n primes.

The programs for A062049, there is no canonical definition to state claims against.
-/

/-! ## A062049.P18214472587717420777

`floor(root(∏[A000040(n+1)], n+1))`
-/

namespace A062049.P18214472587717420777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A062049.P18214472587717420777

/-! ## A062049.P2272304093727737541

`round(log2(record[A246997(n+4)]))`
-/

namespace A062049.P2272304093727737541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246997 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A062049.P2272304093727737541

/-! ## A062049.P1490795568578206516

`round(log2(A246997(2*(n+1))+2))`
-/

namespace A062049.P1490795568578206516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A246997 (2 * (n + 1)) + 2 : ℝ))

end

end A062049.P1490795568578206516

/-! ## A062049.P10048583076706648049

`A036042(A342528(n)+2)`
-/

namespace A062049.P10048583076706648049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A342528 n + 2).toNat

end

end A062049.P10048583076706648049

/-!
# A062050: n-th chunk consists of the numbers 1, ..., 2^n.

The programs for A062050, the canonical program `A062050.P17235940281182373868` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062050 has offset 1).

The definition of A062050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062050.P8000552248878470965

`1+n+1-2^floor(log(n+1)/log(2))`
-/

namespace A062050.P8000552248878470965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℚ) - (2 : ℚ) ^ (⌊Real.log (n + 1 : ℝ) / Real.log (2 : ℝ)⌋ : ℤ)

end

end A062050.P8000552248878470965

namespace A062050

/-- `1+n+1-2^floor(log(n+1)/log(2))` -/
def P8000552248878470965.Spec : Prop :=
  ∀ n, P8000552248878470965.a n = (A062050 (n + 1) : ℚ)

end A062050

/-! ## A062050.P17235940281182373868

`(A006257(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062050

/-- `(A006257(n+1)+1)/2` -/
def P17235940281182373868.Spec : Prop :=
  ∀ n, P17235940281182373868.a n = (A062050 (n + 1) : ℚ)

end A062050

/-! ## A062050.P8811500898053519777

`(2*n+3)%lt[n, xor(n, floor(n/2))]`
-/

namespace A062050.P8811500898053519777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062050.P8811500898053519777

namespace A062050

/-- `(2*n+3)%lt[n, xor(n, floor(n/2))]` -/
def P8811500898053519777.Spec : Prop :=
  ∀ n, (P8811500898053519777.a n : ℤ) = A062050 (n + 1)

end A062050

/-! ## A062050.P5869052676449288489

`abs(2*n+3-lt[n, xor(n, floor(n/2))])`
-/

namespace A062050.P5869052676449288489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)|

end

end A062050.P5869052676449288489

namespace A062050

/-- `abs(2*n+3-lt[n, xor(n, floor(n/2))])` -/
def P5869052676449288489.Spec : Prop :=
  ∀ n, P5869052676449288489.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P16289797154846546287

`gcd(a(n-1)+1, floor(1/floor(n/a(n-1))))` with `a(0)=1`
-/

namespace A062050.P16289797154846546287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) ⌊1 / (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ : ℚ)⌋

end

end A062050.P16289797154846546287

namespace A062050

/-- `gcd(a(n-1)+1, floor(1/floor(n/a(n-1))))` -/
def P16289797154846546287.Spec : Prop :=
  ∀ n, (P16289797154846546287.a n : ℤ) = A062050 (n + 1)

end A062050

/-! ## A062050.P15284385516051632179

`(a(n-1)%((2*n)%a(n-1)-n)+1)%xor(n, floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A062050.P15284385516051632179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (Int.tmod (a (n - 1)) (Int.tmod (2 * n : ℤ) (a (n - 1)) - (n : ℤ)) + 1) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A062050.P15284385516051632179

namespace A062050

/-- `(a(n-1)%((2*n)%a(n-1)-n)+1)%xor(n, floor(n/2))` -/
def P15284385516051632179.Spec : Prop :=
  ∀ n, P15284385516051632179.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P1997508102893391765

`ceil(A006257(n+1)/2)`
-/

namespace A062050.P1997508102893391765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (n + 1) : ℚ) / 2⌉

end

end A062050.P1997508102893391765

namespace A062050

/-- `ceil(A006257(n+1)/2)` -/
def P1997508102893391765.Spec : Prop :=
  ∀ n, P1997508102893391765.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P2765710852504390582

`∑[1-and(n, A135517(n))]`
-/

namespace A062050.P2765710852504390582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A135517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062050.P2765710852504390582

namespace A062050

/-- `∑[1-and(n, A135517(n))]` -/
def P2765710852504390582.Spec : Prop :=
  ∀ n, P2765710852504390582.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P13939265469809683405

`(n+2-A035327(n+1))/2`
-/

namespace A062050.P13939265469809683405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A035327 (n + 1) : ℚ) / 2

end

end A062050.P13939265469809683405

namespace A062050

/-- `(n+2-A035327(n+1))/2` -/
def P13939265469809683405.Spec : Prop :=
  ∀ n, P13939265469809683405.a n = (A062050 (n + 1) : ℚ)

end A062050

/-! ## A062050.P14251005876074531588

`(n+3-A080079(n+1))/2`
-/

namespace A062050.P14251005876074531588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A080079 (n + 1) : ℚ) / 2

end

end A062050.P14251005876074531588

namespace A062050

/-- `(n+3-A080079(n+1))/2` -/
def P14251005876074531588.Spec : Prop :=
  ∀ n, P14251005876074531588.a n = (A062050 (n + 1) : ℚ)

end A062050

/-! ## A062050.P18267489244707084664

`∑[(n+1)/gcd(2, A006530(n+1))-n]`
-/

namespace A062050.P18267489244707084664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A006530 (n + 1)) : ℚ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062050.P18267489244707084664

namespace A062050

/-- `∑[(n+1)/gcd(2, A006530(n+1))-n]` -/
def P18267489244707084664.Spec : Prop :=
  ∀ n, P18267489244707084664.a n = (A062050 (n + 1) : ℚ)

end A062050

/-! ## A062050.P9677322389863337032

`A000463(A006257(n+1))`
-/

namespace A062050.P9677322389863337032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A006257 (n + 1)).toNat

end

end A062050.P9677322389863337032

namespace A062050

/-- `A000463(A006257(n+1))` -/
def P9677322389863337032.Spec : Prop :=
  ∀ n, P9677322389863337032.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P10527619280204136438

`A060802(A053642(n+1))`
-/

namespace A062050.P10527619280204136438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060802 (A053642 (n + 1)).toNat

end

end A062050.P10527619280204136438

namespace A062050

/-- `A060802(A053642(n+1))` -/
def P10527619280204136438.Spec : Prop :=
  ∀ n, P10527619280204136438.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P12446929627027856843

`A004525(A006257(n+1)+1)`
-/

namespace A062050.P12446929627027856843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006257 (n + 1) + 1).toNat

end

end A062050.P12446929627027856843

namespace A062050

/-- `A004525(A006257(n+1)+1)` -/
def P12446929627027856843.Spec : Prop :=
  ∀ n, P12446929627027856843.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P548346605483710907

`A004526(A006257(n+1)+1)`
-/

namespace A062050.P548346605483710907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006257 (n + 1) + 1).toNat

end

end A062050.P548346605483710907

namespace A062050

/-- `A004526(A006257(n+1)+1)` -/
def P548346605483710907.Spec : Prop :=
  ∀ n, P548346605483710907.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P3453739445678148745

`A014682(A006257(n+1)+1)`
-/

namespace A062050.P3453739445678148745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006257 (n + 1) + 1).toNat

end

end A062050.P3453739445678148745

namespace A062050

/-- `A014682(A006257(n+1)+1)` -/
def P3453739445678148745.Spec : Prop :=
  ∀ n, P3453739445678148745.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P2558460293713490419

`A025480(A006257(n+1)+1)`
-/

namespace A062050.P2558460293713490419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A006257 (n + 1) + 1).toNat

end

end A062050.P2558460293713490419

namespace A062050

/-- `A025480(A006257(n+1)+1)` -/
def P2558460293713490419.Spec : Prop :=
  ∀ n, P2558460293713490419.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P6317036144201144486

`A026741(A006257(n+1)+1)`
-/

namespace A062050.P6317036144201144486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A006257 (n + 1) + 1).toNat

end

end A062050.P6317036144201144486

namespace A062050

/-- `A026741(A006257(n+1)+1)` -/
def P6317036144201144486.Spec : Prop :=
  ∀ n, P6317036144201144486.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P11534639381496150393

`A038572(A006257(n+1)+1)`
-/

namespace A062050.P11534639381496150393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A006257 (n + 1) + 1).toNat

end

end A062050.P11534639381496150393

namespace A062050

/-- `A038572(A006257(n+1)+1)` -/
def P11534639381496150393.Spec : Prop :=
  ∀ n, P11534639381496150393.a n = A062050 (n + 1)

end A062050

/-! ## A062050.P8909746272800469543

`A144396(n+1)%A004754(n+1)`
-/

namespace A062050.P8909746272800469543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A004754 (n + 1))

end

end A062050.P8909746272800469543

namespace A062050

/-- `A144396(n+1)%A004754(n+1)` -/
def P8909746272800469543.Spec : Prop :=
  ∀ n, P8909746272800469543.a n = A062050 (n + 1)

end A062050

/-!
# A062051: Number of partitions of n into powers of 3.

The programs for A062051, the canonical program `A062051.P18155135683284237354` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062051 has offset 0).

The definition of A062051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062051.P18155135683284237354

`a(n-3)+a(floor(n/3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062051

/-- `a(n-3)+a(floor(n/3))` -/
def P18155135683284237354.Spec : Prop :=
  ∀ n, (P18155135683284237354.a n : ℤ) = A062051 n

theorem P18155135683284237354.correct : P18155135683284237354.Spec := by
  intro n
  simp only [A062051]

end A062051

/-! ## A062051.P5497302401401817523

`A005704(floor(n/3))`
-/

namespace A062051.P5497302401401817523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 ⌊(n : ℚ) / 3⌋.toNat

end

end A062051.P5497302401401817523

namespace A062051

/-- `A005704(floor(n/3))` -/
def P5497302401401817523.Spec : Prop :=
  ∀ n, P5497302401401817523.a n = A062051 n

end A062051

/-! ## A062051.P7981902399165298018

`abs(Δ[A005704(abs(1-n))])`
-/

namespace A062051.P7981902399165298018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A062051.P7981902399165298018

namespace A062051

/-- `abs(Δ[A005704(abs(1-n))])` -/
def P7981902399165298018.Spec : Prop :=
  ∀ n, P7981902399165298018.a n = A062051 n

end A062051

/-! ## A062051.P15598878315564298630

`or(char[1], A005704(A002264(n)))`
-/

namespace A062051.P15598878315564298630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005704 (A002264 n).toNat)

end

end A062051.P15598878315564298630

namespace A062051

/-- `or(char[1], A005704(A002264(n)))` -/
def P15598878315564298630.Spec : Prop :=
  ∀ n, P15598878315564298630.a n = A062051 n

end A062051

/-! ## A062051.P8202177177770751184

`A151763(A000005(n+1)²)+A005704(A002264(n))`
-/

namespace A062051.P8202177177770751184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (A000005 (n + 1) ^ 2).toNat + A005704 (A002264 n).toNat

end

end A062051.P8202177177770751184

namespace A062051

/-- `A151763(A000005(n+1)²)+A005704(A002264(n))` -/
def P8202177177770751184.Spec : Prop :=
  ∀ n, P8202177177770751184.a n = A062051 n

end A062051

/-! ## A062051.P9554851509234151640

`A306727(4*A000217(A002264(n)))`
-/

namespace A062051.P9554851509234151640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (4 * A000217 (A002264 n).toNat).toNat

end

end A062051.P9554851509234151640

namespace A062051

/-- `A306727(4*A000217(A002264(n)))` -/
def P9554851509234151640.Spec : Prop :=
  ∀ n, P9554851509234151640.a n = A062051 n

end A062051

/-! ## A062051.P3094975228129408266

`A306727(A171452(n))`
-/

namespace A062051.P3094975228129408266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (A171452 n).toNat

end

end A062051.P3094975228129408266

namespace A062051

/-- `A306727(A171452(n))` -/
def P3094975228129408266.Spec : Prop :=
  ∀ n, P3094975228129408266.a n = A062051 n

end A062051

/-! ## A062051.P10001724831318253626

`A306727(A000217(n)-(n-A002264(n)))`
-/

namespace A062051.P10001724831318253626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (A000217 n - ((n : ℤ) - A002264 n)).toNat

end

end A062051.P10001724831318253626

namespace A062051

/-- `A306727(A000217(n)-(n-A002264(n)))` -/
def P10001724831318253626.Spec : Prop :=
  ∀ n, P10001724831318253626.a n = A062051 n

end A062051

/-! ## A062051.P14141892166190613061

`A306727(A002264(n)+A000217(n))`
-/

namespace A062051.P14141892166190613061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (A002264 n + A000217 n).toNat

end

end A062051.P14141892166190613061

namespace A062051

/-- `A306727(A002264(n)+A000217(n))` -/
def P14141892166190613061.Spec : Prop :=
  ∀ n, P14141892166190613061.a n = A062051 n

end A062051

/-! ## A062051.P8641023404037323764

`A306727(A024401(n+1))`
-/

namespace A062051.P8641023404037323764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (A024401 (n + 1)).toNat

end

end A062051.P8641023404037323764

namespace A062051

/-- `A306727(A024401(n+1))` -/
def P8641023404037323764.Spec : Prop :=
  ∀ n, P8641023404037323764.a n = A062051 n

end A062051

/-!
# A062052: Numbers with exactly 2 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062052, the canonical program `A062052.P7099610489018356514` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062052 has offset 1).

The definition of A062052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062052.P14234970063241061233

`A181666(A080037(n+1))`
-/

namespace A062052.P14234970063241061233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A080037 (n + 1)).toNat

end

end A062052.P14234970063241061233

namespace A062052

/-- `A181666(A080037(n+1))` -/
def P14234970063241061233.Spec : Prop :=
  ∀ n, P14234970063241061233.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P7099610489018356514

`record[A115216(A014132(n+2))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062052

/-- `record[A115216(A014132(n+2))]` -/
def P7099610489018356514.Spec : Prop :=
  ∀ n, P7099610489018356514.a n = A062052 (n + 1)

theorem P7099610489018356514.correct : P7099610489018356514.Spec := by
  intro n
  simp only [A062052, Nat.add_sub_cancel]

end A062052

/-! ## A062052.P11975902758452655303

`A115216(eq[0, A303810(n+1)])`
-/

namespace A062052.P11975902758452655303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062052.P11975902758452655303

namespace A062052

/-- `A115216(eq[0, A303810(n+1)])` -/
def P11975902758452655303.Spec : Prop :=
  ∀ n, P11975902758452655303.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P14031722092786626384

`A181666(A027434(n+1)+n+2)`
-/

namespace A062052.P14031722092786626384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A027434 (n + 1) + (n + 2 : ℤ)).toNat

end

end A062052.P14031722092786626384

namespace A062052

/-- `A181666(A027434(n+1)+n+2)` -/
def P14031722092786626384.Spec : Prop :=
  ∀ n, P14031722092786626384.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P10168403599370823226

`record[A115216(A003057(n+2)²-n)]`
-/

namespace A062052.P10168403599370823226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P10168403599370823226

namespace A062052

/-- `record[A115216(A003057(n+2)²-n)]` -/
def P10168403599370823226.Spec : Prop :=
  ∀ n, P10168403599370823226.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P15962462948669850970

`A115216(eq[A077605(n+1), A167407(n)])`
-/

namespace A062052.P15962462948669850970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062052.P15962462948669850970

namespace A062052

/-- `A115216(eq[A077605(n+1), A167407(n)])` -/
def P15962462948669850970.Spec : Prop :=
  ∀ n, P15962462948669850970.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P17732398503109078584

`record[A115216(n)+A000079(A003057(n+2))]`
-/

namespace A062052.P17732398503109078584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 n + A000079 (A003057 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P17732398503109078584

namespace A062052

/-- `record[A115216(n)+A000079(A003057(n+2))]` -/
def P17732398503109078584.Spec : Prop :=
  ∀ n, P17732398503109078584.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P7153473375621552052

`record[A127824(n+5)%A127824(n+6)]`
-/

namespace A062052.P7153473375621552052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127824 (n + 5)) (A127824 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P7153473375621552052

namespace A062052

/-- `record[A127824(n+5)%A127824(n+6)]` -/
def P7153473375621552052.Spec : Prop :=
  ∀ n, P7153473375621552052.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P15335691846488088242

`A354236(∑[n+2])`
-/

namespace A062052.P15335691846488088242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062052.P15335691846488088242

namespace A062052

/-- `A354236(∑[n+2])` -/
def P15335691846488088242.Spec : Prop :=
  ∀ n, P15335691846488088242.a n = A062052 (n + 1)

end A062052

/-! ## A062052.P5903621084661709019

`∩[A181666(n+1), A115823(n)]`
-/

namespace A062052.P5903621084661709019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062052.P5903621084661709019

namespace A062052

/-- `∩[A181666(n+1), A115823(n)]` -/
def P5903621084661709019.Spec : Prop :=
  ∀ n, (P5903621084661709019.a n : ℤ) = A062052 (n + 1)

end A062052

/-! ## A062052.P738237227185510272

`record[or(4*A222599(n), A222599(n))]`
-/

namespace A062052.P738237227185510272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A222599 n) (A222599 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P738237227185510272

namespace A062052

/-- `record[or(4*A222599(n), A222599(n))]` -/
def P738237227185510272.Spec : Prop :=
  ∀ n, P738237227185510272.a n = A062052 (n + 1)

end A062052

/-!
# A062053: Numbers with exactly 3 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062053, there is no canonical definition to state claims against.
-/

/-! ## A062053.P1951556424251627939

`A354236(∑[n+3]+1)`
-/

namespace A062053.P1951556424251627939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A062053.P1951556424251627939

/-! ## A062053.P4146144233593196856

`eq[2, A006667(n+1)]+1`
-/

namespace A062053.P4146144233593196856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062053.P4146144233593196856

/-! ## A062053.P1714004101718721633

`eq[3, A078719(n+1)]+1`
-/

namespace A062053.P1714004101718721633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062053.P1714004101718721633

/-! ## A062053.P7679204575632248319

`eq[2, A006667(A028310(n))]`
-/

namespace A062053.P7679204575632248319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062053.P7679204575632248319

/-! ## A062053.P7727459888841149871

`A020725(eq[2, A006667(n+1)])`
-/

namespace A062053.P7727459888841149871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062053.P7727459888841149871

/-! ## A062053.P11320633433842076856

`A065475(eq[2, A006667(n+1)])`
-/

namespace A062053.P11320633433842076856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062053.P11320633433842076856

/-! ## A062053.P10449666905977415802

`A222599(eq[2, A006667(A222599(n))])`
-/

namespace A062053.P10449666905977415802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062053.P10449666905977415802

/-! ## A062053.P15224812292998936893

`eq[2, A006667(A004277(n))]`
-/

namespace A062053.P15224812292998936893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062053.P15224812292998936893

/-! ## A062053.P10509521671272794703

`eq[2, A006667(A257088(n))]`
-/

namespace A062053.P10509521671272794703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062053.P10509521671272794703

/-! ## A062053.P13250146462458045540

`A000463(eq[5, A220182(n+1)])`
-/

namespace A062053.P13250146462458045540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062053.P13250146462458045540

/-!
# A062054: Numbers with 4 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062054, there is no canonical definition to state claims against.
-/

/-! ## A062054.P7927834084611207778

`A354236(A155212(n)+5)`
-/

namespace A062054.P7927834084611207778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A155212 n + 5).toNat

end

end A062054.P7927834084611207778

/-! ## A062054.P2804290853308503515

`eq[3, A006667(n+1)]+1`
-/

namespace A062054.P2804290853308503515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062054.P2804290853308503515

/-! ## A062054.P18214446580948062831

`eq[4, A078719(n+1)]+1`
-/

namespace A062054.P18214446580948062831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062054.P18214446580948062831

/-! ## A062054.P8968225341544599155

`eq[3, A006667(A028310(n))]`
-/

namespace A062054.P8968225341544599155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062054.P8968225341544599155

/-! ## A062054.P227463436943778800

`A020725(eq[3, A006667(n+1)])`
-/

namespace A062054.P227463436943778800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062054.P227463436943778800

/-! ## A062054.P15969436174974191952

`eq[A064433(n+1), A139399(A028310(n))]`
-/

namespace A062054.P15969436174974191952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062054.P15969436174974191952

/-! ## A062054.P3697516527436087441

`eq[3, A006667(A004277(n))]`
-/

namespace A062054.P3697516527436087441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062054.P3697516527436087441

/-! ## A062054.P1752773263076002084

`eq[3, A006667(A060000(n+1))]`
-/

namespace A062054.P1752773263076002084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062054.P1752773263076002084

/-! ## A062054.P6881622524966691174

`eq[1, A006667(A257088(n))-2]`
-/

namespace A062054.P6881622524966691174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062054.P6881622524966691174

/-! ## A062054.P5843722432606407762

`A222599(eq[3, A006667(A222599(n))])`
-/

namespace A062054.P5843722432606407762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062054.P5843722432606407762

/-!
# A062055: Numbers with 5 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062055, there is no canonical definition to state claims against.
-/

/-! ## A062055.P16212925444674262773

`eq[4, A006667(n+1)]+1`
-/

namespace A062055.P16212925444674262773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062055.P16212925444674262773

/-! ## A062055.P3042283128038083085

`eq[4, A006667(A028310(n))]`
-/

namespace A062055.P3042283128038083085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062055.P3042283128038083085

/-! ## A062055.P12069655800442152656

`A020725(eq[4, A006667(n+1)])`
-/

namespace A062055.P12069655800442152656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062055.P12069655800442152656

/-! ## A062055.P7906965984241945654

`A020725(eq[5, A078719(n+1)])`
-/

namespace A062055.P7906965984241945654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062055.P7906965984241945654

/-! ## A062055.P18316631818462395833

`eq[A064433(n+1)+1, A139399(A028310(n))]`
-/

namespace A062055.P18316631818462395833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062055.P18316631818462395833

/-! ## A062055.P885383184757552068

`eq[4, A006667(A004277(n))]`
-/

namespace A062055.P885383184757552068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062055.P885383184757552068

/-! ## A062055.P11393819881619969116

`eq[2, A006667(A257088(n))-2]`
-/

namespace A062055.P11393819881619969116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062055.P11393819881619969116

/-! ## A062055.P10978040258029380873

`A008619(eq[9, A220182(n+1)])`
-/

namespace A062055.P10978040258029380873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062055.P10978040258029380873

/-! ## A062055.P8229318653675539175

`A222599(eq[4, A006667(A222599(n))])`
-/

namespace A062055.P8229318653675539175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A222599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062055.P8229318653675539175

/-! ## A062055.P3550249379337119861

`eq[4, A006667(A008574(n))]`
-/

namespace A062055.P3550249379337119861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062055.P3550249379337119861

/-!
# A062056: Numbers with 6 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062056, there is no canonical definition to state claims against.
-/

/-! ## A062056.P8052167171820739882

`eq[5, A006667(n+1)]+1`
-/

namespace A062056.P8052167171820739882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062056.P8052167171820739882

/-! ## A062056.P5985332961110176888

`eq[6, A078719(n+1)]+1`
-/

namespace A062056.P5985332961110176888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062056.P5985332961110176888

/-! ## A062056.P12557858069607661043

`eq[5, A006667(A028310(n))]`
-/

namespace A062056.P12557858069607661043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062056.P12557858069607661043

/-! ## A062056.P12073008777018581496

`A020725(eq[5, A006667(n+1)])`
-/

namespace A062056.P12073008777018581496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062056.P12073008777018581496

/-! ## A062056.P3352076165026458380

`A020725(eq[6, A078719(n+1)])`
-/

namespace A062056.P3352076165026458380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062056.P3352076165026458380

/-! ## A062056.P243704221710321286

`eq[A064433(n+1)+2, A139399(A028310(n))]`
-/

namespace A062056.P243704221710321286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062056.P243704221710321286

/-! ## A062056.P7928561810893265712

`eq[5, A006667(A004277(n))]`
-/

namespace A062056.P7928561810893265712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062056.P7928561810893265712

/-! ## A062056.P12000447147833339334

`eq[5, A006667(A257088(n))]`
-/

namespace A062056.P12000447147833339334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062056.P12000447147833339334

/-! ## A062056.P13224010346093937697

`A008619(eq[11, A220182(n+1)])`
-/

namespace A062056.P13224010346093937697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062056.P13224010346093937697

/-! ## A062056.P5117009393405251637

`eq[6, A286380(A008574(n))]`
-/

namespace A062056.P5117009393405251637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062056.P5117009393405251637

/-!
# A062057: Numbers with 7 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062057, there is no canonical definition to state claims against.
-/

/-! ## A062057.P16741571301649329126

`eq[6, A006667(n+1)]+1`
-/

namespace A062057.P16741571301649329126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062057.P16741571301649329126

/-! ## A062057.P360172896709737115

`eq[7, A078719(n+1)]+1`
-/

namespace A062057.P360172896709737115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062057.P360172896709737115

/-! ## A062057.P11069958414572648362

`eq[6, A006667(A028310(n))]`
-/

namespace A062057.P11069958414572648362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062057.P11069958414572648362

/-! ## A062057.P5592161348054228454

`A020725(eq[6, A006667(n+1)])`
-/

namespace A062057.P5592161348054228454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062057.P5592161348054228454

/-! ## A062057.P7886111650629382052

`A153152(eq[7, A078719(n+1)])`
-/

namespace A062057.P7886111650629382052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062057.P7886111650629382052

/-! ## A062057.P13397979398356879504

`A354236(A046691(n+5)-2)`
-/

namespace A062057.P13397979398356879504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A046691 (n + 5) - 2).toNat

end

end A062057.P13397979398356879504

/-! ## A062057.P14632330690391782829

`eq[6, A006667(A004277(n))]`
-/

namespace A062057.P14632330690391782829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062057.P14632330690391782829

/-! ## A062057.P4520893799425152427

`A008619(eq[13, A220182(n+1)])`
-/

namespace A062057.P4520893799425152427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062057.P4520893799425152427

/-! ## A062057.P12524308161209300540

`eq[6, A006667(A008574(n))]`
-/

namespace A062057.P12524308161209300540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062057.P12524308161209300540

/-!
# A062058: Numbers with 8 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062058, there is no canonical definition to state claims against.
-/

/-! ## A062058.P2831435828182351749

`eq[7, A006667(n+1)]+1`
-/

namespace A062058.P2831435828182351749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062058.P2831435828182351749

/-! ## A062058.P18213325783091512162

`eq[8, A078719(n+1)]+1`
-/

namespace A062058.P18213325783091512162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062058.P18213325783091512162

/-! ## A062058.P5512605239931439503

`eq[7, A006667(A028310(n))]`
-/

namespace A062058.P5512605239931439503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062058.P5512605239931439503

/-! ## A062058.P12968742652974996381

`A020725(eq[7, A006667(n+1)])`
-/

namespace A062058.P12968742652974996381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062058.P12968742652974996381

/-! ## A062058.P16072120729188925734

`A153152(eq[7, A006667(n+1)])`
-/

namespace A062058.P16072120729188925734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062058.P16072120729188925734

/-! ## A062058.P9646871420542904666

`A020725(eq[8, A078719(n+1)])`
-/

namespace A062058.P9646871420542904666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062058.P9646871420542904666

/-! ## A062058.P13350426684882339110

`eq[7, A006667(A004277(n))]`
-/

namespace A062058.P13350426684882339110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062058.P13350426684882339110

/-! ## A062058.P1368227596144437828

`eq[7, A006667(A257088(n))]`
-/

namespace A062058.P1368227596144437828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062058.P1368227596144437828

/-! ## A062058.P3241778483312780141

`A008619(eq[15, A220182(n+1)])`
-/

namespace A062058.P3241778483312780141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062058.P3241778483312780141

/-! ## A062058.P14832412062619832835

`eq[7, A006667(A008574(n))]`
-/

namespace A062058.P14832412062619832835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062058.P14832412062619832835

/-!
# A062059: Numbers with 9 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062059, there is no canonical definition to state claims against.
-/

/-! ## A062059.P4821235569517773514

`eq[8, A006667(n+1)]+1`
-/

namespace A062059.P4821235569517773514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062059.P4821235569517773514

/-! ## A062059.P12781698134467099086

`eq[9, A078719(n+1)]+1`
-/

namespace A062059.P12781698134467099086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062059.P12781698134467099086

/-! ## A062059.P14466970613685213924

`eq[8, A006667(A028310(n))]`
-/

namespace A062059.P14466970613685213924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062059.P14466970613685213924

/-! ## A062059.P6220686569507883059

`A020725(eq[8, A006667(n+1)])`
-/

namespace A062059.P6220686569507883059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062059.P6220686569507883059

/-! ## A062059.P17758857536210997456

`eq[8, A006667(A060000(n+1))]`
-/

namespace A062059.P17758857536210997456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062059.P17758857536210997456

/-! ## A062059.P199050608516946213

`eq[8, A006667(A004277(n))]`
-/

namespace A062059.P199050608516946213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062059.P199050608516946213

/-! ## A062059.P17927212551151802981

`eq[8, A006667(A008574(n))]`
-/

namespace A062059.P17927212551151802981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062059.P17927212551151802981

/-! ## A062059.P6543655239862297642

`eq[8, A006667(A022144(n))]`
-/

namespace A062059.P6543655239862297642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062059.P6543655239862297642

/-!
# A062060: Numbers with 10 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A062060, there is no canonical definition to state claims against.
-/

/-! ## A062060.P17858042048779859317

`eq[9, A006667(n+1)]+1`
-/

namespace A062060.P17858042048779859317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062060.P17858042048779859317

/-! ## A062060.P12754615028362289198

`eq[10, A078719(n+1)]+1`
-/

namespace A062060.P12754615028362289198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062060.P12754615028362289198

/-! ## A062060.P6687337214038905396

`eq[9, A006667(A028310(n))]`
-/

namespace A062060.P6687337214038905396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062060.P6687337214038905396

/-! ## A062060.P15204405053889136633

`A020725(eq[9, A006667(n+1)])`
-/

namespace A062060.P15204405053889136633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062060.P15204405053889136633

/-! ## A062060.P3810327569663745023

`A153152(eq[9, A006667(n+1)])`
-/

namespace A062060.P3810327569663745023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062060.P3810327569663745023

/-! ## A062060.P17564851259407941743

`eq[9, A006667(A004277(n))]`
-/

namespace A062060.P17564851259407941743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062060.P17564851259407941743

/-! ## A062060.P11852526141299290261

`eq[10, A286380(A008574(n))]`
-/

namespace A062060.P11852526141299290261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062060.P11852526141299290261

/-!
# A062062: Smallest increasing sequence where each term is coprime to preceding three terms.

The programs for A062062, there is no canonical definition to state claims against.
-/

/-! ## A062062.P6114426679083713323

`∑[A327936(A008486(∑[2*n²]))]`
-/

namespace A062062.P6114426679083713323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A008486 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062062.P6114426679083713323

/-! ## A062062.P18242034370726034618

`A262681(A002231(n+1))+A047237(n+1)`
-/

namespace A062062.P18242034370726034618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A002231 (n + 1)).toNat + A047237 (n + 1)

end

end A062062.P18242034370726034618

/-! ## A062062.P13265401394256957266

`eq[char[A016315(n+1)], A016331(n+2)]`
-/

namespace A062062.P13265401394256957266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016315 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A062062.P13265401394256957266

/-! ## A062062.P3852899792176942489

`∑[A129252(A260795(n+3))]`
-/

namespace A062062.P3852899792176942489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129252 (A260795 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062062.P3852899792176942489

/-! ## A062062.P14111369626278816202

`∑[gcd(A133263(n), A344751(n+1))]`
-/

namespace A062062.P14111369626278816202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133263 n) (A344751 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062062.P14111369626278816202

/-!
# A062063: a(n) is the smallest number greater than a(n-1) that is coprime to the last four terms of the sequence, with a(1) = 1, a(2) = 2, a(3) = 3, and a(4) = 5.

The programs for A062063, there is no canonical definition to state claims against.
-/

/-! ## A062063.P13540344014457241748

`A285304(n+2)-A285301(A285287(2*n))`
-/

namespace A062063.P13540344014457241748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 2) - A285301 (A285287 (2 * n)).toNat

end

end A062063.P13540344014457241748

/-!
# A062064: a(1) = 2; a(n) is the smallest prime > a(n-1) such that a(n) + a(n-1) is a square.

The programs for A062064, there is no canonical definition to state claims against.
-/

/-! ## A062064.P7336775509384668121

`A134537(n)-a(n-1)` with `a(0)=2`
-/

namespace A062064.P7336775509384668121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134537 n - a (n - 1)

end

end A062064.P7336775509384668121

/-! ## A062064.P1548671227110420857

`A131696(n)²-a(n-1)` with `a(0)=2`
-/

namespace A062064.P1548671227110420857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131696 n ^ 2 - a (n - 1)

end

end A062064.P1548671227110420857

/-! ## A062064.P16491465368282668470

`A259232(A316524(a(n-1)))` with `a(0)=2`
-/

namespace A062064.P16491465368282668470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259232 (A316524 (a (n - 1)).toNat).toNat

end

end A062064.P16491465368282668470

/-! ## A062064.P4734685285675681422

`A259232(A056239(a(n-1)))` with `a(0)=2`
-/

namespace A062064.P4734685285675681422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259232 (A056239 (a (n - 1)).toNat).toNat

end

end A062064.P4734685285675681422

/-! ## A062064.P18059159683311117544

`A259232(A230980(a(n-1)))` with `a(0)=2`
-/

namespace A062064.P18059159683311117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259232 (A230980 (a (n - 1)).toNat).toNat

end

end A062064.P18059159683311117544

/-!
# A062067: a(1) = 1; a(n) is smallest square > a(n-1) such that a(n) + a(n-1) is a prime.

The programs for A062067, there is no canonical definition to state claims against.
-/

/-! ## A062067.P17697468201986709159

`A080478(n+1)²`
-/

namespace A062067.P17697468201986709159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080478 (n + 1) ^ 2

end

end A062067.P17697468201986709159

/-! ## A062067.P7137123977427450631

`A080478(A028310(n+1))^2`
-/

namespace A062067.P7137123977427450631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080478 (A028310 (n + 1)).toNat ^ 2

end

end A062067.P7137123977427450631

/-! ## A062067.P1807506302787189484

`A080478(n+1)^A004956(floor(root(n+1, n+1)))`
-/

namespace A062067.P1807506302787189484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A004956 ⌊(n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋.toNat : ℤ)

end

end A062067.P1807506302787189484

/-! ## A062067.P3320153741673325765

`A080478(n+1)^A080478(floor(root(n+1, n+1))+1)`
-/

namespace A062067.P3320153741673325765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A080478 (⌊(n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ + 1).toNat : ℤ)

end

end A062067.P3320153741673325765

/-! ## A062067.P18099170182803423881

`A080478(A028310(n+1))*A080478(n+1)`
-/

namespace A062067.P18099170182803423881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080478 (A028310 (n + 1)).toNat * A080478 (n + 1)

end

end A062067.P18099170182803423881

/-! ## A062067.P8229721696746502685

`A080478(n+1)^A000005(A020639(n+1))`
-/

namespace A062067.P8229721696746502685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A000005 (A020639 (n + 1)).toNat : ℤ)

end

end A062067.P8229721696746502685

/-! ## A062067.P591801728361309473

`A080478(n+1)^A000005(A060308(n+1))`
-/

namespace A062067.P591801728361309473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A000005 (A060308 (n + 1)).toNat : ℤ)

end

end A062067.P591801728361309473

/-! ## A062067.P693189507529846571

`A080478(n+1)^A020639(A080456(n+1))`
-/

namespace A062067.P693189507529846571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A020639 (A080456 (n + 1)).toNat : ℤ)

end

end A062067.P693189507529846571

/-! ## A062067.P17862133920352915076

`A080478(n+1)^A020639(A080458(n+1))`
-/

namespace A062067.P17862133920352915076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A020639 (A080458 (n + 1)).toNat : ℤ)

end

end A062067.P17862133920352915076

/-! ## A062067.P7512659614475444758

`A139361(n)-a(n-1)` with `a(0)=1`
-/

namespace A062067.P7512659614475444758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139361 n - a (n - 1)

end

end A062067.P7512659614475444758

/-! ## A062067.P13584383861047638526

`A033638(2*A080478(n+1))-1`
-/

namespace A062067.P13584383861047638526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A080478 (n + 1)).toNat - 1

end

end A062067.P13584383861047638526

/-! ## A062067.P9765642527089466464

`A033638(A080478(n+1)+A080478(n+1))-1`
-/

namespace A062067.P9765642527089466464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A080478 (n + 1) + A080478 (n + 1)).toNat - 1

end

end A062067.P9765642527089466464

/-! ## A062067.P6420571671690048887

`A080478(n+1)^A000005(A080437(n+1))`
-/

namespace A062067.P6420571671690048887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080478 (n + 1) : ℚ) ^ (A000005 (A080437 (n + 1)).toNat : ℤ)

end

end A062067.P6420571671690048887

/-!
# A062068: a(n) = d(sigma(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisor function (A000203).

The programs for A062068, the canonical program `A062068.P2815547987536140537` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062068 has offset 1).

The definition of A062068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062068.P2815547987536140537

`A000005(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062068

/-- `A000005(A000203(n+1))` -/
def P2815547987536140537.Spec : Prop :=
  ∀ n, P2815547987536140537.a n = A062068 (n + 1)

theorem P2815547987536140537.correct : P2815547987536140537.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel]

end A062068

/-! ## A062068.P15723094937989283975

`A062069(n+1)+A076360(n+1)`
-/

namespace A062068.P15723094937989283975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) + A076360 (n + 1)

end

end A062068.P15723094937989283975

namespace A062068

/-- `A062069(n+1)+A076360(n+1)` -/
def P15723094937989283975.Spec : Prop :=
  ∀ n, P15723094937989283975.a n = A062068 (n + 1)

theorem P15723094937989283975.correct : P15723094937989283975.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P15723094937989283975.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062069, A062069.P14373188164258229122.a, A076360, A076360.P16775053655456500281.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-! ## A062068.P15631013019546520603

`∏{e}[∑{d}[n+1, #], #+1]`
-/

namespace A062068.P15631013019546520603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A062068.P15631013019546520603

namespace A062068

/-- `∏{e}[∑{d}[n+1, #], #+1]` -/
def P15631013019546520603.Spec : Prop :=
  ∀ n, (P15631013019546520603.a n : ℤ) = A062068 (n + 1)

end A062068

/-! ## A062068.P174741386331788911

`∑{d}[∑{d}[n+1, #], ceil(1/#)]`
-/

namespace A062068.P174741386331788911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A062068.P174741386331788911

namespace A062068

/-- `∑{d}[∑{d}[n+1, #], ceil(1/#)]` -/
def P174741386331788911.Spec : Prop :=
  ∀ n, P174741386331788911.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P14768730107769378446

`A000005(∑{d}[n+1, #])`
-/

namespace A062068.P14768730107769378446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A062068.P14768730107769378446

namespace A062068

/-- `A000005(∑{d}[n+1, #])` -/
def P14768730107769378446.Spec : Prop :=
  ∀ n, P14768730107769378446.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P10621663891417378591

`A000005(Δ[A160664(n)])`
-/

namespace A062068.P10621663891417378591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A062068.P10621663891417378591

namespace A062068

/-- `A000005(Δ[A160664(n)])` -/
def P10621663891417378591.Spec : Prop :=
  ∀ n, P10621663891417378591.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P9321671356759534687

`A000005(A276528(n+1))`
-/

namespace A062068.P9321671356759534687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276528 (n + 1)).toNat

end

end A062068.P9321671356759534687

namespace A062068

/-- `A000005(A276528(n+1))` -/
def P9321671356759534687.Spec : Prop :=
  ∀ n, P9321671356759534687.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P16959617344709973979

`A000005(abs(A143348(n+1)))`
-/

namespace A062068.P16959617344709973979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A143348 (n + 1)|.toNat

end

end A062068.P16959617344709973979

namespace A062068

/-- `A000005(abs(A143348(n+1)))` -/
def P16959617344709973979.Spec : Prop :=
  ∀ n, P16959617344709973979.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P7949816020105704745

`A000005(sqrt(A072861(n+1)))`
-/

namespace A062068.P7949816020105704745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A062068.P7949816020105704745

namespace A062068

/-- `A000005(sqrt(A072861(n+1)))` -/
def P7949816020105704745.Spec : Prop :=
  ∀ n, P7949816020105704745.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P28438369436313658

`A000005(∑[A340793(n+1)])`
-/

namespace A062068.P28438369436313658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062068.P28438369436313658

namespace A062068

/-- `A000005(∑[A340793(n+1)])` -/
def P28438369436313658.Spec : Prop :=
  ∀ n, P28438369436313658.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P625427648752295694

`A000005(A039653(n+1)+1)`
-/

namespace A062068.P625427648752295694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039653 (n + 1) + 1).toNat

end

end A062068.P625427648752295694

namespace A062068

/-- `A000005(A039653(n+1)+1)` -/
def P625427648752295694.Spec : Prop :=
  ∀ n, P625427648752295694.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P14210365946174434365

`A000005(A088580(n+1)-1)`
-/

namespace A062068.P14210365946174434365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088580 (n + 1) - 1).toNat

end

end A062068.P14210365946174434365

namespace A062068

/-- `A000005(A088580(n+1)-1)` -/
def P14210365946174434365.Spec : Prop :=
  ∀ n, P14210365946174434365.a n = A062068 (n + 1)

theorem P14210365946174434365.correct : P14210365946174434365.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P14210365946174434365.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-! ## A062068.P2920607311288235386

`A000005(A245092(2*n+1))`
-/

namespace A062068.P2920607311288235386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245092 (2 * n + 1)).toNat

end

end A062068.P2920607311288235386

namespace A062068

/-- `A000005(A245092(2*n+1))` -/
def P2920607311288235386.Spec : Prop :=
  ∀ n, P2920607311288235386.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P3211161602591886438

`A000005(A074400(n+1)/2)`
-/

namespace A062068.P3211161602591886438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A062068.P3211161602591886438

namespace A062068

/-- `A000005(A074400(n+1)/2)` -/
def P3211161602591886438.Spec : Prop :=
  ∀ n, P3211161602591886438.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P6592065922262777314

`A000005(A001065(n+1)+n+1)`
-/

namespace A062068.P6592065922262777314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A062068.P6592065922262777314

namespace A062068

/-- `A000005(A001065(n+1)+n+1)` -/
def P6592065922262777314.Spec : Prop :=
  ∀ n, P6592065922262777314.a n = A062068 (n + 1)

theorem P6592065922262777314.correct : P6592065922262777314.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P6592065922262777314.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-! ## A062068.P10663854392553427554

`A295305(n+1)+A000005(n+1)`
-/

namespace A062068.P10663854392553427554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295305 (n + 1) + A000005 (n + 1)

end

end A062068.P10663854392553427554

namespace A062068

/-- `A295305(n+1)+A000005(n+1)` -/
def P10663854392553427554.Spec : Prop :=
  ∀ n, P10663854392553427554.a n = A062068 (n + 1)

theorem P10663854392553427554.correct : P10663854392553427554.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P10663854392553427554.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A295305, A295305.P10315158761538190629.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-! ## A062068.P9181973458761313389

`A193335(n+1)+A193334(n+1)`
-/

namespace A062068.P9181973458761313389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193335 (n + 1) + A193334 (n + 1)

end

end A062068.P9181973458761313389

namespace A062068

/-- `A193335(n+1)+A193334(n+1)` -/
def P9181973458761313389.Spec : Prop :=
  ∀ n, P9181973458761313389.a n = A062068 (n + 1)

theorem P9181973458761313389.correct : P9181973458761313389.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P9181973458761313389.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A193334, A193334.P16944727795109553516.a, A193335, A193335.P5237104312081853158.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A183063, A183063.P14549643650991336837.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-! ## A062068.P4956364913754843490

`A193335(n+1)*A286357(n+1)`
-/

namespace A062068.P4956364913754843490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193335 (n + 1) * A286357 (n + 1)

end

end A062068.P4956364913754843490

namespace A062068

/-- `A193335(n+1)*A286357(n+1)` -/
def P4956364913754843490.Spec : Prop :=
  ∀ n, P4956364913754843490.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P4036588713812766786

`A000005(A064987(n+1)/(n+1))`
-/

namespace A062068.P4036588713812766786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A062068.P4036588713812766786

namespace A062068

/-- `A000005(A064987(n+1)/(n+1))` -/
def P4036588713812766786.Spec : Prop :=
  ∀ n, P4036588713812766786.a n = A062068 (n + 1)

end A062068

/-! ## A062068.P9722141837296583993

`A000005(2*n+1-A235796(n+1))`
-/

namespace A062068.P9722141837296583993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n + 1 : ℤ) - A235796 (n + 1)).toNat

end

end A062068.P9722141837296583993

namespace A062068

/-- `A000005(2*n+1-A235796(n+1))` -/
def P9722141837296583993.Spec : Prop :=
  ∀ n, P9722141837296583993.a n = A062068 (n + 1)

theorem P9722141837296583993.correct : P9722141837296583993.Spec := by
  intro n
  simp only [A062068, Nat.add_sub_cancel, A062068.P9722141837296583993.a, A062068.P2815547987536140537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A235796, A235796.P10282550748648679139.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062068

/-!
# A062069: a(n) = sigma(d(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisors function (A000203).

The programs for A062069, the canonical program `A062069.P14373188164258229122` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062069 has offset 1).

The definition of A062069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062069.P14373188164258229122

`A000203(A000005(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062069

/-- `A000203(A000005(n+1))` -/
def P14373188164258229122.Spec : Prop :=
  ∀ n, P14373188164258229122.a n = A062069 (n + 1)

theorem P14373188164258229122.correct : P14373188164258229122.Spec := by
  intro n
  simp only [A062069, Nat.add_sub_cancel]

end A062069

/-! ## A062069.P14643305682470401287

`∑{d}[∏{e}[n+1, #+1], #]`
-/

namespace A062069.P14643305682470401287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A062069.P14643305682470401287

namespace A062069

/-- `∑{d}[∏{e}[n+1, #+1], #]` -/
def P14643305682470401287.Spec : Prop :=
  ∀ n, (P14643305682470401287.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P8729470528094897020

`∑{d}[∑{d}[n+1, gcd(n, #)], #]`
-/

namespace A062069.P8729470528094897020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A062069.P8729470528094897020

namespace A062069

/-- `∑{d}[∑{d}[n+1, gcd(n, #)], #]` -/
def P8729470528094897020.Spec : Prop :=
  ∀ n, (P8729470528094897020.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P12108314952369354871

`∑{d}[∑{d}[n+1, ceil(1/#)], #]`
-/

namespace A062069.P12108314952369354871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P12108314952369354871

namespace A062069

/-- `∑{d}[∑{d}[n+1, ceil(1/#)], #]` -/
def P12108314952369354871.Spec : Prop :=
  ∀ n, (P12108314952369354871.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P3775266837083337763

`∑{d}[∑{d}[n+1, C(2, #)!]-1, #]`
-/

namespace A062069.P3775266837083337763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P3775266837083337763

namespace A062069

/-- `∑{d}[∑{d}[n+1, C(2, #)!]-1, #]` -/
def P3775266837083337763.Spec : Prop :=
  ∀ n, (P3775266837083337763.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P908908049422056586

`∑{d}[floor(∑{d}[n+1, root(#, n+1)]), #]`
-/

namespace A062069.P908908049422056586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ (1 / (n + 1 : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P908908049422056586

namespace A062069

/-- `∑{d}[floor(∑{d}[n+1, root(#, n+1)]), #]` -/
def P908908049422056586.Spec : Prop :=
  ∀ n, (P908908049422056586.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P14320225970263586418

`∑{d}[Δ[A006218(n)], #]`
-/

namespace A062069.P14320225970263586418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P14320225970263586418

namespace A062069

/-- `∑{d}[Δ[A006218(n)], #]` -/
def P14320225970263586418.Spec : Prop :=
  ∀ n, (P14320225970263586418.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P17933631347598926289

`∑{d}[A329484(n+1), #]`
-/

namespace A062069.P17933631347598926289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P17933631347598926289

namespace A062069

/-- `∑{d}[A329484(n+1), #]` -/
def P17933631347598926289.Spec : Prop :=
  ∀ n, (P17933631347598926289.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P7351640764090253802

`∑{d}[sqrt(A035116(n+1)), #]`
-/

namespace A062069.P7351640764090253802
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A062069.P7351640764090253802

namespace A062069

/-- `∑{d}[sqrt(A035116(n+1)), #]` -/
def P7351640764090253802.Spec : Prop :=
  ∀ n, (P7351640764090253802.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P6470089225965755178

`∑{d}[1-A334954(n+1), #]`
-/

namespace A062069.P6470089225965755178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P6470089225965755178

namespace A062069

/-- `∑{d}[1-A334954(n+1), #]` -/
def P6470089225965755178.Spec : Prop :=
  ∀ n, (P6470089225965755178.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P5144309686934689234

`∑{d}[2-A378216(n+1), #]`
-/

namespace A062069.P5144309686934689234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P5144309686934689234

namespace A062069

/-- `∑{d}[2-A378216(n+1), #]` -/
def P5144309686934689234.Spec : Prop :=
  ∀ n, (P5144309686934689234.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P3425520590240027907

`∑{d}[A320111(2*(n+1)), #]`
-/

namespace A062069.P3425520590240027907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062069.P3425520590240027907

namespace A062069

/-- `∑{d}[A320111(2*(n+1)), #]` -/
def P3425520590240027907.Spec : Prop :=
  ∀ n, (P3425520590240027907.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P4633673155751297168

`∑{d}[A062011(n+1)/2, #]`
-/

namespace A062069.P4633673155751297168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A062069.P4633673155751297168

namespace A062069

/-- `∑{d}[A062011(n+1)/2, #]` -/
def P4633673155751297168.Spec : Prop :=
  ∀ n, (P4633673155751297168.a n : ℤ) = A062069 (n + 1)

end A062069

/-! ## A062069.P9159239343824890669

`A000203(∏{e}[n+1, #+1])`
-/

namespace A062069.P9159239343824890669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A062069.P9159239343824890669

namespace A062069

/-- `A000203(∏{e}[n+1, #+1])` -/
def P9159239343824890669.Spec : Prop :=
  ∀ n, P9159239343824890669.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P13107738703346248058

`A000203(∑{d}[n+1, gcd(n, #)])`
-/

namespace A062069.P13107738703346248058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A062069.P13107738703346248058

namespace A062069

/-- `A000203(∑{d}[n+1, gcd(n, #)])` -/
def P13107738703346248058.Spec : Prop :=
  ∀ n, P13107738703346248058.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P9749289420375284185

`A000203(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A062069.P9749289420375284185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A062069.P9749289420375284185

namespace A062069

/-- `A000203(∑{d}[n+1, ceil(acot(#))])` -/
def P9749289420375284185.Spec : Prop :=
  ∀ n, P9749289420375284185.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P14443514305748450913

`A000203(∑{d}[n+1, (#%2)!])`
-/

namespace A062069.P14443514305748450913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A062069.P14443514305748450913

namespace A062069

/-- `A000203(∑{d}[n+1, (#%2)!])` -/
def P14443514305748450913.Spec : Prop :=
  ∀ n, P14443514305748450913.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P1055646286117552976

`A000203(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A062069.P1055646286117552976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A062069.P1055646286117552976

namespace A062069

/-- `A000203(∑{d}[n+1, ((-1)^#)²])` -/
def P1055646286117552976.Spec : Prop :=
  ∀ n, P1055646286117552976.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P3561101273184695417

`A000203(Δ[A006218(n)])`
-/

namespace A062069.P3561101273184695417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A062069.P3561101273184695417

namespace A062069

/-- `A000203(Δ[A006218(n)])` -/
def P3561101273184695417.Spec : Prop :=
  ∀ n, P3561101273184695417.a n = A062069 (n + 1)

end A062069

/-! ## A062069.P1951576751729909045

`A000203(Δ[A054519(n)])`
-/

namespace A062069.P1951576751729909045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A062069.P1951576751729909045

namespace A062069

/-- `A000203(Δ[A054519(n)])` -/
def P1951576751729909045.Spec : Prop :=
  ∀ n, P1951576751729909045.a n = A062069 (n + 1)

end A062069

/-!
# A062071: a(n) = [n/1] + [n/(2^2)] + [n/(3^3)] + [n/(4^4)] + ... + [n/(k^k)] + ..., up to infinity, where [ ] is the floor function.

The programs for A062071, there is no canonical definition to state claims against.
-/

/-! ## A062071.P9976124934667680244

`eq[A054977(n), A393595(n+1)]`
-/

namespace A062071.P9976124934667680244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062071.P9976124934667680244

/-! ## A062071.P8598762265026428144

`eq[A057427(n), A393595(n+1)]`
-/

namespace A062071.P8598762265026428144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062071.P8598762265026428144

/-! ## A062071.P4593441292220981722

`eq[A158388(n), A393595(n+1)]`
-/

namespace A062071.P4593441292220981722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062071.P4593441292220981722

/-! ## A062071.P8983909146918340129

`∑[A359944(A003557(n+1))]`
-/

namespace A062071.P8983909146918340129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359944 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P8983909146918340129

/-! ## A062071.P11868964703371393904

`∑[A344713(A327939(n+1))]`
-/

namespace A062071.P11868964703371393904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344713 (A327939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P11868964703371393904

/-! ## A062071.P726781441356899446

`∑[A090822(A347398(n+1)²)]`
-/

namespace A062071.P726781441356899446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A347398 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P726781441356899446

/-! ## A062071.P7608470212359368281

`∑[A129251(n+1)+∑{e}[A199329(n+1), #]]`
-/

namespace A062071.P7608470212359368281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (n + 1) + ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P7608470212359368281

/-! ## A062071.P2263259313212040571

`∑[A083261(A327939(n+1)²)]`
-/

namespace A062071.P2263259313212040571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083261 (A327939 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P2263259313212040571

/-! ## A062071.P15528692001428327496

`∑[A300075(A327939(n+1)²+1)]`
-/

namespace A062071.P15528692001428327496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300075 (A327939 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062071.P15528692001428327496

/-!
# A062074: a(n) = n^3 * 3^n.

The programs for A062074, the canonical program `A062074.P4538995313456586985` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062074 has offset 0).

The definition of A062074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*3^n` (program `A062074.P4538995313456586985`, by `A062074.P4538995313456586985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062074.P15998996754576246042

`3^n*n^3`
-/

namespace A062074.P15998996754576246042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * n ^ 3

end

end A062074.P15998996754576246042

namespace A062074

/-- `3^n*n^3` -/
def P15998996754576246042.Spec : Prop :=
  ∀ n, (P15998996754576246042.a n : ℤ) = A062074 n

theorem P15998996754576246042.correct : P15998996754576246042.Spec := by
  intro n
  simp only [A062074, Nat.add_sub_cancel, A062074.P15998996754576246042.a, A062074.P4538995313456586985.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062074

/-! ## A062074.P4538995313456586985

`n^3*3^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062074

/-- `n^3*3^n` -/
def P4538995313456586985.Spec : Prop :=
  ∀ n, (P4538995313456586985.a n : ℤ) = A062074 n

theorem P4538995313456586985.correct : P4538995313456586985.Spec := by
  intro n
  simp only [A062074]

end A062074

/-! ## A062074.P2932561565210386760

`A168299(n)-1`
-/

namespace A062074.P2932561565210386760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168299 n - 1

end

end A062074.P2932561565210386760

namespace A062074

/-- `A168299(n)-1` -/
def P2932561565210386760.Spec : Prop :=
  ∀ n, P2932561565210386760.a n = A062074 n

theorem P2932561565210386760.correct : P2932561565210386760.Spec := by
  intro n
  simp only [A062074, Nat.add_sub_cancel, A062074.P2932561565210386760.a, A062074.P4538995313456586985.a, A168299, A168299.P11582015306639737325.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062074

/-! ## A062074.P11588862528860823991

`A086603(n)+2*A086603(n)`
-/

namespace A062074.P11588862528860823991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086603 n + 2 * A086603 n

end

end A062074.P11588862528860823991

namespace A062074

/-- `A086603(n)+2*A086603(n)` -/
def P11588862528860823991.Spec : Prop :=
  ∀ n, P11588862528860823991.a n = A062074 n

end A062074

/-! ## A062074.P4266849729849529097

`A000578(n)/3^A001489(n)`
-/

namespace A062074.P4266849729849529097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n : ℚ) / (3 : ℚ) ^ (A001489 n : ℤ)

end

end A062074.P4266849729849529097

namespace A062074

/-- `A000578(n)/3^A001489(n)` -/
def P4266849729849529097.Spec : Prop :=
  ∀ n, P4266849729849529097.a n = (A062074 n : ℚ)

end A062074

/-! ## A062074.P17235951693730989662

`A002522(n)*A036290(n)-A036290(n)`
-/

namespace A062074.P17235951693730989662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A036290 n - A036290 n

end

end A062074.P17235951693730989662

namespace A062074

/-- `A002522(n)*A036290(n)-A036290(n)` -/
def P17235951693730989662.Spec : Prop :=
  ∀ n, P17235951693730989662.a n = A062074 n

theorem P17235951693730989662.correct : P17235951693730989662.Spec := by
  intro n
  simp only [A062074, Nat.add_sub_cancel, A062074.P17235951693730989662.a, A062074.P4538995313456586985.a, A002522, A002522.P3778392011853271743.a, A036290, A036290.P13464595081009669665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062074

/-! ## A062074.P11213936594590461202

`A000578(n)²+A000578(n)*A024026(n)`
-/

namespace A062074.P11213936594590461202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2 + A000578 n * A024026 n

end

end A062074.P11213936594590461202

namespace A062074

/-- `A000578(n)²+A000578(n)*A024026(n)` -/
def P11213936594590461202.Spec : Prop :=
  ∀ n, P11213936594590461202.a n = A062074 n

theorem P11213936594590461202.correct : P11213936594590461202.Spec := by
  intro n
  simp only [A062074, Nat.add_sub_cancel, A062074.P11213936594590461202.a, A062074.P4538995313456586985.a, A000578, A000578.P12162961755414704816.a, A024026, A024026.P4420491483714638126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062074

/-! ## A062074.P1140228535488000156

`n²*A127960(n)/A028310(n)`
-/

namespace A062074.P1140228535488000156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A127960 n : ℚ) / (A028310 n : ℚ)

end

end A062074.P1140228535488000156

namespace A062074

/-- `n²*A127960(n)/A028310(n)` -/
def P1140228535488000156.Spec : Prop :=
  ∀ n, P1140228535488000156.a n = (A062074 n : ℚ)

end A062074

/-! ## A062074.P2816370926850658298

`A000578(n)*A154920(n)/A165998(n)`
-/

namespace A062074.P2816370926850658298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n * A154920 n : ℚ) / (A165998 n : ℚ)

end

end A062074.P2816370926850658298

namespace A062074

/-- `A000578(n)*A154920(n)/A165998(n)` -/
def P2816370926850658298.Spec : Prop :=
  ∀ n, P2816370926850658298.a n = (A062074 n : ℚ)

end A062074

/-! ## A062074.P11545291944894752036

`A128792(n)/A000079(n)`
-/

namespace A062074.P11545291944894752036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128792 n : ℚ) / (A000079 n : ℚ)

end

end A062074.P11545291944894752036

namespace A062074

/-- `A128792(n)/A000079(n)` -/
def P11545291944894752036.Spec : Prop :=
  ∀ n, P11545291944894752036.a n = (A062074 n : ℚ)

end A062074

/-! ## A062074.P3192092860085018810

`A000244(n)²-A000244(n)*A024026(n)`
-/

namespace A062074.P3192092860085018810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A000244 n * A024026 n

end

end A062074.P3192092860085018810

namespace A062074

/-- `A000244(n)²-A000244(n)*A024026(n)` -/
def P3192092860085018810.Spec : Prop :=
  ∀ n, P3192092860085018810.a n = A062074 n

theorem P3192092860085018810.correct : P3192092860085018810.Spec := by
  intro n
  simp only [A062074, Nat.add_sub_cancel, A062074.P3192092860085018810.a, A062074.P4538995313456586985.a, A000244, A000244.P17162167222172810417.a, A024026, A024026.P4420491483714638126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062074

/-! ## A062074.P9551172618664853139

`record[A140303(n)*A198063(n)]`
-/

namespace A062074.P9551172618664853139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n * A198063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062074.P9551172618664853139

namespace A062074

/-- `record[A140303(n)*A198063(n)]` -/
def P9551172618664853139.Spec : Prop :=
  ∀ n, P9551172618664853139.a n = A062074 n

end A062074

/-!
# A062075: a(n) = n^4 * 4^n.

The programs for A062075, the canonical program `A062075.P6332561841389836323` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062075 has offset 0).

The definition of A062075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*4^n` (program `A062075.P6332561841389836323`, by `A062075.P6332561841389836323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062075.P995719307797772498

`4^n*n^4`
-/

namespace A062075.P995719307797772498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * n ^ 4

end

end A062075.P995719307797772498

namespace A062075

/-- `4^n*n^4` -/
def P995719307797772498.Spec : Prop :=
  ∀ n, (P995719307797772498.a n : ℤ) = A062075 n

theorem P995719307797772498.correct : P995719307797772498.Spec := by
  intro n
  simp only [A062075, Nat.add_sub_cancel, A062075.P995719307797772498.a, A062075.P6332561841389836323.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062075

/-! ## A062075.P6332561841389836323

`n^4*4^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062075

/-- `n^4*4^n` -/
def P6332561841389836323.Spec : Prop :=
  ∀ n, (P6332561841389836323.a n : ℤ) = A062075 n

theorem P6332561841389836323.correct : P6332561841389836323.Spec := by
  intro n
  simp only [A062075]

end A062075

/-! ## A062075.P15333725087035214286

`floor(n²/acot(2^n))²`
-/

namespace A062075.P15333725087035214286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot (2 ^ n : ℝ)⌋ ^ 2

end

end A062075.P15333725087035214286

namespace A062075

/-- `floor(n²/acot(2^n))²` -/
def P15333725087035214286.Spec : Prop :=
  ∀ n, P15333725087035214286.a n = A062075 n

end A062075

/-! ## A062075.P7211266823385817453

`round(n²/acot(2^n))²`
-/

namespace A062075.P7211266823385817453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot (2 ^ n : ℝ)) ^ 2

end

end A062075.P7211266823385817453

namespace A062075

/-- `round(n²/acot(2^n))²` -/
def P7211266823385817453.Spec : Prop :=
  ∀ n, P7211266823385817453.a n = A062075 n

end A062075

/-! ## A062075.P4336922375977623630

`(n/cos(atan(1))^n)²²`
-/

namespace A062075.P4336922375977623630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.cos (Real.arctan (1 : ℝ)) ^ n) ^ 2) ^ 2

end

end A062075.P4336922375977623630

namespace A062075

/-- `(n/cos(atan(1))^n)²²` -/
def P4336922375977623630.Spec : Prop :=
  ∀ n, P4336922375977623630.a n = (A062075 n : ℝ)

end A062075

/-! ## A062075.P11615802165539537705

`(n/sin(atan(1))^n)²²`
-/

namespace A062075.P11615802165539537705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.sin (Real.arctan (1 : ℝ)) ^ n) ^ 2) ^ 2

end

end A062075.P11615802165539537705

namespace A062075

/-- `(n/sin(atan(1))^n)²²` -/
def P11615802165539537705.Spec : Prop :=
  ∀ n, P11615802165539537705.a n = (A062075 n : ℝ)

end A062075

/-! ## A062075.P10538980752946719282

`(n/cos(acot(1))^n)²²`
-/

namespace A062075.P10538980752946719282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2) ^ 2

end

end A062075.P10538980752946719282

namespace A062075

/-- `(n/cos(acot(1))^n)²²` -/
def P10538980752946719282.Spec : Prop :=
  ∀ n, P10538980752946719282.a n = (A062075 n : ℝ)

end A062075

/-! ## A062075.P11596934801635543918

`(n²/tan(acot(2^n)))²`
-/

namespace A062075.P11596934801635543918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))) ^ 2

end

end A062075.P11596934801635543918

namespace A062075

/-- `(n²/tan(acot(2^n)))²` -/
def P11596934801635543918.Spec : Prop :=
  ∀ n, P11596934801635543918.a n = (A062075 n : ℝ)

end A062075

/-! ## A062075.P18253941675399314275

`(n²*Δ[2*a(n-1)])²` with `a(0)=1`
-/

namespace A062075.P18253941675399314275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A062075.P18253941675399314275

namespace A062075

/-- `(n²*Δ[2*a(n-1)])²` -/
def P18253941675399314275.Spec : Prop :=
  ∀ n, P18253941675399314275.a n = A062075 n

end A062075

/-! ## A062075.P10217882808875634069

`(n²*∑[2*a(n-1)])²` with `a(0)=1, a(1)=1`
-/

namespace A062075.P10217882808875634069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A062075.P10217882808875634069

namespace A062075

/-- `(n²*∑[2*a(n-1)])²` -/
def P10217882808875634069.Spec : Prop :=
  ∀ n, (P10217882808875634069.a n : ℤ) = A062075 n

end A062075

/-! ## A062075.P12270873830855763065

`(n²/2^(gcd(n, n+1)-(n+1)))²`
-/

namespace A062075.P12270873830855763065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) / (2 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2

end

end A062075.P12270873830855763065

namespace A062075

/-- `(n²/2^(gcd(n, n+1)-(n+1)))²` -/
def P12270873830855763065.Spec : Prop :=
  ∀ n, P12270873830855763065.a n = (A062075 n : ℚ)

end A062075

/-! ## A062075.P18115044633652807388

`A007758(n)²`
-/

namespace A062075.P18115044633652807388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n ^ 2

end

end A062075.P18115044633652807388

namespace A062075

/-- `A007758(n)²` -/
def P18115044633652807388.Spec : Prop :=
  ∀ n, P18115044633652807388.a n = A062075 n

end A062075

/-! ## A062075.P2215640707167801375

`(1-A168298(n))²`
-/

namespace A062075.P2215640707167801375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A168298 n) ^ 2

end

end A062075.P2215640707167801375

namespace A062075

/-- `(1-A168298(n))²` -/
def P2215640707167801375.Spec : Prop :=
  ∀ n, P2215640707167801375.a n = A062075 n

end A062075

/-! ## A062075.P11870048980016742694

`(1-A248917(n))²`
-/

namespace A062075.P11870048980016742694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A248917 n) ^ 2

end

end A062075.P11870048980016742694

namespace A062075

/-- `(1-A248917(n))²` -/
def P11870048980016742694.Spec : Prop :=
  ∀ n, P11870048980016742694.a n = A062075 n

end A062075

/-! ## A062075.P13368416449728326462

`(n*A036289(n))²`
-/

namespace A062075.P13368416449728326462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A036289 n) ^ 2

end

end A062075.P13368416449728326462

namespace A062075

/-- `(n*A036289(n))²` -/
def P13368416449728326462.Spec : Prop :=
  ∀ n, P13368416449728326462.a n = A062075 n

end A062075

/-! ## A062075.P8347276699848878545

`(n*A134401(n))²`
-/

namespace A062075.P8347276699848878545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A134401 n) ^ 2

end

end A062075.P8347276699848878545

namespace A062075

/-- `(n*A134401(n))²` -/
def P8347276699848878545.Spec : Prop :=
  ∀ n, P8347276699848878545.a n = A062075 n

end A062075

/-! ## A062075.P2238364822432257797

`(n²*A000079(n))²`
-/

namespace A062075.P2238364822432257797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000079 n) ^ 2

end

end A062075.P2238364822432257797

namespace A062075

/-- `(n²*A000079(n))²` -/
def P2238364822432257797.Spec : Prop :=
  ∀ n, P2238364822432257797.a n = A062075 n

end A062075

/-! ## A062075.P1797370120838941627

`(n²*A120617(n))²`
-/

namespace A062075.P1797370120838941627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A120617 n) ^ 2

end

end A062075.P1797370120838941627

namespace A062075

/-- `(n²*A120617(n))²` -/
def P1797370120838941627.Spec : Prop :=
  ∀ n, P1797370120838941627.a n = A062075 n

end A062075

/-! ## A062075.P5504243783994617899

`(n²*A122803(n))²`
-/

namespace A062075.P5504243783994617899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A122803 n) ^ 2

end

end A062075.P5504243783994617899

namespace A062075

/-- `(n²*A122803(n))²` -/
def P5504243783994617899.Spec : Prop :=
  ∀ n, P5504243783994617899.a n = A062075 n

end A062075

/-! ## A062075.P8768667860766205394

`(n²*A155559(n))²`
-/

namespace A062075.P8768667860766205394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A155559 n) ^ 2

end

end A062075.P8768667860766205394

namespace A062075

/-- `(n²*A155559(n))²` -/
def P8768667860766205394.Spec : Prop :=
  ∀ n, P8768667860766205394.a n = A062075 n

end A062075

/-!
# A062076: a(n) = (2n-1)^n * n^(2n-1).

The programs for A062076, the canonical program `A062076.P7846807602669552122` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062076 has offset 1).

The definition of A062076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062076.P7846807602669552122

`(2*(n+1)-1)^(n+1)*(n+1)^(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062076

/-- `(2*(n+1)-1)^(n+1)*(n+1)^(2*(n+1)-1)` -/
def P7846807602669552122.Spec : Prop :=
  ∀ n, P7846807602669552122.a n = (A062076 (n + 1) : ℚ)

end A062076

/-! ## A062076.P3209651336394086749

`lcm(A085524(n+1), A085528(n))`
-/

namespace A062076.P3209651336394086749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085524 (n + 1)) (A085528 n)

end

end A062076.P3209651336394086749

namespace A062076

/-- `lcm(A085524(n+1), A085528(n))` -/
def P3209651336394086749.Spec : Prop :=
  ∀ n, (P3209651336394086749.a n : ℤ) = A062076 (n + 1)

end A062076

/-! ## A062076.P2921333153499319578

`A015237(n+1)^(n+1)/(n+1)`
-/

namespace A062076.P2921333153499319578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015237 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062076.P2921333153499319578

namespace A062076

/-- `A015237(n+1)^(n+1)/(n+1)` -/
def P2921333153499319578.Spec : Prop :=
  ∀ n, P2921333153499319578.a n = (A062076 (n + 1) : ℚ)

end A062076

/-! ## A062076.P9354785555615650329

`A062275(A022266(n+1))`
-/

namespace A062076.P9354785555615650329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (A022266 (n + 1)).toNat

end

end A062076.P9354785555615650329

namespace A062076

/-- `A062275(A022266(n+1))` -/
def P9354785555615650329.Spec : Prop :=
  ∀ n, P9354785555615650329.a n = A062076 (n + 1)

end A062076

/-! ## A062076.P17636571001141122468

`A062275(∑[A016777(A016777(n))])`
-/

namespace A062076.P17636571001141122468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062076.P17636571001141122468

namespace A062076

/-- `A062275(∑[A016777(A016777(n))])` -/
def P17636571001141122468.Spec : Prop :=
  ∀ n, P17636571001141122468.a n = A062076 (n + 1)

end A062076

/-!
# A062077: a(n) = (2n)^n * n^(2n).

The programs for A062077, the canonical program `A062077.P3726188474072048729` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062077 has offset 1).

The definition of A062077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1))^(n+1)*(n+1)^(2*(n+1))` (program `A062077.P3726188474072048729`, by `A062077.P3726188474072048729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062077.P3726188474072048729

`(2*(n+1))^(n+1)*(n+1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062077

/-- `(2*(n+1))^(n+1)*(n+1)^(2*(n+1))` -/
def P3726188474072048729.Spec : Prop :=
  ∀ n, (P3726188474072048729.a n : ℤ) = A062077 (n + 1)

theorem P3726188474072048729.correct : P3726188474072048729.Spec := by
  intro n
  simp only [A062077, Nat.add_sub_cancel]

end A062077

/-! ## A062077.P10526308423927032766

`Δ[A163102(n)]^(n+1)`
-/

namespace A062077.P10526308423927032766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A062077.P10526308423927032766

namespace A062077

/-- `Δ[A163102(n)]^(n+1)` -/
def P10526308423927032766.Spec : Prop :=
  ∀ n, P10526308423927032766.a n = A062077 (n + 1)

end A062077

/-! ## A062077.P1897936793284620310

`A033431(n+1)^(n+1)`
-/

namespace A062077.P1897936793284620310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n + 1) ^ (n + 1)

end

end A062077.P1897936793284620310

namespace A062077

/-- `A033431(n+1)^(n+1)` -/
def P1897936793284620310.Spec : Prop :=
  ∀ n, P1897936793284620310.a n = A062077 (n + 1)

end A062077

/-! ## A062077.P16492943639572321624

`A062275(A062725(n+1))`
-/

namespace A062077.P16492943639572321624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (A062725 (n + 1)).toNat

end

end A062077.P16492943639572321624

namespace A062077

/-- `A062275(A062725(n+1))` -/
def P16492943639572321624.Spec : Prop :=
  ∀ n, P16492943639572321624.a n = A062077 (n + 1)

end A062077

/-! ## A062077.P6412683210458495711

`A062275(∑[A016777(A016789(n))])`
-/

namespace A062077.P6412683210458495711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062077.P6412683210458495711

namespace A062077

/-- `A062275(∑[A016777(A016789(n))])` -/
def P6412683210458495711.Spec : Prop :=
  ∀ n, P6412683210458495711.a n = A062077 (n + 1)

end A062077

/-!
# A062078: LCM of the digits of n.

The programs for A062078, there is no canonical definition to state claims against.
-/

/-! ## A062078.P4939950553403926191

`Δ[A324161(n)]*A052429(n+1)`
-/

namespace A062078.P4939950553403926191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052429 (n + 1)

end

end A062078.P4939950553403926191

/-! ## A062078.P13505641464178175181

`A052429(n+1)*A168046(n+1)`
-/

namespace A062078.P13505641464178175181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1) * A168046 (n + 1)

end

end A062078.P13505641464178175181

/-! ## A062078.P11966256173636634590

`lcm(A052429(n+1), A054054(n+1))`
-/

namespace A062078.P11966256173636634590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052429 (n + 1)) (A054054 (n + 1))

end

end A062078.P11966256173636634590

/-! ## A062078.P5029229298878536787

`A052429(n+1)%A001287(A115300(n+1))`
-/

namespace A062078.P5029229298878536787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052429 (n + 1)) (A001287 ((A115300 (n + 1)).toNat + 10))

end

end A062078.P5029229298878536787

/-!
# A062079: Group the odd numbers as (1), (3,5), (7,9,11), (13,15,17,19), (21,23,25,27,29), ... then a(n) = LCM of the n-th group.

The programs for A062079, there is no canonical definition to state claims against.
-/

/-! ## A062079.P14437063976604659284

`A062032(n+1)/A001147(A061994(n))`
-/

namespace A062079.P14437063976604659284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062032 (n + 1) : ℚ) / (A001147 (A061994 n).toNat : ℚ)

end

end A062079.P14437063976604659284

/-!
# A062080: Group the even numbers as 2, (4,6), (8,10,12), (14,16,18,20), (22,24,26,28,30), ... then a(n) = LCM of the n-th group.

The programs for A062080, there is no canonical definition to state claims against.
-/

/-! ## A062080.P9621906898820246090

`2*A061431(n+1)`
-/

namespace A062080.P9621906898820246090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061431 (n + 1)

end

end A062080.P9621906898820246090

/-! ## A062080.P12427162583375046268

`A091796(n+1)+A091795(n)`
-/

namespace A062080.P12427162583375046268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091796 (n + 1) + A091795 n

end

end A062080.P12427162583375046268

/-! ## A062080.P2449088874120810046

`A091797(n+1)+A091794(n)`
-/

namespace A062080.P2449088874120810046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091797 (n + 1) + A091794 n

end

end A062080.P2449088874120810046

/-! ## A062080.P4139333001906802531

`A061431(n+1)+A061431(Δ[n²]-n)`
-/

namespace A062080.P4139333001906802531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061431 (n + 1) + A061431 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A062080.P4139333001906802531

/-! ## A062080.P10582540117236121985

`2*A057003(n+1)/A093453(n+1)`
-/

namespace A062080.P10582540117236121985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A057003 (n + 1) : ℚ) / (A093453 (n + 1) : ℚ))

end

end A062080.P10582540117236121985

/-!
# A062081: Group the even numbers as (2,4), (6,8,10,12), (14,16,18,20,22,24), (26,28,30,32,34,36,38,40), ... then a(n) = LCM of the n-th group.

The programs for A062081, there is no canonical definition to state claims against.
-/

/-! ## A062081.P17916386634869052541

`4*lcm(A061431(n+1), A062079(n+1))`
-/

namespace A062081.P17916386634869052541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Int.lcm (A061431 (n + 1)) (A062079 (n + 1))

end

end A062081.P17916386634869052541

/-! ## A062081.P9804248762641407593

`A082736(2*(n+1))`
-/

namespace A062081.P9804248762641407593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082736 (2 * (n + 1))

end

end A062081.P9804248762641407593

/-!
# A062082: a(n) = prime(n)^n * n^prime(n).

The programs for A062082, there is no canonical definition to state claims against.
-/

/-! ## A062082.P9066689745385403652

`A062457(n+1)*A062481(n+1)`
-/

namespace A062082.P9066689745385403652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) * A062481 (n + 1)

end

end A062082.P9066689745385403652

/-! ## A062082.P11940367902147516894

`(A069459(n+1)+1)*A062481(n+1)`
-/

namespace A062082.P11940367902147516894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069459 (n + 1) + 1) * A062481 (n + 1)

end

end A062082.P11940367902147516894

/-! ## A062082.P10932414730299395822

`A000027(n+1)^A006005(n+1)*A062457(n+1)`
-/

namespace A062082.P10932414730299395822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (A006005 (n + 1) : ℤ) * (A062457 (n + 1) : ℚ)

end

end A062082.P10932414730299395822

/-!
# A062084: Squarefree numbers such that every digit as well as sum of the digits is a squarefree number.

The programs for A062084, there is no canonical definition to state claims against.
-/

/-! ## A062084.P6903704362332252306

`∩[A062101(n+1), A295389(n+1)]`
-/

namespace A062084.P6903704362332252306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062084.P6903704362332252306

/-!
# A062085: Squarefree numbers with all even digits.

The programs for A062085, the canonical program `A062085.P13290386550748108036` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062085 has offset 1).

The definition of A062085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062085.P13290386550748108036

`record[A007913(A014263(n+2))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062085

/-- `record[A007913(A014263(n+2))]` -/
def P13290386550748108036.Spec : Prop :=
  ∀ n, P13290386550748108036.a n = A062085 (n + 1)

theorem P13290386550748108036.correct : P13290386550748108036.Spec := by
  intro n
  simp only [A062085, Nat.add_sub_cancel]

end A062085

/-! ## A062085.P9052984633892228205

`filter[A014263(n+2), A008966(#)]`
-/

namespace A062085.P9052984633892228205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062085.P9052984633892228205

namespace A062085

/-- `filter[A014263(n+2), A008966(#)]` -/
def P9052984633892228205.Spec : Prop :=
  ∀ n, P9052984633892228205.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P18146774872483398267

`filter[A275775(2*(n+1)), A008966(#)]`
-/

namespace A062085.P18146774872483398267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062085.P18146774872483398267

namespace A062085

/-- `filter[A275775(2*(n+1)), A008966(#)]` -/
def P18146774872483398267.Spec : Prop :=
  ∀ n, P18146774872483398267.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P13778541719070470443

`∩[A005117(n+1), A014263(n+1)]`
-/

namespace A062085.P13778541719070470443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P13778541719070470443

namespace A062085

/-- `∩[A005117(n+1), A014263(n+1)]` -/
def P13778541719070470443.Spec : Prop :=
  ∀ n, (P13778541719070470443.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P12028300390980965902

`filter[A024657(n+1), A379966(#)]`
-/

namespace A062085.P12028300390980965902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A062085.P12028300390980965902

namespace A062085

/-- `filter[A024657(n+1), A379966(#)]` -/
def P12028300390980965902.Spec : Prop :=
  ∀ n, P12028300390980965902.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P4334561278809319842

`filter[A014263(n+2), A379966(#)]`
-/

namespace A062085.P4334561278809319842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A062085.P4334561278809319842

namespace A062085

/-- `filter[A014263(n+2), A379966(#)]` -/
def P4334561278809319842.Spec : Prop :=
  ∀ n, P4334561278809319842.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P6005306018513251615

`filter[A169884(n+2), A379966(#)]`
-/

namespace A062085.P6005306018513251615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A062085.P6005306018513251615

namespace A062085

/-- `filter[A169884(n+2), A379966(#)]` -/
def P6005306018513251615.Spec : Prop :=
  ∀ n, P6005306018513251615.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P3104092623348918340

`filter[A275775(2*(n+1)), A379966(#)]`
-/

namespace A062085.P3104092623348918340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A062085.P3104092623348918340

namespace A062085

/-- `filter[A275775(2*(n+1)), A379966(#)]` -/
def P3104092623348918340.Spec : Prop :=
  ∀ n, P3104092623348918340.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P16972237817179400443

`∩[A039956(n+1), A024657(n)]`
-/

namespace A062085.P16972237817179400443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P16972237817179400443

namespace A062085

/-- `∩[A039956(n+1), A024657(n)]` -/
def P16972237817179400443.Spec : Prop :=
  ∀ n, (P16972237817179400443.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P4979015805643342596

`∩[A014263(n+1), A039956(n+1)]`
-/

namespace A062085.P4979015805643342596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P4979015805643342596

namespace A062085

/-- `∩[A014263(n+1), A039956(n+1)]` -/
def P4979015805643342596.Spec : Prop :=
  ∀ n, (P4979015805643342596.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P12492382090029680489

`∩[A039956(n+1), A059708(n+1)]`
-/

namespace A062085.P12492382090029680489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P12492382090029680489

namespace A062085

/-- `∩[A039956(n+1), A059708(n+1)]` -/
def P12492382090029680489.Spec : Prop :=
  ∀ n, (P12492382090029680489.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P14748369205267026027

`∩[A039956(n+1), A169884(n+1)]`
-/

namespace A062085.P14748369205267026027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P14748369205267026027

namespace A062085

/-- `∩[A039956(n+1), A169884(n+1)]` -/
def P14748369205267026027.Spec : Prop :=
  ∀ n, (P14748369205267026027.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P3208809130284990741

`∩[2*A056911(n+1), A059708(n+1)]`
-/

namespace A062085.P3208809130284990741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P3208809130284990741

namespace A062085

/-- `∩[2*A056911(n+1), A059708(n+1)]` -/
def P3208809130284990741.Spec : Prop :=
  ∀ n, (P3208809130284990741.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P6718884233492766808

`∩[A014263(n+1), A080324(n+1)]`
-/

namespace A062085.P6718884233492766808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P6718884233492766808

namespace A062085

/-- `∩[A014263(n+1), A080324(n+1)]` -/
def P6718884233492766808.Spec : Prop :=
  ∀ n, (P6718884233492766808.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P4764957073901195286

`∩[A014263(n+1), A089269(n+1)]`
-/

namespace A062085.P4764957073901195286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P4764957073901195286

namespace A062085

/-- `∩[A014263(n+1), A089269(n+1)]` -/
def P4764957073901195286.Spec : Prop :=
  ∀ n, (P4764957073901195286.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P1222012197382489678

`∩[A014263(n+1), A077377(n+1)]`
-/

namespace A062085.P1222012197382489678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062085.P1222012197382489678

namespace A062085

/-- `∩[A014263(n+1), A077377(n+1)]` -/
def P1222012197382489678.Spec : Prop :=
  ∀ n, (P1222012197382489678.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P10382376761967575185

`eq[A059628(n), A087049(n)]`
-/

namespace A062085.P10382376761967575185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062085.P10382376761967575185

namespace A062085

/-- `eq[A059628(n), A087049(n)]` -/
def P10382376761967575185.Spec : Prop :=
  ∀ n, (P10382376761967575185.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P10872463648071612198

`eq[A059628(n), A105234(n)]`
-/

namespace A062085.P10872463648071612198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062085.P10872463648071612198

namespace A062085

/-- `eq[A059628(n), A105234(n)]` -/
def P10872463648071612198.Spec : Prop :=
  ∀ n, (P10872463648071612198.a n : ℤ) = A062085 (n + 1)

end A062085

/-! ## A062085.P12489440691937565255

`record[A001613(A039956(n+1))]`
-/

namespace A062085.P12489440691937565255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A039956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062085.P12489440691937565255

namespace A062085

/-- `record[A001613(A039956(n+1))]` -/
def P12489440691937565255.Spec : Prop :=
  ∀ n, P12489440691937565255.a n = A062085 (n + 1)

end A062085

/-! ## A062085.P4808544367627006868

`record[A001613(A099985(n+1))]`
-/

namespace A062085.P4808544367627006868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A099985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062085.P4808544367627006868

namespace A062085

/-- `record[A001613(A099985(n+1))]` -/
def P4808544367627006868.Spec : Prop :=
  ∀ n, P4808544367627006868.a n = A062085 (n + 1)

end A062085

/-!
# A062086: Squarefree numbers with all odd digits.

The programs for A062086, the canonical program `A062086.P15083974956987109728` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062086 has offset 1).

The definition of A062086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062086.P4368991384555249668

`record[A007947(A014261(n+1))]`
-/

namespace A062086.P4368991384555249668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A014261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062086.P4368991384555249668

namespace A062086

/-- `record[A007947(A014261(n+1))]` -/
def P4368991384555249668.Spec : Prop :=
  ∀ n, P4368991384555249668.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P1151108206259113252

`filter[A014261(n+1), A008966(#)]`
-/

namespace A062086.P1151108206259113252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062086.P1151108206259113252

namespace A062086

/-- `filter[A014261(n+1), A008966(#)]` -/
def P1151108206259113252.Spec : Prop :=
  ∀ n, P1151108206259113252.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P201108758058009624

`filter[A014261(n+1), A359590(#)]`
-/

namespace A062086.P201108758058009624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A062086.P201108758058009624

namespace A062086

/-- `filter[A014261(n+1), A359590(#)]` -/
def P201108758058009624.Spec : Prop :=
  ∀ n, P201108758058009624.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P18212783292260105060

`filter[A014261(n+1), A359592(#)]`
-/

namespace A062086.P18212783292260105060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A062086.P18212783292260105060

namespace A062086

/-- `filter[A014261(n+1), A359592(#)]` -/
def P18212783292260105060.Spec : Prop :=
  ∀ n, P18212783292260105060.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P9214337695909366394

`filter[A014261(n+1), A359834(#)]`
-/

namespace A062086.P9214337695909366394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A062086.P9214337695909366394

namespace A062086

/-- `filter[A014261(n+1), A359834(#)]` -/
def P9214337695909366394.Spec : Prop :=
  ∀ n, P9214337695909366394.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P1586356831505530974

`filter[A275776(2*n+1), A008966(#)]`
-/

namespace A062086.P1586356831505530974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062086.P1586356831505530974

namespace A062086

/-- `filter[A275776(2*n+1), A008966(#)]` -/
def P1586356831505530974.Spec : Prop :=
  ∀ n, P1586356831505530974.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P3816195832599645326

`filter[A275776(2*n+1), A359590(#)]`
-/

namespace A062086.P3816195832599645326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A062086.P3816195832599645326

namespace A062086

/-- `filter[A275776(2*n+1), A359590(#)]` -/
def P3816195832599645326.Spec : Prop :=
  ∀ n, P3816195832599645326.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P6175744921387524246

`filter[A275776(2*n+1), A359592(#)]`
-/

namespace A062086.P6175744921387524246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A062086.P6175744921387524246

namespace A062086

/-- `filter[A275776(2*n+1), A359592(#)]` -/
def P6175744921387524246.Spec : Prop :=
  ∀ n, P6175744921387524246.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P9834282825532999190

`filter[A275776(2*n+1), A359834(#)]`
-/

namespace A062086.P9834282825532999190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A062086.P9834282825532999190

namespace A062086

/-- `filter[A275776(2*n+1), A359834(#)]` -/
def P9834282825532999190.Spec : Prop :=
  ∀ n, P9834282825532999190.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P3118161670970769356

`∩[A005117(n+1), A014261(n+1)]`
-/

namespace A062086.P3118161670970769356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062086.P3118161670970769356

namespace A062086

/-- `∩[A005117(n+1), A014261(n+1)]` -/
def P3118161670970769356.Spec : Prop :=
  ∀ n, (P3118161670970769356.a n : ℤ) = A062086 (n + 1)

end A062086

/-! ## A062086.P17848733607898053285

`filter[A014261(n+1), A323154(#)]`
-/

namespace A062086.P17848733607898053285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A062086.P17848733607898053285

namespace A062086

/-- `filter[A014261(n+1), A323154(#)]` -/
def P17848733607898053285.Spec : Prop :=
  ∀ n, P17848733607898053285.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P16398643794295839248

`filter[A014261(n+1), A323239(#)]`
-/

namespace A062086.P16398643794295839248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A062086.P16398643794295839248

namespace A062086

/-- `filter[A014261(n+1), A323239(#)]` -/
def P16398643794295839248.Spec : Prop :=
  ∀ n, P16398643794295839248.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P10243383413756692499

`filter[A014261(n+1), A353559(#)]`
-/

namespace A062086.P10243383413756692499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A062086.P10243383413756692499

namespace A062086

/-- `filter[A014261(n+1), A353559(#)]` -/
def P10243383413756692499.Spec : Prop :=
  ∀ n, P10243383413756692499.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P2626515396121014692

`filter[A014261(n+1), A353627(#)]`
-/

namespace A062086.P2626515396121014692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A062086.P2626515396121014692

namespace A062086

/-- `filter[A014261(n+1), A353627(#)]` -/
def P2626515396121014692.Spec : Prop :=
  ∀ n, P2626515396121014692.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P15083974956987109728

`filter[A059708(n+1), A323239(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062086

/-- `filter[A059708(n+1), A323239(#)]` -/
def P15083974956987109728.Spec : Prop :=
  ∀ n, P15083974956987109728.a n = A062086 (n + 1)

theorem P15083974956987109728.correct : P15083974956987109728.Spec := by
  intro n
  simp only [A062086, Nat.add_sub_cancel]

end A062086

/-! ## A062086.P9428097606143049847

`filter[A275776(2*n+1), A323154(#)]`
-/

namespace A062086.P9428097606143049847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A062086.P9428097606143049847

namespace A062086

/-- `filter[A275776(2*n+1), A323154(#)]` -/
def P9428097606143049847.Spec : Prop :=
  ∀ n, P9428097606143049847.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P7474927530453313224

`filter[A275776(2*n+1), A323239(#)]`
-/

namespace A062086.P7474927530453313224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A062086.P7474927530453313224

namespace A062086

/-- `filter[A275776(2*n+1), A323239(#)]` -/
def P7474927530453313224.Spec : Prop :=
  ∀ n, P7474927530453313224.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P6470729365778969487

`filter[A275776(2*n+1), A353559(#)]`
-/

namespace A062086.P6470729365778969487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A062086.P6470729365778969487

namespace A062086

/-- `filter[A275776(2*n+1), A353559(#)]` -/
def P6470729365778969487.Spec : Prop :=
  ∀ n, P6470729365778969487.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P8571864834931402976

`filter[A275776(2*n+1), A353627(#)]`
-/

namespace A062086.P8571864834931402976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A062086.P8571864834931402976

namespace A062086

/-- `filter[A275776(2*n+1), A353627(#)]` -/
def P8571864834931402976.Spec : Prop :=
  ∀ n, P8571864834931402976.a n = A062086 (n + 1)

end A062086

/-! ## A062086.P16169012580744519820

`∩[A014261(n+1), A348499(n+1)]`
-/

namespace A062086.P16169012580744519820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062086.P16169012580744519820

namespace A062086

/-- `∩[A014261(n+1), A348499(n+1)]` -/
def P16169012580744519820.Spec : Prop :=
  ∀ n, (P16169012580744519820.a n : ℤ) = A062086 (n + 1)

end A062086

/-!
# A062087: Squarefree numbers with all prime digits.

The programs for A062087, there is no canonical definition to state claims against.
-/

/-! ## A062087.P3289021398949418467

`∩[A046034(n+1), A077674(n+1)]`
-/

namespace A062087.P3289021398949418467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P3289021398949418467

/-! ## A062087.P8245157388198649544

`∩[A001742(n+1), A077674(n+1)]`
-/

namespace A062087.P8245157388198649544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P8245157388198649544

/-! ## A062087.P6907522370454110229

`record[A007913(A046034(n+1))]`
-/

namespace A062087.P6907522370454110229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A046034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062087.P6907522370454110229

/-! ## A062087.P3087096853741420868

`filter[A046034(n+1), A008966(#)]`
-/

namespace A062087.P3087096853741420868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062087.P3087096853741420868

/-! ## A062087.P13130650757394801434

`∩[A005117(n+1), A046034(n+1)]`
-/

namespace A062087.P13130650757394801434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P13130650757394801434

/-! ## A062087.P15098182833503164398

`∩[A001729(n+1), A077674(n+1)]`
-/

namespace A062087.P15098182833503164398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P15098182833503164398

/-! ## A062087.P614857790603445833

`∩[A046034(n+1), A062101(n+1)]`
-/

namespace A062087.P614857790603445833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P614857790603445833

/-! ## A062087.P1932701990537340064

`∩[A077674(n+1), A202267(n+1)]`
-/

namespace A062087.P1932701990537340064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P1932701990537340064

/-! ## A062087.P1875431772256544022

`∩[A077674(n+1), A329150(n+1)]`
-/

namespace A062087.P1875431772256544022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P1875431772256544022

/-! ## A062087.P12291878559065396593

`filter[A046034(n+1), A323154(#)]`
-/

namespace A062087.P12291878559065396593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A062087.P12291878559065396593

/-! ## A062087.P2853654728426719354

`∩[A039124(n+1), A077674(n+1)]`
-/

namespace A062087.P2853654728426719354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P2853654728426719354

/-! ## A062087.P9558498260065869476

`eq[A105570(n), A276729(n)]`
-/

namespace A062087.P9558498260065869476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062087.P9558498260065869476

/-! ## A062087.P8231747496614648950

`eq[n, A007947(A276729(n)+n)]`
-/

namespace A062087.P8231747496614648950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A276729 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062087.P8231747496614648950

/-! ## A062087.P17544465869968423922

`∩[A046034(n+1), A064594(n+1)]`
-/

namespace A062087.P17544465869968423922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P17544465869968423922

/-! ## A062087.P6890046283352446224

`∩[A039117(n+1), A077674(n+1)]`
-/

namespace A062087.P6890046283352446224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P6890046283352446224

/-! ## A062087.P4823396191720605500

`∩[A039142(n+1), A077674(n+1)]`
-/

namespace A062087.P4823396191720605500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P4823396191720605500

/-! ## A062087.P4059700749830785657

`∩[A039151(n+1), A077674(n+1)]`
-/

namespace A062087.P4059700749830785657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P4059700749830785657

/-! ## A062087.P7410364910352820489

`∩[A039152(n+1), A077674(n+1)]`
-/

namespace A062087.P7410364910352820489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P7410364910352820489

/-! ## A062087.P11884188491176138665

`∩[A052414(n+1), A077674(n+1)]`
-/

namespace A062087.P11884188491176138665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P11884188491176138665

/-! ## A062087.P14566842309046845994

`∩[A046034(n+1), A144338(n+1)]`
-/

namespace A062087.P14566842309046845994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062087.P14566842309046845994

/-!
# A062088: Primes with every digit a prime and the sum of the digits a prime.

The programs for A062088, there is no canonical definition to state claims against.
-/

/-! ## A062088.P13614298600477992635

`∩[A019546(n+1), A046704(n+1)]`
-/

namespace A062088.P13614298600477992635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062088.P13614298600477992635

/-! ## A062088.P9654806246755299259

`∩[A046034(n+1), A046704(n+1)]`
-/

namespace A062088.P9654806246755299259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062088.P9654806246755299259

/-! ## A062088.P15921154887776338327

`∩[A046704(n+1), A062087(n+1)]`
-/

namespace A062088.P15921154887776338327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062088.P15921154887776338327

/-! ## A062088.P13209096140013130392

`∩[A019546(n+1), A028834(n+1)]`
-/

namespace A062088.P13209096140013130392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062088.P13209096140013130392

/-! ## A062088.P15614290786315247673

`∩[A019546(n+1), A182986(A075177(n+1)+1)]`
-/

namespace A062088.P15614290786315247673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A075177 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062088.P15614290786315247673

/-!
# A062090: a(1) = 1, a(n) = smallest odd number that does not divide the product of all previous terms.

The programs for A062090, the canonical program `A062090.P3714437628305221333` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062090 has offset 1).

The definition of A062090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062090.P10679088518966077052

`filter[A084400(n+1), A266112(#)]`
-/

namespace A062090.P10679088518966077052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266112 (f1 j).toNat = 1) n)

end

end A062090.P10679088518966077052

namespace A062090

/-- `filter[A084400(n+1), A266112(#)]` -/
def P10679088518966077052.Spec : Prop :=
  ∀ n, P10679088518966077052.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P9370340242453339210

`∩[A084400(n+1), A061345(n)]`
-/

namespace A062090.P9370340242453339210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062090.P9370340242453339210

namespace A062090

/-- `∩[A084400(n+1), A061345(n)]` -/
def P9370340242453339210.Spec : Prop :=
  ∀ n, (P9370340242453339210.a n : ℤ) = A062090 (n + 1)

end A062090

/-! ## A062090.P3714437628305221333

`filter[A061345(n), A355823(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A062090

/-- `filter[A061345(n), A355823(#)]` -/
def P3714437628305221333.Spec : Prop :=
  ∀ n, P3714437628305221333.a n = A062090 (n + 1)

theorem P3714437628305221333.correct : P3714437628305221333.Spec := by
  intro n
  simp only [A062090, Nat.add_sub_cancel]

end A062090

/-! ## A062090.P5897731733594671039

`record[A000265(A050376(n+1))]`
-/

namespace A062090.P5897731733594671039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A050376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062090.P5897731733594671039

namespace A062090

/-- `record[A000265(A050376(n+1))]` -/
def P5897731733594671039.Spec : Prop :=
  ∀ n, P5897731733594671039.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P15984475613687503626

`record[A000265(A084400(n+1))]`
-/

namespace A062090.P15984475613687503626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A084400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062090.P15984475613687503626

namespace A062090

/-- `record[A000265(A084400(n+1))]` -/
def P15984475613687503626.Spec : Prop :=
  ∀ n, P15984475613687503626.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P14564500405184926882

`A000265(A062091(n+2)/2)`
-/

namespace A062090.P14564500405184926882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A062091 (n + 2) : ℚ) / 2)).toNat

end

end A062090.P14564500405184926882

namespace A062090

/-- `A000265(A062091(n+2)/2)` -/
def P14564500405184926882.Spec : Prop :=
  ∀ n, P14564500405184926882.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P5639549942154981012

`filter[A084400(n+1), A361023(#)]`
-/

namespace A062090.P5639549942154981012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A062090.P5639549942154981012

namespace A062090

/-- `filter[A084400(n+1), A361023(#)]` -/
def P5639549942154981012.Spec : Prop :=
  ∀ n, P5639549942154981012.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P13603183850401612903

`filter[A084400(n+1), A373157(#)]`
-/

namespace A062090.P13603183850401612903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A062090.P13603183850401612903

namespace A062090

/-- `filter[A084400(n+1), A373157(#)]` -/
def P13603183850401612903.Spec : Prop :=
  ∀ n, P13603183850401612903.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P8103376269903593688

`filter[A084400(n+1), A374134(#)]`
-/

namespace A062090.P8103376269903593688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A062090.P8103376269903593688

namespace A062090

/-- `filter[A084400(n+1), A374134(#)]` -/
def P8103376269903593688.Spec : Prop :=
  ∀ n, P8103376269903593688.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P6344660982590667649

`record[or(1, A300840(n+1))]`
-/

namespace A062090.P6344660982590667649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300840 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062090.P6344660982590667649

namespace A062090

/-- `record[or(1, A300840(n+1))]` -/
def P6344660982590667649.Spec : Prop :=
  ∀ n, P6344660982590667649.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P1784045741206601420

`filter[A084400(n+1), A039982(#)]`
-/

namespace A062090.P1784045741206601420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A062090.P1784045741206601420

namespace A062090

/-- `filter[A084400(n+1), A039982(#)]` -/
def P1784045741206601420.Spec : Prop :=
  ∀ n, P1784045741206601420.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P15742823833980658712

`filter[A084400(n+1), A093719(#)]`
-/

namespace A062090.P15742823833980658712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A062090.P15742823833980658712

namespace A062090

/-- `filter[A084400(n+1), A093719(#)]` -/
def P15742823833980658712.Spec : Prop :=
  ∀ n, P15742823833980658712.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P7677244984732463974

`filter[A084400(n+1), A254651(#)]`
-/

namespace A062090.P7677244984732463974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A062090.P7677244984732463974

namespace A062090

/-- `filter[A084400(n+1), A254651(#)]` -/
def P7677244984732463974.Spec : Prop :=
  ∀ n, P7677244984732463974.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P17241627379704676117

`filter[A084400(n+1), A356172(#)]`
-/

namespace A062090.P17241627379704676117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A062090.P17241627379704676117

namespace A062090

/-- `filter[A084400(n+1), A356172(#)]` -/
def P17241627379704676117.Spec : Prop :=
  ∀ n, P17241627379704676117.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P12168592249201714140

`A000265(A062091(n+2))`
-/

namespace A062090.P12168592249201714140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062091 (n + 2)).toNat

end

end A062090.P12168592249201714140

namespace A062090

/-- `A000265(A062091(n+2))` -/
def P12168592249201714140.Spec : Prop :=
  ∀ n, P12168592249201714140.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P2616954146198987963

`∩[A026477(n+1), A061345(n)]`
-/

namespace A062090.P2616954146198987963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062090.P2616954146198987963

namespace A062090

/-- `∩[A026477(n+1), A061345(n)]` -/
def P2616954146198987963.Spec : Prop :=
  ∀ n, (P2616954146198987963.a n : ℤ) = A062090 (n + 1)

end A062090

/-! ## A062090.P17188501302711596052

`A300841(record[A300840(2*n+1)])`
-/

namespace A062090.P17188501302711596052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062090.P17188501302711596052

namespace A062090

/-- `A300841(record[A300840(2*n+1)])` -/
def P17188501302711596052.Spec : Prop :=
  ∀ n, P17188501302711596052.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P8298005810016582474

`record[or(1, A091732(2*n+1))]`
-/

namespace A062090.P8298005810016582474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091732 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062090.P8298005810016582474

namespace A062090

/-- `record[or(1, A091732(2*n+1))]` -/
def P8298005810016582474.Spec : Prop :=
  ∀ n, P8298005810016582474.a n = A062090 (n + 1)

end A062090

/-! ## A062090.P7481837246731444969

`∩[A084400(n+1), A004273(n)]`
-/

namespace A062090.P7481837246731444969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062090.P7481837246731444969

namespace A062090

/-- `∩[A084400(n+1), A004273(n)]` -/
def P7481837246731444969.Spec : Prop :=
  ∀ n, (P7481837246731444969.a n : ℤ) = A062090 (n + 1)

end A062090

/-!
# A062091: a(1) = 2, a(n)= smallest even number which does not divide the product of all previous terms.

The programs for A062091, the canonical program `A062091.P6979132532382001810` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062091 has offset 1).

The definition of A062091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062091.P6979132532382001810

`record[2*A065883(A084400(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062091

/-- `record[2*A065883(A084400(n+1))]` -/
def P6979132532382001810.Spec : Prop :=
  ∀ n, P6979132532382001810.a n = A062091 (n + 1)

theorem P6979132532382001810.correct : P6979132532382001810.Spec := by
  intro n
  simp only [A062091, Nat.add_sub_cancel]

end A062091

/-! ## A062091.P10706091437874876647

`record[2*A223491(A141310(n))]`
-/

namespace A062091.P10706091437874876647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223491 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P10706091437874876647

namespace A062091

/-- `record[2*A223491(A141310(n))]` -/
def P10706091437874876647.Spec : Prop :=
  ∀ n, P10706091437874876647.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P9230394817976742743

`record[2*A223491(A065883(n+1))]`
-/

namespace A062091.P9230394817976742743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223491 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P9230394817976742743

namespace A062091

/-- `record[2*A223491(A065883(n+1))]` -/
def P9230394817976742743.Spec : Prop :=
  ∀ n, P9230394817976742743.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P7410701137153532564

`record[2*A175880(A223490(n+1))]`
-/

namespace A062091.P7410701137153532564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175880 (A223490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P7410701137153532564

namespace A062091

/-- `record[2*A175880(A223490(n+1))]` -/
def P7410701137153532564.Spec : Prop :=
  ∀ n, P7410701137153532564.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P16467391898324371567

`record[A223491(n+1)+A141310(n)]`
-/

namespace A062091.P16467391898324371567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (n + 1) + A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P16467391898324371567

namespace A062091

/-- `record[A223491(n+1)+A141310(n)]` -/
def P16467391898324371567.Spec : Prop :=
  ∀ n, P16467391898324371567.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P7636433735166116950

`record[A223491(n+1)+A065883(n+1)]`
-/

namespace A062091.P7636433735166116950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (n + 1) + A065883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P7636433735166116950

namespace A062091

/-- `record[A223491(n+1)+A065883(n+1)]` -/
def P7636433735166116950.Spec : Prop :=
  ∀ n, P7636433735166116950.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P13141680269433217608

`record[A223490(n+1)+A175880(n+1)]`
-/

namespace A062091.P13141680269433217608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1) + A175880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P13141680269433217608

namespace A062091

/-- `record[A223490(n+1)+A175880(n+1)]` -/
def P13141680269433217608.Spec : Prop :=
  ∀ n, P13141680269433217608.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P2602166053677772842

`record[2*A029579(A213925(n+1))]`
-/

namespace A062091.P2602166053677772842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029579 (A213925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P2602166053677772842

namespace A062091

/-- `record[2*A029579(A213925(n+1))]` -/
def P2602166053677772842.Spec : Prop :=
  ∀ n, P2602166053677772842.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P11630367661050832664

`record[A353897(A354933(n+1)+A353897(n+1))]`
-/

namespace A062091.P11630367661050832664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A354933 (n + 1) + A353897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P11630367661050832664

namespace A062091

/-- `record[A353897(A354933(n+1)+A353897(n+1))]` -/
def P11630367661050832664.Spec : Prop :=
  ∀ n, P11630367661050832664.a n = A062091 (n + 1)

end A062091

/-! ## A062091.P15763403098739614693

`record[(n+1)*(2-A107458(A239614(n+1)))]`
-/

namespace A062091.P15763403098739614693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A107458 (A239614 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062091.P15763403098739614693

namespace A062091

/-- `record[(n+1)*(2-A107458(A239614(n+1)))]` -/
def P15763403098739614693.Spec : Prop :=
  ∀ n, P15763403098739614693.a n = A062091 (n + 1)

end A062091

/-!
# A062092: a(n) = 2*a(n-1) - (-1)^n for n > 0, a(0)=2.

The programs for A062092, the canonical program `A062092.P5590046047606823603` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062092 has offset 0).

The definition of A062092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-(-1)^n` (program `A062092.P5590046047606823603`, by `A062092.P5590046047606823603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062092.P5590046047606823603

`2*a(n-1)-(-1)^n` with `a(0)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062092

/-- `2*a(n-1)-(-1)^n` -/
def P5590046047606823603.Spec : Prop :=
  ∀ n, P5590046047606823603.a n = A062092 n

theorem P5590046047606823603.correct : P5590046047606823603.Spec := by
  intro n
  simp only [A062092]

end A062092

/-! ## A062092.P6255384177928901870

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A062092.P6255384177928901870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A062092.P6255384177928901870

namespace A062092

/-- `a(n-1)+2*a(n-2)` -/
def P6255384177928901870.Spec : Prop :=
  ∀ n, (P6255384177928901870.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P11238745390960349452

`2^(n+1)+A001045(n)`
-/

namespace A062092.P11238745390960349452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) + A001045 n

end

end A062092.P11238745390960349452

namespace A062092

/-- `2^(n+1)+A001045(n)` -/
def P11238745390960349452.Spec : Prop :=
  ∀ n, P11238745390960349452.a n = A062092 n

end A062092

/-! ## A062092.P14877611874587740492

`A005009(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A062092.P14877611874587740492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005009 (n - 1) - a (n - 1)

end

end A062092.P14877611874587740492

namespace A062092

/-- `A005009(n-1)-a(n-1)` -/
def P14877611874587740492.Spec : Prop :=
  ∀ n, P14877611874587740492.a n = A062092 n

end A062092

/-! ## A062092.P824925824578198627

`A001045(n+3)-A078008(n)`
-/

namespace A062092.P824925824578198627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) - A078008 n

end

end A062092.P824925824578198627

namespace A062092

/-- `A001045(n+3)-A078008(n)` -/
def P824925824578198627.Spec : Prop :=
  ∀ n, P824925824578198627.a n = A062092 n

end A062092

/-! ## A062092.P12801522186518499941

`(7*2^n-(-1)^n)/3`
-/

namespace A062092.P12801522186518499941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 2 ^ n : ℤ) - (-1) ^ n : ℚ) / 3

end

end A062092.P12801522186518499941

namespace A062092

/-- `(7*2^n-(-1)^n)/3` -/
def P12801522186518499941.Spec : Prop :=
  ∀ n, P12801522186518499941.a n = (A062092 n : ℚ)

theorem P12801522186518499941.correct : P12801522186518499941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062092, Nat.add_sub_cancel, A062092.P12801522186518499941.a, A062092.P5590046047606823603.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062092, Nat.add_sub_cancel, A062092.P12801522186518499941.a, A062092.P5590046047606823603.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062092

/-! ## A062092.P16813159274538619623

`ogf((2+3x)/(1-x-2x^2))`
-/

namespace A062092.P16813159274538619623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -1, -2] n

end

end A062092.P16813159274538619623

namespace A062092

/-- `ogf((2+3x)/(1-x-2x^2))` -/
def P16813159274538619623.Spec : Prop :=
  ∀ n, P16813159274538619623.a n = A062092 n

end A062092

/-! ## A062092.P2807058641044185819

`abs(Δ[n-2*a(n-1)])` with `a(0)=1`
-/

namespace A062092.P2807058641044185819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A062092.P2807058641044185819

namespace A062092

/-- `abs(Δ[n-2*a(n-1)])` -/
def P2807058641044185819.Spec : Prop :=
  ∀ n, P2807058641044185819.a n = A062092 n

end A062092

/-! ## A062092.P3187386374259167648

`a(n-1)+a(n-1)-(-1)^n` with `a(0)=2`
-/

namespace A062092.P3187386374259167648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) - (-1) ^ n)

end

end A062092.P3187386374259167648

namespace A062092

/-- `a(n-1)+a(n-1)-(-1)^n` -/
def P3187386374259167648.Spec : Prop :=
  ∀ n, P3187386374259167648.a n = A062092 n

theorem P3187386374259167648.correct : P3187386374259167648.Spec := by
  intro n
  simp only [A062092, Nat.add_sub_cancel, A062092.P3187386374259167648.a, A062092.P5590046047606823603.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062092

/-! ## A062092.P6407865246736961040

`a(n-1)-((-1)^n-a(n-1))` with `a(0)=2`
-/

namespace A062092.P6407865246736961040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ((-1) ^ n - a (n - 1))

end

end A062092.P6407865246736961040

namespace A062092

/-- `a(n-1)-((-1)^n-a(n-1))` -/
def P6407865246736961040.Spec : Prop :=
  ∀ n, P6407865246736961040.a n = A062092 n

theorem P6407865246736961040.correct : P6407865246736961040.Spec := by
  intro n
  simp only [A062092, Nat.add_sub_cancel, A062092.P6407865246736961040.a, A062092.P5590046047606823603.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062092

/-! ## A062092.P9272939197096895771

`1-2*((n-1)%2-a(n-1))` with `a(0)=2`
-/

namespace A062092.P9272939197096895771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - 2 * (Int.tmod ((n : ℤ) - 1) 2 - a (n - 1))

end

end A062092.P9272939197096895771

namespace A062092

/-- `1-2*((n-1)%2-a(n-1))` -/
def P9272939197096895771.Spec : Prop :=
  ∀ n, P9272939197096895771.a n = A062092 n

end A062092

/-! ## A062092.P8407727170069707958

`abs(a(n-2)+a(n-1)+a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A062092.P8407727170069707958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062092.P8407727170069707958

namespace A062092

/-- `abs(a(n-2)+a(n-1)+a(n-2))` -/
def P8407727170069707958.Spec : Prop :=
  ∀ n, (P8407727170069707958.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P2392275330461454206

`floor(a(n-2)+a(n-1)+a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A062092.P2392275330461454206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062092.P2392275330461454206

namespace A062092

/-- `floor(a(n-2)+a(n-1)+a(n-2))` -/
def P2392275330461454206.Spec : Prop :=
  ∀ n, (P2392275330461454206.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P6195284327807482556

`ceil(a(n-2)+a(n-1)+a(n-2))` with `a(0)=2, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A062092.P6195284327807482556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062092.P6195284327807482556

namespace A062092

/-- `ceil(a(n-2)+a(n-1)+a(n-2))` -/
def P6195284327807482556.Spec : Prop :=
  ∀ n, (P6195284327807482556.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P12279049403653147675

`round(a(n-2)+a(n-1)+a(n-2))` with `a(0)=2, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A062092.P12279049403653147675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062092.P12279049403653147675

namespace A062092

/-- `round(a(n-2)+a(n-1)+a(n-2))` -/
def P12279049403653147675.Spec : Prop :=
  ∀ n, (P12279049403653147675.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P10435797652698185506

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A062092.P10435797652698185506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062092.P10435797652698185506

namespace A062092

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P10435797652698185506.Spec : Prop :=
  ∀ n, (P10435797652698185506.a n : ℤ) = A062092 n

end A062092

/-! ## A062092.P14219226496116133165

`floor(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A062092.P14219226496116133165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A062092.P14219226496116133165

namespace A062092

/-- `floor(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P14219226496116133165.Spec : Prop :=
  ∀ n, P14219226496116133165.a n = A062092 n

end A062092

/-! ## A062092.P6698949679210870709

`A283642(n)+2^n`
-/

namespace A062092.P6698949679210870709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + (2 ^ n : ℤ)

end

end A062092.P6698949679210870709

namespace A062092

/-- `A283642(n)+2^n` -/
def P6698949679210870709.Spec : Prop :=
  ∀ n, P6698949679210870709.a n = A062092 n

end A062092

/-! ## A062092.P1932486613444066036

`A048573(n+1)-2^n`
-/

namespace A062092.P1932486613444066036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (n + 1) - (2 ^ n : ℤ)

end

end A062092.P1932486613444066036

namespace A062092

/-- `A048573(n+1)-2^n` -/
def P1932486613444066036.Spec : Prop :=
  ∀ n, P1932486613444066036.a n = A062092 n

end A062092

/-! ## A062092.P5311028002556615344

`A135092(n)-a(n-1)` with `a(0)=2`
-/

namespace A062092.P5311028002556615344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A135092 n - a (n - 1)

end

end A062092.P5311028002556615344

namespace A062092

/-- `A135092(n)-a(n-1)` -/
def P5311028002556615344.Spec : Prop :=
  ∀ n, P5311028002556615344.a n = A062092 n

end A062092

/-!
# A062095: a(1) = 1, a(n) = concatenation of two closest factors of a(n-1) whose product equals a(n-1) or if a(n-1) is a prime then the concatenation of 1 and a(n-1).

The programs for A062095, there is no canonical definition to state claims against.
-/

/-! ## A062095.P12480306296471724798

`A004185(A049121(n+1))`
-/

namespace A062095.P12480306296471724798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A049121 (n + 1)).toNat

end

end A062095.P12480306296471724798

/-!
# A062096: a(1) = 2; for n > 1, a(n) is smallest number, greater than a(n-1), which is relatively prime to the sum of all previous terms.

The programs for A062096, there is no canonical definition to state claims against.
-/

/-! ## A062096.P12655154886779068396

`Δ[A338666(n+1)]+floor(acot(n))`
-/

namespace A062096.P12655154886779068396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A062096.P12655154886779068396

/-! ## A062096.P11660586749002323408

`A000007(n)+Δ[A338666(n+1)]`
-/

namespace A062096.P11660586749002323408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062096.P11660586749002323408

/-! ## A062096.P9088605510683295653

`Δ[A338666(n+1)%A056109(n)]`
-/

namespace A062096.P9088605510683295653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338666 (n + 1)) (A056109 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062096.P9088605510683295653

/-! ## A062096.P11998957642455189389

`Δ[A338666(n+1)+A000040(n+1)%2]`
-/

namespace A062096.P11998957642455189389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1) + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062096.P11998957642455189389

/-! ## A062096.P1287588138257777874

`A000041(C(2, n+1))*Δ[A338666(n+1)]`
-/

namespace A062096.P1287588138257777874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A062096.P1287588138257777874

/-! ## A062096.P10932080164466848321

`Δ[A338666(n+1)]+A008683(8*n+4)^n`
-/

namespace A062096.P10932080164466848321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (8 * n + 4) ^ n

end

end A062096.P10932080164466848321

/-! ## A062096.P5182098277996180531

`A233583(Δ[A338666(n+1)]+1)`
-/

namespace A062096.P5182098277996180531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n + 1).toNat

end

end A062096.P5182098277996180531

/-! ## A062096.P5481737278857462691

`Δ[A338666(n+1)]+A008683((n+1)²)`
-/

namespace A062096.P5481737278857462691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 ((n + 1) ^ 2)

end

end A062096.P5481737278857462691

/-! ## A062096.P17157383975957820375

`Δ[A338666(n+1)+and(1, A014963(n²+2))]`
-/

namespace A062096.P17157383975957820375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338666 (n + 1) + Int.land 1 (A014963 (n ^ 2 + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062096.P17157383975957820375

/-!
# A062097: a(1) = 1; a(n) = sum of the sum and the product of all previous terms.

The programs for A062097, there is no canonical definition to state claims against.
-/

/-! ## A062097.P6621616741987014954

`∑[A355697(n!)]`
-/

namespace A062097.P6621616741987014954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355697 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062097.P6621616741987014954

/-!
# A062098: a(n) = 7 * n!.

The programs for A062098, the canonical program `A062098.P13796783723849930886` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062098 has offset 1).

The definition of A062098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)!` (program `A062098.P13796783723849930886`, by `A062098.P13796783723849930886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062098.P13796783723849930886

`7*(n+1)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062098

/-- `7*(n+1)!` -/
def P13796783723849930886.Spec : Prop :=
  ∀ n, (P13796783723849930886.a n : ℤ) = A062098 (n + 1)

theorem P13796783723849930886.correct : P13796783723849930886.Spec := by
  intro n
  simp only [A062098, Nat.add_sub_cancel]

end A062098

/-! ## A062098.P3513199470832932632

`(n+1)*a(n-1)` with `a(0)=7`
-/

namespace A062098.P3513199470832932632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  (n + 1) * a (n - 1)

end

end A062098.P3513199470832932632

namespace A062098

/-- `(n+1)*a(n-1)` -/
def P3513199470832932632.Spec : Prop :=
  ∀ n, (P3513199470832932632.a n : ℤ) = A062098 (n + 1)

end A062098

/-! ## A062098.P8452310604621074046

`7*A000142(n+1)`
-/

namespace A062098.P8452310604621074046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000142 (n + 1)

end

end A062098.P8452310604621074046

namespace A062098

/-- `7*A000142(n+1)` -/
def P8452310604621074046.Spec : Prop :=
  ∀ n, P8452310604621074046.a n = A062098 (n + 1)

theorem P8452310604621074046.correct : P8452310604621074046.Spec := by
  intro n
  simp only [A062098, Nat.add_sub_cancel, A062098.P8452310604621074046.a, A062098.P13796783723849930886.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062098

/-! ## A062098.P7559587292197847377

`7*∏[n+1]`
-/

namespace A062098.P7559587292197847377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062098.P7559587292197847377

namespace A062098

/-- `7*∏[n+1]` -/
def P7559587292197847377.Spec : Prop :=
  ∀ n, (P7559587292197847377.a n : ℤ) = A062098 (n + 1)

theorem P7559587292197847377.correct : P7559587292197847377.Spec := by
  intro n
  simp only [A062098, Nat.add_sub_cancel, A062098.P7559587292197847377.f1, A062098.P7559587292197847377.a, A062098.P13796783723849930886.a, SequenceMachineLib.memo_apply]
  try simp

end A062098

/-! ## A062098.P5813442451934353334

`Δ[7*∑[n!]]`
-/

namespace A062098.P5813442451934353334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062098.P5813442451934353334

namespace A062098

/-- `Δ[7*∑[n!]]` -/
def P5813442451934353334.Spec : Prop :=
  ∀ n, P5813442451934353334.a n = A062098 (n + 1)

end A062098

/-! ## A062098.P15948456990707027222

`(n+1)!/tan(acot(7))`
-/

namespace A062098.P15948456990707027222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (7 : ℝ))

end

end A062098.P15948456990707027222

namespace A062098

/-- `(n+1)!/tan(acot(7))` -/
def P15948456990707027222.Spec : Prop :=
  ∀ n, P15948456990707027222.a n = (A062098 (n + 1) : ℝ)

end A062098

/-! ## A062098.P5079144221483276349

`(n+1)!/cot(atan(7))`
-/

namespace A062098.P5079144221483276349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) / Real.cot (Real.arctan (7 : ℝ))

end

end A062098.P5079144221483276349

namespace A062098

/-- `(n+1)!/cot(atan(7))` -/
def P5079144221483276349.Spec : Prop :=
  ∀ n, P5079144221483276349.a n = (A062098 (n + 1) : ℝ)

end A062098

/-! ## A062098.P12223009167967441171

`∏[n+1]/tan(acot(7))`
-/

namespace A062098.P12223009167967441171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (7 : ℝ))

end

end A062098.P12223009167967441171

namespace A062098

/-- `∏[n+1]/tan(acot(7))` -/
def P12223009167967441171.Spec : Prop :=
  ∀ n, P12223009167967441171.a n = (A062098 (n + 1) : ℝ)

end A062098

/-! ## A062098.P2660337581055864940

`∏[a(n-1)+1]` with `a(0)=7, a(1)=2`
-/

namespace A062098.P2660337581055864940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062098.P2660337581055864940

namespace A062098

/-- `∏[a(n-1)+1]` -/
def P2660337581055864940.Spec : Prop :=
  ∀ n, (P2660337581055864940.a n : ℤ) = A062098 (n + 1)

end A062098

/-! ## A062098.P6623698621672105431

`record[7*lcm(1-n, n!)]`
-/

namespace A062098.P6623698621672105431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Int.lcm (1 - (n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062098.P6623698621672105431

namespace A062098

/-- `record[7*lcm(1-n, n!)]` -/
def P6623698621672105431.Spec : Prop :=
  ∀ n, (P6623698621672105431.a n : ℤ) = A062098 (n + 1)

end A062098

/-!
# A062099: Triangular numbers whose sum of digits is a triangular number.

The programs for A062099, the canonical program `A062099.P2797821682979061663` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062099 has offset 1).

The definition of A062099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062099.P2797821682979061663

`record[A000217(n)/A059268(A004157(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062099

/-- `record[A000217(n)/A059268(A004157(n))]` -/
def P2797821682979061663.Spec : Prop :=
  ∀ n, P2797821682979061663.a n = (A062099 (n + 1) : ℚ)

end A062099

/-! ## A062099.P2700223252934774394

`∩[A187744(n+1), A000217(n)]`
-/

namespace A062099.P2700223252934774394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062099.P2700223252934774394

namespace A062099

/-- `∩[A187744(n+1), A000217(n)]` -/
def P2700223252934774394.Spec : Prop :=
  ∀ n, (P2700223252934774394.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P1021398529490975521

`∩[A082667(n+1), A187744(n+1)]`
-/

namespace A062099.P1021398529490975521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062099.P1021398529490975521

namespace A062099

/-- `∩[A082667(n+1), A187744(n+1)]` -/
def P1021398529490975521.Spec : Prop :=
  ∀ n, (P1021398529490975521.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P10476275743547145426

`∩[A117520(n+1), A187744(n+1)]`
-/

namespace A062099.P10476275743547145426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062099.P10476275743547145426

namespace A062099

/-- `∩[A117520(n+1), A187744(n+1)]` -/
def P10476275743547145426.Spec : Prop :=
  ∀ n, (P10476275743547145426.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P9799434886992200264

`filter[A187744(n+1), A010054(#)]`
-/

namespace A062099.P9799434886992200264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A062099.P9799434886992200264

namespace A062099

/-- `filter[A187744(n+1), A010054(#)]` -/
def P9799434886992200264.Spec : Prop :=
  ∀ n, P9799434886992200264.a n = A062099 (n + 1)

end A062099

/-! ## A062099.P3867391744923299865

`filter[A187744(n+1), A103451(#)]`
-/

namespace A062099.P3867391744923299865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A062099.P3867391744923299865

namespace A062099

/-- `filter[A187744(n+1), A103451(#)]` -/
def P3867391744923299865.Spec : Prop :=
  ∀ n, P3867391744923299865.a n = A062099 (n + 1)

end A062099

/-! ## A062099.P17497511453239152018

`eq[A010054(A007953(n)), A059268(n)]`
-/

namespace A062099.P17497511453239152018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062099.P17497511453239152018

namespace A062099

/-- `eq[A010054(A007953(n)), A059268(n)]` -/
def P17497511453239152018.Spec : Prop :=
  ∀ n, (P17497511453239152018.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P5849597766406528579

`eq[A081572(A007953(n)), A144064(n)]`
-/

namespace A062099.P5849597766406528579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062099.P5849597766406528579

namespace A062099

/-- `eq[A081572(A007953(n)), A144064(n)]` -/
def P5849597766406528579.Spec : Prop :=
  ∀ n, (P5849597766406528579.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P6825725465669237049

`eq[A291684(n), A337994(A007953(n))]`
-/

namespace A062099.P6825725465669237049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337994 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062099.P6825725465669237049

namespace A062099

/-- `eq[A291684(n), A337994(A007953(n))]` -/
def P6825725465669237049.Spec : Prop :=
  ∀ n, (P6825725465669237049.a n : ℤ) = A062099 (n + 1)

end A062099

/-! ## A062099.P14638190956114977039

`eq[A008949(n)², A008949(A007953(n))]`
-/

namespace A062099.P14638190956114977039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062099.P14638190956114977039

namespace A062099

/-- `eq[A008949(n)², A008949(A007953(n))]` -/
def P14638190956114977039.Spec : Prop :=
  ∀ n, (P14638190956114977039.a n : ℤ) = A062099 (n + 1)

end A062099

