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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
# A128800: a(n) = n*(n-1)*6^n.

The programs for A128800, the canonical program `A128800.P10224391665860480770` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128800 has offset 0).

The definition of A128800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*6^n` (program `A128800.P10224391665860480770`, by `A128800.P10224391665860480770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128800.P17548065494713649169

`(n²-n)*6^n`
-/

namespace A128800.P17548065494713649169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (6 ^ n : ℤ)

end

end A128800.P17548065494713649169

namespace A128800

/-- `(n²-n)*6^n` -/
def P17548065494713649169.Spec : Prop :=
  ∀ n, P17548065494713649169.a n = A128800 n

theorem P17548065494713649169.correct : P17548065494713649169.Spec := by
  intro n
  simp only [A128800, Nat.add_sub_cancel, A128800.P17548065494713649169.a, A128800.P10224391665860480770.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128800

/-! ## A128800.P10224391665860480770

`n*(n-1)*6^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128800

/-- `n*(n-1)*6^n` -/
def P10224391665860480770.Spec : Prop :=
  ∀ n, P10224391665860480770.a n = A128800 n

theorem P10224391665860480770.correct : P10224391665860480770.Spec := by
  intro n
  simp only [A128800]

end A128800

/-! ## A128800.P15176693533714428685

`18*a(n-1)-108*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=0, a(2)=72`
-/

namespace A128800.P15176693533714428685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 72] fun n a =>
  18 * a (n - 1) - 108 * a (n - 2) + 216 * a (n - 3)

end

end A128800.P15176693533714428685

namespace A128800

/-- `18*a(n-1)-108*a(n-2)+216*a(n-3)` -/
def P15176693533714428685.Spec : Prop :=
  ∀ n, P15176693533714428685.a n = A128800 n

theorem P15176693533714428685.correct : P15176693533714428685.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128800, Nat.add_sub_cancel, A128800.P15176693533714428685.a, A128800.P10224391665860480770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128800, Nat.add_sub_cancel, A128800.P15176693533714428685.a, A128800.P10224391665860480770.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128800

/-! ## A128800.P2881093824802990964

`abs((n-1)*A036292(n))`
-/

namespace A128800.P2881093824802990964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A036292 n|

end

end A128800.P2881093824802990964

namespace A128800

/-- `abs((n-1)*A036292(n))` -/
def P2881093824802990964.Spec : Prop :=
  ∀ n, P2881093824802990964.a n = A128800 n

end A128800

/-! ## A128800.P2828574713626969270

`abs((n²-n)*A000400(n))`
-/

namespace A128800.P2828574713626969270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * A000400 n|

end

end A128800.P2828574713626969270

namespace A128800

/-- `abs((n²-n)*A000400(n))` -/
def P2828574713626969270.Spec : Prop :=
  ∀ n, P2828574713626969270.a n = A128800 n

end A128800

/-! ## A128800.P7418342158670261255

`abs((n²-n)*A026549(2*n))`
-/

namespace A128800.P7418342158670261255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * A026549 (2 * n)|

end

end A128800.P7418342158670261255

namespace A128800

/-- `abs((n²-n)*A026549(2*n))` -/
def P7418342158670261255.Spec : Prop :=
  ∀ n, P7418342158670261255.a n = A128800 n

end A128800

/-! ## A128800.P16447320169126370530

`lcm((n²-n)/2^-n, A128797(n))`
-/

namespace A128800.P16447320169126370530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ))) (A128797 n)

end

end A128800.P16447320169126370530

namespace A128800

/-- `lcm((n²-n)/2^-n, A128797(n))` -/
def P16447320169126370530.Spec : Prop :=
  ∀ n, (P16447320169126370530.a n : ℤ) = A128800 n

end A128800

/-! ## A128800.P16711285687910104153

`-A036290(n)*A159964(n)`
-/

namespace A128800.P16711285687910104153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A036290 n * A159964 n)

end

end A128800.P16711285687910104153

namespace A128800

/-- `-A036290(n)*A159964(n)` -/
def P16711285687910104153.Spec : Prop :=
  ∀ n, P16711285687910104153.a n = A128800 n

end A128800

/-! ## A128800.P3375294306114012407

`(n²+1)*A000400(n)-A053469(n+1)`
-/

namespace A128800.P3375294306114012407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A000400 n - A053469 (n + 1)

end

end A128800.P3375294306114012407

namespace A128800

/-- `(n²+1)*A000400(n)-A053469(n+1)` -/
def P3375294306114012407.Spec : Prop :=
  ∀ n, P3375294306114012407.a n = A128800 n

end A128800

/-! ## A128800.P18206761378802318580

`abs((A000244(n)-A000007(n))*A128796(n))`
-/

namespace A128800.P18206761378802318580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000244 n - A000007 n) * A128796 n|

end

end A128800.P18206761378802318580

namespace A128800

/-- `abs((A000244(n)-A000007(n))*A128796(n))` -/
def P18206761378802318580.Spec : Prop :=
  ∀ n, P18206761378802318580.a n = A128800 n

end A128800

/-! ## A128800.P17760675157834027704

`A128964(A028310(n))/(n+1)`
-/

namespace A128800.P17760675157834027704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128964 (A028310 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A128800.P17760675157834027704

namespace A128800

/-- `A128964(A028310(n))/(n+1)` -/
def P17760675157834027704.Spec : Prop :=
  ∀ n, P17760675157834027704.a n = (A128800 n : ℚ)

end A128800

/-!
# A128801: a(n) = n*(n-1)*7^n.

The programs for A128801, the canonical program `A128801.P6047746327980613733` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128801 has offset 1).

The definition of A128801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*n*7^(n+1)` (program `A128801.P6047746327980613733`, by `A128801.P6047746327980613733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128801.P6047746327980613733

`(n+1)*n*7^(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128801

/-- `(n+1)*n*7^(n+1)` -/
def P6047746327980613733.Spec : Prop :=
  ∀ n, (P6047746327980613733.a n : ℤ) = A128801 (n + 1)

theorem P6047746327980613733.correct : P6047746327980613733.Spec := by
  intro n
  simp only [A128801, Nat.add_sub_cancel]

end A128801

/-! ## A128801.P5679998947212225423

`n*A064753(n+1)+n`
-/

namespace A128801.P5679998947212225423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064753 (n + 1) + (n : ℤ)

end

end A128801.P5679998947212225423

namespace A128801

/-- `n*A064753(n+1)+n` -/
def P5679998947212225423.Spec : Prop :=
  ∀ n, P5679998947212225423.a n = A128801 (n + 1)

end A128801

/-! ## A128801.P16968029873037310123

`n*A050919(n+1)-n`
-/

namespace A128801.P16968029873037310123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050919 (n + 1) - (n : ℤ)

end

end A128801.P16968029873037310123

namespace A128801

/-- `n*A050919(n+1)-n` -/
def P16968029873037310123.Spec : Prop :=
  ∀ n, P16968029873037310123.a n = A128801 (n + 1)

end A128801

/-! ## A128801.P15853734346008312804

`A128786(n+1)-A036293(n+1)`
-/

namespace A128801.P15853734346008312804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128786 (n + 1) - A036293 (n + 1)

end

end A128801.P15853734346008312804

namespace A128801

/-- `A128786(n+1)-A036293(n+1)` -/
def P15853734346008312804.Spec : Prop :=
  ∀ n, P15853734346008312804.a n = A128801 (n + 1)

end A128801

/-! ## A128801.P15908727842007734056

`abs((n²+n)*(A198691(n)-A198647(n)))`
-/

namespace A128801.P15908727842007734056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 + n : ℤ) * (A198691 n - A198647 n)|

end

end A128801.P15908727842007734056

namespace A128801

/-- `abs((n²+n)*(A198691(n)-A198647(n)))` -/
def P15908727842007734056.Spec : Prop :=
  ∀ n, P15908727842007734056.a n = A128801 (n + 1)

end A128801

/-! ## A128801.P1630642243096864597

`A128990(n+1)/(n+1)`
-/

namespace A128801.P1630642243096864597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128990 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128801.P1630642243096864597

namespace A128801

/-- `A128990(n+1)/(n+1)` -/
def P1630642243096864597.Spec : Prop :=
  ∀ n, P1630642243096864597.a n = (A128801 (n + 1) : ℚ)

end A128801

/-! ## A128801.P13614048138185707260

`A128965(n+1)/(n+2)`
-/

namespace A128801.P13614048138185707260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128965 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A128801.P13614048138185707260

namespace A128801

/-- `A128965(n+1)/(n+2)` -/
def P13614048138185707260.Spec : Prop :=
  ∀ n, P13614048138185707260.a n = (A128801 (n + 1) : ℚ)

end A128801

/-! ## A128801.P4087078308273991594

`A128965(n+1)-A128990(n+1)`
-/

namespace A128801.P4087078308273991594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128965 (n + 1) - A128990 (n + 1)

end

end A128801.P4087078308273991594

namespace A128801

/-- `A128965(n+1)-A128990(n+1)` -/
def P4087078308273991594.Spec : Prop :=
  ∀ n, P4087078308273991594.a n = A128801 (n + 1)

end A128801

/-! ## A128801.P11407536119087144204

`gcd(A128965(A028310(n+1)), A128990(n+1))`
-/

namespace A128801.P11407536119087144204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128965 (A028310 (n + 1)).toNat) (A128990 (n + 1))

end

end A128801.P11407536119087144204

namespace A128801

/-- `gcd(A128965(A028310(n+1)), A128990(n+1))` -/
def P11407536119087144204.Spec : Prop :=
  ∀ n, (P11407536119087144204.a n : ℤ) = A128801 (n + 1)

end A128801

/-! ## A128801.P2473579434954813909

`A128796(n+1)*A129007(n+1)/A129002(n+1)`
-/

namespace A128801.P2473579434954813909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 (n + 1) * A129007 (n + 1) : ℚ) / (A129002 (n + 1) : ℚ)

end

end A128801.P2473579434954813909

namespace A128801

/-- `A128796(n+1)*A129007(n+1)/A129002(n+1)` -/
def P2473579434954813909.Spec : Prop :=
  ∀ n, P2473579434954813909.a n = (A128801 (n + 1) : ℚ)

end A128801

/-!
# A128802: a(n) = n*(n-1)*8^n.

The programs for A128802, the canonical program `A128802.P17519604773978538580` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128802 has offset 0).

The definition of A128802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*8^n` (program `A128802.P17519604773978538580`, by `A128802.P17519604773978538580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128802.P12914628240242621253

`(n²-n)*8^n`
-/

namespace A128802.P12914628240242621253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (8 ^ n : ℤ)

end

end A128802.P12914628240242621253

namespace A128802

/-- `(n²-n)*8^n` -/
def P12914628240242621253.Spec : Prop :=
  ∀ n, P12914628240242621253.a n = A128802 n

theorem P12914628240242621253.correct : P12914628240242621253.Spec := by
  intro n
  simp only [A128802, Nat.add_sub_cancel, A128802.P12914628240242621253.a, A128802.P17519604773978538580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128802

/-! ## A128802.P17519604773978538580

`n*(n-1)*8^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128802

/-- `n*(n-1)*8^n` -/
def P17519604773978538580.Spec : Prop :=
  ∀ n, P17519604773978538580.a n = A128802 n

theorem P17519604773978538580.correct : P17519604773978538580.Spec := by
  intro n
  simp only [A128802]

end A128802

/-! ## A128802.P1988193055068845455

`24*a(n-1)-192*a(n-2)+512*a(n-3)` with `a(0)=0, a(1)=0, a(2)=128`
-/

namespace A128802.P1988193055068845455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 128] fun n a =>
  24 * a (n - 1) - 192 * a (n - 2) + 512 * a (n - 3)

end

end A128802.P1988193055068845455

namespace A128802

/-- `24*a(n-1)-192*a(n-2)+512*a(n-3)` -/
def P1988193055068845455.Spec : Prop :=
  ∀ n, P1988193055068845455.a n = A128802 n

theorem P1988193055068845455.correct : P1988193055068845455.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128802, Nat.add_sub_cancel, A128802.P1988193055068845455.a, A128802.P17519604773978538580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128802, Nat.add_sub_cancel, A128802.P1988193055068845455.a, A128802.P17519604773978538580.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128802

/-! ## A128802.P12753591929907044422

`abs((n-1)*A036294(n))`
-/

namespace A128802.P12753591929907044422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A036294 n|

end

end A128802.P12753591929907044422

namespace A128802

/-- `abs((n-1)*A036294(n))` -/
def P12753591929907044422.Spec : Prop :=
  ∀ n, P12753591929907044422.a n = A128802 n

end A128802

/-! ## A128802.P10650537989637669478

`8^n+8^n*A165900(n)`
-/

namespace A128802.P10650537989637669478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) + (8 ^ n : ℤ) * A165900 n

end

end A128802.P10650537989637669478

namespace A128802

/-- `8^n+8^n*A165900(n)` -/
def P10650537989637669478.Spec : Prop :=
  ∀ n, P10650537989637669478.a n = A128802 n

end A128802

/-! ## A128802.P13581268899295527390

`lcm(2, (n²-n)*A000079(3*n))`
-/

namespace A128802.P13581268899295527390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n ^ 2 : ℤ) - (n : ℤ)) * A000079 (3 * n))

end

end A128802.P13581268899295527390

namespace A128802

/-- `lcm(2, (n²-n)*A000079(3*n))` -/
def P13581268899295527390.Spec : Prop :=
  ∀ n, (P13581268899295527390.a n : ℤ) = A128802 n

end A128802

/-! ## A128802.P1461441346420114899

`abs(A036294(n)*A259525(∑[n]))`
-/

namespace A128802.P1461441346420114899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036294 n * A259525 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A128802.P1461441346420114899

namespace A128802

/-- `abs(A036294(n)*A259525(∑[n]))` -/
def P1461441346420114899.Spec : Prop :=
  ∀ n, P1461441346420114899.a n = A128802 n

end A128802

/-! ## A128802.P12438949611790718697

`lcm(2, Δ[A000918(n)]*A128798(n))`
-/

namespace A128802.P12438949611790718697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) - f1 n) * A128798 n)

end

end A128802.P12438949611790718697

namespace A128802

/-- `lcm(2, Δ[A000918(n)]*A128798(n))` -/
def P12438949611790718697.Spec : Prop :=
  ∀ n, (P12438949611790718697.a n : ℤ) = A128802 n

end A128802

/-! ## A128802.P9728939880064156772

`abs((n²-n)*A000079(n)*A000079(n)²)`
-/

namespace A128802.P9728939880064156772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * A000079 n * A000079 n ^ 2|

end

end A128802.P9728939880064156772

namespace A128802

/-- `abs((n²-n)*A000079(n)*A000079(n)²)` -/
def P9728939880064156772.Spec : Prop :=
  ∀ n, P9728939880064156772.a n = A128802 n

end A128802

/-! ## A128802.P2079603651158048302

`abs(2*(n-1)*A001787(n)*A000079(2*n))`
-/

namespace A128802.P2079603651158048302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) - 1) * A001787 n * A000079 (2 * n)|

end

end A128802.P2079603651158048302

namespace A128802

/-- `abs(2*(n-1)*A001787(n)*A000079(2*n))` -/
def P2079603651158048302.Spec : Prop :=
  ∀ n, P2079603651158048302.a n = A128802 n

end A128802

/-! ## A128802.P8122215515884783105

`abs((∑[(n-1)*A001792(n)]+1)*A000079(2*n))`
-/

namespace A128802.P8122215515884783105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000079 (2 * n)|

end

end A128802.P8122215515884783105

namespace A128802

/-- `abs((∑[(n-1)*A001792(n)]+1)*A000079(2*n))` -/
def P8122215515884783105.Spec : Prop :=
  ∀ n, P8122215515884783105.a n = A128802 n

end A128802

/-! ## A128802.P7002096230056226750

`abs((n*(A000337(n)+2)-3*n)*A000079(2*n))`
-/

namespace A128802.P7002096230056226750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * (A000337 n + 2) - (3 * n : ℤ)) * A000079 (2 * n)|

end

end A128802.P7002096230056226750

namespace A128802

/-- `abs((n*(A000337(n)+2)-3*n)*A000079(2*n))` -/
def P7002096230056226750.Spec : Prop :=
  ∀ n, P7002096230056226750.a n = A128802 n

end A128802

/-! ## A128802.P3316997656620675399

`abs(2*n*(n-1)*A011782(n)*A000079(2*n))`
-/

namespace A128802.P3316997656620675399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * (((n : ℤ) - 1) * A011782 n) * A000079 (2 * n)|

end

end A128802.P3316997656620675399

namespace A128802

/-- `abs(2*n*(n-1)*A011782(n)*A000079(2*n))` -/
def P3316997656620675399.Spec : Prop :=
  ∀ n, P3316997656620675399.a n = A128802 n

end A128802

/-! ## A128802.P1046286046697896074

`abs((n-1)*n*A020707(n)/4*A000079(2*n))`
-/

namespace A128802.P1046286046697896074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((n : ℤ) - 1) * ((n : ℤ) * A020707 n) : ℚ) / 4 * (A000079 (2 * n) : ℚ)|

end

end A128802.P1046286046697896074

namespace A128802

/-- `abs((n-1)*n*A020707(n)/4*A000079(2*n))` -/
def P1046286046697896074.Spec : Prop :=
  ∀ n, P1046286046697896074.a n = (A128802 n : ℚ)

end A128802

/-! ## A128802.P10680959025092550655

`abs(floor(((n-1)*4*A036289(n)+1)/4)*A000079(2*n))`
-/

namespace A128802.P10680959025092550655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(((n : ℤ) - 1) * (4 * A036289 n) + 1 : ℚ) / 4⌋ * A000079 (2 * n)|

end

end A128802.P10680959025092550655

namespace A128802

/-- `abs(floor(((n-1)*4*A036289(n)+1)/4)*A000079(2*n))` -/
def P10680959025092550655.Spec : Prop :=
  ∀ n, P10680959025092550655.a n = A128802 n

end A128802

/-! ## A128802.P18121142093820614671

`A001018(n)*A002061(n)-A001018(n)`
-/

namespace A128802.P18121142093820614671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n * A002061 n - A001018 n

end

end A128802.P18121142093820614671

namespace A128802

/-- `A001018(n)*A002061(n)-A001018(n)` -/
def P18121142093820614671.Spec : Prop :=
  ∀ n, P18121142093820614671.a n = A128802 n

end A128802

/-! ## A128802.P11007735058947446008

`A018215(n)*A036289(n)-A036294(n)`
-/

namespace A128802.P11007735058947446008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n * A036289 n - A036294 n

end

end A128802.P11007735058947446008

namespace A128802

/-- `A018215(n)*A036289(n)-A036294(n)` -/
def P11007735058947446008.Spec : Prop :=
  ∀ n, P11007735058947446008.a n = A128802 n

end A128802

/-! ## A128802.P11280119588190731332

`A128796(n)/(A000079(n)/A000302(n))²`
-/

namespace A128802.P11280119588190731332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 n : ℚ) / ((A000079 n : ℚ) / (A000302 n : ℚ)) ^ 2

end

end A128802.P11280119588190731332

namespace A128802

/-- `A128796(n)/(A000079(n)/A000302(n))²` -/
def P11280119588190731332.Spec : Prop :=
  ∀ n, P11280119588190731332.a n = (A128802 n : ℚ)

end A128802

/-!
# A128803: a(n) = n*(n-1)*9^n.

The programs for A128803, the canonical program `A128803.P14188677302043250159` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128803 has offset 0).

The definition of A128803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*9^n` (program `A128803.P14188677302043250159`, by `A128803.P14188677302043250159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128803.P15992566165560889813

`(n²-n)*9^n`
-/

namespace A128803.P15992566165560889813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (9 ^ n : ℤ)

end

end A128803.P15992566165560889813

namespace A128803

/-- `(n²-n)*9^n` -/
def P15992566165560889813.Spec : Prop :=
  ∀ n, P15992566165560889813.a n = A128803 n

theorem P15992566165560889813.correct : P15992566165560889813.Spec := by
  intro n
  simp only [A128803, Nat.add_sub_cancel, A128803.P15992566165560889813.a, A128803.P14188677302043250159.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128803

/-! ## A128803.P14188677302043250159

`n*(n-1)*9^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128803

/-- `n*(n-1)*9^n` -/
def P14188677302043250159.Spec : Prop :=
  ∀ n, P14188677302043250159.a n = A128803 n

theorem P14188677302043250159.correct : P14188677302043250159.Spec := by
  intro n
  simp only [A128803]

end A128803

/-! ## A128803.P12576523919087700908

`27*a(n-1)-243*a(n-2)+729*a(n-3)` with `a(0)=0, a(1)=0, a(2)=162`
-/

namespace A128803.P12576523919087700908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 162] fun n a =>
  27 * a (n - 1) - 243 * a (n - 2) + 729 * a (n - 3)

end

end A128803.P12576523919087700908

namespace A128803

/-- `27*a(n-1)-243*a(n-2)+729*a(n-3)` -/
def P12576523919087700908.Spec : Prop :=
  ∀ n, P12576523919087700908.a n = A128803 n

theorem P12576523919087700908.correct : P12576523919087700908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128803, Nat.add_sub_cancel, A128803.P12576523919087700908.a, A128803.P14188677302043250159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128803, Nat.add_sub_cancel, A128803.P12576523919087700908.a, A128803.P14188677302043250159.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128803

/-! ## A128803.P18295748731158736121

`abs((n-1)*A158749(n))`
-/

namespace A128803.P18295748731158736121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A158749 n|

end

end A128803.P18295748731158736121

namespace A128803

/-- `abs((n-1)*A158749(n))` -/
def P18295748731158736121.Spec : Prop :=
  ∀ n, P18295748731158736121.a n = A128803 n

end A128803

/-! ## A128803.P12875136390315419442

`abs((n²-n)*A001019(n))`
-/

namespace A128803.P12875136390315419442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * A001019 n|

end

end A128803.P12875136390315419442

namespace A128803

/-- `abs((n²-n)*A001019(n))` -/
def P12875136390315419442.Spec : Prop :=
  ∀ n, P12875136390315419442.a n = A128803 n

end A128803

/-! ## A128803.P2806580693105691856

`abs((n-1)*n*A000244(n)²)`
-/

namespace A128803.P2806580693105691856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * ((n : ℤ) * A000244 n ^ 2)|

end

end A128803.P2806580693105691856

namespace A128803

/-- `abs((n-1)*n*A000244(n)²)` -/
def P2806580693105691856.Spec : Prop :=
  ∀ n, P2806580693105691856.a n = A128803 n

end A128803

/-! ## A128803.P16392695082546178168

`A036290(n)²-A158749(n)`
-/

namespace A128803.P16392695082546178168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n ^ 2 - A158749 n

end

end A128803.P16392695082546178168

namespace A128803

/-- `A036290(n)²-A158749(n)` -/
def P16392695082546178168.Spec : Prop :=
  ∀ n, P16392695082546178168.a n = A128803 n

end A128803

/-! ## A128803.P7886785509778627447

`floor(log2(A011782(n))*A158749(n))`
-/

namespace A128803.P7886785509778627447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A011782 n : ℝ) * (A158749 n : ℝ)⌋

