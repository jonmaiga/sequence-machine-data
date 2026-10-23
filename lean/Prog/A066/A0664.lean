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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A066400: Smallest values of t arising in R. L. Graham's sequence (A006255).

The programs for A066400, there is no canonical definition to state claims against.
-/

/-! ## A066400.P341032917727268137

`A001511(or(A002182(n+6), A035116(n+1)))`
-/

namespace A066400.P341032917727268137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A002182 (n + 6)) (A035116 (n + 1))).toNat

end

end A066400.P341032917727268137

/-!
# A066401: Square root of b_1*b_2*...*b_t corresponding to smallest values of t in R. L. Graham's sequence (A006255).

The programs for A066401, there is no canonical definition to state claims against.
-/

/-! ## A066401.P8469773457614420245

`sqrt(A245530(n+1))`
-/

namespace A066401.P8469773457614420245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245530 (n + 1) : ℝ)

end

end A066401.P8469773457614420245

/-! ## A066401.P11732054655007979647

`root(A245530(n+1), 2%A004767(n))`
-/

namespace A066401.P11732054655007979647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245530 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A004767 n) : ℝ))

end

end A066401.P11732054655007979647

/-! ## A066401.P7425717688608699231

`root(lcm(A006255(n+1), A245530(n+1)), 2)`
-/

namespace A066401.P7425717688608699231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006255 (n + 1)) (A245530 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A066401.P7425717688608699231

/-! ## A066401.P14991836108317836979

`root(A245530(n+1), lcm(2, A008836(n+1)))`
-/

namespace A066401.P14991836108317836979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245530 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A008836 (n + 1)) : ℝ))

end

end A066401.P14991836108317836979

/-! ## A066401.P11398206421591515816

`A245530(n+1)^(n/A000267(n²))`
-/

namespace A066401.P11398206421591515816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245530 (n + 1) : ℝ) ^ ((n : ℚ) / (A000267 (n ^ 2) : ℚ) : ℝ)

end

end A066401.P11398206421591515816

/-! ## A066401.P17523431331942261508

`A245530(n+1)^(A066400(A000290(n+1))/2)`
-/

namespace A066401.P17523431331942261508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245530 (n + 1) : ℝ) ^ ((A066400 (A000290 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A066401.P17523431331942261508

/-!
# A066405: From expansion of Belyi function for octahedron.

The programs for A066405, there is no canonical definition to state claims against.
-/

/-! ## A066405.P14466386715564416680

`A033999(n)*A113922(n)`
-/

namespace A066405.P14466386715564416680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113922 n

end

end A066405.P14466386715564416680

/-! ## A066405.P590943204904554720

`A113922(n)/A033999(A007090(n))`
-/

namespace A066405.P590943204904554720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113922 n : ℚ) / (A033999 (A007090 n).toNat : ℚ)

end

end A066405.P590943204904554720

/-! ## A066405.P4194625276966334033

`A113922(n)/A033999(A338041(n+2))`
-/

namespace A066405.P4194625276966334033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113922 n : ℚ) / (A033999 (A338041 (n + 2)).toNat : ℚ)

end

end A066405.P4194625276966334033

/-! ## A066405.P7695202983834221070

`A113922(n)/A033999(A000384(n))`
-/

namespace A066405.P7695202983834221070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113922 n : ℚ) / (A033999 (A000384 n).toNat : ℚ)

end

end A066405.P7695202983834221070

/-! ## A066405.P7664560570895935382

`A113922(n)/A033999(A195147(n))`
-/

namespace A066405.P7664560570895935382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113922 n : ℚ) / (A033999 (A195147 n).toNat : ℚ)

end

end A066405.P7664560570895935382

/-!
# A066406: a(n) = 2^n*(3^n-3).

The programs for A066406, the canonical program `A066406.P13494832108669392044` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066406 has offset 1).

The definition of A066406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(3^(n+1)-3)` (program `A066406.P13494832108669392044`, by `A066406.P13494832108669392044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066406.P13494832108669392044

`2^(n+1)*(3^(n+1)-3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066406

/-- `2^(n+1)*(3^(n+1)-3)` -/
def P13494832108669392044.Spec : Prop :=
  ∀ n, P13494832108669392044.a n = A066406 (n + 1)

theorem P13494832108669392044.correct : P13494832108669392044.Spec := by
  intro n
  simp only [A066406, Nat.add_sub_cancel]

end A066406

/-! ## A066406.P2771861522421339528

`8*a(n-1)-12*a(n-2)` with `a(0)=0, a(1)=24`
-/

namespace A066406.P2771861522421339528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24] fun n a =>
  8 * a (n - 1) - 12 * a (n - 2)

end

end A066406.P2771861522421339528

namespace A066406

/-- `8*a(n-1)-12*a(n-2)` -/
def P2771861522421339528.Spec : Prop :=
  ∀ n, P2771861522421339528.a n = A066406 (n + 1)

theorem P2771861522421339528.correct : P2771861522421339528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A066406, Nat.add_sub_cancel, A066406.P2771861522421339528.a, A066406.P13494832108669392044.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A066406, Nat.add_sub_cancel, A066406.P2771861522421339528.a, A066406.P13494832108669392044.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066406

/-! ## A066406.P1151736446670542258

`ogf(24x/(1-8x+12x^2))`
-/

namespace A066406.P1151736446670542258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24] [1, -8, 12] n

end

end A066406.P1151736446670542258

namespace A066406

/-- `ogf(24x/(1-8x+12x^2))` -/
def P1151736446670542258.Spec : Prop :=
  ∀ n, P1151736446670542258.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P12087967943051559066

`A000400(n+1)-A007283(n+1)`
-/

namespace A066406.P12087967943051559066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - A007283 (n + 1)

end

end A066406.P12087967943051559066

namespace A066406

/-- `A000400(n+1)-A007283(n+1)` -/
def P12087967943051559066.Spec : Prop :=
  ∀ n, P12087967943051559066.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P13752518498603234984

`A000400(n+1)-A003945(n+2)`
-/

namespace A066406.P13752518498603234984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - A003945 (n + 2)

end

end A066406.P13752518498603234984

namespace A066406

/-- `A000400(n+1)-A003945(n+2)` -/
def P13752518498603234984.Spec : Prop :=
  ∀ n, P13752518498603234984.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P8036407324827967844

`A000400(n+1)-A042950(n+2)`
-/

namespace A066406.P8036407324827967844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - A042950 (n + 2)

end

end A066406.P8036407324827967844

namespace A066406

/-- `A000400(n+1)-A042950(n+2)` -/
def P8036407324827967844.Spec : Prop :=
  ∀ n, P8036407324827967844.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P6975491601420956079

`A248216(n+1)-A000079(n+2)`
-/

namespace A066406.P6975491601420956079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 (n + 1) - A000079 (n + 2)

end

end A066406.P6975491601420956079

namespace A066406

/-- `A248216(n+1)-A000079(n+2)` -/
def P6975491601420956079.Spec : Prop :=
  ∀ n, P6975491601420956079.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P9213045024749718390

`A007283(n)*A048473(n)-A007283(n)`
-/

namespace A066406.P9213045024749718390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A048473 n - A007283 n

end

end A066406.P9213045024749718390

namespace A066406

/-- `A007283(n)*A048473(n)-A007283(n)` -/
def P9213045024749718390.Spec : Prop :=
  ∀ n, P9213045024749718390.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P10200721352522285555

`A169604(n)+A169604(n)-A007283(n+1)`
-/

namespace A066406.P10200721352522285555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 n + (A169604 n - A007283 (n + 1))

end

end A066406.P10200721352522285555

namespace A066406

/-- `A169604(n)+A169604(n)-A007283(n+1)` -/
def P10200721352522285555.Spec : Prop :=
  ∀ n, P10200721352522285555.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P9023472471024099

`A007283(n)*A008776(n)-A007283(n+1)`
-/

namespace A066406.P9023472471024099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A008776 n - A007283 (n + 1)

end

end A066406.P9023472471024099

namespace A066406

/-- `A007283(n)*A008776(n)-A007283(n+1)` -/
def P9023472471024099.Spec : Prop :=
  ∀ n, P9023472471024099.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P7371463879894060597

`A245804(n+1)+A000225(n)*A008776(n+1)`
-/

namespace A066406.P7371463879894060597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 (n + 1) + A000225 n * A008776 (n + 1)

end

end A066406.P7371463879894060597

namespace A066406

/-- `A245804(n+1)+A000225(n)*A008776(n+1)` -/
def P7371463879894060597.Spec : Prop :=
  ∀ n, P7371463879894060597.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P18342761496319948259

`A000244(n)*A007283(n+1)-A007283(n+1)`
-/

namespace A066406.P18342761496319948259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A007283 (n + 1) - A007283 (n + 1)

end

end A066406.P18342761496319948259

namespace A066406

/-- `A000244(n)*A007283(n+1)-A007283(n+1)` -/
def P18342761496319948259.Spec : Prop :=
  ∀ n, P18342761496319948259.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P13286990575366116397

`A007283(n)*A025192(n+1)-A007283(n+1)`
-/

namespace A066406.P13286990575366116397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A025192 (n + 1) - A007283 (n + 1)

end

end A066406.P13286990575366116397

namespace A066406

/-- `A007283(n)*A025192(n+1)-A007283(n+1)` -/
def P13286990575366116397.Spec : Prop :=
  ∀ n, P13286990575366116397.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P16014281884268918285

`A003945(n+1)*A048473(n)-A003945(n+1)`
-/

namespace A066406.P16014281884268918285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) * A048473 n - A003945 (n + 1)

end

end A066406.P16014281884268918285

namespace A066406

/-- `A003945(n+1)*A048473(n)-A003945(n+1)` -/
def P16014281884268918285.Spec : Prop :=
  ∀ n, P16014281884268918285.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P17274769944981164737

`A000400(n+1)-A000400(n+1)/A000244(n)`
-/

namespace A066406.P17274769944981164737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 (n + 1) : ℚ) - (A000400 (n + 1) : ℚ) / (A000244 n : ℚ)

end

end A066406.P17274769944981164737

namespace A066406

/-- `A000400(n+1)-A000400(n+1)/A000244(n)` -/
def P17274769944981164737.Spec : Prop :=
  ∀ n, P17274769944981164737.a n = (A066406 (n + 1) : ℚ)

end A066406

/-! ## A066406.P4262008085913552233

`A058809(n+1)+A000225(n+1)*A058809(n+1)`
-/

namespace A066406.P4262008085913552233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058809 (n + 1) + A000225 (n + 1) * A058809 (n + 1)

end

end A066406.P4262008085913552233

namespace A066406

/-- `A058809(n+1)+A000225(n+1)*A058809(n+1)` -/
def P4262008085913552233.Spec : Prop :=
  ∀ n, P4262008085913552233.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P5164710774050092511

`A198396(n+1)-(A302689(n+2)+A005803(n+1))`
-/

namespace A066406.P5164710774050092511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198396 (n + 1) - (A302689 (n + 2) + A005803 (n + 1))

end

end A066406.P5164710774050092511

namespace A066406

/-- `A198396(n+1)-(A302689(n+2)+A005803(n+1))` -/
def P5164710774050092511.Spec : Prop :=
  ∀ n, P5164710774050092511.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P14640511605414671602

`A000079(n+1)*A058481(n+1)-A000079(n+1)`
-/

namespace A066406.P14640511605414671602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A058481 (n + 1) - A000079 (n + 1)

end

end A066406.P14640511605414671602

namespace A066406

/-- `A000079(n+1)*A058481(n+1)-A000079(n+1)` -/
def P14640511605414671602.Spec : Prop :=
  ∀ n, P14640511605414671602.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P1333153497764651853

`A007283(n+1)*A155734(n+1)-A007283(n+1)`
-/

namespace A066406.P1333153497764651853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) * A155734 (n + 1) - A007283 (n + 1)

end

end A066406.P1333153497764651853

namespace A066406

/-- `A007283(n+1)*A155734(n+1)-A007283(n+1)` -/
def P1333153497764651853.Spec : Prop :=
  ∀ n, P1333153497764651853.a n = A066406 (n + 1)

end A066406

/-! ## A066406.P14399303334243677285

`A058481(n+1)*A171449(n+1)-A171449(n+1)`
-/

namespace A066406.P14399303334243677285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (n + 1) * A171449 (n + 1) - A171449 (n + 1)

end

end A066406.P14399303334243677285

namespace A066406

/-- `A058481(n+1)*A171449(n+1)-A171449(n+1)` -/
def P14399303334243677285.Spec : Prop :=
  ∀ n, P14399303334243677285.a n = A066406 (n + 1)

end A066406

/-!
# A066407: Number of orthogonal arrays OA(6,n,2,1).

The programs for A066407, the canonical program `A066407.P14327006728578835734` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066407 has offset 1).

The definition of A066407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066407.P14327006728578835734

`2^(n+1)*(10^(n+1)-15*4^(n+1)+45*2^(n+1)-40)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066407

/-- `2^(n+1)*(10^(n+1)-15*4^(n+1)+45*2^(n+1)-40)` -/
def P14327006728578835734.Spec : Prop :=
  ∀ n, P14327006728578835734.a n = A066407 (n + 1)

theorem P14327006728578835734.correct : P14327006728578835734.Spec := by
  intro n
  simp only [A066407, Nat.add_sub_cancel]

end A066407

/-!
# A066408: Numbers n such that the Eisenstein integer (1 - ω)^n - 1 has prime norm, where ω = -1/2 + sqrt(-3)/2.

The programs for A066408, there is no canonical definition to state claims against.
-/

/-! ## A066408.P2017241872702616004

`A181095(A004156(n)+1)`
-/

namespace A066408.P2017241872702616004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A004156 n + 1).toNat

end

end A066408.P2017241872702616004

/-! ## A066408.P17030791053740433709

`A163466(A004086(2*n+1)+1)`
-/

namespace A066408.P17030791053740433709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (A004086 (2 * n + 1) + 1).toNat

end

end A066408.P17030791053740433709

/-!
# A066410: Maximal sum of divisors of any n-digit number.

The programs for A066410, there is no canonical definition to state claims against.
-/

/-! ## A066410.P6724320975516616661

`∑{d}[A066424(n+1), #]`
-/

namespace A066410.P6724320975516616661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066410.P6724320975516616661

/-!
# A066411: Form a triangle with the numbers [0..n] on the base, where each number is the sum of the two below; a(n) is the number of different possible values for the apex.

The programs for A066411, there is no canonical definition to state claims against.
-/

/-! ## A066411.P4707217395804194131

`A188215(A148923(n))`
-/

namespace A066411.P4707217395804194131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188215 (A148923 n).toNat

end

end A066411.P4707217395804194131

/-! ## A066411.P8760476083893172670

`A131507(A074013(n+1))-2*n`
-/

namespace A066411.P8760476083893172670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A074013 (n + 1)).toNat - (2 * n : ℤ)

end

end A066411.P8760476083893172670

/-! ## A066411.P16181048961744329080

`or(comp[2*(n+1)], A359408(A025566(n)))`
-/

namespace A066411.P16181048961744329080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A359408 (A025566 n).toNat)

end

end A066411.P16181048961744329080

/-!
# A066412: Number of elements in the set phi_inverse(phi(n)).

The programs for A066412, there is no canonical definition to state claims against.
-/

/-! ## A066412.P15680623027448638749

`A014197(A000010(n+1))`
-/

namespace A066412.P15680623027448638749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000010 (n + 1)).toNat

end

end A066412.P15680623027448638749

/-! ## A066412.P10583966391882820175

`A014197(Δ[A002088(n)])`
-/

namespace A066412.P10583966391882820175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (n + 1) - f1 n).toNat

end

end A066412.P10583966391882820175

/-! ## A066412.P6059061348444490218

`A014197(Δ[A005728(n)])`
-/

namespace A066412.P6059061348444490218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f1 (n + 1) - f1 n).toNat

end

end A066412.P6059061348444490218

/-! ## A066412.P5829461135928650089

`A081373(A028476(n+1))`
-/

namespace A066412.P5829461135928650089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A028476 (n + 1)).toNat

end

end A066412.P5829461135928650089

/-! ## A066412.P9293287074433250753

`A014197(sqrt(A127473(n+1)))`
-/

namespace A066412.P9293287074433250753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A066412.P9293287074433250753

/-! ## A066412.P5945012366999217816

`A014197(A039649(n+1)-1)`
-/

namespace A066412.P5945012366999217816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A039649 (n + 1) - 1).toNat

end

end A066412.P5945012366999217816

/-! ## A066412.P12931164105646546111

`A014197(1-A051953(n+1)+n)`
-/

namespace A066412.P12931164105646546111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A066412.P12931164105646546111

/-! ## A066412.P12307075606681705108

`A014197(A002618(n+1)/(n+1))`
-/

namespace A066412.P12307075606681705108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A066412.P12307075606681705108

/-! ## A066412.P1697815012700149734

`A014197(A002088(n+1)-A002088(n))`
-/

namespace A066412.P1697815012700149734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A002088 (n + 1) - A002088 n).toNat

end

end A066412.P1697815012700149734

/-! ## A066412.P10035063533631122550

`A014197(A005728(n+1)-A005728(n))`
-/

namespace A066412.P10035063533631122550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A005728 (n + 1) - A005728 n).toNat

end

end A066412.P10035063533631122550

/-!
# A066414: Numerators of coefficients in series expansion of -512*(1+x)^3/(x-8)^3.

The programs for A066414, there is no canonical definition to state claims against.
-/

/-! ## A066414.P13335390734536097636

`A314191(5*A192810(n))`
-/

namespace A066414.P13335390734536097636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314191 (5 * A192810 n).toNat

end

end A066414.P13335390734536097636

/-!
# A066415: Denominators of coefficients in series expansion of -512*(1+x)^3/(x-8)^3.

The programs for A066415, there is no canonical definition to state claims against.
-/

/-! ## A066415.P6073809751164642387

`A001018(n)/A006519(A081441(n))`
-/

namespace A066415.P6073809751164642387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n : ℚ) / (A006519 (A081441 n).toNat : ℚ)

end

end A066415.P6073809751164642387

/-! ## A066415.P13726170085797169945

`A000079(3*n)/A006519(A081441(n))`
-/

namespace A066415.P13726170085797169945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n) : ℚ) / (A006519 (A081441 n).toNat : ℚ)

end

end A066415.P13726170085797169945

/-! ## A066415.P14021439060639920041

`A001018(n)/A006519(A024196(n+1))`
-/

namespace A066415.P14021439060639920041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n : ℚ) / (A006519 (A024196 (n + 1)).toNat : ℚ)

end

end A066415.P14021439060639920041

/-! ## A066415.P1532735827599756388

`A000079(3*n)/A006519(A024196(n+1))`
-/

namespace A066415.P1532735827599756388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n) : ℚ) / (A006519 (A024196 (n + 1)).toNat : ℚ)

end

end A066415.P1532735827599756388

/-! ## A066415.P10909468203281808343

`A000079(3*n)/A036036(A004117(n))`
-/

namespace A066415.P10909468203281808343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * n) : ℚ) / (A036036 (A004117 n).toNat : ℚ)

end

end A066415.P10909468203281808343

/-!
# A066416: Number of numbers m such that the sum of the anti-divisors of m is n+1.

The programs for A066416, there is no canonical definition to state claims against.
-/

/-! ## A066416.P12835918984597985517

`A060953(record[3*A297165(n)]+9)`
-/

namespace A066416.P12835918984597985517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A297165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 9).toNat

end

end A066416.P12835918984597985517

/-! ## A066416.P10052021197156629834

`and(A238484(A184831(3*(n+1))), A333809(2*n+1))`
-/

namespace A066416.P10052021197156629834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238484 (A184831 (3 * (n + 1))).toNat) (A333809 (2 * n + 1))

end

end A066416.P10052021197156629834

/-! ## A066416.P12817377665783378079

`A001222(gcd(A045872(n), A322833(n+1)))`
-/

namespace A066416.P12817377665783378079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A045872 (n + 10)) (A322833 (n + 1)))

end

end A066416.P12817377665783378079

/-! ## A066416.P6226213312643909559

`A060528(2*n+5)%A023193(A273494(n+1))`
-/

namespace A066416.P6226213312643909559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060528 (2 * n + 5)) (A023193 (A273494 (n + 1)).toNat)

end

end A066416.P6226213312643909559

/-! ## A066416.P15207163149021826370

`and(A234027(A022095(n)), A279060(n))`
-/

namespace A066416.P15207163149021826370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234027 (A022095 n).toNat) (A279060 n)

end

end A066416.P15207163149021826370

/-!
# A066417: Sum of anti-divisors of n.

The programs for A066417, there is no canonical definition to state claims against.
-/

/-! ## A066417.P18224199778482219891

`A058838(n+1)-1`
-/

namespace A066417.P18224199778482219891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1) - 1

end

end A066417.P18224199778482219891

/-! ## A066417.P12623051885223389732

`∑[n+1]-A378414(n+1)`
-/

namespace A066417.P12623051885223389732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A378414 (n + 1)

end

end A066417.P12623051885223389732

/-! ## A066417.P14358216769615102238

`A253145(n)%A378414(n+1)`
-/

namespace A066417.P14358216769615102238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A378414 (n + 1))

end

end A066417.P14358216769615102238

/-! ## A066417.P17099705795725713332

`xor(-A058838(n+1), A057428(n+1))`
-/

namespace A066417.P17099705795725713332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A058838 (n + 1)) (A057428 (n + 1))

end

end A066417.P17099705795725713332

/-! ## A066417.P2358098577422110583

`A064179(A000040(n+1))+A058838(n+1)`
-/

namespace A066417.P2358098577422110583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A000040 (n + 1)).toNat + A058838 (n + 1)

end

end A066417.P2358098577422110583

/-! ## A066417.P5642058880672177728

`abs(A058838(n+1)+A057428(2*n+3))`
-/

namespace A066417.P5642058880672177728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058838 (n + 1) + A057428 (2 * n + 3)|

end

end A066417.P5642058880672177728

/-! ## A066417.P9793805810922989477

`A023443(A058838(n+1))`
-/

namespace A066417.P9793805810922989477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A058838 (n + 1)).toNat

end

end A066417.P9793805810922989477

/-! ## A066417.P9560738647157093872

`A023444(A058838(n+1)+1)`
-/

namespace A066417.P9560738647157093872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A058838 (n + 1) + 1).toNat

end

end A066417.P9560738647157093872

/-! ## A066417.P10958956340998579603

`A289207(A058838(n+1)+1)`
-/

namespace A066417.P10958956340998579603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A058838 (n + 1) + 1).toNat

end

end A066417.P10958956340998579603

/-! ## A066417.P5503178680423216585

`A023445(A058838(n+1)+2)`
-/

namespace A066417.P5503178680423216585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A058838 (n + 1) + 2).toNat

end

end A066417.P5503178680423216585

/-! ## A066417.P14614421802790228491

`A023446(A058838(n+1)+3)`
-/

namespace A066417.P14614421802790228491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A058838 (n + 1) + 3).toNat

end

end A066417.P14614421802790228491

/-! ## A066417.P10719833246414545933

`A070198(2*n)%A058838(n+1)`
-/

namespace A066417.P10719833246414545933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 (2 * n)) (A058838 (n + 1))

end

end A066417.P10719833246414545933

/-!
# A066420: Least m such that card(invphi(phi(m)))=n.

The programs for A066420, there is no canonical definition to state claims against.
-/

/-! ## A066420.P3329892525680358280

`A049283(A007374(n+2))`
-/

namespace A066420.P3329892525680358280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A007374 (n + 2)).toNat

end

end A066420.P3329892525680358280

/-! ## A066420.P3206779283364923237

`A224531(∑[n+1]+1)`
-/

namespace A066420.P3206779283364923237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066420.P3206779283364923237

/-! ## A066420.P11986606458108148159

`or(1, A224531(A000124(n+1)))`
-/