end

end A128803.P7886785509778627447

namespace A128803

/-- `floor(log2(A011782(n))*A158749(n))` -/
def P7886785509778627447.Spec : Prop :=
  ∀ n, P7886785509778627447.a n = A128803 n

end A128803

/-! ## A128803.P17414173885644238374

`A000007(n+1)+log2(A011782(n))*A158749(n)`
-/

namespace A128803.P17414173885644238374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + Real.logb 2 (A011782 n : ℝ) * (A158749 n : ℝ)

end

end A128803.P17414173885644238374

namespace A128803

/-- `A000007(n+1)+log2(A011782(n))*A158749(n)` -/
def P17414173885644238374.Spec : Prop :=
  ∀ n, P17414173885644238374.a n = (A128803 n : ℝ)

end A128803

/-! ## A128803.P8778421788581649219

`log2(A011782(n))*A158749(n)/A010688(2*n)`
-/

namespace A128803.P8778421788581649219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A011782 n : ℝ) * (A158749 n : ℝ) / (A010688 (2 * n) : ℝ)

end

end A128803.P8778421788581649219

namespace A128803

/-- `log2(A011782(n))*A158749(n)/A010688(2*n)` -/
def P8778421788581649219.Spec : Prop :=
  ∀ n, P8778421788581649219.a n = (A128803 n : ℝ)

end A128803

/-!
# A128805: Number of valley-avoiding compositions with positive parts.

The programs for A128805, there is no canonical definition to state claims against.
-/

/-! ## A128805.P9352199781757815208

`A010060(A006086(n+1))+A008937(n)`
-/

namespace A128805.P9352199781757815208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A006086 (n + 1)).toNat + A008937 n

end

end A128805.P9352199781757815208

/-! ## A128805.P3981437722109896757

`A010054(A117302(n+1))+A008937(n)`
-/

namespace A128805.P3981437722109896757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A117302 (n + 1)).toNat + A008937 n

end

end A128805.P3981437722109896757

/-! ## A128805.P10705558789968318768

`A055641(A151745(n+1))+A008937(n)`
-/

namespace A128805.P10705558789968318768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A151745 (n + 1)).toNat + A008937 n

end

end A128805.P10705558789968318768

/-! ## A128805.P9636855895565519468

`A185037(A002865(n))+A028310(A008937(n))`
-/

namespace A128805.P9636855895565519468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A002865 n).toNat + A028310 (A008937 n).toNat

end

end A128805.P9636855895565519468

/-! ## A128805.P4836808817428387480

`∏{e}[3^n, A008937(#)]`
-/

namespace A128805.P4836808817428387480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008937 (Nat.factorization (f1 n) p)

end

end A128805.P4836808817428387480

/-!
# A128806: a(n) = A001316(n) + A046092(n).

The programs for A128806, the canonical program `A128806.P9737040730051066089` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128806 has offset 0).

The definition of A128806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128806.P9737040730051066089

`A001316(n)+A046092(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128806

/-- `A001316(n)+A046092(n)` -/
def P9737040730051066089.Spec : Prop :=
  ∀ n, P9737040730051066089.a n = A128806 n

theorem P9737040730051066089.correct : P9737040730051066089.Spec := by
  intro n
  simp only [A128806]

end A128806

/-! ## A128806.P3594244777810764864

`∑[4*n]+2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A128806.P3594244777810764864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ)

end

end A128806.P3594244777810764864

namespace A128806

/-- `∑[4*n]+2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P3594244777810764864.Spec : Prop :=
  ∀ n, P3594244777810764864.a n = (A128806 n : ℚ)

end A128806

/-! ## A128806.P16114292862051106016

`∑[4*n]+sqrt(A102376(n))`
-/

namespace A128806.P16114292862051106016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (A102376 n : ℝ)

end

end A128806.P16114292862051106016

namespace A128806

/-- `∑[4*n]+sqrt(A102376(n))` -/
def P16114292862051106016.Spec : Prop :=
  ∀ n, P16114292862051106016.a n = (A128806 n : ℝ)

end A128806

/-! ## A128806.P4239566862394738523

`Δ[A006046(n)]+∑[4*n]`
-/

namespace A128806.P4239566862394738523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A128806.P4239566862394738523

namespace A128806

/-- `Δ[A006046(n)]+∑[4*n]` -/
def P4239566862394738523.Spec : Prop :=
  ∀ n, P4239566862394738523.a n = A128806 n

end A128806

/-! ## A128806.P18398979131182967289

`A038573(n)+∑[4*n]+1`
-/

namespace A128806.P18398979131182967289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A128806.P18398979131182967289

namespace A128806

/-- `A038573(n)+∑[4*n]+1` -/
def P18398979131182967289.Spec : Prop :=
  ∀ n, P18398979131182967289.a n = A128806 n

end A128806

/-! ## A128806.P6316053664324864019

`∑[4*n+1]-A048967(n)`
-/

namespace A128806.P6316053664324864019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A048967 n

end

end A128806.P6316053664324864019

namespace A128806

/-- `∑[4*n+1]-A048967(n)` -/
def P6316053664324864019.Spec : Prop :=
  ∀ n, P6316053664324864019.a n = A128806 n

end A128806

/-! ## A128806.P1448632989638107121

`∑[4*n]+2^A000120(n)`
-/

namespace A128806.P1448632989638107121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (2 : ℚ) ^ (A000120 n : ℤ)

end

end A128806.P1448632989638107121

namespace A128806

/-- `∑[4*n]+2^A000120(n)` -/
def P1448632989638107121.Spec : Prop :=
  ∀ n, P1448632989638107121.a n = (A128806 n : ℚ)

end A128806

/-! ## A128806.P1154567048057223395

`A060632(2*n)+2*(n²+n)`
-/

namespace A128806.P1154567048057223395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) + (2 * (n ^ 2 + n) : ℤ)

end

end A128806.P1154567048057223395

namespace A128806

/-- `A060632(2*n)+2*(n²+n)` -/
def P1154567048057223395.Spec : Prop :=
  ∀ n, P1154567048057223395.a n = A128806 n

end A128806

/-! ## A128806.P8066101330310725499

`A001316(n)+A001844(n)-1`
-/

namespace A128806.P8066101330310725499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A001844 n - 1)

end

end A128806.P8066101330310725499

namespace A128806

/-- `A001316(n)+A001844(n)-1` -/
def P8066101330310725499.Spec : Prop :=
  ∀ n, P8066101330310725499.a n = A128806 n

end A128806

/-! ## A128806.P15339165882374101480

`A001316(n)+A033996(n)/2`
-/

namespace A128806.P15339165882374101480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) + (A033996 n : ℚ) / 2

end

end A128806.P15339165882374101480

namespace A128806

/-- `A001316(n)+A033996(n)/2` -/
def P15339165882374101480.Spec : Prop :=
  ∀ n, P15339165882374101480.a n = (A128806 n : ℚ)

end A128806

/-! ## A128806.P245755048696666907

`A001316(n)+n*A103517(n)`
-/

namespace A128806.P245755048696666907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (n : ℤ) * A103517 n

end

end A128806.P245755048696666907

namespace A128806

/-- `A001316(n)+n*A103517(n)` -/
def P245755048696666907.Spec : Prop :=
  ∀ n, P245755048696666907.a n = A128806 n

end A128806

/-! ## A128806.P16011835724608360481

`A000079(A000120(n))+∑[4*n]`
-/

namespace A128806.P16011835724608360481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128806.P16011835724608360481

namespace A128806

/-- `A000079(A000120(n))+∑[4*n]` -/
def P16011835724608360481.Spec : Prop :=
  ∀ n, P16011835724608360481.a n = A128806 n

end A128806

/-! ## A128806.P9663195039746851349

`n²+A005563(n)+A001316(n)`
-/

namespace A128806.P9663195039746851349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A005563 n + A001316 n)

end

end A128806.P9663195039746851349

namespace A128806

/-- `n²+A005563(n)+A001316(n)` -/
def P9663195039746851349.Spec : Prop :=
  ∀ n, P9663195039746851349.a n = A128806 n

end A128806

/-! ## A128806.P16523171642371422354

`A000217(2*n)+A001316(n)+n`
-/

namespace A128806.P16523171642371422354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) + (A001316 n + (n : ℤ))

end

end A128806.P16523171642371422354

namespace A128806

/-- `A000217(2*n)+A001316(n)+n` -/
def P16523171642371422354.Spec : Prop :=
  ∀ n, P16523171642371422354.a n = A128806 n

end A128806

/-! ## A128806.P563001056232983116

`A001316(n)+n*A051755(n+2)`
-/

namespace A128806.P563001056232983116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (n : ℤ) * A051755 (n + 2)

end

end A128806.P563001056232983116

namespace A128806

/-- `A001316(n)+n*A051755(n+2)` -/
def P563001056232983116.Spec : Prop :=
  ∀ n, P563001056232983116.a n = A128806 n

end A128806

/-! ## A128806.P11988743339038485658

`A046092(n)+A000079(A000120(n))`
-/

namespace A128806.P11988743339038485658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A000079 (A000120 n).toNat

end

end A128806.P11988743339038485658

namespace A128806

/-- `A046092(n)+A000079(A000120(n))` -/
def P11988743339038485658.Spec : Prop :=
  ∀ n, P11988743339038485658.a n = A128806 n

end A128806

/-! ## A128806.P13023502272823891384

`A000290(n+1)+A038573(n)+A000290(n)`
-/

namespace A128806.P13023502272823891384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + (A038573 n + A000290 n)

end

end A128806.P13023502272823891384

namespace A128806

/-- `A000290(n+1)+A038573(n)+A000290(n)` -/
def P13023502272823891384.Spec : Prop :=
  ∀ n, P13023502272823891384.a n = A128806 n

end A128806

/-! ## A128806.P15936278993284668026

`A048896(2*n)+∑[4*n]`
-/

namespace A128806.P15936278993284668026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128806.P15936278993284668026

namespace A128806

/-- `A048896(2*n)+∑[4*n]` -/
def P15936278993284668026.Spec : Prop :=
  ∀ n, P15936278993284668026.a n = A128806 n

end A128806

/-! ## A128806.P5358619717651049423

`A007590(2*n+1)+A001316(n)`
-/

namespace A128806.P5358619717651049423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (2 * n + 1) + A001316 n

end

end A128806.P5358619717651049423

namespace A128806

/-- `A007590(2*n+1)+A001316(n)` -/
def P5358619717651049423.Spec : Prop :=
  ∀ n, P5358619717651049423.a n = A128806 n

end A128806

/-!
# A128807: A115361 * A007318.

The programs for A128807, there is no canonical definition to state claims against.
-/

/-! ## A128807.P16798135835246977910

`A024889(A024846(3*(n+2)))+A007318(n)`
-/

namespace A128807.P16798135835246977910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024889 (A024846 (3 * (n + 2))).toNat + A007318 n

end

end A128807.P16798135835246977910

/-! ## A128807.P1352911693494920824

`A109004(A095650(3*n+2))+A067138(n)`
-/

namespace A128807.P1352911693494920824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A095650 (3 * n + 2)).toNat + A067138 n

end

end A128807.P1352911693494920824

/-! ## A128807.P15074286809025332115

`A095140(n)+and(A092328(n+3), A242378(n))`
-/

namespace A128807.P15074286809025332115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095140 n + Int.land (A092328 (n + 3)) (A242378 n)

end

end A128807.P15074286809025332115

/-! ## A128807.P18266621973307960573

`A086071(A002445(n+2))+A007318(n)`
-/

namespace A128807.P18266621973307960573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A002445 (n + 2)).toNat + A007318 n

end

end A128807.P18266621973307960573

/-! ## A128807.P3688523572444739450

`A336736(A335340(n+1))`
-/

namespace A128807.P3688523572444739450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336736 (A335340 (n + 1)).toNat

end

end A128807.P3688523572444739450

/-!
# A128810: Triangle formed by reading triangle A064189 mod 2 .

The programs for A128810, there is no canonical definition to state claims against.
-/

/-! ## A128810.P12812914507718693661

`A064189(n)%2`
-/

namespace A128810.P12812914507718693661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064189 n) 2

end

end A128810.P12812914507718693661

/-! ## A128810.P202351275109224686

`A091965(n)%2`
-/

namespace A128810.P202351275109224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091965 n) 2

end

end A128810.P202351275109224686

/-! ## A128810.P11998573133335867696

`A108074(n)%2`
-/

namespace A128810.P11998573133335867696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108074 n) 2

end

end A128810.P11998573133335867696

/-! ## A128810.P1111860330673225901

`A110877(n)%2`
-/

namespace A128810.P1111860330673225901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110877 n) 2

end

end A128810.P1111860330673225901

/-! ## A128810.P5143842788687150452

`A126954(n)%2`
-/

namespace A128810.P5143842788687150452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126954 n) 2

end

end A128810.P5143842788687150452

/-! ## A128810.P13015899396719101654

`A171486(n)%2`
-/

namespace A128810.P13015899396719101654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171486 n) 2

end

end A128810.P13015899396719101654

/-! ## A128810.P16487164428640707596

`A171505(n)%2`
-/

namespace A128810.P16487164428640707596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171505 n) 2

end

end A128810.P16487164428640707596

/-! ## A128810.P18347570733906892527

`and(1, A202327(n+1))`
-/

namespace A128810.P18347570733906892527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A202327 (n + 1))

end

end A128810.P18347570733906892527

/-! ## A128810.P12043823575116899685

`and(1, A064189(abs(1-n)+1))`
-/

namespace A128810.P12043823575116899685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064189 (|1 - (n : ℤ)| + 1).toNat)

end

end A128810.P12043823575116899685

/-! ## A128810.P5227024979219608509

`and(A064189(n), A106465(n))`
-/

namespace A128810.P5227024979219608509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A106465 n)

end

end A128810.P5227024979219608509

/-! ## A128810.P2742339014831557918

`A000007(or(1, A091965(n))-A091965(n))`
-/

namespace A128810.P2742339014831557918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lor 1 (A091965 n) - A091965 n).toNat

end

end A128810.P2742339014831557918

/-! ## A128810.P13933046579210420230

`A201638(n)%2`
-/

namespace A128810.P13933046579210420230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201638 n) 2

end

end A128810.P13933046579210420230

/-! ## A128810.P16372040757118567850

`A125906(n)%2`
-/

namespace A128810.P16372040757118567850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125906 n) 2

end

end A128810.P16372040757118567850

/-! ## A128810.P16033893852039209738

`and(A064189(n), A077860(n))`
-/

namespace A128810.P16033893852039209738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A077860 n)

end

end A128810.P16033893852039209738

/-! ## A128810.P18303124855098221092

`and(A064189(n), A077924(n))`
-/

namespace A128810.P18303124855098221092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A077924 n)

end

end A128810.P18303124855098221092

/-! ## A128810.P15139311002038158839

`and(A064189(n), A077853(n))`
-/

namespace A128810.P15139311002038158839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A077853 n)

end

end A128810.P15139311002038158839

/-! ## A128810.P10589740390141539862

`and(A064189(n), A077891(n))`
-/

namespace A128810.P10589740390141539862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A077891 n)

end

end A128810.P10589740390141539862

/-! ## A128810.P7414203244645954357

`and(A064189(n), A077881(n))`
-/

namespace A128810.P7414203244645954357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A077881 n)

end

end A128810.P7414203244645954357

/-! ## A128810.P9973399646870245346

`and(A064189(n), A083318(n))`
-/

namespace A128810.P9973399646870245346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064189 n) (A083318 n)

end

end A128810.P9973399646870245346

/-! ## A128810.P2948785536065394966

`and(A048578(n), A091965(n))`
-/

namespace A128810.P2948785536065394966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A091965 n)

end

end A128810.P2948785536065394966

/-!
# A128811: A113551(n)/A006882(n).

The programs for A128811, there is no canonical definition to state claims against.
-/

/-! ## A128811.P6668289935059802409

`A113551(n+1)/A006882(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128811.P6668289935059802409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113551 (n + 1) : ℚ) / (A006882 (n + 1) : ℚ)

end

end A128811.P6668289935059802409

/-! ## A128811.P8321191629988534678

`A113551(n+1)/Δ[A129981(n)]`
-/

namespace A128811.P8321191629988534678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113551 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A128811.P8321191629988534678

/-! ## A128811.P16221545214701825871

`A113551(n+1)/record[A092081(n)]`
-/

namespace A128811.P16221545214701825871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092081 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113551 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A128811.P16221545214701825871

/-! ## A128811.P13322433213938037134

`A303489(∑[n+3]+1)/record[A092081(n)]`
-/

namespace A128811.P13322433213938037134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092081 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303489 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A128811.P13322433213938037134

/-!
# A128812: a(n)=(1+2^(1/3))^n.

The programs for A128812, there is no canonical definition to state claims against.
-/

/-! ## A128812.P11133476148845973783

`round((root(2, 3)+1)^n)`
-/

namespace A128812.P11133476148845973783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℝ) ^ (1 / (3 : ℝ)) + 1) ^ n)

end

end A128812.P11133476148845973783

/-! ## A128812.P10560344649919970138

`A111439(A032952(n)-n)`
-/

namespace A128812.P10560344649919970138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A032952 n - (n : ℤ)).toNat

end

end A128812.P10560344649919970138

/-! ## A128812.P3525199299043429539

`A066339(A276225(n+2)-n)`
-/

namespace A128812.P3525199299043429539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A276225 (n + 2) - (n : ℤ)).toNat

end

end A128812.P3525199299043429539

/-!
# A128814: a(0)=1, a(n)= Product_{k=1..n} k*(k+1)/2+1.

The programs for A128814, there is no canonical definition to state claims against.
-/

/-! ## A128814.P14864231151013458

`∏[∑[n]+1]`
-/

namespace A128814.P14864231151013458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128814.P14864231151013458

/-! ## A128814.P3174916016672756795

`abs(∏[a(n-1)+n])` with `a(0)=1`
-/

namespace A128814.P3174916016672756795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128814.P3174916016672756795

/-! ## A128814.P17162718494636589131

`floor(∏[a(n-1)+n])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128814.P17162718494636589131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128814.P17162718494636589131

/-! ## A128814.P1266958251157574792

`ceil(∏[a(n-1)+n])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A128814.P1266958251157574792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128814.P1266958251157574792

/-! ## A128814.P9332146914964917317

`round(∏[a(n-1)+n])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A128814.P9332146914964917317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128814.P9332146914964917317

/-!
# A128815: Numbers n such that n-th and (n+2)th triangular numbers sum up to a prime.

The programs for A128815, there is no canonical definition to state claims against.
-/

/-! ## A128815.P5701330838316188256

`A096176(n+1)-1`
-/

namespace A128815.P5701330838316188256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1) - 1

end

end A128815.P5701330838316188256

/-! ## A128815.P4474509178685632268

`floor(sqrt(A002383(n+2)))-1`
-/

namespace A128815.P4474509178685632268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002383 (n + 2)) - 1

end

end A128815.P4474509178685632268

/-! ## A128815.P14599732239230775541

`A002384(n+2)-1`
-/

namespace A128815.P14599732239230775541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2) - 1

end

end A128815.P14599732239230775541

/-! ## A128815.P4971407971058132330

`A055494(n+2)-2`
-/

namespace A128815.P4971407971058132330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 2) - 2

end

end A128815.P4971407971058132330

/-! ## A128815.P16853428628356919253

`A089358(n+2)-3`
-/

namespace A128815.P16853428628356919253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 2) - 3

end

end A128815.P16853428628356919253

/-! ## A128815.P8001163045879533916

`∑[abs(Δ[A002384(n+1)])]`
-/

namespace A128815.P8001163045879533916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128815.P8001163045879533916

/-! ## A128815.P9437551856155426009

`(A088503(n+2)-3)/2`
-/

namespace A128815.P9437551856155426009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 2) - 3 : ℚ) / 2

end

end A128815.P9437551856155426009

/-! ## A128815.P15810280541336443033

`lt[1, A108154(n+2)-2]`
-/

namespace A128815.P15810280541336443033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A128815.P15810280541336443033

/-! ## A128815.P18279909556810242717

`A023443(A096176(n+1))`
-/

namespace A128815.P18279909556810242717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A096176 (n + 1)).toNat

end

end A128815.P18279909556810242717

/-! ## A128815.P12071510994581251439

`A023443(A002384(n+2))`
-/

namespace A128815.P12071510994581251439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002384 (n + 2)).toNat

end

end A128815.P12071510994581251439

/-! ## A128815.P7443959334203075067

`A249122(A088503(n+2)-2)`
-/

namespace A128815.P7443959334203075067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A088503 (n + 2) - 2).toNat

end

end A128815.P7443959334203075067

/-! ## A128815.P10376543763304705215

`eq[A010125(n), A082465(n+1)]`
-/

namespace A128815.P10376543763304705215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P10376543763304705215

/-! ## A128815.P14702703849225169570

`eq[A010142(n), A082465(n+1)]`
-/

namespace A128815.P14702703849225169570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P14702703849225169570

/-! ## A128815.P8384076526449883315

`eq[A010177(n), A082465(n+1)]`
-/

namespace A128815.P8384076526449883315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P8384076526449883315

/-! ## A128815.P17885553923977156311

`eq[A011655(n), A082465(n+1)]`
-/

namespace A128815.P17885553923977156311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P17885553923977156311

/-! ## A128815.P1918960001138514719

`eq[A014578(n), A082465(n+1)]`
-/

namespace A128815.P1918960001138514719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P1918960001138514719

/-! ## A128815.P8766755359044254813

`eq[A040256(n), A082465(n+1)]`
-/

namespace A128815.P8766755359044254813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P8766755359044254813

/-! ## A128815.P11869896559453947240

`eq[A040258(n), A082465(n+1)]`
-/

namespace A128815.P11869896559453947240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P11869896559453947240

/-! ## A128815.P2818045469385501640

`eq[A040290(n), A082465(n+1)]`
-/

namespace A128815.P2818045469385501640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P2818045469385501640

/-! ## A128815.P5768397347116453203

`eq[A040487(n), A082465(n+1)]`
-/

namespace A128815.P5768397347116453203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128815.P5768397347116453203

/-!
# A128816: Number of partitions of an n-element set avoiding the pattern 12|3.

The programs for A128816, there is no canonical definition to state claims against.
-/

/-! ## A128816.P4116225030982637468

`A057357(A012248(n))+A011782(n)`
-/

namespace A128816.P4116225030982637468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A012248 n).toNat + A011782 n

end

end A128816.P4116225030982637468

/-! ## A128816.P17206638637891095582

`A249728(A249746(n!))`
-/

namespace A128816.P17206638637891095582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A249746 (Nat.factorial n)).toNat

end

end A128816.P17206638637891095582

/-! ## A128816.P842256290919875239

`A108602(A357151(n))+1`
-/

namespace A128816.P842256290919875239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A357151 n).toNat + 1

end

end A128816.P842256290919875239

/-! ## A128816.P2524072951691437518

`A033183(27*A148093(n))`
-/

namespace A128816.P2524072951691437518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (27 * A148093 n).toNat

end

end A128816.P2524072951691437518

/-!
# A128819: Dimensions in which the simplex has two intermediate skeletons with the same centroid.

The programs for A128819, there is no canonical definition to state claims against.
-/

/-! ## A128819.P16468077582011729751

`A396179(A024614(n+1))`
-/

namespace A128819.P16468077582011729751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396179 (A024614 (n + 1)).toNat

end

end A128819.P16468077582011729751

/-! ## A128819.P1883544081082887177

`lt[11, A004016(A135668(n+2))]`
-/

namespace A128819.P1883544081082887177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A135668 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A128819.P1883544081082887177

/-! ## A128819.P7442433912389297995

`A229838(A024606(n+1)-n)`
-/

namespace A128819.P7442433912389297995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229838 (A024606 (n + 1) - (n : ℤ)).toNat

end

end A128819.P7442433912389297995

/-! ## A128819.P8132120746677712338

`A106505(A024606(n+1)-(n+2))`
-/

namespace A128819.P8132120746677712338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106505 (A024606 (n + 1) - (n + 2 : ℤ)).toNat

end

end A128819.P8132120746677712338

/-!
# A128821: Triangle T(n,k), 1<=k<=n, read by rows defined by :T(n,k)=C(n,k)*C(n-1,k-1)+C(n,k-1)*C(n-1,k)where C(n,k)=A007318(n,k) .

The programs for A128821, the canonical program `A128821.P16376626232729770862` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128821 has offset 1).

The definition of A128821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128821.P9071936470473859536

`(∑[2*n]%(comp[∑[n]]+1)+1)*A001263(n+1)`
-/

namespace A128821.P9071936470473859536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) * A001263 (n + 1)

end

end A128821.P9071936470473859536

namespace A128821

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)*A001263(n+1)` -/
def P9071936470473859536.Spec : Prop :=
  ∀ n, P9071936470473859536.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P16376626232729770862

`A001263(n+1)*A099375(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128821

/-- `A001263(n+1)*A099375(n)` -/
def P16376626232729770862.Spec : Prop :=
  ∀ n, P16376626232729770862.a n = A128821 (n + 1)

theorem P16376626232729770862.correct : P16376626232729770862.Spec := by
  intro n
  simp only [A128821, Nat.add_sub_cancel]

end A128821

/-! ## A128821.P6330550978593096814

`ceil(A174124(n)/2)*A099375(n)`
-/

namespace A128821.P6330550978593096814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174124 n : ℚ) / 2⌉ * A099375 n

end

end A128821.P6330550978593096814

namespace A128821

/-- `ceil(A174124(n)/2)*A099375(n)` -/
def P6330550978593096814.Spec : Prop :=
  ∀ n, P6330550978593096814.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P6304229840283302069

`A335340(n+1)-A001263(n+1)`
-/

namespace A128821.P6304229840283302069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335340 (n + 1) - A001263 (n + 1)

end

end A128821.P6304229840283302069

namespace A128821

/-- `A335340(n+1)-A001263(n+1)` -/
def P6304229840283302069.Spec : Prop :=
  ∀ n, P6304229840283302069.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P6935780315273966551

`2*A103371(n)-A001263(n+1)`
-/

namespace A128821.P6935780315273966551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103371 n - A001263 (n + 1)

end

end A128821.P6935780315273966551

namespace A128821

/-- `2*A103371(n)-A001263(n+1)` -/
def P6935780315273966551.Spec : Prop :=
  ∀ n, P6935780315273966551.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P10652171065941189507

`(A212012(n+1)-1)*A001263(n+1)`
-/

namespace A128821.P10652171065941189507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) - 1) * A001263 (n + 1)

end

end A128821.P10652171065941189507

namespace A128821

/-- `(A212012(n+1)-1)*A001263(n+1)` -/
def P10652171065941189507.Spec : Prop :=
  ∀ n, P10652171065941189507.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P239659023756878013

`(2*A025581(n)+1)*A001263(n+1)`
-/

namespace A128821.P239659023756878013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025581 n + 1) * A001263 (n + 1)

end

end A128821.P239659023756878013

namespace A128821

/-- `(2*A025581(n)+1)*A001263(n+1)` -/
def P239659023756878013.Spec : Prop :=
  ∀ n, P239659023756878013.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P334829681826345642

`A062196(n+1)-Δ[A008459(n)]`
-/

namespace A128821.P334829681826345642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (n + 1) - (f1 (n + 1) - f1 n)

end

end A128821.P334829681826345642

namespace A128821

/-- `A062196(n+1)-Δ[A008459(n)]` -/
def P334829681826345642.Spec : Prop :=
  ∀ n, P334829681826345642.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P321623734985225548

`A062196(n+1)+A008459(n)-A008459(n+1)`
-/

namespace A128821.P321623734985225548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (n + 1) + (A008459 n - A008459 (n + 1))

end

end A128821.P321623734985225548

namespace A128821

/-- `A062196(n+1)+A008459(n)-A008459(n+1)` -/
def P321623734985225548.Spec : Prop :=
  ∀ n, P321623734985225548.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P18378550314452705297

`A090181(comp[∑[n]])*A099375(n)`
-/

namespace A128821.P18378550314452705297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A099375 n

end

end A128821.P18378550314452705297

namespace A128821

/-- `A090181(comp[∑[n]])*A099375(n)` -/
def P18378550314452705297.Spec : Prop :=
  ∀ n, P18378550314452705297.a n = A128821 (n + 1)

end A128821

/-! ## A128821.P18382162775166503790

`sqrt(A174158(n+1))*A099375(n)`
-/

namespace A128821.P18382162775166503790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A099375 n : ℝ)

end

end A128821.P18382162775166503790

namespace A128821

/-- `sqrt(A174158(n+1))*A099375(n)` -/
def P18382162775166503790.Spec : Prop :=
  ∀ n, P18382162775166503790.a n = (A128821 (n + 1) : ℝ)

end A128821

/-!
# A128822: Number of solutions to x/3 + y/4 + z/6 < n with x,y,z>=1 .

The programs for A128822, the canonical program `A128822.P15181935527699638025` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128822 has offset 1).

The definition of A128822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128822.P15181935527699638025

`12*(n+1)^3-15*(n+1)²+6*(n+1)-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128822

/-- `12*(n+1)^3-15*(n+1)²+6*(n+1)-1` -/
def P15181935527699638025.Spec : Prop :=
  ∀ n, P15181935527699638025.a n = A128822 (n + 1)

theorem P15181935527699638025.correct : P15181935527699638025.Spec := by
  intro n
  simp only [A128822, Nat.add_sub_cancel]

end A128822

/-! ## A128822.P1219851148795891701

`abs(Δ[n^3]*A004767(n)-1-n)`
-/

namespace A128822.P1219851148795891701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A004767 n - 1 - (n : ℤ)|

end

end A128822.P1219851148795891701

namespace A128822

/-- `abs(Δ[n^3]*A004767(n)-1-n)` -/
def P1219851148795891701.Spec : Prop :=
  ∀ n, P1219851148795891701.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P9921490377843743608

`A256328(Δ[n²])`
-/

namespace A128822.P9921490377843743608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128822.P9921490377843743608

namespace A128822

/-- `A256328(Δ[n²])` -/
def P9921490377843743608.Spec : Prop :=
  ∀ n, P9921490377843743608.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P1211102424606480946

`(A024394(2*n+1)+n)/2`
-/

namespace A128822.P1211102424606480946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024394 (2 * n + 1) + (n : ℤ) : ℚ) / 2

end

end A128822.P1211102424606480946

namespace A128822

/-- `(A024394(2*n+1)+n)/2` -/
def P1211102424606480946.Spec : Prop :=
  ∀ n, P1211102424606480946.a n = (A128822 (n + 1) : ℚ)

end A128822

/-! ## A128822.P11768199753155358608

`(A067389(2*n+1)-A001105(n+1))/2`
-/

namespace A128822.P11768199753155358608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067389 (2 * n + 1) - A001105 (n + 1) : ℚ) / 2

end

end A128822.P11768199753155358608

namespace A128822

/-- `(A067389(2*n+1)-A001105(n+1))/2` -/
def P11768199753155358608.Spec : Prop :=
  ∀ n, P11768199753155358608.a n = (A128822 (n + 1) : ℚ)

end A128822

/-! ## A128822.P8791877130112307553

`∑[A112335(2*n)+A112335(2*n+1)²]`
-/

namespace A128822.P8791877130112307553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112335 (2 * n) + A112335 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128822.P8791877130112307553

namespace A128822

/-- `∑[A112335(2*n)+A112335(2*n+1)²]` -/
def P8791877130112307553.Spec : Prop :=
  ∀ n, P8791877130112307553.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P6913771115173045986

`A256313(4*n+2)`
-/

namespace A128822.P6913771115173045986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256313 (4 * n + 2)

end

end A128822.P6913771115173045986

namespace A128822

/-- `A256313(4*n+2)` -/
def P6913771115173045986.Spec : Prop :=
  ∀ n, P6913771115173045986.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P3126823079452939922

`A014126(6*(n+1)-5)`
-/

namespace A128822.P3126823079452939922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (6 * (n + 1) - 5)

end

end A128822.P3126823079452939922

namespace A128822

/-- `A014126(6*(n+1)-5)` -/
def P3126823079452939922.Spec : Prop :=
  ∀ n, P3126823079452939922.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P13426258238269957042

`A001400(12*n+2)`
-/

namespace A128822.P13426258238269957042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (12 * n + 2)

end

end A128822.P13426258238269957042

namespace A128822

/-- `A001400(12*n+2)` -/
def P13426258238269957042.Spec : Prop :=
  ∀ n, P13426258238269957042.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P7948759323542457277

`A011961(A017569(n))`
-/

namespace A128822.P7948759323542457277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011961 (A017569 n).toNat

end

end A128822.P7948759323542457277

namespace A128822

/-- `A011961(A017569(n))` -/
def P7948759323542457277.Spec : Prop :=
  ∀ n, P7948759323542457277.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P6505309009908087521

`A026810(6*(2*n+1))`
-/

namespace A128822.P6505309009908087521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (6 * (2 * n + 1))

end

end A128822.P6505309009908087521

namespace A128822

/-- `A026810(6*(2*n+1))` -/
def P6505309009908087521.Spec : Prop :=
  ∀ n, P6505309009908087521.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P3607639419625520714

`A059290(6*(2*n+1))`
-/

namespace A128822.P3607639419625520714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059290 (6 * (2 * n + 1))

end

end A128822.P3607639419625520714

namespace A128822

/-- `A059290(6*(2*n+1))` -/
def P3607639419625520714.Spec : Prop :=
  ∀ n, P3607639419625520714.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P2154991105322435915

`A051528(A017605(n))`
-/

namespace A128822.P2154991105322435915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051528 (A017605 n).toNat

end

end A128822.P2154991105322435915

namespace A128822

/-- `A051528(A017605(n))` -/
def P2154991105322435915.Spec : Prop :=
  ∀ n, P2154991105322435915.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P2370673379439644979

`A331444(A017545(2*n+1)/2)`
-/

namespace A128822.P2370673379439644979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331444 (SequenceMachineLib.roundAway ((A017545 (2 * n + 1) : ℚ) / 2)).toNat

end

end A128822.P2370673379439644979

namespace A128822

/-- `A331444(A017545(2*n+1)/2)` -/
def P2370673379439644979.Spec : Prop :=
  ∀ n, P2370673379439644979.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P11676349155337501333

`A331444(A063098(2*(n+1))/2)`
-/

namespace A128822.P11676349155337501333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331444 (SequenceMachineLib.roundAway ((A063098 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A128822.P11676349155337501333

namespace A128822

/-- `A331444(A063098(2*(n+1))/2)` -/
def P11676349155337501333.Spec : Prop :=
  ∀ n, P11676349155337501333.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P1777046510919535779

`A029138(A135659(n))`
-/

namespace A128822.P1777046510919535779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (A135659 n).toNat

end

end A128822.P1777046510919535779

namespace A128822

/-- `A029138(A135659(n))` -/
def P1777046510919535779.Spec : Prop :=
  ∀ n, P1777046510919535779.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P5309353422731499861

`A029138(2*(A017533(n)+1))`
-/

namespace A128822.P5309353422731499861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (2 * (A017533 n + 1)).toNat

end

end A128822.P5309353422731499861

namespace A128822

/-- `A029138(2*(A017533(n)+1))` -/
def P5309353422731499861.Spec : Prop :=
  ∀ n, P5309353422731499861.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P7439257396630036805

`A029167(2*A298035(n+1))`
-/

namespace A128822.P7439257396630036805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (2 * A298035 (n + 1)).toNat

end

end A128822.P7439257396630036805

namespace A128822

/-- `A029167(2*A298035(n+1))` -/
def P7439257396630036805.Spec : Prop :=
  ∀ n, P7439257396630036805.a n = A128822 (n + 1)

end A128822

/-! ## A128822.P14819437962710862561

`A029167(2*(A161705(n)+2))`
-/

namespace A128822.P14819437962710862561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (2 * (A161705 n + 2)).toNat

end

end A128822.P14819437962710862561

namespace A128822

/-- `A029167(2*(A161705(n)+2))` -/
def P14819437962710862561.Spec : Prop :=
  ∀ n, P14819437962710862561.a n = A128822 (n + 1)

end A128822

/-!
# A128823: a(n) is the sum of all n-digit Fibonacci numbers.

The programs for A128823, there is no canonical definition to state claims against.
-/

/-! ## A128823.P18314160143199869379

`A000045(A072354(n+2)+1)-A000045(A072354(n+1)+1)`
-/

namespace A128823.P18314160143199869379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072354 (n + 2) + 1).toNat - A000045 (A072354 (n + 1) + 1).toNat

end

end A128823.P18314160143199869379

/-! ## A128823.P10000661952066783417

`Δ[A000045(A072354(n+1)+1)]`
-/

namespace A128823.P10000661952066783417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072354 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128823.P10000661952066783417

/-! ## A128823.P5366464074266119

`Δ[A000071(A072354(n+1)+1)]`
-/

namespace A128823.P5366464074266119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A072354 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128823.P5366464074266119

/-! ## A128823.P8771498948956046449

`Δ[A212804(A072354(n+1)+2)]`
-/

namespace A128823.P8771498948956046449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A072354 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128823.P8771498948956046449

/-! ## A128823.P1191264459644657881

`Δ[A053602(A004273(A072354(n+1)))]`
-/

namespace A128823.P1191264459644657881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A004273 (A072354 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128823.P1191264459644657881

/-!
# A128824: First prime which is 2k greater than the product of lesser twin primes.

The programs for A128824, there is no canonical definition to state claims against.
-/

/-! ## A128824.P2557518565459588608

`A088213(A047241(n+1)%A095208(3*n+2))`
-/

namespace A128824.P2557518565459588608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088213 (Int.tmod (A047241 (n + 1)) (A095208 (3 * n + 2))).toNat

end

end A128824.P2557518565459588608

/-! ## A128824.P2763583902067596262

`A088213(A047241(n+1))%A166512(2*n+5)`
-/

namespace A128824.P2763583902067596262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088213 (A047241 (n + 1)).toNat) (A166512 (2 * n + 5))

end

end A128824.P2763583902067596262

/-! ## A128824.P9465188370188139365

`p?[A095208(n+1)+A040041(n)]`
-/

namespace A128824.P9465188370188139365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095208 (n + 1) + A040041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128824.P9465188370188139365

/-! ## A128824.P4928733550573720054

`A088213(eq[A035363(n), A103709(n+1)])`
-/

namespace A128824.P4928733550573720054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088213 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128824.P4928733550573720054

/-! ## A128824.P13129527202314939865

`p?[A084713(n+2)%A098090(3*n+4)]`
-/

namespace A128824.P13129527202314939865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084713 (n + 2)) (A098090 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128824.P13129527202314939865

/-!
# A128825: Primes p such that q = p+d (with d >= 6) is the next prime and both p and q are Sophie Germain primes.

The programs for A128825, there is no canonical definition to state claims against.
-/

/-! ## A128825.P13967224924861210509

`A339474(n+2)%A339981(n+1)`
-/

namespace A128825.P13967224924861210509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339474 (n + 2)) (A339981 (n + 1))

end

end A128825.P13967224924861210509

/-! ## A128825.P10853365824137117511

`A339474(n+2)+A185238(A185238(n))`
-/

namespace A128825.P10853365824137117511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339474 (n + 2) + A185238 (A185238 n).toNat

end

end A128825.P10853365824137117511

/-! ## A128825.P4206285775533193132

`A339474(n+2)%A306514(A333633(n))`
-/

namespace A128825.P4206285775533193132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339474 (n + 2)) (A306514 (A333633 n).toNat)