namespace A066420.P11986606458108148159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224531 (A000124 (n + 1)).toNat)

end

end A066420.P11986606458108148159

/-! ## A066420.P18166480282059578227

`or(1, A224531(A134869(n+1)))`
-/

namespace A066420.P18166480282059578227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224531 (A134869 (n + 1)).toNat)

end

end A066420.P18166480282059578227

/-! ## A066420.P3152605208976259748

`or(1, A224531(A036406(2*n+3)))`
-/

namespace A066420.P3152605208976259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224531 (A036406 (2 * n + 3)).toNat)

end

end A066420.P3152605208976259748

/-! ## A066420.P16462059454384946949

`A224531(A134869(n+1))+A000007(n)`
-/

namespace A066420.P16462059454384946949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (A134869 (n + 1)).toNat + A000007 n

end

end A066420.P16462059454384946949

/-! ## A066420.P10694898023726486207

`gcd(A000038(n), A224531(A000124(n+1)))`
-/

namespace A066420.P10694898023726486207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224531 (A000124 (n + 1)).toNat)

end

end A066420.P10694898023726486207

/-! ## A066420.P5563216706418393272

`∑{d}[A224531(A000124(n+1)), A000010(#)]`
-/

namespace A066420.P5563216706418393272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A066420.P5563216706418393272

/-! ## A066420.P17633062262516001705

`A224531(A000124(n+1))+A008683(4*(n+1))`
-/

namespace A066420.P17633062262516001705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224531 (A000124 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A066420.P17633062262516001705

/-! ## A066420.P12965329916748297648

`A014963(6*(n+1))*A224531(A000124(n+1))`
-/

namespace A066420.P12965329916748297648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A224531 (A000124 (n + 1)).toNat

end

end A066420.P12965329916748297648

/-!
# A066421: a(n) = least k > 0 such that sigma^(k)(n) + 1 is prime, if such k exists; otherwise 0, where sigma^(k) denotes application of sigma k times.

The programs for A066421, there is no canonical definition to state claims against.
-/

/-! ## A066421.P14197081844783078765

`A001222(A261598(3*n+2)+A205488(n))`
-/

namespace A066421.P14197081844783078765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261598 (3 * n + 2) + A205488 n).toNat

end

end A066421.P14197081844783078765

/-! ## A066421.P1999829137215695046

`A211999(A190430(3*(n+1))+A003963(n+2))`
-/

namespace A066421.P1999829137215695046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211999 (A190430 (3 * (n + 1)) + A003963 (n + 2)).toNat

end

end A066421.P1999829137215695046

/-! ## A066421.P17507721274160040120

`gcd(A131391(A186851(3*n+2)), A208749(2*n+3))`
-/

namespace A066421.P17507721274160040120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131391 (A186851 (3 * n + 2)).toNat) (A208749 (2 * n + 3))

end

end A066421.P17507721274160040120

/-!
# A066422: a(n) = least k such that phi^(k)(n) + 1 is prime, where phi^(k) denotes application of phi k times.

The programs for A066422, there is no canonical definition to state claims against.
-/

/-! ## A066422.P7174278305983408243