end

end A128825.P4206285775533193132

/-! ## A128825.P8126884529734723256

`A339474(n+2)+A010054(A171584(n+1))`
-/

namespace A128825.P8126884529734723256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339474 (n + 2) + A010054 (A171584 (n + 1)).toNat

end

end A128825.P8126884529734723256

/-!
# A128826: a(n) = 10^(2n-1) minus largest square less than 10^(2n-1).

The programs for A128826, the canonical program `A128826.P6087672172713904502` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128826 has offset 1).

The definition of A128826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128826.P6087672172713904502

`10^(2*(n+1)-1)-A061433(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128826

/-- `10^(2*(n+1)-1)-A061433(2*(n+1)-1)` -/
def P6087672172713904502.Spec : Prop :=
  ∀ n, P6087672172713904502.a n = (A128826 (n + 1) : ℚ)

end A128826

/-! ## A128826.P15771607425013216275

`10*A011557(n)²-A065736(2*n+1)`
-/

namespace A128826.P15771607425013216275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A011557 n ^ 2 - A065736 (2 * n + 1)

end

end A128826.P15771607425013216275

namespace A128826

/-- `10*A011557(n)²-A065736(2*n+1)` -/
def P15771607425013216275.Spec : Prop :=
  ∀ n, P15771607425013216275.a n = A128826 (n + 1)

end A128826

/-! ## A128826.P5044089870319896908

`A011557(2*n+1)-A065736(2*n+1)`
-/

namespace A128826.P5044089870319896908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n + 1) - A065736 (2 * n + 1)

end

end A128826.P5044089870319896908

namespace A128826

/-- `A011557(2*n+1)-A065736(2*n+1)` -/
def P5044089870319896908.Spec : Prop :=
  ∀ n, P5044089870319896908.a n = A128826 (n + 1)

end A128826

/-! ## A128826.P11641390604431386013

`10*A011557(n)²-A049416(2*n+1)²`
-/

namespace A128826.P11641390604431386013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A011557 n ^ 2 - A049416 (2 * n + 1) ^ 2

end

end A128826.P11641390604431386013

namespace A128826

/-- `10*A011557(n)²-A049416(2*n+1)²` -/
def P11641390604431386013.Spec : Prop :=
  ∀ n, P11641390604431386013.a n = A128826 (n + 1)

end A128826

/-! ## A128826.P14362674624590005376

`A017934(4*n+2)-A017934(2*n+1)²`
-/

namespace A128826.P14362674624590005376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (4 * n + 2) - A017934 (2 * n + 1) ^ 2

end

end A128826.P14362674624590005376

namespace A128826

/-- `A017934(4*n+2)-A017934(2*n+1)²` -/
def P14362674624590005376.Spec : Prop :=
  ∀ n, P14362674624590005376.a n = A128826 (n + 1)

end A128826

/-!
# A128827: Perfect powers beginning and ending with the same digit.

The programs for A128827, there is no canonical definition to state claims against.
-/

/-! ## A128827.P8051689179342190671

`filter[A193408(n+1), A075802(#)]`
-/

namespace A128827.P8051689179342190671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A128827.P8051689179342190671

/-!
# A128828: The number of regular hexagons found by constructing n equally-spaced points on each side of the hexagon and drawing lines parallel to the hexagon side.

The programs for A128828, there is no canonical definition to state claims against.
-/

/-! ## A128828.P9652097258960787334

`(n+1)*(A285187(n+1)-2)`
-/

namespace A128828.P9652097258960787334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A285187 (n + 1) - 2)

end

end A128828.P9652097258960787334

/-!
# A128829: Numbers k such that 6*k^2 + 17 is prime.

The programs for A128829, there is no canonical definition to state claims against.
-/

/-! ## A128829.P2807051640283963315

`lt[A033765(A002088(n)), A287109(n+1)]`
-/

namespace A128829.P2807051640283963315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033765 (A002088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128829.P2807051640283963315

/-! ## A128829.P8154505444027674235

`lt[A081355(n), A174296(A016754(n))]`
-/

namespace A128829.P8154505444027674235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (A016754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128829.P8154505444027674235

/-! ## A128829.P14059640537989034694

`lt[A081355(n), A001222(A079704(n+1))]`
-/

namespace A128829.P14059640537989034694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079704 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128829.P14059640537989034694

/-! ## A128829.P11812142350022312446

`lt[A001055(A285522(2*(n+2))), A040012(n)]`
-/

namespace A128829.P11812142350022312446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A285522 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128829.P11812142350022312446

/-! ## A128829.P6805355466699733485

`lt[A081355(n), A326702(A361978(2*n+3))]`
-/

namespace A128829.P6805355466699733485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A361978 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128829.P6805355466699733485

/-!
# A128830: a(n) = the number of positive divisors of n which are coprime to d(n), where d(n) = the number of positive divisors of n.

The programs for A128830, the canonical program `A128830.P9449490363820853623` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128830 has offset 1).

The definition of A128830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128830.P9449490363820853623

`A000005(A137926(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128830

/-- `A000005(A137926(n+1))` -/
def P9449490363820853623.Spec : Prop :=
  ∀ n, P9449490363820853623.a n = A128830 (n + 1)

theorem P9449490363820853623.correct : P9449490363820853623.Spec := by
  intro n
  simp only [A128830, Nat.add_sub_cancel]

end A128830

/-! ## A128830.P50026165006452999

`A183063(2*A137926(n+1))`
-/

namespace A128830.P50026165006452999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A137926 (n + 1)).toNat

end

end A128830.P50026165006452999

namespace A128830

/-- `A183063(2*A137926(n+1))` -/
def P50026165006452999.Spec : Prop :=
  ∀ n, P50026165006452999.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P5589664793462575329

`∑{d}[A137926(n+1), A057427(#)]`
-/

namespace A128830.P5589664793462575329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A128830.P5589664793462575329

namespace A128830

/-- `∑{d}[A137926(n+1), A057427(#)]` -/
def P5589664793462575329.Spec : Prop :=
  ∀ n, P5589664793462575329.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P3334261200078446369

`A137927(A137926(2*n+1-n))`
-/

namespace A128830.P3334261200078446369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (A137926 (2 * n + 1 - n)).toNat

end

end A128830.P3334261200078446369

namespace A128830

/-- `A137927(A137926(2*n+1-n))` -/
def P3334261200078446369.Spec : Prop :=
  ∀ n, P3334261200078446369.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P13522085865331643009

`A000005(gcd(n+1, A302975(n+1)))`
-/

namespace A128830.P13522085865331643009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A302975 (n + 1)))

end

end A128830.P13522085865331643009

namespace A128830

/-- `A000005(gcd(n+1, A302975(n+1)))` -/
def P13522085865331643009.Spec : Prop :=
  ∀ n, P13522085865331643009.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P15371833489529571729

`A137927(or(A137926(n+1), A267676(n)))`
-/

namespace A128830.P15371833489529571729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (Int.lor (A137926 (n + 1)) (A267676 n)).toNat

end

end A128830.P15371833489529571729

namespace A128830

/-- `A137927(or(A137926(n+1), A267676(n)))` -/
def P15371833489529571729.Spec : Prop :=
  ∀ n, P15371833489529571729.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P6327874664908194242

`A000005(root(A302975(n+1), A000005(n+1)))`
-/

namespace A128830.P6327874664908194242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A302975 (n + 1) : ℝ) ^ (1 / (A000005 (n + 1) : ℝ)))).toNat

end

end A128830.P6327874664908194242

namespace A128830

/-- `A000005(root(A302975(n+1), A000005(n+1)))` -/
def P6327874664908194242.Spec : Prop :=
  ∀ n, P6327874664908194242.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P9232808054522344348

`A137927(gcd(A038040(n+1), A137926(n+1)))`
-/

namespace A128830.P9232808054522344348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (Int.gcd (A038040 (n + 1)) (A137926 (n + 1)))

end

end A128830.P9232808054522344348

namespace A128830

/-- `A137927(gcd(A038040(n+1), A137926(n+1)))` -/
def P9232808054522344348.Spec : Prop :=
  ∀ n, P9232808054522344348.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P9901915235063919722

`and(A100587(n+1), A137927(A137926(n+1)))`
-/

namespace A128830.P9901915235063919722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100587 (n + 1)) (A137927 (A137926 (n + 1)).toNat)

end

end A128830.P9901915235063919722

namespace A128830

/-- `and(A100587(n+1), A137927(A137926(n+1)))` -/
def P9901915235063919722.Spec : Prop :=
  ∀ n, P9901915235063919722.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P12789399441116769681

`A137927(A057427(3*n+1)*A137926(n+1))`
-/

namespace A128830.P12789399441116769681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (A057427 (3 * n + 1) * A137926 (n + 1)).toNat

end

end A128830.P12789399441116769681

namespace A128830

/-- `A137927(A057427(3*n+1)*A137926(n+1))` -/
def P12789399441116769681.Spec : Prop :=
  ∀ n, P12789399441116769681.a n = A128830 (n + 1)

end A128830

/-! ## A128830.P3864900676486925881

`A137927(A137926(n+1)%A137957(n+2))`
-/

namespace A128830.P3864900676486925881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (Int.tmod (A137926 (n + 1)) (A137957 (n + 2))).toNat

end

end A128830.P3864900676486925881

namespace A128830

/-- `A137927(A137926(n+1)%A137957(n+2))` -/
def P3864900676486925881.Spec : Prop :=
  ∀ n, P3864900676486925881.a n = A128830 (n + 1)

end A128830

/-!
# A128831: Number of n-tuples where each entry is chosen from the subsets of {1,2,3} such that the intersection of all n entries is empty.

The programs for A128831, the canonical program `A128831.P12967395451496034922` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128831 has offset 1).

The definition of A128831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128831.P12967395451496034922

`(2^(n+1)-1)^3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128831

/-- `(2^(n+1)-1)^3` -/
def P12967395451496034922.Spec : Prop :=
  ∀ n, P12967395451496034922.a n = A128831 (n + 1)

theorem P12967395451496034922.correct : P12967395451496034922.Spec := by
  intro n
  simp only [A128831, Nat.add_sub_cancel]

end A128831

/-! ## A128831.P254099614173331777

`abs((-or(1, -2^(n+1)))^3)`
-/

namespace A128831.P254099614173331777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-Int.lor 1 (-(2 ^ (n + 1) : ℤ))) ^ 3|

end

end A128831.P254099614173331777

namespace A128831

/-- `abs((-or(1, -2^(n+1)))^3)` -/
def P254099614173331777.Spec : Prop :=
  ∀ n, P254099614173331777.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P15270013976578368855

`abs((-xor(1, -2^(n+1)))^3)`
-/

namespace A128831.P15270013976578368855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-Int.xor 1 (-(2 ^ (n + 1) : ℤ))) ^ 3|

end

end A128831.P15270013976578368855

namespace A128831

/-- `abs((-xor(1, -2^(n+1)))^3)` -/
def P15270013976578368855.Spec : Prop :=
  ∀ n, P15270013976578368855.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P17271958680227586230

`abs(record[2^abs(1-n)-1]^3)`
-/

namespace A128831.P17271958680227586230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3|

end

end A128831.P17271958680227586230

namespace A128831

/-- `abs(record[2^abs(1-n)-1]^3)` -/
def P17271958680227586230.Spec : Prop :=
  ∀ n, P17271958680227586230.a n = (A128831 (n + 1) : ℚ)

end A128831

/-! ## A128831.P13358830187932196080

`record[A077896(n)^3]`
-/

namespace A128831.P13358830187932196080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128831.P13358830187932196080

namespace A128831

/-- `record[A077896(n)^3]` -/
def P13358830187932196080.Spec : Prop :=
  ∀ n, P13358830187932196080.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P3140970541806614343

`record[A094024(n)^3]`
-/

namespace A128831.P3140970541806614343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128831.P3140970541806614343

namespace A128831

/-- `record[A094024(n)^3]` -/
def P3140970541806614343.Spec : Prop :=
  ∀ n, P3140970541806614343.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P432016975572819227

`record[A307078(n)^3]`
-/

namespace A128831.P432016975572819227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307078 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128831.P432016975572819227

namespace A128831

/-- `record[A307078(n)^3]` -/
def P432016975572819227.Spec : Prop :=
  ∀ n, P432016975572819227.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P9875015465313790384

`record[A316742(n)^3]`
-/

namespace A128831.P9875015465313790384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128831.P9875015465313790384

namespace A128831

/-- `record[A316742(n)^3]` -/
def P9875015465313790384.Spec : Prop :=
  ∀ n, P9875015465313790384.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P5676746621541051545

`∑[abs(Δ[A098878(n)])]`
-/

namespace A128831.P5676746621541051545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128831.P5676746621541051545

namespace A128831

/-- `∑[abs(Δ[A098878(n)])]` -/
def P5676746621541051545.Spec : Prop :=
  ∀ n, P5676746621541051545.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P12842646653962054045

`A098878(n+1)+2`
-/

namespace A128831.P12842646653962054045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098878 (n + 1) + 2

end

end A128831.P12842646653962054045

namespace A128831

/-- `A098878(n+1)+2` -/
def P12842646653962054045.Spec : Prop :=
  ∀ n, P12842646653962054045.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P13605097949948864460

`A274626(3*(n+1))`
-/

namespace A128831.P13605097949948864460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274626 (3 * (n + 1))

end

end A128831.P13605097949948864460

namespace A128831

/-- `A274626(3*(n+1))` -/
def P13605097949948864460.Spec : Prop :=
  ∀ n, P13605097949948864460.a n = A128831 (n + 1)

end A128831

/-! ## A128831.P8785573741005275446

`A128865(n+1)/4`
-/

namespace A128831.P8785573741005275446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128865 (n + 1) : ℚ) / 4

end

end A128831.P8785573741005275446

namespace A128831

/-- `A128865(n+1)/4` -/
def P8785573741005275446.Spec : Prop :=
  ∀ n, P8785573741005275446.a n = (A128831 (n + 1) : ℚ)

end A128831

/-! ## A128831.P2213506918148829910

`record[A324866(n+2)^3]`
-/

namespace A128831.P2213506918148829910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128831.P2213506918148829910

namespace A128831

/-- `record[A324866(n+2)^3]` -/
def P2213506918148829910.Spec : Prop :=
  ∀ n, P2213506918148829910.a n = A128831 (n + 1)

end A128831

/-!
# A128832: Number of n-tuples where each entry is chosen from the subsets of {1,2,3,4} such that the intersection of all n entries is empty.

The programs for A128832, the canonical program `A128832.P798746701448933616` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128832 has offset 1).

The definition of A128832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128832.P798746701448933616

`(2^(n+1)-1)^4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128832

/-- `(2^(n+1)-1)^4` -/
def P798746701448933616.Spec : Prop :=
  ∀ n, P798746701448933616.a n = A128832 (n + 1)

theorem P798746701448933616.correct : P798746701448933616.Spec := by
  intro n
  simp only [A128832, Nat.add_sub_cancel]

end A128832

/-! ## A128832.P770579623625402426

`or(1, -2^(n+1))²²`
-/

namespace A128832.P770579623625402426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (-(2 ^ (n + 1) : ℤ)) ^ 2) ^ 2

end

end A128832.P770579623625402426

namespace A128832

/-- `or(1, -2^(n+1))²²` -/
def P770579623625402426.Spec : Prop :=
  ∀ n, P770579623625402426.a n = A128832 (n + 1)

end A128832

/-! ## A128832.P9164623893154662744

`xor(1, -2^(n+1))²²`
-/

namespace A128832.P9164623893154662744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (-(2 ^ (n + 1) : ℤ)) ^ 2) ^ 2

end

end A128832.P9164623893154662744

namespace A128832

/-- `xor(1, -2^(n+1))²²` -/
def P9164623893154662744.Spec : Prop :=
  ∀ n, P9164623893154662744.a n = A128832 (n + 1)

end A128832

/-! ## A128832.P5815424600941483802

`∑[2*a(n-1)]²²` with `a(0)=1`
-/

namespace A128832.P5815424600941483802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A128832.P5815424600941483802

namespace A128832

/-- `∑[2*a(n-1)]²²` -/
def P5815424600941483802.Spec : Prop :=
  ∀ n, (P5815424600941483802.a n : ℤ) = A128832 (n + 1)

end A128832

/-! ## A128832.P1333433685822846419

`record[2^abs(1-n)-1]²²`
-/

namespace A128832.P1333433685822846419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A128832.P1333433685822846419

namespace A128832

/-- `record[2^abs(1-n)-1]²²` -/
def P1333433685822846419.Spec : Prop :=
  ∀ n, P1333433685822846419.a n = (A128832 (n + 1) : ℚ)

end A128832

/-! ## A128832.P5679191362972331012

`(1-Δ[2*a(n-1)])²²` with `a(0)=2`
-/

namespace A128832.P5679191362972331012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A128832.P5679191362972331012

namespace A128832

/-- `(1-Δ[2*a(n-1)])²²` -/
def P5679191362972331012.Spec : Prop :=
  ∀ n, P5679191362972331012.a n = A128832 (n + 1)

end A128832

/-! ## A128832.P5079223176676856671

`∑[a(n-1)+a(n-1)]²²` with `a(0)=1`
-/

namespace A128832.P5079223176676856671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A128832.P5079223176676856671

namespace A128832

/-- `∑[a(n-1)+a(n-1)]²²` -/
def P5079223176676856671.Spec : Prop :=
  ∀ n, (P5079223176676856671.a n : ℤ) = A128832 (n + 1)

end A128832

/-! ## A128832.P3845919835764282653

`∑[a(n-1)²/a(n-2)]²²` with `a(0)=1, a(1)=2`
-/

namespace A128832.P3845919835764282653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A128832.P3845919835764282653

namespace A128832

/-- `∑[a(n-1)²/a(n-2)]²²` -/
def P3845919835764282653.Spec : Prop :=
  ∀ n, P3845919835764282653.a n = (A128832 (n + 1) : ℚ)

end A128832

/-!
# A128833: Number of n-tuples where each entry is chosen from the subsets of {1,2,3,4,5} such that the intersection of all n entries is empty.

The programs for A128833, the canonical program `A128833.P12086246703848076046` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128833 has offset 1).

The definition of A128833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128833.P12086246703848076046

`(2^(n+1)-1)^5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128833

/-- `(2^(n+1)-1)^5` -/
def P12086246703848076046.Spec : Prop :=
  ∀ n, P12086246703848076046.a n = A128833 (n + 1)

theorem P12086246703848076046.correct : P12086246703848076046.Spec := by
  intro n
  simp only [A128833, Nat.add_sub_cancel]

end A128833

/-! ## A128833.P7188133139190853837

`abs((-or(1, -2^(n+1)))^5)`
-/

namespace A128833.P7188133139190853837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-Int.lor 1 (-(2 ^ (n + 1) : ℤ))) ^ 5|

end

end A128833.P7188133139190853837

namespace A128833

/-- `abs((-or(1, -2^(n+1)))^5)` -/
def P7188133139190853837.Spec : Prop :=
  ∀ n, P7188133139190853837.a n = A128833 (n + 1)

end A128833

/-! ## A128833.P13498478820287111762

`abs((-xor(1, -2^(n+1)))^5)`
-/

namespace A128833.P13498478820287111762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-Int.xor 1 (-(2 ^ (n + 1) : ℤ))) ^ 5|

end

end A128833.P13498478820287111762

namespace A128833

/-- `abs((-xor(1, -2^(n+1)))^5)` -/
def P13498478820287111762.Spec : Prop :=
  ∀ n, P13498478820287111762.a n = A128833 (n + 1)

end A128833

/-! ## A128833.P15781360094552923804

`abs(record[2^abs(1-n)-1]^5)`
-/

namespace A128833.P15781360094552923804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 5|

end

end A128833.P15781360094552923804

namespace A128833

/-- `abs(record[2^abs(1-n)-1]^5)` -/
def P15781360094552923804.Spec : Prop :=
  ∀ n, P15781360094552923804.a n = (A128833 (n + 1) : ℚ)

end A128833

/-! ## A128833.P3719931525420116765

`∑[abs(Δ[A098879(n)])]`
-/

namespace A128833.P3719931525420116765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128833.P3719931525420116765

namespace A128833

/-- `∑[abs(Δ[A098879(n)])]` -/
def P3719931525420116765.Spec : Prop :=
  ∀ n, P3719931525420116765.a n = A128833 (n + 1)

end A128833

/-! ## A128833.P17621950750237776890

`A098879(n+1)+2`
-/

namespace A128833.P17621950750237776890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098879 (n + 1) + 2

end

end A128833.P17621950750237776890

namespace A128833

/-- `A098879(n+1)+2` -/
def P17621950750237776890.Spec : Prop :=
  ∀ n, P17621950750237776890.a n = A128833 (n + 1)

end A128833

/-!
# A128834: Periodic sequence 0,1,1,0,-1,-1,...

The programs for A128834, the canonical program `A128834.P16779687439637953687` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128834 has offset 0).

The definition of A128834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128834.P16779687439637953687

`A010892(n+5)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128834

/-- `A010892(n+5)` -/
def P16779687439637953687.Spec : Prop :=
  ∀ n, P16779687439637953687.a n = A128834 n

theorem P16779687439637953687.correct : P16779687439637953687.Spec := by
  intro n
  simp only [A128834]

end A128834

/-!
# A128835: Numbers n such that n^n == 2 (mod 7), or 7 divides n^n-2.

The programs for A128835, the canonical program `A128835.P4632442516712216862` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128835 has offset 1).

The definition of A128835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128835.P4632442516712216862

`a(n-6)+42` with `a(0)=11, a(1)=16, a(2)=32, a(3)=37, a(4)=38, a(5)=40`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128835

/-- `a(n-6)+42` -/
def P4632442516712216862.Spec : Prop :=
  ∀ n, (P4632442516712216862.a n : ℤ) = A128835 (n + 1)

theorem P4632442516712216862.correct : P4632442516712216862.Spec := by
  intro n
  simp only [A128835, Nat.add_sub_cancel]

end A128835

/-! ## A128835.P15405673365029719716

`eq[A165063(n+1), A204693(n)]`
-/

namespace A128835.P15405673365029719716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P15405673365029719716

namespace A128835

/-- `eq[A165063(n+1), A204693(n)]` -/
def P15405673365029719716.Spec : Prop :=
  ∀ n, (P15405673365029719716.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P9254640810975065682

`eq[A204693(n), A236213(n+1)]`
-/

namespace A128835.P9254640810975065682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P9254640810975065682

namespace A128835

/-- `eq[A204693(n), A236213(n+1)]` -/
def P9254640810975065682.Spec : Prop :=
  ∀ n, (P9254640810975065682.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P3329244339370187992

`eq[A204693(n), A270026(n+1)]`
-/

namespace A128835.P3329244339370187992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P3329244339370187992

namespace A128835

/-- `eq[A204693(n), A270026(n+1)]` -/
def P3329244339370187992.Spec : Prop :=
  ∀ n, (P3329244339370187992.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P11134016398385935552

`eq[A204693(n), A333657(n+1)]`
-/

namespace A128835.P11134016398385935552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P11134016398385935552

namespace A128835

/-- `eq[A204693(n), A333657(n+1)]` -/
def P11134016398385935552.Spec : Prop :=
  ∀ n, (P11134016398385935552.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P8927507561400080706

`eq[A034077(n+2), A204693(n)]`
-/

namespace A128835.P8927507561400080706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P8927507561400080706

namespace A128835

/-- `eq[A034077(n+2), A204693(n)]` -/
def P8927507561400080706.Spec : Prop :=
  ∀ n, (P8927507561400080706.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P3135292649242296646

`eq[2, A204693(A245552(n)+n)]`
-/

namespace A128835.P3135292649242296646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 (A245552 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128835.P3135292649242296646

namespace A128835

/-- `eq[2, A204693(A245552(n)+n)]` -/
def P3135292649242296646.Spec : Prop :=
  ∀ n, (P3135292649242296646.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P16625596103734659102

`eq[2, A204693(n-A245552(n))]`
-/

namespace A128835.P16625596103734659102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 ((n : ℤ) - A245552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128835.P16625596103734659102

namespace A128835

/-- `eq[2, A204693(n-A245552(n))]` -/
def P16625596103734659102.Spec : Prop :=
  ∀ n, (P16625596103734659102.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P16765140874474078599

`eq[2, gcd(A015854(n), A204693(n))]`
-/

namespace A128835.P16765140874474078599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015854 n) (A204693 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P16765140874474078599

namespace A128835

/-- `eq[2, gcd(A015854(n), A204693(n))]` -/
def P16765140874474078599.Spec : Prop :=
  ∀ n, (P16765140874474078599.a n : ℤ) = A128835 (n + 1)

end A128835

/-! ## A128835.P298145511832250360

`eq[A127648(n)²+2, A204693(n)]`
-/

namespace A128835.P298145511832250360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128835.P298145511832250360

namespace A128835

/-- `eq[A127648(n)²+2, A204693(n)]` -/
def P298145511832250360.Spec : Prop :=
  ∀ n, (P298145511832250360.a n : ℤ) = A128835 (n + 1)

end A128835

/-!
# A128836: Numbers k such that partition number p(k) == 1 (mod k).

The programs for A128836, there is no canonical definition to state claims against.
-/

/-! ## A128836.P6902254322147497469

`eq[n, A028310(gcd(n, A000065(n)))]`
-/

namespace A128836.P6902254322147497469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A000065 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128836.P6902254322147497469

/-! ## A128836.P17236616917923019143

`eq[n-1, A183011(n)%A028310(n)]`
-/

namespace A128836.P17236616917923019143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128836.P17236616917923019143

/-! ## A128836.P3335271550032672760

`eq[A000065(n)%A028310(n), A000007(n)]`
-/

namespace A128836.P3335271550032672760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128836.P3335271550032672760

/-! ## A128836.P10301016456346832435

`eq[A183011(n)%A028310(n), A023443(n)]`
-/

namespace A128836.P10301016456346832435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128836.P10301016456346832435

/-! ## A128836.P2730679872375255217

`eq[A000041(n)%A233583(n+1), A057427(n)]`
-/

namespace A128836.P2730679872375255217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (A233583 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128836.P2730679872375255217

/-!
# A128839: Numerators of the continued fraction convergents of the decimal concatenation of the odd natural numbers.

The programs for A128839, there is no canonical definition to state claims against.
-/

/-! ## A128839.P2719587539077863977

`∑[∏{p}[A330827(C(n!, 2)), #]]`
-/

namespace A128839.P2719587539077863977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330827 (Nat.choose (Nat.factorial n) 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128839.P2719587539077863977

/-! ## A128839.P5125432505234992747

`A191541(A042669(n))`
-/

namespace A128839.P5125432505234992747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191541 (A042669 n).toNat

end

end A128839.P5125432505234992747

/-!
# A128841: First occurrence of primes that are 2^k greater than the product of lesser twin primes.

The programs for A128841, there is no canonical definition to state claims against.
-/

/-! ## A128841.P3675472095806170738

`A010141(A177523(n))+∑[2^n]+2`
-/

namespace A128841.P3675472095806170738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A177523 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A128841.P3675472095806170738

/-! ## A128841.P15477922228384731197

`∑[2^n]+A063375(A279021(n+3))²`
-/

namespace A128841.P15477922228384731197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A063375 (A279021 (n + 3)).toNat ^ 2

end

end A128841.P15477922228384731197

/-! ## A128841.P2773158632201534297

`A326990(A257273(n+1))`
-/

namespace A128841.P2773158632201534297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (A257273 (n + 1)).toNat

end

end A128841.P2773158632201534297

/-!
# A128842: Numerators of the continued fraction convergents of the decimal concatenation of the even natural numbers.

The programs for A128842, there is no canonical definition to state claims against.
-/

/-! ## A128842.P11042572415306679421

`A028242(A223807(n+1)%A292304(n))`
-/

namespace A128842.P11042572415306679421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.tmod (A223807 (n + 1)) (A292304 n)).toNat

end

end A128842.P11042572415306679421

/-! ## A128842.P18169125647151613860

`A008618(lcm(A025017(n+1), A193684(n)))`
-/

namespace A128842.P18169125647151613860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lcm (A025017 (n + 1)) (A193684 n))

end

end A128842.P18169125647151613860

/-!
# A128846: Numerators of the continued fraction convergents of the decimal concatenation of the upper bounds of twin primes.

The programs for A128846, there is no canonical definition to state claims against.
-/

/-! ## A128846.P13572768581868141053

`floor(cosh(a(n-1))²)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A128846.P13572768581868141053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  ⌊Real.cosh (a (n - 1) : ℝ) ^ 2⌋

end

end A128846.P13572768581868141053

/-!
# A128847: Denominators of the continued fraction convergents of the decimal concatenation of the upper bounds of twin primes.

The programs for A128847, there is no canonical definition to state claims against.
-/

/-! ## A128847.P5203195164459551033

`A056921(a(n-1)+n)` with `a(0)=1`
-/

namespace A128847.P5203195164459551033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056921 (a (n - 1) + (n : ℤ)).toNat

end

end A128847.P5203195164459551033

/-!
# A128849: Denominators of the continued fraction convergents of the decimal concatenation of the twin prime pairs.

The programs for A128849, there is no canonical definition to state claims against.
-/

/-! ## A128849.P871427180783669725

`record[A279633(A077168(n))]`
-/

namespace A128849.P871427180783669725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279633 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128849.P871427180783669725

/-! ## A128849.P15495086172842466255

`A241953(A282953(n+1))`
-/

namespace A128849.P15495086172842466255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241953 (A282953 (n + 1)).toNat

end

end A128849.P15495086172842466255

/-!
# A128850: Numerators of the continued fraction convergents of the decimal concatenation of the prime-indexed primes.

The programs for A128850, there is no canonical definition to state claims against.
-/

/-! ## A128850.P1251187909573295940

`A128844(A055647(n))`
-/

namespace A128850.P1251187909573295940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128844 (A055647 n).toNat

end

end A128850.P1251187909573295940

/-! ## A128850.P15744167597835418904

`A128844(A057846(n))`
-/

namespace A128850.P15744167597835418904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128844 (A057846 n).toNat

end

end A128850.P15744167597835418904

/-! ## A128850.P4837049869389370907

`A128844(n)%A128849(2*n)`
-/

namespace A128850.P4837049869389370907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128844 n) (A128849 (2 * n))

end

end A128850.P4837049869389370907

/-! ## A128850.P2689071992482819000

`A128844(n)-A025427(A000079(n))`
-/

namespace A128850.P2689071992482819000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128844 n - A025427 (A000079 n).toNat

end

end A128850.P2689071992482819000

/-! ## A128850.P10819155756483019939

`A128844(n)*A263111(A124007(n))`
-/

namespace A128850.P10819155756483019939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128844 n * A263111 (A124007 n).toNat

end

end A128850.P10819155756483019939

/-!
# A128851: Denominators of the continued fraction convergents of the decimal concatenation of the prime-indexed primes.

The programs for A128851, there is no canonical definition to state claims against.
-/

/-! ## A128851.P4565913035415369174

`A128845(A055647(n))`
-/

namespace A128851.P4565913035415369174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128845 (A055647 n).toNat

end

end A128851.P4565913035415369174

/-! ## A128851.P11326614842164391241

`A128845(A057846(n))`
-/

namespace A128851.P11326614842164391241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128845 (A057846 n).toNat

end

end A128851.P11326614842164391241

/-! ## A128851.P1413440639070648787

`A130472(2*A128845(n))`
-/

namespace A128851.P1413440639070648787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * A128845 n).toNat

end

end A128851.P1413440639070648787

/-! ## A128851.P1051897170620408837

`A174221(2*A128845(n))`
-/

namespace A128851.P1051897170620408837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (2 * A128845 n).toNat

end

end A128851.P1051897170620408837

/-! ## A128851.P18310791062318284060

`filter[A128845(n), A276398(#)]`
-/

namespace A128851.P18310791062318284060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A128851.P18310791062318284060

/-!
# A128852: Anti-elite primes: a prime number p is called anti-elite if only a finite number of Fermat numbers 2^(2^n)+1 are quadratic non-residues mod p.

The programs for A128852, there is no canonical definition to state claims against.
-/

/-! ## A128852.P13123758801717877615

`p?[A372894(n+1)]`
-/

namespace A128852.P13123758801717877615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128852.P13123758801717877615

/-! ## A128852.P17644958613830920015

`∩[A002313(n+1), A372894(n+1)]`
-/

namespace A128852.P17644958613830920015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128852.P17644958613830920015

/-! ## A128852.P10579852167950047160

`∩[A042998(n+1), A372894(n+1)]`
-/

namespace A128852.P10579852167950047160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128852.P10579852167950047160

/-! ## A128852.P8868296756226221754

`∩[A045352(n+1), A372894(n+1)]`
-/

namespace A128852.P8868296756226221754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128852.P8868296756226221754

/-! ## A128852.P11213651962891568230

`∩[A000040(n+1), A372894(n+1)]`
-/

namespace A128852.P11213651962891568230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128852.P11213651962891568230

/-!
# A128853: a(n) is the number of positive divisors of n which are coprime to phi(n) = A000010(n).

The programs for A128853, the canonical program `A128853.P13378743803710917072` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128853 has offset 1).

The definition of A128853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128853.P12565091808205618942

`A000005((n+1)/gcd(n+1, A000010(n+1)²))`
-/

namespace A128853.P12565091808205618942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1) ^ 2) : ℚ))).toNat

end

end A128853.P12565091808205618942

namespace A128853

/-- `A000005((n+1)/gcd(n+1, A000010(n+1)²))` -/
def P12565091808205618942.Spec : Prop :=
  ∀ n, P12565091808205618942.a n = A128853 (n + 1)

end A128853

/-! ## A128853.P13378743803710917072

`A034444(n+1)/A034444(A009195(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128853

/-- `A034444(n+1)/A034444(A009195(n+1))` -/
def P13378743803710917072.Spec : Prop :=
  ∀ n, P13378743803710917072.a n = (A128853 (n + 1) : ℚ)

end A128853

/-! ## A128853.P2776840976564273456

`A034444(n+1)/A034444(A072994(n+1))`
-/

namespace A128853.P2776840976564273456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A072994 (n + 1)).toNat : ℚ)

end

end A128853.P2776840976564273456

namespace A128853

/-- `A034444(n+1)/A034444(A072994(n+1))` -/
def P2776840976564273456.Spec : Prop :=
  ∀ n, P2776840976564273456.a n = (A128853 (n + 1) : ℚ)

end A128853

/-! ## A128853.P16457190180795022074

`∏{p}[n+1, A006955(A000010(n+1)%#)%4]`
-/

namespace A128853.P16457190180795022074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A006955 (Int.tmod (A000010 (n + 1)) (p : ℤ)).toNat) 4

end

end A128853.P16457190180795022074

namespace A128853

/-- `∏{p}[n+1, A006955(A000010(n+1)%#)%4]` -/
def P16457190180795022074.Spec : Prop :=
  ∀ n, P16457190180795022074.a n = A128853 (n + 1)

end A128853

/-! ## A128853.P3965965835898725237

`A000005(A007947(A002618(n+1))/A080400(n+1))`
-/

namespace A128853.P3965965835898725237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007947 (A002618 (n + 1)).toNat : ℚ) / (A080400 (n + 1) : ℚ))).toNat

end

end A128853.P3965965835898725237

namespace A128853

/-- `A000005(A007947(A002618(n+1))/A080400(n+1))` -/
def P3965965835898725237.Spec : Prop :=
  ∀ n, P3965965835898725237.a n = A128853 (n + 1)

end A128853

/-! ## A128853.P2538067401887883010

`A000005(A080400((n+1)²)/A080400(n+1))`
-/

namespace A128853.P2538067401887883010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A080400 ((n + 1) ^ 2) : ℚ) / (A080400 (n + 1) : ℚ))).toNat

end

end A128853.P2538067401887883010

namespace A128853

/-- `A000005(A080400((n+1)²)/A080400(n+1))` -/
def P2538067401887883010.Spec : Prop :=
  ∀ n, P2538067401887883010.a n = A128853 (n + 1)

end A128853

/-!
# A128854: Number of partitions of n^3.

The programs for A128854, there is no canonical definition to state claims against.
-/

/-! ## A128854.P6137046230644648855

`A000041(A000578(n))`
-/

namespace A128854.P6137046230644648855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000578 n).toNat

end

end A128854.P6137046230644648855

/-! ## A128854.P17704289525524660687

`A000041(n^3)`
-/

namespace A128854.P17704289525524660687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 3)

end

end A128854.P17704289525524660687

/-! ## A128854.P14162016390268745435

`A000065(n^3)+1`
-/

namespace A128854.P14162016390268745435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n ^ 3) + 1

end

end A128854.P14162016390268745435

/-! ## A128854.P14008694736672418247

`A139582(n^3)/2`
-/

namespace A128854.P14008694736672418247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (n ^ 3) : ℚ) / 2

end

end A128854.P14008694736672418247

/-! ## A128854.P62869192831925203

`A299473(n^3)/3`
-/

namespace A128854.P62869192831925203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 (n ^ 3) : ℚ) / 3

end

end A128854.P62869192831925203

/-!
# A128855: Number of partitions of binomial(2*n, n).

The programs for A128855, there is no canonical definition to state claims against.
-/

/-! ## A128855.P9818417025393446186

`A000041(A000984(n))`
-/

namespace A128855.P9818417025393446186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000984 n).toNat

end

end A128855.P9818417025393446186

/-! ## A128855.P3037422244667524760

`A090011(∑[4*n])`
-/

namespace A128855.P3037422244667524760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128855.P3037422244667524760

/-! ## A128855.P2634518246345485827

`A000041(C(2*n, n))`
-/

namespace A128855.P2634518246345485827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose (2 * n) n)

end

end A128855.P2634518246345485827

/-! ## A128855.P12487706283749378871

`A000041(record[a(n-1)/(floor(n/2)/n-1)])` with `a(0)=1`
-/

namespace A128855.P12487706283749378871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A128855.P12487706283749378871

/-!
# A128858: Number of digits in A128857(n).

The programs for A128858, there is no canonical definition to state claims against.
-/

/-! ## A128858.P4683547455319009117

`A051626(A233583(10*n+11)-1)`
-/

namespace A128858.P4683547455319009117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A233583 (10 * n + 11) - 1).toNat

end

end A128858.P4683547455319009117

/-! ## A128858.P6655837567479750764

`A002329(4*(n+1))+A000007((n+1)²)`
-/

namespace A128858.P6655837567479750764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (4 * (n + 1)) + A000007 ((n + 1) ^ 2)

end

end A128858.P6655837567479750764

/-! ## A128858.P4049477717104864114

`A002329(4*(n+1))%A008458((n+1)²)`
-/

namespace A128858.P4049477717104864114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002329 (4 * (n + 1))) (A008458 ((n + 1) ^ 2))

end