`A060118(A275870((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A066422.P7174278305983408243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (A275870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat).toNat

end

end A066422.P7174278305983408243

/-! ## A066422.P13554759246214478111

`A001221(A194560((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A066422.P13554759246214478111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A194560 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat).toNat

end

end A066422.P13554759246214478111

/-! ## A066422.P3272735818580593159

`A112798(A319056((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A066422.P3272735818580593159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A319056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat).toNat

end

end A066422.P3272735818580593159

/-! ## A066422.P13412094769487249153

`A039508(A051953((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)²)`
-/

namespace A066422.P13412094769487249153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat ^ 2).toNat

end

end A066422.P13412094769487249153

/-! ## A066422.P14037752114399447537

`A055642(A353564((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)²)`
-/

namespace A066422.P14037752114399447537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A353564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat ^ 2).toNat

end

end A066422.P14037752114399447537

/-! ## A066422.P15738903556688754614

`A329326(A085392((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)²)`
-/

namespace A066422.P15738903556688754614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A085392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat ^ 2).toNat

end

end A066422.P15738903556688754614

/-!
# A066423: Composite numbers n such that the product of proper divisors of the n does not equal n.

The programs for A066423, the canonical program `A066423.P13134788901235726609` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066423 has offset 1).

The definition of A066423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066423.P13134788901235726609

`comp[A084116(n+1)-2]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066423

/-- `comp[A084116(n+1)-2]+2` -/
def P13134788901235726609.Spec : Prop :=
  ∀ n, (P13134788901235726609.a n : ℤ) = A066423 (n + 1)

theorem P13134788901235726609.correct : P13134788901235726609.Spec := by
  intro n
  simp only [A066423, Nat.add_sub_cancel]

end A066423

/-! ## A066423.P7520468644422587115

`∪[A007624(n+1), (n+2)²]`
-/

namespace A066423.P7520468644422587115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A066423.P7520468644422587115

namespace A066423

/-- `∪[A007624(n+1), (n+2)²]` -/
def P7520468644422587115.Spec : Prop :=
  ∀ n, (P7520468644422587115.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P4718011743109969522

`∪[A058080(n+1), (n+2)²]`
-/

namespace A066423.P4718011743109969522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A066423.P4718011743109969522

namespace A066423

/-- `∪[A058080(n+1), (n+2)²]` -/
def P4718011743109969522.Spec : Prop :=
  ∀ n, (P4718011743109969522.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P15782726888070344812

`lt[3, A000005(A226602(n))]`
-/

namespace A066423.P15782726888070344812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066423.P15782726888070344812

namespace A066423

/-- `lt[3, A000005(A226602(n))]` -/
def P15782726888070344812.Spec : Prop :=
  ∀ n, (P15782726888070344812.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P16044946988778883213

`lt[2, A300979(A226602(n)+1)]`
-/

namespace A066423.P16044946988778883213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300979 (A226602 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066423.P16044946988778883213

namespace A066423

/-- `lt[2, A300979(A226602(n)+1)]` -/
def P16044946988778883213.Spec : Prop :=
  ∀ n, (P16044946988778883213.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P9402866707660472356

`lt[1, A009947(A000005(n+1))]+1`
-/

namespace A066423.P9402866707660472356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066423.P9402866707660472356

namespace A066423

/-- `lt[1, A009947(A000005(n+1))]+1` -/
def P9402866707660472356.Spec : Prop :=
  ∀ n, (P9402866707660472356.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P11964446010568060023

`∪[A001248(n+1), A058080(n+1)]`
-/

namespace A066423.P11964446010568060023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P11964446010568060023

namespace A066423

/-- `∪[A001248(n+1), A058080(n+1)]` -/
def P11964446010568060023.Spec : Prop :=
  ∀ n, (P11964446010568060023.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P4621654071885070677

`∪[A072587(n+1), A007624(n+1)]`
-/

namespace A066423.P4621654071885070677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P4621654071885070677

namespace A066423

/-- `∪[A072587(n+1), A007624(n+1)]` -/
def P4621654071885070677.Spec : Prop :=
  ∀ n, (P4621654071885070677.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P8837574310047989007

`∪[A030140(n+1), A058080(n+1)]`
-/

namespace A066423.P8837574310047989007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P8837574310047989007

namespace A066423

/-- `∪[A030140(n+1), A058080(n+1)]` -/
def P8837574310047989007.Spec : Prop :=
  ∀ n, (P8837574310047989007.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P8246200301325837700

`∪[A038109(n+1), A058080(n+1)]`
-/

namespace A066423.P8246200301325837700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P8246200301325837700

namespace A066423

/-- `∪[A038109(n+1), A058080(n+1)]` -/
def P8246200301325837700.Spec : Prop :=
  ∀ n, (P8246200301325837700.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P15748656760312163332

`∪[A175592(n+1), A007624(n+1)]`
-/

namespace A066423.P15748656760312163332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P15748656760312163332

namespace A066423

/-- `∪[A175592(n+1), A007624(n+1)]` -/
def P15748656760312163332.Spec : Prop :=
  ∀ n, (P15748656760312163332.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P3935010120282094010

`∪[A320891(n+1), A058080(n+1)]`
-/

namespace A066423.P3935010120282094010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066423.P3935010120282094010

namespace A066423

/-- `∪[A320891(n+1), A058080(n+1)]` -/
def P3935010120282094010.Spec : Prop :=
  ∀ n, (P3935010120282094010.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P5092924910119823069

`filter[A210994(n+1), A066247(#)]`
-/

namespace A066423.P5092924910119823069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066423.P5092924910119823069

namespace A066423

/-- `filter[A210994(n+1), A066247(#)]` -/
def P5092924910119823069.Spec : Prop :=
  ∀ n, P5092924910119823069.a n = A066423 (n + 1)

end A066423

/-! ## A066423.P9567307025602867634

`filter[A210994(n+2), A005171(#)]`
-/

namespace A066423.P9567307025602867634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066423.P9567307025602867634

namespace A066423

/-- `filter[A210994(n+2), A005171(#)]` -/
def P9567307025602867634.Spec : Prop :=
  ∀ n, P9567307025602867634.a n = A066423 (n + 1)

end A066423

/-! ## A066423.P9134885928046860533

`lt[3, lcm(3, A032741(n))]`
-/

namespace A066423.P9134885928046860533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A032741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066423.P9134885928046860533

namespace A066423

/-- `lt[3, lcm(3, A032741(n))]` -/
def P9134885928046860533.Spec : Prop :=
  ∀ n, (P9134885928046860533.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P5268610980198228504

`lt[1, A084115(n+1)]+1`
-/

namespace A066423.P5268610980198228504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066423.P5268610980198228504

namespace A066423

/-- `lt[1, A084115(n+1)]+1` -/
def P5268610980198228504.Spec : Prop :=
  ∀ n, (P5268610980198228504.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P11857708854102195543

`lt[2, A188902(n+2)]+2`
-/

namespace A066423.P11857708854102195543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188902 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A066423.P11857708854102195543

namespace A066423

/-- `lt[2, A188902(n+2)]+2` -/
def P11857708854102195543.Spec : Prop :=
  ∀ n, (P11857708854102195543.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P2461746561579417811

`eq[4, gcd(4, A140635(n+1))]+1`
-/

namespace A066423.P2461746561579417811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A140635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066423.P2461746561579417811

namespace A066423

/-- `eq[4, gcd(4, A140635(n+1))]+1` -/
def P2461746561579417811.Spec : Prop :=
  ∀ n, (P2461746561579417811.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P361482800585376292

`lt[1, A008611(A032741(n)+1)]`
-/

namespace A066423.P361482800585376292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066423.P361482800585376292

namespace A066423

/-- `lt[1, A008611(A032741(n)+1)]` -/
def P361482800585376292.Spec : Prop :=
  ∀ n, (P361482800585376292.a n : ℤ) = A066423 (n + 1)

end A066423

/-! ## A066423.P12626713973229835696

`eq[1, A000010(a(A084115(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A066423.P12626713973229835696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A084115 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066423.P12626713973229835696

namespace A066423

/-- `eq[1, A000010(a(A084115(n)))]` -/
def P12626713973229835696.Spec : Prop :=
  ∀ n, (P12626713973229835696.a n : ℤ) = A066423 (n + 1)

end A066423

/-!
# A066425: a(1) = 1; thereafter a(n) is the smallest number > a(n-1) such that a(n) minus any sum of distinct earlier terms is not already in the sequence.

The programs for A066425, there is no canonical definition to state claims against.
-/

/-! ## A066425.P2076089516256338978

`2*a(n-1)+A068058(n)` with `a(0)=1`
-/

namespace A066425.P2076089516256338978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A068058 n

end

end A066425.P2076089516256338978

/-! ## A066425.P7628617709568651161

`Δ[A068739(n+1)]`
-/

namespace A066425.P7628617709568651161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066425.P7628617709568651161

/-! ## A066425.P2535192576719463779

`A068739(n+2)-A068739(n+1)`
-/

namespace A066425.P2535192576719463779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068739 (n + 2) - A068739 (n + 1)

end

end A066425.P2535192576719463779

/-! ## A066425.P6363672931910927812

`A068054(n)+a(n-1)` with `a(0)=1`
-/

namespace A066425.P6363672931910927812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068054 n + a (n - 1)

end

end A066425.P6363672931910927812

/-! ## A066425.P1156358801025923436

`A068054(n+1)-A068058(n+1)`
-/

namespace A066425.P1156358801025923436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 1) - A068058 (n + 1)

end

end A066425.P1156358801025923436

/-! ## A066425.P5046827357716217541

`A068054(n+1)+A068059(n+1)-A068059(n+2)`
-/

namespace A066425.P5046827357716217541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 1) + (A068059 (n + 1) - A068059 (n + 2))

end

end A066425.P5046827357716217541

/-! ## A066425.P6755328517557403096

`A068055(n+2)-(A068055(n+1)+A068054(n+1))`
-/

namespace A066425.P6755328517557403096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068055 (n + 2) - (A068055 (n + 1) + A068054 (n + 1))

end

end A066425.P6755328517557403096

/-!
# A066427: Numbers with mu = 0 and infinitary MoebiusMu = -1; (sum of binary digits of prime exponents is odd).

The programs for A066427, the canonical program `A066427.P8185841536175877705` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066427 has offset 1).

The definition of A066427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066427.P8185841536175877705

`lt[A064179(n+1), A008683(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066427

/-- `lt[A064179(n+1), A008683(n+1)]+1` -/
def P8185841536175877705.Spec : Prop :=
  ∀ n, (P8185841536175877705.a n : ℤ) = A066427 (n + 1)

theorem P8185841536175877705.correct : P8185841536175877705.Spec := by
  intro n
  simp only [A066427, Nat.add_sub_cancel]

end A066427

/-! ## A066427.P14357182775258643158

`record[A105570(A000028(n+3))]`
-/

namespace A066427.P14357182775258643158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000028 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066427.P14357182775258643158

namespace A066427

/-- `record[A105570(A000028(n+3))]` -/
def P14357182775258643158.Spec : Prop :=
  ∀ n, P14357182775258643158.a n = A066427 (n + 1)

end A066427

/-! ## A066427.P14262701133971369792

`filter[A000028(n+1), A087049(#)]`
-/

namespace A066427.P14262701133971369792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A066427.P14262701133971369792

namespace A066427

/-- `filter[A000028(n+1), A087049(#)]` -/
def P14262701133971369792.Spec : Prop :=
  ∀ n, P14262701133971369792.a n = A066427 (n + 1)

end A066427

/-! ## A066427.P17506953053319359234

`∩[A000028(n+1), A013929(n+1)]`
-/

namespace A066427.P17506953053319359234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066427.P17506953053319359234

namespace A066427

/-- `∩[A000028(n+1), A013929(n+1)]` -/
def P17506953053319359234.Spec : Prop :=
  ∀ n, (P17506953053319359234.a n : ℤ) = A066427 (n + 1)

end A066427

/-! ## A066427.P11441508943625227564

`∩[A000028(n+1), A162966(n+1)]`
-/

namespace A066427.P11441508943625227564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066427.P11441508943625227564

namespace A066427

/-- `∩[A000028(n+1), A162966(n+1)]` -/
def P11441508943625227564.Spec : Prop :=
  ∀ n, (P11441508943625227564.a n : ℤ) = A066427 (n + 1)

end A066427

/-! ## A066427.P132475687298527125

`∩[A000028(n+1), A174891(n+1)]`
-/

namespace A066427.P132475687298527125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066427.P132475687298527125

namespace A066427

/-- `∩[A000028(n+1), A174891(n+1)]` -/
def P132475687298527125.Spec : Prop :=
  ∀ n, (P132475687298527125.a n : ℤ) = A066427 (n + 1)

end A066427

/-! ## A066427.P15993275272983888910

`filter[A000028(n+1), A107078(#)]`
-/

namespace A066427.P15993275272983888910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A066427.P15993275272983888910

namespace A066427

/-- `filter[A000028(n+1), A107078(#)]` -/
def P15993275272983888910.Spec : Prop :=
  ∀ n, P15993275272983888910.a n = A066427 (n + 1)

end A066427

/-! ## A066427.P10293056176144974133

`eq[A064179(n+1), A076544(n+1)]+1`
-/

namespace A066427.P10293056176144974133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066427.P10293056176144974133

namespace A066427

/-- `eq[A064179(n+1), A076544(n+1)]+1` -/
def P10293056176144974133.Spec : Prop :=
  ∀ n, (P10293056176144974133.a n : ℤ) = A066427 (n + 1)

end A066427

/-!
# A066428: Numbers with mu = 0 and infinitary MoebiusMu = +1 (sum of binary digits of prime exponents is even).

The programs for A066428, the canonical program `A066428.P8799136072068236919` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066428 has offset 1).

The definition of A066428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066428.P8799136072068236919

`lt[A008683(n+1), A064179(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066428

/-- `lt[A008683(n+1), A064179(n+1)]+1` -/
def P8799136072068236919.Spec : Prop :=
  ∀ n, (P8799136072068236919.a n : ℤ) = A066428 (n + 1)

theorem P8799136072068236919.correct : P8799136072068236919.Spec := by
  intro n
  simp only [A066428, Nat.add_sub_cancel]

end A066428

/-! ## A066428.P16096055737090114409

`filter[A013929(n+1), A359464(#)]`
-/

namespace A066428.P16096055737090114409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A066428.P16096055737090114409

namespace A066428

/-- `filter[A013929(n+1), A359464(#)]` -/
def P16096055737090114409.Spec : Prop :=
  ∀ n, P16096055737090114409.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P12470753751547904743

`filter[A080756(n+1), A359464(#)]`
-/

namespace A066428.P12470753751547904743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A066428.P12470753751547904743

namespace A066428

/-- `filter[A080756(n+1), A359464(#)]` -/
def P12470753751547904743.Spec : Prop :=
  ∀ n, P12470753751547904743.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P8267405822187633711

`filter[A162966(n+2), A359464(#)]`
-/

namespace A066428.P8267405822187633711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A066428.P8267405822187633711

namespace A066428

/-- `filter[A162966(n+2), A359464(#)]` -/
def P8267405822187633711.Spec : Prop :=
  ∀ n, P8267405822187633711.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P13672638413153509673

`record[A105570(A000379(n+3))]`
-/

namespace A066428.P13672638413153509673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000379 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066428.P13672638413153509673

namespace A066428

/-- `record[A105570(A000379(n+3))]` -/
def P13672638413153509673.Spec : Prop :=
  ∀ n, P13672638413153509673.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P12219083070739168182

`filter[A000379(n+2), A087049(#)]`
-/

namespace A066428.P12219083070739168182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A066428.P12219083070739168182

namespace A066428

/-- `filter[A000379(n+2), A087049(#)]` -/
def P12219083070739168182.Spec : Prop :=
  ∀ n, P12219083070739168182.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P11067288392536043896

`∩[A000379(n+1), A013929(n+1)]`
-/

namespace A066428.P11067288392536043896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066428.P11067288392536043896

namespace A066428

/-- `∩[A000379(n+1), A013929(n+1)]` -/
def P11067288392536043896.Spec : Prop :=
  ∀ n, (P11067288392536043896.a n : ℤ) = A066428 (n + 1)

end A066428

/-! ## A066428.P16208603245167637217

`∩[A000379(n+1), A080756(n+1)]`
-/

namespace A066428.P16208603245167637217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066428.P16208603245167637217

namespace A066428

/-- `∩[A000379(n+1), A080756(n+1)]` -/
def P16208603245167637217.Spec : Prop :=
  ∀ n, (P16208603245167637217.a n : ℤ) = A066428 (n + 1)

end A066428

/-! ## A066428.P15769359518795964180

`filter[A363597(n+2), A359464(#)]`
-/

namespace A066428.P15769359518795964180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A066428.P15769359518795964180

namespace A066428

/-- `filter[A363597(n+2), A359464(#)]` -/
def P15769359518795964180.Spec : Prop :=
  ∀ n, P15769359518795964180.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P17359244489357710923

`filter[A088610(2*(n+1)), A359464(#)]`
-/

namespace A066428.P17359244489357710923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A066428.P17359244489357710923

namespace A066428

/-- `filter[A088610(2*(n+1)), A359464(#)]` -/
def P17359244489357710923.Spec : Prop :=
  ∀ n, P17359244489357710923.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P17958995951569745135

`filter[A000379(n+1), A107078(#)]`
-/

namespace A066428.P17958995951569745135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A066428.P17958995951569745135

namespace A066428

/-- `filter[A000379(n+1), A107078(#)]` -/
def P17958995951569745135.Spec : Prop :=
  ∀ n, P17958995951569745135.a n = A066428 (n + 1)

end A066428

/-! ## A066428.P3137831885870854600

`eq[A007423(n+1), A064179(n+1)]+1`
-/

namespace A066428.P3137831885870854600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066428.P3137831885870854600

namespace A066428

/-- `eq[A007423(n+1), A064179(n+1)]+1` -/
def P3137831885870854600.Spec : Prop :=
  ∀ n, (P3137831885870854600.a n : ℤ) = A066428 (n + 1)

end A066428

/-! ## A066428.P17090223775010381190

`eq[A076544(n+1)², A064179(n+1)]+1`
-/

namespace A066428.P17090223775010381190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066428.P17090223775010381190

namespace A066428

/-- `eq[A076544(n+1)², A064179(n+1)]+1` -/
def P17090223775010381190.Spec : Prop :=
  ∀ n, (P17090223775010381190.a n : ℤ) = A066428 (n + 1)

end A066428

/-!
# A066429: a(n) = 7^n mod n^7.

The programs for A066429, the canonical program `A066429.P16012795310773591166` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066429 has offset 1).

The definition of A066429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066429.P16012795310773591166

`(7^(n+1))%((n+1)^7)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066429

/-- `(7^(n+1))%((n+1)^7)` -/
def P16012795310773591166.Spec : Prop :=
  ∀ n, (P16012795310773591166.a n : ℤ) = A066429 (n + 1)

theorem P16012795310773591166.correct : P16012795310773591166.Spec := by
  intro n
  simp only [A066429, Nat.add_sub_cancel]

end A066429

/-! ## A066429.P13288658959425487602

`∑{p}[10^n, #]^(n+1)`
-/

namespace A066429.P13288658959425487602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ (n + 1)

end

end A066429.P13288658959425487602

namespace A066429

/-- `∑{p}[10^n, #]^(n+1)` -/
def P13288658959425487602.Spec : Prop :=
  ∀ n, (P13288658959425487602.a n : ℤ) = A066429 (n + 1)

end A066429

/-!
# A066430: a(n) = 8^n mod n^8.

The programs for A066430, the canonical program `A066430.P16633168278982870177` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066430 has offset 1).

The definition of A066430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066430.P16633168278982870177

`(8^(n+1))%((n+1)^8)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066430

/-- `(8^(n+1))%((n+1)^8)` -/
def P16633168278982870177.Spec : Prop :=
  ∀ n, (P16633168278982870177.a n : ℤ) = A066430 (n + 1)

theorem P16633168278982870177.correct : P16633168278982870177.Spec := by
  intro n
  simp only [A066430, Nat.add_sub_cancel]

end A066430

/-! ## A066430.P12347607246547086309

`A005064(4^n)^(n+1)`
-/

namespace A066430.P12347607246547086309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (4 ^ n) ^ (n + 1)

end

end A066430.P12347607246547086309

namespace A066430

/-- `A005064(4^n)^(n+1)` -/
def P12347607246547086309.Spec : Prop :=
  ∀ n, P12347607246547086309.a n = A066430 (n + 1)

end A066430

/-! ## A066430.P8616229451085709608

`Δ[A369233((n+1)²)]^3`
-/

namespace A066430.P8616229451085709608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369233 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A066430.P8616229451085709608

namespace A066430

/-- `Δ[A369233((n+1)²)]^3` -/
def P8616229451085709608.Spec : Prop :=
  ∀ n, P8616229451085709608.a n = A066430 (n + 1)

end A066430

/-!
# A066431: a(n) = 9^n mod n^9.

The programs for A066431, the canonical program `A066431.P7504177309257866580` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066431 has offset 1).

The definition of A066431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066431.P7504177309257866580

`(9^(n+1))%((n+1)^9)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066431

/-- `(9^(n+1))%((n+1)^9)` -/
def P7504177309257866580.Spec : Prop :=
  ∀ n, (P7504177309257866580.a n : ℤ) = A066431 (n + 1)

theorem P7504177309257866580.correct : P7504177309257866580.Spec := by
  intro n
  simp only [A066431, Nat.add_sub_cancel]

end A066431

/-! ## A066431.P17627289151198824097

`Δ[A189120(3^n)]`
-/

namespace A066431.P17627289151198824097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189120 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066431.P17627289151198824097

namespace A066431

/-- `Δ[A189120(3^n)]` -/
def P17627289151198824097.Spec : Prop :=
  ∀ n, P17627289151198824097.a n = A066431 (n + 1)

end A066431

/-! ## A066431.P745200071501006522

`Δ[A023891(3^n)]²`
-/

namespace A066431.P745200071501006522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A066431.P745200071501006522

namespace A066431

/-- `Δ[A023891(3^n)]²` -/
def P745200071501006522.Spec : Prop :=
  ∀ n, P745200071501006522.a n = A066431 (n + 1)

end A066431

/-! ## A066431.P13907984712795972775

`Δ[A069214(3^n)]²`
-/

namespace A066431.P13907984712795972775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069214 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A066431.P13907984712795972775

namespace A066431

/-- `Δ[A069214(3^n)]²` -/
def P13907984712795972775.Spec : Prop :=
  ∀ n, P13907984712795972775.a n = A066431 (n + 1)

end A066431

/-!
# A066432: a(n) = 10^n mod n^10.

The programs for A066432, the canonical program `A066432.P15776913260726694301` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066432 has offset 1).

The definition of A066432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066432.P15776913260726694301

`(10^(n+1))%((n+1)^10)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066432

/-- `(10^(n+1))%((n+1)^10)` -/
def P15776913260726694301.Spec : Prop :=
  ∀ n, (P15776913260726694301.a n : ℤ) = A066432 (n + 1)

theorem P15776913260726694301.correct : P15776913260726694301.Spec := by
  intro n
  simp only [A066432, Nat.add_sub_cancel]

end A066432

/-! ## A066432.P7570056137275791197

`C(∏{p}[5^n, #], 2)^(n+1)`
-/

namespace A066432.P7570056137275791197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 2 ^ (n + 1)

end

end A066432.P7570056137275791197

namespace A066432

/-- `C(∏{p}[5^n, #], 2)^(n+1)` -/
def P7570056137275791197.Spec : Prop :=
  ∀ n, (P7570056137275791197.a n : ℤ) = A066432 (n + 1)

end A066432

/-! ## A066432.P7994257650689807466

`A048529(comp[10*n]+n)`
-/

namespace A066432.P7994257650689807466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048529 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A066432.P7994257650689807466

namespace A066432

/-- `A048529(comp[10*n]+n)` -/
def P7994257650689807466.Spec : Prop :=
  ∀ n, P7994257650689807466.a n = A066432 (n + 1)

end A066432

/-! ## A066432.P9796666627241167162

`10^n*10%A003200(n)`
-/

namespace A066432.P9796666627241167162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * Int.tmod 10 (A003200 n)

end

end A066432.P9796666627241167162

namespace A066432

/-- `10^n*10%A003200(n)` -/
def P9796666627241167162.Spec : Prop :=
  ∀ n, P9796666627241167162.a n = A066432 (n + 1)

end A066432

/-! ## A066432.P14879393608622075697

`A048365(A315952(n))`
-/

namespace A066432.P14879393608622075697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048365 (A315952 n).toNat

end

end A066432.P14879393608622075697

namespace A066432

/-- `A048365(A315952(n))` -/
def P14879393608622075697.Spec : Prop :=
  ∀ n, P14879393608622075697.a n = A066432 (n + 1)

end A066432

/-!
# A066434: a(n) = floor(Pi^n mod n^Pi).

The programs for A066434, there is no canonical definition to state claims against.
-/

/-! ## A066434.P16938534860216199508

`∑[A255530(n+1)]%((n+1)*Δ[n^3])`
-/

namespace A066434.P16938534860216199508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A066434.P16938534860216199508

/-!
# A066436: Primes of the form 2*n^2 - 1.

The programs for A066436, the canonical program `A066436.P14967679808844480665` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066436 has offset 1).

The definition of A066436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066436.P2000450252421940749

`2*A066049(n+1)²-1`
-/

namespace A066436.P2000450252421940749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066049 (n + 1) ^ 2 - 1

end

end A066436.P2000450252421940749

namespace A066436

/-- `2*A066049(n+1)²-1` -/
def P2000450252421940749.Spec : Prop :=
  ∀ n, P2000450252421940749.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P10952701562323598368

`A090697(n+1)²/2-1`
-/

namespace A066436.P10952701562323598368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090697 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A066436.P10952701562323598368

namespace A066436

/-- `A090697(n+1)²/2-1` -/
def P10952701562323598368.Spec : Prop :=
  ∀ n, P10952701562323598368.a n = (A066436 (n + 1) : ℚ)

end A066436

/-! ## A066436.P14967679808844480665

`∪[A090684(n+1), A264823(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066436

/-- `∪[A090684(n+1), A264823(n+1)]` -/
def P14967679808844480665.Spec : Prop :=
  ∀ n, (P14967679808844480665.a n : ℤ) = A066436 (n + 1)

theorem P14967679808844480665.correct : P14967679808844480665.Spec := by
  intro n
  simp only [A066436, Nat.add_sub_cancel]

end A066436

/-! ## A066436.P6745482869024652710

`A056220(A066049(n+1))`
-/

namespace A066436.P6745482869024652710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A066049 (n + 1)).toNat

end

end A066436.P6745482869024652710

namespace A066436

/-- `A056220(A066049(n+1))` -/
def P6745482869024652710.Spec : Prop :=
  ∀ n, P6745482869024652710.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P14686492354105825666

`A056220(A090697(n+1)/2)`
-/

namespace A066436.P14686492354105825666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.roundAway ((A090697 (n + 1) : ℚ) / 2)).toNat

end

end A066436.P14686492354105825666

namespace A066436

/-- `A056220(A090697(n+1)/2)` -/
def P14686492354105825666.Spec : Prop :=
  ∀ n, P14686492354105825666.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P9842853915610666379

`∩[A256917(n+1), A056220(n)]`
-/

namespace A066436.P9842853915610666379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P9842853915610666379

namespace A066436

/-- `∩[A256917(n+1), A056220(n)]` -/
def P9842853915610666379.Spec : Prop :=
  ∀ n, (P9842853915610666379.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P18114385343130280807

`A056220(A160697(n+2))`
-/

namespace A066436.P18114385343130280807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A160697 (n + 2)).toNat

end

end A066436.P18114385343130280807

namespace A066436

/-- `A056220(A160697(n+2))` -/
def P18114385343130280807.Spec : Prop :=
  ∀ n, P18114385343130280807.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P10421271398512617704

`∩[A155946(n+1), A256917(n+1)]`
-/

namespace A066436.P10421271398512617704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P10421271398512617704

namespace A066436

/-- `∩[A155946(n+1), A256917(n+1)]` -/
def P10421271398512617704.Spec : Prop :=
  ∀ n, (P10421271398512617704.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P7078217311872021967

`record[A059772(2*(n+2))]`
-/

namespace A066436.P7078217311872021967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066436.P7078217311872021967

namespace A066436

/-- `record[A059772(2*(n+2))]` -/
def P7078217311872021967.Spec : Prop :=
  ∀ n, P7078217311872021967.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P13007888303439600477

`record[A164314(2*(n+2))]`
-/

namespace A066436.P13007888303439600477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066436.P13007888303439600477

namespace A066436

/-- `record[A164314(2*(n+2))]` -/
def P13007888303439600477.Spec : Prop :=
  ∀ n, P13007888303439600477.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P11907205508315081981

`A047838(A090697(n+1))`
-/

namespace A066436.P11907205508315081981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A090697 (n + 1)).toNat

end

end A066436.P11907205508315081981

namespace A066436

/-- `A047838(A090697(n+1))` -/
def P11907205508315081981.Spec : Prop :=
  ∀ n, P11907205508315081981.a n = A066436 (n + 1)

end A066436

/-! ## A066436.P14561456760588900741

`∩[A074148(n+1), A256917(n+1)]`
-/

namespace A066436.P14561456760588900741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P14561456760588900741

namespace A066436

/-- `∩[A074148(n+1), A256917(n+1)]` -/
def P14561456760588900741.Spec : Prop :=
  ∀ n, (P14561456760588900741.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P8678035725097261030

`∩[A178218(n+1), A256917(n+1)]`
-/

namespace A066436.P8678035725097261030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P8678035725097261030

namespace A066436

/-- `∩[A178218(n+1), A256917(n+1)]` -/
def P8678035725097261030.Spec : Prop :=
  ∀ n, (P8678035725097261030.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P439084514247528235

`∩[A256917(n+1), A105638(n+3)]`
-/

namespace A066436.P439084514247528235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P439084514247528235

namespace A066436

/-- `∩[A256917(n+1), A105638(n+3)]` -/
def P439084514247528235.Spec : Prop :=
  ∀ n, (P439084514247528235.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P17554735043487212696

`∩[A144695(n+1), A256917(n+1)]`
-/

namespace A066436.P17554735043487212696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P17554735043487212696

namespace A066436

/-- `∩[A144695(n+1), A256917(n+1)]` -/
def P17554735043487212696.Spec : Prop :=
  ∀ n, (P17554735043487212696.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P16588878173723116338

`∩[A243009(n+1), A056220(n)]`
-/

namespace A066436.P16588878173723116338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P16588878173723116338

namespace A066436

/-- `∩[A243009(n+1), A056220(n)]` -/
def P16588878173723116338.Spec : Prop :=
  ∀ n, (P16588878173723116338.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P13820375053118337298

`∩[A243009(n+1), A128223(n)]`
-/

namespace A066436.P13820375053118337298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P13820375053118337298

namespace A066436

/-- `∩[A243009(n+1), A128223(n)]` -/
def P13820375053118337298.Spec : Prop :=
  ∀ n, (P13820375053118337298.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P8883729503907279444

`∩[A074148(n+1), A243009(n+1)]`
-/

namespace A066436.P8883729503907279444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P8883729503907279444

namespace A066436

/-- `∩[A074148(n+1), A243009(n+1)]` -/
def P8883729503907279444.Spec : Prop :=
  ∀ n, (P8883729503907279444.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P12018830056417097018

`∩[A144695(n+1), A243009(n+1)]`
-/

namespace A066436.P12018830056417097018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P12018830056417097018

namespace A066436

/-- `∩[A144695(n+1), A243009(n+1)]` -/
def P12018830056417097018.Spec : Prop :=
  ∀ n, (P12018830056417097018.a n : ℤ) = A066436 (n + 1)

end A066436

/-! ## A066436.P4498239057747482402

`∩[A155946(n+1), A243009(n+1)]`
-/

namespace A066436.P4498239057747482402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P4498239057747482402

namespace A066436

/-- `∩[A155946(n+1), A243009(n+1)]` -/
def P4498239057747482402.Spec : Prop :=
  ∀ n, (P4498239057747482402.a n : ℤ) = A066436 (n + 1)

end A066436

/-!
# A066437: a(n) = max_{k} {T(n,k)} where T(n,k) is the "phi/sigma tug-of-war sequence with seed n" defined by T(n,1) = phi(n), T(n,2) = sigma(phi(n)), T(n,3) = phi(sigma(phi(n))), ..., T(n,k) = phi(T(n,k-1)) if k is odd and = sigma(T(n,k-1)) if k is even.

The programs for A066437, there is no canonical definition to state claims against.
-/

/-! ## A066437.P16677105174257953282

`A096864(A062402(n+1))`
-/

namespace A066437.P16677105174257953282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A062402 (n + 1)).toNat

end

end A066437.P16677105174257953282

/-! ## A066437.P28395294129231568

`A096864(A015126(n+1))`
-/

namespace A066437.P28395294129231568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A015126 (n + 1)).toNat

end

end A066437.P28395294129231568

/-! ## A066437.P13265720150326547049

`A096864(∑{d}[A000010(n+1), #])`
-/

namespace A066437.P13265720150326547049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A066437.P13265720150326547049

/-! ## A066437.P2101202109444848951

`A096864(∑{d}[sqrt(A127473(n+1)), #])`
-/

namespace A066437.P2101202109444848951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A066437.P2101202109444848951

/-! ## A066437.P15421582165159278869

`A096864(A295302(n+1)+n+1)`
-/

namespace A066437.P15421582165159278869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A295302 (n + 1) + (n + 1 : ℤ)).toNat

end

end A066437.P15421582165159278869

/-! ## A066437.P12522017141712793600

`A096864(A000203(A000010(n+1)))`
-/

namespace A066437.P12522017141712793600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A000203 (A000010 (n + 1)).toNat).toNat

end

end A066437.P12522017141712793600

/-! ## A066437.P5427934456169893708

`A096864(A000203(sqrt(A127473(n+1))))`
-/

namespace A066437.P5427934456169893708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A000203 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat).toNat

end

end A066437.P5427934456169893708

/-!
# A066438: a(n) = 7^n mod n.

The programs for A066438, the canonical program `A066438.P4806805632813582493` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066438 has offset 1).

The definition of A066438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066438.P4806805632813582493

`A066429(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066438

/-- `A066429(n+1)%(n+1)` -/
def P4806805632813582493.Spec : Prop :=
  ∀ n, P4806805632813582493.a n = A066438 (n + 1)

theorem P4806805632813582493.correct : P4806805632813582493.Spec := by
  intro n
  simp only [A066438, Nat.add_sub_cancel]

end A066438

/-! ## A066438.P6067923273500258956

`A083530(n+1)%(n+1)`
-/

namespace A066438.P6067923273500258956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083530 (n + 1)) (n + 1 : ℤ)

end

end A066438.P6067923273500258956

namespace A066438

/-- `A083530(n+1)%(n+1)` -/
def P6067923273500258956.Spec : Prop :=
  ∀ n, P6067923273500258956.a n = A066438 (n + 1)

end A066438

/-! ## A066438.P16750291808119823287

`A191562(n+1)%(n+1)`
-/

namespace A066438.P16750291808119823287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191562 (n + 1)) (n + 1 : ℤ)

end

end A066438.P16750291808119823287

namespace A066438

/-- `A191562(n+1)%(n+1)` -/
def P16750291808119823287.Spec : Prop :=
  ∀ n, P16750291808119823287.a n = A066438 (n + 1)

end A066438

/-! ## A066438.P485623445561562169

`(7^((n+1)%A000010(n+1)))%(n+1)`
-/

namespace A066438.P485623445561562169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((7 : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A000010 (n + 1)) : ℤ))) (n + 1 : ℤ)

end

end A066438.P485623445561562169

namespace A066438

/-- `(7^((n+1)%A000010(n+1)))%(n+1)` -/
def P485623445561562169.Spec : Prop :=
  ∀ n, P485623445561562169.a n = A066438 (n + 1)

end A066438

/-! ## A066438.P1120028464535130548

`(7^A051953(n+1))%(n+1)`
-/

namespace A066438.P1120028464535130548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A051953 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A066438.P1120028464535130548

namespace A066438

/-- `(7^A051953(n+1))%(n+1)` -/
def P1120028464535130548.Spec : Prop :=
  ∀ n, P1120028464535130548.a n = A066438 (n + 1)

end A066438

/-! ## A066438.P5098021389335826175

`(7*(7^n)%(n+1))%(n+1)`
-/

namespace A066438.P5098021389335826175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (7 ^ n % (n + 1)) % (n + 1)

end

end A066438.P5098021389335826175

namespace A066438

/-- `(7*(7^n)%(n+1))%(n+1)` -/
def P5098021389335826175.Spec : Prop :=
  ∀ n, (P5098021389335826175.a n : ℤ) = A066438 (n + 1)

end A066438

/-! ## A066438.P12602614700604528046

`(7^(n+1))%(n+1)`
-/

namespace A066438.P12602614700604528046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1) % (n + 1)

end

end A066438.P12602614700604528046

namespace A066438

/-- `(7^(n+1))%(n+1)` -/
def P12602614700604528046.Spec : Prop :=
  ∀ n, (P12602614700604528046.a n : ℤ) = A066438 (n + 1)

end A066438

/-!
# A066439: a(n) = 8^n mod n.

The programs for A066439, the canonical program `A066439.P15596551957165423481` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066439 has offset 1).

The definition of A066439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066439.P15596551957165423481

`A066430(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066439

/-- `A066430(n+1)%(n+1)` -/
def P15596551957165423481.Spec : Prop :=
  ∀ n, P15596551957165423481.a n = A066439 (n + 1)

theorem P15596551957165423481.correct : P15596551957165423481.Spec := by
  intro n
  simp only [A066439, Nat.add_sub_cancel]

end A066439

/-! ## A066439.P10642011946076455227

`A015910(3*(n+1))%(n+1)`
-/

namespace A066439.P10642011946076455227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (3 * (n + 1))) (n + 1 : ℤ)

end

end A066439.P10642011946076455227

namespace A066439

/-- `A015910(3*(n+1))%(n+1)` -/
def P10642011946076455227.Spec : Prop :=
  ∀ n, P10642011946076455227.a n = A066439 (n + 1)

end A066439

/-! ## A066439.P10217787445435886088

`A066606(3*(n+1))%(n+1)`
-/

namespace A066439.P10217787445435886088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066606 (3 * (n + 1))) (n + 1 : ℤ)

end

end A066439.P10217787445435886088

namespace A066439

/-- `A066606(3*(n+1))%(n+1)` -/
def P10217787445435886088.Spec : Prop :=
  ∀ n, P10217787445435886088.a n = A066439 (n + 1)

end A066439

/-! ## A066439.P4869643702636992529

`(A096196(3*(n+1))+n)%(n+1)`
-/

namespace A066439.P4869643702636992529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096196 (3 * (n + 1)) + (n : ℤ)) (n + 1 : ℤ)

end

end A066439.P4869643702636992529

namespace A066439

/-- `(A096196(3*(n+1))+n)%(n+1)` -/
def P4869643702636992529.Spec : Prop :=
  ∀ n, P4869643702636992529.a n = A066439 (n + 1)

end A066439

/-! ## A066439.P13665361472779274047

`(((2^(n+1))%(n+1))^3)%(n+1)`
-/

namespace A066439.P13665361472779274047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) % (n + 1)) ^ 3 % (n + 1)

end

end A066439.P13665361472779274047

namespace A066439

/-- `(((2^(n+1))%(n+1))^3)%(n+1)` -/
def P13665361472779274047.Spec : Prop :=
  ∀ n, (P13665361472779274047.a n : ℤ) = A066439 (n + 1)

end A066439

/-! ## A066439.P3517508370660613833

`(8^(n+1))%(n+1)`
-/

namespace A066439.P3517508370660613833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n + 1) % (n + 1)

end

end A066439.P3517508370660613833

namespace A066439

/-- `(8^(n+1))%(n+1)` -/
def P3517508370660613833.Spec : Prop :=
  ∀ n, (P3517508370660613833.a n : ℤ) = A066439 (n + 1)

end A066439

/-! ## A066439.P3025761140967295554

`abs(A122803(2*n+n+3)%(n+1))`
-/

namespace A066439.P3025761140967295554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (2 * n + (n + 3))) (n + 1 : ℤ)|

end

end A066439.P3025761140967295554

namespace A066439

/-- `abs(A122803(2*n+n+3)%(n+1))` -/
def P3025761140967295554.Spec : Prop :=
  ∀ n, P3025761140967295554.a n = A066439 (n + 1)

end A066439

/-! ## A066439.P2386481005045955067

`n-A163383(3*(n+1))%(n+1)`
-/

namespace A066439.P2386481005045955067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A163383 (3 * (n + 1))) (n + 1 : ℤ)

end

end A066439.P2386481005045955067

namespace A066439

/-- `n-A163383(3*(n+1))%(n+1)` -/
def P2386481005045955067.Spec : Prop :=
  ∀ n, P2386481005045955067.a n = A066439 (n + 1)

end A066439

/-!
# A066440: a(n) = 9^n mod n.

The programs for A066440, the canonical program `A066440.P8418293446252948467` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066440 has offset 1).

The definition of A066440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066440.P8418293446252948467

`A066431(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066440

/-- `A066431(n+1)%(n+1)` -/
def P8418293446252948467.Spec : Prop :=
  ∀ n, P8418293446252948467.a n = A066440 (n + 1)

theorem P8418293446252948467.correct : P8418293446252948467.Spec := by
  intro n
  simp only [A066440, Nat.add_sub_cancel]

end A066440

/-! ## A066440.P17974832093472042581

`A066601(n+1)²%(n+1)`
-/

namespace A066440.P17974832093472042581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066601 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066440.P17974832093472042581

namespace A066440

/-- `A066601(n+1)²%(n+1)` -/
def P17974832093472042581.Spec : Prop :=
  ∀ n, P17974832093472042581.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P4366454276913530913

`A082511(n+1)²%(n+1)`
-/

namespace A066440.P4366454276913530913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082511 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A066440.P4366454276913530913

namespace A066440

/-- `A082511(n+1)²%(n+1)` -/
def P4366454276913530913.Spec : Prop :=
  ∀ n, P4366454276913530913.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P13193725903207061919

`A017077(A094924(n+1))%(n+1)`
-/

namespace A066440.P13193725903207061919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017077 (A094924 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066440.P13193725903207061919

namespace A066440

/-- `A017077(A094924(n+1))%(n+1)` -/
def P13193725903207061919.Spec : Prop :=
  ∀ n, P13193725903207061919.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P2660737001352436498

`A000290(A066601(n+1))%A000027(n+1)`
-/

namespace A066440.P2660737001352436498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A066601 (n + 1)).toNat) (A000027 (n + 1))

end

end A066440.P2660737001352436498

namespace A066440

/-- `A000290(A066601(n+1))%A000027(n+1)` -/
def P2660737001352436498.Spec : Prop :=
  ∀ n, P2660737001352436498.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P16873833002275622954

`A066601(2*(n+1))%(n+1)`
-/

namespace A066440.P16873833002275622954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066601 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066440.P16873833002275622954

namespace A066440

/-- `A066601(2*(n+1))%(n+1)` -/
def P16873833002275622954.Spec : Prop :=
  ∀ n, P16873833002275622954.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P22778190689743994

`A066607(2*(n+1))%(n+1)`
-/

namespace A066440.P22778190689743994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066440.P22778190689743994

namespace A066440

/-- `A066607(2*(n+1))%(n+1)` -/
def P22778190689743994.Spec : Prop :=
  ∀ n, P22778190689743994.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P11856828291830967424

`A082511(2*(n+1))%(n+1)`
-/

namespace A066440.P11856828291830967424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082511 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066440.P11856828291830967424

namespace A066440

/-- `A082511(2*(n+1))%(n+1)` -/
def P11856828291830967424.Spec : Prop :=
  ∀ n, P11856828291830967424.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P15646947731213971548

`A233471(2*(n+1))%(n+1)`
-/

namespace A066440.P15646947731213971548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233471 (2 * (n + 1))) (n + 1 : ℤ)

end

end A066440.P15646947731213971548

namespace A066440

/-- `A233471(2*(n+1))%(n+1)` -/
def P15646947731213971548.Spec : Prop :=
  ∀ n, P15646947731213971548.a n = A066440 (n + 1)

end A066440

/-! ## A066440.P9687660349992442774

`(3*(3^n)%(n+1))²%(n+1)`
-/

namespace A066440.P9687660349992442774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (3 ^ n % (n + 1))) ^ 2 % (n + 1)

end

end A066440.P9687660349992442774

namespace A066440

/-- `(3*(3^n)%(n+1))²%(n+1)` -/
def P9687660349992442774.Spec : Prop :=
  ∀ n, (P9687660349992442774.a n : ℤ) = A066440 (n + 1)

end A066440

/-! ## A066440.P3617700747059719439

`((3^(n+1))%(n+1))²%(n+1)`
-/

namespace A066440.P3617700747059719439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) % (n + 1)) ^ 2 % (n + 1)

end

end A066440.P3617700747059719439

namespace A066440

/-- `((3^(n+1))%(n+1))²%(n+1)` -/
def P3617700747059719439.Spec : Prop :=
  ∀ n, (P3617700747059719439.a n : ℤ) = A066440 (n + 1)

end A066440

/-! ## A066440.P1115486426012071887

`(9^(n+1))%(n+1)`
-/

namespace A066440.P1115486426012071887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (n + 1) % (n + 1)

end

end A066440.P1115486426012071887

namespace A066440

/-- `(9^(n+1))%(n+1)` -/
def P1115486426012071887.Spec : Prop :=
  ∀ n, (P1115486426012071887.a n : ℤ) = A066440 (n + 1)

end A066440

/-!
# A066441: a(n) = 11^n mod n.

The programs for A066441, the canonical program `A066441.P7694382468054374169` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066441 has offset 1).

The definition of A066441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066441.P7694382468054374169

`A066444(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066441

/-- `A066444(n+1)%(n+1)` -/
def P7694382468054374169.Spec : Prop :=
  ∀ n, P7694382468054374169.a n = A066441 (n + 1)

theorem P7694382468054374169.correct : P7694382468054374169.Spec := by
  intro n
  simp only [A066441, Nat.add_sub_cancel]

end A066441

/-! ## A066441.P17150168292826048851

`A060154(A000217(n+10)+11)`
-/

namespace A066441.P17150168292826048851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (A000217 (n + 10) + 11).toNat

end

end A066441.P17150168292826048851

namespace A066441

/-- `A060154(A000217(n+10)+11)` -/
def P17150168292826048851.Spec : Prop :=
  ∀ n, P17150168292826048851.a n = A066441 (n + 1)

end A066441

/-! ## A066441.P15947786321128710794

`(11^(n+1))%(n+1)`
-/

namespace A066441.P15947786321128710794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (n + 1) % (n + 1)

end

end A066441.P15947786321128710794

namespace A066441

/-- `(11^(n+1))%(n+1)` -/
def P15947786321128710794.Spec : Prop :=
  ∀ n, (P15947786321128710794.a n : ℤ) = A066441 (n + 1)

end A066441

/-! ## A066441.P3361592824584409624

`abs(A024129(n+1)%(Δ[n²]-n))`
-/

namespace A066441.P3361592824584409624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A024129 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A066441.P3361592824584409624

namespace A066441

/-- `abs(A024129(n+1)%(Δ[n²]-n))` -/
def P3361592824584409624.Spec : Prop :=
  ∀ n, P3361592824584409624.a n = A066441 (n + 1)

end A066441

/-! ## A066441.P11324595794215330410

`A118759(A001020(n+1)%(n+1))`
-/

namespace A066441.P11324595794215330410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A001020 (n + 1)) (n + 1 : ℤ)).toNat

end

end A066441.P11324595794215330410

namespace A066441

/-- `A118759(A001020(n+1)%(n+1))` -/
def P11324595794215330410.Spec : Prop :=
  ∀ n, P11324595794215330410.a n = A066441 (n + 1)

end A066441

/-!
# A066442: a(n) = 12^n mod n.

The programs for A066442, the canonical program `A066442.P8117985566055055991` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066442 has offset 1).

The definition of A066442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066442.P14533397414495939152

`A066445(n+1)%(n+1)`
-/

namespace A066442.P14533397414495939152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066445 (n + 1)) (n + 1 : ℤ)

end

end A066442.P14533397414495939152

namespace A066442

/-- `A066445(n+1)%(n+1)` -/
def P14533397414495939152.Spec : Prop :=
  ∀ n, P14533397414495939152.a n = A066442 (n + 1)

end A066442

/-! ## A066442.P8117985566055055991

`(A015910(n+1)*A066604(n+1))%(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066442

/-- `(A015910(n+1)*A066604(n+1))%(n+1)` -/
def P8117985566055055991.Spec : Prop :=
  ∀ n, P8117985566055055991.a n = A066442 (n + 1)

theorem P8117985566055055991.correct : P8117985566055055991.Spec := by
  intro n
  simp only [A066442, Nat.add_sub_cancel]

end A066442

/-! ## A066442.P7090165097538367194

`(A066601(n+1)*A066602(n+1))%(n+1)`
-/

namespace A066442.P7090165097538367194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066601 (n + 1) * A066602 (n + 1)) (n + 1 : ℤ)

end

end A066442.P7090165097538367194

namespace A066442

/-- `(A066601(n+1)*A066602(n+1))%(n+1)` -/
def P7090165097538367194.Spec : Prop :=
  ∀ n, P7090165097538367194.a n = A066442 (n + 1)

end A066442

/-! ## A066442.P5415471505850852491

`(A066604(n+1)*A066606(n+1))%(n+1)`
-/

namespace A066442.P5415471505850852491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066604 (n + 1) * A066606 (n + 1)) (n + 1 : ℤ)

end

end A066442.P5415471505850852491

namespace A066442

/-- `(A066604(n+1)*A066606(n+1))%(n+1)` -/
def P5415471505850852491.Spec : Prop :=
  ∀ n, P5415471505850852491.a n = A066442 (n + 1)

end A066442

/-! ## A066442.P7724232607874348018

`(3^(n+1)*A015943(n+1))%(n+1)`
-/

namespace A066442.P7724232607874348018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ (n + 1) : ℤ) * A015943 (n + 1)) (n + 1 : ℤ)

end

end A066442.P7724232607874348018

namespace A066442

/-- `(3^(n+1)*A015943(n+1))%(n+1)` -/
def P7724232607874348018.Spec : Prop :=
  ∀ n, P7724232607874348018.a n = A066442 (n + 1)

end A066442

/-! ## A066442.P1568364081215557498

`(12*(12^n)%(n+1))%(n+1)`
-/

namespace A066442.P1568364081215557498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (12 ^ n % (n + 1)) % (n + 1)

end

end A066442.P1568364081215557498

namespace A066442

/-- `(12*(12^n)%(n+1))%(n+1)` -/
def P1568364081215557498.Spec : Prop :=
  ∀ n, (P1568364081215557498.a n : ℤ) = A066442 (n + 1)

end A066442

/-! ## A066442.P352922937544455410

`(12^(n+1))%(n+1)`
-/

namespace A066442.P352922937544455410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (n + 1) % (n + 1)

end

end A066442.P352922937544455410

namespace A066442

/-- `(12^(n+1))%(n+1)` -/
def P352922937544455410.Spec : Prop :=
  ∀ n, (P352922937544455410.a n : ℤ) = A066442 (n + 1)

end A066442

/-!
# A066443: Number of distinct paths of length 2n+1 along edges of a unit cube between two fixed adjacent vertices.

The programs for A066443, the canonical program `A066443.P4391103697561392204` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066443 has offset 0).

The definition of A066443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066443.P4391103697561392204

`9*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066443

/-- `9*a(n-1)-2` -/
def P4391103697561392204.Spec : Prop :=
  ∀ n, P4391103697561392204.a n = A066443 n

theorem P4391103697561392204.correct : P4391103697561392204.Spec := by
  intro n
  simp only [A066443]

end A066443

/-! ## A066443.P5519562469334544633

`(3^(2*n+1)+1)/4`
-/

namespace A066443.P5519562469334544633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (2 * n + 1) + 1 : ℚ) / 4

end

end A066443.P5519562469334544633

namespace A066443

/-- `(3^(2*n+1)+1)/4` -/
def P5519562469334544633.Spec : Prop :=
  ∀ n, P5519562469334544633.a n = (A066443 n : ℚ)

theorem P5519562469334544633.correct : P5519562469334544633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A066443, Nat.add_sub_cancel, A066443.P5519562469334544633.a, A066443.P4391103697561392204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A066443, Nat.add_sub_cancel, A066443.P5519562469334544633.a, A066443.P4391103697561392204.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066443

/-! ## A066443.P6981577500079258594

`A054880(n)+1`
-/

namespace A066443.P6981577500079258594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054880 n + 1

end

end A066443.P6981577500079258594

namespace A066443

/-- `A054880(n)+1` -/
def P6981577500079258594.Spec : Prop :=
  ∀ n, P6981577500079258594.a n = A066443 n

end A066443

/-! ## A066443.P10971935972826940306

`6*A002452(n)+1`
-/

namespace A066443.P10971935972826940306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002452 n + 1

end

end A066443.P10971935972826940306

namespace A066443

/-- `6*A002452(n)+1` -/
def P10971935972826940306.Spec : Prop :=
  ∀ n, P10971935972826940306.a n = A066443 n

end A066443

/-! ## A066443.P16862781012686083341

`A057660(3^n)`
-/

namespace A066443.P16862781012686083341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (3 ^ n)

end

end A066443.P16862781012686083341

namespace A066443

/-- `A057660(3^n)` -/
def P16862781012686083341.Spec : Prop :=
  ∀ n, P16862781012686083341.a n = A066443 n

end A066443

/-! ## A066443.P11446410994702152164

`record[∑[(-3)^n]]`
-/

namespace A066443.P11446410994702152164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066443.P11446410994702152164

namespace A066443

/-- `record[∑[(-3)^n]]` -/
def P11446410994702152164.Spec : Prop :=
  ∀ n, P11446410994702152164.a n = A066443 n

end A066443

/-! ## A066443.P9668224142435828316

`ogf((1-3x)/(1-10x+9x^2))`
-/

namespace A066443.P9668224142435828316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -10, 9] n

end

end A066443.P9668224142435828316

namespace A066443

/-- `ogf((1-3x)/(1-10x+9x^2))` -/
def P9668224142435828316.Spec : Prop :=
  ∀ n, P9668224142435828316.a n = A066443 n

end A066443

/-! ## A066443.P17938923124240791683

`lcm(9, a(n-1))-2` with `a(0)=1`
-/

namespace A066443.P17938923124240791683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 2

end

end A066443.P17938923124240791683

namespace A066443

/-- `lcm(9, a(n-1))-2` -/
def P17938923124240791683.Spec : Prop :=
  ∀ n, P17938923124240791683.a n = A066443 n

end A066443

/-! ## A066443.P10244144401910073867

`round(3^or(1, 2*n)/4)`
-/

namespace A066443.P10244144401910073867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ Nat.lor 1 (2 * n) : ℚ) / 4)

end

end A066443.P10244144401910073867

namespace A066443

/-- `round(3^or(1, 2*n)/4)` -/
def P10244144401910073867.Spec : Prop :=
  ∀ n, P10244144401910073867.a n = A066443 n

end A066443

/-! ## A066443.P7793639732945891978

`round(3^xor(1, 2*n)/4)`
-/

namespace A066443.P7793639732945891978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ Nat.xor 1 (2 * n) : ℚ) / 4)

end

end A066443.P7793639732945891978

namespace A066443

/-- `round(3^xor(1, 2*n)/4)` -/
def P7793639732945891978.Spec : Prop :=
  ∀ n, P7793639732945891978.a n = A066443 n

end A066443

/-! ## A066443.P10534300611407800245

`or(1, floor(3/4*9^n))`
-/

namespace A066443.P10534300611407800245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(3 : ℚ) / 4 * (9 ^ n : ℚ)⌋

end

end A066443.P10534300611407800245

namespace A066443

/-- `or(1, floor(3/4*9^n))` -/
def P10534300611407800245.Spec : Prop :=
  ∀ n, P10534300611407800245.a n = A066443 n

end A066443

/-! ## A066443.P8962113431099249578

`a(n-1)/(1/3)²-2` with `a(0)=1`
-/

namespace A066443.P8962113431099249578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 2

end

end A066443.P8962113431099249578

namespace A066443

/-- `a(n-1)/(1/3)²-2` -/
def P8962113431099249578.Spec : Prop :=
  ∀ n, P8962113431099249578.a n = (A066443 n : ℚ)

end A066443

/-! ## A066443.P3501707096905688021

`∑[A092810(n)]`
-/

namespace A066443.P3501707096905688021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066443.P3501707096905688021

namespace A066443

/-- `∑[A092810(n)]` -/
def P3501707096905688021.Spec : Prop :=
  ∀ n, P3501707096905688021.a n = A066443 n

end A066443

/-! ## A066443.P6216269404671469503

`A014983(Δ[n²])`
-/

namespace A066443.P6216269404671469503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066443.P6216269404671469503

namespace A066443

/-- `A014983(Δ[n²])` -/
def P6216269404671469503.Spec : Prop :=
  ∀ n, P6216269404671469503.a n = A066443 n

end A066443

/-! ## A066443.P5779275115443044111

`A015518(Δ[n²])`
-/

namespace A066443.P5779275115443044111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066443.P5779275115443044111

namespace A066443

/-- `A015518(Δ[n²])` -/
def P5779275115443044111.Spec : Prop :=
  ∀ n, P5779275115443044111.a n = A066443 n

end A066443

/-! ## A066443.P8636387262708001728

`A122983(Δ[n²])`
-/

namespace A066443.P8636387262708001728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066443.P8636387262708001728

namespace A066443

/-- `A122983(Δ[n²])` -/
def P8636387262708001728.Spec : Prop :=
  ∀ n, P8636387262708001728.a n = A066443 n

end A066443

/-! ## A066443.P9357919667400055167

`A167205(Δ[n²])`
-/

namespace A066443.P9357919667400055167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066443.P9357919667400055167

namespace A066443

/-- `A167205(Δ[n²])` -/
def P9357919667400055167.Spec : Prop :=
  ∀ n, P9357919667400055167.a n = A066443 n

end A066443

/-! ## A066443.P2234613036775722931

`A382171(Δ[n²])`
-/

namespace A066443.P2234613036775722931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066443.P2234613036775722931

namespace A066443

/-- `A382171(Δ[n²])` -/
def P2234613036775722931.Spec : Prop :=
  ∀ n, P2234613036775722931.a n = A066443 n

end A066443

/-! ## A066443.P497979400584132294

`∑[A025192(2*n)]`
-/

namespace A066443.P497979400584132294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066443.P497979400584132294

namespace A066443

/-- `∑[A025192(2*n)]` -/
def P497979400584132294.Spec : Prop :=
  ∀ n, P497979400584132294.a n = A066443 n

end A066443

/-! ## A066443.P8736136508024435711

`∑[A182522(4*n)]`
-/

namespace A066443.P8736136508024435711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066443.P8736136508024435711

namespace A066443

/-- `∑[A182522(4*n)]` -/
def P8736136508024435711.Spec : Prop :=
  ∀ n, P8736136508024435711.a n = A066443 n

end A066443

/-!
# A066444: a(n) = 11^n mod n^11.

The programs for A066444, the canonical program `A066444.P1706152699882441895` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066444 has offset 1).

The definition of A066444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066444.P1706152699882441895

`(11^(n+1))%((n+1)^11)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066444

/-- `(11^(n+1))%((n+1)^11)` -/
def P1706152699882441895.Spec : Prop :=
  ∀ n, (P1706152699882441895.a n : ℤ) = A066444 (n + 1)

theorem P1706152699882441895.correct : P1706152699882441895.Spec := by
  intro n
  simp only [A066444, Nat.add_sub_cancel]

end A066444

/-! ## A066444.P12847650854230210771

`11^(a(floor(n/10))+n+1)` with `a(0)=0`
-/

namespace A066444.P12847650854230210771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  11 ^ (a ⌊(n : ℚ) / 10⌋.toNat + n + 1)

end

end A066444.P12847650854230210771

namespace A066444

/-- `11^(a(floor(n/10))+n+1)` -/
def P12847650854230210771.Spec : Prop :=
  ∀ n, (P12847650854230210771.a n : ℤ) = A066444 (n + 1)

end A066444

/-! ## A066444.P2667058261748999631

`(a(n-∑{digits}[n, #])+11)^(n+1)` with `a(0)=0`
-/

namespace A066444.P2667058261748999631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + 11) ^ (n + 1)

end

end A066444.P2667058261748999631

namespace A066444

/-- `(a(n-∑{digits}[n, #])+11)^(n+1)` -/
def P2667058261748999631.Spec : Prop :=
  ∀ n, (P2667058261748999631.a n : ℤ) = A066444 (n + 1)

end A066444

/-! ## A066444.P5649451827188423778

`11^A111705(n+1)*ceil(n/63)`
-/

namespace A066444.P5649451827188423778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A111705 (n + 1) : ℤ) * (⌈(n : ℚ) / 63⌉ : ℚ)

end

end A066444.P5649451827188423778

namespace A066444

/-- `11^A111705(n+1)*ceil(n/63)` -/
def P5649451827188423778.Spec : Prop :=
  ∀ n, P5649451827188423778.a n = (A066444 (n + 1) : ℚ)

end A066444

/-! ## A066444.P15383241869607761511

`11^(A323522(n)^a(n-1)+n)` with `a(0)=0`
-/

namespace A066444.P15383241869607761511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (11 : ℝ) ^ ((A323522 n : ℝ) ^ (a (n - 1)) + (n : ℝ))

end

end A066444.P15383241869607761511

namespace A066444

/-- `11^(A323522(n)^a(n-1)+n)` -/
def P15383241869607761511.Spec : Prop :=
  ∀ n, P15383241869607761511.a n = (A066444 (n + 1) : ℝ)

end A066444

/-!
# A066445: a(n) = 12^n mod n^12.

The programs for A066445, the canonical program `A066445.P14926757954162944365` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066445 has offset 1).

The definition of A066445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066445.P14926757954162944365

`(12^(n+1))%((n+1)^12)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066445

/-- `(12^(n+1))%((n+1)^12)` -/
def P14926757954162944365.Spec : Prop :=
  ∀ n, (P14926757954162944365.a n : ℤ) = A066445 (n + 1)

theorem P14926757954162944365.correct : P14926757954162944365.Spec := by
  intro n
  simp only [A066445, Nat.add_sub_cancel]

end A066445

/-! ## A066445.P14569284080474455483

`and(12^(A062399(n)+1), or(2, -n))`
-/

namespace A066445.P14569284080474455483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((12 : ℚ) ^ (A062399 n + 1 : ℤ))) (Int.lor 2 (-(n : ℤ)))

end

end A066445.P14569284080474455483

namespace A066445

/-- `and(12^(A062399(n)+1), or(2, -n))` -/
def P14569284080474455483.Spec : Prop :=
  ∀ n, P14569284080474455483.a n = A066445 (n + 1)

end A066445

/-! ## A066445.P7969384179260633928

`and(-n, A001021(A061497(n+1)))`
-/

namespace A066445.P7969384179260633928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A001021 (A061497 (n + 1)).toNat)

end

end A066445.P7969384179260633928

namespace A066445

/-- `and(-n, A001021(A061497(n+1)))` -/
def P7969384179260633928.Spec : Prop :=
  ∀ n, P7969384179260633928.a n = A066445 (n + 1)

end A066445

/-! ## A066445.P7308267506609003998

`A135453(A318405(∑[n]))^(n+1)`
-/

namespace A066445.P7308267506609003998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (A318405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat ^ (n + 1)

end

end A066445.P7308267506609003998

namespace A066445

/-- `A135453(A318405(∑[n]))^(n+1)` -/
def P7308267506609003998.Spec : Prop :=
  ∀ n, P7308267506609003998.a n = A066445 (n + 1)

end A066445

/-! ## A066445.P11525182932357463438

`A061395(3^n)*A067419(n+1)`
-/

namespace A066445.P11525182932357463438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (3 ^ n) * A067419 (n + 1)

end

end A066445.P11525182932357463438

namespace A066445

/-- `A061395(3^n)*A067419(n+1)` -/
def P11525182932357463438.Spec : Prop :=
  ∀ n, P11525182932357463438.a n = A066445 (n + 1)

end A066445

/-!
# A066446: Number of unordered divisor pairs of n.

The programs for A066446, the canonical program `A066446.P5739828571146208619` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066446 has offset 1).

The definition of A066446 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066446.P5739828571146208619

`A000217(A000005(n+1)-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066446

/-- `A000217(A000005(n+1)-1)` -/
def P5739828571146208619.Spec : Prop :=
  ∀ n, P5739828571146208619.a n = A066446 (n + 1)

theorem P5739828571146208619.correct : P5739828571146208619.Spec := by
  intro n
  simp only [A066446, Nat.add_sub_cancel]

end A066446

/-! ## A066446.P6668623098676147078

`A184389(n+1)-A000005(n+1)`
-/

namespace A066446.P6668623098676147078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A000005 (n + 1)

end

end A066446.P6668623098676147078

namespace A066446

/-- `A184389(n+1)-A000005(n+1)` -/
def P6668623098676147078.Spec : Prop :=
  ∀ n, P6668623098676147078.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P13259793063326454559

`A035116(n+1)-A184389(n+1)`
-/

namespace A066446.P13259793063326454559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A184389 (n + 1)

end

end A066446.P13259793063326454559

namespace A066446

/-- `A035116(n+1)-A184389(n+1)` -/
def P13259793063326454559.Spec : Prop :=
  ∀ n, P13259793063326454559.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P8454860972801944199

`C(∏{e}[n+1, #+1], 2)`
-/

namespace A066446.P8454860972801944199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) 2

end

end A066446.P8454860972801944199

namespace A066446

/-- `C(∏{e}[n+1, #+1], 2)` -/
def P8454860972801944199.Spec : Prop :=
  ∀ n, (P8454860972801944199.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P3306233317356098396

`C(∑{d}[n+1, gcd(n, #)], 2)`
-/

namespace A066446.P3306233317356098396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) 2

end

end A066446.P3306233317356098396

namespace A066446

/-- `C(∑{d}[n+1, gcd(n, #)], 2)` -/
def P3306233317356098396.Spec : Prop :=
  ∀ n, (P3306233317356098396.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P7704035819232332748

`C(Δ[A006218(n)], 2)`
-/

namespace A066446.P7704035819232332748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A066446.P7704035819232332748

namespace A066446

/-- `C(Δ[A006218(n)], 2)` -/
def P7704035819232332748.Spec : Prop :=
  ∀ n, (P7704035819232332748.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P9892268926378380442

`C(Δ[A054519(n)], 2)`
-/

namespace A066446.P9892268926378380442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A066446.P9892268926378380442

namespace A066446

/-- `C(Δ[A054519(n)], 2)` -/
def P9892268926378380442.Spec : Prop :=
  ∀ n, (P9892268926378380442.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P873543673654374102

`A337524(n+1)/2`
-/

namespace A066446.P873543673654374102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337524 (n + 1) : ℚ) / 2

end

end A066446.P873543673654374102

namespace A066446

/-- `A337524(n+1)/2` -/
def P873543673654374102.Spec : Prop :=
  ∀ n, P873543673654374102.a n = (A066446 (n + 1) : ℚ)

end A066446

/-! ## A066446.P8762638996667439588

`C(A000005(n+1), 2)`
-/

namespace A066446.P8762638996667439588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat 2

end

end A066446.P8762638996667439588

namespace A066446

/-- `C(A000005(n+1), 2)` -/
def P8762638996667439588.Spec : Prop :=
  ∀ n, (P8762638996667439588.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P17439922736126120250

`∑{d}[n+1, A063647(#)]`
-/

namespace A066446.P17439922736126120250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063647 d

end

end A066446.P17439922736126120250

namespace A066446

/-- `∑{d}[n+1, A063647(#)]` -/
def P17439922736126120250.Spec : Prop :=
  ∀ n, P17439922736126120250.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P2024104220664680761

`C(A032741(n+1)+1, 2)`
-/

namespace A066446.P2024104220664680761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032741 (n + 1) + 1).toNat 2

end

end A066446.P2024104220664680761

namespace A066446

/-- `C(A032741(n+1)+1, 2)` -/
def P2024104220664680761.Spec : Prop :=
  ∀ n, (P2024104220664680761.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P9168935698581500826

`C(A334954(n+1)-1, 2)`
-/

namespace A066446.P9168935698581500826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334954 (n + 1) - 1).toNat 2

end

end A066446.P9168935698581500826

namespace A066446

/-- `C(A334954(n+1)-1, 2)` -/
def P9168935698581500826.Spec : Prop :=
  ∀ n, (P9168935698581500826.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P6538011542472327731

`C(A320111(2*(n+1)), 2)`
-/

namespace A066446.P6538011542472327731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A320111 (2 * (n + 1))).toNat 2

end

end A066446.P6538011542472327731

namespace A066446

/-- `C(A320111(2*(n+1)), 2)` -/
def P6538011542472327731.Spec : Prop :=
  ∀ n, (P6538011542472327731.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P17005124013177958650

`C(A062011(n+1)/2, 2)`
-/

namespace A066446.P17005124013177958650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) / 2)).toNat 2

end

end A066446.P17005124013177958650

namespace A066446

/-- `C(A062011(n+1)/2, 2)` -/
def P17005124013177958650.Spec : Prop :=
  ∀ n, (P17005124013177958650.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P6628962579961929113

`C(A158907(n+1)-n, 2)`
-/

namespace A066446.P6628962579961929113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158907 (n + 1) - (n : ℤ)).toNat 2

end

end A066446.P6628962579961929113

namespace A066446

/-- `C(A158907(n+1)-n, 2)` -/
def P6628962579961929113.Spec : Prop :=
  ∀ n, (P6628962579961929113.a n : ℤ) = A066446 (n + 1)

end A066446

/-! ## A066446.P17185482948481928699

`A000217(A032741(n+1))`
-/

namespace A066446.P17185482948481928699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032741 (n + 1)).toNat

end

end A066446.P17185482948481928699

namespace A066446

/-- `A000217(A032741(n+1))` -/
def P17185482948481928699.Spec : Prop :=
  ∀ n, P17185482948481928699.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P7444852593504726493

`A080344(A035116(n+1))`
-/

namespace A066446.P7444852593504726493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 (A035116 (n + 1)).toNat

end

end A066446.P7444852593504726493

namespace A066446

/-- `A080344(A035116(n+1))` -/
def P7444852593504726493.Spec : Prop :=
  ∀ n, P7444852593504726493.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P15607288759314992982

`A001971(A114003(n+1))`
-/

namespace A066446.P15607288759314992982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A114003 (n + 1)).toNat

end

end A066446.P15607288759314992982

namespace A066446

/-- `A001971(A114003(n+1))` -/
def P15607288759314992982.Spec : Prop :=
  ∀ n, P15607288759314992982.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P4713683958163906252

`A161680(A000005(n+1))`
-/

namespace A066446.P4713683958163906252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A000005 (n + 1)).toNat