end A128858.P4049477717104864114

/-! ## A128858.P12281471855476765858

`A002329(Δ[A005408(A002378(n))])`
-/

namespace A128858.P12281471855476765858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (f1 (n + 1) - f1 n).toNat

end

end A128858.P12281471855476765858

/-! ## A128858.P7064990869325773310

`A002329(Δ[A004275(A027689(n))])`
-/

namespace A128858.P7064990869325773310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A027689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (f1 (n + 1) - f1 n).toNat

end

end A128858.P7064990869325773310

/-! ## A128858.P2151295913007679084

`A007732(A017377(n)*A336722(n+1))`
-/

namespace A128858.P2151295913007679084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A017377 n * A336722 (n + 1)).toNat

end

end A128858.P2151295913007679084

/-!
# A128860: Let p be the n-th odd prime; a(n) is the number of primitive roots of p which are relatively prime to p-1.

The programs for A128860, there is no canonical definition to state claims against.
-/

/-! ## A128860.P8502514204034183440

`A000120(A086155(n+1)^A086161(n))`
-/

namespace A128860.P8502514204034183440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A086155 (n + 1) : ℚ) ^ (A086161 n : ℤ))).toNat

end

end A128860.P8502514204034183440

/-!
# A128861: Let p = n-th odd prime; a(n) = number of primitive roots of p which might be expected to be relatively prime to p-1, that is, a(n) = phi(p-1)^2/(p-1) rounded to the nearest integer.

The programs for A128861, there is no canonical definition to state claims against.
-/

/-! ## A128861.P10447763336832606451

`round(A127473(A165972(n+1))/A165972(n+1))`
-/

namespace A128861.P10447763336832606451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127473 (A165972 (n + 1)).toNat : ℚ) / (A165972 (n + 1) : ℚ))

end

end A128861.P10447763336832606451

/-! ## A128861.P13749248132798621734

`A074919(A057828(A000040(n+2)²))`
-/

namespace A128861.P13749248132798621734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074919 (A057828 (A000040 (n + 2) ^ 2).toNat).toNat

end

end A128861.P13749248132798621734

/-! ## A128861.P17861674518066467455

`A212179(A262667(n+1))`
-/

namespace A128861.P17861674518066467455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212179 (A262667 (n + 1)).toNat

end

end A128861.P17861674518066467455

/-!
# A128862: Numbers simultaneously triangular and centered triangular.

The programs for A128862, the canonical program `A128862.P7659074823418386284` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128862 has offset 1).

The definition of A128862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128862.P7659074823418386284

`(3*A001570(n+1)+1)/4`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128862

/-- `(3*A001570(n+1)+1)/4` -/
def P7659074823418386284.Spec : Prop :=
  ∀ n, P7659074823418386284.a n = (A128862 (n + 1) : ℚ)

end A128862

/-! ## A128862.P2591869237958951901

`floor((sqrt(3)+2)²*a(n-1))-3` with `a(0)=1`
-/

namespace A128862.P2591869237958951901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ - 3

end

end A128862.P2591869237958951901

namespace A128862

/-- `floor((sqrt(3)+2)²*a(n-1))-3` -/
def P2591869237958951901.Spec : Prop :=
  ∀ n, P2591869237958951901.a n = A128862 (n + 1)

end A128862

/-! ## A128862.P15037150452906567969

`3*A076140(n)+1`
-/

namespace A128862.P15037150452906567969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076140 n + 1

end

end A128862.P15037150452906567969

namespace A128862

/-- `3*A076140(n)+1` -/
def P15037150452906567969.Spec : Prop :=
  ∀ n, P15037150452906567969.a n = A128862 (n + 1)

end A128862

/-! ## A128862.P8562314743783511608

`9*A076139(n)+1`
-/

namespace A128862.P8562314743783511608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A076139 n + 1

end

end A128862.P8562314743783511608

namespace A128862

/-- `9*A076139(n)+1` -/
def P8562314743783511608.Spec : Prop :=
  ∀ n, P8562314743783511608.a n = A128862 (n + 1)

end A128862

/-! ## A128862.P9549986865921421641

`C(∑[A005320(n)]+2, 2)`
-/

namespace A128862.P9549986865921421641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat 2

end

end A128862.P9549986865921421641

namespace A128862

/-- `C(∑[A005320(n)]+2, 2)` -/
def P9549986865921421641.Spec : Prop :=
  ∀ n, (P9549986865921421641.a n : ℤ) = A128862 (n + 1)

end A128862

/-! ## A128862.P4083289612246312642

`(A341671(n+1)+1)/4`
-/

namespace A128862.P4083289612246312642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341671 (n + 1) + 1 : ℚ) / 4

end

end A128862.P4083289612246312642

namespace A128862

/-- `(A341671(n+1)+1)/4` -/
def P4083289612246312642.Spec : Prop :=
  ∀ n, P4083289612246312642.a n = (A128862 (n + 1) : ℚ)

end A128862

/-! ## A128862.P14814734488147690280

`9/2*A217855(n)+1`
-/

namespace A128862.P14814734488147690280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (A217855 n : ℚ) + 1

end

end A128862.P14814734488147690280

namespace A128862

/-- `9/2*A217855(n)+1` -/
def P14814734488147690280.Spec : Prop :=
  ∀ n, P14814734488147690280.a n = (A128862 (n + 1) : ℚ)

end A128862

/-! ## A128862.P3005209945814828423

`C(A133161(n+1)+1, 2)`
-/

namespace A128862.P3005209945814828423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133161 (n + 1) + 1).toNat 2

end

end A128862.P3005209945814828423

namespace A128862

/-- `C(A133161(n+1)+1, 2)` -/
def P3005209945814828423.Spec : Prop :=
  ∀ n, (P3005209945814828423.a n : ℤ) = A128862 (n + 1)

end A128862

/-! ## A128862.P16373510599837762436

`C(3*A101265(n+1)-1, 2)`
-/

namespace A128862.P16373510599837762436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * A101265 (n + 1) - 1).toNat 2

end

end A128862.P16373510599837762436

namespace A128862

/-- `C(3*A101265(n+1)-1, 2)` -/
def P16373510599837762436.Spec : Prop :=
  ∀ n, (P16373510599837762436.a n : ℤ) = A128862 (n + 1)

end A128862

/-!
# A128863: a(0)=1. For n >= 1, a(n) = number of positive divisors of (n+a(n-1)).

The programs for A128863, the canonical program `A128863.P8012791891336178982` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128863 has offset 0).

The definition of A128863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128863.P6935821832008033670

`A000005(a(n-1)+n)` with `a(0)=1`
-/

namespace A128863.P6935821832008033670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) + (n : ℤ)).toNat

end

end A128863.P6935821832008033670

namespace A128863

/-- `A000005(a(n-1)+n)` -/
def P6935821832008033670.Spec : Prop :=
  ∀ n, P6935821832008033670.a n = A128863 n

end A128863

/-! ## A128863.P10009606488770848134

`sqrt(A035116(a(n-1)+n))` with `a(0)=1`
-/

namespace A128863.P10009606488770848134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A035116 (SequenceMachineLib.roundAway (a (n - 1) + (n : ℝ))).toNat : ℝ)

end

end A128863.P10009606488770848134

namespace A128863

/-- `sqrt(A035116(a(n-1)+n))` -/
def P10009606488770848134.Spec : Prop :=
  ∀ n, P10009606488770848134.a n = (A128863 n : ℝ)

end A128863

/-! ## A128863.P8012791891336178982

`A032741(a(n-1)+n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128863

/-- `A032741(a(n-1)+n)+1` -/
def P8012791891336178982.Spec : Prop :=
  ∀ n, P8012791891336178982.a n = A128863 n

theorem P8012791891336178982.correct : P8012791891336178982.Spec := by
  intro n
  simp only [A128863]

end A128863

/-! ## A128863.P4789977334653925516

`A334954(a(n-1)+n)-1` with `a(0)=1`
-/

namespace A128863.P4789977334653925516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334954 (a (n - 1) + (n : ℤ)).toNat - 1

end

end A128863.P4789977334653925516

namespace A128863

/-- `A334954(a(n-1)+n)-1` -/
def P4789977334653925516.Spec : Prop :=
  ∀ n, P4789977334653925516.a n = A128863 n

end A128863

/-! ## A128863.P10386654773181120667

`A069157(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A128863.P10386654773181120667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069157 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A128863.P10386654773181120667

namespace A128863

/-- `A069157(2*(a(n-1)+n))` -/
def P10386654773181120667.Spec : Prop :=
  ∀ n, P10386654773181120667.a n = A128863 n

end A128863

/-! ## A128863.P16691158112311708951

`A183063(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A128863.P16691158112311708951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183063 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A128863.P16691158112311708951

namespace A128863

/-- `A183063(2*(a(n-1)+n))` -/
def P16691158112311708951.Spec : Prop :=
  ∀ n, P16691158112311708951.a n = A128863 n

end A128863

/-! ## A128863.P9681807626534312003

`A320111(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A128863.P9681807626534312003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320111 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A128863.P9681807626534312003

namespace A128863

/-- `A320111(2*(a(n-1)+n))` -/
def P9681807626534312003.Spec : Prop :=
  ∀ n, P9681807626534312003.a n = A128863 n

end A128863

/-! ## A128863.P14045038023339260295

`A000005(n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128863.P14045038023339260295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n : ℤ) - (-a (n - 1))).toNat

end

end A128863.P14045038023339260295

namespace A128863

/-- `A000005(n-floor(-a(n-1)))` -/
def P14045038023339260295.Spec : Prop :=
  ∀ n, P14045038023339260295.a n = A128863 n

end A128863

/-! ## A128863.P5631736690695716660

`A000005(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A128863.P5631736690695716660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n : ℤ) - (-a (n - 1))).toNat

end

end A128863.P5631736690695716660

namespace A128863

/-- `A000005(n-ceil(-a(n-1)))` -/
def P5631736690695716660.Spec : Prop :=
  ∀ n, P5631736690695716660.a n = A128863 n

end A128863

/-! ## A128863.P17433186667216454966

`A000005(n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A128863.P17433186667216454966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n : ℤ) - (-a (n - 1))).toNat

end

end A128863.P17433186667216454966

namespace A128863

/-- `A000005(n-round(-a(n-1)))` -/
def P17433186667216454966.Spec : Prop :=
  ∀ n, P17433186667216454966.a n = A128863 n

end A128863

/-! ## A128863.P13934755518134867949

`A000005(n-(char[1]-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A128863.P13934755518134867949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000005 ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))).toNat

end

end A128863.P13934755518134867949

namespace A128863

/-- `A000005(n-(char[1]-a(n-1)))` -/
def P13934755518134867949.Spec : Prop :=
  ∀ n, P13934755518134867949.a n = A128863 n

end A128863

/-! ## A128863.P12137729425834776594

`A000005(abs(2*n-(n-a(n-1))))` with `a(0)=1`
-/

namespace A128863.P12137729425834776594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 |(2 * n : ℤ) - ((n : ℤ) - a (n - 1))|.toNat

end

end A128863.P12137729425834776594

namespace A128863

/-- `A000005(abs(2*n-(n-a(n-1))))` -/
def P12137729425834776594.Spec : Prop :=
  ∀ n, P12137729425834776594.a n = A128863 n

end A128863

/-! ## A128863.P16746602996407835920

`A096737(a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A128863.P16746602996407835920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A096737 (a (n - 1) + (n : ℤ)).toNat

end

end A128863.P16746602996407835920

namespace A128863

/-- `A096737(a(n-1)+n)` -/
def P16746602996407835920.Spec : Prop :=
  ∀ n, P16746602996407835920.a n = A128863 n

end A128863

/-!
# A128864: a(0)=a(1)=1. For n>=2, a(n) = number of positive divisors of n that are coprime to (a(n-1) + a(n-2)).

The programs for A128864, there is no canonical definition to state claims against.
-/

/-! ## A128864.P8901923669861900984

`A069288(A328259(n+1)+A262626(n+1))`
-/

namespace A128864.P8901923669861900984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A328259 (n + 1) + A262626 (n + 1)).toNat

end

end A128864.P8901923669861900984

/-! ## A128864.P17482704361210631124

`gcd(A244543(n), A299480(A083477(n+1)))`
-/

namespace A128864.P17482704361210631124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244543 n) (A299480 (A083477 (n + 1)).toNat)

end

end A128864.P17482704361210631124

/-!
# A128865: Number of n-tuples where each entry is chosen from the subsets of {1,2,3,4} such that the intersection of all n entries contains exactly one element.

The programs for A128865, the canonical program `A128865.P18334661028657957154` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128865 has offset 1).

The definition of A128865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128865.P18334661028657957154

`4*(2^(n+1)-1)^3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128865

/-- `4*(2^(n+1)-1)^3` -/
def P18334661028657957154.Spec : Prop :=
  ∀ n, P18334661028657957154.a n = A128865 (n + 1)

theorem P18334661028657957154.correct : P18334661028657957154.Spec := by
  intro n
  simp only [A128865, Nat.add_sub_cancel]

end A128865

/-! ## A128865.P1789295278841838030

`lcm(4, ∑[2^n]^3)`
-/

namespace A128865.P1789295278841838030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3)

end

end A128865.P1789295278841838030

namespace A128865

/-- `lcm(4, ∑[2^n]^3)` -/
def P1789295278841838030.Spec : Prop :=
  ∀ n, (P1789295278841838030.a n : ℤ) = A128865 (n + 1)

end A128865

/-! ## A128865.P3736812712919282489

`A267668(Δ[n²])`
-/

namespace A128865.P3736812712919282489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267668 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128865.P3736812712919282489

namespace A128865

/-- `A267668(Δ[n²])` -/
def P3736812712919282489.Spec : Prop :=
  ∀ n, P3736812712919282489.a n = A128865 (n + 1)

end A128865

/-! ## A128865.P17520499994526420997

`record[4*A077896(n)^3]`
-/

namespace A128865.P17520499994526420997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A077896 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128865.P17520499994526420997

namespace A128865

/-- `record[4*A077896(n)^3]` -/
def P17520499994526420997.Spec : Prop :=
  ∀ n, P17520499994526420997.a n = A128865 (n + 1)

end A128865

/-! ## A128865.P15994283845033383150

`∑[2^(n%(n+1)+1)]^3/2`
-/

namespace A128865.P15994283845033383150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % (n + 1) + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℕ) : ℚ) / 2

end

end A128865.P15994283845033383150

namespace A128865

/-- `∑[2^(n%(n+1)+1)]^3/2` -/
def P15994283845033383150.Spec : Prop :=
  ∀ n, P15994283845033383150.a n = (A128865 (n + 1) : ℚ)

end A128865

/-! ## A128865.P15269464420803618760

`A095121(n+1)^3/2`
-/

namespace A128865.P15269464420803618760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 1) ^ 3 : ℚ) / 2

end

end A128865.P15269464420803618760

namespace A128865

/-- `A095121(n+1)^3/2` -/
def P15269464420803618760.Spec : Prop :=
  ∀ n, P15269464420803618760.a n = (A128865 (n + 1) : ℚ)

end A128865

/-! ## A128865.P6004861211445894383

`A000918(n+2)^3/2`
-/

namespace A128865.P6004861211445894383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 2) ^ 3 : ℚ) / 2

end

end A128865.P6004861211445894383

namespace A128865

/-- `A000918(n+2)^3/2` -/
def P6004861211445894383.Spec : Prop :=
  ∀ n, P6004861211445894383.a n = (A128865 (n + 1) : ℚ)

end A128865

/-! ## A128865.P12418179814179281399

`A296965(n+2)^3/2`
-/

namespace A128865.P12418179814179281399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296965 (n + 2) ^ 3 : ℚ) / 2

end

end A128865.P12418179814179281399

namespace A128865

/-- `A296965(n+2)^3/2` -/
def P12418179814179281399.Spec : Prop :=
  ∀ n, P12418179814179281399.a n = (A128865 (n + 1) : ℚ)

end A128865

/-! ## A128865.P10202561212277497408

`∑[A000079(n+1)]^3/2`
-/

namespace A128865.P10202561212277497408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℤ) : ℚ) / 2

end

end A128865.P10202561212277497408

namespace A128865

/-- `∑[A000079(n+1)]^3/2` -/
def P10202561212277497408.Spec : Prop :=
  ∀ n, P10202561212277497408.a n = (A128865 (n + 1) : ℚ)

end A128865

/-! ## A128865.P16121863563206752904

`2*A267668(2*n+1)-A267668(2*n+1)`
-/

namespace A128865.P16121863563206752904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267668 (2 * n + 1) - A267668 (2 * n + 1)

end

end A128865.P16121863563206752904

namespace A128865

/-- `2*A267668(2*n+1)-A267668(2*n+1)` -/
def P16121863563206752904.Spec : Prop :=
  ∀ n, P16121863563206752904.a n = A128865 (n + 1)

end A128865

/-!
# A128866: Number of n-tuples where each entry is chosen from the subsets of {1,2,3,4,5} such that the intersection of all n entries contains exactly one element.

The programs for A128866, the canonical program `A128866.P1235204843451735429` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128866 has offset 1).

The definition of A128866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128866.P1235204843451735429

`5*(2^(n+1)-1)^4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128866

/-- `5*(2^(n+1)-1)^4` -/
def P1235204843451735429.Spec : Prop :=
  ∀ n, P1235204843451735429.a n = A128866 (n + 1)

theorem P1235204843451735429.correct : P1235204843451735429.Spec := by
  intro n
  simp only [A128866, Nat.add_sub_cancel]

end A128866

/-! ## A128866.P15742528019973651223

`floor(5*∑[2*a(n-1)]²²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128866.P15742528019973651223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A128866.P15742528019973651223

namespace A128866

/-- `floor(5*∑[2*a(n-1)]²²)` -/
def P15742528019973651223.Spec : Prop :=
  ∀ n, (P15742528019973651223.a n : ℤ) = A128866 (n + 1)

end A128866

/-! ## A128866.P10696465265754581475

`record[5*or(n, n+1)^4]`
-/

namespace A128866.P10696465265754581475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor n (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128866.P10696465265754581475

namespace A128866

/-- `record[5*or(n, n+1)^4]` -/
def P10696465265754581475.Spec : Prop :=
  ∀ n, (P10696465265754581475.a n : ℤ) = A128866 (n + 1)

end A128866

/-! ## A128866.P6096231869626844102

`record[5*xor(n, n+1)^4]`
-/

namespace A128866.P6096231869626844102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.xor n (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128866.P6096231869626844102

namespace A128866

/-- `record[5*xor(n, n+1)^4]` -/
def P6096231869626844102.Spec : Prop :=
  ∀ n, (P6096231869626844102.a n : ℤ) = A128866 (n + 1)

end A128866

/-! ## A128866.P8575334268315395188

`record[5*or(n, n+1)²²]`
-/

namespace A128866.P8575334268315395188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.lor n (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128866.P8575334268315395188

namespace A128866

/-- `record[5*or(n, n+1)²²]` -/
def P8575334268315395188.Spec : Prop :=
  ∀ n, (P8575334268315395188.a n : ℤ) = A128866 (n + 1)

end A128866

/-!
# A128869: a(n) = the largest number one can subtract from 10^n such that the square of the result is strictly greater than 10^(2*n-1).

The programs for A128869, there is no canonical definition to state claims against.
-/

/-! ## A128869.P8617962093220376073

`floor(10^(n+1)*(1-1/sqrt(10)))`
-/

namespace A128869.P8617962093220376073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ (n + 1) : ℝ) * (1 - 1 / Real.sqrt (10 : ℝ))⌋

end

end A128869.P8617962093220376073

/-! ## A128869.P7867365571544945869

`A049415(2*(n+1))`
-/

namespace A128869.P7867365571544945869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (2 * (n + 1))

end

end A128869.P7867365571544945869

/-! ## A128869.P2572592566286341759

`A062940(2*(n+1))`
-/

namespace A128869.P2572592566286341759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062940 (2 * (n + 1))

end

end A128869.P2572592566286341759

/-! ## A128869.P2605871541456041992

`A216653((n+1)*(2*n+5))`
-/

namespace A128869.P2605871541456041992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216653 ((n + 1) * (2 * n + 5))

end

end A128869.P2605871541456041992

/-! ## A128869.P12105042456656157387

`round(sqrt(A049415(n+2+n)²+1))`
-/

namespace A128869.P12105042456656157387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049415 (n + 2 + n) ^ 2 + 1 : ℝ))

end

end A128869.P12105042456656157387

/-!
# A128870: Numbers n that are divisible by d, where a_i for 1 <= i <= k are the digits of n and d = Product_{i=1..k}Sum_of_digits_of_(a_i^k).

The programs for A128870, there is no canonical definition to state claims against.
-/

/-! ## A128870.P11862932019247602080

`A167620(n+1)-A025469(A084188(n))`
-/

namespace A128870.P11862932019247602080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167620 (n + 1) - A025469 (A084188 n).toNat

end

end A128870.P11862932019247602080

/-! ## A128870.P2476732603378578018

`A167620(n+1)-A118135(Δ[A167620(n+1)])`
-/

namespace A128870.P2476732603378578018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167620 (n + 1) - A118135 (f1 (n + 1) - f1 n).toNat

end

end A128870.P2476732603378578018

/-! ## A128870.P13380627354837161734

`A316530(n+1)+A305351(A131380(2*n+1))`
-/

namespace A128870.P13380627354837161734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316530 (n + 1) + A305351 (A131380 (2 * n + 1)).toNat

end

end A128870.P13380627354837161734

/-! ## A128870.P2229998038080553073

`∑[A006530(Δ[A185254(n)]+1)]`
-/

namespace A128870.P2229998038080553073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128870.P2229998038080553073

/-! ## A128870.P4326945380886437355

`record[gcd(A069570(n+1), A178843(n+1))]`
-/

namespace A128870.P4326945380886437355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069570 (n + 1)) (A178843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128870.P4326945380886437355

/-!
# A128877: Numerator of the continued fraction convergents of the decimal concatenation of the powers of 10.

The programs for A128877, there is no canonical definition to state claims against.
-/

/-! ## A128877.P17486169315044961726

`A345393(A275320(n+1))`
-/

namespace A128877.P17486169315044961726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345393 (A275320 (n + 1)).toNat

end

end A128877.P17486169315044961726

/-!
# A128878: Primes of the form 47*n^2 - 1701*n + 10181.

The programs for A128878, there is no canonical definition to state claims against.
-/

/-! ## A128878.P17169099363306852306

`p?[A050267(n+1)]`
-/

namespace A128878.P17169099363306852306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128878.P17169099363306852306

/-!
# A128880: Triangular numbers congruent to 1 or 5 mod 6.

The programs for A128880, the canonical program `A128880.P6039307139623609588` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128880 has offset 1).