end

end A066446.P4713683958163906252

namespace A066446

/-- `A161680(A000005(n+1))` -/
def P4713683958163906252.Spec : Prop :=
  ∀ n, P4713683958163906252.a n = A066446 (n + 1)

end A066446

/-! ## A066446.P17850618043485187733

`A130519(A062011(n+1))`
-/

namespace A066446.P17850618043485187733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A062011 (n + 1)).toNat

end

end A066446.P17850618043485187733

namespace A066446

/-- `A130519(A062011(n+1))` -/
def P17850618043485187733.Spec : Prop :=
  ∀ n, P17850618043485187733.a n = A066446 (n + 1)

end A066446

/-!
# A066447: Number of basis partitions (or basic partitions) of n.

The programs for A066447, there is no canonical definition to state claims against.
-/

/-! ## A066447.P4943325260402207144

`A000726(n)-A350636(n)`
-/

namespace A066447.P4943325260402207144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A350636 n

end

end A066447.P4943325260402207144

/-! ## A066447.P6152559855663390095

`A339404(n)+A339405(n)-A350636(n)`
-/

namespace A066447.P6152559855663390095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 n + (A339405 n - A350636 n)

end

end A066447.P6152559855663390095

/-! ## A066447.P11192271360567848326

`A116634(n+3)-A116634(n)-A350636(n)`
-/

namespace A066447.P11192271360567848326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (n + 3) - A116634 n - A350636 n

end

end A066447.P11192271360567848326

/-! ## A066447.P486790704563405092

`A000041(n)-(A350636(n)+A295341(n))`
-/

namespace A066447.P486790704563405092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A350636 n + A295341 n)

end

end A066447.P486790704563405092

/-! ## A066447.P14458769745175567194

`A035385(2*n)-A350636(n)`
-/

namespace A066447.P14458769745175567194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n) - A350636 n

end

end A066447.P14458769745175567194

/-! ## A066447.P17888854551909240175

`A116633(A001840(n))-A350636(n)`
-/

namespace A066447.P17888854551909240175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat - A350636 n

end

end A066447.P17888854551909240175

/-! ## A066447.P405867334780262204

`A116633(A002264(∑[n+1]))-A350636(n)`
-/

namespace A066447.P405867334780262204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A350636 n

end

end A066447.P405867334780262204

/-! ## A066447.P868904588109467914

`A124094(∑[n+3])-A350636(n)`
-/

namespace A066447.P868904588109467914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (∑ j ∈ Finset.range (n + 1), f1 j) - A350636 n

end

end A066447.P868904588109467914

/-! ## A066447.P12353745094214729477

`A286653(Δ[A006503(n)])-A350636(n)`
-/

namespace A066447.P12353745094214729477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (f1 (n + 1) - f1 n).toNat - A350636 n

end

end A066447.P12353745094214729477

/-!
# A066448: Triangle T(n,k) giving number of basis partitions of n with a Durfee square of order k (n >= 0, 0 <= k <= n).

The programs for A066448, there is no canonical definition to state claims against.
-/

/-! ## A066448.P17329759817659742462

`A037135(A351870(2*(n+2)))*A187081(n)`
-/

namespace A066448.P17329759817659742462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037135 (A351870 (2 * (n + 2))).toNat * A187081 n

end

end A066448.P17329759817659742462

/-! ## A066448.P5121508175686702429

`(2-A320606(n+1))*A187081(n)`
-/

namespace A066448.P5121508175686702429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A320606 (n + 1)) * A187081 n

end

end A066448.P5121508175686702429

/-! ## A066448.P35487178459280280

`gcd(A004070(n), A320606(n+1))*A187081(n)`
-/

namespace A066448.P35487178459280280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004070 n) (A320606 (n + 1)) : ℤ) * A187081 n

end

end A066448.P35487178459280280

/-! ## A066448.P5104545458590927894

`A187081(n)+A187081(A334548(n))`
-/

namespace A066448.P5104545458590927894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187081 n + A187081 (A334548 n).toNat

end

end A066448.P5104545458590927894

/-! ## A066448.P7505179483591266803

`A124766(A046579(n+1))*A187081(n)`
-/

namespace A066448.P7505179483591266803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A046579 (n + 1)).toNat * A187081 n

end

end A066448.P7505179483591266803

/-!
# A066449: Binomial(n, phi(n)), where phi(n) is the Euler totient function.

The programs for A066449, the canonical program `A066449.P8482402725896442215` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066449 has offset 1).

The definition of A066449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066449.P3399822993803187743

`C(n+1, Δ[A002088(n)])`
-/

namespace A066449.P3399822993803187743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (f1 (n + 1) - f1 n).toNat

end

end A066449.P3399822993803187743

namespace A066449

/-- `C(n+1, Δ[A002088(n)])` -/
def P3399822993803187743.Spec : Prop :=
  ∀ n, (P3399822993803187743.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P3033222191504870265

`C(n+1, Δ[A005728(n)])`
-/

namespace A066449.P3033222191504870265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (f1 (n + 1) - f1 n).toNat

end

end A066449.P3033222191504870265

namespace A066449

/-- `C(n+1, Δ[A005728(n)])` -/
def P3033222191504870265.Spec : Prop :=
  ∀ n, (P3033222191504870265.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P9654026996421711576

`C(n+1, A000010(n+1))`
-/

namespace A066449.P9654026996421711576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A000010 (n + 1)).toNat

end

end A066449.P9654026996421711576

namespace A066449

/-- `C(n+1, A000010(n+1))` -/
def P9654026996421711576.Spec : Prop :=
  ∀ n, (P9654026996421711576.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P60493202680403914

`C(n+1, A051953(n+1))`
-/

namespace A066449.P60493202680403914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A051953 (n + 1)).toNat

end

end A066449.P60493202680403914

namespace A066449

/-- `C(n+1, A051953(n+1))` -/
def P60493202680403914.Spec : Prop :=
  ∀ n, (P60493202680403914.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P12091710202513986599

`C(n+1, A109606(n+1)+1)`
-/

namespace A066449.P12091710202513986599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A109606 (n + 1) + 1).toNat

end

end A066449.P12091710202513986599

namespace A066449

/-- `C(n+1, A109606(n+1)+1)` -/
def P12091710202513986599.Spec : Prop :=
  ∀ n, (P12091710202513986599.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P4507091963200190252

`C(n+1, A039649(n+1)-1)`
-/

namespace A066449.P4507091963200190252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A039649 (n + 1) - 1).toNat

end

end A066449.P4507091963200190252

namespace A066449

/-- `C(n+1, A039649(n+1)-1)` -/
def P4507091963200190252.Spec : Prop :=
  ∀ n, (P4507091963200190252.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P16372886307925150423

`C(n+1, A067541(2*n+1))`
-/

namespace A066449.P16372886307925150423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A067541 (2 * n + 1)).toNat

end

end A066449.P16372886307925150423

namespace A066449

/-- `C(n+1, A067541(2*n+1))` -/
def P16372886307925150423.Spec : Prop :=
  ∀ n, (P16372886307925150423.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P6659855494932150909

`C(n+1, A309563(2*n+1))`
-/

namespace A066449.P6659855494932150909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A309563 (2 * n + 1)).toNat

end

end A066449.P6659855494932150909

namespace A066449

/-- `C(n+1, A309563(2*n+1))` -/
def P6659855494932150909.Spec : Prop :=
  ∀ n, (P6659855494932150909.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P7731168754822060295

`C(n+1, A319700(2*(n+1)))`
-/

namespace A066449.P7731168754822060295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A319700 (2 * (n + 1))).toNat

end

end A066449.P7731168754822060295

namespace A066449

/-- `C(n+1, A319700(2*(n+1)))` -/
def P7731168754822060295.Spec : Prop :=
  ∀ n, (P7731168754822060295.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P9798169686585559111

`C(n+1, A349137(2*n+1))`
-/

namespace A066449.P9798169686585559111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A349137 (2 * n + 1)).toNat

end

end A066449.P9798169686585559111

namespace A066449

/-- `C(n+1, A349137(2*n+1))` -/
def P9798169686585559111.Spec : Prop :=
  ∀ n, (P9798169686585559111.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P8482402725896442215

`C(n+1, A089929(2*(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066449

/-- `C(n+1, A089929(2*(n+1)))` -/
def P8482402725896442215.Spec : Prop :=
  ∀ n, (P8482402725896442215.a n : ℤ) = A066449 (n + 1)

theorem P8482402725896442215.correct : P8482402725896442215.Spec := by
  intro n
  simp only [A066449, Nat.add_sub_cancel]

end A066449

/-! ## A066449.P14470179114271940381

`C(n+1, A282634(∑[n]+1))`
-/

namespace A066449.P14470179114271940381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A066449.P14470179114271940381

namespace A066449

/-- `C(n+1, A282634(∑[n]+1))` -/
def P14470179114271940381.Spec : Prop :=
  ∀ n, (P14470179114271940381.a n : ℤ) = A066449 (n + 1)

end A066449

/-! ## A066449.P5637550185401692822

`A007318(∑[n+1]+A000010(n+1))`
-/

namespace A066449.P5637550185401692822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000010 (n + 1)).toNat

end

end A066449.P5637550185401692822

namespace A066449

/-- `A007318(∑[n+1]+A000010(n+1))` -/
def P5637550185401692822.Spec : Prop :=
  ∀ n, P5637550185401692822.a n = A066449 (n + 1)

end A066449

/-! ## A066449.P2580246740548458629

`A007318(A000010(n+1)+(n+1)*(n+2)/2)`
-/

namespace A066449.P2580246740548458629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) + (n + 1 : ℚ) * ((n + 2 : ℚ) / 2))).toNat

end

end A066449.P2580246740548458629

namespace A066449

/-- `A007318(A000010(n+1)+(n+1)*(n+2)/2)` -/
def P2580246740548458629.Spec : Prop :=
  ∀ n, P2580246740548458629.a n = A066449 (n + 1)

end A066449

/-!
# A066450: 

The programs for A066450, there is no canonical definition to state claims against.
-/

/-! ## A066450.P17524460967183470981

`A060382(n+2)%A077408(n)`
-/

namespace A066450.P17524460967183470981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060382 (n + 2)) (A077408 n)

end

end A066450.P17524460967183470981

/-! ## A066450.P17233425232438352934

`filter[A060382(n+2), A014306(#)]`
-/

namespace A066450.P17233425232438352934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A066450.P17233425232438352934

/-! ## A066450.P2488110382957987268

`filter[A060382(n+2), A347523(#)]`
-/

namespace A066450.P2488110382957987268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A066450.P2488110382957987268

/-! ## A066450.P16520825578058614549

`filter[A060382(n+2), A130853(#)]`
-/

namespace A066450.P16520825578058614549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130853 (f1 j).toNat = 1) n)

end

end A066450.P16520825578058614549

/-! ## A066450.P17399269300417745385

`filter[A060382(n+2), A043545(#)]`
-/

namespace A066450.P17399269300417745385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A066450.P17399269300417745385

/-! ## A066450.P17251060515659395183

`filter[A060382(n+2), A072165(#)]`
-/

namespace A066450.P17251060515659395183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A066450.P17251060515659395183

/-! ## A066450.P4543226394901415924

`filter[A060382(n+2), A095792(#)]`
-/

namespace A066450.P4543226394901415924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A066450.P4543226394901415924

/-! ## A066450.P17886989547270684510

`filter[A060382(n+2), A103673(#)]`
-/

namespace A066450.P17886989547270684510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103673 (f1 j).toNat = 1) n)

end

end A066450.P17886989547270684510

/-! ## A066450.P10592798636257774703

`filter[A060382(n+2), A265186(#)]`
-/

namespace A066450.P10592798636257774703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A066450.P10592798636257774703

/-! ## A066450.P8968653739264486038

`filter[A060382(n+2), A267442(#)]`
-/

namespace A066450.P8968653739264486038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A066450.P8968653739264486038

/-! ## A066450.P14588831834857387276

`filter[A060382(n+2), A267579(#)]`
-/

namespace A066450.P14588831834857387276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A066450.P14588831834857387276

/-! ## A066450.P13481724633656321447

`filter[A060382(n+2), A267683(#)]`
-/

namespace A066450.P13481724633656321447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A066450.P13481724633656321447

/-! ## A066450.P2608952506162820264

`filter[A060382(n+2), A267773(#)]`
-/

namespace A066450.P2608952506162820264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A066450.P2608952506162820264

/-! ## A066450.P14067156473921729870

`filter[A060382(n+2), A267810(#)]`
-/

namespace A066450.P14067156473921729870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A066450.P14067156473921729870

/-! ## A066450.P7833597917418454521

`filter[A060382(n+2), A267813(#)]`
-/

namespace A066450.P7833597917418454521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A066450.P7833597917418454521

/-! ## A066450.P10593968717226473779

`filter[A060382(n+2), A267848(#)]`
-/

namespace A066450.P10593968717226473779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267848 (f1 j).toNat = 1) n)

end

end A066450.P10593968717226473779

/-! ## A066450.P3935321951716825314

`filter[A060382(n+2), A267866(#)]`
-/

namespace A066450.P3935321951716825314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267866 (f1 j).toNat = 1) n)

end

end A066450.P3935321951716825314

/-! ## A066450.P8591672233916759395

`filter[A060382(n+2), A288132(#)]`
-/

namespace A066450.P8591672233916759395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288132 (f1 j).toNat = 1) n)

end

end A066450.P8591672233916759395

/-! ## A066450.P6053460945701091235

`filter[A060382(n+2), A289057(#)]`
-/

namespace A066450.P6053460945701091235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289057 (f1 j).toNat = 1) n)

end

end A066450.P6053460945701091235

/-!
# A066451: a(n) is the number of integers k > 0 such that (n*k+1)/(k^2+1) is an integer.

The programs for A066451, there is no canonical definition to state claims against.
-/

/-! ## A066451.P10545918139045180758

`gcd(A144253(n+1), A193330(A066729(n+1)))`
-/

namespace A066451.P10545918139045180758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144253 (n + 1)) (A193330 (A066729 (n + 1)).toNat)

end

end A066451.P10545918139045180758

/-! ## A066451.P4744925503647739195

`∑{e}[A106446(3*(n+1))+1, A000010(#)]`
-/

namespace A066451.P4744925503647739195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106446 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A066451.P4744925503647739195

/-! ## A066451.P16256511265094014444

`gcd(A053347(n+1), A257089(n*(n+2)+2))`
-/

namespace A066451.P16256511265094014444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053347 (n + 1)) (A257089 (n * (n + 2) + 2))

end

end A066451.P16256511265094014444

/-! ## A066451.P12014461028375787008

`gcd(A001222((n+1)²+1), A042948(A097331(n)))`
-/

namespace A066451.P12014461028375787008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 ((n + 1) ^ 2 + 1)) (A042948 (A097331 n).toNat)

end

end A066451.P12014461028375787008

/-! ## A066451.P11169761290340104267

`A066099(A383013(2*n)+A095313(2*n+5))`
-/

namespace A066451.P11169761290340104267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A383013 (2 * n) + A095313 (2 * n + 5)).toNat

end

end A066451.P11169761290340104267

/-!
# A066452: Anti-phi(n).

The programs for A066452, there is no canonical definition to state claims against.
-/

/-! ## A066452.P15608177361251621561

`A034968(A027907(n)*A037019(n+1))`
-/

namespace A066452.P15608177361251621561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A027907 n * A037019 (n + 1)).toNat

end

end A066452.P15608177361251621561

/-!
# A066453: Number of 3-dimensional polyominoes (or polycubes) with n cells and trivial rotational symmetry group.

The programs for A066453, there is no canonical definition to state claims against.
-/

/-! ## A066453.P2384023043454107660

`A079684(xor(A001065(n+5), A073968(n+1)))`
-/

namespace A066453.P2384023043454107660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 (Int.xor (A001065 (n + 5)) (A073968 (n + 1))).toNat

end

end A066453.P2384023043454107660

/-! ## A066453.P884630805309445688

`A273473(∑{e}[n!, #]!)`
-/

namespace A066453.P884630805309445688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273473 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A066453.P884630805309445688

/-!
# A066455: a(n) = 6*binomial(n,4) + 5*binomial(n,2) - 4*n + 5.

The programs for A066455, the canonical program `A066455.P8479762657970922833` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066455 has offset 1).

The definition of A066455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5` (program `A066455.P8479762657970922833`, by `A066455.P8479762657970922833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066455.P8479762657970922833

`6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066455

/-- `6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5` -/
def P8479762657970922833.Spec : Prop :=
  ∀ n, P8479762657970922833.a n = A066455 (n + 1)

theorem P8479762657970922833.correct : P8479762657970922833.Spec := by
  intro n
  simp only [A066455, Nat.add_sub_cancel]

end A066455

/-! ## A066455.P1415521829664764324

`(C(n, 2)+1)²+n²`
-/

namespace A066455.P1415521829664764324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) ^ 2 + n ^ 2

end

end A066455.P1415521829664764324

namespace A066455

/-- `(C(n, 2)+1)²+n²` -/
def P1415521829664764324.Spec : Prop :=
  ∀ n, (P1415521829664764324.a n : ℤ) = A066455 (n + 1)

end A066455

/-! ## A066455.P12076227640979350825

`∑[abs(1-n)]²+n²`
-/

namespace A066455.P12076227640979350825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n ^ 2 : ℤ)

end

end A066455.P12076227640979350825

namespace A066455

/-- `∑[abs(1-n)]²+n²` -/
def P12076227640979350825.Spec : Prop :=
  ∀ n, P12076227640979350825.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P1115177788744725371

`abs((A161680(n)+2)²+n-3)`
-/

namespace A066455.P1115177788744725371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A161680 n + 2) ^ 2 + ((n : ℤ) - 3)|

end

end A066455.P1115177788744725371

namespace A066455

/-- `abs((A161680(n)+2)²+n-3)` -/
def P1115177788744725371.Spec : Prop :=
  ∀ n, P1115177788744725371.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P7232127929769408714

`∑[A061989(n+2)+gcd(n, A008458(n))]`
-/

namespace A066455.P7232127929769408714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061989 (n + 2) + (Int.gcd (n : ℤ) (A008458 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066455.P7232127929769408714

namespace A066455

/-- `∑[A061989(n+2)+gcd(n, A008458(n))]` -/
def P7232127929769408714.Spec : Prop :=
  ∀ n, P7232127929769408714.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P4681622771330229044

`A066456(Δ[n²])`
-/

namespace A066455.P4681622771330229044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066455.P4681622771330229044

namespace A066455

/-- `A066456(Δ[n²])` -/
def P4681622771330229044.Spec : Prop :=
  ∀ n, P4681622771330229044.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P5002357356998259428

`record[A066456(n+1)^((n+1)%2)]`
-/

namespace A066455.P5002357356998259428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P5002357356998259428

namespace A066455

/-- `record[A066456(n+1)^((n+1)%2)]` -/
def P5002357356998259428.Spec : Prop :=
  ∀ n, P5002357356998259428.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P13671413164963035376

`record[A066456(A014681(n)+1)]`
-/

namespace A066455.P13671413164963035376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P13671413164963035376

namespace A066455

/-- `record[A066456(A014681(n)+1)]` -/
def P13671413164963035376.Spec : Prop :=
  ∀ n, P13671413164963035376.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P15488371130885104402

`record[A066456(A026741(n+1))]`
-/

namespace A066455.P15488371130885104402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P15488371130885104402

namespace A066455

/-- `record[A066456(A026741(n+1))]` -/
def P15488371130885104402.Spec : Prop :=
  ∀ n, P15488371130885104402.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P11079450925475827272

`xor(1, xor(1, A066456(A005408(n))))`
-/

namespace A066455.P11079450925475827272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A066456 (A005408 n).toNat))

end

end A066455.P11079450925475827272

namespace A066455

/-- `xor(1, xor(1, A066456(A005408(n))))` -/
def P11079450925475827272.Spec : Prop :=
  ∀ n, P11079450925475827272.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P13712052383498806736

`record[A066456(n+1)/A000034(n)]`
-/

namespace A066455.P13712052383498806736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P13712052383498806736

namespace A066455

/-- `record[A066456(n+1)/A000034(n)]` -/
def P13712052383498806736.Spec : Prop :=
  ∀ n, P13712052383498806736.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P7898626536267579595

`record[A066456(n+1)/A010684(n)]`
-/

namespace A066455.P7898626536267579595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P7898626536267579595

namespace A066455

/-- `record[A066456(n+1)/A010684(n)]` -/
def P7898626536267579595.Spec : Prop :=
  ∀ n, P7898626536267579595.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P14026386689177479218

`record[A066456(n+1)/A033999(n)]`
-/

namespace A066455.P14026386689177479218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P14026386689177479218

namespace A066455

/-- `record[A066456(n+1)/A033999(n)]` -/
def P14026386689177479218.Spec : Prop :=
  ∀ n, P14026386689177479218.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P10869496609295737340

`record[A066456(n+1)/A053381(n)]`
-/

namespace A066455.P10869496609295737340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A053381 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P10869496609295737340

namespace A066455

/-- `record[A066456(n+1)/A053381(n)]` -/
def P10869496609295737340.Spec : Prop :=
  ∀ n, P10869496609295737340.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P18118490335176850666

`record[A066456(n+1)/A001511(n+1)]`
-/

namespace A066455.P18118490335176850666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P18118490335176850666

namespace A066455

/-- `record[A066456(n+1)/A001511(n+1)]` -/
def P18118490335176850666.Spec : Prop :=
  ∀ n, P18118490335176850666.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P17467913666254865069

`record[A066456(n+2)/A278538(n+1)]`
-/

namespace A066455.P17467913666254865069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066456 (n + 2) : ℚ) / (A278538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P17467913666254865069

namespace A066455

/-- `record[A066456(n+2)/A278538(n+1)]` -/
def P17467913666254865069.Spec : Prop :=
  ∀ n, P17467913666254865069.a n = (A066455 (n + 1) : ℚ)

end A066455

/-! ## A066455.P8036206408790234287

`record[gcd(A007814(n+1), A066456(n+1))]`
-/

namespace A066455.P8036206408790234287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A066456 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P8036206408790234287

namespace A066455

/-- `record[gcd(A007814(n+1), A066456(n+1))]` -/
def P8036206408790234287.Spec : Prop :=
  ∀ n, (P8036206408790234287.a n : ℤ) = A066455 (n + 1)

end A066455

/-! ## A066455.P173166208255333274

`gcd(A066456(2*n+1)²², A066456(2*n+1))`
-/

namespace A066455.P173166208255333274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A066456 (2 * n + 1) ^ 2) ^ 2) (A066456 (2 * n + 1))

end

end A066455.P173166208255333274

namespace A066455

/-- `gcd(A066456(2*n+1)²², A066456(2*n+1))` -/
def P173166208255333274.Spec : Prop :=
  ∀ n, (P173166208255333274.a n : ℤ) = A066455 (n + 1)

end A066455

/-! ## A066455.P12875012004618911999

`A066456(A005408(n))%A047979(n+1)`
-/

namespace A066455.P12875012004618911999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066456 (A005408 n).toNat) (A047979 (n + 1))

end

end A066455.P12875012004618911999

namespace A066455

/-- `A066456(A005408(n))%A047979(n+1)` -/
def P12875012004618911999.Spec : Prop :=
  ∀ n, P12875012004618911999.a n = A066455 (n + 1)

end A066455

/-! ## A066455.P185933257712707747

`record[A066456(gcd(n, A007814(n+2)))]`
-/

namespace A066455.P185933257712707747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066456 (Int.gcd (n : ℤ) (A007814 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066455.P185933257712707747

namespace A066455

/-- `record[A066456(gcd(n, A007814(n+2)))]` -/
def P185933257712707747.Spec : Prop :=
  ∀ n, P185933257712707747.a n = A066455 (n + 1)

end A066455

/-!
# A066456: Upper bound on number of regular triangulations of cyclic polytope C(n, n-4).

The programs for A066456, the canonical program `A066456.P12786158551663519628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066456 has offset 1).