The definition of A128880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128880.P6039307139623609588

`18*A074378(n)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128880

/-- `18*A074378(n)+1` -/
def P6039307139623609588.Spec : Prop :=
  ∀ n, P6039307139623609588.a n = A128880 (n + 1)

theorem P6039307139623609588.correct : P6039307139623609588.Spec := by
  intro n
  simp only [A128880, Nat.add_sub_cancel]

end A128880

/-! ## A128880.P14047611831264915013

`C(∑[A010707(n)]-1, 2)`
-/

namespace A128880.P14047611831264915013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat 2

end

end A128880.P14047611831264915013

namespace A128880

/-- `C(∑[A010707(n)]-1, 2)` -/
def P14047611831264915013.Spec : Prop :=
  ∀ n, (P14047611831264915013.a n : ℤ) = A128880 (n + 1)

end A128880

/-! ## A128880.P14823371277931105919

`C(A113802(n+1)-n, 2)`
-/

namespace A128880.P14823371277931105919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113802 (n + 1) - (n : ℤ)).toNat 2

end

end A128880.P14823371277931105919

namespace A128880

/-- `C(A113802(n+1)-n, 2)` -/
def P14823371277931105919.Spec : Prop :=
  ∀ n, (P14823371277931105919.a n : ℤ) = A128880 (n + 1)

end A128880

/-! ## A128880.P12725138516277026163

`∑[72*abs(n/4-A026741(n))]+1`
-/

namespace A128880.P12725138516277026163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  72 * |(n : ℚ) / 4 - (A026741 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A128880.P12725138516277026163

namespace A128880

/-- `∑[72*abs(n/4-A026741(n))]+1` -/
def P12725138516277026163.Spec : Prop :=
  ∀ n, P12725138516277026163.a n = (A128880 (n + 1) : ℚ)

end A128880

/-! ## A128880.P5782609482487315214

`9*A000217(char[2*n+1]+2*n)+1`
-/

namespace A128880.P5782609482487315214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000217 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) + 1

end

end A128880.P5782609482487315214

namespace A128880

/-- `9*A000217(char[2*n+1]+2*n)+1` -/
def P5782609482487315214.Spec : Prop :=
  ∀ n, P5782609482487315214.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P8117838983891018848

`A229852(n+1)-A001504(n)`
-/

namespace A128880.P8117838983891018848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229852 (n + 1) - A001504 n

end

end A128880.P8117838983891018848

namespace A128880

/-- `A229852(n+1)-A001504(n)` -/
def P8117838983891018848.Spec : Prop :=
  ∀ n, P8117838983891018848.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P14365791840672707937

`A014494(n)+A047522(n+1)²`
-/

namespace A128880.P14365791840672707937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + A047522 (n + 1) ^ 2

end

end A128880.P14365791840672707937

namespace A128880

/-- `A014494(n)+A047522(n+1)²` -/
def P14365791840672707937.Spec : Prop :=
  ∀ n, P14365791840672707937.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P7227080920396351200

`A007310(n+1)*A091998(n+1)`
-/

namespace A128880.P7227080920396351200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A091998 (n + 1)

end

end A128880.P7227080920396351200

namespace A128880

/-- `A007310(n+1)*A091998(n+1)` -/
def P7227080920396351200.Spec : Prop :=
  ∀ n, P7227080920396351200.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P13646942366656238982

`A016825(n)*A168419(n+1)+1`
-/

namespace A128880.P13646942366656238982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A168419 (n + 1) + 1

end

end A128880.P13646942366656238982

namespace A128880

/-- `A016825(n)*A168419(n+1)+1` -/
def P13646942366656238982.Spec : Prop :=
  ∀ n, P13646942366656238982.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P6583422659850513922

`A091998(n+1)/2*A091999(n+1)`
-/

namespace A128880.P6583422659850513922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091998 (n + 1) : ℚ) / 2 * (A091999 (n + 1) : ℚ)

end

end A128880.P6583422659850513922

namespace A128880

/-- `A091998(n+1)/2*A091999(n+1)` -/
def P6583422659850513922.Spec : Prop :=
  ∀ n, P6583422659850513922.a n = (A128880 (n + 1) : ℚ)

end A128880

/-! ## A128880.P14208319473566742362

`(A022998(n+1)+A022998(n))*A091998(n+1)`
-/

namespace A128880.P14208319473566742362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) + A022998 n) * A091998 (n + 1)

end

end A128880.P14208319473566742362

namespace A128880

/-- `(A022998(n+1)+A022998(n))*A091998(n+1)` -/
def P14208319473566742362.Spec : Prop :=
  ∀ n, P14208319473566742362.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P17843300823123938336

`(A032528(n+1)-A032528(n))*A091998(n+1)`
-/

namespace A128880.P17843300823123938336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032528 (n + 1) - A032528 n) * A091998 (n + 1)

end

end A128880.P17843300823123938336

namespace A128880

/-- `(A032528(n+1)-A032528(n))*A091998(n+1)` -/
def P17843300823123938336.Spec : Prop :=
  ∀ n, P17843300823123938336.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P5603806017613866439

`(A168328(n+1)+A007310(n+1))*A007310(n+1)`
-/

namespace A128880.P5603806017613866439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168328 (n + 1) + A007310 (n + 1)) * A007310 (n + 1)

end

end A128880.P5603806017613866439

namespace A128880

/-- `(A168328(n+1)+A007310(n+1))*A007310(n+1)` -/
def P5603806017613866439.Spec : Prop :=
  ∀ n, P5603806017613866439.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P11332775787974847751

`(A091999(n+1)-A062157(n+1))*A007310(n+1)`
-/

namespace A128880.P11332775787974847751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091999 (n + 1) - A062157 (n + 1)) * A007310 (n + 1)

end

end A128880.P11332775787974847751

namespace A128880

/-- `(A091999(n+1)-A062157(n+1))*A007310(n+1)` -/
def P11332775787974847751.Spec : Prop :=
  ∀ n, P11332775787974847751.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P17637581695544979285

`C(A228137(n+2)-2, 2)`
-/

namespace A128880.P17637581695544979285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228137 (n + 2) - 2).toNat 2

end

end A128880.P17637581695544979285

namespace A128880

/-- `C(A228137(n+2)-2, 2)` -/
def P17637581695544979285.Spec : Prop :=
  ∀ n, (P17637581695544979285.a n : ℤ) = A128880 (n + 1)

end A128880

/-! ## A128880.P9720318005750358056

`A047238(n+2)*A091998(n+1)-A091998(n+1)`
-/

namespace A128880.P9720318005750358056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2) * A091998 (n + 1) - A091998 (n + 1)

end

end A128880.P9720318005750358056

namespace A128880

/-- `A047238(n+2)*A091998(n+1)-A091998(n+1)` -/
def P9720318005750358056.Spec : Prop :=
  ∀ n, P9720318005750358056.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P4856670539314120656

`record[C(A218155(n+1), 3*n)]`
-/

namespace A128880.P4856670539314120656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A218155 (n + 1)).toNat (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128880.P4856670539314120656

namespace A128880

/-- `record[C(A218155(n+1), 3*n)]` -/
def P4856670539314120656.Spec : Prop :=
  ∀ n, (P4856670539314120656.a n : ℤ) = A128880 (n + 1)

end A128880

/-! ## A128880.P5990814443901539693

`lcm(2, ∑[2*n*3^Δ[A001068(2*n)]])+1`
-/

namespace A128880.P5990814443901539693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * (3 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A128880.P5990814443901539693

namespace A128880

/-- `lcm(2, ∑[2*n*3^Δ[A001068(2*n)]])+1` -/
def P5990814443901539693.Spec : Prop :=
  ∀ n, (P5990814443901539693.a n : ℤ) = A128880 (n + 1)

end A128880

/-! ## A128880.P11602696472125102727

`A177049(A014601(n))`
-/

namespace A128880.P11602696472125102727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177049 (A014601 n).toNat

end

end A128880.P11602696472125102727

namespace A128880

/-- `A177049(A014601(n))` -/
def P11602696472125102727.Spec : Prop :=
  ∀ n, P11602696472125102727.a n = A128880 (n + 1)

end A128880

/-! ## A128880.P15379071763782913993

`A060544(A042948(n+1))`
-/

namespace A128880.P15379071763782913993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (A042948 (n + 1)).toNat

end

end A128880.P15379071763782913993

namespace A128880

/-- `A060544(A042948(n+1))` -/
def P15379071763782913993.Spec : Prop :=
  ∀ n, P15379071763782913993.a n = A128880 (n + 1)

end A128880

/-!
# A128881: A007376(8n).

The programs for A128881, there is no canonical definition to state claims against.
-/

/-! ## A128881.P11925753027284748145

`A007376(8*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128881.P11925753027284748145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * (n + 1))

end

end A128881.P11925753027284748145

/-! ## A128881.P4575834750667820492

`dr(A007376(Δ[A016754(n)]))`
-/

namespace A128881.P4575834750667820492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A128881.P4575834750667820492

/-! ## A128881.P9359453707315690958

`dr(A007376(A022144(n+1)))`
-/

namespace A128881.P9359453707315690958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A022144 (n + 1)).toNat)

end

end A128881.P9359453707315690958

/-! ## A128881.P17410688607130552075

`A127734(2*(n+1))`
-/

namespace A128881.P17410688607130552075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127734 (2 * (n + 1))

end

end A128881.P17410688607130552075

/-! ## A128881.P10311425812160340493

`A091332(2*(n+1))%10`
-/

namespace A128881.P10311425812160340493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091332 (2 * (n + 1))) 10

end

end A128881.P10311425812160340493

/-! ## A128881.P179440219132376451

`A010879(A091332(2*(n+1)))`
-/

namespace A128881.P179440219132376451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A091332 (2 * (n + 1))).toNat

end

end A128881.P179440219132376451

/-! ## A128881.P12719845302186535788

`A033307(record[xor(7, n)])`
-/

namespace A128881.P12719845302186535788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A128881.P12719845302186535788

/-! ## A128881.P5458844032926778433

`A127353(4*(n+1))`
-/

namespace A128881.P5458844032926778433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 (4 * (n + 1))

end

end A128881.P5458844032926778433

/-! ## A128881.P3614487785142989360

`A033307(8*n+7)`
-/

namespace A128881.P3614487785142989360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 7)

end

end A128881.P3614487785142989360

/-! ## A128881.P11558099784788374491

`A059805(4*(n+1))%10`
-/

namespace A128881.P11558099784788374491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059805 (4 * (n + 1))) 10

end

end A128881.P11558099784788374491

/-! ## A128881.P16342937259732445728

`dr(A033307(A004771(n)))`
-/

namespace A128881.P16342937259732445728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A004771 n).toNat)

end

end A128881.P16342937259732445728

/-! ## A128881.P6391716454123384799

`dr(A033307(Δ[A033951(n)]))`
-/

namespace A128881.P6391716454123384799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (f1 (n + 1) - f1 n).toNat)

end

end A128881.P6391716454123384799

/-! ## A128881.P2679135302608209485

`A261333(record[xor(7, n)])%10`
-/

namespace A128881.P2679135302608209485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 10

end

end A128881.P2679135302608209485

/-! ## A128881.P8166390006833914645

`A108712(A125169(n))`
-/

namespace A128881.P8166390006833914645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A125169 n).toNat

end

end A128881.P8166390006833914645

/-! ## A128881.P4838044016163533790

`A108712(A082285(n)+2)`
-/

namespace A128881.P4838044016163533790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A082285 n + 2).toNat

end

end A128881.P4838044016163533790

/-! ## A128881.P15509741797681904487

`A108712(A158057(n+1)-2)`
-/

namespace A128881.P15509741797681904487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A158057 (n + 1) - 2).toNat

end

end A128881.P15509741797681904487

/-! ## A128881.P7833352244175299626

`A108712(A004771(2*n+1))`
-/

namespace A128881.P7833352244175299626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004771 (2 * n + 1)).toNat

end

end A128881.P7833352244175299626

/-! ## A128881.P10429701835645167858

`A108202(16*(n+1))`
-/

namespace A128881.P10429701835645167858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (16 * (n + 1))

end

end A128881.P10429701835645167858

/-!
# A128882: a(n) = n!! - 1.

The programs for A128882, the canonical program `A128882.P10026494431697835336` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128882 has offset 0).

The definition of A128882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128882.P10026494431697835336

`A006882(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128882

/-- `A006882(n)-1` -/
def P10026494431697835336.Spec : Prop :=
  ∀ n, P10026494431697835336.a n = A128882 n

theorem P10026494431697835336.correct : P10026494431697835336.Spec := by
  intro n
  simp only [A128882]

end A128882

/-! ## A128882.P12613539581701218051

`∏[n/a(n-1)]-1` with `a(0)=1`
-/

namespace A128882.P12613539581701218051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128882.P12613539581701218051

namespace A128882

/-- `∏[n/a(n-1)]-1` -/
def P12613539581701218051.Spec : Prop :=
  ∀ n, P12613539581701218051.a n = (A128882 n : ℚ)

end A128882

/-! ## A128882.P9944347649198516898

`n*(a(n-2)+1)-1` with `a(0)=0, a(1)=0`
-/

namespace A128882.P9944347649198516898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) * (a (n - 2) + 1) - 1

end

end A128882.P9944347649198516898

namespace A128882

/-- `n*(a(n-2)+1)-1` -/
def P9944347649198516898.Spec : Prop :=
  ∀ n, P9944347649198516898.a n = A128882 n

end A128882

/-! ## A128882.P12916392418721550276

`n-(1-n*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A128882.P12916392418721550276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) - (1 - (n : ℤ) * a (n - 2))

end

end A128882.P12916392418721550276

namespace A128882

/-- `n-(1-n*a(n-2))` -/
def P12916392418721550276.Spec : Prop :=
  ∀ n, P12916392418721550276.a n = A128882 n

end A128882

/-! ## A128882.P5055575095763266336

`(a(n-2)+1)/n^-1-1` with `a(0)=0, a(1)=0`
-/

namespace A128882.P5055575095763266336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 2) + 1) / (n : ℚ) ^ (-1 : ℤ) - 1

end

end A128882.P5055575095763266336

namespace A128882

/-- `(a(n-2)+1)/n^-1-1` -/
def P5055575095763266336.Spec : Prop :=
  ∀ n, P5055575095763266336.a n = (A128882 n : ℚ)

end A128882

/-! ## A128882.P5728991426131974365

`n-(1-a(n-2)/n^-1)` with `a(0)=0, a(1)=0`
-/

namespace A128882.P5728991426131974365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℚ) - (1 - a (n - 2) / (n : ℚ) ^ (-1 : ℤ))

end

end A128882.P5728991426131974365

namespace A128882

/-- `n-(1-a(n-2)/n^-1)` -/
def P5728991426131974365.Spec : Prop :=
  ∀ n, P5728991426131974365.a n = (A128882 n : ℚ)

end A128882

/-! ## A128882.P1498937848777560995

`A130779(n)+A216466(n)-1`
-/

namespace A128882.P1498937848777560995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n + (A216466 n - 1)

end

end A128882.P1498937848777560995

namespace A128882

/-- `A130779(n)+A216466(n)-1` -/
def P1498937848777560995.Spec : Prop :=
  ∀ n, P1498937848777560995.a n = A128882 n

end A128882

/-! ## A128882.P14547501062300378039

`A095987(n)*A380909(n)-1`
-/

namespace A128882.P14547501062300378039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 n * A380909 n - 1

end

end A128882.P14547501062300378039

namespace A128882

/-- `A095987(n)*A380909(n)-1` -/
def P14547501062300378039.Spec : Prop :=
  ∀ n, P14547501062300378039.a n = A128882 n

end A128882

/-! ## A128882.P7421265338648444053

`A106743(A000040(n+1))+A006882(n)`
-/

namespace A128882.P7421265338648444053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A006882 n

end

end A128882.P7421265338648444053

namespace A128882

/-- `A106743(A000040(n+1))+A006882(n)` -/
def P7421265338648444053.Spec : Prop :=
  ∀ n, P7421265338648444053.a n = A128882 n

end A128882

/-! ## A128882.P14316947599771278110

`A165747(A072345(2*(n+1)))+A006882(n)`
-/

namespace A128882.P14316947599771278110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A072345 (2 * (n + 1))).toNat + A006882 n

end

end A128882.P14316947599771278110

namespace A128882

/-- `A165747(A072345(2*(n+1)))+A006882(n)` -/
def P14316947599771278110.Spec : Prop :=
  ∀ n, P14316947599771278110.a n = A128882 n

end A128882

/-! ## A128882.P11908068091896180792

`(A293656(n+1)-A000217(n+1))/A000217(n+1)`
-/

namespace A128882.P11908068091896180792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293656 (n + 1) - A000217 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A128882.P11908068091896180792

namespace A128882

/-- `(A293656(n+1)-A000217(n+1))/A000217(n+1)` -/
def P11908068091896180792.Spec : Prop :=
  ∀ n, P11908068091896180792.a n = (A128882 n : ℚ)

end A128882

/-! ## A128882.P1756396731896323513

`A172089(∑[n]+1)-1`
-/

namespace A128882.P1756396731896323513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A128882.P1756396731896323513

namespace A128882

/-- `A172089(∑[n]+1)-1` -/
def P1756396731896323513.Spec : Prop :=
  ∀ n, P1756396731896323513.a n = A128882 n

end A128882

/-! ## A128882.P11870093155078258104

`A129981(n)-∑[A172089(∑[n])]`
-/

namespace A128882.P11870093155078258104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128882.P11870093155078258104

namespace A128882

/-- `A129981(n)-∑[A172089(∑[n])]` -/
def P11870093155078258104.Spec : Prop :=
  ∀ n, P11870093155078258104.a n = A128882 n

end A128882

/-! ## A128882.P6887892727818772766

`A087299(n)/A016116(n)-1`
-/

namespace A128882.P6887892727818772766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087299 n : ℚ) / (A016116 n : ℚ) - 1

end

end A128882.P6887892727818772766

namespace A128882