The definition of A066456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066456.P652400186508695752

`1/2*floor(n/2)*floor((n-1)/2)*floor((n-2)/2)+a(n-1)+n-1` with `a(0)=1`
-/

namespace A066456.P652400186508695752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 : ℚ) / 2 * (⌊(n : ℚ) / 2⌋ : ℚ) * (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ) * (⌊((n : ℤ) - 2 : ℚ) / 2⌋ : ℚ) + (a (n - 1) + ((n : ℤ) - 1 : ℚ))

end

end A066456.P652400186508695752

namespace A066456

/-- `1/2*floor(n/2)*floor((n-1)/2)*floor((n-2)/2)+a(n-1)+n-1` -/
def P652400186508695752.Spec : Prop :=
  ∀ n, P652400186508695752.a n = (A066456 (n + 1) : ℚ)

end A066456

/-! ## A066456.P12786158551663519628

`A000124(n)+∑[A028724(n)]-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066456

/-- `A000124(n)+∑[A028724(n)]-n` -/
def P12786158551663519628.Spec : Prop :=
  ∀ n, P12786158551663519628.a n = A066456 (n + 1)

theorem P12786158551663519628.correct : P12786158551663519628.Spec := by
  intro n
  simp only [A066456, Nat.add_sub_cancel]

end A066456

/-! ## A066456.P8503935270320772123

`A152947(n+1)+A000241(n+1)`
-/

namespace A066456.P8503935270320772123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A000241 (n + 1)

end

end A066456.P8503935270320772123

namespace A066456

/-- `A152947(n+1)+A000241(n+1)` -/
def P8503935270320772123.Spec : Prop :=
  ∀ n, P8503935270320772123.a n = A066456 (n + 1)

end A066456

/-! ## A066456.P7588171597714701360

`A359536(A085583(n+1))`
-/

namespace A066456.P7588171597714701360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A085583 (n + 1)).toNat

end

end A066456.P7588171597714701360

namespace A066456

/-- `A359536(A085583(n+1))` -/
def P7588171597714701360.Spec : Prop :=
  ∀ n, P7588171597714701360.a n = A066456 (n + 1)

end A066456

/-! ## A066456.P8379545417463938515

`A076277(3^n)+1`
-/

namespace A066456.P8379545417463938515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076277 (3 ^ n) + 1

end

end A066456.P8379545417463938515

namespace A066456

/-- `A076277(3^n)+1` -/
def P8379545417463938515.Spec : Prop :=
  ∀ n, P8379545417463938515.a n = A066456 (n + 1)

end A066456

/-!
# A066459: Product of factorials of the digits of n.

The programs for A066459, the canonical program `A066459.P9552131526569894282` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066459 has offset 0).

The definition of A066459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066459.P9552131526569894282

`∏{digits}[n, #!]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066459

/-- `∏{digits}[n, #!]` -/
def P9552131526569894282.Spec : Prop :=
  ∀ n, (P9552131526569894282.a n : ℤ) = A066459 n

theorem P9552131526569894282.correct : P9552131526569894282.Spec := by
  intro n
  simp only [A066459]

end A066459

/-! ## A066459.P9488615719237513436

`exp(∑{digits}[n, log(#!)])`
-/

namespace A066459.P9488615719237513436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.log (Nat.factorial x : ℝ)).sum

end

end A066459.P9488615719237513436

namespace A066459

/-- `exp(∑{digits}[n, log(#!)])` -/
def P9488615719237513436.Spec : Prop :=
  ∀ n, P9488615719237513436.a n = (A066459 n : ℝ)

end A066459

/-! ## A066459.P3349556958537101465

`∏{digits}[n, A000142(#)]`
-/

namespace A066459.P3349556958537101465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000142 x).prod

end

end A066459.P3349556958537101465

namespace A066459

/-- `∏{digits}[n, A000142(#)]` -/
def P3349556958537101465.Spec : Prop :=
  ∀ n, P3349556958537101465.a n = A066459 n

end A066459

/-! ## A066459.P11006135123481800070

`∏{digits}[n, A033647(#)]`
-/

namespace A066459.P11006135123481800070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033647 x).prod

end

end A066459.P11006135123481800070

namespace A066459

/-- `∏{digits}[n, A033647(#)]` -/
def P11006135123481800070.Spec : Prop :=
  ∀ n, P11006135123481800070.a n = A066459 n

end A066459

/-! ## A066459.P13306004628579124204

`∏{digits}[n, A061602(#)]`
-/

namespace A066459.P13306004628579124204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061602 x).prod

end

end A066459.P13306004628579124204

namespace A066459

/-- `∏{digits}[n, A061602(#)]` -/
def P13306004628579124204.Spec : Prop :=
  ∀ n, P13306004628579124204.a n = A066459 n

end A066459

/-! ## A066459.P16806633779469831914

`∏{digits}[n, A062919(#)]`
-/

namespace A066459.P16806633779469831914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A062919 x).prod

end

end A066459.P16806633779469831914

namespace A066459

/-- `∏{digits}[n, A062919(#)]` -/
def P16806633779469831914.Spec : Prop :=
  ∀ n, P16806633779469831914.a n = A066459 n

end A066459

/-! ## A066459.P2529063041780018853

`∏{digits}[n, A072133(#)]`
-/

namespace A066459.P2529063041780018853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072133 x).prod

end

end A066459.P2529063041780018853

namespace A066459

/-- `∏{digits}[n, A072133(#)]` -/
def P2529063041780018853.Spec : Prop :=
  ∀ n, P2529063041780018853.a n = A066459 n

end A066459

/-! ## A066459.P1048836189201679064

`∏{digits}[n, A154657(#)]`
-/

namespace A066459.P1048836189201679064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154657 x).prod

end

end A066459.P1048836189201679064

namespace A066459

/-- `∏{digits}[n, A154657(#)]` -/
def P1048836189201679064.Spec : Prop :=
  ∀ n, P1048836189201679064.a n = A066459 n

end A066459

/-! ## A066459.P2857636792929206684

`∏{digits}[n, A154658(#)]`
-/

namespace A066459.P2857636792929206684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154658 x).prod

end

end A066459.P2857636792929206684

namespace A066459

/-- `∏{digits}[n, A154658(#)]` -/
def P2857636792929206684.Spec : Prop :=
  ∀ n, P2857636792929206684.a n = A066459 n

end A066459

/-! ## A066459.P7778591287667698857

`∏{digits}[n, A154659(#)]`
-/

namespace A066459.P7778591287667698857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A154659 x).prod

end

end A066459.P7778591287667698857

namespace A066459

/-- `∏{digits}[n, A154659(#)]` -/
def P7778591287667698857.Spec : Prop :=
  ∀ n, P7778591287667698857.a n = A066459 n

end A066459

/-! ## A066459.P15862591121005910560

`∏{digits}[n, A173849(#)]`
-/

namespace A066459.P15862591121005910560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A173849 x).prod

end

end A066459.P15862591121005910560

namespace A066459

/-- `∏{digits}[n, A173849(#)]` -/
def P15862591121005910560.Spec : Prop :=
  ∀ n, P15862591121005910560.a n = A066459 n

end A066459

/-! ## A066459.P14607620825927492305

`∏{digits}[n, A173850(#)]`
-/

namespace A066459.P14607620825927492305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A173850 x).prod

end

end A066459.P14607620825927492305

namespace A066459

/-- `∏{digits}[n, A173850(#)]` -/
def P14607620825927492305.Spec : Prop :=
  ∀ n, P14607620825927492305.a n = A066459 n

end A066459

/-! ## A066459.P4600924397022238014

`∏{digits}[n, A177280(#)]`
-/

namespace A066459.P4600924397022238014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A177280 x).prod

end

end A066459.P4600924397022238014

namespace A066459

/-- `∏{digits}[n, A177280(#)]` -/
def P4600924397022238014.Spec : Prop :=
  ∀ n, P4600924397022238014.a n = A066459 n

end A066459

/-! ## A066459.P12405997543741694366

`∏{digits}[n, A177281(#)]`
-/

namespace A066459.P12405997543741694366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A177281 x).prod

end

end A066459.P12405997543741694366

namespace A066459

/-- `∏{digits}[n, A177281(#)]` -/
def P12405997543741694366.Spec : Prop :=
  ∀ n, P12405997543741694366.a n = A066459 n

end A066459

/-! ## A066459.P10069103323141215984

`∏{digits}[n, A182287(#)]`
-/

namespace A066459.P10069103323141215984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A182287 x).prod

end

end A066459.P10069103323141215984

namespace A066459

/-- `∏{digits}[n, A182287(#)]` -/
def P10069103323141215984.Spec : Prop :=
  ∀ n, P10069103323141215984.a n = A066459 n

end A066459

/-! ## A066459.P3942083930599175618

`∏{digits}[n, A230232(#)]`
-/

namespace A066459.P3942083930599175618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230232 x).prod

end

end A066459.P3942083930599175618

namespace A066459

/-- `∏{digits}[n, A230232(#)]` -/
def P3942083930599175618.Spec : Prop :=
  ∀ n, P3942083930599175618.a n = A066459 n

end A066459

/-! ## A066459.P5070720671044264036

`∏{digits}[n, A230233(#)]`
-/

namespace A066459.P5070720671044264036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A230233 x).prod

end

end A066459.P5070720671044264036

namespace A066459

/-- `∏{digits}[n, A230233(#)]` -/
def P5070720671044264036.Spec : Prop :=
  ∀ n, P5070720671044264036.a n = A066459 n

end A066459

/-! ## A066459.P10012828423922943768

`∏{digits}[n, A232985(#)]`
-/

namespace A066459.P10012828423922943768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A232985 x).prod

end

end A066459.P10012828423922943768

namespace A066459

/-- `∏{digits}[n, A232985(#)]` -/
def P10012828423922943768.Spec : Prop :=
  ∀ n, P10012828423922943768.a n = A066459 n

end A066459

/-! ## A066459.P9453782991747580646

`∏{digits}[n, A254523(#)]`
-/

namespace A066459.P9453782991747580646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A254523 x).prod

end

end A066459.P9453782991747580646

namespace A066459

/-- `∏{digits}[n, A254523(#)]` -/
def P9453782991747580646.Spec : Prop :=
  ∀ n, P9453782991747580646.a n = A066459 n

end A066459

/-!
# A066463: Numbers k such that phi(sigma(phi(k))) = phi(k).

The programs for A066463, the canonical program `A066463.P11838001426021441979` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066463 has offset 1).

The definition of A066463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066463.P11838001426021441979

`eq[0, A295301(A000010(n+1))]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066463

/-- `eq[0, A295301(A000010(n+1))]+1` -/
def P11838001426021441979.Spec : Prop :=
  ∀ n, (P11838001426021441979.a n : ℤ) = A066463 (n + 1)

theorem P11838001426021441979.correct : P11838001426021441979.Spec := by
  intro n
  simp only [A066463, Nat.add_sub_cancel]

end A066463

/-! ## A066463.P8878250074873756651

`eq[A000010(n+1), A163370(n+1)]+1`
-/

namespace A066463.P8878250074873756651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066463.P8878250074873756651

namespace A066463

/-- `eq[A000010(n+1), A163370(n+1)]+1` -/
def P8878250074873756651.Spec : Prop :=
  ∀ n, (P8878250074873756651.a n : ℤ) = A066463 (n + 1)

end A066463

/-! ## A066463.P13674562492005703663

`eq[A054977(n), A096859(A225530(n))]`
-/

namespace A066463.P13674562492005703663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066463.P13674562492005703663

namespace A066463

/-- `eq[A054977(n), A096859(A225530(n))]` -/
def P13674562492005703663.Spec : Prop :=
  ∀ n, (P13674562492005703663.a n : ℤ) = A066463 (n + 1)

end A066463

/-! ## A066463.P12028292884679023799

`eq[A057427(n), A096859(A225530(n))]`
-/

namespace A066463.P12028292884679023799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066463.P12028292884679023799

namespace A066463

/-- `eq[A057427(n), A096859(A225530(n))]` -/
def P12028292884679023799.Spec : Prop :=
  ∀ n, (P12028292884679023799.a n : ℤ) = A066463 (n + 1)

end A066463

/-! ## A066463.P1906198372562685241

`eq[A096859(A225530(n)), A208645(2*n)]`
-/

namespace A066463.P1906198372562685241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066463.P1906198372562685241

namespace A066463

/-- `eq[A096859(A225530(n)), A208645(2*n)]` -/
def P1906198372562685241.Spec : Prop :=
  ∀ n, (P1906198372562685241.a n : ℤ) = A066463 (n + 1)

end A066463

/-!
# A066465: Numbers k such that sigma(phi(sigma(k))) = phi(k).

The programs for A066465, there is no canonical definition to state claims against.
-/

/-! ## A066465.P13318478713029614878

`eq[A000010(n+1), A163372(n+1)]+1`
-/

namespace A066465.P13318478713029614878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066465.P13318478713029614878

/-! ## A066465.P9047027541789381836

`A004482(eq[A000010(n+1), A163372(n+1)])`
-/

namespace A066465.P9047027541789381836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066465.P9047027541789381836

/-! ## A066465.P2301443302186401337

`eq[A000203(A062401(n+1)), A000010(n+1)]+1`
-/

namespace A066465.P2301443302186401337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066465.P2301443302186401337

/-! ## A066465.P7431417346111424699

`eq[A062401(n+1), A291503(n+1)]+1`
-/

namespace A066465.P7431417346111424699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066465.P7431417346111424699

/-!
# A066466: Numbers having just one anti-divisor.

The programs for A066466, there is no canonical definition to state claims against.
-/

/-! ## A066466.P18319148507039201189

`A242028(A071899(n))`
-/

namespace A066466.P18319148507039201189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242028 (A071899 n).toNat

end

end A066466.P18319148507039201189

/-!
# A066467: Numbers having just two anti-divisors.

The programs for A066467, there is no canonical definition to state claims against.
-/

/-! ## A066467.P16213393580889263081

`eq[2, A066272(A028310(n))]`
-/

namespace A066467.P16213393580889263081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066467.P16213393580889263081

/-! ## A066467.P8708391003976472026

`A020725(eq[2, A066272(n+1)])`
-/

namespace A066467.P8708391003976472026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066467.P8708391003976472026

/-! ## A066467.P18349376055606095696

`eq[2, A066272(A233583(n+1))]`
-/

namespace A066467.P18349376055606095696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066467.P18349376055606095696

/-!
# A066468: Numbers having just three anti-divisors.

The programs for A066468, there is no canonical definition to state claims against.
-/

/-! ## A066468.P2666078623981099802

`eq[3, A066272(n+1)]+1`
-/

namespace A066468.P2666078623981099802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066468.P2666078623981099802

/-! ## A066468.P14126573896754208671

`eq[3, A066272(A028310(n))]`
-/

namespace A066468.P14126573896754208671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066468.P14126573896754208671

/-! ## A066468.P15094685385578929457

`A020725(eq[3, A066272(n+1)])`
-/

namespace A066468.P15094685385578929457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066468.P15094685385578929457

/-! ## A066468.P12041723978908331290

`A153152(eq[3, A066272(n+1)])`
-/

namespace A066468.P12041723978908331290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066468.P12041723978908331290

/-! ## A066468.P13666928404371791965

`eq[3, A066272(A000007(n)+n)]`
-/

namespace A066468.P13666928404371791965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066468.P13666928404371791965

/-! ## A066468.P7703218596625365520

`eq[3, A066272(A123108(2*n))]`
-/

namespace A066468.P7703218596625365520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066468.P7703218596625365520

/-! ## A066468.P2850536914726922458

`eq[3, A066272(A233583(n+1))]`
-/

namespace A066468.P2850536914726922458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066468.P2850536914726922458

/-!
# A066469: Numbers having exactly four anti-divisors.

The programs for A066469, there is no canonical definition to state claims against.
-/

/-! ## A066469.P16595775564467461788

`eq[4, A066272(n+1)]+1`
-/

namespace A066469.P16595775564467461788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066469.P16595775564467461788

/-! ## A066469.P3220519629160791518

`eq[4, A066272(A028310(n))]`
-/

namespace A066469.P3220519629160791518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066469.P3220519629160791518

/-! ## A066469.P8078176454235565906

`A020725(eq[4, A066272(n+1)])`
-/

namespace A066469.P8078176454235565906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066469.P8078176454235565906

/-! ## A066469.P13275715199514316128

`A326178(eq[4, A066272(n+1)])`
-/

namespace A066469.P13275715199514316128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066469.P13275715199514316128

/-! ## A066469.P16379583574724054790

`eq[4, A066272(A000038(n)+n)]`
-/

namespace A066469.P16379583574724054790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066469.P16379583574724054790

/-!
# A066470: Numbers having exactly five anti-divisors.

The programs for A066470, there is no canonical definition to state claims against.
-/

/-! ## A066470.P877558584139047952

`eq[5, A066272(n+1)]+1`
-/

namespace A066470.P877558584139047952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066470.P877558584139047952

/-! ## A066470.P1220645966692958431

`eq[5, A066272(A028310(n))]`
-/

namespace A066470.P1220645966692958431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066470.P1220645966692958431

/-! ## A066470.P1804882097563548065

`A020725(eq[5, A066272(n+1)])`
-/

namespace A066470.P1804882097563548065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066470.P1804882097563548065

/-! ## A066470.P5688879649106693046

`A065475(eq[5, A066272(n+1)])`
-/

namespace A066470.P5688879649106693046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066470.P5688879649106693046

/-! ## A066470.P8065192028131105781

`A114637(eq[5, A066272(n+1)])`
-/

namespace A066470.P8065192028131105781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066470.P8065192028131105781

/-! ## A066470.P7980042921074639443

`A153152(eq[5, A066272(n+1)])`
-/

namespace A066470.P7980042921074639443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066470.P7980042921074639443

/-! ## A066470.P3021350027389875702

`eq[5, A066272(A000007(n)+n)]`
-/

namespace A066470.P3021350027389875702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066470.P3021350027389875702

/-! ## A066470.P2402070828445203045

`eq[5, A066272(A000038(n)+n)]`
-/

namespace A066470.P2402070828445203045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066470.P2402070828445203045

/-! ## A066470.P12530541752725364037

`eq[5, A066272(A065033(2*n))]`
-/

namespace A066470.P12530541752725364037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066470.P12530541752725364037

/-! ## A066470.P17951020644531602204

`eq[5, A066272(A123108(2*n))]`
-/

namespace A066470.P17951020644531602204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066470.P17951020644531602204

/-!
# A066471: Numbers k such that sigma(phi(sigma(k))) = sigma(k).

The programs for A066471, there is no canonical definition to state claims against.
-/

/-! ## A066471.P16621769360749369391

`record[A052126(Δ[A260022(n)])]`
-/

namespace A066471.P16621769360749369391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066471.P16621769360749369391

/-! ## A066471.P17040080071250671809

`A001229(n+1)%A358848(A333169(2*n+1))`
-/

namespace A066471.P17040080071250671809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001229 (n + 1)) (A358848 (A333169 (2 * n + 1)).toNat)

end

end A066471.P17040080071250671809

/-!
# A066472: Numbers having exactly six anti-divisors.

The programs for A066472, there is no canonical definition to state claims against.
-/

/-! ## A066472.P6061542397575877236

`eq[6, A066272(n+1)]+1`
-/

namespace A066472.P6061542397575877236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066472.P6061542397575877236

/-! ## A066472.P9591259957337945734

`eq[6, A066272(A028310(n))]`
-/

namespace A066472.P9591259957337945734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066472.P9591259957337945734

/-! ## A066472.P8672227415199616252

`A020725(eq[6, A066272(n+1)])`
-/

namespace A066472.P8672227415199616252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066472.P8672227415199616252

/-! ## A066472.P17401552643911604148

`A326178(eq[6, A066272(n+1)])`
-/

namespace A066472.P17401552643911604148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066472.P17401552643911604148

/-! ## A066472.P16704079874049899291

`eq[6, A066272(A000038(n)+n)]`
-/

namespace A066472.P16704079874049899291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066472.P16704079874049899291

/-!
# A066473: Numbers having exactly seven anti-divisors.

The programs for A066473, there is no canonical definition to state claims against.
-/

/-! ## A066473.P13986551334433314748

`eq[7, A066272(n+1)]+1`
-/

namespace A066473.P13986551334433314748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066473.P13986551334433314748

/-! ## A066473.P1069711433840680162

`eq[7, A066272(n*ceil(1/a(n-2)))]` with `a(0)=1, a(1)=8, a(2)=58`
-/

namespace A066473.P1069711433840680162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 58] fun n f2 =>
  A066272 ((n : ℤ) * ⌈1 / (f2 (n - 2) : ℚ)⌉).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P1069711433840680162

/-! ## A066473.P13266766153692988128

`eq[7, A066272(A028310(n))]`
-/

namespace A066473.P13266766153692988128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P13266766153692988128

/-! ## A066473.P725181187734829717

`A020725(eq[7, A066272(n+1)])`
-/

namespace A066473.P725181187734829717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066473.P725181187734829717

/-! ## A066473.P7070998160537067770

`eq[7, A066272(A000007(n)+n)]`
-/

namespace A066473.P7070998160537067770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P7070998160537067770

/-! ## A066473.P3960147423860335480

`eq[7, A066272(A000038(n)+n)]`
-/

namespace A066473.P3960147423860335480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P3960147423860335480

/-! ## A066473.P9135365375283677218

`eq[7, A066272(A060000(n+1))]`
-/

namespace A066473.P9135365375283677218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P9135365375283677218

/-! ## A066473.P17650574749572759288

`eq[7, A066272(A065033(2*n))]`
-/

namespace A066473.P17650574749572759288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P17650574749572759288

/-! ## A066473.P10042708172042599104

`eq[7, A066272(A123108(2*n))]`
-/

namespace A066473.P10042708172042599104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066473.P10042708172042599104

/-!
# A066474: Numbers having exactly eight anti-divisors.

The programs for A066474, there is no canonical definition to state claims against.
-/

/-! ## A066474.P12794338040082367681

`eq[8, A066272(n+1)]+1`
-/

namespace A066474.P12794338040082367681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066474.P12794338040082367681

/-! ## A066474.P9323661147896777820

`eq[8, A066272(A028310(n))]`
-/

namespace A066474.P9323661147896777820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066474.P9323661147896777820

/-! ## A066474.P12975394859860097336

`A326178(eq[8, A066272(n+1)])`
-/

namespace A066474.P12975394859860097336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066474.P12975394859860097336

/-! ## A066474.P15512186988107471148

`eq[8, A066272(A000038(n)+n)]`
-/

namespace A066474.P15512186988107471148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066474.P15512186988107471148

/-! ## A066474.P6072968011837258336

`eq[8, A066272(A060000(n+1))]`
-/

namespace A066474.P6072968011837258336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066474.P6072968011837258336

/-!
# A066475: Numbers having exactly nine anti-divisors.

The programs for A066475, there is no canonical definition to state claims against.
-/

/-! ## A066475.P2243850490163117991

`eq[9, A066272(n+1)]+1`
-/

namespace A066475.P2243850490163117991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066475.P2243850490163117991

/-! ## A066475.P5337227296100407519

`eq[9, A066272(A028310(n))]`
-/

namespace A066475.P5337227296100407519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066475.P5337227296100407519

/-! ## A066475.P11769070359333206918

`A020725(eq[9, A066272(n+1)])`
-/

namespace A066475.P11769070359333206918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066475.P11769070359333206918

/-! ## A066475.P9785867835514987134

`A153152(eq[9, A066272(n+1)])`
-/

namespace A066475.P9785867835514987134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066475.P9785867835514987134

/-! ## A066475.P14193352895277922110

`eq[9, A066272(A123108(2*n))]`
-/

namespace A066475.P14193352895277922110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066475.P14193352895277922110

/-! ## A066475.P13656285967470890968

`eq[9, A066272(A233583(n+1))]`
-/

namespace A066475.P13656285967470890968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066475.P13656285967470890968

/-!
# A066476: Numbers having exactly ten anti-divisors.

The programs for A066476, there is no canonical definition to state claims against.
-/

/-! ## A066476.P12906432050735299722

`eq[10, A066272(n+1)]+1`
-/

namespace A066476.P12906432050735299722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066476.P12906432050735299722

/-! ## A066476.P14041842780119102891

`eq[10, A066272(A028310(n))]`
-/

namespace A066476.P14041842780119102891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066476.P14041842780119102891

/-! ## A066476.P11344327810083244007

`A020725(eq[10, A066272(n+1)])`
-/

namespace A066476.P11344327810083244007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066476.P11344327810083244007

/-! ## A066476.P12565240370927688217

`A326178(eq[10, A066272(n+1)])`
-/

namespace A066476.P12565240370927688217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066476.P12565240370927688217

/-! ## A066476.P2319890239227945551

`eq[10, A066272(A000038(n)+n)]`
-/

namespace A066476.P2319890239227945551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066476.P2319890239227945551

/-!
# A066477: Numbers having exactly eleven anti-divisors.

The programs for A066477, there is no canonical definition to state claims against.
-/

/-! ## A066477.P4742554683500655234

`eq[11, A066272(n+1)]+1`
-/

namespace A066477.P4742554683500655234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066477.P4742554683500655234

/-! ## A066477.P8277434823272974290

`eq[11, A066272(A028310(n))]`
-/

namespace A066477.P8277434823272974290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066477.P8277434823272974290

/-! ## A066477.P11254781425115013688

`A326178(eq[11, A066272(n+1)])`
-/

namespace A066477.P11254781425115013688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066477.P11254781425115013688

/-! ## A066477.P8404562922848803127

`eq[11, A066272(A000038(n)+n)]`
-/

namespace A066477.P8404562922848803127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066477.P8404562922848803127

/-! ## A066477.P18022299942047477398

`eq[11, A066272(A233583(n+1))]`
-/

namespace A066477.P18022299942047477398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066477.P18022299942047477398

/-!
# A066478: Numbers having exactly twelve anti-divisors.

The programs for A066478, there is no canonical definition to state claims against.
-/

/-! ## A066478.P11264297514059848675

`eq[12, A066272(A028310(n))]`
-/

namespace A066478.P11264297514059848675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066478.P11264297514059848675

/-! ## A066478.P14106138702451199655

`A020725(eq[12, A066272(n+1)])`
-/

namespace A066478.P14106138702451199655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066478.P14106138702451199655

/-!
# A066479: a(n) = min( x : x^3+n^3+x^2+n^2+x+n=1 mod(x+n)).

The programs for A066479, there is no canonical definition to state claims against.
-/

/-! ## A066479.P7348385978115689707

`A260300((n+1)*(n+3))-(n+1)`
-/

namespace A066479.P7348385978115689707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260300 ((n + 1) * (n + 3)) - (n + 1 : ℤ)

end

end A066479.P7348385978115689707

/-! ## A066479.P16695639657420294240

`A000096(2*(n+1))%Δ[A128068(n+1)]`
-/

namespace A066479.P16695639657420294240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A066479.P16695639657420294240

/-! ## A066479.P13883546128206772015

`gcd(A005872(A000272(n)), A014106(n+1))`
-/

namespace A066479.P13883546128206772015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005872 (A000272 n).toNat) (A014106 (n + 1))

end

end A066479.P13883546128206772015

/-!
# A066481: Largest anti-divisor of n.

The programs for A066481, the canonical program `A066481.P9615400115372545545` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066481 has offset 3).

The definition of A066481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066481.P9615400115372545545

`round(2*(n/3+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066481

/-- `round(2*(n/3+1))` -/
def P9615400115372545545.Spec : Prop :=
  ∀ n, P9615400115372545545.a n = A066481 (n + 3)

theorem P9615400115372545545.correct : P9615400115372545545.Spec := by
  intro n
  simp only [A066481, Nat.add_sub_cancel]

end A066481

/-! ## A066481.P15670428877788511989

`∑[char[∑[n%3]]]+1`
-/

namespace A066481.P15670428877788511989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066481.P15670428877788511989

namespace A066481

/-- `∑[char[∑[n%3]]]+1` -/
def P15670428877788511989.Spec : Prop :=
  ∀ n, (P15670428877788511989.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P54566704289291116

`a(n-3)+2` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A066481.P54566704289291116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 3) + 2

end

end A066481.P54566704289291116

namespace A066481

/-- `a(n-3)+2` -/
def P54566704289291116.Spec : Prop :=
  ∀ n, (P54566704289291116.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P13913851057964342828

`∑[abs(1-(n-1)%3)]`
-/

namespace A066481.P13913851057964342828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.tmod ((n : ℤ) - 1) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P13913851057964342828

namespace A066481

/-- `∑[abs(1-(n-1)%3)]` -/
def P13913851057964342828.Spec : Prop :=
  ∀ n, P13913851057964342828.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P6940078703016746369

`∑[(n+1)²%3]+1`
-/

namespace A066481.P6940078703016746369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066481.P6940078703016746369

namespace A066481

/-- `∑[(n+1)²%3]+1` -/
def P6940078703016746369.Spec : Prop :=
  ∀ n, (P6940078703016746369.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P14538863178594851337

`ceil(acos(0)+2*n/3)`
-/

namespace A066481.P14538863178594851337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (0 : ℝ) + ((2 * n : ℚ) / 3 : ℝ)⌉

end

end A066481.P14538863178594851337

namespace A066481

/-- `ceil(acos(0)+2*n/3)` -/
def P14538863178594851337.Spec : Prop :=
  ∀ n, P14538863178594851337.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P12118344039978757176

`ceil(tan(1)+2*n/3)`
-/

namespace A066481.P12118344039978757176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (1 : ℝ) + ((2 * n : ℚ) / 3 : ℝ)⌉

end

end A066481.P12118344039978757176

namespace A066481

/-- `ceil(tan(1)+2*n/3)` -/
def P12118344039978757176.Spec : Prop :=
  ∀ n, P12118344039978757176.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P14486101090083756487

`ceil(asin(1)+2*n/3)`
-/

namespace A066481.P14486101090083756487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (1 : ℝ) + ((2 * n : ℚ) / 3 : ℝ)⌉

end

end A066481.P14486101090083756487

namespace A066481

/-- `ceil(asin(1)+2*n/3)` -/
def P14486101090083756487.Spec : Prop :=
  ∀ n, P14486101090083756487.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P2160749452626697196

`ceil(cosh(1)+2*n/3)`
-/

namespace A066481.P2160749452626697196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (1 : ℝ) + ((2 * n : ℚ) / 3 : ℝ)⌉

end

end A066481.P2160749452626697196

namespace A066481

/-- `ceil(cosh(1)+2*n/3)` -/
def P2160749452626697196.Spec : Prop :=
  ∀ n, P2160749452626697196.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P2757643227427656812

`ceil(2/(3*acot(n+2)))`
-/

namespace A066481.P2757643227427656812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (3 * SequenceMachineLib.acot (n + 2 : ℝ))⌉

end

end A066481.P2757643227427656812

namespace A066481

/-- `ceil(2/(3*acot(n+2)))` -/
def P2757643227427656812.Spec : Prop :=
  ∀ n, P2757643227427656812.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P4898261847717969660

`floor((2*n-cot(3))/3)`
-/

namespace A066481.P4898261847717969660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℝ) - Real.cot (3 : ℝ)) / 3⌋

end

end A066481.P4898261847717969660

namespace A066481

/-- `floor((2*n-cot(3))/3)` -/
def P4898261847717969660.Spec : Prop :=
  ∀ n, P4898261847717969660.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P18190276004932017828

`ceil(cot(3/(2*n+5)))`
-/

namespace A066481.P18190276004932017828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / (2 * n + 5 : ℚ) : ℝ)⌉

end

end A066481.P18190276004932017828

namespace A066481

/-- `ceil(cot(3/(2*n+5)))` -/
def P18190276004932017828.Spec : Prop :=
  ∀ n, P18190276004932017828.a n = A066481 (n + 3)

end A066481

/-! ## A066481.P6972446529532338910

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A066481.P6972446529532338910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P6972446529532338910

namespace A066481

/-- `∑[abs(a(n-3))]` -/
def P6972446529532338910.Spec : Prop :=
  ∀ n, (P6972446529532338910.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P1218159568638932738

`∑[a(n-3)²]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A066481.P1218159568638932738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P1218159568638932738

namespace A066481

/-- `∑[a(n-3)²]` -/
def P1218159568638932738.Spec : Prop :=
  ∀ n, (P1218159568638932738.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P6055398741910905646

`∑[sqrt(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A066481.P6055398741910905646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  Real.sqrt (f1 (n - 3))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P6055398741910905646

namespace A066481

/-- `∑[sqrt(a(n-3))]` -/
def P6055398741910905646.Spec : Prop :=
  ∀ n, P6055398741910905646.a n = (A066481 (n + 3) : ℝ)

end A066481

/-! ## A066481.P79571398183881494

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A066481.P79571398183881494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P79571398183881494

namespace A066481

/-- `∑[dr(a(n-3))]` -/
def P79571398183881494.Spec : Prop :=
  ∀ n, (P79571398183881494.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P18370831703832607194

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066481.P18370831703832607194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P18370831703832607194

namespace A066481

/-- `∑[floor(a(n-3))]` -/
def P18370831703832607194.Spec : Prop :=
  ∀ n, (P18370831703832607194.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P12497367830149012849

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A066481.P12497367830149012849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P12497367830149012849

namespace A066481

/-- `∑[ceil(a(n-3))]` -/
def P12497367830149012849.Spec : Prop :=
  ∀ n, (P12497367830149012849.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P12031819834701568658

`∑[round(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A066481.P12031819834701568658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066481.P12031819834701568658

namespace A066481

/-- `∑[round(a(n-3))]` -/
def P12031819834701568658.Spec : Prop :=
  ∀ n, (P12031819834701568658.a n : ℤ) = A066481 (n + 3)

end A066481

/-! ## A066481.P10599934017372486347

`floor(or(1, 2*n)/3)+2`
-/

namespace A066481.P10599934017372486347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) / 3⌋ + 2

end

end A066481.P10599934017372486347

namespace A066481

/-- `floor(or(1, 2*n)/3)+2` -/
def P10599934017372486347.Spec : Prop :=
  ∀ n, P10599934017372486347.a n = A066481 (n + 3)

end A066481

/-!
# A066482: The smallest anti-divisor of n.

The programs for A066482, there is no canonical definition to state claims against.
-/

/-! ## A066482.P13230583014140266800

`A130799(∑[A066272(n+2)]+3)`
-/

namespace A066482.P13230583014140266800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130799 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A066482.P13230583014140266800

/-! ## A066482.P1590094937094469147

`A130799(∑[A066241(n+2)-1]+3)`
-/

namespace A066482.P1590094937094469147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130799 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A066482.P1590094937094469147

/-! ## A066482.P10934919894841968703

`A130799(∑[(A066241(n+2)+n)%(n+1)]+3)`
-/

namespace A066482.P10934919894841968703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066241 (n + 2) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130799 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A066482.P10934919894841968703

/-! ## A066482.P13221213315160835391

`A007978(A000265(n+9)*A016777(n))`
-/

namespace A066482.P13221213315160835391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A000265 (n + 9) * A016777 n).toNat

end

end A066482.P13221213315160835391

/-! ## A066482.P18330159141437239087

`A007978(A288639(n+1)+n+3)`
-/

namespace A066482.P18330159141437239087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A288639 (n + 1) + (n + 3 : ℤ)).toNat

end

end A066482.P18330159141437239087

/-!
# A066484: Numbers with at least 2 distinct digits and whose "rotations" (including the number itself) are multiples of these digits; repeated digits allowed but digit 0 not allowed.

The programs for A066484, there is no canonical definition to state claims against.
-/

/-! ## A066484.P7165915130786460846

`∩[A257054(n+1), A291346(n+1)]`
-/

namespace A066484.P7165915130786460846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066484.P7165915130786460846

/-!
# A066485: Numbers n such that f(n) is a strict local extremum for the prime gaps function f(n) = prime(n+1)-prime(n), where prime(n) denotes the n-th prime; i.e., either f(n)>f(n-1) and f(n)>f(n+1) or f(n)

The programs for A066485, there is no canonical definition to state claims against.
-/

/-! ## A066485.P18442668517482595266

`∪[A196175(n+1), A198696(n+1)]`
-/

namespace A066485.P18442668517482595266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066485.P18442668517482595266

/-!
# A066486: a(n) = min( x : x^3 + n^3 == 0 mod (x+n-1) ).

The programs for A066486, there is no canonical definition to state claims against.
-/

/-! ## A066486.P5822591606017010727

`gcd(Δ[n^3]-n, A290038(n)^n)`
-/

namespace A066486.P5822591606017010727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A290038 (n + 18) ^ n)

end

end A066486.P5822591606017010727

/-! ## A066486.P5701599391257004839

`gcd(∏[A011916(3*(n+1))], A056109(n))`
-/

namespace A066486.P5701599391257004839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A056109 n)

end

end A066486.P5701599391257004839

/-! ## A066486.P11912592514803226121

`(Δ[n^3]-n)%A294156(A291873(2*n+5))`
-/

namespace A066486.P11912592514803226121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A294156 (A291873 (2 * n + 5)).toNat)

end

end A066486.P11912592514803226121

/-!
# A066487: a(n) = min( x : x^4 + n^4 = 0 mod (x+n-1) ).

The programs for A066487, there is no canonical definition to state claims against.
-/

/-! ## A066487.P13775694139244161758

`A020639((n+1)^4+n^4)-n`
-/

namespace A066487.P13775694139244161758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 4 + n ^ 4) - (n : ℤ)

end

end A066487.P13775694139244161758

/-! ## A066487.P10266170096286612342

`abs(n-A020639(A008514(n)))`
-/

namespace A066487.P10266170096286612342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A020639 (A008514 n).toNat|

end

end A066487.P10266170096286612342

/-! ## A066487.P5042535619352336774

`A001489(n)+A020639((n+1)^4+n^4)`
-/

namespace A066487.P5042535619352336774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A020639 ((n + 1) ^ 4 + n ^ 4)

end

end A066487.P5042535619352336774

/-! ## A066487.P7536052581383681986

`A001057(2*n)+A020639(A008514(n))`
-/

namespace A066487.P7536052581383681986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + A020639 (A008514 n).toNat

end

end A066487.P7536052581383681986

/-! ## A066487.P13097410241284937901

`A090368((n²+n+1)²)-n`
-/

namespace A066487.P13097410241284937901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 ((n ^ 2 + n + 1) ^ 2) - (n : ℤ)

end

end A066487.P13097410241284937901

/-!
# A066488: Composite numbers k which divide A001045(k-1).

The programs for A066488, there is no canonical definition to state claims against.
-/

/-! ## A066488.P6526666404863387555

`record[lcm(3, A001567(n+1))/3]`
-/

namespace A066488.P6526666404863387555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A001567 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066488.P6526666404863387555

/-! ## A066488.P16554066539432497554

`A001567(eq[1, gcd(3, A001567(n+1))]+1)`
-/

namespace A066488.P16554066539432497554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A001567 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A066488.P16554066539432497554

/-! ## A066488.P2899942564307356615

`A001567(eq[0, val(A001567(n+1), 3)]+1)`
-/

namespace A066488.P2899942564307356615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001567 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A066488.P2899942564307356615

/-! ## A066488.P5539292511758722566

`record[A001567(n+1)*A106799(A177415(n+1))]`
-/

namespace A066488.P5539292511758722566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1) * A106799 (A177415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066488.P5539292511758722566

/-! ## A066488.P2521550729661759158

`record[∏{p}[A001567(n+1), A051724(#)]]`
-/

namespace A066488.P2521550729661759158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A051724 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066488.P2521550729661759158

/-! ## A066488.P1612325894196885616

`record[∏{p}[A001567(n+1), A106610(#)]]`
-/

namespace A066488.P1612325894196885616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A106610 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066488.P1612325894196885616

/-! ## A066488.P114136247092515135

`filter[A001567(n+1), A014578(#)]`
-/

namespace A066488.P114136247092515135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A066488.P114136247092515135

/-! ## A066488.P11432600812488962218

`filter[A001567(n+1), A187074(#)]`
-/

namespace A066488.P11432600812488962218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A066488.P11432600812488962218

/-! ## A066488.P13202004092342905822

`filter[A001567(n+1), A359374(#)]`
-/

namespace A066488.P13202004092342905822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A066488.P13202004092342905822

/-! ## A066488.P12221903959709086801

`filter[A001567(n+1), A359377(#)]`
-/

namespace A066488.P12221903959709086801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A066488.P12221903959709086801

/-!
# A066489: Binary expansion of n followed by its reverse complement.

The programs for A066489, the canonical program `A066489.P4410920429026512829` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066489 has offset 1).

The definition of A066489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066489.P4410920429026512829

`A007088(A035928(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066489

/-- `A007088(A035928(n+1))` -/
def P4410920429026512829.Spec : Prop :=
  ∀ n, P4410920429026512829.a n = A066489 (n + 1)

theorem P4410920429026512829.correct : P4410920429026512829.Spec := by
  intro n
  simp only [A066489, Nat.add_sub_cancel]

end A066489

/-! ## A066489.P15707232810495693781

`A099820(A290254(n+2))`
-/

namespace A066489.P15707232810495693781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A290254 (n + 2)).toNat

end

end A066489.P15707232810495693781

namespace A066489

/-- `A099820(A290254(n+2))` -/
def P15707232810495693781.Spec : Prop :=
  ∀ n, P15707232810495693781.a n = A066489 (n + 1)

end A066489

/-! ## A066489.P4681952052321227006

`A099820(A035928(n+1)/2)`
-/

namespace A066489.P4681952052321227006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A035928 (n + 1) : ℚ) / 2)).toNat

end

end A066489.P4681952052321227006

namespace A066489

/-- `A099820(A035928(n+1)/2)` -/
def P4681952052321227006.Spec : Prop :=
  ∀ n, P4681952052321227006.a n = A066489 (n + 1)

end A066489

/-! ## A066489.P13692685010984538179

`A007088(eq[n, A036044(n)])`
-/

namespace A066489.P13692685010984538179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066489.P13692685010984538179

namespace A066489

/-- `A007088(eq[n, A036044(n)])` -/
def P13692685010984538179.Spec : Prop :=
  ∀ n, P13692685010984538179.a n = A066489 (n + 1)

end A066489

/-! ## A066489.P1950944673699635611

`A007088(eq[A256078(n), A305989(n)])`
-/

namespace A066489.P1950944673699635611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066489.P1950944673699635611

namespace A066489

/-- `A007088(eq[A256078(n), A305989(n)])` -/
def P1950944673699635611.Spec : Prop :=
  ∀ n, P1950944673699635611.a n = A066489 (n + 1)

end A066489

/-!
# A066490: Number of primes of the form 4m+3 that are <= n.

The programs for A066490, the canonical program `A066490.P4637826063485355079` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066490 has offset 1).

The definition of A066490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066490.P5053717006691558612

`∑[char[p?[4*n-1]-1]]`
-/

namespace A066490.P5053717006691558612
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P5053717006691558612

namespace A066490

/-- `∑[char[p?[4*n-1]-1]]` -/
def P5053717006691558612.Spec : Prop :=
  ∀ n, (P5053717006691558612.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P4637826063485355079

`∑[C(and(2, n), ∏{e}[n+1, #+1])]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066490

/-- `∑[C(and(2, n), ∏{e}[n+1, #+1])]` -/
def P4637826063485355079.Spec : Prop :=
  ∀ n, (P4637826063485355079.a n : ℤ) = A066490 (n + 1)

theorem P4637826063485355079.correct : P4637826063485355079.Spec := by
  intro n
  simp only [A066490, Nat.add_sub_cancel]

end A066490

/-! ## A066490.P13081923911094498906

`∑[A079261(n+1)]`
-/

namespace A066490.P13081923911094498906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P13081923911094498906

namespace A066490

/-- `∑[A079261(n+1)]` -/
def P13081923911094498906.Spec : Prop :=
  ∀ n, P13081923911094498906.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P4629077426544429658

`∑[char[A281664(n+2)]]`
-/

namespace A066490.P4629077426544429658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P4629077426544429658

namespace A066490

/-- `∑[char[A281664(n+2)]]` -/
def P4629077426544429658.Spec : Prop :=
  ∀ n, (P4629077426544429658.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P3941021706297308765

`∑[A353477(3*(n+1))]`
-/

namespace A066490.P3941021706297308765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P3941021706297308765

namespace A066490

/-- `∑[A353477(3*(n+1))]` -/
def P3941021706297308765.Spec : Prop :=
  ∀ n, P3941021706297308765.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P10927634606067291974

`∑[A353479(5*(n+1))]`
-/

namespace A066490.P10927634606067291974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P10927634606067291974

namespace A066490

/-- `∑[A353479(5*(n+1))]` -/
def P10927634606067291974.Spec : Prop :=
  ∀ n, P10927634606067291974.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P11471402490990367868

`∑[char[record[A000010(or(3, n))]]]`
-/

namespace A066490.P11471402490990367868
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 3 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P11471402490990367868

namespace A066490

/-- `∑[char[record[A000010(or(3, n))]]]` -/
def P11471402490990367868.Spec : Prop :=
  ∀ n, (P11471402490990367868.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P4539889324980817261

`∑[char[A002145(n+1)-1]]`
-/

namespace A066490.P4539889324980817261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P4539889324980817261

namespace A066490

/-- `∑[char[A002145(n+1)-1]]` -/
def P4539889324980817261.Spec : Prop :=
  ∀ n, (P4539889324980817261.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P897023218733666836

`∑[C(1-A151763(n+1), 2)]`
-/

namespace A066490.P897023218733666836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - A151763 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P897023218733666836

namespace A066490

/-- `∑[C(1-A151763(n+1), 2)]` -/
def P897023218733666836.Spec : Prop :=
  ∀ n, (P897023218733666836.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P4101763228298273875

`∑[C(C(2, A078458(n+1)), 2)]`
-/

namespace A066490.P4101763228298273875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A078458 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P4101763228298273875

namespace A066490

/-- `∑[C(C(2, A078458(n+1)), 2)]` -/
def P4101763228298273875.Spec : Prop :=
  ∀ n, (P4101763228298273875.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P12504423969978344919

`∑[val(A000010(n+1), or(2, n))]`
-/

namespace A066490.P12504423969978344919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (n + 1)).toNat (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P12504423969978344919

namespace A066490

/-- `∑[val(A000010(n+1), or(2, n))]` -/
def P12504423969978344919.Spec : Prop :=
  ∀ n, (P12504423969978344919.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P6461393439251801004

`∑[C(and(2, n), A000005(n+1))]`
-/

namespace A066490.P6461393439251801004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n) (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P6461393439251801004

namespace A066490

/-- `∑[C(and(2, n), A000005(n+1))]` -/
def P6461393439251801004.Spec : Prop :=
  ∀ n, (P6461393439251801004.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P16212305996254786824

`∑[char[record[A000010(4*n+3)]]]`
-/

namespace A066490.P16212305996254786824
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P16212305996254786824

namespace A066490

/-- `∑[char[record[A000010(4*n+3)]]]` -/
def P16212305996254786824.Spec : Prop :=
  ∀ n, (P16212305996254786824.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P14805789271648347563

`∑[floor(A014963(n+1)/or(2, n))]`
-/

namespace A066490.P14805789271648347563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (n + 1) : ℚ) / (Nat.lor 2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P14805789271648347563

namespace A066490

/-- `∑[floor(A014963(n+1)/or(2, n))]` -/
def P14805789271648347563.Spec : Prop :=
  ∀ n, P14805789271648347563.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P15748695639764288359

`∑[and(∑[n], A280710(2*(n+1)))]`
-/

namespace A066490.P15748695639764288359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A280710 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P15748695639764288359

namespace A066490

/-- `∑[and(∑[n], A280710(2*(n+1)))]` -/
def P15748695639764288359.Spec : Prop :=
  ∀ n, P15748695639764288359.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P3359669691138960119

`∑[and(n^3-∑[n], A010051(n+1))]`
-/

namespace A066490.P3359669691138960119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P3359669691138960119

namespace A066490

/-- `∑[and(n^3-∑[n], A010051(n+1))]` -/
def P3359669691138960119.Spec : Prop :=
  ∀ n, P3359669691138960119.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P2390611549456131748

`∑[val(∑[n+1], A020639(n+1)+n+1)]`
-/

namespace A066490.P2390611549456131748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) (A020639 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P2390611549456131748

namespace A066490

/-- `∑[val(∑[n+1], A020639(n+1)+n+1)]` -/
def P2390611549456131748.Spec : Prop :=
  ∀ n, (P2390611549456131748.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P3779022812897406465

`∑[char[A000010(A002145(n+1))]]`
-/

namespace A066490.P3779022812897406465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002145 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P3779022812897406465

namespace A066490

/-- `∑[char[A000010(A002145(n+1))]]` -/
def P3779022812897406465.Spec : Prop :=
  ∀ n, (P3779022812897406465.a n : ℤ) = A066490 (n + 1)

end A066490

/-! ## A066490.P2415459011987250673

`A066520(n+1)+A066339(n+1)`
-/

namespace A066490.P2415459011987250673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (n + 1) + A066339 (n + 1)

end

end A066490.P2415459011987250673

namespace A066490

/-- `A066520(n+1)+A066339(n+1)` -/
def P2415459011987250673.Spec : Prop :=
  ∀ n, P2415459011987250673.a n = A066490 (n + 1)

end A066490

/-! ## A066490.P1693534953651313113

`A071842(n+1)+A071840(n+1)`
-/

namespace A066490.P1693534953651313113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (n + 1) + A071840 (n + 1)

end

end A066490.P1693534953651313113

namespace A066490

/-- `A071842(n+1)+A071840(n+1)` -/
def P1693534953651313113.Spec : Prop :=
  ∀ n, P1693534953651313113.a n = A066490 (n + 1)

end A066490

/-!
# A066491: Twin prime gaps: Pairs k, k+1 such that f(k) = f(k+1), where f is the prime gaps function given by f(m) = prime(m+1)-prime(m) and prime(m) denotes the m-th prime.

The programs for A066491, there is no canonical definition to state claims against.
-/

/-! ## A066491.P13480371897323934321

`A064113(∑[log2(gcd(2, n))])+n%2`
-/

namespace A066491.P13480371897323934321
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A066491.P13480371897323934321

/-! ## A066491.P6719082948489744004

`A064113(∑[char[2*n]])+and(1, n)`
-/

namespace A066491.P6719082948489744004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.land 1 n : ℤ)

end

end A066491.P6719082948489744004

/-! ## A066491.P6132471212968586984

`A064113(A008619(n))+n%2`
-/

namespace A066491.P6132471212968586984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (A008619 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A066491.P6132471212968586984

/-! ## A066491.P626534620408134137

`A064113(∑[char[2*n]])+A000035(n)`
-/

namespace A066491.P626534620408134137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 n

end

end A066491.P626534620408134137

/-! ## A066491.P4959770054136740548

`A064113(floor(n/2)+1)+Δ[A008619(n)]`
-/

namespace A066491.P4959770054136740548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (⌊(n : ℚ) / 2⌋ + 1).toNat + (f1 (n + 1) - f1 n)

end

end A066491.P4959770054136740548

/-! ## A066491.P336567059107641141

`A000035(n)+A066875(A008619(n))-1`
-/

namespace A066491.P336567059107641141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A066875 (A008619 n).toNat - 1)

end

end A066491.P336567059107641141

/-! ## A066491.P15742883384049986461

`A064113(A008619(n))+val(A020639(n+1), 2)`
-/

namespace A066491.P15742883384049986461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (A008619 n).toNat + (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ)

end

end A066491.P15742883384049986461

/-! ## A066491.P15856539701967882333

`A064113(A008619(n))+Δ[A004526(n)]`
-/

namespace A066491.P15856539701967882333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A066491.P15856539701967882333

/-! ## A066491.P9206184266190215451

`A064113(A008619(n))+char[A003961(n+1)]`
-/

namespace A066491.P9206184266190215451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (A008619 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A066491.P9206184266190215451

/-! ## A066491.P6560857795692210478

`A048865(A117646(∑[gcd(2, n)]))`
-/

namespace A066491.P6560857795692210478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A117646 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066491.P6560857795692210478

/-!
# A066492: a(n) = A056524(n)/11.

The programs for A066492, there is no canonical definition to state claims against.
-/

/-! ## A066492.P5348124319325922232

`A056524(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066492.P5348124319325922232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056524 (n + 1) : ℚ) / 11

end

end A066492.P5348124319325922232

/-! ## A066492.P11885283588410552980

`(A020338(n+1)-A056965(n+1))/11`
-/

namespace A066492.P11885283588410552980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) - A056965 (n + 1) : ℚ) / 11

end

end A066492.P11885283588410552980

/-! ## A066492.P15691011876924186606

`(A020338(n+1)-n-(1-A004086(n+1)))/11`
-/

namespace A066492.P15691011876924186606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) - (n : ℤ) - (1 - A004086 (n + 1)) : ℚ) / 11

end

end A066492.P15691011876924186606

/-! ## A066492.P8485531174410764984

`(A105814(n+1)-(n+1)²-A056965(n+1))/11`
-/

namespace A066492.P8485531174410764984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105814 (n + 1) - ((n + 1) ^ 2 : ℤ) - A056965 (n + 1) : ℚ) / 11

end

end A066492.P8485531174410764984

/-! ## A066492.P9150194795104869214

`((A061601(n+1)+3+n)*(n+1)-A056965(n+1))/11`
-/

namespace A066492.P9150194795104869214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061601 (n + 1) + 3 + (n : ℤ)) * (n + 1 : ℤ) - A056965 (n + 1) : ℚ) / 11

end

end A066492.P9150194795104869214

/-! ## A066492.P16124750145496541011

`record[A056524(A152271(n))/11]`
-/

namespace A066492.P16124750145496541011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056524 (A152271 n).toNat : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066492.P16124750145496541011

/-!
# A066493: a(n) = least k such that f(k) = n, where f is the prime gaps function given by f(m) = prime(m+1)-prime(m) and prime(m) denotes the m-th prime, if k exists; 0 otherwise.

The programs for A066493, there is no canonical definition to state claims against.
-/

/-! ## A066493.P9074706144032933128

`and(A001304(n), A136209(A167499(n)))`
-/

namespace A066493.P9074706144032933128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001304 n) (A136209 (A167499 n).toNat)

end

end A066493.P9074706144032933128

/-!
# A066495: Numbers k such that f(k) = f(k-1) + f(k-2) where f denotes the prime gaps function given by f(m) = prime(m+1) - prime(m).

The programs for A066495, there is no canonical definition to state claims against.
-/

/-! ## A066495.P4942988748835342046

`A138042(n+1)+2`
-/

namespace A066495.P4942988748835342046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138042 (n + 1) + 2

end

end A066495.P4942988748835342046

/-! ## A066495.P9826847161888270609

`A009056(A138042(n+1))`
-/

namespace A066495.P9826847161888270609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A138042 (n + 1)).toNat

end

end A066495.P9826847161888270609

/-! ## A066495.P18095344143535779695

`eq[A000007(n), A375087(n+1)]+2`
-/

namespace A066495.P18095344143535779695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P18095344143535779695

/-! ## A066495.P3417459999253240855

`eq[A000038(n), A375087(n+1)]+2`
-/

namespace A066495.P3417459999253240855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P3417459999253240855

/-! ## A066495.P13910509333449806887

`eq[A036263(n+1), A054541(n+1)]+2`
-/

namespace A066495.P13910509333449806887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P13910509333449806887

/-! ## A066495.P11314256643059661216

`eq[A036263(n+1), A125266(n+1)]+2`
-/

namespace A066495.P11314256643059661216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P11314256643059661216

/-! ## A066495.P5836314732996532000

`eq[A028334(n+2), A115061(n+1)]+2`
-/

namespace A066495.P5836314732996532000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P5836314732996532000

/-! ## A066495.P3903470010672803822

`eq[A028334(n+2), A162345(n+1)]+2`
-/

namespace A066495.P3903470010672803822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P3903470010672803822

/-! ## A066495.P10262449962360141527

`A009056(eq[A036263(n+1), A054541(n+1)])`
-/

namespace A066495.P10262449962360141527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066495.P10262449962360141527

/-! ## A066495.P6806451537450017155

`A009056(eq[A028334(n+2), A115061(n+1)])`
-/

namespace A066495.P6806451537450017155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066495.P6806451537450017155

/-! ## A066495.P9529773335071856498

`eq[A093667(n+1), A181428(A028310(n))]+2`
-/

namespace A066495.P9529773335071856498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066495.P9529773335071856498

/-!
# A066496: a(n) = least solution k of f(k) = f(k-1) + ... + f(k-n), where f(m) = prime(m+1)-prime(m) and prime(m) denotes the m-th prime, if k exists; 0 otherwise.

The programs for A066496, there is no canonical definition to state claims against.
-/

/-! ## A066496.P4899367464119655323

`A000720(A089344(n+1))`
-/

namespace A066496.P4899367464119655323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089344 (n + 1)).toNat

end

end A066496.P4899367464119655323

/-! ## A066496.P11547755798290841860

`A061395(record[A089344(n+1)])`
-/

namespace A066496.P11547755798290841860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066496.P11547755798290841860

/-!
# A066497: Least number k such that phi(k) / Carmichael lambda(k) = 2n.

The programs for A066497, there is no canonical definition to state claims against.
-/

/-! ## A066497.P16829025741316262170

`A111440(n+1)-A007718(A249672(n))`
-/

namespace A066497.P16829025741316262170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111440 (n + 1) - A007718 (A249672 n).toNat

end

end A066497.P16829025741316262170

/-!
# A066498: Numbers k such that 3 divides phi(k).

The programs for A066498, the canonical program `A066498.P12103817307299836171` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066498 has offset 1).

The definition of A066498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066498.P1282199639202234453

`lt[A000010(n+1)%3, 1]+1`
-/

namespace A066498.P1282199639202234453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066498.P1282199639202234453

namespace A066498

/-- `lt[A000010(n+1)%3, 1]+1` -/
def P1282199639202234453.Spec : Prop :=
  ∀ n, (P1282199639202234453.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P15072594984571391166

`eq[6, gcd(6, A000010(n+2))]+2`
-/

namespace A066498.P15072594984571391166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066498.P15072594984571391166

namespace A066498

/-- `eq[6, gcd(6, A000010(n+2))]+2` -/
def P15072594984571391166.Spec : Prop :=
  ∀ n, (P15072594984571391166.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P12103817307299836171

`lt[A283443(A046073(n+1)), A046073(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A066498

/-- `lt[A283443(A046073(n+1)), A046073(n+1)]+1` -/
def P12103817307299836171.Spec : Prop :=
  ∀ n, (P12103817307299836171.a n : ℤ) = A066498 (n + 1)

theorem P12103817307299836171.correct : P12103817307299836171.Spec := by
  intro n
  simp only [A066498, Nat.add_sub_cancel]

end A066498

/-! ## A066498.P17869167376538631910

`eq[1, A049347(A000010(n+1))]+1`
-/

namespace A066498.P17869167376538631910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066498.P17869167376538631910

namespace A066498

/-- `eq[1, A049347(A000010(n+1))]+1` -/
def P17869167376538631910.Spec : Prop :=
  ∀ n, (P17869167376538631910.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P3276085305438521486

`lt[n*A128834(A000010(n+1)+4)+3, 2]+1`
-/

namespace A066498.P3276085305438521486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128834 (A000010 (n + 1) + 4).toNat + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066498.P3276085305438521486

namespace A066498

/-- `lt[n*A128834(A000010(n+1)+4)+3, 2]+1` -/
def P3276085305438521486.Spec : Prop :=
  ∀ n, (P3276085305438521486.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P18431325047413750985

`eq[0, A084300(n+1)]+1`
-/

namespace A066498.P18431325047413750985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066498.P18431325047413750985

namespace A066498

/-- `eq[0, A084300(n+1)]+1` -/
def P18431325047413750985.Spec : Prop :=
  ∀ n, (P18431325047413750985.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P14024178910380752422

`lt[1, A060839(n+1)]+1`
-/

namespace A066498.P14024178910380752422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066498.P14024178910380752422

namespace A066498

/-- `lt[1, A060839(n+1)]+1` -/
def P14024178910380752422.Spec : Prop :=
  ∀ n, (P14024178910380752422.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P8136399199799626726

`lt[2, A343783(n+1)]+1`
-/

namespace A066498.P8136399199799626726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066498.P8136399199799626726

namespace A066498

/-- `lt[2, A343783(n+1)]+1` -/
def P8136399199799626726.Spec : Prop :=
  ∀ n, (P8136399199799626726.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P14735909732906430466

`lt[A091733(n+1), n]+1`
-/

namespace A066498.P14735909732906430466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066498.P14735909732906430466

namespace A066498

/-- `lt[A091733(n+1), n]+1` -/
def P14735909732906430466.Spec : Prop :=
  ∀ n, (P14735909732906430466.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P13848909491681697607

`eq[1, A074942(n+1)+1]+1`
-/

namespace A066498.P13848909491681697607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074942 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066498.P13848909491681697607

namespace A066498

/-- `eq[1, A074942(n+1)+1]+1` -/
def P13848909491681697607.Spec : Prop :=
  ∀ n, (P13848909491681697607.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P11095795021860338782

`eq[2, (7*A039649(n+1))%3+1]+1`
-/

namespace A066498.P11095795021860338782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A039649 (n + 1)) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066498.P11095795021860338782

namespace A066498

/-- `eq[2, (7*A039649(n+1))%3+1]+1` -/
def P11095795021860338782.Spec : Prop :=
  ∀ n, (P11095795021860338782.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P11306543631082523680

`lt[A014963(A319100(n+3)), 2]+3`
-/

namespace A066498.P11306543631082523680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A319100 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A066498.P11306543631082523680

namespace A066498

/-- `lt[A014963(A319100(n+3)), 2]+3` -/
def P11306543631082523680.Spec : Prop :=
  ∀ n, (P11306543631082523680.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P12663402983357797572

`lt[1, val(A000010(A004277(n)), 3)²+1]`
-/

namespace A066498.P12663402983357797572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A004277 n).toNat).toNat 3 ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066498.P12663402983357797572

namespace A066498

/-- `lt[1, val(A000010(A004277(n)), 3)²+1]` -/
def P12663402983357797572.Spec : Prop :=
  ∀ n, (P12663402983357797572.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P13658392985019336693

`lt[A130724(A000010(n+1)), A060819(n+1)]+1`
-/

namespace A066498.P13658392985019336693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066498.P13658392985019336693

namespace A066498

/-- `lt[A130724(A000010(n+1)), A060819(n+1)]+1` -/
def P13658392985019336693.Spec : Prop :=
  ∀ n, (P13658392985019336693.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P11869863419615012

`lt[A039649(n+1), A347633(A039649(n+1))]+1`
-/

namespace A066498.P11869863419615012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066498.P11869863419615012

namespace A066498

/-- `lt[A039649(n+1), A347633(A039649(n+1))]+1` -/
def P11869863419615012.Spec : Prop :=
  ∀ n, (P11869863419615012.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P12324979057844609693

`lt[A130724(A109606(n+1)+1), A060819(n+1)]+1`
-/

namespace A066498.P12324979057844609693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A109606 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066498.P12324979057844609693

namespace A066498

/-- `lt[A130724(A109606(n+1)+1), A060819(n+1)]+1` -/
def P12324979057844609693.Spec : Prop :=
  ∀ n, (P12324979057844609693.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P14863984090373962415

`eq[1, A049347(A000010(A008574(n)))]`
-/

namespace A066498.P14863984090373962415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000010 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066498.P14863984090373962415

namespace A066498

/-- `eq[1, A049347(A000010(A008574(n)))]` -/
def P14863984090373962415.Spec : Prop :=
  ∀ n, (P14863984090373962415.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P8267673184640858919

`eq[2, A059126(A225530(n)+1)]`
-/

namespace A066498.P8267673184640858919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A225530 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066498.P8267673184640858919

namespace A066498

/-- `eq[2, A059126(A225530(n)+1)]` -/
def P8267673184640858919.Spec : Prop :=
  ∀ n, (P8267673184640858919.a n : ℤ) = A066498 (n + 1)

end A066498

/-! ## A066498.P16127152513645179561

`eq[1, A036118(2*A225530(n))]`
-/

namespace A066498.P16127152513645179561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036118 (2 * A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066498.P16127152513645179561

namespace A066498

/-- `eq[1, A036118(2*A225530(n))]` -/
def P16127152513645179561.Spec : Prop :=
  ∀ n, (P16127152513645179561.a n : ℤ) = A066498 (n + 1)

end A066498

/-!
# A066499: Numbers k such that phi(k) == 2 (mod 4).

The programs for A066499, there is no canonical definition to state claims against.
-/

/-! ## A066499.P16104042203637886816

`∪[A015713(n+1), A292762(n+1)]`
-/

namespace A066499.P16104042203637886816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066499.P16104042203637886816

/-! ## A066499.P16566778913314069963

`A097987(n+3)`
-/

namespace A066499.P16566778913314069963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 3)

end

end A066499.P16566778913314069963

/-! ## A066499.P8153463172306337955

`eq[2, A353768(n+1)]+1`
-/

namespace A066499.P8153463172306337955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P8153463172306337955

/-! ## A066499.P980254961817277517

`eq[2, A000010(n+1)%4]+1`
-/

namespace A066499.P980254961817277517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P980254961817277517

/-! ## A066499.P18017707736158509181

`eq[2, gcd(2*a(n-1), A000010(n))]` with `a(0)=0`
-/

namespace A066499.P18017707736158509181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (2 * f2 (n - 1) : ℤ) (A000010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066499.P18017707736158509181

/-! ## A066499.P11590878026088529251

`filter[A081754(n+3), A211487(#)]`
-/

namespace A066499.P11590878026088529251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A066499.P11590878026088529251

/-! ## A066499.P18443237735282734119

`filter[A004144(n+3), A211487(#)]`
-/

namespace A066499.P18443237735282734119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A066499.P18443237735282734119

/-! ## A066499.P13788289678242523608

`filter[A004439(n+3), A211487(#)]`
-/

namespace A066499.P13788289678242523608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A066499.P13788289678242523608

/-! ## A066499.P14970748091920794259

`filter[A192450(n+1), A211487(#)]`
-/

namespace A066499.P14970748091920794259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A066499.P14970748091920794259

/-! ## A066499.P16369802889542470233

`∩[A033948(n+1), A192450(n+1)]`
-/

namespace A066499.P16369802889542470233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066499.P16369802889542470233

/-! ## A066499.P8572782853039772255

`eq[1, A007814(A000010(n+1))]+1`
-/

namespace A066499.P8572782853039772255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P8572782853039772255

/-! ## A066499.P12205605112846078289

`lt[2, A255051(A000010(n+3))]+3`
-/

namespace A066499.P12205605112846078289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (A000010 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A066499.P12205605112846078289

/-! ## A066499.P16853491205644004895

`eq[1, A053574(n+1)]+1`
-/

namespace A066499.P16853491205644004895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P16853491205644004895

/-! ## A066499.P13593133980726638333

`eq[2, A069177(n+1)]+1`
-/

namespace A066499.P13593133980726638333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P13593133980726638333

/-! ## A066499.P13800859050779830850

`eq[2, A073103(n+1)]+1`
-/

namespace A066499.P13800859050779830850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P13800859050779830850

/-! ## A066499.P9443481213058109924

`eq[2, A247257(n+1)]+1`
-/

namespace A066499.P9443481213058109924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066499.P9443481213058109924

/-! ## A066499.P11047716559870046327

`lt[2, A001511(A039649(n+1)+1)]+1`
-/

namespace A066499.P11047716559870046327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A039649 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066499.P11047716559870046327

/-! ## A066499.P5568542348232371156

`lt[4, A347634(A039649(n+1)-1)]+1`
-/

namespace A066499.P5568542348232371156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066499.P5568542348232371156