/-- `A087299(n)/A016116(n)-1` -/
def P6887892727818772766.Spec : Prop :=
  ∀ n, P6887892727818772766.a n = (A128882 n : ℚ)

end A128882

/-! ## A128882.P13080530867816110813

`A248809(C(n, 2))-1`
-/

namespace A128882.P13080530867816110813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (Nat.choose n 2) - 1

end

end A128882.P13080530867816110813

namespace A128882

/-- `A248809(C(n, 2))-1` -/
def P13080530867816110813.Spec : Prop :=
  ∀ n, P13080530867816110813.a n = A128882 n

end A128882

/-! ## A128882.P5029425970675028703

`A248809(A161680(n))-1`
-/

namespace A128882.P5029425970675028703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (A161680 n).toNat - 1

end

end A128882.P5029425970675028703

namespace A128882

/-- `A248809(A161680(n))-1` -/
def P5029425970675028703.Spec : Prop :=
  ∀ n, P5029425970675028703.a n = A128882 n

end A128882

/-! ## A128882.P1121281090489306620

`A248809(A000217(n)-n)-1`
-/

namespace A128882.P1121281090489306620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (A000217 n - (n : ℤ)).toNat - 1

end

end A128882.P1121281090489306620

namespace A128882

/-- `A248809(A000217(n)-n)-1` -/
def P1121281090489306620.Spec : Prop :=
  ∀ n, P1121281090489306620.a n = A128882 n

end A128882

/-! ## A128882.P1471372160818890056

`A230698(∑[n])-1`
-/

namespace A128882.P1471372160818890056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A128882.P1471372160818890056

namespace A128882

/-- `A230698(∑[n])-1` -/
def P1471372160818890056.Spec : Prop :=
  ∀ n, P1471372160818890056.a n = A128882 n

end A128882

/-!
# A128884: Sum of all matrix elements of n X n Vandermonde matrix of numbers 1,2,...,n, i.e., the matrix A with A[i,j] = i^(j-1), 1 <= i <= n, 1 <= j <= n.

The programs for A128884, there is no canonical definition to state claims against.
-/

/-! ## A128884.P1552997778171806372

`∑[A076015(n+1)+A060072(n+1)]`
-/

namespace A128884.P1552997778171806372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076015 (n + 1) + A060072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128884.P1552997778171806372

/-!
# A128885: Number of closed orientable irreducible 3-manifolds of complexity n.

The programs for A128885, there is no canonical definition to state claims against.
-/

/-! ## A128885.P11044519948761877556

`A325697(2*n+1)+A064067(A331966(n+1))`
-/

namespace A128885.P11044519948761877556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325697 (2 * n + 1) + A064067 (A331966 (n + 1)).toNat

end

end A128885.P11044519948761877556

/-!
# A128886: a(n) = prime(lucky(n)) - lucky(prime(n)).

The programs for A128886, there is no canonical definition to state claims against.
-/

/-! ## A128886.P1325588247458392825

`A000040(A000959(n+1))-A000959(A000040(n+1))`
-/

namespace A128886.P1325588247458392825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000959 (n + 1)).toNat - A000959 (A000040 (n + 1)).toNat

end

end A128886.P1325588247458392825

/-! ## A128886.P131093527626941584

`A032605(n+1)-A032606(n+1)`
-/

namespace A128886.P131093527626941584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1) - A032606 (n + 1)

end

end A128886.P131093527626941584

/-! ## A128886.P18270084187681001423

`A032605(n+1)-A000959(A000040(n+1))`
-/

namespace A128886.P18270084187681001423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1) - A000959 (A000040 (n + 1)).toNat

end

end A128886.P18270084187681001423

/-! ## A128886.P10686045288608733429

`A032605(n+1)-A000959(A008578(n+2))`
-/

namespace A128886.P10686045288608733429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1) - A000959 (A008578 (n + 2)).toNat

end

end A128886.P10686045288608733429

/-! ## A128886.P16008008622710230893

`A032605(n+1)-A000959(p?[A000961(n+1)])`
-/

namespace A128886.P16008008622710230893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1) - A000959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128886.P16008008622710230893

/-! ## A128886.P6998002070524408503

`A000040(A000959(n+1))-A032606(n+1)`
-/

namespace A128886.P6998002070524408503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000959 (n + 1)).toNat - A032606 (n + 1)

end

end A128886.P6998002070524408503

/-! ## A128886.P2885898331621715096

`A000040(A139269(n+1)/2)-A032606(n+1)`
-/

namespace A128886.P2885898331621715096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat - A032606 (n + 1)

end

end A128886.P2885898331621715096

/-!
# A128887: Numbers k such that the number formed by the concatenation of the consecutive integers from 5 to k is prime.

The programs for A128887, there is no canonical definition to state claims against.
-/

/-! ## A128887.P3095809240278871515

`A077307(A111153(n+1))`
-/

namespace A128887.P3095809240278871515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077307 (A111153 (n + 1)).toNat

end

end A128887.P3095809240278871515

/-!
# A128889: a(n) = (2^(n^2) - 1)/(2^n - 1).

The programs for A128889, the canonical program `A128889.P3550289262081989517` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128889 has offset 1).

The definition of A128889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128889.P3550289262081989517

`(2^(n+1)²-1)/(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128889

/-- `(2^(n+1)²-1)/(2^(n+1)-1)` -/
def P3550289262081989517.Spec : Prop :=
  ∀ n, P3550289262081989517.a n = (A128889 (n + 1) : ℚ)

end A128889

/-! ## A128889.P10693996032780440647

`∑{d}[2^n, #^(n+1)]`
-/

namespace A128889.P10693996032780440647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1)

end

end A128889.P10693996032780440647

namespace A128889

/-- `∑{d}[2^n, #^(n+1)]` -/
def P10693996032780440647.Spec : Prop :=
  ∀ n, (P10693996032780440647.a n : ℤ) = A128889 (n + 1)

end A128889

/-! ## A128889.P15395044199520421651

`floor(A344260(n+1)/A198633(n))`
-/

namespace A128889.P15395044199520421651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344260 (n + 1) : ℚ) / (A198633 n : ℚ)⌋

end

end A128889.P15395044199520421651

namespace A128889

/-- `floor(A344260(n+1)/A198633(n))` -/
def P15395044199520421651.Spec : Prop :=
  ∀ n, P15395044199520421651.a n = A128889 (n + 1)

end A128889

/-! ## A128889.P5145234124216981764

`A344260(n+1)-A002416(n+1)`
-/

namespace A128889.P5145234124216981764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344260 (n + 1) - A002416 (n + 1)

end

end A128889.P5145234124216981764

namespace A128889

/-- `A344260(n+1)-A002416(n+1)` -/
def P5145234124216981764.Spec : Prop :=
  ∀ n, P5145234124216981764.a n = A128889 (n + 1)

end A128889

/-! ## A128889.P7277820865535069690

`A275779(n+1)-A212739(n+1)`
-/

namespace A128889.P7277820865535069690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275779 (n + 1) - A212739 (n + 1)

end

end A128889.P7277820865535069690

namespace A128889

/-- `A275779(n+1)-A212739(n+1)` -/
def P7277820865535069690.Spec : Prop :=
  ∀ n, P7277820865535069690.a n = A128889 (n + 1)

end A128889

/-!
# A128890: Triangle T(n,k) related to walks in the positive quadrant.

The programs for A128890, there is no canonical definition to state claims against.
-/

/-! ## A128890.P12894778526361183712

`A127290(A378061(n))`
-/

namespace A128890.P12894778526361183712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A378061 n).toNat

end

end A128890.P12894778526361183712

/-! ## A128890.P10995380964520357086

`A119465(A282252(n)+1)`
-/

namespace A128890.P10995380964520357086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119465 (A282252 n + 1).toNat

end

end A128890.P10995380964520357086

/-! ## A128890.P164541954833288005

`A048766(A038231(n)*A124321(n))`
-/

namespace A128890.P164541954833288005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A038231 n * A124321 n).toNat

end

end A128890.P164541954833288005

/-! ## A128890.P5610111088204626276

`A117707(A054450(n)*A067147(n))`
-/

namespace A128890.P5610111088204626276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A054450 n * A067147 n).toNat

end

end A128890.P5610111088204626276

/-! ## A128890.P9476928764339758803

`A374993(A103919(n)*A111840(n))`
-/

namespace A128890.P9476928764339758803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (A103919 n * A111840 n).toNat

end

end A128890.P9476928764339758803

/-!
# A128893: (1/p)*(binomial(2*p,p)+2*(p-1)), where p = n-th prime.

The programs for A128893, there is no canonical definition to state claims against.
-/

/-! ## A128893.P4167988474188774210

`A123611(p?[comp[n²]])`
-/

namespace A128893.P4167988474188774210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A128893.P4167988474188774210

/-! ## A128893.P6015957596610046670

`A177454(n+1)+2`
-/

namespace A128893.P6015957596610046670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177454 (n + 1) + 2

end

end A128893.P6015957596610046670

/-! ## A128893.P17082642000217515631

`2*(A086655(n+1)+1)`
-/

namespace A128893.P17082642000217515631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086655 (n + 1) + 1)

end

end A128893.P17082642000217515631

/-! ## A128893.P10371625222666336836

`A123611(A000040(n+1))`
-/

namespace A128893.P10371625222666336836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123611 (A000040 (n + 1)).toNat

end

end A128893.P10371625222666336836

/-! ## A128893.P3365773686225962105

`A123611(A030291(n+1))`
-/

namespace A128893.P3365773686225962105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123611 (A030291 (n + 1)).toNat

end

end A128893.P3365773686225962105

/-!
# A128895: Least positive primitive root that all of the first n primes share.

The programs for A128895, there is no canonical definition to state claims against.
-/

/-! ## A128895.P5243133806357350204

`A326841(A219347(n)*A320814(n+2))`
-/

namespace A128895.P5243133806357350204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (A219347 n * A320814 (n + 2)).toNat

end

end A128895.P5243133806357350204

/-! ## A128895.P2951183119592538363

`A164600(A000700(n+3))%A095416(3*n)`
-/

namespace A128895.P2951183119592538363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164600 (A000700 (n + 3)).toNat) (A095416 (3 * n))

end

end A128895.P2951183119592538363

/-!
# A128896: Triangular numbers that are products of three distinct primes.

The programs for A128896, the canonical program `A128896.P15378370626665157583` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128896 has offset 1).

The definition of A128896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128896.P12567614890291064365

`A253145(eq[30, A278253(n+1)])`
-/

namespace A128896.P12567614890291064365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128896.P12567614890291064365

namespace A128896

/-- `A253145(eq[30, A278253(n+1)])` -/
def P12567614890291064365.Spec : Prop :=
  ∀ n, P12567614890291064365.a n = A128896 (n + 1)

end A128896

/-! ## A128896.P17863652146320708960

`A000217(eq[30, A278253(n+1)]+1)`
-/

namespace A128896.P17863652146320708960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A128896.P17863652146320708960

namespace A128896

/-- `A000217(eq[30, A278253(n+1)]+1)` -/
def P17863652146320708960.Spec : Prop :=
  ∀ n, P17863652146320708960.a n = A128896 (n + 1)

end A128896

/-! ## A128896.P7320094202037492077

`A167614(eq[30, A278253(n+1)])-3`
-/

namespace A128896.P7320094202037492077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 3

end

end A128896.P7320094202037492077

namespace A128896

/-- `A167614(eq[30, A278253(n+1)])-3` -/
def P7320094202037492077.Spec : Prop :=
  ∀ n, P7320094202037492077.a n = A128896 (n + 1)

end A128896

/-! ## A128896.P15378370626665157583

`∩[A061304(n+1), A075875(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A128896

/-- `∩[A061304(n+1), A075875(n+1)]` -/
def P15378370626665157583.Spec : Prop :=
  ∀ n, (P15378370626665157583.a n : ℤ) = A128896 (n + 1)

theorem P15378370626665157583.correct : P15378370626665157583.Spec := by
  intro n
  simp only [A128896, Nat.add_sub_cancel]

end A128896

/-! ## A128896.P13119379450513220347

`∩[A061304(n+1), A330809(n+1)]`
-/

namespace A128896.P13119379450513220347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128896.P13119379450513220347

namespace A128896

/-- `∩[A061304(n+1), A330809(n+1)]` -/
def P13119379450513220347.Spec : Prop :=
  ∀ n, (P13119379450513220347.a n : ℤ) = A128896 (n + 1)

end A128896

/-! ## A128896.P8485729451396017249

`∩[A075875(n+1), A330809(n+1)]`
-/

namespace A128896.P8485729451396017249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128896.P8485729451396017249

namespace A128896

/-- `∩[A075875(n+1), A330809(n+1)]` -/
def P8485729451396017249.Spec : Prop :=
  ∀ n, (P8485729451396017249.a n : ℤ) = A128896 (n + 1)

end A128896

/-! ## A128896.P11366946652395925026

`∩[A144581(n+1), A330809(n+1)]`
-/

namespace A128896.P11366946652395925026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128896.P11366946652395925026

namespace A128896

/-- `∩[A144581(n+1), A330809(n+1)]` -/
def P11366946652395925026.Spec : Prop :=
  ∀ n, (P11366946652395925026.a n : ℤ) = A128896 (n + 1)

end A128896

/-! ## A128896.P6823694409895396200

`A000124(eq[30, A278253(n+1)]+1)-1`
-/

namespace A128896.P6823694409895396200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A128896.P6823694409895396200

namespace A128896

/-- `A000124(eq[30, A278253(n+1)]+1)-1` -/
def P6823694409895396200.Spec : Prop :=
  ∀ n, P6823694409895396200.a n = A128896 (n + 1)

end A128896

/-! ## A128896.P16111348825057826454

`A075875(eq[1, ∏{e}[A075875(n+1), #]]+1)`
-/

namespace A128896.P16111348825057826454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A128896.P16111348825057826454

namespace A128896

/-- `A075875(eq[1, ∏{e}[A075875(n+1), #]]+1)` -/
def P16111348825057826454.Spec : Prop :=
  ∀ n, P16111348825057826454.a n = A128896 (n + 1)

end A128896

/-! ## A128896.P12826800371981082181

`filter[A001972(n), A354926(#)]`
-/

namespace A128896.P12826800371981082181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A128896.P12826800371981082181

namespace A128896

/-- `filter[A001972(n), A354926(#)]` -/
def P12826800371981082181.Spec : Prop :=
  ∀ n, P12826800371981082181.a n = A128896 (n + 1)

end A128896

/-!
# A128897: a(n) = ((2n)^(2n-1)+1)/(2n+1).

The programs for A128897, the canonical program `A128897.P7802107125675113867` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128897 has offset 1).

The definition of A128897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128897.P15738674764117254069

`A083062(2*(n+1)-1)`
-/

namespace A128897.P15738674764117254069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083062 (2 * (n + 1) - 1)

end

end A128897.P15738674764117254069

namespace A128897

/-- `A083062(2*(n+1)-1)` -/
def P15738674764117254069.Spec : Prop :=
  ∀ n, P15738674764117254069.a n = A128897 (n + 1)

end A128897

/-! ## A128897.P7802107125675113867

`((2*(n+1))^(2*(n+1)-1)+1)/(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A128897

/-- `((2*(n+1))^(2*(n+1)-1)+1)/(2*(n+1)+1)` -/
def P7802107125675113867.Spec : Prop :=
  ∀ n, P7802107125675113867.a n = (A128897 (n + 1) : ℚ)

end A128897

/-! ## A128897.P4093485019066684292

`record[A083062(n^(n%2))]`
-/

namespace A128897.P4093485019066684292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083062 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128897.P4093485019066684292

namespace A128897

/-- `record[A083062(n^(n%2))]` -/
def P4093485019066684292.Spec : Prop :=
  ∀ n, P4093485019066684292.a n = A128897 (n + 1)

end A128897

/-! ## A128897.P3823572305277713549

`record[A083062(A000265(n+1))]`
-/

namespace A128897.P3823572305277713549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083062 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128897.P3823572305277713549

namespace A128897

/-- `record[A083062(A000265(n+1))]` -/
def P3823572305277713549.Spec : Prop :=
  ∀ n, P3823572305277713549.a n = A128897 (n + 1)

end A128897

/-!
# A128898: Primes of form 2^j + 2^k - 1 or 2^j + 2^k + 1.

The programs for A128898, there is no canonical definition to state claims against.
-/

/-! ## A128898.P14009205774464410910

`eq[A025481(A151707(n)), A302055(n)]`
-/

namespace A128898.P14009205774464410910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025481 (A151707 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128898.P14009205774464410910

/-! ## A128898.P4698351480170285548

`∩[A056651(n+1), A086472(n+1)]`
-/

namespace A128898.P4698351480170285548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128898.P4698351480170285548

/-! ## A128898.P5416744906776529029

`eq[A003415(n), A195850(A160418(n+1))]`
-/

namespace A128898.P5416744906776529029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195850 (A160418 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128898.P5416744906776529029

/-! ## A128898.P704565552033430731

`∩[A086472(n+1), A334966(n+1)]`
-/

namespace A128898.P704565552033430731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128898.P704565552033430731

/-! ## A128898.P1991982558326475002

`∩[A279367(n+1), A181325(n)]`
-/

namespace A128898.P1991982558326475002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128898.P1991982558326475002

/-!
# A128899: Riordan array (1,(1-2x-sqrt(1-4x))/(2x)).

The programs for A128899, the canonical program `A128899.P17791160689739130473` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128899 has offset 0).

The definition of A128899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128899.P17791160689739130473

`A039599(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128899

/-- `A039599(n-1)-a(n-1)` -/
def P17791160689739130473.Spec : Prop :=
  ∀ n, P17791160689739130473.a n = A128899 n

theorem P17791160689739130473.correct : P17791160689739130473.Spec := by
  intro n
  simp only [A128899]

end A128899

/-! ## A128899.P12349094461414418729

`A039599(n)+A122919(n)-A039598(n)`
-/

namespace A128899.P12349094461414418729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n + (A122919 n - A039598 n)

end

end A128899.P12349094461414418729

namespace A128899

/-- `A039599(n)+A122919(n)-A039598(n)` -/
def P12349094461414418729.Spec : Prop :=
  ∀ n, P12349094461414418729.a n = A128899 n

end A128899

/-! ## A128899.P12663361312382751801

`A106566(A245300(n)+A002262(n))`
-/

namespace A128899.P12663361312382751801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A245300 n + A002262 n).toNat

end

end A128899.P12663361312382751801

namespace A128899

/-- `A106566(A245300(n)+A002262(n))` -/
def P12663361312382751801.Spec : Prop :=
  ∀ n, P12663361312382751801.a n = A128899 n

end A128899

/-! ## A128899.P12283873449603530313

`A112467(A292564(n)+A003056(n))`
-/

namespace A128899.P12283873449603530313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (A292564 n + A003056 n).toNat

end

end A128899.P12283873449603530313

namespace A128899

/-- `A112467(A292564(n)+A003056(n))` -/
def P12283873449603530313.Spec : Prop :=
  ∀ n, P12283873449603530313.a n = A128899 n

end A128899

/-! ## A128899.P18132001857122175911

`A112467(A185869(n+1)-A108872(n+1))`
-/

namespace A128899.P18132001857122175911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (A185869 (n + 1) - A108872 (n + 1)).toNat

end

end A128899.P18132001857122175911

namespace A128899

/-- `A112467(A185869(n+1)-A108872(n+1))` -/
def P18132001857122175911.Spec : Prop :=
  ∀ n, P18132001857122175911.a n = A128899 n

end A128899

/-! ## A128899.P15127875318516425596

`A113313(A185869(n+1)+A025581(n))`
-/

namespace A128899.P15127875318516425596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (A185869 (n + 1) + A025581 n).toNat

end

end A128899.P15127875318516425596

namespace A128899

/-- `A113313(A185869(n+1)+A025581(n))` -/
def P15127875318516425596.Spec : Prop :=
  ∀ n, P15127875318516425596.a n = A128899 n

end A128899

/-! ## A128899.P6887854238962514675

`A113313(A093995(n+1)+A064801(n+1))`
-/

namespace A128899.P6887854238962514675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (A093995 (n + 1) + A064801 (n + 1)).toNat

end

end A128899.P6887854238962514675

namespace A128899

/-- `A113313(A093995(n+1)+A064801(n+1))` -/
def P6887854238962514675.Spec : Prop :=
  ∀ n, P6887854238962514675.a n = A128899 n

end A128899

